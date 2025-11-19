@interface MSDGetAccountSettingsRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDGetAccountSettingsRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDGetAccountSettingsRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  v3 = [(MSDGetAccountSettingsRequest *)self existingAccounts];
  v4 = v3 != 0;

  return v4;
}

- (id)getPostData
{
  v8[0] = @"UniqueDeviceID";
  v3 = [(MSDCommandServerRequest *)self deviceUDID];
  v8[1] = @"ExistingAccounts";
  v9[0] = v3;
  v4 = [(MSDGetAccountSettingsRequest *)self existingAccounts];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [v5 convertToNSData];

  return v6;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = MSDGetAccountSettingsRequest;
  v7 = [(MSDServerRequest *)&v23 parseResponseForError:v6 andPayload:a4];
  v8 = [v7 error];

  if (!v8)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MSDServerRequest *)self getName];
      v11 = [v7 data];
      *buf = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: data from server: %{public}@", buf, 0x16u);
    }

    v12 = [v7 data];
    if (v12 && (v13 = v12, [v7 data], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      v16 = [v7 data];
      v17 = [NSDictionary dictionaryFromJsonData:v16];

      if (!v17)
      {
        v18 = sub_100063A54();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = [(MSDServerRequest *)self getName];
          *buf = 138543362;
          v25 = v21;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: failed to convert data to dict", buf, 0xCu);
        }

        v22 = v6;
        sub_1000C1390(&v22, 3727744512, @"Unexpected server response.");
        v17 = v6;
        v6 = v22;
        goto LABEL_12;
      }
    }

    else
    {
      v17 = +[NSDictionary dictionary];
    }

    [v7 setAccountSettings:v17];
LABEL_12:
  }

  v19 = [v7 error];

  if (!v19)
  {
    [v7 setError:v6];
  }

  return v7;
}

@end