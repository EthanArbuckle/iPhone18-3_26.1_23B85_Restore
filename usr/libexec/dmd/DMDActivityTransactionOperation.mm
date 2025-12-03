@interface DMDActivityTransactionOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)cancel;
- (void)endOperationIfNeeded;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDActivityTransactionOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDActivityTransactionOperation;
  [(DMDActivityTransactionOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDActivityTransactionOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  name = [requestCopy name];

  if (!name)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.name";
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

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = DMDActivityTransactionOperation;
  [(DMDActivityTransactionOperation *)&v3 cancel];
  [(DMDActivityTransactionOperation *)self performSelectorOnMainThread:"endOperationIfNeeded" withObject:0 waitUntilDone:0];
}

- (void)endOperationIfNeeded
{
  if ([(DMDActivityTransactionOperation *)self isExecuting])
  {

    [(DMDActivityTransactionOperation *)self endOperationWithResultObject:0];
  }
}

- (void)runWithRequest:(id)request
{
  name = [request name];
  v4 = name;
  [name UTF8String];
  v5 = os_transaction_create();
  [(DMDActivityTransactionOperation *)self setTransaction:v5];
}

@end