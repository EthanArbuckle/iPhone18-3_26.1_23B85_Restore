@interface DMDFetchConfigurationSourceSyncTokenOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchConfigurationSourceSyncTokenOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchConfigurationSourceSyncTokenOperation;
  [(DMDFetchConfigurationSourceSyncTokenOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = objc_opt_new();
  [(DMDFetchConfigurationSourceSyncTokenOperation *)self endOperationWithResultObject:v4];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDFetchConfigurationSourceSyncTokenOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  configurationSource = [requestCopy configurationSource];

  if (!configurationSource)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.configurationSource";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

@end