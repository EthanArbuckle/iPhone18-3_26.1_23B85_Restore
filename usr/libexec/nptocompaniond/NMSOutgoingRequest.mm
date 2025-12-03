@interface NMSOutgoingRequest
+ (id)requestWithMessageID:(unsigned __int16)d;
- (NMSMessageCenter)messageCenter;
- (NMSOutgoingRequest)init;
- (id)description;
- (void)setPbRequest:(id)request;
@end

@implementation NMSOutgoingRequest

+ (id)requestWithMessageID:(unsigned __int16)d
{
  dCopy = d;
  v4 = objc_alloc_init(self);
  [v4 setMessageID:dCopy];

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

- (void)setPbRequest:(id)request
{
  objc_storeStrong(&self->_pbRequest, request);
  requestCopy = request;
  data = [self->_pbRequest data];
  data = self->_data;
  self->_data = data;
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