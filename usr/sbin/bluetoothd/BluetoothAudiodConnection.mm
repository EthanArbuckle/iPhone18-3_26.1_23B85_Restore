@interface BluetoothAudiodConnection
+ (id)sharedInstance;
- (BluetoothAudiodConnection)init;
- (void)addDevice:(id)device toSession:(id)session;
- (void)createISODataPathWithOptions:(id)options;
- (void)dealloc;
- (void)deviceConnected:(id)connected withServiceUUID:(id)d;
- (void)launchAsServer;
- (void)notifyCAPProcedureComplete:(id)complete withInfo:(id)info;
- (void)notifyStreamWillStart:(id)start;
- (void)notifyStreamWillStop:(id)stop;
- (void)publishAudioDeviceForSession:(id)session withDeviceInfo:(id)info;
- (void)removeDevice:(id)device fromSession:(id)session;
- (void)removeISODataPathWithOptions:(id)options;
- (void)setupCIGForHALSession:(id)session withDeviceInfo:(id)info;
- (void)setupConnection;
- (void)tearDownSCDynamicStore;
- (void)updateCodecConfigForSession:(id)session withCodecInfo:(id)info;
- (void)updateMicrophoneForSession:(id)session withMute:(unsigned __int8)mute;
- (void)updateVolumeForSession:(id)session withVolume:(float)volume;
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

- (void)deviceConnected:(id)connected withServiceUUID:(id)d
{
  connectedCopy = connected;
  dCopy = d;
  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy deviceConnected:connectedCopy withServiceUUID:dCopy];
}

- (void)launchAsServer
{
  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy launchAsServer];
}

- (void)notifyStreamWillStart:(id)start
{
  startCopy = start;
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = startCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is going to start for session %@", &v8, 0xCu);
  }

  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy notifyStreamWillStart:startCopy];
}

- (void)notifyStreamWillStop:(id)stop
{
  stopCopy = stop;
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = stopCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is going to stop for session %@", &v8, 0xCu);
  }

  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy notifyStreamWillStop:stopCopy];
}

- (void)publishAudioDeviceForSession:(id)session withDeviceInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  if (qword_100B54328 != -1)
  {
    sub_10085EAC0();
  }

  sub_100615EE8(qword_100B54320, sessionCopy, infoCopy);
}

- (void)setupCIGForHALSession:(id)session withDeviceInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  if (qword_100B54328 != -1)
  {
    sub_10085EAC0();
  }

  sub_100616118(qword_100B54320, sessionCopy, infoCopy);
}

- (void)addDevice:(id)device toSession:(id)session
{
  deviceCopy = device;
  sessionCopy = session;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding LE Connected Audio device %@", &v8, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616310(qword_100B54320, sessionCopy, deviceCopy);
}

- (void)removeDevice:(id)device fromSession:(id)session
{
  deviceCopy = device;
  sessionCopy = session;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing LE Connected Audio device %@", &v8, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_10061649C(qword_100B54320, sessionCopy, deviceCopy);
}

- (void)notifyCAPProcedureComplete:(id)complete withInfo:(id)info
{
  completeCopy = complete;
  infoCopy = info;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = completeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying Audio CAP Procedure is done: %@", &v8, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616684(qword_100B54320, completeCopy, infoCopy);
}

- (void)createISODataPathWithOptions:(id)options
{
  optionsCopy = options;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating ISO path options %@", &v5, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616D44(qword_100B54320, optionsCopy);
}

- (void)removeISODataPathWithOptions:(id)options
{
  optionsCopy = options;
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing ISO path for session %@", &v5, 0xCu);
  }

  if (qword_100B54328 != -1)
  {
    sub_10085EAD4();
  }

  sub_100616F30(qword_100B54320, optionsCopy);
}

- (void)updateCodecConfigForSession:(id)session withCodecInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating Codec Config for session %@ with %@", &v11, 0x16u);
  }

  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy updateCodecConfigForSession:sessionCopy withCodecInfo:infoCopy];
}

- (void)updateVolumeForSession:(id)session withVolume:(float)volume
{
  sessionCopy = session;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    volumeCopy = volume;
    v13 = 2112;
    v14 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is updating volume to %f for session %@", &v11, 0x16u);
  }

  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  *&v10 = volume;
  [remoteObjectProxy updateVolumeForSession:sessionCopy withVolume:v10];
}

- (void)updateMicrophoneForSession:(id)session withMute:(unsigned __int8)mute
{
  muteCopy = mute;
  sessionCopy = session;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = muteCopy;
    v11 = 2112;
    v12 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying that audio stream is updating mute to %d for session %@", v10, 0x12u);
  }

  connection = [(BluetoothAudiodConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy updateMicrophoneForSession:sessionCopy withMute:muteCopy];
}

@end