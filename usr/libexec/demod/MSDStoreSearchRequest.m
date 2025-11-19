@interface MSDStoreSearchRequest
- (id)getQueryItems;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDStoreSearchRequest

- (id)getQueryItems
{
  if ([(MSDDemoUnitServerRequest *)self isValid])
  {
    v3 = +[MSDLanguageAndRegionManager sharedInstance];
    v4 = [v3 getCurrentDeviceLocaleCode];

    v5 = [NSMutableArray arrayWithCapacity:0];
    v6 = [(MSDStoreSearchRequest *)self text];
    v7 = [NSURLQueryItem queryItemWithName:@"text" value:v6];

    [v5 addObject:v7];
    v8 = [(MSDStoreSearchRequest *)self longitude];
    if (v8)
    {
      v9 = v8;
      v10 = [(MSDStoreSearchRequest *)self latitude];

      if (v10)
      {
        v11 = [(MSDStoreSearchRequest *)self longitude];
        v12 = [v11 stringValue];
        v13 = [NSURLQueryItem queryItemWithName:@"longitude" value:v12];

        [v5 addObject:v13];
        v14 = [(MSDStoreSearchRequest *)self latitude];
        v15 = [v14 stringValue];
        v7 = [NSURLQueryItem queryItemWithName:@"latitude" value:v15];

        [v5 addObject:v7];
      }
    }

    v16 = [NSURLQueryItem queryItemWithName:@"locale_code" value:v4];

    [v5 addObject:v16];
    v17 = +[MSDLanguageAndRegionManager sharedInstance];
    v18 = [v17 getCurrentDeviceLanguage];
    v19 = [NSURLQueryItem queryItemWithName:@"language" value:v18];

    [v5 addObject:v19];
    v20 = +[MSDLanguageAndRegionManager sharedInstance];
    v21 = [v20 getCurrentDeviceRegion];
    v22 = [NSURLQueryItem queryItemWithName:@"country" value:v21];

    [v5 addObject:v22];
    v23 = [(MSDStoreSearchRequest *)self maxStoreResults];

    if (v23)
    {
      v24 = [(MSDStoreSearchRequest *)self maxStoreResults];
      v25 = [v24 stringValue];
      v26 = [NSURLQueryItem queryItemWithName:@"max_store_results" value:v25];

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

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = MSDStoreSearchRequest;
  v8 = [(MSDServerRequest *)&v24 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v13 = 0;
    v10 = 0;
  }

  else
  {
    v23 = v6;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v23];
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
          v16 = [v8 data];

          if (v16 && !v15)
          {
            v6 = 0;
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

    v6 = v11;
  }

  v19 = [v8 error];

  if (!v19)
  {
    v21 = v6;
    sub_1000C1424(&v21, 3727744512, @"Unexpected server response.");
    v20 = v21;

    [v8 setError:v20];
    v6 = v20;
  }

LABEL_8:

  return v8;
}

@end