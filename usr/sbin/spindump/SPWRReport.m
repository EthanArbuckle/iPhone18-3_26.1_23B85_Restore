@interface SPWRReport
- (SPWRReport)initWithReportReason:(id)a3 reportedSignpostTracker:(id)a4 task:(id)a5 timeRange:(id)a6 thread:(id)a7 dispatchQueue:(id)a8;
@end

@implementation SPWRReport

- (SPWRReport)initWithReportReason:(id)a3 reportedSignpostTracker:(id)a4 task:(id)a5 timeRange:(id)a6 thread:(id)a7 dispatchQueue:(id)a8
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (!(v16 | v17))
  {
    sub_10009D1C8(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v25 = v17;
  v26 = [(SPWRReport *)self init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_reportReason, a3);
    objc_storeStrong(&v27->_reportedSignpostTracker, a4);
    objc_storeStrong(&v27->_task, a5);
    objc_storeStrong(&v27->_timeRange, a6);
    objc_storeStrong(&v27->_thread, a7);
    objc_storeStrong(&v27->_dispatchQueue, a8);
  }

  return v27;
}

@end