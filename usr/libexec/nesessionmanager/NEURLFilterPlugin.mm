@interface NEURLFilterPlugin
- (void)acceptAgentClients;
- (void)handlePluginFailedWithError:(id)a3;
- (void)setStatus:(int64_t)a3 error:(id)a4;
- (void)updatePrefilterWithCompletionHandler:(id)a3;
@end

@implementation NEURLFilterPlugin

- (void)updatePrefilterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2080;
    v13 = "[NEURLFilterPlugin updatePrefilterWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", buf, 0x16u);
  }

  v6 = [(NEPlugin *)self delegateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017898;
  v8[3] = &unk_1000EB310;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)acceptAgentClients
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[NEURLFilterPlugin acceptAgentClients]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: %s - enter", buf, 0x16u);
  }

  v4 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017A1C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)setStatus:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = self;
    v15 = 2080;
    v16 = "[NEURLFilterPlugin setStatus:error:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: %s - enter - err %@", buf, 0x20u);
  }

  v8 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017BC8;
  block[3] = &unk_1000EABA0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)handlePluginFailedWithError:(id)a3
{
  self->_urlfilterStatus = 0;
  v4 = [(NEPlugin *)self delegate];
  [v4 plugin:self didSetStatus:0 andError:1];
}

@end