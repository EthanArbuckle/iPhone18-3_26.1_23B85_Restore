@interface CCDEnrollmentEndMDMMigrationOperation
- (id)errorForStatusCode:(int64_t)a3 responseData:(id)a4;
- (id)responseWithResponseData:(id)a3 contentType:(id)a4 outError:(id *)a5;
@end

@implementation CCDEnrollmentEndMDMMigrationOperation

- (id)errorForStatusCode:(int64_t)a3 responseData:(id)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x190)
  {
    v4 = [CCDError cloudConfigErrorInResponse:a4];
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

- (id)responseWithResponseData:(id)a3 contentType:(id)a4 outError:(id *)a5
{
  v5 = [NSDictionary dmc_jsonDictionaryFromData:a3, a4, a5];
  v6 = [v5 mutableCopy];

  v7 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "End MDM Migration Response: %{public}@", &v9, 0xCu);
  }

  return v6;
}

@end