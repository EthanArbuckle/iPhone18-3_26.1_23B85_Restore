@interface APDeviceDataAdaptor
+ (id)validClassInputs;
- (BOOL)_validateParameters:(id *)a3;
- (id)deviceClass;
- (void)_run:(id)a3;
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

- (void)_run:(id)a3
{
  v4 = a3;
  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"class"];

  if (v6)
  {
    v7 = [(APDataAdaptor *)self parameters];
    v8 = [v7 objectForKeyedSubscript:@"class"];

    v9 = [(APDeviceDataAdaptor *)self deviceClass];
    if (v9)
    {
      v10 = [v8 containsObject:v9];
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
  v4[2](v4, v13, 0, v11);
}

- (BOOL)_validateParameters:(id *)a3
{
  v14.receiver = self;
  v14.super_class = APDeviceDataAdaptor;
  if (![(APDataAdaptor *)&v14 _validateParameters:?])
  {
    return 0;
  }

  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"class"];
  v7 = [(APDataAdaptor *)self _checkClassType:v6 name:@"class" expectedClass:objc_opt_class() error:a3];

  if (!v7)
  {
    return 0;
  }

  v8 = [(APDataAdaptor *)self parameters];
  v9 = [v8 objectForKeyedSubscript:@"class"];
  v10 = [NSSet setWithArray:v9];

  v11 = +[APDeviceDataAdaptor validClassInputs];
  v12 = [v10 isSubsetOfSet:v11];

  return v12;
}

- (id)deviceClass
{
  v2 = +[APDeviceInfo current];
  v3 = [v2 deviceModel];

  if ([v3 hasPrefix:@"iPhone"])
  {
    v4 = @"IPHONE";
  }

  else if ([v3 hasPrefix:@"iPad"])
  {
    v4 = @"IPAD";
  }

  else if ([v3 hasPrefix:@"Mac"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"iMac"))
  {
    v4 = @"MAC";
  }

  else if ([v3 hasPrefix:@"iPod"])
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