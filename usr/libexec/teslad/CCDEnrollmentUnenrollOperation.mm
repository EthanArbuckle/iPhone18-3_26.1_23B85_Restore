@interface CCDEnrollmentUnenrollOperation
- (id)errorForStatusCode:(int64_t)code responseData:(id)data;
@end

@implementation CCDEnrollmentUnenrollOperation

- (id)errorForStatusCode:(int64_t)code responseData:(id)data
{
  dataCopy = data;
  if (code == 401)
  {
    v6 = [CCDError cloudConfigErrorInResponse:dataCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [CCDError internalErrorWithCode:34000];
    }

    v9 = v8;
  }

  else
  {
    if (code == 400)
    {
      [CCDError cloudConfigErrorInResponse:dataCopy];
    }

    else
    {
      +[CCDError teslaServiceDownError];
    }
    v9 = ;
  }

  return v9;
}

@end