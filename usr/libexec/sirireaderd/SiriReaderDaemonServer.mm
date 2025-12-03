@interface SiriReaderDaemonServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation SiriReaderDaemonServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_interface);
  connectionCopy = connection;
  selfCopy = self;
  [connectionCopy setExportedInterface:v5];
  [connectionCopy setExportedObject:*(&selfCopy->super.isa + OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_server)];
  [connectionCopy resume];

  return 1;
}

@end