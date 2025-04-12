#!/bin/bash
PICOVOICE_ACCESS_KEY=$(cat ~/access_key_picovoice)

#Start Alexa
sh ~/start_commands.sh &

#Start http server for Alexa
cd $HOME/sdk-folder/src/magic-mirror-alexa-smart-screen-web-components/samples/alexa-smart-screen-sample-app/dist/
python3 -m http.server &

#Start stomp server
java -jar ~/messaging-stomp-websocket-complete-0.0.1-SNAPSHOT.jar &

#Start voice recognition

sleep 20
java -jar ~/MagicMirrorBrain-1.0-SNAPSHOT-jar-with-dependencies.jar $PICOVOICE_ACCESS_KEY &

#Start Chromium
sleep 20
firefox "http://localhost:8080" &
sleep 10
xdotool search --sync --onlyvisible --name .*Firefox.* key F11
