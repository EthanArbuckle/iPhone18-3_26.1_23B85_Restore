@interface WAMessageAWDSubmitter
- (WAMessageAWDSubmissionDelegate)submissionDelegate;
- (id)submitMessage:(id)message;
@end

@implementation WAMessageAWDSubmitter

- (id)submitMessage:(id)message
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract. You must override %@ in a subclass", v3];

  return 0;
}

- (WAMessageAWDSubmissionDelegate)submissionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_submissionDelegate);

  return WeakRetained;
}

@end