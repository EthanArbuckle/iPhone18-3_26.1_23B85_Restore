@interface NDAVThroughputMonitor
- (NDAVThroughputMonitor)initWithWrapper:(id)a3 monitoredApplication:(id)a4 priority:(int64_t)a5 options:(unint64_t)a6 queue:(id)a7;
- (int64_t)currentIntervalDuration;
- (void)applicationEnteredForeground:(id)a3;
- (void)applicationNoLongerInForeground:(id)a3;
- (void)calculateThroughput;
- (void)cancel;
- (void)setThroughputTimerForCurrentInterval;
- (void)startThroughputMonitoring;
- (void)startThroughputMonitoringIfAppropriate;
- (void)stopThroughputMonitoring;
- (void)wrapperTransferredData:(unint64_t)a3;
@end

@implementation NDAVThroughputMonitor

- (void)stopThroughputMonitoring
{
  throughputTimer = self->_throughputTimer;
  if (throughputTimer)
  {
    dispatch_source_cancel(throughputTimer);
    v4 = self->_throughputTimer;
    self->_throughputTimer = 0;

    progressTimestamps = self->_progressTimestamps;
    self->_progressTimestamps = 0;

    progressValues = self->_progressValues;
    self->_progressValues = 0;

    self->_throughputInterval = 0;
  }
}

- (void)applicationNoLongerInForeground:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076B80;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)applicationEnteredForeground:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076C14;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setThroughputTimerForCurrentInterval
{
  throughputTimer = self->_throughputTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100076D44;
  handler[3] = &unk_1000D63D0;
  handler[4] = self;
  dispatch_source_set_event_handler(throughputTimer, handler);
  v4 = self->_throughputTimer;
  v5 = dispatch_time(0, [(NDAVThroughputMonitor *)self currentIntervalDuration]);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (int64_t)currentIntervalDuration
{
  throughputInterval = self->_throughputInterval;
  if (throughputInterval)
  {
    return ((dbl_1000997C8[throughputInterval] - dbl_1000997C8[throughputInterval - 1]) * 60.0 * 1000000000.0);
  }

  else
  {
    return 60000000000;
  }
}

- (void)calculateThroughput
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_progressValues;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 += [*(*(&v23 + 1) + 8 * i) unsignedLongLongValue];
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v4);
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(NSMutableArray *)self->_progressTimestamps firstObject];
  v10 = [(NSMutableArray *)self->_progressTimestamps lastObject];
  [v10 doubleValue];
  v12 = v11;
  [v9 doubleValue];
  v14 = v13;
  [(NDAVThroughputMonitor *)self currentIntervalThroughputThreshold];
  v15 = v8 / (v12 - v14);
  if (v15 < v16)
  {
    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(NDAVThroughputMonitor *)self currentIntervalThroughputThreshold];
      progressTimestamps = self->_progressTimestamps;
      progressValues = self->_progressValues;
      *buf = 134218754;
      v28 = v15;
      v29 = 2048;
      v30 = v22;
      v31 = 2112;
      v32 = progressValues;
      v33 = 2112;
      v34 = progressTimestamps;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Canceling AVAssetTask because of low throughput monitoring! Current throughput: %f bytes/sec, current threshold: %f bytes/sec, samples %@/%@", buf, 0x2Au);
    }

    v18 = [(NDAVAssetDownloadSessionWrapper *)self->_wrapper URL];
    v19 = [NSURLError _web_errorWithDomain:@"_nsurlsessiondErrorDomain" code:3 URL:v18];

    [(NDAVAssetDownloadSessionWrapper *)self->_wrapper cancelAndDeliverError:v19];
  }
}

- (void)startThroughputMonitoring
{
  if (!self->_throughputTimer)
  {
    v4 = +[NSMutableArray array];
    progressTimestamps = self->_progressTimestamps;
    self->_progressTimestamps = v4;

    v6 = +[NSMutableArray array];
    progressValues = self->_progressValues;
    self->_progressValues = v6;

    self->_throughputInterval = 0;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    throughputTimer = self->_throughputTimer;
    self->_throughputTimer = v8;

    [(NDAVThroughputMonitor *)self setThroughputTimerForCurrentInterval];
    v10 = self->_throughputTimer;

    dispatch_resume(v10);
  }
}

- (void)startThroughputMonitoringIfAppropriate
{
  if (self->_discretionary || self->_performsNonDiscretionaryThroughputMonitoring && self->_basePriority == 300 && (monitoredApplication = self->_monitoredApplication) != 0 && ![(NDApplication *)monitoredApplication isForeground])
  {

    [(NDAVThroughputMonitor *)self startThroughputMonitoring];
  }
}

- (void)wrapperTransferredData:(unint64_t)a3
{
  if (!self->_hasTransferredData)
  {
    [(NDAVThroughputMonitor *)self startThroughputMonitoringIfAppropriate];
  }

  self->_hasTransferredData = 1;
  Current = CFAbsoluteTimeGetCurrent();
  if (![(NSMutableArray *)self->_progressTimestamps count])
  {
    self->_throughputMonitoringStartTime = Current;
  }

  if (-[NSMutableArray count](self->_progressTimestamps, "count") && (-[NSMutableArray lastObject](self->_progressTimestamps, "lastObject"), v6 = objc_claimAutoreleasedReturnValue(), [v6 doubleValue], v8 = Current - v7, v6, v8 <= 1.0))
  {
    v14 = [(NSMutableArray *)self->_progressValues lastObject];
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 unsignedLongLongValue] + a3);

    [(NSMutableArray *)self->_progressValues removeLastObject];
    [(NSMutableArray *)self->_progressValues addObject:v13];
  }

  else
  {
    if ([(NSMutableArray *)self->_progressTimestamps count]>= 0xA)
    {
      [(NSMutableArray *)self->_progressTimestamps removeObjectAtIndex:0];
      [(NSMutableArray *)self->_progressValues removeObjectAtIndex:0];
    }

    progressTimestamps = self->_progressTimestamps;
    v10 = [NSNumber numberWithDouble:Current];
    [(NSMutableArray *)progressTimestamps addObject:v10];

    progressValues = self->_progressValues;
    v12 = [NSNumber numberWithUnsignedLongLong:a3];
    [(NSMutableArray *)progressValues addObject:v12];
    v13 = v12;
  }

  if ([(NSMutableArray *)self->_progressTimestamps count]>= 0xA && Current - self->_throughputMonitoringStartTime >= 15.0)
  {

    [(NDAVThroughputMonitor *)self calculateThroughput];
  }
}

- (void)cancel
{
  [(NDAVThroughputMonitor *)self stopThroughputMonitoring];
  monitoredApplication = self->_monitoredApplication;

  [(NDApplication *)monitoredApplication removeObserver:self];
}

- (NDAVThroughputMonitor)initWithWrapper:(id)a3 monitoredApplication:(id)a4 priority:(int64_t)a5 options:(unint64_t)a6 queue:(id)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = NDAVThroughputMonitor;
  v16 = [(NDAVThroughputMonitor *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_wrapper, a3);
    objc_storeStrong(&v17->_queue, a7);
    objc_storeStrong(&v17->_monitoredApplication, a4);
    v17->_basePriority = a5;
    v17->_discretionary = v8 & 1;
    v17->_explicitlyDiscretionary = (v8 & 2) != 0;
    v17->_performsNonDiscretionaryThroughputMonitoring = (v8 & 4) != 0;
    [(NDApplication *)v17->_monitoredApplication addObserver:v17];
  }

  return v17;
}

@end