@interface CCDDeviceUploadRetrieveSoldToIdsOperation
- (id)responseWithResponseData:(id)a3 contentType:(id)a4 statusCode:(int64_t)a5 retryNeeded:(BOOL *)a6 outError:(id *)a7;
@end

@implementation CCDDeviceUploadRetrieveSoldToIdsOperation

- (id)responseWithResponseData:(id)a3 contentType:(id)a4 statusCode:(int64_t)a5 retryNeeded:(BOOL *)a6 outError:(id *)a7
{
  v9 = a3;
  *a6 = 0;
  if (v9)
  {
    v10 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [[NSString alloc] initWithData:v9 encoding:4];
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Response: %{public}@", &v17, 0xCu);
    }

    v13 = [NSJSONSerialization JSONObjectWithData:v9 options:1 error:a7];
    if (v13)
    {
      v14 = objc_opt_new();
      [v14 setObject:v13 forKeyedSubscript:kDEPDeviceUploadSoldToIdsKey];
      v15 = [v14 copy];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end