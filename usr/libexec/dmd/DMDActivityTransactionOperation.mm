@interface DMDActivityTransactionOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)cancel;
- (void)endOperationIfNeeded;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDActivityTransactionOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDActivityTransactionOperation;
  [(DMDActivityTransactionOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___DMDActivityTransactionOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", v6, a4))
  {
    goto LABEL_6;
  }

  v7 = [v6 name];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.name";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  LOBYTE(a4) = 1;
LABEL_7:

  return a4;
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

- (void)runWithRequest:(id)a3
{
  v6 = [a3 name];
  v4 = v6;
  [v6 UTF8String];
  v5 = os_transaction_create();
  [(DMDActivityTransactionOperation *)self setTransaction:v5];
}

@end