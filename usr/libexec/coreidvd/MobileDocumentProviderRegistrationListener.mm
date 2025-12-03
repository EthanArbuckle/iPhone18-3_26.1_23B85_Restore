@interface MobileDocumentProviderRegistrationListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MobileDocumentProviderRegistrationListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1004D2A64(connectionCopy);

  return v9 & 1;
}

@end