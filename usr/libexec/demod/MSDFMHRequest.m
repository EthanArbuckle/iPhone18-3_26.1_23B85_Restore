@interface MSDFMHRequest
- (BOOL)isValid;
- (MSDFMHRequest)init;
- (id)getPostData;
- (id)getUrl;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDFMHRequest

- (MSDFMHRequest)init
{
  v6.receiver = self;
  v6.super_class = MSDFMHRequest;
  v2 = [(MSDDemoUnitServerRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSDCommandServerRequest *)v2 setServer:@"api.demounit.net"];
    [(MSDCommandServerRequest *)v3 setPort:@"443"];
    [(MSDFMHRequest *)v3 setStoreId:0];
    v4 = v3;
  }

  return v3;
}

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDFMHRequest;
  if (![(MSDDemoUnitServerRequest *)&v6 isValid])
  {
    return 0;
  }

  v3 = [(MSDFMHRequest *)self bundleInfo];
  v4 = v3 != 0;

  return v4;
}

- (id)getPostData
{
  if ([(MSDFMHRequest *)self isValid])
  {
    v3 = objc_opt_new();
    v4 = [(MSDFMHRequest *)self storeId];

    if (v4)
    {
      v5 = [(MSDFMHRequest *)self storeId];
      [v3 setObject:v5 forKey:@"store_id"];
    }

    v6 = [(MSDFMHRequest *)self bundleInfo];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(MSDFMHRequest *)self bundleInfo];
      [v3 setObject:v8 forKey:@"bundle_info"];
    }

    v9 = [(MSDFMHRequest *)self countryCode];

    if (v9)
    {
      v10 = [(MSDFMHRequest *)self countryCode];
      [v3 setObject:v10 forKey:@"country"];
    }

    v11 = [(MSDFMHRequest *)self language];

    if (v11)
    {
      v12 = [(MSDFMHRequest *)self language];
      [v3 setObject:v12 forKey:@"language"];
    }

    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMH payload: %{public}@", &v16, 0xCu);
    }

    v14 = [v3 convertToNSData];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getUrl
{
  v3 = [(MSDFMHRequest *)self logicSync];
  v4 = [(MSDCommandServerRequest *)self deviceUDID];
  v5 = v4;
  if (v3)
  {
    v6 = [(MSDFMHRequest *)self offlineDuration];
    v7 = [NSString stringWithFormat:@"/api/device/%@/%@/hub?duration=%@", @"4", v5, v6];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"/api/device/%@/%@/hub", @"4", v4];
  }

  return v7;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MSDFMHRequest;
  v8 = [(MSDServerRequest *)&v20 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v10 = [v7 objectForKey:@"statusCode"];
  if (!v10)
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5294(self);
    }

    v11 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  if ([v10 intValue] != 200 && objc_msgSend(v11, "intValue") != 202)
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5200(self);
    }

LABEL_19:

    v12 = 0;
    goto LABEL_21;
  }

  v12 = [v7 objectForKey:@"retryAfter"];
  if ([v11 intValue] == 202)
  {
    [v8 setRetryAfter:v12];
    goto LABEL_10;
  }

  v19 = v6;
  v13 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v19];
  v14 = v19;

  if (v13)
  {
    [v8 setFmhDict:v13];

LABEL_9:
    v6 = v14;
    goto LABEL_10;
  }

  v6 = v14;
LABEL_21:
  v17 = [v8 error];

  if (!v17)
  {
    v18 = v6;
    sub_1000C1424(&v18, 3727744512, @"Unexpected server response.");
    v14 = v18;

    [v8 setError:v14];
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

@end