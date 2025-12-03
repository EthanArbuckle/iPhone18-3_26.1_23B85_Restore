@interface DMDTaskOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
- (DMDTaskOperation)initWithRequest:(id)request;
- (void)dealloc;
- (void)endOperationWithDMFErrorCode:(int64_t)code;
- (void)main;
- (void)operationDidFinish;
- (void)operationWillFinish;
- (void)operationWillStart;
@end

@implementation DMDTaskOperation

- (void)dealloc
{
  v3 = self->_transaction;
  v4 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_4;
  block[3] = &unk_1000CE5A0;
  v8 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);

  v6.receiver = self;
  v6.super_class = DMDTaskOperation;
  [(DMDTaskOperation *)&v6 dealloc];
}

- (DMDTaskOperation)initWithRequest:(id)request
{
  v8.receiver = self;
  v8.super_class = DMDTaskOperation;
  v3 = [(DMDTaskOperation *)&v8 initWithRequest:request];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"%p", v3];
    [v4 UTF8String];
    v5 = os_transaction_create();
    transaction = v3->_transaction;
    v3->_transaction = v5;
  }

  return v3;
}

- (void)operationWillStart
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Operation will start: %{public}@", buf, 0xCu);
  }

  v3.receiver = self;
  v3.super_class = DMDTaskOperation;
  [(DMDTaskOperation *)&v3 operationWillStart];
}

- (void)operationWillFinish
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Operation will finish: %{public}@", buf, 0xCu);
  }

  v3.receiver = self;
  v3.super_class = DMDTaskOperation;
  [(DMDTaskOperation *)&v3 operationWillFinish];
  [(DMDTaskOperation *)self setTransaction:0];
}

- (void)operationDidFinish
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100087A40(self);
  }

  v3.receiver = self;
  v3.super_class = DMDTaskOperation;
  [(DMDTaskOperation *)&v3 operationDidFinish];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___DMDTaskOperation;
  if (!objc_msgSendSuper2(&v11, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  whitelistedClassesForRequest = [self whitelistedClassesForRequest];
  v8 = [whitelistedClassesForRequest containsObject:objc_opt_class()];

  if ((v8 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v12 = DMFInvalidParameterErrorKey;
    v13 = @"request";
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

- (void)main
{
  if ([(DMDTaskOperation *)self runOnMainThread]&& !+[NSThread isMainThread])
  {
    v4 = [(DMDTaskOperation *)self isAsynchronous]^ 1;

    [(DMDTaskOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:v4];
  }

  else
  {
    request = [(DMDTaskOperation *)self request];
    [(DMDTaskOperation *)self runWithRequest:request];
  }
}

- (void)endOperationWithDMFErrorCode:(int64_t)code
{
  v4 = DMFErrorWithCodeAndUserInfo();
  [(DMDTaskOperation *)self endOperationWithError:v4];
}

@end