@interface NFRemoteAdminStateRetryInterval
- (NFRemoteAdminStateRetryInterval)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFRemoteAdminStateRetryInterval

- (NFRemoteAdminStateRetryInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NFRemoteAdminStateRetryInterval;
  v5 = [(NFRemoteAdminStateRetryInterval *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delayValueIndex"];
    v5->_delayValueIndex = [v6 unsignedIntegerValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  delayValueIndex = self->_delayValueIndex;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:delayValueIndex];
  [coderCopy encodeObject:v5 forKey:@"delayValueIndex"];

  [coderCopy encodeObject:self->_time forKey:@"time"];
}

@end