@interface DMDSendEventOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDSendEventOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSendEventOperation;
  [(DMDSendEventOperation *)&v2 waitUntilFinished];
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
    v6 = [DMDEventStreamEvent alloc];
    eventType = [requestCopy eventType];
    details = [requestCopy details];
    v9 = [(DMDEventStreamEvent *)v6 initWithEventType:eventType details:details];

    inReplyTo = [requestCopy inReplyTo];
    v11 = [(DMDEventStreamEvent *)v9 eventStatusMessageWithPayloadIdentifier:inReplyTo];

    configurationEngine2 = [(DMDTaskOperation *)self configurationEngine];
    v16 = v11;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    organizationIdentifier = [requestCopy organizationIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006BCD0;
    v15[3] = &unk_1000CEE68;
    v15[4] = self;
    [configurationEngine2 sendEvents:v13 organizationIdentifier:organizationIdentifier completionHandler:v15];
  }

  else
  {
    v9 = DMFErrorWithCodeAndUserInfo();
    [(DMDSendEventOperation *)self endOperationWithError:v9];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DMDSendEventOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_13;
  }

  organizationIdentifier = [requestCopy organizationIdentifier];

  if (!organizationIdentifier)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v19 = DMFInvalidParameterErrorKey;
    v20 = @"request.organizationIdentifier";
    v10 = &v20;
    v11 = &v19;
    goto LABEL_12;
  }

  inReplyTo = [requestCopy inReplyTo];

  if (!inReplyTo)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.inRepyTo";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_12;
  }

  eventType = [requestCopy eventType];

  if (!eventType)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.eventType";
    v10 = &v16;
    v11 = &v15;
LABEL_12:
    v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_13:
    LOBYTE(error) = 0;
    goto LABEL_14;
  }

  LOBYTE(error) = 1;
LABEL_14:

  return error;
}

@end