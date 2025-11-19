@interface DMDFetchStreamEventsOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchStreamEventsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchStreamEventsOperation;
  [(DMDFetchStreamEventsOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDTaskOperation *)self configurationEngine];

  if (v5)
  {
    v6 = [(DMDTaskOperation *)self configurationEngine];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000492C8;
    v7[3] = &unk_1000CF298;
    v7[4] = self;
    [v6 handleFetchStreamEvents:v4 completionHandler:v7];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDFetchStreamEventsOperation *)self endOperationWithError:v6];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___DMDFetchStreamEventsOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", v6, a4))
  {
    goto LABEL_10;
  }

  v7 = [v6 organizationIdentifier];
  v8 = [v7 length];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.organizationIdentifier";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_9;
  }

  v9 = [v6 startDate];

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.startDate";
    v10 = &v16;
    v11 = &v15;
LABEL_9:
    v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_10:
    LOBYTE(a4) = 0;
    goto LABEL_11;
  }

  LOBYTE(a4) = 1;
LABEL_11:

  return a4;
}

@end