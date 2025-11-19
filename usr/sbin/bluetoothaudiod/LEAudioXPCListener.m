@interface LEAudioXPCListener
+ (id)instance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LEAudioXPCListener)init;
- (void)addDevice:(id)a3 toSession:(id)a4;
- (void)createISODataPathWithOptions:(id)a3;
- (void)notifyCAPProcedureComplete:(id)a3 withInfo:(id)a4;
- (void)publishAudioDeviceForSession:(id)a3 withDeviceInfo:(id)a4;
- (void)removeDevice:(id)a3 fromSession:(id)a4;
- (void)removeISODataPathWithOptions:(id)a3;
- (void)setupCIGForHALSession:(id)a3 withDeviceInfo:(id)a4;
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

    v4 = [(LEAudioXPCListener *)v2 listener];
    [v4 setDelegate:v2];

    v5 = [(LEAudioXPCListener *)v2 listener];
    [v5 resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.bluetoothaudiod"];

  if (v6)
  {
    v7 = objc_alloc_init(BluetoothAudiodXPCObject);
    [v5 setExportedObject:v7];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothAudiodInterface];
    [v5 setExportedInterface:v8];

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BluetoothdInterface];
    [v5 setRemoteObjectInterface:v9];

    [v5 setInvalidationHandler:&stru_1000953D0];
    v10 = [v5 remoteObjectProxy];
    [(LEAudioXPCListener *)self setBluetoothd:v10];

    [v5 resume];
  }

  return v6 != 0;
}

- (void)addDevice:(id)a3 toSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LEAudioXPCListener *)self bluetoothd];
  [v8 addDevice:v7 toSession:v6];
}

- (void)removeDevice:(id)a3 fromSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LEAudioXPCListener *)self bluetoothd];
  [v8 removeDevice:v7 fromSession:v6];
}

- (void)publishAudioDeviceForSession:(id)a3 withDeviceInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LEAudioXPCListener *)self bluetoothd];
  [v8 publishAudioDeviceForSession:v7 withDeviceInfo:v6];
}

- (void)setupCIGForHALSession:(id)a3 withDeviceInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LEAudioXPCListener *)self bluetoothd];
  [v8 setupCIGForHALSession:v7 withDeviceInfo:v6];
}

- (void)notifyCAPProcedureComplete:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LEAudioXPCListener *)self bluetoothd];
  [v8 notifyCAPProcedureComplete:v7 withInfo:v6];
}

- (void)removeISODataPathWithOptions:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing ISO Data path for %@", &v7, 0xCu);
  }

  v6 = [(LEAudioXPCListener *)self bluetoothd];
  [v6 removeISODataPathWithOptions:v4];
}

- (void)createISODataPathWithOptions:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating ISO Data path for %@", &v7, 0xCu);
  }

  v6 = [(LEAudioXPCListener *)self bluetoothd];
  [v6 createISODataPathWithOptions:v4];
}

@end