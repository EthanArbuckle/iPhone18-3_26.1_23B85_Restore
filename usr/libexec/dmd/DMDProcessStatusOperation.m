@interface DMDProcessStatusOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDProcessStatusOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDProcessStatusOperation;
  [(DMDProcessStatusOperation *)&v2 waitUntilFinished];
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
    v7 = [v4 organizationIdentifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100067334;
    v8[3] = &unk_1000CEE68;
    v8[4] = self;
    [v6 processStatusForOrganizationWithIdentifier:v7 completionHandler:v8];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDProcessStatusOperation *)self endOperationWithError:v6];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___DMDProcessStatusOperation;
  return objc_msgSendSuper2(&v5, "validateRequest:error:", a3, a4);
}

@end