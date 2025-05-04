PORTAUDIO_LIB_PATH=$(find -P /usr/lib -name libportaudio.so)
CURL_LIBRARY_PATH=$(find -P /usr/lib -name libcurl.so)
CURL_INCLUDE_DIR=$(find -P /usr/include -name curl)
PORTAUDIO_INCLUDE_DIR=/usr/include
WEBSOCKET_INCLUDE_DIR=/usr/include
$HOME/sdk_folder/ipc-server-app-build/src/IPCServerSampleApp -C $HOME/sdk_folder/sdk-build/Integration/AlexaClientSDKConfig.json -C  $HOME/sdk_folder/src/magic-mirror-avs-device-sdk/SampleApplications/IPCServerSampleApplication/config/IPCServerSampleAppConfig.json -L INFO
