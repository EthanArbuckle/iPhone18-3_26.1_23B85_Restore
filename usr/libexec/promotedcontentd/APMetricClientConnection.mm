@interface APMetricClientConnection
- (APMetricClientConnection)initWithHost:(id)host port:(id)port;
- (id)lineBreakFramer:(id)framer;
- (void)_sendRawData:(id)data;
- (void)_setupConnection:(id)connection port:(id)port;
- (void)send:(id)send;
@end

@implementation APMetricClientConnection

- (APMetricClientConnection)initWithHost:(id)host port:(id)port
{
  hostCopy = host;
  portCopy = port;
  v11.receiver = self;
  v11.super_class = APMetricClientConnection;
  v8 = [(APMetricClientConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(APMetricClientConnection *)v8 _setupConnection:hostCopy port:portCopy];
  }

  return v9;
}

- (void)_setupConnection:(id)connection port:(id)port
{
  connectionCopy = connection;
  portCopy = port;
  v8 = objc_autoreleasePoolPush();
  if ([connectionCopy length] && objc_msgSend(portCopy, "length"))
  {
    uTF8String = [connectionCopy UTF8String];
    uTF8String2 = [portCopy UTF8String];
    secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
    host = nw_endpoint_create_host(uTF8String, uTF8String2);
    v13 = nw_connection_create(host, secure_tcp);
    v14 = dispatch_get_global_queue(9, 0);
    nw_connection_set_queue(v13, v14);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100378B3C;
    handler[3] = &unk_100480638;
    handler[4] = uTF8String;
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

- (void)send:(id)send
{
  v4 = [(APMetricClientConnection *)self lineBreakFramer:send];
  [(APMetricClientConnection *)self _sendRawData:v4];
}

- (void)_sendRawData:(id)data
{
  queue = dispatch_get_global_queue(0, 0);
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  v9 = dispatch_data_create(bytes, v8, queue, 0);
  clientConnection = [(APMetricClientConnection *)self clientConnection];
  nw_connection_send(clientConnection, v9, _nw_content_context_default_message, 1, &stru_100480678);
}

- (id)lineBreakFramer:(id)framer
{
  if (framer)
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