@interface OTPairingSession
- (BOOL)acquireLockAssertion;
- (id)initAsInitiator:(BOOL)a3 deviceInfo:(id)a4 identifier:(id)a5;
- (void)addCompletionHandler:(id)a3;
- (void)dealloc;
- (void)didCompleteWithSuccess:(BOOL)a3 error:(id)a4;
@end

@implementation OTPairingSession

- (void)didCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(OTPairingSession *)self completionHandlers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(OTPairingSession *)self completionHandlers];

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [(OTPairingSession *)self setCompletionHandlers:v6];
  }

  v8 = [(OTPairingSession *)self completionHandlers];
  v7 = objc_retainBlock(v4);

  [v8 addObject:v7];
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

- (id)initAsInitiator:(BOOL)a3 deviceInfo:(id)a4 identifier:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = OTPairingSession;
  v10 = [(OTPairingSession *)&v23 init];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = objc_alloc_init(KCPairingChannelContext);
  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];
  [v11 setUniqueClientID:v13];

  v14 = +[NSUUID UUID];
  v15 = [v14 UUIDString];
  [v11 setUniqueDeviceID:v15];

  [v11 setIntent:KCPairingIntent_Type_SilentRepair];
  v16 = [v8 modelID];
  [v11 setModel:v16];

  v17 = [v8 osVersion];
  [v11 setOsVersion:v17];

  if (v6)
  {
    if (!v9)
    {
      v18 = +[NSUUID UUID];
      v19 = [v18 UUIDString];
      [(OTPairingSession *)v10 setIdentifier:v19];

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

  else if (v9)
  {
    [(OTPairingSession *)v10 setIdentifier:v9];
    v20 = [KCPairingChannel pairingChannelAcceptor:v11];
    goto LABEL_7;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

@end