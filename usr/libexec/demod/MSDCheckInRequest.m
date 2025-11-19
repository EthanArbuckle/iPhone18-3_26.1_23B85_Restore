@interface MSDCheckInRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)getUrl;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDCheckInRequest

- (BOOL)isValid
{
  v8.receiver = self;
  v8.super_class = MSDCheckInRequest;
  if (![(MSDDemoUnitServerRequest *)&v8 isValid])
  {
    return 0;
  }

  v3 = [(MSDCheckInRequest *)self serialNumber];
  if (v3)
  {
    v4 = [(MSDCheckInRequest *)self osVersion];
    if (v4)
    {
      v5 = [(MSDCheckInRequest *)self language];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPostData
{
  v14[0] = @"serial_number";
  v3 = [(MSDCheckInRequest *)self serialNumber];
  v15[0] = v3;
  v14[1] = @"os_version";
  v4 = [(MSDCheckInRequest *)self osVersion];
  v15[1] = v4;
  v14[2] = @"language";
  v5 = [(MSDCheckInRequest *)self language];
  v15[2] = v5;
  v14[3] = @"country";
  v6 = [(MSDCheckInRequest *)self countryCode];
  v15[3] = v6;
  v14[4] = @"has_factory_content";
  v7 = [NSNumber numberWithBool:[(MSDCheckInRequest *)self hasFactoryContent]];
  v15[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request dictionary to check_in: %{public}@", &v12, 0xCu);
  }

  v10 = [v8 convertToNSData];

  return v10;
}

- (id)getUrl
{
  v2 = [(MSDCommandServerRequest *)self deviceUDID];
  v3 = [NSString stringWithFormat:@"/api/device/1/%@/check_in", v2];

  return v3;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MSDCheckInRequest;
  v8 = [(MSDServerRequest *)&v20 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (v9)
  {
    v13 = 0;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v19 = v6;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:v7 error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = [v10 objectForKey:@"eligible"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v8 setEligible:{objc_msgSend(v12, "BOOLValue")}];
        v13 = [v10 objectForKey:@"show_ui"];

        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 setShowUI:{objc_msgSend(v13, "BOOLValue")}];
            goto LABEL_8;
          }
        }

        v15 = sub_100063A54();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000D78C4(self);
        }

        v12 = v13;
      }

      else
      {
        v15 = sub_100063A54();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000D78C4(self);
        }
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  v16 = [v8 error];

  if (!v16)
  {
    v18 = v11;
    sub_1000C1390(&v18, 3727744512, @"Unexpected server response.");
    v17 = v18;

    [v8 setError:v17];
    v11 = v17;
  }

LABEL_8:

  return v8;
}

@end