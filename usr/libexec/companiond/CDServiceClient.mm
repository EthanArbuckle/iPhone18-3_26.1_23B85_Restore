@interface CDServiceClient
+ (CDServiceClient)currentClient;
- (BOOL)shouldReceiveDeviceEvents;
- (CDServiceClient)initWithAuditToken:(id)token;
- (CDServiceClient)initWithConnection:(id)connection;
@end

@implementation CDServiceClient

- (CDServiceClient)initWithAuditToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = CDServiceClient;
  v5 = [(CDServiceClient *)&v9 init];
  if (v5)
  {
    v6 = [tokenCopy copy];
    auditToken = v5->_auditToken;
    v5->_auditToken = v6;
  }

  return v5;
}

- (CDServiceClient)initWithConnection:(id)connection
{
  v4 = [BSAuditToken tokenFromNSXPCConnection:connection];
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