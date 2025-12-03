@interface RPAngelProxy
+ (id)sharedInstance;
- (RPAngelProxy)init;
- (id)connectionManagerQueue;
- (id)getBSServiceInterface;
- (void)connectToAngelWithCompletionHandler:(id)handler;
- (void)disableCameraPip;
- (void)enableCameraPip;
- (void)hideAndStopRecordingBanner;
- (void)pauseCurrentSystemSession;
- (void)resumeCurrentSystemSession;
- (void)setupConnection;
- (void)showBannerWithURL:(id)l identifier:(id)identifier sessionID:(id)d completionHandler:(id)handler;
- (void)updateTimer:(id)timer;
@end

@implementation RPAngelProxy

+ (id)sharedInstance
{
  if (qword_1000B6980 != -1)
  {
    sub_100064EEC();
  }

  v3 = qword_1000B6978;

  return v3;
}

- (id)connectionManagerQueue
{
  if (qword_1000B6990 != -1)
  {
    sub_100064F00();
  }

  v3 = qword_1000B6988;

  return v3;
}

- (id)getBSServiceInterface
{
  if (qword_1000B69A0 != -1)
  {
    sub_100064F14();
  }

  v3 = qword_1000B6998;

  return v3;
}

- (RPAngelProxy)init
{
  v5.receiver = self;
  v5.super_class = RPAngelProxy;
  v2 = [(RPAngelProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RPAngelProxy *)v2 setupConnection];
  }

  return v3;
}

- (void)setupConnection
{
  v3 = [BSServiceConnectionEndpoint endpointForMachName:@"com.apple.ReplayKitAngel.mach" service:@"com.apple.ReplayKitAngel.session" instance:0];
  if (v3)
  {
    v4 = [BSServiceConnection connectionWithEndpoint:v3];
    connection = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100044F70;
    v7[3] = &unk_1000A24B0;
    v7[4] = self;
    [(BSServiceConnectionClient *)v6 configureConnection:v7];
    [(BSServiceConnectionClient *)self->_connection activate];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy setupConnection]";
    v10 = 1024;
    v11 = 99;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel endpoint nil", buf, 0x12u);
  }
}

- (void)hideAndStopRecordingBanner
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy hideAndStopRecordingBanner]";
    v10 = 1024;
    v11 = 106;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 hideAndStopRecordingBanner];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy hideAndStopRecordingBanner]";
    v10 = 1024;
    v11 = 113;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }
}

- (void)showBannerWithURL:(id)l identifier:(id)identifier sessionID:(id)d completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[RPAngelProxy showBannerWithURL:identifier:sessionID:completionHandler:]";
    v22 = 1024;
    v23 = 118;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v15 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v19 = v15;
  v16 = [NSArray arrayWithObjects:&v19 count:1];
  v17 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v16];

  if (v17)
  {
    [v17 showBannerWithURL:lCopy identifier:identifierCopy sessionID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[RPAngelProxy showBannerWithURL:identifier:sessionID:completionHandler:]";
      v22 = 1024;
      v23 = 123;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
    }

    v18 = [NSError _rpUserErrorForCode:-5800 userInfo:0];
    handlerCopy[2](handlerCopy, v18);
  }
}

- (void)updateTimer:(id)timer
{
  timerCopy = timer;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPAngelProxy updateTimer:]";
    v12 = 1024;
    v13 = 130;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (timerCopy)
  {
    connection = self->_connection;
    v6 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    v8 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v7];

    if (v8)
    {
      [v8 updateTimer:timerCopy];
    }

    else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "[RPAngelProxy updateTimer:]";
      v12 = 1024;
      v13 = 142;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064F28();
  }
}

- (void)connectToAngelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPAngelProxy connectToAngelWithCompletionHandler:]";
    v13 = 1024;
    v14 = 147;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v6 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v7];

  if (v8)
  {
    [v8 connectToAngelWithCompletionHandler:handlerCopy];
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v12 = "[RPAngelProxy connectToAngelWithCompletionHandler:]";
      v13 = 1024;
      v14 = 154;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
    }

    v9 = [NSError _rpUserErrorForCode:-5800 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v9);
  }
}

- (void)enableCameraPip
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy enableCameraPip]";
    v10 = 1024;
    v11 = 161;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 enableCameraPip];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy enableCameraPip]";
    v10 = 1024;
    v11 = 166;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }
}

- (void)disableCameraPip
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy disableCameraPip]";
    v10 = 1024;
    v11 = 171;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  connection = self->_connection;
  v4 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  if (v6)
  {
    [v6 disableCameraPip];
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelProxy disableCameraPip]";
    v10 = 1024;
    v11 = 176;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelServerProtocol nil", buf, 0x12u);
  }
}

- (void)pauseCurrentSystemSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPAngelProxy pauseCurrentSystemSession]";
    v6 = 1024;
    v7 = 182;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  v2 = +[RPClientManager sharedInstance];
  v3 = [v2 getClientWithBundleID:@"com.apple.springboard"];

  [v3 pauseCurrentActiveSession];
}

- (void)resumeCurrentSystemSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPAngelProxy resumeCurrentSystemSession]";
    v8 = 1024;
    v9 = 190;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v3 = +[RPClientManager sharedInstance];
  v4 = [v3 getClientWithBundleID:@"com.apple.springboard"];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100046114;
  v5[3] = &unk_1000A17A0;
  v5[4] = self;
  [v4 resumeSystemRecordingWithCompletionHandler:v5];
}

@end