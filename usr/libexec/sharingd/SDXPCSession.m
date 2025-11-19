@interface SDXPCSession
+ (id)sharedSession;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SDXPCSession)init;
- (void)start;
- (void)stop;
@end

@implementation SDXPCSession

+ (id)sharedSession
{
  if (qword_100989EE8 != -1)
  {
    sub_10013978C();
  }

  v3 = qword_100989EE0;

  return v3;
}

- (SDXPCSession)init
{
  v8.receiver = self;
  v8.super_class = SDXPCSession;
  v2 = [(SDXPCSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    xpcManagerListener = v2->_xpcManagerListener;
    v2->_xpcManagerListener = 0;

    v5 = objc_opt_new();
    connections = v3->_connections;
    v3->_connections = v5;
  }

  return v3;
}

- (void)start
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1001397A0(v3);
  }

  if (!self->_xpcManagerListener)
  {
    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.sharingd.nsxpc"];
    xpcManagerListener = self->_xpcManagerListener;
    self->_xpcManagerListener = v4;

    [(NSXPCListener *)self->_xpcManagerListener _setQueue:&_dispatch_main_q];
    [(NSXPCListener *)self->_xpcManagerListener setDelegate:self];
    [(NSXPCListener *)self->_xpcManagerListener resume];
  }
}

- (void)stop
{
  xpcManagerListener = self->_xpcManagerListener;
  if (xpcManagerListener)
  {
    [(NSXPCListener *)xpcManagerListener invalidate];
    [(NSXPCListener *)self->_xpcManagerListener setDelegate:0];
    v4 = self->_xpcManagerListener;
    self->_xpcManagerListener = 0;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[SDConnectionManager alloc] initWithXPCConnection:v5];

  [(NSMutableArray *)self->_connections addObject:v6];
  [(SDConnectionManager *)v6 setDelegate:self];
  [(SDConnectionManager *)v6 start];

  return 1;
}

@end