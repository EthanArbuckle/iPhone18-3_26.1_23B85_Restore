@interface LocalSecuritydXPCServer
- (BOOL)clientHasBooleanEntitlement:(id)entitlement;
- (LocalSecuritydXPCServer)initWithSecurityClient:(SecurityClient *)client fakeEntitlements:(id)entitlements;
@end

@implementation LocalSecuritydXPCServer

- (BOOL)clientHasBooleanEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  fakeEntitlements = [(LocalSecuritydXPCServer *)self fakeEntitlements];

  if (fakeEntitlements)
  {
    fakeEntitlements2 = [(LocalSecuritydXPCServer *)self fakeEntitlements];
    v7 = [fakeEntitlements2 objectForKeyedSubscript:entitlementCopy];
    v8 = [v7 isEqual:&__kCFBooleanTrue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LocalSecuritydXPCServer)initWithSecurityClient:(SecurityClient *)client fakeEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v11.receiver = self;
  v11.super_class = LocalSecuritydXPCServer;
  v7 = [(SecuritydXPCServer *)&v11 initWithSecurityClient:client];
  if (v7)
  {
    v8 = [entitlementsCopy mutableCopy];
    fakeEntitlements = v7->_fakeEntitlements;
    v7->_fakeEntitlements = v8;
  }

  return v7;
}

@end