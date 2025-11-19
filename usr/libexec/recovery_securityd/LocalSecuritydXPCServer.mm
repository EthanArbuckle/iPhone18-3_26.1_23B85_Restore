@interface LocalSecuritydXPCServer
- (BOOL)clientHasBooleanEntitlement:(id)a3;
- (LocalSecuritydXPCServer)initWithSecurityClient:(SecurityClient *)a3 fakeEntitlements:(id)a4;
@end

@implementation LocalSecuritydXPCServer

- (LocalSecuritydXPCServer)initWithSecurityClient:(SecurityClient *)a3 fakeEntitlements:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = LocalSecuritydXPCServer;
  v7 = [(SecuritydXPCServer *)&v11 initWithSecurityClient:a3];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    fakeEntitlements = v7->_fakeEntitlements;
    v7->_fakeEntitlements = v8;
  }

  return v7;
}

- (BOOL)clientHasBooleanEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(LocalSecuritydXPCServer *)self fakeEntitlements];

  if (v5)
  {
    v6 = [(LocalSecuritydXPCServer *)self fakeEntitlements];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 isEqual:&__kCFBooleanTrue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end