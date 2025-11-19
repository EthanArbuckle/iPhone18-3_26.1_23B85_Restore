@interface CPXConnection
- (CPXConnection)initWithIDSDeviceConnection:(id)a3 idsMessageContext:(id)a4 localSocket:(int)a5 bridgeSocket:(int)a6 localCompletion:(id)a7 bridgeCompletion:(id)a8 serviceName:(id)a9 servicePort:(unint64_t)a10;
@end

@implementation CPXConnection

- (CPXConnection)initWithIDSDeviceConnection:(id)a3 idsMessageContext:(id)a4 localSocket:(int)a5 bridgeSocket:(int)a6 localCompletion:(id)a7 bridgeCompletion:(id)a8 serviceName:(id)a9 servicePort:(unint64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v30.receiver = self;
  v30.super_class = CPXConnection;
  v21 = [(CPXConnection *)&v30 init];
  if (!v21)
  {
LABEL_7:
    v26 = v21;
    goto LABEL_11;
  }

  if (v16)
  {
    if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "idsMessageContext was unexpectedly nil. This connection will not be boosted", buf, 2u);
    }

    objc_storeStrong(&v21->_idsDeviceConnection, a3);
    objc_storeStrong(&v21->_boostingMessageContext, a4);
    v21->_localSocket = a5;
    v21->_bridgeSocket = a6;
    v22 = objc_retainBlock(v18);
    localCompletion = v21->_localCompletion;
    v21->_localCompletion = v22;

    v24 = objc_retainBlock(v19);
    bridgeCompletion = v21->_bridgeCompletion;
    v21->_bridgeCompletion = v24;

    objc_storeStrong(&v21->_serviceName, a9);
    v21->_servicePort = a10;
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