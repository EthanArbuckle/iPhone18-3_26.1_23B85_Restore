@interface MSDCDNSession
- (void)authenticate:(id)authenticate forTask:(id)task completion:(id)completion;
- (void)collectMetricsData:(id)data;
- (void)collectTimingDataForTask:(id)task withNetworkError:(id)error;
@end

@implementation MSDCDNSession

- (void)authenticate:(id)authenticate forTask:(id)task completion:(id)completion
{
  authenticateCopy = authenticate;
  completionCopy = completion;
  v7 = objc_alloc_init(MSDSessionFileDownloadTrustEvaluate);
  protectionSpace = [authenticateCopy protectionSpace];
  v9 = -[MSDSessionFileDownloadTrustEvaluate trustServer:isRedirect:](v7, "trustServer:isRedirect:", [protectionSpace serverTrust], 0);

  if (v9)
  {
    protectionSpace2 = [authenticateCopy protectionSpace];
    v11 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace2 serverTrust]);

    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)collectTimingDataForTask:(id)task withNetworkError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  info = [taskCopy info];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    task = [taskCopy task];
    _timingData = [task _timingData];

    info2 = [taskCopy info];
    serverType = [info2 serverType];

    if (_timingData)
    {
      v12 = +[MSDSessionMetrics sharedInstance];
      [v12 extractAndUploadTimingData:_timingData forServerType:serverType];
    }

    if (errorCopy)
    {
      v13 = +[MSDAnalyticsEventHandler sharedInstance];
      [v13 sendNetworkFailureEvent:errorCopy forServerType:serverType];
    }
  }
}

- (void)collectMetricsData:(id)data
{
  dataCopy = data;
  v4 = +[MSDSessionMetrics sharedInstance];
  [v4 saveTransactionMetric:dataCopy];
}

@end