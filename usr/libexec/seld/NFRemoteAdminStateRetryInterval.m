@interface NFRemoteAdminStateRetryInterval
- (NFRemoteAdminStateRetryInterval)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFRemoteAdminStateRetryInterval

- (NFRemoteAdminStateRetryInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NFRemoteAdminStateRetryInterval;
  v5 = [(NFRemoteAdminStateRetryInterval *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delayValueIndex"];
    v5->_delayValueIndex = [v6 unsignedIntegerValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  delayValueIndex = self->_delayValueIndex;
  v6 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:delayValueIndex];
  [v6 encodeObject:v5 forKey:@"delayValueIndex"];

  [v6 encodeObject:self->_time forKey:@"time"];
}

@end