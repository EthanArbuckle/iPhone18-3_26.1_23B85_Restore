@interface CDIDSService
- (CDIDSService)init;
- (void)_activated;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
- (void)sendMessage:(int64_t)message toUsernames:(id)usernames;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
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

- (void)sendMessage:(int64_t)message toUsernames:(id)usernames
{
  usernamesCopy = usernames;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004B08;
  block[3] = &unk_100089ED8;
  selfCopy = self;
  messageCopy = message;
  v10 = usernamesCopy;
  v8 = usernamesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  v13 = sub_100004980();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = accountCopy;
    v20 = 2112;
    v21 = messageCopy;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS incomingMessage: account=%@, incomingMessage=%@, fromID=%@", &v18, 0x20u);
  }

  v14 = NSDictionaryGetNSNumber();
  v15 = [v14 copy];
  integerValue = [v15 integerValue];

  messageReceivedHandler = self->_messageReceivedHandler;
  if (messageReceivedHandler)
  {
    messageReceivedHandler[2](messageReceivedHandler, integerValue);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v14 = sub_100004980();
  v15 = v14;
  if (successCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138413058;
      v17 = accountCopy;
      v18 = 2112;
      v19 = identifierCopy;
      v20 = 1024;
      v21 = 1;
      v22 = 2112;
      v23 = errorCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDS didSendWithSuccess: account=%@, identifier=%@, success=%d, error=%@", &v16, 0x26u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 138413058;
    v17 = accountCopy;
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 1024;
    v21 = 0;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IDS failed to send: account=%@, identifier=%@, success=%d, error=%@", &v16, 0x26u);
  }
}

@end