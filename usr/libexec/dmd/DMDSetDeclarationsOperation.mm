@interface DMDSetDeclarationsOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDSetDeclarationsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetDeclarationsOperation;
  [(DMDSetDeclarationsOperation *)&v2 waitUntilFinished];
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
    objc_initWeak(&location, self);
    v6 = [(DMDTaskOperation *)self configurationEngine];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006D16C;
    v8[3] = &unk_1000CFE28;
    objc_copyWeak(&v9, &location);
    [v6 handleSetDeclarationsRequest:v4 completionHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    [(DMDSetDeclarationsOperation *)self endOperationWithError:v7];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___DMDSetDeclarationsOperation;
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