@interface CompanionDevice
- (CompanionDevice)initWithCompanionUUID:(id)a3;
@end

@implementation CompanionDevice

- (CompanionDevice)initWithCompanionUUID:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIServerItemLocalizerSession.mm" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v11.receiver = self;
  v11.super_class = CompanionDevice;
  v7 = [(CompanionDevice *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_UUID, a3);
  }

  return v8;
}

@end