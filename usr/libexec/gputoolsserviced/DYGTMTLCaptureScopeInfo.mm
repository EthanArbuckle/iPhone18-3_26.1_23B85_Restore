@interface DYGTMTLCaptureScopeInfo
- (DYGTMTLCaptureScopeInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYGTMTLCaptureScopeInfo

- (DYGTMTLCaptureScopeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DYGTMTLCaptureScopeInfo;
  v5 = [(DYGTMTLCaptureScopeInfo *)&v9 init];
  if (v5)
  {
    v5->_deviceAddress = [coderCopy decodeInt64ForKey:@"deviceAddress"];
    v5->_deviceStreamRef = [coderCopy decodeInt64ForKey:@"deviceStreamRef"];
    v5->_commandQueueStreamRef = [coderCopy decodeInt64ForKey:@"commandQueueStreamRef"];
    v5->_scopeAddress = [coderCopy decodeInt64ForKey:@"scopeAddress"];
    v5->_scopeStreamRef = [coderCopy decodeInt64ForKey:@"scopeStreamRef"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_isDefaultCapturable = [coderCopy decodeBoolForKey:@"isDefaultCapturable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceAddress = self->_deviceAddress;
  coderCopy = coder;
  [coderCopy encodeInt64:deviceAddress forKey:@"deviceAddress"];
  [coderCopy encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [coderCopy encodeInt64:self->_commandQueueStreamRef forKey:@"commandQueueStreamRef"];
  [coderCopy encodeInt64:self->_scopeAddress forKey:@"scopeAddress"];
  [coderCopy encodeInt64:self->_scopeStreamRef forKey:@"scopeStreamRef"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeBool:self->_isDefaultCapturable forKey:@"isDefaultCapturable"];
}

@end