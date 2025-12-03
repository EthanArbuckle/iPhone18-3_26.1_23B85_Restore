@interface MSDGetContinuitySettingsRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDGetContinuitySettingsRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDGetContinuitySettingsRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  existingAccounts = [(MSDGetContinuitySettingsRequest *)self existingAccounts];
  v4 = existingAccounts != 0;

  return v4;
}

- (id)getPostData
{
  v9[0] = @"UniqueDeviceID";
  deviceUDID = [(MSDCommandServerRequest *)self deviceUDID];
  v10[0] = deviceUDID;
  v9[1] = @"IdentityServicesID";
  identityServicesID = [(MSDGetContinuitySettingsRequest *)self identityServicesID];
  v10[1] = identityServicesID;
  v9[2] = @"ExistingAccounts";
  existingAccounts = [(MSDGetContinuitySettingsRequest *)self existingAccounts];
  v10[2] = existingAccounts;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  convertToNSData = [v6 convertToNSData];

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v44.receiver = self;
  v44.super_class = MSDGetContinuitySettingsRequest;
  v8 = [(MSDServerRequest *)&v44 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (!error)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      getName = [(MSDServerRequest *)self getName];
      data = [v8 data];
      *buf = 138543618;
      v46 = getName;
      v47 = 2114;
      v48 = data;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", buf, 0x16u);
    }

    v13 = [payloadCopy objectForKey:@"statusCode"];
    if (!v13)
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        getName2 = [(MSDServerRequest *)self getName];
        sub_1000792B4();
        v48 = @"statusCode";
        sub_1000792C8(&_mh_execute_header, v35, v36, "%{public}@ response payload does not contain: %{public}@", v37, v38, v39, v40, v42, v43, v44.receiver, v44.super_class, buf[0]);
      }

      v14 = 0;
      goto LABEL_16;
    }

    v14 = v13;
    if ([(__CFString *)v13 intValue]== 200 || [(__CFString *)v14 intValue]== 202)
    {
      v15 = [payloadCopy objectForKey:@"retryAfter"];
      if ([(__CFString *)v14 intValue]== 202)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      [v8 setRetryAfter:v16];
      data2 = [v8 data];
      if (data2)
      {
        v18 = data2;
        data3 = [v8 data];
        v20 = [data3 length];

        if (v20)
        {
          data4 = [v8 data];
          v22 = [NSDictionary dictionaryFromJsonData:data4];

          if (v22)
          {
            [v8 setContinuityDict:v22];
          }

          else
          {
            v32 = sub_100063A54();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              getName3 = [(MSDServerRequest *)self getName];
              *buf = 138543362;
              v46 = getName3;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: failed to convert data to dict", buf, 0xCu);
            }

            v43 = errorCopy;
            sub_1000C1390(&v43, 3727744512, @"Unexpected server response.");
            v33 = v43;

            errorCopy = v33;
          }

          goto LABEL_16;
        }
      }

      getName4 = +[NSDictionary dictionary];
      [v8 setContinuityDict:getName4];
    }

    else
    {
      v15 = sub_100063A54();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      getName4 = [(MSDServerRequest *)self getName];
      sub_1000792B4();
      v48 = v14;
      sub_1000792C8(&_mh_execute_header, v26, v27, "%{public}@: HTTP status code is %{public}@.", v28, v29, v30, v31, v42, v43, v44.receiver, v44.super_class, buf[0]);
    }

LABEL_16:
    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:
  error2 = [v8 error];

  if (!error2)
  {
    [v8 setError:errorCopy];
  }

  return v8;
}

@end