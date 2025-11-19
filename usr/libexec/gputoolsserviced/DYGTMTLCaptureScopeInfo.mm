@interface DYGTMTLCaptureScopeInfo
- (DYGTMTLCaptureScopeInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGTMTLCaptureScopeInfo

- (DYGTMTLCaptureScopeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DYGTMTLCaptureScopeInfo;
  v5 = [(DYGTMTLCaptureScopeInfo *)&v9 init];
  if (v5)
  {
    v5->_deviceAddress = [v4 decodeInt64ForKey:@"deviceAddress"];
    v5->_deviceStreamRef = [v4 decodeInt64ForKey:@"deviceStreamRef"];
    v5->_commandQueueStreamRef = [v4 decodeInt64ForKey:@"commandQueueStreamRef"];
    v5->_scopeAddress = [v4 decodeInt64ForKey:@"scopeAddress"];
    v5->_scopeStreamRef = [v4 decodeInt64ForKey:@"scopeStreamRef"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_isDefaultCapturable = [v4 decodeBoolForKey:@"isDefaultCapturable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceAddress = self->_deviceAddress;
  v5 = a3;
  [v5 encodeInt64:deviceAddress forKey:@"deviceAddress"];
  [v5 encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [v5 encodeInt64:self->_commandQueueStreamRef forKey:@"commandQueueStreamRef"];
  [v5 encodeInt64:self->_scopeAddress forKey:@"scopeAddress"];
  [v5 encodeInt64:self->_scopeStreamRef forKey:@"scopeStreamRef"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeBool:self->_isDefaultCapturable forKey:@"isDefaultCapturable"];
}

@end