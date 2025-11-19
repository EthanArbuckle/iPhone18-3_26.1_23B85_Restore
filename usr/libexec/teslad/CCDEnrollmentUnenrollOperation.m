@interface CCDEnrollmentUnenrollOperation
- (id)errorForStatusCode:(int64_t)a3 responseData:(id)a4;
@end

@implementation CCDEnrollmentUnenrollOperation

- (id)errorForStatusCode:(int64_t)a3 responseData:(id)a4
{
  v5 = a4;
  if (a3 == 401)
  {
    v6 = [CCDError cloudConfigErrorInResponse:v5];
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
    if (a3 == 400)
    {
      [CCDError cloudConfigErrorInResponse:v5];
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