@interface CCDDeviceUploadRetrieveRequestTypesOperation
- (id)responseWithResponseData:(id)data contentType:(id)type statusCode:(int64_t)code retryNeeded:(BOOL *)needed outError:(id *)error;
@end

@implementation CCDDeviceUploadRetrieveRequestTypesOperation

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
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Response: %{public}@", &v15, 0xCu);
    }

    v13 = [NSJSONSerialization JSONObjectWithData:dataCopy options:1 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end