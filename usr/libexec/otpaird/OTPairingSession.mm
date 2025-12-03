@interface OTPairingSession
- (BOOL)acquireLockAssertion;
- (id)initAsInitiator:(BOOL)initiator deviceInfo:(id)info identifier:(id)identifier;
- (void)addCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didCompleteWithSuccess:(BOOL)success error:(id)error;
@end

@implementation OTPairingSession

- (void)didCompleteWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  completionHandlers = [(OTPairingSession *)self completionHandlers];
  v7 = [completionHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(completionHandlers);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [completionHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  completionHandlers = [(OTPairingSession *)self completionHandlers];

  if (!completionHandlers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [(OTPairingSession *)self setCompletionHandlers:v6];
  }

  completionHandlers2 = [(OTPairingSession *)self completionHandlers];
  v7 = objc_retainBlock(handlerCopy);

  [completionHandlers2 addObject:v7];
}

- (BOOL)acquireLockAssertion
{
  if (self->_lockAssertion)
  {
    return 1;
  }

  v8[0] = @"MKBAssertionKey";
  v8[1] = @"MKBAssertionTimeout";
  v9[0] = @"Other";
  v9[1] = &off_10000C988;
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v5 = MKBDeviceLockAssertion();
  self->_lockAssertion = v5;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to obtain lock assertion: %@", buf, 0xCu);
  }

  return self->_lockAssertion != 0;
}

- (void)dealloc
{
  lockAssertion = self->_lockAssertion;
  if (lockAssertion)
  {
    CFRelease(lockAssertion);
    self->_lockAssertion = 0;
  }

  v4.receiver = self;
  v4.super_class = OTPairingSession;
  [(OTPairingSession *)&v4 dealloc];
}

- (id)initAsInitiator:(BOOL)initiator deviceInfo:(id)info identifier:(id)identifier
{
  initiatorCopy = initiator;
  infoCopy = info;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = OTPairingSession;
  v10 = [(OTPairingSession *)&v23 init];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = objc_alloc_init(KCPairingChannelContext);
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];
  [v11 setUniqueClientID:uUIDString];

  v14 = +[NSUUID UUID];
  uUIDString2 = [v14 UUIDString];
  [v11 setUniqueDeviceID:uUIDString2];

  [v11 setIntent:KCPairingIntent_Type_SilentRepair];
  modelID = [infoCopy modelID];
  [v11 setModel:modelID];

  osVersion = [infoCopy osVersion];
  [v11 setOsVersion:osVersion];

  if (initiatorCopy)
  {
    if (!identifierCopy)
    {
      v18 = +[NSUUID UUID];
      uUIDString3 = [v18 UUIDString];
      [(OTPairingSession *)v10 setIdentifier:uUIDString3];

      v20 = [KCPairingChannel pairingChannelInitiator:v11];
LABEL_7:
      v21 = v20;
      [(OTPairingSession *)v10 setChannel:v20];

LABEL_8:
      return v10;
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else if (identifierCopy)
  {
    [(OTPairingSession *)v10 setIdentifier:identifierCopy];
    v20 = [KCPairingChannel pairingChannelAcceptor:v11];
    goto LABEL_7;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

@end