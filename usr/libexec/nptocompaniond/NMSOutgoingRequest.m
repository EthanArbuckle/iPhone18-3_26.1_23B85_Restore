@interface NMSOutgoingRequest
+ (id)requestWithMessageID:(unsigned __int16)a3;
- (NMSMessageCenter)messageCenter;
- (NMSOutgoingRequest)init;
- (id)description;
- (void)setPbRequest:(id)a3;
@end

@implementation NMSOutgoingRequest

+ (id)requestWithMessageID:(unsigned __int16)a3
{
  v3 = a3;
  v4 = objc_alloc_init(a1);
  [v4 setMessageID:v3];

  return v4;
}

- (NMSOutgoingRequest)init
{
  v3.receiver = self;
  v3.super_class = NMSOutgoingRequest;
  result = [(NMSOutgoingRequest *)&v3 init];
  if (result)
  {
    result->_priority = 0;
  }

  return result;
}

- (void)setPbRequest:(id)a3
{
  objc_storeStrong(&self->_pbRequest, a3);
  v7 = a3;
  v5 = [self->_pbRequest data];
  data = self->_data;
  self->_data = v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p> messageID: %hu", v4, self, self->_messageID];

  return v5;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end