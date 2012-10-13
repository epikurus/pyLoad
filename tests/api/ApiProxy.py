# -*- coding: utf-8 -*-


from module.remote.ttypes_debug import classes, methods

class ApiProxy:
    """ Proxy that does type checking on the api """

    def __init__(self, api, user="User", pw="test"):
        self.api = api
        self.user = user
        self.pw = pw

        if user and pw is not None:
            self.api.login(user, pw)

    def assert_type(self, result, type):
        if not type: return # void
        try:
            # Complex attribute
            if isinstance(type, tuple):
                # Optional result
                if type[0] is None:
                    # Only check if not None
                    if result is not None: self.assert_type(result, type[1])

                # List
                elif type[0] == list:
                    assert isinstance(result, list)
                    for item in result:
                        self.assert_type(item, type[1])
                # Dict
                elif type[0] == dict:
                    assert isinstance(result, dict)
                    for k, v in result.iteritems():
                        self.assert_type(k, type[1])
                        self.assert_type(v, type[2])

            # Struct - Api class
            elif hasattr(result, "__name__") and result.__name__ in classes:
                for attr, atype in zip(result.__slots__, classes[result.__name__]):
                    self.assert_type(getattr(result, attr), atype)
            else: # simple object
                assert isinstance(result, type)
        except AssertionError:
            print "Assertion for %s as %s failed" % (result, type)
            raise


    def call(self, func, *args, **kwargs):
        result = getattr(self.api, func)(*args, **kwargs)
        self.assert_type(result, methods[func])

        return result


    def __getattr__(self, item):
        def call(*args, **kwargs):
            return self.call(item, *args, **kwargs)

        return call

if __name__ == "__main__":

    from module.remote.JSONClient import JSONClient

    api = ApiProxy(JSONClient(), "User", "test")
    api.getServerVersion()