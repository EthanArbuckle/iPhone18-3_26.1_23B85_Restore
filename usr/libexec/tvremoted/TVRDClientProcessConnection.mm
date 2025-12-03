@interface TVRDClientProcessConnection
- (NSString)description;
- (TVRDClientProcessConnection)initWithXPCConnection:(id)connection delegate:(id)delegate;
- (TVRDClientProcessConnectionDelegate)delegate;
- (void)_invalidateRemoteAlertHandle;
- (void)_removeAllIdentifiers;
- (void)_removeIdentifier:(id)identifier;
- (void)addItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)beginDeviceQueryWithResponse:(id)response;
- (void)cancelAuthChallengeForDeviceWithIdentifier:(id)identifier;
- (void)closeConnectionToDeviceWithIdentifier:(id)identifier withType:(unint64_t)type;
- (void)dealloc;
- (void)endDeviceQuery;
- (void)fetchActiveMREndpointUIDWithCompletion:(id)completion;
- (void)fetchLaunchableAppsForDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchUpNextInfoForDeviceWithIdentifier:(id)identifier paginationToken:(id)token completion:(id)completion;
- (void)fulfillAuthChallengeForDeviceWithIdentifier:(id)identifier withLocallyEnteredCode:(id)code;
- (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier response:(id)response;
- (void)getSuggestedDevicesWithResponse:(id)response;
- (void)launchAppForDeviceWithIdentifier:(id)identifier bundleID:(id)d completion:(id)completion;
- (void)launchViewServiceForDeviceWithIdentifier:(id)identifier;
- (void)markAsWatchedForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)openConnectionToDeviceWithIdentifier:(id)identifier connectionContext:(int64_t)context;
- (void)playItem:(id)item deviceIdentifier:(id)identifier completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)removeInterestForDeviceWithIdentifier:(id)identifier;
- (void)removeItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)sendButtonEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)sendEvent:(id)event toDeviceWithIdentifier:(id)identifier options:(id)options response:(id)response;
- (void)sendGameControllerEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)sendInputReturnKeyToDeviceWithIdentifier:(id)identifier;
- (void)sendInputText:(id)text toDeviceWithIdentifier:(id)identifier;
- (void)sendInputTextPayload:(id)payload toDeviceWithIdentifier:(id)identifier;
- (void)sendTouchEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)updateDeviceIdentifier:(id)identifier to:(id)to;
@end

@implementation TVRDClientProcessConnection

- (TVRDClientProcessConnection)initWithXPCConnection:(id)connection delegate:(id)delegate
{
  connectionCopy = connection;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = TVRDClientProcessConnection;
  v9 = [(TVRDClientProcessConnection *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v11 = objc_alloc_init(NSMutableSet);
    mutableIdentifiers = v10->_mutableIdentifiers;
    v10->_mutableIdentifiers = v11;

    objc_storeStrong(&v10->_xpcConnection, connection);
    xpcConnection = v10->_xpcConnection;
    v14 = +[TVRCXPCProtocolManager requestInterface];
    [(NSXPCConnection *)xpcConnection setExportedInterface:v14];

    [(NSXPCConnection *)v10->_xpcConnection setExportedObject:v10];
    v15 = v10->_xpcConnection;
    v16 = +[TVRCXPCProtocolManager responseInterface];
    [(NSXPCConnection *)v15 setRemoteObjectInterface:v16];

    objc_initWeak(&location, v10);
    v17 = v10->_xpcConnection;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke;
    v27[3] = &unk_100020610;
    objc_copyWeak(&v28, &location);
    [(NSXPCConnection *)v17 setInterruptionHandler:v27];
    v18 = v10->_xpcConnection;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke_2;
    v25[3] = &unk_100020610;
    objc_copyWeak(&v26, &location);
    [(NSXPCConnection *)v18 setInvalidationHandler:v25];
    v19 = [(NSXPCConnection *)v10->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    remoteObjectProxy = v10->_remoteObjectProxy;
    v10->_remoteObjectProxy = v19;

    if (+[TVRCFeatures isPersistOnLockScreenEnabled])
    {
      v21 = _TVRDXPCLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Persist on Lock Screen Internal Setting is turned on", v24, 2u);
      }

      v22 = +[TVRDAssertionManager sharedInstance];
      [v22 acquireLockScreenAssertion];
    }

    [(NSXPCConnection *)v10->_xpcConnection resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v4, 2u);
  }

  [WeakRetained _removeAllIdentifiers];
  v3 = objc_loadWeakRetained(WeakRetained + 1);
  [v3 clientConnectionSeveredConnection:WeakRetained];
}

void __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", v4, 2u);
  }

  [WeakRetained _removeAllIdentifiers];
  v3 = objc_loadWeakRetained(WeakRetained + 1);
  [v3 clientConnectionSeveredConnection:WeakRetained];
}

