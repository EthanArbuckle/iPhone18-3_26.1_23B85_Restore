@interface APDeviceDataAdaptor
+ (id)validClassInputs;
- (BOOL)_validateParameters:(id *)parameters;
- (id)deviceClass;
- (void)_run:(id)_run;
@end

@implementation APDeviceDataAdaptor

+ (id)validClassInputs
{
  if (qword_1004DF648 != -1)
  {
    sub_100393940();
  }

  v3 = qword_1004DF640;

  return v3;
}

- (void)_run:(id)_run
{
  _runCopy = _run;
  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"class"];

  if (v6)
  {
    parameters2 = [(APDataAdaptor *)self parameters];
    v8 = [parameters2 objectForKeyedSubscript:@"class"];

    deviceClass = [(APDeviceDataAdaptor *)self deviceClass];
    if (deviceClass)
    {
      v10 = [v8 containsObject:deviceClass];
      v11 = 0;
    }

    else
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Unable to determine device class";
      v10 = 1;
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5207 userInfo:v12];
    }
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  v13 = [NSNumber numberWithBool:v10];
  _runCopy[2](_runCopy, v13, 0, v11);
}

- (BOOL)_validateParameters:(id *)parameters
{
  v14.receiver = self;
  v14.super_class = APDeviceDataAdaptor;
  if (![(APDataAdaptor *)&v14 _validateParameters:?])
  {
    return 0;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"class"];
  v7 = [(APDataAdaptor *)self _checkClassType:v6 name:@"class" expectedClass:objc_opt_class() error:parameters];

  if (!v7)
  {
    return 0;
  }

  parameters2 = [(APDataAdaptor *)self parameters];
  v9 = [parameters2 objectForKeyedSubscript:@"class"];
  v10 = [NSSet setWithArray:v9];

  v11 = +[APDeviceDataAdaptor validClassInputs];
  v12 = [v10 isSubsetOfSet:v11];

  return v12;
}

- (id)deviceClass
{
  v2 = +[APDeviceInfo current];
  deviceModel = [v2 deviceModel];

  if ([deviceModel hasPrefix:@"iPhone"])
  {
    v4 = @"IPHONE";
  }

  else if ([deviceModel hasPrefix:@"iPad"])
  {
    v4 = @"IPAD";
  }

  else if ([deviceModel hasPrefix:@"Mac"] & 1) != 0 || (objc_msgSend(deviceModel, "hasPrefix:", @"iMac"))
  {
    v4 = @"MAC";
  }

  else if ([deviceModel hasPrefix:@"iPod"])
  {
    v4 = @"IPOD";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end