@interface MSDStoreSearchRequest
- (id)getQueryItems;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDStoreSearchRequest

- (id)getQueryItems
{
  if ([(MSDDemoUnitServerRequest *)self isValid])
  {
    v3 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceLocaleCode = [v3 getCurrentDeviceLocaleCode];

    v5 = [NSMutableArray arrayWithCapacity:0];
    text = [(MSDStoreSearchRequest *)self text];
    v7 = [NSURLQueryItem queryItemWithName:@"text" value:text];

    [v5 addObject:v7];
    longitude = [(MSDStoreSearchRequest *)self longitude];
    if (longitude)
    {
      v9 = longitude;
      latitude = [(MSDStoreSearchRequest *)self latitude];

      if (latitude)
      {
        longitude2 = [(MSDStoreSearchRequest *)self longitude];
        stringValue = [longitude2 stringValue];
        v13 = [NSURLQueryItem queryItemWithName:@"longitude" value:stringValue];

        [v5 addObject:v13];
        latitude2 = [(MSDStoreSearchRequest *)self latitude];
        stringValue2 = [latitude2 stringValue];
        v7 = [NSURLQueryItem queryItemWithName:@"latitude" value:stringValue2];

        [v5 addObject:v7];
      }
    }

    v16 = [NSURLQueryItem queryItemWithName:@"locale_code" value:getCurrentDeviceLocaleCode];

    [v5 addObject:v16];
    v17 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceLanguage = [v17 getCurrentDeviceLanguage];
    v19 = [NSURLQueryItem queryItemWithName:@"language" value:getCurrentDeviceLanguage];

    [v5 addObject:v19];
    v20 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceRegion = [v20 getCurrentDeviceRegion];
    v22 = [NSURLQueryItem queryItemWithName:@"country" value:getCurrentDeviceRegion];

    [v5 addObject:v22];
    maxStoreResults = [(MSDStoreSearchRequest *)self maxStoreResults];

    if (maxStoreResults)
    {
      maxStoreResults2 = [(MSDStoreSearchRequest *)self maxStoreResults];
      stringValue3 = [maxStoreResults2 stringValue];
      v26 = [NSURLQueryItem queryItemWithName:@"max_store_results" value:stringValue3];

      v22 = v26;
    }

    v27 = sub_100063A54();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543362;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Store search queries: %{public}@", &v29, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v24.receiver = self;
  v24.super_class = MSDStoreSearchRequest;
  v8 = [(MSDServerRequest *)&v24 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v13 = 0;
    v10 = 0;
  }

  else
  {
    v23 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v23];
    v11 = v23;

    if (v10)
    {
      v12 = [v10 objectForKey:@"store_results"];
      if (v12)
      {
        v13 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v11;
          v14 = [NSJSONSerialization dataWithJSONObject:v13 options:0 error:&v22];
          v15 = v22;

          [v8 setData:v14];
          data = [v8 data];

          if (data && !v15)
          {
            errorCopy = 0;
            goto LABEL_8;
          }

          v18 = sub_100063A54();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000D50FC(v15, v18);
          }

          v11 = v15;
        }

        else
        {
          v18 = sub_100063A54();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000D5064(v13, v18);
          }
        }
      }

      else
      {
        v18 = sub_100063A54();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000D5174(v10, v18);
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    errorCopy = v11;
  }

  error2 = [v8 error];

  if (!error2)
  {
    v21 = errorCopy;
    sub_1000C1424(&v21, 3727744512, @"Unexpected server response.");
    v20 = v21;

    [v8 setError:v20];
    errorCopy = v20;
  }

LABEL_8:

  return v8;
}

@end