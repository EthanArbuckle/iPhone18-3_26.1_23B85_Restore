@interface FMDALFailureAnalyticsManager
- (FMDALFailureAnalyticsManager)initWithProvider:(id)a3 context:(id)a4;
- (void)dispatchAnalytics:(id)a3;
- (void)performAnalytics:(id)a3;
@end

@implementation FMDALFailureAnalyticsManager

- (FMDALFailureAnalyticsManager)initWithProvider:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_provider, a3);
    objc_storeStrong(&self->_context, a4);
    v9 = dispatch_queue_create("FMDALFailureAnalytics.serialQueue", 0);
    [(FMDALFailureAnalyticsManager *)self setSerialQueue:v9];
  }

  return self;
}

- (void)performAnalytics:(id)a3
{
  v4 = a3;
  v5 = [(FMDALFailureAnalyticsManager *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013116C;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)dispatchAnalytics:(id)a3
{
  v4 = a3;
  provider = self->_provider;
  if (provider)
  {
    v6 = [(FMDServiceProvider *)provider account];

    if (v6)
    {
      v7 = [FMDActivationLockFailureAnalytics alloc];
      v8 = [(FMDServiceProvider *)self->_provider account];
      v9 = [(FMDActivationLockFailureAnalytics *)v7 initWithAccountAndError:v8 error:v4];

      v10 = +[ServerDeviceInfo sharedInstance];
      v11 = [(FMDServiceProvider *)self->_provider account];
      v12 = [v10 deviceInfoForAccount:v11];

      v13 = [FMDActingRequestDecorator alloc];
      v22 = self;
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100131474;
      v26 = &unk_1002CD580;
      v27 = v12;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10013147C;
      v21 = &unk_1002CD580;
      v14 = v12;
      v15 = [(FMDActingRequestDecorator *)v13 initWithDeviceContextGenerator:&stru_1002CD558 deviceInfoGenerator:&v23 serverContextGenerator:0 requestHeaderGenerator:&v18];
      [v9 setDecorator:v15, v18, v19, v20, v21, v22, v23, v24, v25, v26];
      [v9 setCompletionHandler:&stru_1002CD5C0];
      v16 = sub_10017DDA4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v9 fm_logID];
        *buf = 138412290;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@:     request to disable locations.", buf, 0xCu);
      }

      [(FMDServiceProvider *)self->_provider enqueueRequest:v9];
    }

    else
    {
      v9 = sub_10017DDA4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100226074(v9);
      }
    }
  }

  else
  {
    v9 = sub_10017DDA4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1002260B8(v9);
    }
  }
}

@end