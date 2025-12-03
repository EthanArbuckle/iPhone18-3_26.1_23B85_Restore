@interface PowerModesClient
- (PowerModesClient)initWithConnection:(id)connection identifier:(id)identifier interestedModes:(id)modes;
@end

@implementation PowerModesClient

- (PowerModesClient)initWithConnection:(id)connection identifier:(id)identifier interestedModes:(id)modes
{
  connectionCopy = connection;
  identifierCopy = identifier;
  modesCopy = modes;
  v15.receiver = self;
  v15.super_class = PowerModesClient;
  v12 = [(PowerModesClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v13->_identifer, identifier);
    objc_storeStrong(&v13->_interestedModes, modes);
  }

  return v13;
}

@end