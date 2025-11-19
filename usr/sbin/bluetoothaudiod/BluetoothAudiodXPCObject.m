@interface BluetoothAudiodXPCObject
- (void)deviceConnected:(id)a3 withServiceUUID:(id)a4;
- (void)launchAsServer;
- (void)notifyStreamWillStart:(id)a3;
- (void)notifyStreamWillStop:(id)a3;
- (void)registerClient;
- (void)updateCodecConfigForSession:(id)a3 withCodecInfo:(id)a4;
- (void)updateVolumeForSession:(id)a3 withVolume:(float)a4;
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

- (void)deviceConnected:(id)a3 withServiceUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %@ with service UUID %@ is now connected", &v9, 0x16u);
  }

  v8 = +[ConnectionManager instance];
  [v8 connectLEAudioDevice:v5 withServiceUUID:v6];
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

- (void)notifyStreamWillStart:(id)a3
{
  v3 = a3;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to enable streaming for LE Connected Audio Session %@", &v6, 0xCu);
  }

  v5 = +[ConnectionManager instance];
  [v5 startStreamingForSession:v3];
}

- (void)notifyStreamWillStop:(id)a3
{
  v3 = a3;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stoppings streaming for LE Connected Audio Session %@", &v6, 0xCu);
  }

  v5 = +[ConnectionManager instance];
  [v5 stopStreamingForSession:v3];
}

- (void)updateCodecConfigForSession:(id)a3 withCodecInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating Codec Config for session %@ with %@", &v9, 0x16u);
  }

  v8 = +[ConnectionManager instance];
  [v8 updateCodecConfigForSession:v5 withCodecConfig:v6];
}

- (void)updateVolumeForSession:(id)a3 withVolume:(float)a4
{
  v5 = a3;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2048;
    v12 = (a4 * 255.0);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating Volume for session %@ with volume %f", &v9, 0x16u);
  }

  v7 = +[ConnectionManager instance];
  *&v8 = a4;
  [v7 updateVolumeForSession:v5 withVolume:v8];
}

@end