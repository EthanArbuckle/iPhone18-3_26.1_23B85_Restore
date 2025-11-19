@interface CCDEnrollmentRetrieveCloudConfigurationWithoutValidationOperation
- (id)responseWithResponseData:(id)a3 contentType:(id)a4 outError:(id *)a5;
@end

@implementation CCDEnrollmentRetrieveCloudConfigurationWithoutValidationOperation

- (id)responseWithResponseData:(id)a3 contentType:(id)a4 outError:(id *)a5
{
  v6 = a3;
  if ([a4 containsString:@"text/plain"])
  {
    v7 = [CCDError cloudConfigErrorInResponse:v6];
    v8 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Got 200 response with error: %@", buf, 0xCu);
    }

    v16 = @"Response";
    v17 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v10 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = v10;
      v12 = [[NSString alloc] initWithData:v6 encoding:4];
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Enrollment Response: %{public}@", buf, 0xCu);
    }

    v15 = 0;
    v9 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v15];
    v7 = v15;
    if (v7)
    {
      v13 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
      }
    }
  }

  return v9;
}

@end