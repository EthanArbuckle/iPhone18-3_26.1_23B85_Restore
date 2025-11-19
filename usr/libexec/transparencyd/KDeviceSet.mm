@interface KDeviceSet
- (KDeviceSet)init;
- (id)addDevice:(id)a3 registationData:(id)a4 app:(id)a5;
@end

@implementation KDeviceSet

- (KDeviceSet)init
{
  v6.receiver = self;
  v6.super_class = KDeviceSet;
  v2 = [(KDeviceSet *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(KDeviceSet *)v2 setDevices:v3];

    v4 = v2;
  }

  return v2;
}

- (id)addDevice:(id)a3 registationData:(id)a4 app:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[KDevice alloc] initWithPushToken:v10 registrationData:v9];

  v12 = [(KDeviceSet *)self devices];
  v13 = [v12 member:v11];

  if (!v13)
  {
    v14 = [(KDeviceSet *)self devices];
    [v14 addObject:v11];

    v13 = v11;
  }

  [(KDevice *)v13 addApplication:v8];

  return v13;
}

@end