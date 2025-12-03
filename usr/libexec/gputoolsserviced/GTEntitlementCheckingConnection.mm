@interface GTEntitlementCheckingConnection
- (BOOL)isTrusted;
@end

@implementation GTEntitlementCheckingConnection

- (BOOL)isTrusted
{
  connection = [(GTLocalXPCConnection *)self connection];
  v3 = sub_100020AFC(connection);

  return v3;
}

@end