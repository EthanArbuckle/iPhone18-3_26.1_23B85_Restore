@interface SiriReaderDaemonServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation SiriReaderDaemonServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_interface);
  v6 = a4;
  v7 = self;
  [v6 setExportedInterface:v5];
  [v6 setExportedObject:*(&v7->super.isa + OBJC_IVAR____TtC11sirireaderd22SiriReaderDaemonServer_server)];
  [v6 resume];

  return 1;
}

@end