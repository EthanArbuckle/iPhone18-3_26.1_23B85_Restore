@interface DMDStopAirPlayMirroringOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDStopAirPlayMirroringOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDStopAirPlayMirroringOperation;
  [(DMDStopAirPlayMirroringOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = +[DMDAirPlayManager shared];
  v9 = 0;
  v5 = [v4 stopAirPlaySessionOfType:3 error:&v9];
  v6 = v9;

  if (v5)
  {
    [(DMDStopAirPlayMirroringOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    if (v6)
    {
      v10 = NSUnderlyingErrorKey;
      v11 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v8 = DMFErrorWithCodeAndUserInfo();
      [(DMDStopAirPlayMirroringOperation *)self endOperationWithError:v8];
    }

    else
    {
      v7 = DMFErrorWithCodeAndUserInfo();
      [(DMDStopAirPlayMirroringOperation *)self endOperationWithError:v7];
    }
  }
}

@end