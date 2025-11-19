@interface NSXPCConnection
- (BOOL)BOOLValueForEntitlement:(id)a3;
@end

@implementation NSXPCConnection

- (BOOL)BOOLValueForEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:a3];
  v4 = sub_100010328(v3);

  return v4;
}

@end