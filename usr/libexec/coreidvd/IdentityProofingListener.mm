@interface IdentityProofingListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation IdentityProofingListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1004AE7EC(connectionCopy);

  return v9 & 1;
}

@end