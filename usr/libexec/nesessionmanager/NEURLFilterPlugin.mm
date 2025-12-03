@interface NEURLFilterPlugin
- (void)acceptAgentClients;
- (void)handlePluginFailedWithError:(id)error;
- (void)setStatus:(int64_t)status error:(id)error;
- (void)updatePrefilterWithCompletionHandler:(id)handler;
@end

@implementation NEURLFilterPlugin

- (void)updatePrefilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2080;
    v13 = "[NEURLFilterPlugin updatePrefilterWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", buf, 0x16u);
  }

  delegateQueue = [(NEPlugin *)self delegateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017898;
  v8[3] = &unk_1000EB310;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(delegateQueue, v8);
}

- (void)acceptAgentClients
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v8 = 2080;
    v9 = "[NEURLFilterPlugin acceptAgentClients]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", buf, 0x16u);
  }

  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017A1C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)setStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v15 = 2080;
    v16 = "[NEURLFilterPlugin setStatus:error:]";
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %s - enter - err %@", buf, 0x20u);
  }

  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017BC8;
  block[3] = &unk_1000EABA0;
  v11 = errorCopy;
  statusCopy = status;
  block[4] = self;
  v9 = errorCopy;
  dispatch_async(delegateQueue, block);
}

- (void)handlePluginFailedWithError:(id)error
{
  self->_urlfilterStatus = 0;
  delegate = [(NEPlugin *)self delegate];
  [delegate plugin:self didSetStatus:0 andError:1];
}

@end