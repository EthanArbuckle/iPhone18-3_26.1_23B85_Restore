@interface PowerTargetControllerClient
- (PowerTargetControllerClient)initWithConnection:(id)connection identifier:(id)identifier;
@end

@implementation PowerTargetControllerClient

- (PowerTargetControllerClient)initWithConnection:(id)connection identifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PowerTargetControllerClient;
  v9 = [(PowerTargetControllerClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_identifer, identifier);
  }

  return v10;
}

@end