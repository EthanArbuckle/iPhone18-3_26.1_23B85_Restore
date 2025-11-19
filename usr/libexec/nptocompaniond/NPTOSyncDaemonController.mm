@interface NPTOSyncDaemonController
- (NPTOSyncDaemonController)initWithDeviceControllerClass:(Class)a3;
- (void)_registerNotifydServices;
- (void)run;
@end

@implementation NPTOSyncDaemonController

- (NPTOSyncDaemonController)initWithDeviceControllerClass:(Class)a3
{
  v11.receiver = self;
  v11.super_class = NPTOSyncDaemonController;
  v4 = [(NPTOSyncDaemonController *)&v11 init];
  if (v4)
  {
    v5 = sub_10000268C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[NPTOSyncDaemonController initWithDeviceControllerClass:]";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Daemon Controllers/NPTOSyncDaemonController.m";
      v16 = 1024;
      v17 = 29;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
    }

    [(NPTOSyncDaemonController *)v4 _registerNotifydServices];
    if ([(NPTOSyncDaemonController *)v4 _wantsProxyServiceController])
    {
      v6 = [[NPTOSyncServiceController alloc] initWithService:@"com.apple.private.alloy.photos.proxy" relationship:1 requiresConnectedDevice:1 deviceControllerClass:a3];
      proxyServiceController = v4->_proxyServiceController;
      v4->_proxyServiceController = v6;
    }

    if ([(NPTOSyncDaemonController *)v4 _wantsTinkerServiceController])
    {
      v8 = [[NPTOSyncServiceController alloc] initWithService:@"com.apple.private.alloy.tinker.photos" relationship:2 requiresConnectedDevice:0 deviceControllerClass:a3];
      tinkerServiceController = v4->_tinkerServiceController;
      v4->_tinkerServiceController = v8;
    }
  }

  return v4;
}

- (void)run
{
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];
}

- (void)_registerNotifydServices
{
  xpc_activity_register("com.apple.notifyd.matching", XPC_ACTIVITY_CHECK_IN, &stru_10008B988);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10008B9A8);
}

@end