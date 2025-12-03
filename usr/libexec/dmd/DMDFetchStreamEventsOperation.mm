@interface DMDFetchStreamEventsOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
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

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  configurationEngine = [(DMDTaskOperation *)self configurationEngine];

  if (configurationEngine)
  {
    configurationEngine2 = [(DMDTaskOperation *)self configurationEngine];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000492C8;
    v7[3] = &unk_1000CF298;
    v7[4] = self;
    [configurationEngine2 handleFetchStreamEvents:requestCopy completionHandler:v7];
  }

  else
  {
    configurationEngine2 = DMFErrorWithCodeAndUserInfo();
    [(DMDFetchStreamEventsOperation *)self endOperationWithError:configurationEngine2];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DMDFetchStreamEventsOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_10;
  }

  organizationIdentifier = [requestCopy organizationIdentifier];
  v8 = [organizationIdentifier length];

  if (!v8)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.organizationIdentifier";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_9;
  }

  startDate = [requestCopy startDate];

  if (!startDate)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.startDate";
    v10 = &v16;
    v11 = &v15;
LABEL_9:
    v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_10:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  LOBYTE(error) = 1;
LABEL_11:

  return error;
}

@end