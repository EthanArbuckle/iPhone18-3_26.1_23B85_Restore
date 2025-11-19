@interface DMDFetchOrganizationsOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchOrganizationsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchOrganizationsOperation;
  [(DMDFetchOrganizationsOperation *)&v2 waitUntilFinished];
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
    v7[2] = sub_100047440;
    v7[3] = &unk_1000CF270;
    v7[4] = self;
    [v6 handleFetchConfigurationOrganizationsRequest:v4 completionHandler:v7];
  }

  else
  {
    v6 = DMFErrorWithCodeAndUserInfo();
    [(DMDFetchOrganizationsOperation *)self endOperationWithError:v6];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___DMDFetchOrganizationsOperation;
  return objc_msgSendSuper2(&v5, "validateRequest:error:", a3, a4);
}

@end