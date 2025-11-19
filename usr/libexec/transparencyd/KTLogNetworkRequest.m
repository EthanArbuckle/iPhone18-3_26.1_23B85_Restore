@interface KTLogNetworkRequest
- (id)createGETRequestForURL:(id)a3 timeout:(double)a4 error:(id *)a5;
- (id)initGETWithURL:(id)a3 application:(id)a4;
- (id)initPOSTWithURL:(id)a3 data:(id)a4 uuid:(id)a5 application:(id)a6;
- (id)initPUSHWithURL:(id)a3 data:(id)a4 uuid:(id)a5 application:(id)a6;
@end

@implementation KTLogNetworkRequest

- (id)initGETWithURL:(id)a3 application:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = KTLogNetworkRequest;
  v7 = [(TransparencyNetworkRequest *)&v10 initGETWithURL:a3];
  v8 = v7;
  if (v7)
  {
    [v7 setApplication:v6];
  }

  return v8;
}

- (id)initPOSTWithURL:(id)a3 data:(id)a4 uuid:(id)a5 application:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = KTLogNetworkRequest;
  v11 = [(TransparencyNetworkRequest *)&v14 initPOSTWithURL:a3 data:a4 uuid:a5];
  v12 = v11;
  if (v11)
  {
    [v11 setApplication:v10];
    [v12 setAuthenticated:1];
  }

  return v12;
}

- (id)initPUSHWithURL:(id)a3 data:(id)a4 uuid:(id)a5 application:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = KTLogNetworkRequest;
  v11 = [(TransparencyNetworkRequest *)&v14 initPUSHWithURL:a3 data:a4 uuid:a5];
  v12 = v11;
  if (v11)
  {
    [v11 setApplication:v10];
    [v12 setAuthenticated:1];
  }

  return v12;
}

- (id)createGETRequestForURL:(id)a3 timeout:(double)a4 error:(id *)a5
{
  v7 = [NSMutableURLRequest requestWithURL:a3, a5];
  v8 = ProtocolVersion_EnumDescriptor();
  v9 = [v8 textFormatNameForValue:kTransparencyProtocolVersion];

  v10 = [(KTLogNetworkRequest *)self application];
  v11 = [TransparencyApplication applicationValueForIdentifier:v10];
  v12 = [v11 stringValue];

  v30[0] = @"Accept";
  v30[1] = off_10038B9E0;
  v31[0] = @"application/protobuf";
  v31[1] = v12;
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
  v17 = [(TransparencyNetworkRequest *)self additionalHeaders];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        v23 = [v14 objectForKeyedSubscript:v22];
        [v7 setValue:v23 forHTTPHeaderField:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  [v7 setHTTPMethod:@"GET"];
  if (a4 != 0.0)
  {
    [v7 setTimeoutInterval:a4];
  }

  return v7;
}

@end