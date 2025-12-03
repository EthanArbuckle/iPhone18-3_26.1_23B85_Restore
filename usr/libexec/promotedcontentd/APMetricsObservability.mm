@interface APMetricsObservability
- (void)_batchClosedWithBatchLifetime:(double)lifetime batchID:(id)d eventsCount:(int64_t)count;
- (void)_batchDequeuedWithWaitingTime:(double)time queueLength:(int64_t)length batchID:(id)d;
- (void)_batchEnqueuedWithQueueLength:(int64_t)length;
- (void)_payloadUploadFailureWithType:(int64_t)type code:(int64_t)code batchInfos:(id)infos;
- (void)_payloadUploadSuccessForBatchInfos:(id)infos;
@end

@implementation APMetricsObservability

- (void)_batchClosedWithBatchLifetime:(double)lifetime batchID:(id)d eventsCount:(int64_t)count
{
  dCopy = d;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    lifetimeCopy = lifetime;
    v13 = 2048;
    countCopy = count;
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Batch closed lifetime: %f, events count: %ld BatchID: %{public}@", &v11, 0x20u);
  }

  signalMonitor = [(APMetricsObservability *)self signalMonitor];
  [signalMonitor batchClosedWithBatchLifetime:count eventsCount:lifetime];
}

- (void)_batchDequeuedWithWaitingTime:(double)time queueLength:(int64_t)length batchID:(id)d
{
  dCopy = d;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    timeCopy = time;
    v13 = 2048;
    lengthCopy = length;
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Batch dequeued waiting time: %f, queue length: %ld, batch ID: %{public}@", &v11, 0x20u);
  }

  signalMonitor = [(APMetricsObservability *)self signalMonitor];
  [signalMonitor batchDequeuedWithWaitingTime:length queueLength:dCopy batchID:time];
}

- (void)_batchEnqueuedWithQueueLength:(int64_t)length
{
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    lengthCopy = length;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Batch enqueued, queue length: %ld", &v7, 0xCu);
  }

  signalMonitor = [(APMetricsObservability *)self signalMonitor];
  [signalMonitor batchEnqueuedWithQueueLength:length];
}

- (void)_payloadUploadFailureWithType:(int64_t)type code:(int64_t)code batchInfos:(id)infos
{
  infosCopy = infos;
  v9 = os_transaction_create();
  queue = [(APMetricsObservability *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032C810;
  block[3] = &unk_10047E5E0;
  typeCopy = type;
  codeCopy = code;
  v14 = infosCopy;
  selfCopy = self;
  v16 = v9;
  v11 = v9;
  v12 = infosCopy;
  dispatch_async(queue, block);
}

- (void)_payloadUploadSuccessForBatchInfos:(id)infos
{
  infosCopy = infos;
  v5 = os_transaction_create();
  queue = [(APMetricsObservability *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032CA9C;
  block[3] = &unk_10047E550;
  v10 = infosCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = infosCopy;
  dispatch_async(queue, block);
}

@end