@interface DMDEchoOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___DMDEchoOperation;
  if (!objc_msgSendSuper2(&v17, "validateRequest:error:", v6, a4))
  {
    goto LABEL_11;
  }

  v7 = [v6 echo];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v21 = DMFInvalidParameterErrorKey;
    v22 = @"request.echo";
    v13 = &v22;
    v14 = &v21;
    goto LABEL_10;
  }

  v8 = [v6 resultStatus];
  if (v8)
  {
    v9 = v8;
    v20[0] = DMFRMEchoStatusOK;
    v20[1] = DMFRMEchoStatusPending;
    v20[2] = DMFRMEchoStatusFail;
    v10 = [NSArray arrayWithObjects:v20 count:3];
    v11 = [v6 resultStatus];
    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_12;
      }

      v18 = DMFInvalidParameterErrorKey;
      v19 = @"request.resultStatus";
      v13 = &v19;
      v14 = &v18;
LABEL_10:
      v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
      *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_11:
      LOBYTE(a4) = 0;
      goto LABEL_12;
    }
  }

  LOBYTE(a4) = 1;
LABEL_12:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v10 = a3;
  v4 = [v10 resultStatus];
  if ([v4 isEqualToString:DMFRMEchoStatusOK])
  {

LABEL_4:
    v7 = objc_opt_new();
    v8 = [v10 echo];
    [v7 setEcho:v8];

    v9 = [v10 resultStatus];
    [v7 setResultStatus:v9];

    [(DMDEchoOperation *)self endOperationWithResultObject:v7];
    goto LABEL_6;
  }

  v5 = [v10 resultStatus];
  v6 = [v5 isEqualToString:DMFRMEchoStatusPending];

  if (v6)
  {
    goto LABEL_4;
  }

  [(DMDTaskOperation *)self endOperationWithDMFErrorCode:4];
LABEL_6:
}

@end