void __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke_3(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke_3_cold_1(v2, v3);
  }
}

- (void)dealloc
{
  v3 = +[TVRDAssertionManager sharedInstance];
  [v3 releaseLockScreenAssertion];

  v4.receiver = self;
  v4.super_class = TVRDClientProcessConnection;
  [(TVRDClientProcessConnection *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  xpcConnection = [(TVRDClientProcessConnection *)self xpcConnection];
  v5 = -[TVRDClientProcessConnection _processNameForPid:](self, "_processNameForPid:", [xpcConnection processIdentifier]);
  xpcConnection2 = [(TVRDClientProcessConnection *)self xpcConnection];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%d", v5, [xpcConnection2 processIdentifier]);

  [v3 appendString:v7 withName:@"process"];
  build = [v3 build];

  return build;
}

- (void)openConnectionToDeviceWithIdentifier:(id)identifier connectionContext:(int64_t)context
{
  identifierCopy = identifier;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    selfCopy = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Open connection to device %{public}@", &v12, 0xCu);
  }

  if (([(NSMutableSet *)self->_mutableIdentifiers containsObject:identifierCopy]& 1) != 0)
  {
    v8 = _TVRDXPCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifiers = [(TVRDClientProcessConnection *)self deviceIdentifiers];
      v12 = 138412802;
      selfCopy = self;
      v14 = 2114;
      v15 = identifierCopy;
      v16 = 2112;
      v17 = deviceIdentifiers;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ is already interested in identifier %{public}@. All interested IDs - %@", &v12, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientConnection:self reiteratedInterestInDeviceIdentifier:identifierCopy connectionContext:context];
  }

  else
  {
    [(NSMutableSet *)self->_mutableIdentifiers addObject:identifierCopy];
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 clientConnection:self addedInterestedDeviceIdentifier:identifierCopy connectionContext:context];

    notify_post("com.apple.TVRemoteCore.connectionRequested");
  }
}

- (void)closeConnectionToDeviceWithIdentifier:(id)identifier withType:(unint64_t)type
{
  identifierCopy = identifier;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = identifierCopy;
    v20 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Close connection to device %{public}@ with type %ld", buf, 0x16u);
  }

  if ([(NSMutableSet *)self->_mutableIdentifiers containsObject:identifierCopy])
  {
    if (type == 1 && (+[TVRCFeatures isWakeToRemoteOnLockScreenDisabled]& 1) == 0)
    {
      v14 = _TVRDXPCLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Disconnect type for device %@ is unknown. Acquiring lock screen assertion.", buf, 0xCu);
      }

      v8 = +[TVRDAssertionManager sharedInstance];
      [v8 acquireLockScreenAssertion];
      goto LABEL_19;
    }

    if ((+[TVRCFeatures isPersistOnLockScreenEnabled]& 1) != 0)
    {
      v8 = _TVRDXPCLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Persist on Lock Screen Internal Setting is turned on. Skipping releasing lock screen assertion.";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      }
    }

    else
    {
      v10 = +[TVRDAssertionManager sharedInstance];
      isLockScreenAssertionActive = [v10 isLockScreenAssertionActive];

      v8 = _TVRDXPCLog();
      v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (isLockScreenAssertionActive)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Releasing lock screen assertion in 1 second", buf, 2u);
        }

        objc_initWeak(buf, self);
        v13 = dispatch_time(0, 1000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __78__TVRDClientProcessConnection_closeConnectionToDeviceWithIdentifier_withType___block_invoke;
        block[3] = &unk_100020610;
        objc_copyWeak(&v17, buf);
        dispatch_after(v13, &_dispatch_main_q, block);
        objc_destroyWeak(&v17);
        objc_destroyWeak(buf);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 0;
        v9 = "Lock screen assertion is inactive";
        goto LABEL_18;
      }
    }

LABEL_19:

LABEL_20:
    [(NSMutableSet *)self->_mutableIdentifiers removeObject:identifierCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self removedInterestedDeviceIdentifier:identifierCopy];
}

uint64_t __78__TVRDClientProcessConnection_closeConnectionToDeviceWithIdentifier_withType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && ![WeakRetained[4] count])
  {
    v2 = +[TVRDAssertionManager sharedInstance];
    [v2 releaseLockScreenAssertion];
  }

  return _objc_release_x1();
}

- (void)fulfillAuthChallengeForDeviceWithIdentifier:(id)identifier withLocallyEnteredCode:(id)code
{
  identifierCopy = identifier;
  codeCopy = code;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = identifierCopy;
    v12 = 2114;
    v13 = codeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fulfill auth challenge for device %@ with locally-entered code %{public}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self receivedAuthChallengeLocallyEnteredCode:codeCopy forDeviceIdentifier:identifierCopy];
}

- (void)cancelAuthChallengeForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel auth challenge for device %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self cancelledAuthChallengeForDeviceIdentifier:identifierCopy];
}

