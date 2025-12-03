@interface APMetricPreparedDataServerDelivery
- (APMetricHTTPDelivery)httpDelivery;
- (APMetricStoringEC)storage;
- (BOOL)_sendRequest:(id)request;
- (BOOL)_uploadFile:(id)file;
- (void)_backoffTimerReset;
- (void)_backoffTimerScheduleNextLevel;
- (void)_continueProcessing;
@end

@implementation APMetricPreparedDataServerDelivery

- (void)_continueProcessing
{
  objc_initWeak(&location, self);
  processor = [(APMetricPreparedDataServerDelivery *)self processor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10032F208;
  v4[3] = &unk_10047E430;
  objc_copyWeak(&v5, &location);
  sub_100395298(processor, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_uploadFile:(id)file
{
  fileCopy = file;
  metricsFileManager = [(APMetricPreparedDataServerDelivery *)self metricsFileManager];
  v15 = 0;
  v6 = [metricsFileManager fileForReadingAtKeyPath:fileCopy error:&v15];
  v7 = v15;

  if (v7)
  {
    nextObject = APLogForCategory();
    if (os_log_type_enabled(nextObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, nextObject, OS_LOG_TYPE_ERROR, "Failed to open metrics data file: %{public}@", buf, 0xCu);
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  nextObject = [v6 nextObject];
  if (!nextObject)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = fileCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to read data from %{public}@", buf, 0xCu);
    }

    metricsFileManager2 = [(APMetricPreparedDataServerDelivery *)self metricsFileManager];
    [metricsFileManager2 removeObjectAtPath:fileCopy error:0];

    goto LABEL_11;
  }

  v9 = [(APMetricPreparedDataServerDelivery *)self _sendRequest:nextObject];
  if (v9)
  {
    metricsFileManager3 = [(APMetricPreparedDataServerDelivery *)self metricsFileManager];
    [metricsFileManager3 removeObjectAtPath:fileCopy error:0];
  }

  v11 = v9 ^ 1;
LABEL_12:

  return v11;
}

- (BOOL)_sendRequest:(id)request
{
  requestCopy = request;
  httpDelivery = [(APMetricPreparedDataServerDelivery *)self httpDelivery];
  v15 = 0;
  v6 = [httpDelivery sendHTTPDeliveryRequest:requestCopy error:&v15];

  v7 = v15;
  if (v7)
  {
    code = [v7 code];
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v17 = code;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error (%ld) attempting to send metrics data: %{public}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  statusCode = [v6 statusCode];
  if ((statusCode - 200) <= 0x63)
  {
    [(APMetricPreparedDataServerDelivery *)self _backoffTimerReset];
LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v13 = statusCode;
  if (statusCode != 503 && (statusCode - 400) > 0xC7)
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Received unknown status code from response (%ld)!", buf, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_5:
  [(APMetricPreparedDataServerDelivery *)self _backoffTimerScheduleNextLevel];
  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_backoffTimerScheduleNextLevel
{
  backoffTimer = [(APMetricPreparedDataServerDelivery *)self backoffTimer];

  if (!backoffTimer)
  {
    v4 = [[APBackoffTimer alloc] initWithSchedule:0 name:@"Prepared Data"];
    [(APMetricPreparedDataServerDelivery *)self setBackoffTimer:v4];

    backoffTimer2 = [(APMetricPreparedDataServerDelivery *)self backoffTimer];
    [backoffTimer2 setDelegate:self];
  }

  backoffTimer3 = [(APMetricPreparedDataServerDelivery *)self backoffTimer];
  queue = [(APMetricPreparedDataServerDelivery *)self queue];
  v8 = [backoffTimer3 scheduleNextLevelWithQueue:queue];

  if ((v8 & 1) == 0)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error: Couldn't schedule Backoff Timer for Metric Data Server.", v10, 2u);
    }
  }
}

- (void)_backoffTimerReset
{
  backoffTimer = [(APMetricPreparedDataServerDelivery *)self backoffTimer];
  [backoffTimer reset];

  [(APMetricPreparedDataServerDelivery *)self setBackoffTimer:0];
}

- (APMetricStoringEC)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

- (APMetricHTTPDelivery)httpDelivery
{
  WeakRetained = objc_loadWeakRetained(&self->_httpDelivery);

  return WeakRetained;
}

@end