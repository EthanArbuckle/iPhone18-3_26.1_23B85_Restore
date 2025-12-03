@interface DMDEchoOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDEchoOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDEchoOperation;
  [(DMDEchoOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___DMDEchoOperation;
  if (!objc_msgSendSuper2(&v17, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_11;
  }

  echo = [requestCopy echo];

  if (!echo)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v21 = DMFInvalidParameterErrorKey;
    v22 = @"request.echo";
    v13 = &v22;
    v14 = &v21;
    goto LABEL_10;
  }

  resultStatus = [requestCopy resultStatus];
  if (resultStatus)
  {
    v9 = resultStatus;
    v20[0] = DMFRMEchoStatusOK;
    v20[1] = DMFRMEchoStatusPending;
    v20[2] = DMFRMEchoStatusFail;
    v10 = [NSArray arrayWithObjects:v20 count:3];
    resultStatus2 = [requestCopy resultStatus];
    v12 = [v10 containsObject:resultStatus2];

    if ((v12 & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_12;
      }

      v18 = DMFInvalidParameterErrorKey;
      v19 = @"request.resultStatus";
      v13 = &v19;
      v14 = &v18;
LABEL_10:
      v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
      *error = DMFErrorWithCodeAndUserInfo();

LABEL_11:
      LOBYTE(error) = 0;
      goto LABEL_12;
    }
  }

  LOBYTE(error) = 1;
LABEL_12:

  return error;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  resultStatus = [requestCopy resultStatus];
  if ([resultStatus isEqualToString:DMFRMEchoStatusOK])
  {

LABEL_4:
    v7 = objc_opt_new();
    echo = [requestCopy echo];
    [v7 setEcho:echo];

    resultStatus2 = [requestCopy resultStatus];
    [v7 setResultStatus:resultStatus2];

    [(DMDEchoOperation *)self endOperationWithResultObject:v7];
    goto LABEL_6;
  }

  resultStatus3 = [requestCopy resultStatus];
  v6 = [resultStatus3 isEqualToString:DMFRMEchoStatusPending];

  if (v6)
  {
    goto LABEL_4;
  }

  [(DMDTaskOperation *)self endOperationWithDMFErrorCode:4];
LABEL_6:
}

@end