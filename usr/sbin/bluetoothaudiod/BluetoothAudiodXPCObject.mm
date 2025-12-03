@interface BluetoothAudiodXPCObject
- (void)deviceConnected:(id)connected withServiceUUID:(id)d;
- (void)launchAsServer;
- (void)notifyStreamWillStart:(id)start;
- (void)notifyStreamWillStop:(id)stop;
- (void)registerClient;
- (void)updateCodecConfigForSession:(id)session withCodecInfo:(id)info;
- (void)updateVolumeForSession:(id)session withVolume:(float)volume;
@end

@implementation BluetoothAudiodXPCObject

- (void)registerClient
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client registered", v3, 2u);
  }
}

- (void)deviceConnected:(id)connected withServiceUUID:(id)d
{
  connectedCopy = connected;
  dCopy = d;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = connectedCopy;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %@ with service UUID %@ is now connected", &v9, 0x16u);
  }

  v8 = +[ConnectionManager instance];
  [v8 connectLEAudioDevice:connectedCopy withServiceUUID:dCopy];
}

- (void)launchAsServer
{
  v2 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "bluetoothd told me to be a server", v3, 2u);
  }
}

- (void)notifyStreamWillStart:(id)start
{
  startCopy = start;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = startCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to enable streaming for LE Connected Audio Session %@", &v6, 0xCu);
  }

  v5 = +[ConnectionManager instance];
  [v5 startStreamingForSession:startCopy];
}

- (void)notifyStreamWillStop:(id)stop
{
  stopCopy = stop;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = stopCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stoppings streaming for LE Connected Audio Session %@", &v6, 0xCu);
  }

  v5 = +[ConnectionManager instance];
  [v5 stopStreamingForSession:stopCopy];
}

- (void)updateCodecConfigForSession:(id)session withCodecInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = sessionCopy;
    v11 = 2112;
    v12 = infoCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating Codec Config for session %@ with %@", &v9, 0x16u);
  }

  v8 = +[ConnectionManager instance];
  [v8 updateCodecConfigForSession:sessionCopy withCodecConfig:infoCopy];
}

- (void)updateVolumeForSession:(id)session withVolume:(float)volume
{
  sessionCopy = session;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = sessionCopy;
    v11 = 2048;
    v12 = (volume * 255.0);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating Volume for session %@ with volume %f", &v9, 0x16u);
  }

  v7 = +[ConnectionManager instance];
  *&v8 = volume;
  [v7 updateVolumeForSession:sessionCopy withVolume:v8];
}

@end