@interface DMDSSAuthenticationRequestDelegate
+ (id)delegateWithAuthenticationContext:(id)context;
- (id)_storeLoginFailedError;
- (void)authenticateRequest:(id)request didReceiveResponse:(id)response;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation DMDSSAuthenticationRequestDelegate

+ (id)delegateWithAuthenticationContext:(id)context
{
  contextCopy = context;
  v4 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:contextCopy];

  v5 = [(DMDSSRequestDelegate *)[DMDSSAuthenticationRequestDelegate alloc] initWithRequest:v4];

  return v5;
}

- (id)_storeLoginFailedError
{
  if (qword_1000FF2D8 != -1)
  {
    sub_10008762C();
  }

  v3 = qword_1000FF2D0;

  return v3;
}

- (void)startWithCompletionBlock:(id)block
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006EE54;
  v16[3] = &unk_1000CF4C8;
  blockCopy = block;
  v17 = blockCopy;
  v5 = objc_retainBlock(v16);
  v6 = +[MCProfileConnection sharedConnection];
  appWhitelistState = [v6 appWhitelistState];

  if (appWhitelistState)
  {
    v8 = appWhitelistState == 6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543362;
      v19 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@ starting user authentication.", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006EE6C;
    v14[3] = &unk_1000CEC08;
    v14[4] = self;
    v15 = v5;
    v13.receiver = self;
    v13.super_class = DMDSSAuthenticationRequestDelegate;
    [(DMDSSRequestDelegate *)&v13 startWithCompletionBlock:v14];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not prompting for iTunes account in limited apps mode.", buf, 2u);
    }

    _storeLoginFailedError = [(DMDSSAuthenticationRequestDelegate *)self _storeLoginFailedError];
    (v5[2])(v5, _storeLoginFailedError, 0);
  }
}

- (void)authenticateRequest:(id)request didReceiveResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy authenticateResponseType] == 4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "User successfully logged into iTunes account.", v7, 2u);
    }

    authenticatedAccount = [responseCopy authenticatedAccount];
    [(DMDSSAuthenticationRequestDelegate *)self setAuthenticatedAccount:authenticatedAccount];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100087640(responseCopy);
  }
}

@end