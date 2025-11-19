@interface GTEntitlementCheckingConnection
- (BOOL)isTrusted;
@end

@implementation GTEntitlementCheckingConnection

- (BOOL)isTrusted
{
  v2 = [(GTLocalXPCConnection *)self connection];
  v3 = sub_100020AFC(v2);

  return v3;
}

@end