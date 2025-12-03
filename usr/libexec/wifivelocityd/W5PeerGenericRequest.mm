@interface W5PeerGenericRequest
- (W5PeerRequestPayload)requestPayload;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerGenericRequest

- (W5PeerRequestPayload)requestPayload
{
  v3 = objc_alloc_init(W5PeerGenericRequestPayload);
  requestInfo = [(W5PeerGenericRequest *)self requestInfo];
  [(W5PeerGenericRequestPayload *)v3 setInfo:requestInfo];

  return v3;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];
  payload = [responseCopy payload];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    info = [payload info];
    options = [responseCopy options];
    _os_log_send_and_compose_impl();
  }

  responseHandler = [(W5PeerGenericRequest *)self responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [(W5PeerGenericRequest *)self responseHandler];
    info2 = [payload info];
    options2 = [responseCopy options];
    (responseHandler2)[2](responseHandler2, error, info2, options2);
  }
}

@end