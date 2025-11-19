@interface APMetricsObservability
- (void)_batchClosedWithBatchLifetime:(double)a3 batchID:(id)a4 eventsCount:(int64_t)a5;
- (void)_batchDequeuedWithWaitingTime:(double)a3 queueLength:(int64_t)a4 batchID:(id)a5;
- (void)_batchEnqueuedWithQueueLength:(int64_t)a3;
- (void)_payloadUploadFailureWithType:(int64_t)a3 code:(int64_t)a4 batchInfos:(id)a5;
- (void)_payloadUploadSuccessForBatchInfos:(id)a3;
@end

@implementation APMetricsObservability

- (void)_batchClosedWithBatchLifetime:(double)a3 batchID:(id)a4 eventsCount:(int64_t)a5
{
  v8 = a4;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = a3;
    v13 = 2048;
    v14 = a5;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Batch closed lifetime: %f, events count: %ld BatchID: %{public}@", &v11, 0x20u);
  }

  v10 = [(APMetricsObservability *)self signalMonitor];
  [v10 batchClosedWithBatchLifetime:a5 eventsCount:a3];
}

- (void)_batchDequeuedWithWaitingTime:(double)a3 queueLength:(int64_t)a4 batchID:(id)a5
{
  v8 = a5;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = a3;
    v13 = 2048;
    v14 = a4;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Batch dequeued waiting time: %f, queue length: %ld, batch ID: %{public}@", &v11, 0x20u);
  }

  v10 = [(APMetricsObservability *)self signalMonitor];
  [v10 batchDequeuedWithWaitingTime:a4 queueLength:v8 batchID:a3];
}

- (void)_batchEnqueuedWithQueueLength:(int64_t)a3
{
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Batch enqueued, queue length: %ld", &v7, 0xCu);
  }

  v6 = [(APMetricsObservability *)self signalMonitor];
  [v6 batchEnqueuedWithQueueLength:a3];
}

- (void)_payloadUploadFailureWithType:(int64_t)a3 code:(int64_t)a4 batchInfos:(id)a5
{
  v8 = a5;
  v9 = os_transaction_create();
  v10 = [(APMetricsObservability *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032C810;
  block[3] = &unk_10047E5E0;
  v17 = a3;
  v18 = a4;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);
}

- (void)_payloadUploadSuccessForBatchInfos:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(APMetricsObservability *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032CA9C;
  block[3] = &unk_10047E550;
  v10 = v4;
  v11 = self;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

@end