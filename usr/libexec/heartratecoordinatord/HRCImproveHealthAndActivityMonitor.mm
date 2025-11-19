@interface HRCImproveHealthAndActivityMonitor
- (HRCImproveHealthAndActivityMonitor)initWithAnalyticsReporter:(id)a3;
- (void)_check;
- (void)dealloc;
@end

@implementation HRCImproveHealthAndActivityMonitor

- (HRCImproveHealthAndActivityMonitor)initWithAnalyticsReporter:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = HRCImproveHealthAndActivityMonitor;
  v6 = [(HRCImproveHealthAndActivityMonitor *)&v22 init];
  objc_storeStrong(&v6->_analyticsReporter, a3);
  [(HRCAnalyticsReporter *)v6->_analyticsReporter setImproveHealthAndActivityAllowed:0];
  v7 = objc_opt_new();
  operationQueue = v6->_operationQueue;
  v6->_operationQueue = v7;

  v9 = [objc_opt_class() description];
  [(NSOperationQueue *)v6->_operationQueue setName:v9];

  [(NSOperationQueue *)v6->_operationQueue setQualityOfService:17];
  [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
  objc_initWeak(&location, v6);
  v10 = +[NSNotificationCenter defaultCenter];
  v11 = MCAllowHealthDataSubmissionChangedNotification;
  v12 = v6->_operationQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000063EC;
  v19[3] = &unk_1000407C8;
  objc_copyWeak(&v20, &location);
  v13 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v19];
  observer = v6->_observer;
  v6->_observer = v13;

  v15 = v6->_operationQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100006448;
  v17[3] = &unk_1000407A0;
  objc_copyWeak(&v18, &location);
  [(NSOperationQueue *)v15 addOperationWithBlock:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_check
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isHealthDataSubmissionAllowed];

  if (self->_allowed != v4)
  {
    self->_allowed = v4;
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HRCImproveHealthAndActivityMonitor enabled : %{public,BOOL}d", v6, 8u);
    }

    [(HRCAnalyticsReporter *)self->_analyticsReporter setImproveHealthAndActivityAllowed:v4];
  }
}

- (void)dealloc
{
  if (self->_observer)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_observer];
  }

  v4.receiver = self;
  v4.super_class = HRCImproveHealthAndActivityMonitor;
  [(HRCImproveHealthAndActivityMonitor *)&v4 dealloc];
}

@end