@interface SPWRReportReason
- (SPWRReportReason)initWithWorkflowTracker:(id)tracker signpostTracker:(id)signpostTracker diagnostic:(id)diagnostic;
@end

@implementation SPWRReportReason

- (SPWRReportReason)initWithWorkflowTracker:(id)tracker signpostTracker:(id)signpostTracker diagnostic:(id)diagnostic
{
  trackerCopy = tracker;
  signpostTrackerCopy = signpostTracker;
  diagnosticCopy = diagnostic;
  v12 = [(SPWRReportReason *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workflowTracker, tracker);
    objc_storeStrong(&v13->_signpostTracker, signpostTracker);
    objc_storeStrong(&v13->_diagnostic, diagnostic);
  }

  return v13;
}

@end