- (void)sendButtonEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = eventCopy;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send button event %{public}@ to device %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingButtonEvent:eventCopy toDeviceIdentifier:identifierCopy];
}

- (void)sendTouchEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingTouchEvent:eventCopy toDeviceIdentifier:identifierCopy];
}

- (void)sendGameControllerEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = eventCopy;
    v12 = 2114;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send game controller event %{public}@ device %{public}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingGameControllerEvent:eventCopy toDeviceIdentifier:identifierCopy];
}

- (void)sendInputText:(id)text toDeviceWithIdentifier:(id)identifier
{
  textCopy = text;
  identifierCopy = identifier;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = textCopy;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send input text '%@' to device %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingInputText:textCopy toDeviceIdentifier:identifierCopy];
}

- (void)sendInputReturnKeyToDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Send return key to device %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingInputReturnKeyToDeviceIdentifier:identifierCopy];
}

- (void)sendInputTextPayload:(id)payload toDeviceWithIdentifier:(id)identifier
{
  payloadCopy = payload;
  identifierCopy = identifier;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = payloadCopy;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send data payload %@ to device %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingInputDataPayload:payloadCopy toDeviceIdentifier:identifierCopy];
}

- (void)beginDeviceQueryWithResponse:(id)response
{
  responseCopy = response;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = 136315394;
    v9 = "[TVRDClientProcessConnection beginDeviceQueryWithResponse:]";
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with delegate:%@", &v8, 0x16u);
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 clientConnectionRequestsStartingDeviceQuery:self withResponse:responseCopy];
}

- (void)endDeviceQuery
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = 136315394;
    v7 = "[TVRDClientProcessConnection endDeviceQuery]";
    v8 = 2112;
    v9 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s with delegate:%@", &v6, 0x16u);
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 clientConnectionRequestsEndingDeviceQuery:self];
}

- (void)getSuggestedDevicesWithResponse:(id)response
{
  responseCopy = response;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client requests suggested device", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSuggestedDeviceWithResponse:responseCopy];
}

- (void)removeInterestForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing device identifier: %{public}@", &v12, 0xCu);
  }

  [(TVRDClientProcessConnection *)self _removeIdentifier:identifierCopy];
  v6 = _TVRDXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mutableIdentifiers = [(TVRDClientProcessConnection *)self mutableIdentifiers];
    v12 = 138543362;
    v13 = mutableIdentifiers;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device identifiers interested to connect: %{public}@", &v12, 0xCu);
  }

  mutableIdentifiers2 = [(TVRDClientProcessConnection *)self mutableIdentifiers];
  if ([mutableIdentifiers2 count])
  {
    goto LABEL_10;
  }

  v9 = +[TVRDAssertionManager sharedInstance];
  isLockScreenAssertionActive = [v9 isLockScreenAssertionActive];

  if (isLockScreenAssertionActive)
  {
    v11 = _TVRDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Releasing lock screen assertion", &v12, 2u);
    }

    mutableIdentifiers2 = +[TVRDAssertionManager sharedInstance];
    [mutableIdentifiers2 releaseLockScreenAssertion];
LABEL_10:
  }
}

- (void)fetchActiveMREndpointUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[TVRCMediaRemoteEndpointManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__TVRDClientProcessConnection_fetchActiveMREndpointUIDWithCompletion___block_invoke;
  v6[3] = &unk_100020658;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 fetchActiveEndpointWithCompletion:v6];
}

uint64_t __70__TVRDClientProcessConnection_fetchActiveMREndpointUIDWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendEvent:(id)event toDeviceWithIdentifier:(id)identifier options:(id)options response:(id)response
{
  responseCopy = response;
  optionsCopy = options;
  identifierCopy = identifier;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingEvent:eventCopy toDeviceWithIdentifier:identifierCopy options:optionsCopy response:responseCopy];
}

- (void)launchViewServiceForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[TVRDClientProcessConnection launchViewServiceForDeviceWithIdentifier:]";
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, deviceIdentifier=%@", &v13, 0x16u);
  }

  v6 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.TVRemoteUIService" viewControllerClassName:@"TVRemoteAlertViewController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_100021248 forKeyedSubscript:@"deviceType"];
  [v8 setObject:&off_100021260 forKeyedSubscript:@"launchContext"];
  [v8 setObject:&off_100021248 forKeyedSubscript:@"deviceIdentifierType"];
  if ([identifierCopy length])
  {
    [v8 setObject:identifierCopy forKeyedSubscript:@"deviceIdentifier"];
  }

  v9 = [NSDictionary dictionaryWithDictionary:v8];
  [v7 setUserInfo:v9];

  v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:v7];
  [v10 registerObserver:self];
  v11 = objc_alloc_init(SBSRemoteAlertActivationContext);
  v12 = _TVRDXPCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activating view service context", &v13, 2u);
  }

  [v10 activateWithContext:v11];
  [(TVRDClientProcessConnection *)self setAlertHandle:v10];
}

