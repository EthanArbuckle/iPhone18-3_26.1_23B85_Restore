@interface DMDSendEventOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDTaskOperation *)self configurationEngine];

  if (v5)
  {
    v6 = [DMDEventStreamEvent alloc];
    v7 = [v4 eventType];
    v8 = [v4 details];
    v9 = [(DMDEventStreamEvent *)v6 initWithEventType:v7 details:v8];

    v10 = [v4 inReplyTo];
    v11 = [(DMDEventStreamEvent *)v9 eventStatusMessageWithPayloadIdentifier:v10];

    v12 = [(DMDTaskOperation *)self configurationEngine];
    v16 = v11;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    v14 = [v4 organizationIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006BCD0;
    v15[3] = &unk_1000CEE68;
    v15[4] = self;
    [v12 sendEvents:v13 organizationIdentifier:v14 completionHandler:v15];
  }

  else
  {
    v9 = DMFErrorWithCodeAndUserInfo();
    [(DMDSendEventOperation *)self endOperationWithError:v9];
  }
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___DMDSendEventOperation;
  if (!objc_msgSendSuper2(&v14, "validateRequest:error:", v6, a4))
  {
    goto LABEL_13;
  }

  v7 = [v6 organizationIdentifier];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v19 = DMFInvalidParameterErrorKey;
    v20 = @"request.organizationIdentifier";
    v10 = &v20;
    v11 = &v19;
    goto LABEL_12;
  }

  v8 = [v6 inReplyTo];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v17 = DMFInvalidParameterErrorKey;
    v18 = @"request.inRepyTo";
    v10 = &v18;
    v11 = &v17;
    goto LABEL_12;
  }

  v9 = [v6 eventType];

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v15 = DMFInvalidParameterErrorKey;
    v16 = @"request.eventType";
    v10 = &v16;
    v11 = &v15;
LABEL_12:
    v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_13:
    LOBYTE(a4) = 0;
    goto LABEL_14;
  }

  LOBYTE(a4) = 1;
LABEL_14:

  return a4;
}

@end