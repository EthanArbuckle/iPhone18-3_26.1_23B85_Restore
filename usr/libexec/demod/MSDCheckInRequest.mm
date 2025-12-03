@interface MSDCheckInRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)getUrl;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
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

  serialNumber = [(MSDCheckInRequest *)self serialNumber];
  if (serialNumber)
  {
    osVersion = [(MSDCheckInRequest *)self osVersion];
    if (osVersion)
    {
      language = [(MSDCheckInRequest *)self language];
      v6 = language != 0;
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
  serialNumber = [(MSDCheckInRequest *)self serialNumber];
  v15[0] = serialNumber;
  v14[1] = @"os_version";
  osVersion = [(MSDCheckInRequest *)self osVersion];
  v15[1] = osVersion;
  v14[2] = @"language";
  language = [(MSDCheckInRequest *)self language];
  v15[2] = language;
  v14[3] = @"country";
  countryCode = [(MSDCheckInRequest *)self countryCode];
  v15[3] = countryCode;
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

  convertToNSData = [v8 convertToNSData];

  return convertToNSData;
}

- (id)getUrl
{
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v3 = [NSString stringWithFormat:@"/api/device/1/%@/check_in", deviceUDID];

  return v3;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v20.receiver = self;
  v20.super_class = MSDCheckInRequest;
  v8 = [(MSDServerRequest *)&v20 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v13 = 0;
    v10 = 0;
    v11 = errorCopy;
  }

  else
  {
    v19 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v19];
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

  error2 = [v8 error];

  if (!error2)
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