@interface KDevice
- (BOOL)isEqual:(id)equal;
- (KDevice)initWithPushToken:(id)token registrationData:(id)data;
- (NSString)state;
- (unint64_t)hash;
- (void)addApplication:(id)application;
@end

@implementation KDevice

- (KDevice)initWithPushToken:(id)token registrationData:(id)data
{
  tokenCopy = token;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = KDevice;
  v8 = [(KDevice *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KDevice *)v8 setPushToken:tokenCopy];
    [(KDevice *)v9 setRegistrationData:dataCopy];
    v10 = +[NSMutableSet set];
    [(KDevice *)v9 setApps:v10];

    v11 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pushToken = [(KDevice *)self pushToken];
    pushToken2 = [equalCopy pushToken];
    if ([pushToken isEqual:pushToken2])
    {
      registrationData = [(KDevice *)self registrationData];
      registrationData2 = [equalCopy registrationData];
      v9 = [registrationData isEqual:registrationData2];
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
  pushToken = [(KDevice *)self pushToken];
  v4 = [pushToken hash];
  registrationData = [(KDevice *)self registrationData];
  v6 = [registrationData hash];

  return v4 + v6;
}

- (void)addApplication:(id)application
{
  applicationCopy = application;
  apps = [(KDevice *)self apps];
  [apps addObject:applicationCopy];
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