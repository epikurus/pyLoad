��    d      <  �   \      �     �     �     �     �     �     �     �     �     	     	     #	     ,	     :	     Q	  m   Y	  [   �	     #
  
   7
  B   B
     �
     �
     �
  A   �
  4     7   8     p  &   �  j   �        J   /     z     �     �  A   �     �  $   �  8     @   V  q   �  B   	     L  H   Z  	   �     �  a   �          *  -   A     o  *   �  
   �     �  &   �     �     �          %     ?     M     T  E   s     �     �  ;   �     (  ?   F  5   �  T   �        <   2     o     ~     �  G   �     �  .   �  /     A   A  ?   �  A   �  5     \   ;  /   �  8   �  =         ?     `  F   }     �     �  U   �      E     f     �     �  K   �  I   �     ?  G   N  �  �     4     M     ]     j     }     �  	   �     �     �     �     �     �          #  r   +  h   �            R   (     {     �     �  J   �  6   	  <   @     }  )   �  a   �     &  i   6     �     �     �  H   �       /   0  (   `  ;   �  �   �  M   V     �  H   �  	          
   m         �      �   /   �      �   /   �   
   /!  #   :!  +   ^!     �!     �!     �!     �!     �!     �!  %   �!  H   "     W"      r"  F   �"  #   �"  G   �"  -   F#  X   t#  %   �#  H   �#     <$     O$     \$  Q   c$     �$  0   �$  9   �$  M   -%  V   {%  M   �%  0    &  d   Q&  A   �&  7   �&  7   0'  )   h'     �'  D   �'     �'     (  O   $(  "   t(      �(     �(     �(  b   �(  J   I)     �)  9   �)        R                               1           9   5       .   "   N      J   [   U   @   \   D       ]   '   %   I       X   b   <   Z              &   (   ;   -   _   ^   8          P          0           3   !   F   G                 E   `   /      #                 6   )   L   V   :       
   W               =       M   *   T      7   Q          +      4          H      S   c       $      d   B   Y      K             ?      A                  a   C       O       >   2          ,                         	    ## Basic Setup ## ## SSL Setup ## ## Status ## ## System Check ## ## Webinterface Setup ## %s: OK %s: missing 1 - Create/Edit user 2 - List users 3 - Remove user 4 - Quit Activate SSL? Activate webinterface? Address Attention: In some rare cases the builtin server is not working, if you notice problems with the webinterface Can be used by apache, lighttpd, requires you to configure them, which is not too easy job. Change config path? Configpath Configpath changed, setup will now close, please restart to go on. Configure ssl? Configure webinterface? Continue with setup? Default server, best choice if you dont know which one to choose. Do you want to change the config path? Current is %s Do you want to configure login data and basic settings? Do you want to configure ssl? Do you want to configure webinterface? Don't forget: You can always rerun this assistent with --setup or -s parameter, when you start pyLoadCore. Downloadfolder Execute these commands from pyLoad config folder to make ssl certificates: Featues missing:  Features available: GUI Get it from here: https://github.com/jonashaag/bjoern, compile it Gui not available Hit enter to exit and restart pyLoad If you have any problems with this assistent hit STRG-C, If you only want to access locally to pyLoad ssl is not usefull. If you use pyLoad on a server or the home partition lives on an iternal flash it may be a good idea to change it. If you're done and everything went fine, you can activate ssl now. Invalid Input It will check your system and make a basic setup in order to run pyLoad. JS engine Language Listen address, if you use 127.0.0.1 or localhost, the webinterface will only accessible locally. Make basic setup? Max parallel downloads Only needed for some hosters and as freeuser. Password (again):  Password to short. Use at least 4 symbols. Password:  Passwords did not match. Please correct this and re-run pyLoad. Port Press Enter to exit. Python Version: OK Reconnect script location Select action Server Setting config path failed: %s Setting new configpath, current configuration will not be transfered! Setup finished successfully. Setup will now close. System check finished, hit enter to see your status report. The Graphical User Interface. The following logindata is valid for CLI, GUI and webinterface. The value in brackets [] always is the default value, This is needed if you want to establish a secure connection to core or webinterface. This is recommend for first run. This server offers SSL and is a good alternative to builtin. Use Reconnect? Username Users Very fast alternative written in C, requires libev and linux knowlegde. Webinterface Welcome to the pyLoad Configuration Assistent. When you are ready for system check, hit enter. You can abort the setup now and fix some dependicies if you want. You can safely continue but if the webinterface is not working, You need pycurl, sqlite and python 2.5, 2.6 or 2.7 to run pyLoad. You need this if you want to decrypt container files. You will need this for some Click'N'Load links. Install Spidermonkey, ossp-js, pyv8 or rhino Your installed jinja2 version %s seems too old. Your python version is to new, Please use Python 2.6/2.7 Your python version is to old, Please use at least Python 2.5 and copy bjoern.so to module/lib automatic captcha decryption come back here and change the builtin server to the threaded one here. container decrypting extended Click'N'Load in case you don't want to change it or you are unsure what to choose, just hit enter. no Captcha Recognition available no JavaScript engine found no SSL available no py-crypto available please upgrade or deinstall it, pyLoad includes a sufficient jinja2 libary. pyLoad offers several server backends, now following a short explanation. ssl connection to abort and don't let him start with pyLoadCore automatically anymore. Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 'bugs@pyload.org'
POT-Creation-Date: 2011-10-04 09:49+0200
PO-Revision-Date: 2011-07-30 13:50+0200
Last-Translator: Patrik <patschimail@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Pootle 2.1.4
 ## Grundeinstellungen ## ## SSL Setup ## ## Status ## ## System Check ## ## Webinterface Setup ## %s: OK %s: fehlt 1 - Erstelle/Editiere Nutzer 2 - Liste Nutzer auf 3 - Entferne Nutzer 4 - Verlassen SSL aktivieren? Aktiviere Webinterface? Adresse Achtung: In manchen Fällen funktioniert der builtin Server nicht, wenn du Probleme mit dem Webinterface bemerkst. Kann von apache, lighttpd benutzt werden. Muss konfiguriert werden, welches aber nicht sehr einfach ist. Config Pfad ändern? Config Pfad Config Pfad geändert, Setup wird nun beenden, bitte starte neu um weiterzumachen. Konfiguriere SSL? Konfiguriere Webinterface? Mit Setup fortfahren? Standardserver, beste Wahl wenn du nicht weißt welchen du wählen sollst. Möchtest du den Configordner ändern? Jetziger ist %s Wollen Sie die Login-Daten und Grundeinstellungen festlegen? Willst du SSL konfigurieren? Willst du das Webinterface konfigurieren? Beachte: Du kannst diesen Assistenten jederzeit wieder mit dem --setup oder -s Parameter starten. Download Ordner Führen Sie die folgenden Kommandos im pyLoad Konfigurationsordner durch um SSL-Zertifikate zu erstellen: Fehlende Funktionen:  Verfügbare Funktionen: GUI Downloaden von: https://github.com/jonashaag/bjoern, danach kompilieren. GUI nicht verfügbar Drücke Enter zum beenden und starte pyLoad neu Falls du beenden willst, drücke STRG-C, Falls du nur lokal zugreifen willst, ist SSL überflüssig. Falls du pyLoad auf einem Server benutzt, oder die home Partition auf einem internen Flashspeicher liegt, wär es eine gute Idee ihn zu ändern. Falls du fertig bist und alles erfolgreich war, kannst du nun SSL aktivieren. Ungültige Eingabe Er wird jetzt dein System überprüfen und Grundeinstellungen vornehmen. JS engine Sprache Listen Adresse. Falls du 127.0.0.1 oder localhost einträgst wird das Webinterface nur lokal erreichbar sein. Erstelle Grundeinstellungen? Maximale parallele Downloads Wird für einige Hoster als Freeuser benötigt. Password (nochmal):  Passwort zu kurz. Benutze mindestens 4 Zeichen. Passwort:  Passwörter stimmen nicht überein. Bitte korrigiere das und starte pyLoad neu. Port Drücke Enter zum Beenden. Python Version: OK Reconnect Script Pfad Wähle Aktion Server Config Pfad setzen fehlgeschlagen: %s Setze neuen Config Pfad, momentane Konfiguration wird nicht übernommen! Setup erfolgreich beendet. Das Setup wird sich nun beenden. System-Check beendet, drücke Enter um deinen Status Bericht zu sehen. Die Grafische Benutzer Oberfläche. Die folgenden Anmeldedaten sind für CLI, GUI und Webinterface gültig. Die Werte in Klammer sind die Standard Werte, Wird gebraucht falls du eine SSL Verbindung zu Core oder Webinterface einstellen willst. Wird für den ersten Start empfohlen. Dieser Server unterstützt SSL und ist eine gute Alternative zu builtin. Benutze Reconnect? Benutzername Nutzer Sehr schnelle Alternative geschrieben in C, benötigt libev und Linux-Kenntnisse. Webinterface Willkommen im pyLoad Konfigurations Assistenten. Wenn du für den System-Check bereit bist, drücke enter. Du kannst das Setup nun abbrechen und Abhängigkeiten fixen, falls du willst. Sie können problemlos fortfahren, sollte jedoch das Webinterface nicht funktionieren, Du brauchst pycurl, sqlite und python 2.5, 2.6 oder 2.7 um pyLoad zu starten. Du brauchst es, um Container Dateien zu öffnen. Du benötigst das für einige Click'n'Load links. Installiere Spidermonkey, ossp-js, pyv8 oder rhino Ihre installierte Version %s von jinja2 scheint veraltet zu sein. Deine python version ist zu neu, benutze python 2.6/2.7 Deine Python Version ist zu alt, benutze mindestens 2.5 und kopiere die bjoern.so nach module/lib Automatisches Captcha einlesen komme zurück und ändere den builtin Server zu dem threaded Server. Container decrypting erweitertes Click'N'Load Falls du sie nicht ändern möchtest oder unsicher bist, drücke einfach Enter. keine Captcha Erkennung verfügbar keine JavaScript Engine gefunden Kein SSL verfügbar kein py-crypto verfügbar sollten Sie es upgrade oder deinstallieren, pyload bringt eine ausreichende jinja2 Bibliothek mit. pyLoad verfügt über verschiedene Webserver, eine kurze Erklärung folgt. SSL Verbindung um abzubrechen und ihn nicht mehr automatisch zu starten. 