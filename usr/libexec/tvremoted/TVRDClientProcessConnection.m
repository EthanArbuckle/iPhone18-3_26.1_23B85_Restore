@interface TVRDClientProcessConnection
- (NSString)description;
- (TVRDClientProcessConnection)initWithXPCConnection:(id)a3 delegate:(id)a4;
- (TVRDClientProcessConnectionDelegate)delegate;
- (void)_invalidateRemoteAlertHandle;
- (void)_removeAllIdentifiers;
- (void)_removeIdentifier:(id)a3;
- (void)addItemForDeviceWithIdentifier:(id)a3 mediaIdentifier:(id)a4 completion:(id)a5;
- (void)beginDeviceQueryWithResponse:(id)a3;
- (void)cancelAuthChallengeForDeviceWithIdentifier:(id)a3;
- (void)closeConnectionToDeviceWithIdentifier:(id)a3 withType:(unint64_t)a4;
- (void)dealloc;
- (void)endDeviceQuery;
- (void)fetchActiveMREndpointUIDWithCompletion:(id)a3;
- (void)fetchLaunchableAppsForDeviceWithIdentifier:(id)a3 completion:(id)a4;
- (void)fetchUpNextInfoForDeviceWithIdentifier:(id)a3 paginationToken:(id)a4 completion:(id)a5;
- (void)fulfillAuthChallengeForDeviceWithIdentifier:(id)a3 withLocallyEnteredCode:(id)a4;
- (void)getConnectionStatusToDeviceWithIdentifier:(id)a3 response:(id)a4;
- (void)getSuggestedDevicesWithResponse:(id)a3;
- (void)launchAppForDeviceWithIdentifier:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)launchViewServiceForDeviceWithIdentifier:(id)a3;
- (void)markAsWatchedForDeviceWithIdentifier:(id)a3 mediaIdentifier:(id)a4 completion:(id)a5;
- (void)openConnectionToDeviceWithIdentifier:(id)a3 connectionContext:(int64_t)a4;
- (void)playItem:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)removeInterestForDeviceWithIdentifier:(id)a3;
- (void)removeItemForDeviceWithIdentifier:(id)a3 mediaIdentifier:(id)a4 completion:(id)a5;
- (void)sendButtonEvent:(id)a3 toDeviceWithIdentifier:(id)a4;
- (void)sendEvent:(id)a3 toDeviceWithIdentifier:(id)a4 options:(id)a5 response:(id)a6;
- (void)sendGameControllerEvent:(id)a3 toDeviceWithIdentifier:(id)a4;
- (void)sendInputReturnKeyToDeviceWithIdentifier:(id)a3;
- (void)sendInputText:(id)a3 toDeviceWithIdentifier:(id)a4;
- (void)sendInputTextPayload:(id)a3 toDeviceWithIdentifier:(id)a4;
- (void)sendTouchEvent:(id)a3 toDeviceWithIdentifier:(id)a4;
- (void)updateDeviceIdentifier:(id)a3 to:(id)a4;
@end

@implementation TVRDClientProcessConnection

- (TVRDClientProcessConnection)initWithXPCConnection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = TVRDClientProcessConnection;
  v9 = [(TVRDClientProcessConnection *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v11 = objc_alloc_init(NSMutableSet);
    mutableIdentifiers = v10->_mutableIdentifiers;
    v10->_mutableIdentifiers = v11;

    objc_storeStrong(&v10->_xpcConnection, a3);
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
  v4 = [(TVRDClientProcessConnection *)self xpcConnection];
  v5 = -[TVRDClientProcessConnection _processNameForPid:](self, "_processNameForPid:", [v4 processIdentifier]);
  v6 = [(TVRDClientProcessConnection *)self xpcConnection];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%d", v5, [v6 processIdentifier]);

  [v3 appendString:v7 withName:@"process"];
  v8 = [v3 build];

  return v8;
}

- (void)openConnectionToDeviceWithIdentifier:(id)a3 connectionContext:(int64_t)a4
{
  v6 = a3;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Open connection to device %{public}@", &v12, 0xCu);
  }

  if (([(NSMutableSet *)self->_mutableIdentifiers containsObject:v6]& 1) != 0)
  {
    v8 = _TVRDXPCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(TVRDClientProcessConnection *)self deviceIdentifiers];
      v12 = 138412802;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ is already interested in identifier %{public}@. All interested IDs - %@", &v12, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientConnection:self reiteratedInterestInDeviceIdentifier:v6 connectionContext:a4];
  }

  else
  {
    [(NSMutableSet *)self->_mutableIdentifiers addObject:v6];
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 clientConnection:self addedInterestedDeviceIdentifier:v6 connectionContext:a4];

    notify_post("com.apple.TVRemoteCore.connectionRequested");
  }
}

