@interface PowerModesClient
- (PowerModesClient)initWithConnection:(id)a3 identifier:(id)a4 interestedModes:(id)a5;
@end

@implementation PowerModesClient

- (PowerModesClient)initWithConnection:(id)a3 identifier:(id)a4 interestedModes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PowerModesClient;
  v12 = [(PowerModesClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    objc_storeStrong(&v13->_identifer, a4);
    objc_storeStrong(&v13->_interestedModes, a5);
  }

  return v13;
}

@end