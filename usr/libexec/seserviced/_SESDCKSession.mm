@interface _SESDCKSession
+ (id)validateEntitlements:(id)entitlements;
- (_SESDCKSession)initWithRemoteObject:(id)object queue:(id)queue;
- (void)cancelRKEFunction:(unint64_t)function reply:(id)reply;
- (void)didReceivePassthroughMessage:(id)message keyIdentifier:(id)identifier;
- (void)endSession:(id)session;
- (void)endSessionInternal:(id)internal;
- (void)preArmActiveKey:(BOOL)key reply:(id)reply;
- (void)pushSecureElementToken:(id)token;
- (void)releaseRemoteObject;
- (void)sendEvent:(id)event keyIdentifier:(id)identifier;
- (void)sendPassthroughMessage:(id)message reply:(id)reply;
- (void)sendRKEFunction:(unint64_t)function action:(unint64_t)action actionType:(unint64_t)type arbitraryData:(id)data authorization:(id)authorization completion:(id)completion;
- (void)setActiveKey:(id)key reply:(id)reply;
- (void)setAuthorization:(id)authorization reply:(id)reply;
- (void)setDidEndCallback:(id)callback;
- (void)setSecureElementToken:(id)token reply:(id)reply;
- (void)start;
- (void)useSecureElementToken;
@end

@implementation _SESDCKSession

- (_SESDCKSession)initWithRemoteObject:(id)object queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = _SESDCKSession;
  return [(_SESSession *)&v5 initWithRemoteObject:object queue:queue];
}

+ (id)validateEntitlements:(id)entitlements
{
  v3 = [_SESSessionClientInfo withConnection:entitlements];
  if ([v3 dckSessionEntitlement])
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
  v3.super_class = _SESDCKSession;
  [(_SESSession *)&v3 setDidEndCallback:callback];
}

- (void)releaseRemoteObject
{
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4.receiver = self;
  v4.super_class = _SESDCKSession;
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SESDCKSession start %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = _SESDCKSession;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SESDCKSession endSessionInternal %@ error %@", buf, 0x16u);
  }

  [(_SESDCKSession *)self setSeToken:0];
  [(_SESDCKSession *)self setAuth:0];
  [(_SESDCKSession *)self setIsWaitingForSecureElement:0];
  activeEndpoint = self->_activeEndpoint;
  self->_activeEndpoint = 0;

  self->_isPreArmed = 0;
  v8.receiver = self;
  v8.super_class = _SESDCKSession;
  [(_SESSession *)&v8 endSessionInternal:internalCopy];
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  queue = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000633DC;
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
  block[2] = sub_100063578;
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
  block[2] = sub_100063BB4;
  block[3] = &unk_1004C1258;
  v12 = tokenCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = tokenCopy;
  v10 = replyCopy;
  dispatch_async(queue, block);
}

- (void)setAuthorization:(id)authorization reply:(id)reply
{
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100063DC8;
  v8[3] = &unk_1004C0F00;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(queue, v8);
}

- (void)preArmActiveKey:(BOOL)key reply:(id)reply
{
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063FB4;
  block[3] = &unk_1004C31D0;
  keyCopy = key;
  block[4] = self;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, block);
}

- (void)sendRKEFunction:(unint64_t)function action:(unint64_t)action actionType:(unint64_t)type arbitraryData:(id)data authorization:(id)authorization completion:(id)completion
{
  dataCopy = data;
  authorizationCopy = authorization;
  completionCopy = completion;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000642D8;
  block[3] = &unk_1004C3368;
  functionCopy = function;
  actionCopy = action;
  block[4] = self;
  v22 = authorizationCopy;
  typeCopy = type;
  v23 = dataCopy;
  v24 = completionCopy;
  v18 = dataCopy;
  v19 = completionCopy;
  v20 = authorizationCopy;
  dispatch_async(queue, block);
}

- (void)cancelRKEFunction:(unint64_t)function reply:(id)reply
{
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064584;
  block[3] = &unk_1004C3390;
  v10 = replyCopy;
  functionCopy = function;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(queue, block);
}

- (void)sendPassthroughMessage:(id)message reply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064838;
  block[3] = &unk_1004C1258;
  v12 = messageCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = messageCopy;
  v10 = replyCopy;
  dispatch_async(queue, block);
}

- (void)useSecureElementToken
{
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064AE8;
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
  block[2] = sub_100064C88;
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
    if (qword_10050CD38[0] != -1)
    {
      sub_1003B0DC4();
    }

    v11 = [eventCopy objectForKeyedSubscript:@"xpcEventName"];
    if ([qword_10050CD30 containsObject:v11])
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

- (void)didReceivePassthroughMessage:(id)message keyIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(_SESSession *)self isActive])
  {
    remoteObject = SESDefaultLogObject();
    if (!os_log_type_enabled(remoteObject, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v15 = 0;
    v12 = "Ignoring passthrough message received with no active session";
    v13 = &v15;
LABEL_8:
    _os_log_impl(&_mh_execute_header, remoteObject, OS_LOG_TYPE_INFO, v12, v13, 2u);
    goto LABEL_9;
  }

  publicKeyIdentifier = [(SEEndPoint *)self->_activeEndpoint publicKeyIdentifier];
  v10 = [publicKeyIdentifier isEqualToData:identifierCopy];

  if ((v10 & 1) == 0)
  {
    remoteObject = SESDefaultLogObject();
    if (!os_log_type_enabled(remoteObject, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v14 = 0;
    v12 = "Ignoring passthrough message for non-active key";
    v13 = &v14;
    goto LABEL_8;
  }

  remoteObject = [(_SESSession *)self remoteObject];
  [remoteObject didReceivePassthroughMessage:messageCopy];
LABEL_9:
}

@end