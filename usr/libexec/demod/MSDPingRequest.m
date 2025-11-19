@interface MSDPingRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)a3 andPayload:(id)a4;
@end

@implementation MSDPingRequest

- (BOOL)isValid
{
  v8.receiver = self;
  v8.super_class = MSDPingRequest;
  if (![(MSDCommandServerRequest *)&v8 isValid])
  {
    return 0;
  }

  v3 = [(MSDPingRequest *)self requestInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MSDPingRequest *)self requestInfo];
    v5 = [v4 objectForKey:@"UniqueDeviceID"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPostData
{
  v2 = [(MSDPingRequest *)self requestInfo];
  v3 = [v2 convertToNSData];

  if (!v3)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Falling back to minimal request info dictionary.", v9, 2u);
    }

    v6 = +[MSDTargetDevice sharedInstance];
    v7 = [v6 udid];
    [v4 setObject:v7 forKey:@"UniqueDeviceID"];

    [v4 setObject:&off_10017B290 forKey:@"InternalStatus"];
    v3 = [v4 convertToNSData];
  }

  return v3;
}

- (id)parseResponseForError:(id)a3 andPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MSDPingRequest;
  v8 = [(MSDServerRequest *)&v18 parseResponseForError:v6 andPayload:v7];
  v9 = [v8 error];

  if (!v9)
  {
    v10 = [v7 objectForKey:@"statusCode"];
    [v8 setStatusCode:v10];

    v11 = [v8 statusCode];

    if (!v11)
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [(MSDServerRequest *)self getName];
        *buf = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = @"statusCode";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ response payload does not contain: %{public}@", buf, 0x16u);
      }

      v17 = v6;
      sub_1000C1424(&v17, 3727744512, @"Unexpected server response.");
      v15 = v17;

      v6 = v15;
    }
  }

  v12 = [v8 error];

  if (!v12)
  {
    [v8 setError:v6];
  }

  return v8;
}

@end