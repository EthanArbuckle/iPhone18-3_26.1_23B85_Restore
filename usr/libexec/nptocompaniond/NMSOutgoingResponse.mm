@interface NMSOutgoingResponse
- (NMSIncomingRequest)request;
- (NMSOutgoingResponse)init;
- (id)description;
- (void)send;
- (void)setPbResponse:(id)response;
@end

@implementation NMSOutgoingResponse

- (NMSOutgoingResponse)init
{
  v6.receiver = self;
  v6.super_class = NMSOutgoingResponse;
  v2 = [(NMSOutgoingResponse *)&v6 init];
  if (v2)
  {
    v3 = [[NPTOTransaction alloc] initWithDescription:@"com.apple.NanoPhotos.NanoMessagingService.NMSOutgoingResponse"];
    transaction = v2->_transaction;
    v2->_transaction = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  WeakRetained = objc_loadWeakRetained(&self->_request);
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p> messageID: %hu", v4, self, [WeakRetained messageID]);

  return v6;
}

- (void)send
{
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];

  pbResponse = self->_pbResponse;
  if (pbResponse)
  {
    data = [pbResponse data];
    data = self->_data;
    self->_data = data;
  }

  [messageCenter _sendResponse:self];
}

- (void)setPbResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];
  v6 = [messageCenter _pbMappingForMessageID:{objc_msgSend(WeakRetained, "messageID")}];
  pbResponse = self->_pbResponse;
  self->_pbResponse = responseCopy;
}

- (NMSIncomingRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

@end