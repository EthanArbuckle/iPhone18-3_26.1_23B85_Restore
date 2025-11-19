@interface MSDGetContinuitySettingsRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
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

  v3 = [(MSDGetContinuitySettingsRequest *)self existingAccounts];
  v4 = v3 != 0;

  return v4;
}

- (id)getPostData
{
  v9[0] = @"UniqueDeviceID";
  v3 = [(MSDCommandServerRequest *)self deviceUDID];
  v10[0] = v3;
  v9[1] = @"IdentityServicesID";
  v4 = [(MSDGetContinuitySettingsRequest *)self identityServicesID];
  v10[1] = v4;
  v9[2] = @"ExistingAccounts";
  v5 = [(MSDGetContinuitySettingsRequest *)self existingAccounts];
  v10[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = [v6 convertToNSData];

  return v7;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = MSDGetContinuitySettingsRequest;
  v8 = [(MSDServerRequest *)&v44 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (!v9)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MSDServerRequest *)self getName];
      v12 = [v8 data];
      *buf = 138543618;
      v46 = v11;
      v47 = 2114;
      v48 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", buf, 0x16u);
    }

    v13 = [v7 objectForKey:@"statusCode"];
    if (!v13)
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v34 = [(MSDServerRequest *)self getName];
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
      v15 = [v7 objectForKey:@"retryAfter"];
      if ([(__CFString *)v14 intValue]== 202)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      [v8 setRetryAfter:v16];
      v17 = [v8 data];
      if (v17)
      {
        v18 = v17;
        v19 = [v8 data];
        v20 = [v19 length];

        if (v20)
        {
          v21 = [v8 data];
          v22 = [NSDictionary dictionaryFromJsonData:v21];

          if (v22)
          {
            [v8 setContinuityDict:v22];
          }

          else
          {
            v32 = sub_100063A54();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v41 = [(MSDServerRequest *)self getName];
              *buf = 138543362;
              v46 = v41;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: failed to convert data to dict", buf, 0xCu);
            }

            v43 = v6;
            sub_1000C1390(&v43, 3727744512, @"Unexpected server response.");
            v33 = v43;

            v6 = v33;
          }

          goto LABEL_16;
        }
      }

      v23 = +[NSDictionary dictionary];
      [v8 setContinuityDict:v23];
    }

    else
    {
      v15 = sub_100063A54();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v23 = [(MSDServerRequest *)self getName];
      sub_1000792B4();
      v48 = v14;
      sub_1000792C8(&_mh_execute_header, v26, v27, "%{public}@: HTTP status code is %{public}@.", v28, v29, v30, v31, v42, v43, v44.receiver, v44.super_class, buf[0]);
    }

LABEL_16:
    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:
  v24 = [v8 error];

  if (!v24)
  {
    [v8 setError:v6];
  }

  return v8;
}

@end