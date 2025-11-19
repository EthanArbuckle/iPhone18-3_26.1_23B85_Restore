@interface CBDRemoteXPCMessagePingHandler
- (CBDPingIPGenerator)ipGenerator;
- (CBDRemoteXPCMessagePingHandler)init;
- (CBDRemoteXPCMessagePingHandler)initWithIPGenerator:(id)a3;
- (id)expectedRemoteMessageClasses;
- (id)generateLocalIPAddress:(id)a3;
- (void)handleRemoteMessage:(id)a3 completion:(id)a4;
@end

@implementation CBDRemoteXPCMessagePingHandler

- (CBDRemoteXPCMessagePingHandler)init
{
  v6.receiver = self;
  v6.super_class = CBDRemoteXPCMessagePingHandler;
  v2 = [(CBDRemoteXPCMessagePingHandler *)&v6 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Use default ip generator.", v5, 2u);
    }

    objc_storeWeak(&v2->_ipGenerator, v2);
  }

  return v2;
}

- (CBDRemoteXPCMessagePingHandler)initWithIPGenerator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CBDRemoteXPCMessagePingHandler;
  v5 = [(CBDRemoteXPCMessagePingHandler *)&v8 init];
  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Use an ip generator %@ instead of the default generator.", buf, 0xCu);
    }

    objc_storeWeak(&v5->_ipGenerator, v4);
  }

  return v5;
}

- (id)expectedRemoteMessageClasses
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)handleRemoteMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [(CBDRemoteXPCMessagePingHandler *)self ipGenerator];
    v10 = [v9 generateLocalIPAddress:v8];

    if (v10)
    {
      v11 = [CBDRemoteXPCMessagePingReply replyToRemoteMessage:v8 success:1 error:0];
      [v11 setIp:v10];
    }

    else
    {
      v14 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received ping message, but the connection is nil.", &v16, 2u);
      }

      v15 = [NSError errorWithDomain:@"com.apple.checkerboardd.remoteXPCMessageDomain" code:2 userInfo:0];
      v11 = [CBDRemoteXPCMessagePingReply replyToRemoteMessage:v8 success:0 error:v15];
    }

    v7[2](v7, v11);

    v7 = v10;
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Expect to handle a ping message, but received %@ instead.", &v16, 0xCu);
    }

    v13 = [NSError errorWithDomain:@"com.apple.checkerboardd.remoteXPCMessageDomain" code:1 userInfo:0];
    v8 = [CBDRemoteXPCMessagePingReply replyToRemoteMessage:v6 success:0 error:v13];

    v7[2](v7, v8);
  }
}

- (id)generateLocalIPAddress:(id)a3
{
  v3 = [a3 connection];
  v4 = xpc_remote_connection_copy_remote_address_string();

  if (v4)
  {
    v5 = [NSString stringWithUTF8String:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CBDPingIPGenerator)ipGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_ipGenerator);

  return WeakRetained;
}

@end