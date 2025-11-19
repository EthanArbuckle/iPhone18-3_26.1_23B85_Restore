@interface W5PeerGenericRequest
- (W5PeerRequestPayload)requestPayload;
- (void)handleResponse:(id)a3;
@end

@implementation W5PeerGenericRequest

- (W5PeerRequestPayload)requestPayload
{
  v3 = objc_alloc_init(W5PeerGenericRequestPayload);
  v4 = [(W5PeerGenericRequest *)self requestInfo];
  [(W5PeerGenericRequestPayload *)v3 setInfo:v4];

  return v3;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  v6 = [v4 payload];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 info];
    v13 = [v4 options];
    _os_log_send_and_compose_impl();
  }

  v9 = [(W5PeerGenericRequest *)self responseHandler];

  if (v9)
  {
    v10 = [(W5PeerGenericRequest *)self responseHandler];
    v11 = [v6 info];
    v12 = [v4 options];
    (v10)[2](v10, v5, v11, v12);
  }
}

@end