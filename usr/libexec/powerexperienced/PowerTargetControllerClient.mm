@interface PowerTargetControllerClient
- (PowerTargetControllerClient)initWithConnection:(id)a3 identifier:(id)a4;
@end

@implementation PowerTargetControllerClient

- (PowerTargetControllerClient)initWithConnection:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PowerTargetControllerClient;
  v9 = [(PowerTargetControllerClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_identifer, a4);
  }

  return v10;
}

@end