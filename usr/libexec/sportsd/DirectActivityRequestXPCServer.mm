@interface DirectActivityRequestXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation DirectActivityRequestXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  sub_10000BD74(selfCopy, connectionCopy);

  return 1;
}

@end