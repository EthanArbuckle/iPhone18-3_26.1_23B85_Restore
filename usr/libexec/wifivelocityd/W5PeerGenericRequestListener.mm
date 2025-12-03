@interface W5PeerGenericRequestListener
- (BOOL)handleClientRequest:(id)request;
@end

@implementation W5PeerGenericRequestListener

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  if (payload)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      info = [payload info];
      [requestCopy options];
      v15 = 136316162;
      v16 = "[W5PeerGenericRequestListener handleClientRequest:]";
      v17 = 2080;
      v18 = "W5PeerGenericRequestListener.m";
      v19 = 1024;
      v20 = 21;
      v21 = 2114;
      v22 = info;
      v24 = v23 = 2114;
      _os_log_send_and_compose_impl();
    }

    requestHandler = [(W5PeerGenericRequestListener *)self requestHandler];

    if (requestHandler)
    {
      requestHandler2 = [(W5PeerGenericRequestListener *)self requestHandler];
      info2 = [payload info];
      options = [requestCopy options];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000940C4;
      v13[3] = &unk_1000E3600;
      v14 = requestCopy;
      (requestHandler2)[2](requestHandler2, info2, options, v13);
    }
  }

  return 1;
}

@end