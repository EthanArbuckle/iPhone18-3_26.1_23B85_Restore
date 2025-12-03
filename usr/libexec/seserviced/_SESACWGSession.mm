@interface _SESACWGSession
+ (id)validateEntitlements:(id)entitlements;
- (_SESACWGSession)initWithRemoteObject:(id)object queue:(id)queue;
- (void)endSession:(id)session;
- (void)endSessionInternal:(id)internal;
- (void)preArmActiveKey:(BOOL)key reply:(id)reply;
- (void)pushSecureElementToken:(id)token;
- (void)releaseRemoteObject;
- (void)sendEvent:(id)event keyIdentifier:(id)identifier;
- (void)setActiveKey:(id)key reply:(id)reply;
- (void)setDidEndCallback:(id)callback;
- (void)setSecureElementToken:(id)token reply:(id)reply;
- (void)start;
- (void)useSecureElementToken;
@end

@implementation _SESACWGSession

- (_SESACWGSession)initWithRemoteObject:(id)object queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = _SESACWGSession;
  return [(_SESSession *)&v5 initWithRemoteObject:object queue:queue];
}

+ (id)validateEntitlements:(id)entitlements
{
  v3 = [_SESSessionClientInfo withConnection:entitlements];
  if ([v3 acwgSessionEntitlement])
  {
    v4 = 0;
  }

  else
  {
    v5 = SESDefaultLogObject();
    clientName = [v3 clientName];
    v4 = SESCreateAndLogError();
  }

  return v4;
}

- (void)setDidEndCallback:(id)callback
{
  v3.receiver = self;
  v3.super_class = _SESACWGSession;
  [(_SESSession *)&v3 setDidEndCallback:callback];
}

- (void)releaseRemoteObject
{
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4.receiver = self;
  v4.super_class = _SESACWGSession;
  [(_SESSession *)&v4 releaseRemoteObject];
}

- (void)start
{
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SESACWGSession start %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = _SESACWGSession;
  [(_SESSession *)&v5 start];
}

- (void)endSessionInternal:(id)internal
{
  internalCopy = internal;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = internalCopy;
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
  [(_SESSession *)&v8 endSessionInternal:internalCopy];
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  queue = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E628;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

- (void)setActiveKey:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E7C4;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = keyCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = keyCopy;
  dispatch_async(queue, block);
}

- (void)setSecureElementToken:(id)token reply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005ECB0;
  block[3] = &unk_1004C1258;
  v12 = tokenCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = tokenCopy;
  v10 = replyCopy;
  dispatch_async(queue, block);
}

- (void)preArmActiveKey:(BOOL)key reply:(id)reply
{
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005EECC;
  block[3] = &unk_1004C31D0;
  keyCopy = key;
  block[4] = self;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, block);
}

- (void)useSecureElementToken
{
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F12C;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pushSecureElementToken:(id)token
{
  tokenCopy = token;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F2CC;
  block[3] = &unk_1004C08D8;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(queue, block);
}

- (void)sendEvent:(id)event keyIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(_SESSession *)self isActive])
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = eventCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Dropping event due to session not active %@", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  publicKeyIdentifier = [(SEEndPoint *)self->_activeEndpoint publicKeyIdentifier];
  v10 = [publicKeyIdentifier isEqualToData:identifierCopy];

  if (v10)
  {
    if (qword_10050CD18 != -1)
    {
      sub_1003B0990();
    }

    v11 = [eventCopy objectForKeyedSubscript:@"xpcEventName"];
    if ([qword_10050CD10 containsObject:v11])
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = eventCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sending event via session delegate %@", &v14, 0xCu);
      }

      remoteObject = [(_SESSession *)self remoteObject];
      [remoteObject sendEvent:eventCopy];
    }

LABEL_11:
  }
}

@end