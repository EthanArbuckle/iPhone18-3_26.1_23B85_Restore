@interface NMSIncomingResponse
- (id)description;
@end

@implementation NMSIncomingResponse

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p> messageID: %hu", v4, self, self->_messageID];

  return v5;
}

@end