@interface APMescalSigningRouter
- (APMescalSigningRouter)initWithAMSProvider:(BOOL)provider;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion;
@end

@implementation APMescalSigningRouter

- (APMescalSigningRouter)initWithAMSProvider:(BOOL)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = APMescalSigningRouter;
  v4 = [(APMescalSigningRouter *)&v9 init];
  if (v4)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 138477827;
      v11 = v6;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] Initializing listener for MescalSigning", buf, 0xCu);
    }

    [APMescalSigningService createServiceWithAMSProvider:providerCopy];
    [APXPCListenerManager addDelegate:v4];
  }

  return v4;
}

- (void)signatureForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v7 = +[APMescalSigningService service];
  v11 = 0;
  v8 = [v7 signatureForData:dataCopy error:&v11];

  v9 = v11;
  if (v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "signatureForData returned an error: %{public}@.", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v9);
  }
}

- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v9 = +[APMescalSigningService service];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100322D08;
  v11[3] = &unk_10047E240;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 signatureForData:dataCopy waitTime:v11 completion:time];
}

- (void)connectionInterrupted
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection to client for MescalSigning was interrupted.", v3, 2u);
  }
}

- (void)connectionInvalidated
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to client for MescalSigning was invalidated.", v3, 2u);
  }
}

@end