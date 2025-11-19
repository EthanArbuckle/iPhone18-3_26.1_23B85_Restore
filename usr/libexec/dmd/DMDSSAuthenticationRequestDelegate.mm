@interface DMDSSAuthenticationRequestDelegate
+ (id)delegateWithAuthenticationContext:(id)a3;
- (id)_storeLoginFailedError;
- (void)authenticateRequest:(id)a3 didReceiveResponse:(id)a4;
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation DMDSSAuthenticationRequestDelegate

+ (id)delegateWithAuthenticationContext:(id)a3
{
  v3 = a3;
  v4 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v3];

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

- (void)startWithCompletionBlock:(id)a3
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006EE54;
  v16[3] = &unk_1000CF4C8;
  v4 = a3;
  v17 = v4;
  v5 = objc_retainBlock(v16);
  v6 = +[MCProfileConnection sharedConnection];
  v7 = [v6 appWhitelistState];

  if (v7)
  {
    v8 = v7 == 6;
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

    v12 = [(DMDSSAuthenticationRequestDelegate *)self _storeLoginFailedError];
    (v5[2])(v5, v12, 0);
  }
}

- (void)authenticateRequest:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  if ([v5 authenticateResponseType] == 4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "User successfully logged into iTunes account.", v7, 2u);
    }

    v6 = [v5 authenticatedAccount];
    [(DMDSSAuthenticationRequestDelegate *)self setAuthenticatedAccount:v6];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100087640(v5);
  }
}

@end