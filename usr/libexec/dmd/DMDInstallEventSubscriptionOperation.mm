@interface DMDInstallEventSubscriptionOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDInstallEventSubscriptionOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallEventSubscriptionOperation;
  [(DMDInstallEventSubscriptionOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___DMDInstallEventSubscriptionOperation;
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

  v8 = [v6 subscriptionDeclaration];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.subscriptionDeclaration";
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

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDTaskOperation *)self configurationEngine];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004BEB0;
  v6[3] = &unk_1000CEE68;
  v6[4] = self;
  [v5 handleInstallSubscriptionRequest:v4 completionHandler:v6];
}

@end