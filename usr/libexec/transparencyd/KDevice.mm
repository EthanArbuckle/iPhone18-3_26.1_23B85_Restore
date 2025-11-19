@interface KDevice
- (BOOL)isEqual:(id)a3;
- (KDevice)initWithPushToken:(id)a3 registrationData:(id)a4;
- (NSString)state;
- (unint64_t)hash;
- (void)addApplication:(id)a3;
@end

@implementation KDevice

- (KDevice)initWithPushToken:(id)a3 registrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = KDevice;
  v8 = [(KDevice *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KDevice *)v8 setPushToken:v6];
    [(KDevice *)v9 setRegistrationData:v7];
    v10 = +[NSMutableSet set];
    [(KDevice *)v9 setApps:v10];

    v11 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(KDevice *)self pushToken];
    v6 = [v4 pushToken];
    if ([v5 isEqual:v6])
    {
      v7 = [(KDevice *)self registrationData];
      v8 = [v4 registrationData];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(KDevice *)self pushToken];
  v4 = [v3 hash];
  v5 = [(KDevice *)self registrationData];
  v6 = [v5 hash];

  return v4 + v6;
}

- (void)addApplication:(id)a3
{
  v4 = a3;
  v5 = [(KDevice *)self apps];
  [v5 addObject:v4];
}

- (NSString)state
{
  if ([(KDevice *)self hasSignature])
  {
    return @"signed";
  }

  else
  {
    return @"initial";
  }
}

@end