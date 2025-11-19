@interface _SESACWGSession
+ (id)validateEntitlements:(id)a3;
- (_SESACWGSession)initWithRemoteObject:(id)a3 queue:(id)a4;
- (void)endSession:(id)a3;
- (void)endSessionInternal:(id)a3;
- (void)preArmActiveKey:(BOOL)a3 reply:(id)a4;
- (void)pushSecureElementToken:(id)a3;
- (void)releaseRemoteObject;
- (void)sendEvent:(id)a3 keyIdentifier:(id)a4;
- (void)setActiveKey:(id)a3 reply:(id)a4;
- (void)setDidEndCallback:(id)a3;
- (void)setSecureElementToken:(id)a3 reply:(id)a4;
- (void)start;
- (void)useSecureElementToken;
@end

@implementation _SESACWGSession

- (_SESACWGSession)initWithRemoteObject:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SESACWGSession;
  return [(_SESSession *)&v5 initWithRemoteObject:a3 queue:a4];
}

+ (id)validateEntitlements:(id)a3
{
  v3 = [_SESSessionClientInfo withConnection:a3];
  if ([v3 acwgSessionEntitlement])
  {
    v4 = 0;
  }

  else
  {
    v5 = SESDefaultLogObject();
    v7 = [v3 clientName];
    v4 = SESCreateAndLogError();
  }

  return v4;
}

- (void)setDidEndCallback:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SESACWGSession;
  [(_SESSession *)&v3 setDidEndCallback:a3];
}

- (void)releaseRemoteObject
{
  v3 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4.receiver = self;
  v4.super_class = _SESACWGSession;
  [(_SESSession *)&v4 releaseRemoteObject];
}

- (void)start
{
  v3 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SESACWGSession start %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = _SESACWGSession;
  [(_SESSession *)&v5 start];
}

- (void)endSessionInternal:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SESACWGSession endSessionInternal %@ error %@", buf, 0x16u);
  }

  [(_SESACWGSession *)self setSeToken:0];
  [(_SESACWGSession *)self setAuth:0];
  [(_SESACWGSession *)self setIsWaitingForSecureElement:0];
  activeEndpoint = self->_activeEndpoint;
  self->_activeEndpoint = 0;

  self->_isPreArmed = 0;
  v8.receiver = self;
  v8.super_class = _SESACWGSession;
  [(_SESSession *)&v8 endSessionInternal:v4];
}

- (void)endSession:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E628;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setActiveKey:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E7C4;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setSecureElementToken:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005ECB0;
  block[3] = &unk_1004C1258;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)preArmActiveKey:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005EECC;
  block[3] = &unk_1004C31D0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)useSecureElementToken
{
  v3 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F12C;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)pushSecureElementToken:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F2CC;
  block[3] = &unk_1004C08D8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)sendEvent:(id)a3 keyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v8);

  if (![(_SESSession *)self isActive])
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Dropping event due to session not active %@", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = [(SEEndPoint *)self->_activeEndpoint publicKeyIdentifier];
  v10 = [v9 isEqualToData:v7];

  if (v10)
  {
    if (qword_10050CD18 != -1)
    {
      sub_1003B0990();
    }

    v11 = [v6 objectForKeyedSubscript:@"xpcEventName"];
    if ([qword_10050CD10 containsObject:v11])
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sending event via session delegate %@", &v14, 0xCu);
      }

      v13 = [(_SESSession *)self remoteObject];
      [v13 sendEvent:v6];
    }

LABEL_11:
  }
}

@end