- (void)closeConnectionToDeviceWithIdentifier:(id)a3 withType:(unint64_t)a4
{
  v6 = a3;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v6;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Close connection to device %{public}@ with type %ld", buf, 0x16u);
  }

  if ([(NSMutableSet *)self->_mutableIdentifiers containsObject:v6])
  {
    if (a4 == 1 && (+[TVRCFeatures isWakeToRemoteOnLockScreenDisabled]& 1) == 0)
    {
      v14 = _TVRDXPCLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v6;
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
      v11 = [v10 isLockScreenAssertionActive];

      v8 = _TVRDXPCLog();
      v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v11)
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
    [(NSMutableSet *)self->_mutableIdentifiers removeObject:v6];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self removedInterestedDeviceIdentifier:v6];
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

- (void)fulfillAuthChallengeForDeviceWithIdentifier:(id)a3 withLocallyEnteredCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fulfill auth challenge for device %@ with locally-entered code %{public}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self receivedAuthChallengeLocallyEnteredCode:v7 forDeviceIdentifier:v6];
}

- (void)cancelAuthChallengeForDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel auth challenge for device %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self cancelledAuthChallengeForDeviceIdentifier:v4];
}

- (void)sendButtonEvent:(id)a3 toDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send button event %{public}@ to device %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingButtonEvent:v6 toDeviceIdentifier:v7];
}

- (void)sendTouchEvent:(id)a3 toDeviceWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingTouchEvent:v7 toDeviceIdentifier:v6];
}

- (void)sendGameControllerEvent:(id)a3 toDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send game controller event %{public}@ device %{public}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingGameControllerEvent:v6 toDeviceIdentifier:v7];
}

- (void)sendInputText:(id)a3 toDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send input text '%@' to device %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingInputText:v6 toDeviceIdentifier:v7];
}

- (void)sendInputReturnKeyToDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Send return key to device %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingInputReturnKeyToDeviceIdentifier:v4];
}

- (void)sendInputTextPayload:(id)a3 toDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send data payload %@ to device %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingInputDataPayload:v6 toDeviceIdentifier:v7];
}

- (void)beginDeviceQueryWithResponse:(id)a3
{
  v4 = a3;
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
  [v7 clientConnectionRequestsStartingDeviceQuery:self withResponse:v4];
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

- (void)getSuggestedDevicesWithResponse:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client requests suggested device", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSuggestedDeviceWithResponse:v4];
}

- (void)removeInterestForDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing device identifier: %{public}@", &v12, 0xCu);
  }

  [(TVRDClientProcessConnection *)self _removeIdentifier:v4];
  v6 = _TVRDXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TVRDClientProcessConnection *)self mutableIdentifiers];
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device identifiers interested to connect: %{public}@", &v12, 0xCu);
  }

  v8 = [(TVRDClientProcessConnection *)self mutableIdentifiers];
  if ([v8 count])
  {
    goto LABEL_10;
  }

  v9 = +[TVRDAssertionManager sharedInstance];
  v10 = [v9 isLockScreenAssertionActive];

  if (v10)
  {
    v11 = _TVRDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Releasing lock screen assertion", &v12, 2u);
    }

    v8 = +[TVRDAssertionManager sharedInstance];
    [v8 releaseLockScreenAssertion];
LABEL_10:
  }
}

- (void)fetchActiveMREndpointUIDWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[TVRCMediaRemoteEndpointManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__TVRDClientProcessConnection_fetchActiveMREndpointUIDWithCompletion___block_invoke;
  v6[3] = &unk_100020658;
  v7 = v3;
  v5 = v3;
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

- (void)sendEvent:(id)a3 toDeviceWithIdentifier:(id)a4 options:(id)a5 response:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self requestsSendingEvent:v13 toDeviceWithIdentifier:v12 options:v11 response:v10];
}

- (void)launchViewServiceForDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[TVRDClientProcessConnection launchViewServiceForDeviceWithIdentifier:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, deviceIdentifier=%@", &v13, 0x16u);
  }

  v6 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.TVRemoteUIService" viewControllerClassName:@"TVRemoteAlertViewController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_100021248 forKeyedSubscript:@"deviceType"];
  [v8 setObject:&off_100021260 forKeyedSubscript:@"launchContext"];
  [v8 setObject:&off_100021248 forKeyedSubscript:@"deviceIdentifierType"];
  if ([v4 length])
  {
    [v8 setObject:v4 forKeyedSubscript:@"deviceIdentifier"];
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

- (void)getConnectionStatusToDeviceWithIdentifier:(id)a3 response:(id)a4
{
  v9 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained clientConnection:self isConnectedToDeviceWithIdentifier:v6];

  v9[2](v9, v8);
}

- (void)fetchUpNextInfoForDeviceWithIdentifier:(id)a3 paginationToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning UpNext info", v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self fetchUpNextInfoForDeviceWithIdentifier:v10 paginationToken:v9 completion:v8];
}

- (void)markAsWatchedForDeviceWithIdentifier:(id)a3 mediaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Marking %@ as watched on %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self markAsWatchedForDeviceWithIdentifier:v8 mediaIdentifier:v9 completion:v10];
}

- (void)addItemForDeviceWithIdentifier:(id)a3 mediaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding %@ to UpNext %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self addItemForDeviceWithIdentifier:v8 mediaIdentifier:v9 completion:v10];
}

- (void)removeItemForDeviceWithIdentifier:(id)a3 mediaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing %@ from UpNext %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self removeItemForDeviceWithIdentifier:v8 mediaIdentifier:v9 completion:v10];
}

- (void)playItem:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Playing %@ on %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self playItem:v8 deviceIdentifier:v9 completion:v10];
}

- (void)fetchLaunchableAppsForDeviceWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching launchable apps on %{public}@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self fetchLaunchableAppsForDeviceWithIdentifier:v6 completion:v7];
}

- (void)launchAppForDeviceWithIdentifier:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _TVRDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launching app on %{public}@ bundleID=%{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientConnection:self launchAppForDeviceWithIdentifier:v8 bundleID:v9 completion:v10];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
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

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = _TVRDXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [TVRDClientProcessConnection remoteAlertHandle:v5 didInvalidateWithError:v6];
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

  v4 = [(TVRDClientProcessConnection *)self alertHandle];
  [v4 unregisterObserver:self];

  v5 = [(TVRDClientProcessConnection *)self alertHandle];
  [v5 invalidate];

  [(TVRDClientProcessConnection *)self setAlertHandle:0];
}

- (void)_removeAllIdentifiers
{
  v3 = [(TVRDClientProcessConnection *)self deviceIdentifiers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(TVRDClientProcessConnection *)self _removeIdentifier:*(*(&v11 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
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

- (void)_removeIdentifier:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_mutableIdentifiers containsObject:?])
  {
    [(NSMutableSet *)self->_mutableIdentifiers removeObject:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientConnection:self removedInterestedDeviceIdentifier:v5];
  }
}

- (void)updateDeviceIdentifier:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating identifier from: %@ to: %@", &v9, 0x16u);
  }

  if (([(NSMutableSet *)self->_mutableIdentifiers containsObject:v7]& 1) == 0 && [(NSMutableSet *)self->_mutableIdentifiers containsObject:v6])
  {
    [(NSMutableSet *)self->_mutableIdentifiers removeObject:v6];
    [(NSMutableSet *)self->_mutableIdentifiers addObject:v7];
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