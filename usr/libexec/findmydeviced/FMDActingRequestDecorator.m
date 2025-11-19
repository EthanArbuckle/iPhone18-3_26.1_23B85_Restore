@interface FMDActingRequestDecorator
- (FMDActingRequestDecorator)init;
- (FMDActingRequestDecorator)initWithDeviceContextGenerator:(id)a3 deviceInfoGenerator:(id)a4 serverContextGenerator:(id)a5 requestHeaderGenerator:(id)a6;
- (id)registerDeviceContextForAccount:(id)a3;
- (id)standardDeviceContext;
@end

@implementation FMDActingRequestDecorator

- (FMDActingRequestDecorator)init
{
  v5.receiver = self;
  v5.super_class = FMDActingRequestDecorator;
  v2 = [(FMDActingRequestDecorator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDActingRequestDecorator *)v2 setDeviceContextGenerator:&stru_1002CF4F0];
    [(FMDActingRequestDecorator *)v3 setDeviceInfoGenerator:&stru_1002CF4F0];
    [(FMDActingRequestDecorator *)v3 setServerContextGenerator:&stru_1002CF4F0];
    [(FMDActingRequestDecorator *)v3 setRequestHeaderGenerator:&stru_1002CF4F0];
  }

  return v3;
}

- (FMDActingRequestDecorator)initWithDeviceContextGenerator:(id)a3 deviceInfoGenerator:(id)a4 serverContextGenerator:(id)a5 requestHeaderGenerator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FMDActingRequestDecorator *)self init];
  v15 = v14;
  if (v14)
  {
    deviceContextGenerator = v10;
    if (!v10)
    {
      deviceContextGenerator = v14->_deviceContextGenerator;
    }

    [(FMDActingRequestDecorator *)v14 setDeviceContextGenerator:deviceContextGenerator];
    deviceInfoGenerator = v11;
    if (!v11)
    {
      deviceInfoGenerator = v15->_deviceInfoGenerator;
    }

    [(FMDActingRequestDecorator *)v15 setDeviceInfoGenerator:deviceInfoGenerator];
    serverContextGenerator = v12;
    if (!v12)
    {
      serverContextGenerator = v15->_serverContextGenerator;
    }

    [(FMDActingRequestDecorator *)v15 setServerContextGenerator:serverContextGenerator];
    requestHeaderGenerator = v13;
    if (!v13)
    {
      requestHeaderGenerator = v15->_requestHeaderGenerator;
    }

    [(FMDActingRequestDecorator *)v15 setRequestHeaderGenerator:requestHeaderGenerator];
  }

  return v15;
}

- (id)registerDeviceContextForAccount:(id)a3
{
  v4 = a3;
  v5 = [(FMDActingRequestDecorator *)self standardDeviceContext];
  v6 = [v4 lastLoggedInDsid];

  [v5 fm_safelyMapKey:@"lastLoggedInDsid" toObject:v6];

  return v5;
}

- (id)standardDeviceContext
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSDate date];
  v5 = [v4 stringValueForServer];

  [v2 fm_safeSetObject:v5 forKey:@"deviceTS"];
  v6 = [FMPreferencesUtil stringForKey:@"lastCommandId" inDomain:kFMDNotBackedUpPrefDomain];
  [v2 fm_safeSetObject:v6 forKey:@"lastCommandId"];

  objc_autoreleasePoolPop(v3);

  return v2;
}

@end