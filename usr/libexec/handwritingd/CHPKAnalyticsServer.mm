@interface CHPKAnalyticsServer
+ (id)sharedAnalyticsServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CHPKAnalyticsServer)init;
- (void)dealloc;
- (void)resumeConnectionIfIdle;
@end

@implementation CHPKAnalyticsServer

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = CHPKAnalyticsServer;
  [(CHPKAnalyticsServer *)&v3 dealloc];
}

+ (id)sharedAnalyticsServer
{
  if (qword_10002ACA0 == -1)
  {
    v3 = qword_10002AC98;
  }

  else
  {
    dispatch_once(&qword_10002ACA0, &stru_100024AC0);
    v3 = qword_10002AC98;
  }

  return v3;
}

- (CHPKAnalyticsServer)init
{
  v6.receiver = self;
  v6.super_class = CHPKAnalyticsServer;
  v2 = [(CHPKAnalyticsServer *)&v6 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.handwritingd.pkanalytics"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v2->_isListening = 0;
  }

  return v2;
}

- (void)resumeConnectionIfIdle
{
  if (![(CHPKAnalyticsServer *)self isListening])
  {
    listener = [(CHPKAnalyticsServer *)self listener];
    [listener resume];

    [(CHPKAnalyticsServer *)self setIsListening:1];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listener = self->_listener;
  if (listener == listener)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CHPKRemoteAnalyticsProtocol];
    [connectionCopy setExportedInterface:v8];
  }

  v9 = +[CHPKPersistentAnalyticsController sharedInstance];
  [connectionCopy setExportedObject:v9];

  [connectionCopy resume];
  return listener == listener;
}

@end