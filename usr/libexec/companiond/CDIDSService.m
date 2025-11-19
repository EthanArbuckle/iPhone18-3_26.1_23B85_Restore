@interface CDIDSService
- (CDIDSService)init;
- (void)_activated;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
- (void)sendMessage:(int64_t)a3 toUsernames:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation CDIDSService

- (CDIDSService)init
{
  v5.receiver = self;
  v5.super_class = CDIDSService;
  v2 = [(CDIDSService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
  }

  return v3;
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000484C;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000048D4;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.companion.auth"];
  idsService = self->_idsService;
  self->_idsService = v3;

  [(IDSService *)self->_idsService addDelegate:self queue:self->_dispatchQueue];
  v5 = sub_100004980();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS service activated.", v6, 2u);
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    idsService = self->_idsService;
    self->_idsService = 0;

    messageReceivedHandler = self->_messageReceivedHandler;
    self->_messageReceivedHandler = 0;

    self->_invalidateDone = 1;
    v5 = sub_100004980();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS service invalidated.", v6, 2u);
    }
  }
}

- (void)sendMessage:(int64_t)a3 toUsernames:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004B08;
  block[3] = &unk_100089ED8;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100004980();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS incomingMessage: account=%@, incomingMessage=%@, fromID=%@", &v18, 0x20u);
  }

  v14 = NSDictionaryGetNSNumber();
  v15 = [v14 copy];
  v16 = [v15 integerValue];

  messageReceivedHandler = self->_messageReceivedHandler;
  if (messageReceivedHandler)
  {
    messageReceivedHandler[2](messageReceivedHandler, v16);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v9 = a6;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = sub_100004980();
  v15 = v14;
  if (v9)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138413058;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 1024;
      v21 = 1;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDS didSendWithSuccess: account=%@, identifier=%@, success=%d, error=%@", &v16, 0x26u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 138413058;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 1024;
    v21 = 0;
    v22 = 2112;
    v23 = v13;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IDS failed to send: account=%@, identifier=%@, success=%d, error=%@", &v16, 0x26u);
  }
}

@end