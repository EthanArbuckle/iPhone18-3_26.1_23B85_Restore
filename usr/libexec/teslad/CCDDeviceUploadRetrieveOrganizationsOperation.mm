@interface CCDDeviceUploadRetrieveOrganizationsOperation
- (id)responseWithResponseData:(id)data contentType:(id)type statusCode:(int64_t)code retryNeeded:(BOOL *)needed outError:(id *)error;
@end

@implementation CCDDeviceUploadRetrieveOrganizationsOperation

- (id)responseWithResponseData:(id)data contentType:(id)type statusCode:(int64_t)code retryNeeded:(BOOL *)needed outError:(id *)error
{
  dataCopy = data;
  *needed = 0;
  if (dataCopy)
  {
    v10 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [[NSString alloc] initWithData:dataCopy encoding:4];
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Response: %{public}@", &v17, 0xCu);
    }

    v13 = [NSJSONSerialization JSONObjectWithData:dataCopy options:1 error:error];
    if (v13)
    {
      v14 = objc_opt_new();
      [v14 setObject:v13 forKeyedSubscript:kDEPDeviceUploadOrganizationsKey];
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