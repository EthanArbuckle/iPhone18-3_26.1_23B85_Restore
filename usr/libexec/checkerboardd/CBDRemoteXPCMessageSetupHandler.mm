@interface CBDRemoteXPCMessageSetupHandler
- (CBDProxyReceiver)proxyReceiver;
- (CBDRemoteXPCMessageSetupHandler)initWithProxyReceiver:(id)receiver;
- (id)expectedRemoteMessageClasses;
- (void)handleRemoteMessage:(id)message completion:(id)completion;
@end

@implementation CBDRemoteXPCMessageSetupHandler

- (CBDRemoteXPCMessageSetupHandler)initWithProxyReceiver:(id)receiver
{
  receiverCopy = receiver;
  v8.receiver = self;
  v8.super_class = CBDRemoteXPCMessageSetupHandler;
  v5 = [(CBDRemoteXPCMessageSetupHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxyReceiver, receiverCopy);
  }

  return v6;
}

- (id)expectedRemoteMessageClasses
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)handleRemoteMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = messageCopy;
    server = [v8 server];
    if (server && (v10 = server, [v8 port], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      proxyReceiver = [(CBDRemoteXPCMessageSetupHandler *)self proxyReceiver];

      if (proxyReceiver)
      {
        v13 = [CBSProxyServer alloc];
        server2 = [v8 server];
        port = [v8 port];
        token = [v8 token];
        v17 = [v13 initWithServer:server2 port:port token:token];

        v18 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v30 = v8;
          v31 = 2112;
          v32 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Start setting proxy server info for message %@. proxyServer = %@", buf, 0x16u);
        }

        proxyReceiver2 = [(CBDRemoteXPCMessageSetupHandler *)self proxyReceiver];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100004AC0;
        v26[3] = &unk_100010528;
        v28 = completionCopy;
        v27 = v8;
        [proxyReceiver2 setProxyServer:v17 completion:v26];

        goto LABEL_15;
      }

      v25 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Missing proxy receiver for message %@", buf, 0xCu);
      }

      v23 = 3;
    }

    else
    {
      v22 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Missing server info for message %@.", buf, 0xCu);
      }

      v23 = 4;
    }

    v24 = [NSError errorWithDomain:@"com.apple.checkerboardd.remoteXPCMessageDomain" code:v23 userInfo:0];
    v17 = [v8 replyWithSuccess:0 error:v24];

    (*(completionCopy + 2))(completionCopy, v17);
LABEL_15:

    goto LABEL_16;
  }

  v20 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = messageCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Expect to handle a setup message, but received %@ instead.", buf, 0xCu);
  }

  v21 = [NSError errorWithDomain:@"com.apple.checkerboardd.remoteXPCMessageDomain" code:1 userInfo:0];
  v8 = [messageCopy replyWithSuccess:0 error:v21];

  (*(completionCopy + 2))(completionCopy, v8);
LABEL_16:
}

- (CBDProxyReceiver)proxyReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyReceiver);

  return WeakRetained;
}

@end