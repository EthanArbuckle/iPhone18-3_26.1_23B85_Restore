@interface SPRRemoteService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation SPRRemoteService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1001922EC(connectionCopy);

  return v9 & 1;
}

@end