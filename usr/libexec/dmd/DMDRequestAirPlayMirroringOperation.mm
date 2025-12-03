@interface DMDRequestAirPlayMirroringOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDAirPlayManager shared];
  destinationName = [requestCopy destinationName];
  destinationDeviceID = [requestCopy destinationDeviceID];
  password = [requestCopy password];
  [requestCopy scanWaitInterval];
  v10 = v9;
  force = [requestCopy force];

  v15 = 0;
  LOBYTE(requestCopy) = [v5 startAirPlaySessionWithDestinationName:destinationName destinationDeviceID:destinationDeviceID password:password scanWaitTime:3 sessionType:force force:&v15 error:v10];
  v12 = v15;

  if (requestCopy)
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

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___DMDRequestAirPlayMirroringOperation;
  if (!objc_msgSendSuper2(&v11, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_8;
  }

  destinationName = [requestCopy destinationName];
  if (!destinationName)
  {
    destinationDeviceID = [requestCopy destinationDeviceID];

    if (destinationDeviceID)
    {
      goto LABEL_5;
    }

    if (error)
    {
      DMFErrorWithCodeAndUserInfo();
      *error = v9 = 0;
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