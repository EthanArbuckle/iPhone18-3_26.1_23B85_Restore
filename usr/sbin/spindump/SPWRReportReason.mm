@interface SPWRReportReason
- (SPWRReportReason)initWithWorkflowTracker:(id)a3 signpostTracker:(id)a4 diagnostic:(id)a5;
@end

@implementation SPWRReportReason

- (SPWRReportReason)initWithWorkflowTracker:(id)a3 signpostTracker:(id)a4 diagnostic:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(SPWRReportReason *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workflowTracker, a3);
    objc_storeStrong(&v13->_signpostTracker, a4);
    objc_storeStrong(&v13->_diagnostic, a5);
  }

  return v13;
}

@end