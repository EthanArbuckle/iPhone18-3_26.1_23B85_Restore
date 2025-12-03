@interface LEAudioXPCListener
+ (id)instance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LEAudioXPCListener)init;
- (void)addDevice:(id)device toSession:(id)session;
- (void)createISODataPathWithOptions:(id)options;
- (void)notifyCAPProcedureComplete:(id)complete withInfo:(id)info;
- (void)publishAudioDeviceForSession:(id)session withDeviceInfo:(id)info;
- (void)removeDevice:(id)device fromSession:(id)session;
- (void)removeISODataPathWithOptions:(id)options;
- (void)setupCIGForHALSession:(id)session withDeviceInfo:(id)info;
@end

@implementation LEAudioXPCListener

+ (id)instance
{
  if (qword_1000AA008 != -1)
  {
    sub_10005C608();
  }

  v3 = qword_1000AA000;

  return v3;
}

- (LEAudioXPCListener)init
{
  v7.receiver = self;
  v7.super_class = LEAudioXPCListener;
  v2 = [(LEAudioXPCListener *)&v7 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.bluetoothaudiod"];
    [(LEAudioXPCListener *)v2 setListener:v3];

    listener = [(LEAudioXPCListener *)v2 listener];
    [listener setDelegate:v2];

    listener2 = [(LEAudioXPCListener *)v2 listener];
    [listener2 resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.bluetoothaudiod"];

  if (v6)
  {
    v7 = objc_alloc_init(BluetoothAudiodXPCObject);
    [connectionCopy setExportedObject:v7];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothAudiodInterface];
    [connectionCopy setExportedInterface:v8];

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothdInterface];
    [connectionCopy setRemoteObjectInterface:v9];

    [connectionCopy setInvalidationHandler:&stru_1000953D0];
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [(LEAudioXPCListener *)self setBluetoothd:remoteObjectProxy];

    [connectionCopy resume];
  }

  return v6 != 0;
}

- (void)addDevice:(id)device toSession:(id)session
{
  sessionCopy = session;
  deviceCopy = device;
  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd addDevice:deviceCopy toSession:sessionCopy];
}

- (void)removeDevice:(id)device fromSession:(id)session
{
  sessionCopy = session;
  deviceCopy = device;
  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd removeDevice:deviceCopy fromSession:sessionCopy];
}

- (void)publishAudioDeviceForSession:(id)session withDeviceInfo:(id)info
{
  infoCopy = info;
  sessionCopy = session;
  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd publishAudioDeviceForSession:sessionCopy withDeviceInfo:infoCopy];
}

- (void)setupCIGForHALSession:(id)session withDeviceInfo:(id)info
{
  infoCopy = info;
  sessionCopy = session;
  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd setupCIGForHALSession:sessionCopy withDeviceInfo:infoCopy];
}

- (void)notifyCAPProcedureComplete:(id)complete withInfo:(id)info
{
  infoCopy = info;
  completeCopy = complete;
  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd notifyCAPProcedureComplete:completeCopy withInfo:infoCopy];
}

- (void)removeISODataPathWithOptions:(id)options
{
  optionsCopy = options;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing ISO Data path for %@", &v7, 0xCu);
  }

  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd removeISODataPathWithOptions:optionsCopy];
}

- (void)createISODataPathWithOptions:(id)options
{
  optionsCopy = options;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating ISO Data path for %@", &v7, 0xCu);
  }

  bluetoothd = [(LEAudioXPCListener *)self bluetoothd];
  [bluetoothd createISODataPathWithOptions:optionsCopy];
}

@end