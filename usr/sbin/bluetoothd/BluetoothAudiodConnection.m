@interface BluetoothAudiodConnection
+ (id)sharedInstance;
- (BluetoothAudiodConnection)init;
- (void)addDevice:(id)a3 toSession:(id)a4;
- (void)createISODataPathWithOptions:(id)a3;
- (void)dealloc;
- (void)deviceConnected:(id)a3 withServiceUUID:(id)a4;
- (void)launchAsServer;
- (void)notifyCAPProcedureComplete:(id)a3 withInfo:(id)a4;
- (void)notifyStreamWillStart:(id)a3;
- (void)notifyStreamWillStop:(id)a3;
- (void)publishAudioDeviceForSession:(id)a3 withDeviceInfo:(id)a4;
- (void)removeDevice:(id)a3 fromSession:(id)a4;
- (void)removeISODataPathWithOptions:(id)a3;
- (void)setupCIGForHALSession:(id)a3 withDeviceInfo:(id)a4;
- (void)setupConnection;
- (void)tearDownSCDynamicStore;
- (void)updateCodecConfigForSession:(id)a3 withCodecInfo:(id)a4;
- (void)updateMicrophoneForSession:(id)a3 withMute:(unsigned __int8)a4;
- (void)updateVolumeForSession:(id)a3 withVolume:(float)a4;
@end

@implementation BluetoothAudiodConnection

+ (id)sharedInstance
{
  if (qword_100BC6FF8 != -1)
  {
    sub_10085EAAC();
  }

  v3 = qword_100BC6FF0;

  return v3;
}

- (void)tearDownSCDynamicStore
{
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tearing down SCDynamicStore", v4, 2u);
  }

  if ([(BluetoothAudiodConnection *)self dynamicStore])
  {
    SCDynamicStoreSetDispatchQueue([(BluetoothAudiodConnection *)self dynamicStore], 0);
    CFRelease([(BluetoothAudiodConnection *)self dynamicStore]);
    [(BluetoothAudiodConnection *)self setDynamicStore:0];
  }
}

- (BluetoothAudiodConnection)init
{
  v5.receiver = self;
  v5.super_class = BluetoothAudiodConnection;
  v2 = [(BluetoothAudiodConnection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BluetoothAudiodConnection *)v2 setupUserChangeListener];
    [(BluetoothAudiodConnection *)v3 setupConnection];
  }

  return v3;
}

- (void)dealloc
{
  [(BluetoothAudiodConnection *)self tearDownSCDynamicStore];
  v3.receiver = self;
  v3.super_class = BluetoothAudiodConnection;
  [(BluetoothAudiodConnection *)&v3 dealloc];
}

- (void)setupConnection
{
  v5 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.bluetoothaudiod" options:0];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothAudiodInterface];
  [v5 setRemoteObjectInterface:v3];

  [v5 resume];
  [(BluetoothAudiodConnection *)self setConnection:v5];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothdInterface];
  [v5 setExportedInterface:v4];

  [v5 setExportedObject:self];
  [v5 setInvalidationHandler:&stru_100B073A8];
}

- (void)deviceConnected:(id)a3 withServiceUUID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BluetoothAudiodConnection *)self connection];
  v8 = [v7 remoteObjectProxy];
  [v8 deviceConnected:v9 withServiceUUID:v6];
}

- (void)launchAsServer
{
  v3 = [(BluetoothAudiodConnection *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 launchAsServer];
}

- (void)notifyStreamWillStart:(id)a3
{
  v4 = a3;
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is going to start for session %@", &v8, 0xCu);
  }

  v6 = [(BluetoothAudiodConnection *)self connection];
  v7 = [v6 remoteObjectProxy];
  [v7 notifyStreamWillStart:v4];
}

- (void)notifyStreamWillStop:(id)a3
{
  v4 = a3;
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is going to stop for session %@", &v8, 0xCu);
  }

  v6 = [(BluetoothAudiodConnection *)self connection];
  v7 = [v6 remoteObjectProxy];
  [v7 notifyStreamWillStop:v4];
}

- (void)publishAudioDeviceForSession:(id)a3 withDeviceInfo:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (qword_100B54328 != -1)
  {
    sub_10085EAC0();
  }

  sub_100615EE8(qword_100B54320, v6, v5);
}

- (void)setupCIGForHALSession:(id)a3 withDeviceInfo:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (qword_100B54328 != -1)
  {
    sub_10085EAC0();
  }

  sub_100616118(qword_100B54320, v6, v5);
}

- (void)addDevice:(id)a3 toSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding LE Connected Audio device %@", &v8, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616310(qword_100B54320, v6, v5);
}

- (void)removeDevice:(id)a3 fromSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing LE Connected Audio device %@", &v8, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_10061649C(qword_100B54320, v6, v5);
}

- (void)notifyCAPProcedureComplete:(id)a3 withInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying Audio CAP Procedure is done: %@", &v8, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616684(qword_100B54320, v5, v6);
}

- (void)createISODataPathWithOptions:(id)a3
{
  v3 = a3;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating ISO path options %@", &v5, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616D44(qword_100B54320, v3);
}

- (void)removeISODataPathWithOptions:(id)a3
{
  v3 = a3;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing ISO path for session %@", &v5, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616F30(qword_100B54320, v3);
}

- (void)updateCodecConfigForSession:(id)a3 withCodecInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating Codec Config for session %@ with %@", &v11, 0x16u);
  }

  v9 = [(BluetoothAudiodConnection *)self connection];
  v10 = [v9 remoteObjectProxy];
  [v10 updateCodecConfigForSession:v6 withCodecInfo:v7];
}

- (void)updateVolumeForSession:(id)a3 withVolume:(float)a4
{
  v6 = a3;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = a4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is updating volume to %f for session %@", &v11, 0x16u);
  }

  v8 = [(BluetoothAudiodConnection *)self connection];
  v9 = [v8 remoteObjectProxy];
  *&v10 = a4;
  [v9 updateVolumeForSession:v6 withVolume:v10];
}

- (void)updateMicrophoneForSession:(id)a3 withMute:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is updating mute to %d for session %@", v10, 0x12u);
  }

  v8 = [(BluetoothAudiodConnection *)self connection];
  v9 = [v8 remoteObjectProxy];
  [v9 updateMicrophoneForSession:v6 withMute:v4];
}

@end