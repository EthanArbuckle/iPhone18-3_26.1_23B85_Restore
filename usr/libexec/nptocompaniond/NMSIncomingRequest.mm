@interface NMSIncomingRequest
- (NMSMessageCenter)messageCenter;
- (id)description;
- (id)pbRequest;
- (void)configureResponse;
- (void)dealloc;
@end

@implementation NMSIncomingRequest

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p> messageID: %hu", v4, self, self->_messageID];

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NMSIncomingRequest;
  [(NMSIncomingRequest *)&v2 dealloc];
}

- (void)configureResponse
{
  v3 = objc_alloc_init(NMSOutgoingResponse);
  [(NMSOutgoingResponse *)v3 setPriority:self->_priority];
  [(NMSOutgoingResponse *)v3 setRequest:self];
  response = self->_response;
  self->_response = v3;
}

- (id)pbRequest
{
  pbRequest = self->_pbRequest;
  if (!pbRequest)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
    v5 = [WeakRetained _pbMappingForMessageID:self->_messageID];

    v6 = [objc_alloc(objc_msgSend(v5 "requestClass"))];
    v7 = self->_pbRequest;
    self->_pbRequest = v6;

    pbRequest = self->_pbRequest;
  }

  return pbRequest;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end