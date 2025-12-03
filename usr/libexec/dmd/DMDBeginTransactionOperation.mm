@interface DMDBeginTransactionOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)UUIDsToTransactions;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDBeginTransactionOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDBeginTransactionOperation;
  [(DMDBeginTransactionOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDBeginTransactionOperation;
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

- (void)runWithRequest:(id)request
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007E184();
  }

  v4 = objc_opt_new();
  v5 = [[DMFBeginTransactionResultObject alloc] initWithUUID:v4];
  [(DMDBeginTransactionOperation *)self endOperationWithResultObject:v5];
}

+ (id)UUIDsToTransactions
{
  if (qword_1000FEFC8 != -1)
  {
    sub_10007E1CC();
  }

  v3 = qword_1000FEFC0;

  return v3;
}

@end