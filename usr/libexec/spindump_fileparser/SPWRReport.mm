@interface SPWRReport
- (SPWRReport)initWithReportReason:(id)reason reportedSignpostTracker:(id)tracker task:(id)task timeRange:(id)range thread:(id)thread dispatchQueue:(id)queue;
@end

@implementation SPWRReport

- (SPWRReport)initWithReportReason:(id)reason reportedSignpostTracker:(id)tracker task:(id)task timeRange:(id)range thread:(id)thread dispatchQueue:(id)queue
{
  reasonCopy = reason;
  trackerCopy = tracker;
  taskCopy = task;
  rangeCopy = range;
  threadCopy = thread;
  queueCopy = queue;
  if (!(threadCopy | queueCopy))
  {
    sub_1000A5D18(queueCopy, v18, v19, v20, v21, v22, v23, v24);
  }

  v25 = queueCopy;
  v26 = [(SPWRReport *)self init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_reportReason, reason);
    objc_storeStrong(&v27->_reportedSignpostTracker, tracker);
    objc_storeStrong(&v27->_task, task);
    objc_storeStrong(&v27->_timeRange, range);
    objc_storeStrong(&v27->_thread, thread);
    objc_storeStrong(&v27->_dispatchQueue, queue);
  }

  return v27;
}

@end