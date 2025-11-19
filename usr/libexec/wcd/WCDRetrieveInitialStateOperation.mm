@interface WCDRetrieveInitialStateOperation
- (WCDOperationDelegate)delegate;
- (WCDRetrieveInitialStateOperation)initWithDelegate:(id)a3;
- (void)main;
@end

@implementation WCDRetrieveInitialStateOperation

- (WCDRetrieveInitialStateOperation)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WCDRetrieveInitialStateOperation;
  v5 = [(WCDRetrieveInitialStateOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_opt_new();
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v7;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v6->_operationQueue setQualityOfService:17];
  }

  return v6;
}

- (void)main
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136446210;
    v31 = "[WCDRetrieveInitialStateOperation main]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v30, 0xCu);
  }

  v4 = [WCDRetrievePairedListOperation alloc];
  v5 = [(WCDRetrieveInitialStateOperation *)self delegate];
  v6 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
  v7 = [(WCDAsyncOperation *)v4 initWithDelegate:v5 queue:v6];

  v8 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
  [v8 addOperation:v7];

  v9 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
  [v9 waitUntilAllOperationsAreFinished];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = [v10 UTF8String];
    v30 = 136315138;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "pairedListOperation: %s", &v30, 0xCu);
  }

  if ([(WCDRetrievePairedListOperation *)v7 paired])
  {
    v12 = [WCDRetrieveActiveComplicationsOperation alloc];
    v13 = [(WCDRetrieveInitialStateOperation *)self delegate];
    v14 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    v15 = [(WCDAsyncOperation *)v12 initWithDelegate:v13 queue:v14];

    v16 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    [v16 addOperation:v15];

    v17 = [WCDRetrieveInstalledAppsListOperation alloc];
    v18 = [(WCDRetrieveInitialStateOperation *)self delegate];
    v19 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    v20 = [(WCDAsyncOperation *)v17 initWithDelegate:v18 queue:v19];

    v21 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    [v21 addOperation:v20];

    v22 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    [v22 waitUntilAllOperationsAreFinished];
  }

  else
  {
    v20 = 0;
    v15 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [objc_opt_class() description];
    v24 = [v23 UTF8String];
    v30 = 136315138;
    v31 = v24;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "pairedListOperation2: %s", &v30, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [objc_opt_class() description];
    v26 = [v25 UTF8String];
    v30 = 136315138;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "activeComplicationsOperation: %s", &v30, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [objc_opt_class() description];
    v28 = [v27 UTF8String];
    v30 = 136315138;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "installedAppsListOperation: %s", &v30, 0xCu);
  }

  v29 = [(WCDAsyncOperation *)v7 failed]|| [(WCDAsyncOperation *)v15 failed]|| [(WCDAsyncOperation *)v20 failed];
  [(WCDRetrieveInitialStateOperation *)self setFailed:v29];
}

- (WCDOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end