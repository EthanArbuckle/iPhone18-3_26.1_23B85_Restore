@interface MSDPingRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
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

  requestInfo = [(MSDPingRequest *)self requestInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestInfo2 = [(MSDPingRequest *)self requestInfo];
    v5 = [requestInfo2 objectForKey:@"UniqueDeviceID"];
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
  requestInfo = [(MSDPingRequest *)self requestInfo];
  convertToNSData = [requestInfo convertToNSData];

  if (!convertToNSData)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Falling back to minimal request info dictionary.", v9, 2u);
    }

    v6 = +[MSDTargetDevice sharedInstance];
    udid = [v6 udid];
    [v4 setObject:udid forKey:@"UniqueDeviceID"];

    [v4 setObject:&off_10017B290 forKey:@"InternalStatus"];
    convertToNSData = [v4 convertToNSData];
  }

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v18.receiver = self;
  v18.super_class = MSDPingRequest;
  v8 = [(MSDServerRequest *)&v18 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (!error)
  {
    v10 = [payloadCopy objectForKey:@"statusCode"];
    [v8 setStatusCode:v10];

    statusCode = [v8 statusCode];

    if (!statusCode)
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        getName = [(MSDServerRequest *)self getName];
        *buf = 138543618;
        v20 = getName;
        v21 = 2114;
        v22 = @"statusCode";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ response payload does not contain: %{public}@", buf, 0x16u);
      }

      v17 = errorCopy;
      sub_1000C1424(&v17, 3727744512, @"Unexpected server response.");
      v15 = v17;

      errorCopy = v15;
    }
  }

  error2 = [v8 error];

  if (!error2)
  {
    [v8 setError:errorCopy];
  }

  return v8;
}

@end