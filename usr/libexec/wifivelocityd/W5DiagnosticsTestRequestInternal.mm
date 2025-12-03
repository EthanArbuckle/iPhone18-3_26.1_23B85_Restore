@interface W5DiagnosticsTestRequestInternal
- (W5DiagnosticsTestRequestInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation W5DiagnosticsTestRequestInternal

- (W5DiagnosticsTestRequestInternal)init
{
  v5.receiver = self;
  v5.super_class = W5DiagnosticsTestRequestInternal;
  v2 = [(W5DiagnosticsTestRequestInternal *)&v5 init];
  if (v2)
  {
    v3 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    v2->_transaction = v3;
  }

  return v2;
}

- (void)dealloc
{
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  self->_transaction = 0;
  v3.receiver = self;
  v3.super_class = W5DiagnosticsTestRequestInternal;
  [(W5DiagnosticsTestRequestInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5DiagnosticsTestRequestInternal allocWithZone:?]];
  [(W5DiagnosticsTestRequestInternal *)v4 setUuid:self->_uuid];
  [(W5DiagnosticsTestRequestInternal *)v4 setIncludeEvents:self->_includeEvents];
  [(W5DiagnosticsTestRequestInternal *)v4 setTestRequests:self->_testRequests];
  [(W5DiagnosticsTestRequestInternal *)v4 setConfiguration:self->_configuration];
  [(W5DiagnosticsTestRequestInternal *)v4 setReply:self->_reply];
  return v4;
}

@end