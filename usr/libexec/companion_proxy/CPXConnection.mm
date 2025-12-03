@interface CPXConnection
- (CPXConnection)initWithIDSDeviceConnection:(id)connection idsMessageContext:(id)context localSocket:(int)socket bridgeSocket:(int)bridgeSocket localCompletion:(id)completion bridgeCompletion:(id)bridgeCompletion serviceName:(id)name servicePort:(unint64_t)self0;
@end

@implementation CPXConnection

- (CPXConnection)initWithIDSDeviceConnection:(id)connection idsMessageContext:(id)context localSocket:(int)socket bridgeSocket:(int)bridgeSocket localCompletion:(id)completion bridgeCompletion:(id)bridgeCompletion serviceName:(id)name servicePort:(unint64_t)self0
{
  connectionCopy = connection;
  contextCopy = context;
  completionCopy = completion;
  bridgeCompletionCopy = bridgeCompletion;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = CPXConnection;
  v21 = [(CPXConnection *)&v30 init];
  if (!v21)
  {
LABEL_7:
    v26 = v21;
    goto LABEL_11;
  }

  if (connectionCopy)
  {
    if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "idsMessageContext was unexpectedly nil. This connection will not be boosted", buf, 2u);
    }

    objc_storeStrong(&v21->_idsDeviceConnection, connection);
    objc_storeStrong(&v21->_boostingMessageContext, context);
    v21->_localSocket = socket;
    v21->_bridgeSocket = bridgeSocket;
    v22 = objc_retainBlock(completionCopy);
    localCompletion = v21->_localCompletion;
    v21->_localCompletion = v22;

    v24 = objc_retainBlock(bridgeCompletionCopy);
    bridgeCompletion = v21->_bridgeCompletion;
    v21->_bridgeCompletion = v24;

    objc_storeStrong(&v21->_serviceName, name);
    v21->_servicePort = port;
    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "idsDeviceConnection cannot be nil!", buf, 2u);
  }

  v26 = 0;
LABEL_11:

  return v26;
}

@end