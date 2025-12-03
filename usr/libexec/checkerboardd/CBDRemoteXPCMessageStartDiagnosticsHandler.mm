@interface CBDRemoteXPCMessageStartDiagnosticsHandler
- (CBDRemoteXPCMessageStartDiagnosticsHandler)initWithProxyReceiver:(id)receiver;
- (CBDStartDiagnosticsReceiver)startDiagnosticsReceiver;
- (id)expectedRemoteMessageClasses;
- (void)handleRemoteMessage:(id)message completion:(id)completion;
@end

@implementation CBDRemoteXPCMessageStartDiagnosticsHandler

- (CBDRemoteXPCMessageStartDiagnosticsHandler)initWithProxyReceiver:(id)receiver
{
  receiverCopy = receiver;
  v8.receiver = self;
  v8.super_class = CBDRemoteXPCMessageStartDiagnosticsHandler;
  v5 = [(CBDRemoteXPCMessageStartDiagnosticsHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_startDiagnosticsReceiver, receiverCopy);
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
    startDiagnosticsReceiver = [(CBDRemoteXPCMessageStartDiagnosticsHandler *)self startDiagnosticsReceiver];

    v10 = CheckerBoardLogHandleForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (startDiagnosticsReceiver)
    {
      if (v11)
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Start session for message %@", buf, 0xCu);
      }

      startDiagnosticsReceiver2 = [(CBDRemoteXPCMessageStartDiagnosticsHandler *)self startDiagnosticsReceiver];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100006958;
      v17[3] = &unk_100010528;
      v19 = completionCopy;
      v18 = v8;
      [startDiagnosticsReceiver2 startDiagnosticsWithCompletion:v17];

      v13 = v19;
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Missing proxy receiver for message %@", buf, 0xCu);
      }

      v16 = [NSError errorWithDomain:@"com.apple.checkerboardd.remoteXPCMessageDomain" code:3 userInfo:0];
      v13 = [v8 replyWithSuccess:0 error:v16];

      (*(completionCopy + 2))(completionCopy, v13);
    }
  }

  else
  {
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = messageCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Expect to handle a start session message, but received %@ instead.", buf, 0xCu);
    }

    v15 = [NSError errorWithDomain:@"com.apple.checkerboardd.remoteXPCMessageDomain" code:1 userInfo:0];
    v8 = [messageCopy replyWithSuccess:0 error:v15];

    (*(completionCopy + 2))(completionCopy, v8);
  }
}

- (CBDStartDiagnosticsReceiver)startDiagnosticsReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_startDiagnosticsReceiver);

  return WeakRetained;
}

@end