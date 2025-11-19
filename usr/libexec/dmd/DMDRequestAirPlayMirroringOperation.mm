@interface DMDRequestAirPlayMirroringOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDRequestAirPlayMirroringOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRequestAirPlayMirroringOperation;
  [(DMDRequestAirPlayMirroringOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDAirPlayManager shared];
  v6 = [v4 destinationName];
  v7 = [v4 destinationDeviceID];
  v8 = [v4 password];
  [v4 scanWaitInterval];
  v10 = v9;
  v11 = [v4 force];

  v15 = 0;
  LOBYTE(v4) = [v5 startAirPlaySessionWithDestinationName:v6 destinationDeviceID:v7 password:v8 scanWaitTime:3 sessionType:v11 force:&v15 error:v10];
  v12 = v15;

  if (v4)
  {
    [(DMDRequestAirPlayMirroringOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    if (v12)
    {
      v16 = NSUnderlyingErrorKey;
      v17 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v14 = DMFErrorWithCodeAndUserInfo();
      [(DMDRequestAirPlayMirroringOperation *)self endOperationWithError:v14];
    }

    else
    {
      v13 = DMFErrorWithCodeAndUserInfo();
      [(DMDRequestAirPlayMirroringOperation *)self endOperationWithError:v13];
    }
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___DMDRequestAirPlayMirroringOperation;
  if (!objc_msgSendSuper2(&v11, "validateRequest:error:", v6, a4))
  {
    goto LABEL_8;
  }

  v7 = [v6 destinationName];
  if (!v7)
  {
    v8 = [v6 destinationDeviceID];

    if (v8)
    {
      goto LABEL_5;
    }

    if (a4)
    {
      DMFErrorWithCodeAndUserInfo();
      *a4 = v9 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v9 = 1;
LABEL_9:

  return v9;
}

@end