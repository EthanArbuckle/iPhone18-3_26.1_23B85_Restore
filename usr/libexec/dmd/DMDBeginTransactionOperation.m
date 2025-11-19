@interface DMDBeginTransactionOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)UUIDsToTransactions;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDBeginTransactionOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDBeginTransactionOperation;
  [(DMDBeginTransactionOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___DMDBeginTransactionOperation;
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

- (void)runWithRequest:(id)a3
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