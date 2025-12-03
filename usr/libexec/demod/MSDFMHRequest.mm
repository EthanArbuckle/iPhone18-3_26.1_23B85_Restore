@interface MSDFMHRequest
- (BOOL)isValid;
- (MSDFMHRequest)init;
- (id)getPostData;
- (id)getUrl;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
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

  bundleInfo = [(MSDFMHRequest *)self bundleInfo];
  v4 = bundleInfo != 0;

  return v4;
}

- (id)getPostData
{
  if ([(MSDFMHRequest *)self isValid])
  {
    v3 = objc_opt_new();
    storeId = [(MSDFMHRequest *)self storeId];

    if (storeId)
    {
      storeId2 = [(MSDFMHRequest *)self storeId];
      [v3 setObject:storeId2 forKey:@"store_id"];
    }

    bundleInfo = [(MSDFMHRequest *)self bundleInfo];
    v7 = [bundleInfo count];

    if (v7)
    {
      bundleInfo2 = [(MSDFMHRequest *)self bundleInfo];
      [v3 setObject:bundleInfo2 forKey:@"bundle_info"];
    }

    countryCode = [(MSDFMHRequest *)self countryCode];

    if (countryCode)
    {
      countryCode2 = [(MSDFMHRequest *)self countryCode];
      [v3 setObject:countryCode2 forKey:@"country"];
    }

    language = [(MSDFMHRequest *)self language];

    if (language)
    {
      language2 = [(MSDFMHRequest *)self language];
      [v3 setObject:language2 forKey:@"language"];
    }

    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMH payload: %{public}@", &v16, 0xCu);
    }

    convertToNSData = [v3 convertToNSData];
  }

  else
  {
    convertToNSData = 0;
  }

  return convertToNSData;
}

- (id)getUrl
{
  logicSync = [(MSDFMHRequest *)self logicSync];
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v5 = deviceUDID;
  if (logicSync)
  {
    offlineDuration = [(MSDFMHRequest *)self offlineDuration];
    v7 = [NSString stringWithFormat:@"/api/device/%@/%@/hub?duration=%@", @"4", v5, offlineDuration];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"/api/device/%@/%@/hub", @"4", deviceUDID];
  }

  return v7;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v20.receiver = self;
  v20.super_class = MSDFMHRequest;
  v8 = [(MSDServerRequest *)&v20 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v10 = [payloadCopy objectForKey:@"statusCode"];
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

  v12 = [payloadCopy objectForKey:@"retryAfter"];
  if ([v11 intValue] == 202)
  {
    [v8 setRetryAfter:v12];
    goto LABEL_10;
  }

  v19 = errorCopy;
  v13 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v19];
  v14 = v19;

  if (v13)
  {
    [v8 setFmhDict:v13];

LABEL_9:
    errorCopy = v14;
    goto LABEL_10;
  }

  errorCopy = v14;
LABEL_21:
  error2 = [v8 error];

  if (!error2)
  {
    v18 = errorCopy;
    sub_1000C1424(&v18, 3727744512, @"Unexpected server response.");
    v14 = v18;

    [v8 setError:v14];
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

@end