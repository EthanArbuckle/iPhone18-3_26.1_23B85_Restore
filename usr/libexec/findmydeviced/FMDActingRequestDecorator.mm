@interface FMDActingRequestDecorator
- (FMDActingRequestDecorator)init;
- (FMDActingRequestDecorator)initWithDeviceContextGenerator:(id)generator deviceInfoGenerator:(id)infoGenerator serverContextGenerator:(id)contextGenerator requestHeaderGenerator:(id)headerGenerator;
- (id)registerDeviceContextForAccount:(id)account;
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

- (FMDActingRequestDecorator)initWithDeviceContextGenerator:(id)generator deviceInfoGenerator:(id)infoGenerator serverContextGenerator:(id)contextGenerator requestHeaderGenerator:(id)headerGenerator
{
  generatorCopy = generator;
  infoGeneratorCopy = infoGenerator;
  contextGeneratorCopy = contextGenerator;
  headerGeneratorCopy = headerGenerator;
  v14 = [(FMDActingRequestDecorator *)self init];
  v15 = v14;
  if (v14)
  {
    deviceContextGenerator = generatorCopy;
    if (!generatorCopy)
    {
      deviceContextGenerator = v14->_deviceContextGenerator;
    }

    [(FMDActingRequestDecorator *)v14 setDeviceContextGenerator:deviceContextGenerator];
    deviceInfoGenerator = infoGeneratorCopy;
    if (!infoGeneratorCopy)
    {
      deviceInfoGenerator = v15->_deviceInfoGenerator;
    }

    [(FMDActingRequestDecorator *)v15 setDeviceInfoGenerator:deviceInfoGenerator];
    serverContextGenerator = contextGeneratorCopy;
    if (!contextGeneratorCopy)
    {
      serverContextGenerator = v15->_serverContextGenerator;
    }

    [(FMDActingRequestDecorator *)v15 setServerContextGenerator:serverContextGenerator];
    requestHeaderGenerator = headerGeneratorCopy;
    if (!headerGeneratorCopy)
    {
      requestHeaderGenerator = v15->_requestHeaderGenerator;
    }

    [(FMDActingRequestDecorator *)v15 setRequestHeaderGenerator:requestHeaderGenerator];
  }

  return v15;
}

- (id)registerDeviceContextForAccount:(id)account
{
  accountCopy = account;
  standardDeviceContext = [(FMDActingRequestDecorator *)self standardDeviceContext];
  lastLoggedInDsid = [accountCopy lastLoggedInDsid];

  [standardDeviceContext fm_safelyMapKey:@"lastLoggedInDsid" toObject:lastLoggedInDsid];

  return standardDeviceContext;
}

- (id)standardDeviceContext
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSDate date];
  stringValueForServer = [v4 stringValueForServer];

  [v2 fm_safeSetObject:stringValueForServer forKey:@"deviceTS"];
  v6 = [FMPreferencesUtil stringForKey:@"lastCommandId" inDomain:kFMDNotBackedUpPrefDomain];
  [v2 fm_safeSetObject:v6 forKey:@"lastCommandId"];

  objc_autoreleasePoolPop(v3);

  return v2;
}

@end