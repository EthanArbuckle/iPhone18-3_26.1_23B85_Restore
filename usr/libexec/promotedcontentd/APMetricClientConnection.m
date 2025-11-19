@interface APMetricClientConnection
- (APMetricClientConnection)initWithHost:(id)a3 port:(id)a4;
- (id)lineBreakFramer:(id)a3;
- (void)_sendRawData:(id)a3;
- (void)_setupConnection:(id)a3 port:(id)a4;
- (void)send:(id)a3;
@end

@implementation APMetricClientConnection

- (APMetricClientConnection)initWithHost:(id)a3 port:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = APMetricClientConnection;
  v8 = [(APMetricClientConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(APMetricClientConnection *)v8 _setupConnection:v6 port:v7];
  }

  return v9;
}

- (void)_setupConnection:(id)a3 port:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v9 = [v6 UTF8String];
    v10 = [v7 UTF8String];
    secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
    host = nw_endpoint_create_host(v9, v10);
    v13 = nw_connection_create(host, secure_tcp);
    v14 = dispatch_get_global_queue(9, 0);
    nw_connection_set_queue(v13, v14);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100378B3C;
    handler[3] = &unk_100480638;
    handler[4] = v9;
    nw_connection_set_state_changed_handler(v13, handler);
    nw_connection_start(v13);
    [(APMetricClientConnection *)self setClientConnection:v13];
  }

  else
  {
    secure_tcp = APLogForCategory();
    if (os_log_type_enabled(secure_tcp, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, secure_tcp, OS_LOG_TYPE_ERROR, "hostname or port missing", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)send:(id)a3
{
  v4 = [(APMetricClientConnection *)self lineBreakFramer:a3];
  [(APMetricClientConnection *)self _sendRawData:v4];
}

- (void)_sendRawData:(id)a3
{
  queue = dispatch_get_global_queue(0, 0);
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  v9 = dispatch_data_create(v7, v8, queue, 0);
  v10 = [(APMetricClientConnection *)self clientConnection];
  nw_connection_send(v10, v9, _nw_content_context_default_message, 1, &stru_100480678);
}

- (id)lineBreakFramer:(id)a3
{
  if (a3)
  {
    v3 = [NSMutableData dataWithData:?];
    v4 = [NSString stringWithFormat:@"\r\n"];
    v5 = [v4 dataUsingEncoding:4];
    [v3 appendData:v5];

    v6 = [NSData dataWithData:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end