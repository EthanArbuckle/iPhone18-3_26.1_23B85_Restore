@interface WCDRetrieveInitialStateOperation
- (WCDOperationDelegate)delegate;
- (WCDRetrieveInitialStateOperation)initWithDelegate:(id)delegate;
- (void)main;
@end

@implementation WCDRetrieveInitialStateOperation

- (WCDRetrieveInitialStateOperation)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WCDRetrieveInitialStateOperation;
  v5 = [(WCDRetrieveInitialStateOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
  delegate = [(WCDRetrieveInitialStateOperation *)self delegate];
  operationQueue = [(WCDRetrieveInitialStateOperation *)self operationQueue];
  v7 = [(WCDAsyncOperation *)v4 initWithDelegate:delegate queue:operationQueue];

  operationQueue2 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
  [operationQueue2 addOperation:v7];

  operationQueue3 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
  [operationQueue3 waitUntilAllOperationsAreFinished];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    uTF8String = [v10 UTF8String];
    v30 = 136315138;
    v31 = uTF8String;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "pairedListOperation: %s", &v30, 0xCu);
  }

  if ([(WCDRetrievePairedListOperation *)v7 paired])
  {
    v12 = [WCDRetrieveActiveComplicationsOperation alloc];
    delegate2 = [(WCDRetrieveInitialStateOperation *)self delegate];
    operationQueue4 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    v15 = [(WCDAsyncOperation *)v12 initWithDelegate:delegate2 queue:operationQueue4];

    operationQueue5 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    [operationQueue5 addOperation:v15];

    v17 = [WCDRetrieveInstalledAppsListOperation alloc];
    delegate3 = [(WCDRetrieveInitialStateOperation *)self delegate];
    operationQueue6 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    v20 = [(WCDAsyncOperation *)v17 initWithDelegate:delegate3 queue:operationQueue6];

    operationQueue7 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    [operationQueue7 addOperation:v20];

    operationQueue8 = [(WCDRetrieveInitialStateOperation *)self operationQueue];
    [operationQueue8 waitUntilAllOperationsAreFinished];
  }

  else
  {
    v20 = 0;
    v15 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [objc_opt_class() description];
    uTF8String2 = [v23 UTF8String];
    v30 = 136315138;
    v31 = uTF8String2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "pairedListOperation2: %s", &v30, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [objc_opt_class() description];
    uTF8String3 = [v25 UTF8String];
    v30 = 136315138;
    v31 = uTF8String3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "activeComplicationsOperation: %s", &v30, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [objc_opt_class() description];
    uTF8String4 = [v27 UTF8String];
    v30 = 136315138;
    v31 = uTF8String4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "installedAppsListOperation: %s", &v30, 0xCu);
  }

  failed = [(WCDAsyncOperation *)v7 failed]|| [(WCDAsyncOperation *)v15 failed]|| [(WCDAsyncOperation *)v20 failed];
  [(WCDRetrieveInitialStateOperation *)self setFailed:failed];
}

- (WCDOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end