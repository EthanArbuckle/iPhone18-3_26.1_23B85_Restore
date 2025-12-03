@interface DMDRemoveProfileOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveProfileOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveProfileOperation;
  [(DMDRemoveProfileOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDRemoveProfileOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  profileIdentifier = [requestCopy profileIdentifier];

  if (!profileIdentifier)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.profileIdentifier";
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

- (void)runWithRequest:(id)request
{
  profileIdentifier = [request profileIdentifier];
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 installedProfileWithIdentifier:profileIdentifier];

  if (v6)
  {
    context = [(DMDTaskOperation *)self context];
    if ([context runAsUser])
    {
    }

    else
    {
      request = [(DMDRemoveProfileOperation *)self request];
      type = [request type];

      if (type != 1)
      {
        v12 = 1;
        goto LABEL_8;
      }
    }

    v12 = 2;
LABEL_8:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006AABC;
    v13[3] = &unk_1000CEE68;
    v13[4] = self;
    [(DMDRemoveProfileOperation *)self removeProfileWithIdentifier:profileIdentifier installationType:v12 completion:v13];
    goto LABEL_9;
  }

  v14 = DMFProfileIdentifierErrorKey;
  v15 = profileIdentifier;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = DMFErrorWithCodeAndUserInfo();
  [(DMDRemoveProfileOperation *)self endOperationWithError:v9];

LABEL_9:
}

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = +[MCProfileConnection sharedConnection];
  [v9 removeProfileAsyncWithIdentifier:identifierCopy installationType:type completion:completionCopy];
}

@end