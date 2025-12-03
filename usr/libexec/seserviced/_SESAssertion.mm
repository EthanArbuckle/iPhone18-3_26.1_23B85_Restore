@interface _SESAssertion
+ (id)validateEntitlements:(id)entitlements appletIdentifier:(id)identifier;
- (BOOL)isEquivalentForKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier;
- (_SESAssertion)initWithRemoteObject:(id)object keyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier options:(id)options queue:(id)queue;
- (id)start:(BOOL)start;
- (void)invalidate:(id)invalidate;
- (void)stop:(BOOL)stop;
@end

@implementation _SESAssertion

- (_SESAssertion)initWithRemoteObject:(id)object keyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier options:(id)options queue:(id)queue
{
  objectCopy = object;
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  optionsCopy = options;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = _SESAssertion;
  v18 = [(_SESAssertion *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_remoteObject, object);
    objc_storeStrong(&v19->_queue, queue);
    hexStringAsData = [identifierCopy hexStringAsData];
    keyIdentifier = v19->_keyIdentifier;
    v19->_keyIdentifier = hexStringAsData;

    hexStringAsData2 = [appletIdentifierCopy hexStringAsData];
    appletIdentifier = v19->_appletIdentifier;
    v19->_appletIdentifier = hexStringAsData2;

    objc_storeStrong(&v19->_options, options);
    v24 = [NSString stringWithFormat:@"%@", v19];
    assertionID = v19->_assertionID;
    v19->_assertionID = v24;
  }

  return v19;
}

+ (id)validateEntitlements:(id)entitlements appletIdentifier:(id)identifier
{
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  hexStringAsData = [identifierCopy hexStringAsData];
  v8 = [_SESSessionClientInfo withConnection:entitlementsCopy];

  hexStringAsData2 = [@"A000000809434343444B417631" hexStringAsData];
  v10 = [hexStringAsData2 isEqualToData:hexStringAsData];

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
    hexStringAsData3 = [@"A000000909ACCE5501" hexStringAsData];
    v13 = [hexStringAsData3 isEqualToData:hexStringAsData];

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
  clientName = [v8 clientName];
  v11 = SESCreateAndLogError();

LABEL_8:
LABEL_9:

  return v11;
}

- (id)start:(BOOL)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_queue);
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v23 = 1024;
    v24 = startCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SESAssertion start %@ bridged %d", buf, 0x12u);
  }

  if (startCopy || ([@"A000000809434343444B417631" hexStringAsData], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToData:", self->_appletIdentifier), v6, !v7))
  {
    hexStringAsData = [@"A000000909ACCE5501" hexStringAsData];
    v14 = [hexStringAsData isEqualToData:self->_appletIdentifier];

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

  bleUUID2 = &unk_1004FF000;
  v9 = +[_TtC10seserviced14AlishaExternal shared];
  keepAlive = [v9 getEndpointWithKeyIdentifier:self->_keyIdentifier];

  bleUUID = [keepAlive bleUUID];

  if (bleUUID)
  {
    v12 = +[_TtC10seserviced14AlishaExternal shared];
    [v12 onAssertionAcquiredWithIdentifier:self->_assertionID for:self->_keyIdentifier];
    goto LABEL_11;
  }

  v19 = SESDefaultLogObject();
  if (keepAlive)
  {
    bleUUID2 = [keepAlive bleUUID];
  }

  asHexString = [(NSData *)self->_keyIdentifier asHexString];
  v17 = SESCreateAndLogError();

  if (keepAlive)
  {
  }

LABEL_14:

  return v17;
}

- (void)stop:(BOOL)stop
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_remoteObject)
  {
    return;
  }

  if (stop || ([@"A000000809434343444B417631" hexStringAsData], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToData:", self->_appletIdentifier), v5, !v6))
  {
    hexStringAsData = [@"A000000909ACCE5501" hexStringAsData];
    v9 = [hexStringAsData isEqualToData:self->_appletIdentifier];

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

- (BOOL)isEquivalentForKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier
{
  appletIdentifierCopy = appletIdentifier;
  if ([identifier isEqualToData:self->_keyIdentifier])
  {
    v7 = [appletIdentifierCopy isEqualToData:self->_appletIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)invalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061A24;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = invalidateCopy;
  v6 = invalidateCopy;
  dispatch_async(queue, v7);
}

@end