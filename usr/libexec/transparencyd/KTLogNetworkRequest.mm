@interface KTLogNetworkRequest
- (id)createGETRequestForURL:(id)l timeout:(double)timeout error:(id *)error;
- (id)initGETWithURL:(id)l application:(id)application;
- (id)initPOSTWithURL:(id)l data:(id)data uuid:(id)uuid application:(id)application;
- (id)initPUSHWithURL:(id)l data:(id)data uuid:(id)uuid application:(id)application;
@end

@implementation KTLogNetworkRequest

- (id)initGETWithURL:(id)l application:(id)application
{
  applicationCopy = application;
  v10.receiver = self;
  v10.super_class = KTLogNetworkRequest;
  v7 = [(TransparencyNetworkRequest *)&v10 initGETWithURL:l];
  v8 = v7;
  if (v7)
  {
    [v7 setApplication:applicationCopy];
  }

  return v8;
}

- (id)initPOSTWithURL:(id)l data:(id)data uuid:(id)uuid application:(id)application
{
  applicationCopy = application;
  v14.receiver = self;
  v14.super_class = KTLogNetworkRequest;
  v11 = [(TransparencyNetworkRequest *)&v14 initPOSTWithURL:l data:data uuid:uuid];
  v12 = v11;
  if (v11)
  {
    [v11 setApplication:applicationCopy];
    [v12 setAuthenticated:1];
  }

  return v12;
}

- (id)initPUSHWithURL:(id)l data:(id)data uuid:(id)uuid application:(id)application
{
  applicationCopy = application;
  v14.receiver = self;
  v14.super_class = KTLogNetworkRequest;
  v11 = [(TransparencyNetworkRequest *)&v14 initPUSHWithURL:l data:data uuid:uuid];
  v12 = v11;
  if (v11)
  {
    [v11 setApplication:applicationCopy];
    [v12 setAuthenticated:1];
  }

  return v12;
}

- (id)createGETRequestForURL:(id)l timeout:(double)timeout error:(id *)error
{
  error = [NSMutableURLRequest requestWithURL:l, error];
  v8 = ProtocolVersion_EnumDescriptor();
  v9 = [v8 textFormatNameForValue:kTransparencyProtocolVersion];

  application = [(KTLogNetworkRequest *)self application];
  v11 = [TransparencyApplication applicationValueForIdentifier:application];
  stringValue = [v11 stringValue];

  v30[0] = @"Accept";
  v30[1] = off_10038B9E0;
  v31[0] = @"application/protobuf";
  v31[1] = stringValue;
  v30[2] = off_10038B9E8;
  v31[2] = v9;
  v13 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
  v14 = [v13 mutableCopy];

  v15 = +[TransparencySettings automatedDeviceGroup];
  [v14 setObject:v15 forKeyedSubscript:off_10038B9F0];

  v16 = +[TransparencySettings transparencyVersionStr];
  [v14 setObject:v16 forKeyedSubscript:off_10038B9F8];

  [(TransparencyNetworkRequest *)self setAdditionalHeaders:v14];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  additionalHeaders = [(TransparencyNetworkRequest *)self additionalHeaders];
  v18 = [additionalHeaders countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(additionalHeaders);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        v23 = [v14 objectForKeyedSubscript:v22];
        [error setValue:v23 forHTTPHeaderField:v22];
      }

      v19 = [additionalHeaders countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  [error setHTTPMethod:@"GET"];
  if (timeout != 0.0)
  {
    [error setTimeoutInterval:timeout];
  }

  return error;
}

@end