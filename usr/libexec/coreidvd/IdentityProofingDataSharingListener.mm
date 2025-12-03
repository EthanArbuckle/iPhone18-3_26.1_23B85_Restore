@interface IdentityProofingDataSharingListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation IdentityProofingDataSharingListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1004A9A88(connectionCopy);

  return v9 & 1;
}

@end