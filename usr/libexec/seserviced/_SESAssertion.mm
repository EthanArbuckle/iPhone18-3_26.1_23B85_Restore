@interface _SESAssertion
+ (id)validateEntitlements:(id)a3 appletIdentifier:(id)a4;
- (BOOL)isEquivalentForKeyIdentifier:(id)a3 appletIdentifier:(id)a4;
- (_SESAssertion)initWithRemoteObject:(id)a3 keyIdentifier:(id)a4 appletIdentifier:(id)a5 options:(id)a6 queue:(id)a7;
- (id)start:(BOOL)a3;
- (void)invalidate:(id)a3;
- (void)stop:(BOOL)a3;
@end

@implementation _SESAssertion

- (_SESAssertion)initWithRemoteObject:(id)a3 keyIdentifier:(id)a4 appletIdentifier:(id)a5 options:(id)a6 queue:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = _SESAssertion;
  v18 = [(_SESAssertion *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_remoteObject, a3);
    objc_storeStrong(&v19->_queue, a7);
    v20 = [v14 hexStringAsData];
    keyIdentifier = v19->_keyIdentifier;
    v19->_keyIdentifier = v20;

    v22 = [v15 hexStringAsData];
    appletIdentifier = v19->_appletIdentifier;
    v19->_appletIdentifier = v22;

    objc_storeStrong(&v19->_options, a6);
    v24 = [NSString stringWithFormat:@"%@", v19];
    assertionID = v19->_assertionID;
    v19->_assertionID = v24;
  }

  return v19;
}

+ (id)validateEntitlements:(id)a3 appletIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 hexStringAsData];
  v8 = [_SESSessionClientInfo withConnection:v6];

  v9 = [@"A000000809434343444B417631" hexStringAsData];
  v10 = [v9 isEqualToData:v7];

  if (v10)
  {
    if ([v8 dckSessionEntitlement])
    {
LABEL_3:
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = [@"A000000909ACCE5501" hexStringAsData];
    v13 = [v12 isEqualToData:v7];

    if (!v13)
    {
      v14 = SESDefaultLogObject();
      v11 = SESCreateAndLogError();
      goto LABEL_8;
    }

    if ([v8 acwgSessionEntitlement])
    {
      goto LABEL_3;
    }
  }

  v14 = SESDefaultLogObject();
  v16 = [v8 clientName];
  v11 = SESCreateAndLogError();

LABEL_8:
LABEL_9:

  return v11;
}

- (id)start:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = self;
    v23 = 1024;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SESAssertion start %@ bridged %d", buf, 0x12u);
  }

  if (v3 || ([@"A000000809434343444B417631" hexStringAsData], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToData:", self->_appletIdentifier), v6, !v7))
  {
    v13 = [@"A000000909ACCE5501" hexStringAsData];
    v14 = [v13 isEqualToData:self->_appletIdentifier];

    if (!v14)
    {
LABEL_13:
      v16 = os_transaction_create();
      v17 = 0;
      keepAlive = self->_keepAlive;
      self->_keepAlive = v16;
      goto LABEL_14;
    }

    v15 = +[_TtC10seserviced12LyonExternal shared];
    keepAlive = [v15 getEndpointWithKeyIdentifier:self->_keyIdentifier];

    if (!keepAlive || [keepAlive endPointType] != 4)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = +[_TtC10seserviced12LyonExternal shared];
    [v12 updatePassSelectionState:1];
LABEL_11:

    goto LABEL_12;
  }

  v8 = &unk_1004FF000;
  v9 = +[_TtC10seserviced14AlishaExternal shared];
  keepAlive = [v9 getEndpointWithKeyIdentifier:self->_keyIdentifier];

  v11 = [keepAlive bleUUID];

  if (v11)
  {
    v12 = +[_TtC10seserviced14AlishaExternal shared];
    [v12 onAssertionAcquiredWithIdentifier:self->_assertionID for:self->_keyIdentifier];
    goto LABEL_11;
  }

  v19 = SESDefaultLogObject();
  if (keepAlive)
  {
    v8 = [keepAlive bleUUID];
  }

  v20 = [(NSData *)self->_keyIdentifier asHexString];
  v17 = SESCreateAndLogError();

  if (keepAlive)
  {
  }

LABEL_14:

  return v17;
}

- (void)stop:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_remoteObject)
  {
    return;
  }

  if (a3 || ([@"A000000809434343444B417631" hexStringAsData], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToData:", self->_appletIdentifier), v5, !v6))
  {
    v8 = [@"A000000909ACCE5501" hexStringAsData];
    v9 = [v8 isEqualToData:self->_appletIdentifier];

    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = +[_TtC10seserviced12LyonExternal shared];
    [v7 updatePassSelectionState:0];
  }

  else
  {
    v7 = +[_TtC10seserviced14AlishaExternal shared];
    [v7 onAssertionReleasedWithIdentifier:self->_assertionID for:self->_keyIdentifier];
  }

LABEL_8:
  keepAlive = self->_keepAlive;
  self->_keepAlive = 0;

  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;

  didEndCallback = self->_didEndCallback;
  if (didEndCallback)
  {
    didEndCallback[2](didEndCallback, self);
    v13 = self->_didEndCallback;
    self->_didEndCallback = 0;
  }
}

- (BOOL)isEquivalentForKeyIdentifier:(id)a3 appletIdentifier:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToData:self->_keyIdentifier])
  {
    v7 = [v6 isEqualToData:self->_appletIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)invalidate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061A24;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end