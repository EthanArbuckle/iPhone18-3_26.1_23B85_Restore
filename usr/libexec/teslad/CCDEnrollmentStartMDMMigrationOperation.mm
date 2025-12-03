@interface CCDEnrollmentStartMDMMigrationOperation
- (id)errorForStatusCode:(int64_t)code responseData:(id)data;
- (id)responseWithResponseData:(id)data contentType:(id)type outError:(id *)error;
@end

@implementation CCDEnrollmentStartMDMMigrationOperation

- (id)errorForStatusCode:(int64_t)code responseData:(id)data
{
  if ((code & 0xFFFFFFFFFFFFFFFELL) == 0x190)
  {
    v4 = [CCDError cloudConfigErrorInResponse:data];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [CCDError internalErrorWithCode:34000];
    }

    v7 = v6;
  }

  else
  {
    v7 = +[CCDError teslaServiceDownError];
  }

  return v7;
}

- (id)responseWithResponseData:(id)data contentType:(id)type outError:(id *)error
{
  error = [NSDictionary dmc_jsonDictionaryFromData:data, type, error];
  v6 = [error mutableCopy];

  v7 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start MDM Migration Response: %{public}@", &v9, 0xCu);
  }

  return v6;
}

@end