- (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier response:(id)response
{
  responseCopy = response;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained clientConnection:self isConnectedToDeviceWithIdentifier:identifierCopy];

  responseCopy[2](responseCopy, v8);
}

- (void)fetchUpNextInfoForDeviceWithIdentifier:(id)identifier paginationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  identifierCopy = identifier;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning UpNext info", v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self fetchUpNextInfoForDeviceWithIdentifier:identifierCopy paginationToken:tokenCopy completion:completionCopy];
}

- (void)markAsWatchedForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = mediaIdentifierCopy;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Marking %@ as watched on %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self markAsWatchedForDeviceWithIdentifier:identifierCopy mediaIdentifier:mediaIdentifierCopy completion:completionCopy];
}

- (void)addItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = mediaIdentifierCopy;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding %@ to UpNext %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self addItemForDeviceWithIdentifier:identifierCopy mediaIdentifier:mediaIdentifierCopy completion:completionCopy];
}

- (void)removeItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = mediaIdentifierCopy;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing %@ from UpNext %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self removeItemForDeviceWithIdentifier:identifierCopy mediaIdentifier:mediaIdentifierCopy completion:completionCopy];
}

- (void)playItem:(id)item deviceIdentifier:(id)identifier completion:(id)completion
{
  itemCopy = item;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = itemCopy;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Playing %@ on %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self playItem:itemCopy deviceIdentifier:identifierCopy completion:completionCopy];
}

- (void)fetchLaunchableAppsForDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching launchable apps on %{public}@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self fetchLaunchableAppsForDeviceWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)launchAppForDeviceWithIdentifier:(id)identifier bundleID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = identifierCopy;
    v15 = 2114;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launching app on %{public}@ bundleID=%{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self launchAppForDeviceWithIdentifier:identifierCopy bundleID:dCopy completion:completionCopy];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = _TVRDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRDClientProcessConnection remoteAlertHandleDidDeactivate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRDClientProcessConnection *)self _invalidateRemoteAlertHandle];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = _TVRDXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [TVRDClientProcessConnection remoteAlertHandle:errorCopy didInvalidateWithError:v6];
  }

  [(TVRDClientProcessConnection *)self _invalidateRemoteAlertHandle];
}

- (void)_invalidateRemoteAlertHandle
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TVRDClientProcessConnection _invalidateRemoteAlertHandle]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  alertHandle = [(TVRDClientProcessConnection *)self alertHandle];
  [alertHandle unregisterObserver:self];

  alertHandle2 = [(TVRDClientProcessConnection *)self alertHandle];
  [alertHandle2 invalidate];

  [(TVRDClientProcessConnection *)self setAlertHandle:0];
}

- (void)_removeAllIdentifiers
{
  deviceIdentifiers = [(TVRDClientProcessConnection *)self deviceIdentifiers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [deviceIdentifiers countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(deviceIdentifiers);
        }

        [(TVRDClientProcessConnection *)self _removeIdentifier:*(*(&v11 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [deviceIdentifiers countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnectionRequestsEndingDeviceQuery:self];

  v9 = _TVRDXPCLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(NSMutableSet *)self->_mutableIdentifiers count];
    *buf = 67109120;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "After removing all identifiers for connection, counted set now has %d elements.", buf, 8u);
  }
}

- (void)_removeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(NSMutableSet *)self->_mutableIdentifiers containsObject:?])
  {
    [(NSMutableSet *)self->_mutableIdentifiers removeObject:identifierCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientConnection:self removedInterestedDeviceIdentifier:identifierCopy];
  }
}

- (void)updateDeviceIdentifier:(id)identifier to:(id)to
{
  identifierCopy = identifier;
  toCopy = to;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = identifierCopy;
    v11 = 2112;
    v12 = toCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating identifier from: %@ to: %@", &v9, 0x16u);
  }

  if (([(NSMutableSet *)self->_mutableIdentifiers containsObject:toCopy]& 1) == 0 && [(NSMutableSet *)self->_mutableIdentifiers containsObject:identifierCopy])
  {
    [(NSMutableSet *)self->_mutableIdentifiers removeObject:identifierCopy];
    [(NSMutableSet *)self->_mutableIdentifiers addObject:toCopy];
  }
}

- (TVRDClientProcessConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__TVRDClientProcessConnection_initWithXPCConnection_delegate___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed getting remote object proxy %{public}@", &v2, 0xCu);
}

- (void)remoteAlertHandle:(uint64_t)a1 didInvalidateWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[TVRDClientProcessConnection remoteAlertHandle:didInvalidateWithError:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s, error=%@", &v2, 0x16u);
}

@end