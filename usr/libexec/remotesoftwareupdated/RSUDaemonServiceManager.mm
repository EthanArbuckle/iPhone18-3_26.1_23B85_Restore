@interface RSUDaemonServiceManager
- (RSUDaemonServiceManager)init;
@end

@implementation RSUDaemonServiceManager

- (RSUDaemonServiceManager)init
{
  v8.receiver = self;
  v8.super_class = RSUDaemonServiceManager;
  v2 = [(RSUDaemonServiceManager *)&v8 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.remotesoftwareupdated"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    v5 = [(RSUDaemonServiceManager *)v2 xpcListener];
    [v5 setDelegate:v2];

    v6 = [(RSUDaemonServiceManager *)v2 xpcListener];
    [v6 resume];
  }

  return v2;
}

@end