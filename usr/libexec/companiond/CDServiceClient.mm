@interface CDServiceClient
+ (CDServiceClient)currentClient;
- (BOOL)shouldReceiveDeviceEvents;
- (CDServiceClient)initWithAuditToken:(id)a3;
- (CDServiceClient)initWithConnection:(id)a3;
@end

@implementation CDServiceClient

- (CDServiceClient)initWithAuditToken:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDServiceClient;
  v5 = [(CDServiceClient *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    auditToken = v5->_auditToken;
    v5->_auditToken = v6;
  }

  return v5;
}

- (CDServiceClient)initWithConnection:(id)a3
{
  v4 = [BSAuditToken tokenFromNSXPCConnection:a3];
  v5 = [(CDServiceClient *)self initWithAuditToken:v4];

  return v5;
}

+ (CDServiceClient)currentClient
{
  v2 = +[NSXPCConnection currentConnection];
  if (v2)
  {
    v3 = [[CDServiceClient alloc] initWithConnection:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldReceiveDeviceEvents
{
  if ([(CDServiceClient *)self hasStorePurchaseEntitlement])
  {
    return 1;
  }

  return [(CDServiceClient *)self hasSystemAuthenticationEntitlement];
}

@end