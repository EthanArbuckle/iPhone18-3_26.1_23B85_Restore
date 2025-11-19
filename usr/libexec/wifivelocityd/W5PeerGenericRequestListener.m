@interface W5PeerGenericRequestListener
- (BOOL)handleClientRequest:(id)a3;
@end

@implementation W5PeerGenericRequestListener

- (BOOL)handleClientRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  if (v5)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 info];
      [v4 options];
      v15 = 136316162;
      v16 = "[W5PeerGenericRequestListener handleClientRequest:]";
      v17 = 2080;
      v18 = "W5PeerGenericRequestListener.m";
      v19 = 1024;
      v20 = 21;
      v21 = 2114;
      v22 = v7;
      v24 = v23 = 2114;
      _os_log_send_and_compose_impl();
    }

    v8 = [(W5PeerGenericRequestListener *)self requestHandler];

    if (v8)
    {
      v9 = [(W5PeerGenericRequestListener *)self requestHandler];
      v10 = [v5 info];
      v11 = [v4 options];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000940C4;
      v13[3] = &unk_1000E3600;
      v14 = v4;
      (v9)[2](v9, v10, v11, v13);
    }
  }

  return 1;
}

@end