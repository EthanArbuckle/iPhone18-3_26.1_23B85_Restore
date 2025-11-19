@interface DMDUpdateDeclarationsOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDUpdateDeclarationsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDUpdateDeclarationsOperation;
  [(DMDUpdateDeclarationsOperation *)&v2 waitUntilFinished];
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
    v7[2] = sub_100075EE8;
    v7[3] = &unk_1000CEE68;
    v7[4] = self;
    [v6 handleUpdateDeclarationsRequest:v4 completionHandler:v7];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDUpdateDeclarationsOperation *)self endOperationWithError:v6];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___DMDUpdateDeclarationsOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", v6, a4))
  {
    goto LABEL_10;
  }

  v7 = [v6 organizationIdentifier];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v16 = DMFInvalidParameterErrorKey;
    v17 = @"request.organizationIdentifier";
    v9 = &v17;
    v10 = &v16;
    goto LABEL_9;
  }

  v8 = [v6 syncToken];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.syncToken";
    v9 = &v15;
    v10 = &v14;
LABEL_9:
    v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
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