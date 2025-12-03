@interface SDUnlockXPCSession
- (BOOL)checkEntitlementWithHandler:(id)handler;
- (NSString)bundleID;
- (void)attemptAutoUnlockForSiriWithClientProxy:(id)proxy;
- (void)attemptAutoUnlockWithClientProxy:(id)proxy;
- (void)attemptAutoUnlockWithoutNotifyingWatchWithClientProxy:(id)proxy;
- (void)authPromptInfoWithCompletionHandler:(id)handler;
- (void)authenticateUsingClientProxy:(id)proxy type:(unint64_t)type sessionID:(id)d options:(id)options;
- (void)autoUnlockStateWithCompletionHandler:(id)handler;
- (void)canAuthenticateUsingClientProxy:(id)proxy authenticationType:(unint64_t)type options:(id)options sessionID:(id)d;
- (void)cancelAuthenticationSessionWithID:(id)d;
- (void)cancelAutoUnlock;
- (void)cancelAutoUnlock:(BOOL)unlock;
- (void)cancelEnablingAutoUnlockForDevice:(id)device;
- (void)disableAutoUnlockForDevice:(id)device completionHandler:(id)handler;
- (void)disableUnlockWithDevice:(id)device completionHandler:(id)handler;
- (void)disableUsingClientProxy:(id)proxy authenticationType:(unint64_t)type device:(id)device sessionID:(id)d;
- (void)eligibleAutoUnlockDevicesWithCompletionHandler:(id)handler;
- (void)enableAutoUnlockWithDevice:(id)device passcode:(id)passcode clientProxy:(id)proxy;
- (void)enableUnlockWithDevice:(id)device fromKey:(BOOL)key withPasscode:(id)passcode completionHandler:(id)handler;
- (void)enableUsingClientProxy:(id)proxy authenticationType:(unint64_t)type device:(id)device passcode:(id)passcode sessionID:(id)d;
- (void)establishStashBagWithCompletionHandler:(id)handler;
- (void)establishStashBagWithManifest:(id)manifest completionHandler:(id)handler;
- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)listEligibleDevicesForAuthenticationType:(unint64_t)type completionHandler:(id)handler;
- (void)manager:(id)manager didCompleteAuthenticationFor:(id)for;
- (void)manager:(id)manager didDisableAuthenticationFor:(id)for;
- (void)manager:(id)manager didEnableAuthenticationFor:(id)for;
- (void)manager:(id)manager didFailApproveFor:(id)for error:(id)error;
- (void)manager:(id)manager didFailAuthenticationFor:(id)for error:(id)error;
- (void)manager:(id)manager didFailToDisableDeviceFor:(id)for error:(id)error;
- (void)manager:(id)manager didFailToEnableDeviceFor:(id)for error:(id)error;
- (void)manager:(id)manager didReceiveApproveRequestFor:(id)for info:(id)info;
- (void)manager:(id)manager didStartAuthenticationFor:(id)for;
- (void)notifyDelegate;
- (void)prewarmAutoUnlock;
- (void)registerForApprovalRequestsUsingClientProxy:(id)proxy forType:(unint64_t)type;
- (void)repairCloudPairing;
- (void)reportUserApprovalWithACMToken:(id)token error:(id)error sessionID:(id)d;
- (void)requestEnablementUsingClientProxy:(id)proxy authenticationType:(unint64_t)type device:(id)device sessionID:(id)d;
- (void)requestRelock;
- (void)session:(id)session didBeginAttemptWithDevice:(id)device;
- (void)session:(id)session didCompleteUnlockWithDevice:(id)device;
- (void)session:(id)session didEnableWithDevice:(id)device;
- (void)session:(id)session didFailToEnableDevice:(id)device error:(id)error;
- (void)session:(id)session didFailUnlockWithResults:(id)results error:(id)error incrementedAttempt:(BOOL)attempt;
- (void)session:(id)session didReceiveKeyDeviceLocked:(id)locked;
- (void)startObservingAuthentationStateChangesWithObserver:(id)observer forIdentifier:(id)identifier;
- (void)stopObservingAuthentationStateChangesForIdentifier:(id)identifier;
- (void)unlockEnabledWithDevice:(id)device completionHandler:(id)handler;
- (void)unlockStateForDevice:(id)device completionHandler:(id)handler;
@end

@implementation SDUnlockXPCSession

- (NSString)bundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    v4 = +[NSXPCConnection currentConnection];
    _xpcConnection = [v4 _xpcConnection];
    v6 = sub_10000C344(_xpcConnection);

    if (!v6)
    {
      v7 = +[NSXPCConnection currentConnection];
      v6 = [v7 valueForEntitlement:@"application-identifier"];
    }

    v8 = self->_bundleID;
    self->_bundleID = v6;

    bundleID = self->_bundleID;
  }

  return bundleID;
}

- (void)notifyDelegate
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_delegate;

    [(SDUnlockXPCSesssionDelegate *)v4 unlockSessionDidFinish:self];
  }
}

- (void)invalidate
{
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];

  if (clientProxy)
  {
    v4 = +[SDAutoUnlockSessionManager sharedManager];
    [v4 cancelEnablingAllDevices];

    [(SDUnlockXPCSession *)self cancelAutoUnlock:0];
    v5 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v5 handleDelegateInvalidatedFor:self];
  }

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)repairCloudPairing
{
  v2 = +[SDAutoUnlockSessionManager sharedManager];
  [v2 repairCloudPairing];
}

- (void)eligibleAutoUnlockDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    bundleID = [(SDUnlockXPCSession *)self bundleID];
    objc_initWeak(&location, self);
    v6 = +[SDAutoUnlockSessionManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010A218;
    v9[3] = &unk_1008D07C8;
    v10 = handlerCopy;
    objc_copyWeak(&v11, &location);
    [v6 eligibleDevicesRequestFromBundleID:bundleID withCompletionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"This process does not have permission to perform this action";
    v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:111 userInfo:v7];
    (*(handlerCopy + 2))(handlerCopy, 0, v8);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)enableAutoUnlockWithDevice:(id)device passcode:(id)passcode clientProxy:(id)proxy
{
  deviceCopy = device;
  passcodeCopy = passcode;
  proxyCopy = proxy;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setEnableDevice:deviceCopy];
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];

    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding observer for enabling device %@", &v16, 0xCu);
    }

    v12 = +[SDAutoUnlockSessionManager sharedManager];
    [v12 registerObserver:self];

    v13 = +[SDAutoUnlockSessionManager sharedManager];
    [v13 enableAutoUnlockWithDevice:deviceCopy passcode:passcodeCopy];
  }

  else
  {
    v14 = SFAutoUnlockErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v19 = @"This process does not have permission to perform this action";
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:v14 code:111 userInfo:v15];

    [proxyCopy failedToEnableDevice:deviceCopy error:v13];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)cancelEnablingAutoUnlockForDevice:(id)device
{
  deviceCopy = device;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v4 = +[SDAutoUnlockSessionManager sharedManager];
    [v4 cancelEnablingAutoUnlockForDevice:deviceCopy];
  }
}

- (void)disableAutoUnlockForDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:handlerCopy])
  {
    objc_initWeak(&location, self);
    v8 = +[SDAutoUnlockSessionManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010A5E8;
    v9[3] = &unk_1008D07F0;
    v10 = handlerCopy;
    objc_copyWeak(&v11, &location);
    [v8 disableAutoUnlockForDevice:deviceCopy completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)prewarmAutoUnlock
{
  v2 = +[SDAutoUnlockSessionManager sharedManager];
  [v2 prewarmAutoUnlock];
}

- (void)attemptAutoUnlockWithClientProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding observer for auto unlock attempt %@", &v10, 0xCu);
    }

    v6 = +[SDAutoUnlockSessionManager sharedManager];
    [v6 registerObserver:self];

    v7 = +[SDAutoUnlockSessionManager sharedManager];
    [v7 attemptAutoUnlockForType:1];
  }

  else
  {
    v8 = SFAutoUnlockErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"This process does not have permission to perform this action";
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:v8 code:111 userInfo:v9];

    [proxyCopy failedUnlockWithError:v7];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)attemptAutoUnlockWithoutNotifyingWatchWithClientProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding observer for auto unlock attempt without notifying watch %@", &v10, 0xCu);
    }

    v6 = +[SDAutoUnlockSessionManager sharedManager];
    [v6 registerObserver:self];

    v7 = +[SDAutoUnlockSessionManager sharedManager];
    [v7 attemptAutoUnlockWithoutNotifyingWatch];
  }

  else
  {
    v8 = SFAutoUnlockErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"This process does not have permission to perform this action";
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:v8 code:111 userInfo:v9];

    [proxyCopy failedUnlockWithError:v7];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)attemptAutoUnlockForSiriWithClientProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding observer for auto unlock attempt for Siri %@", &v10, 0xCu);
    }

    v6 = +[SDAutoUnlockSessionManager sharedManager];
    [v6 registerObserver:self];

    v7 = +[SDAutoUnlockSessionManager sharedManager];
    [v7 attemptAutoUnlockForSiri];
  }

  else
  {
    v8 = SFAutoUnlockErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"This process does not have permission to perform this action";
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:v8 code:111 userInfo:v9];

    [proxyCopy failedUnlockWithError:v7];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)cancelAutoUnlock
{
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {

    [(SDUnlockXPCSession *)self cancelAutoUnlock:1];
  }

  else
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancel Auto Unlock: This process does not have permission to perform this action", v4, 2u);
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)cancelAutoUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  v5 = +[SDAutoUnlockSessionManager sharedManager];
  [v5 cancelAutoUnlock];

  if (unlockCopy)
  {

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)requestRelock
{
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v4 = +[SDAutoUnlockSessionManager sharedManager];
    [v4 requestRelock];
  }

  else
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request relock Auto Unlock: This process does not have permission to perform this action", buf, 2u);
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)autoUnlockStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[SDAutoUnlockSessionManager sharedManager];
    [v5 autoUnlockStateWithCompletionHandler:handlerCopy];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  else
  {
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"This process does not have permission to perform this action";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:111 userInfo:v7];
    (*(handlerCopy + 2))(handlerCopy, 0, v8);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)authPromptInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[SDAutoUnlockSessionManager sharedManager];
    [v5 authPromptInfoWithCompletionHandler:handlerCopy];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  else
  {
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"This process does not have permission to perform this action";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:111 userInfo:v7];
    (*(handlerCopy + 2))(handlerCopy, 0, v8);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)session:(id)session didReceiveKeyDeviceLocked:(id)locked
{
  lockedCopy = locked;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy keyDeviceLocked:lockedCopy];
}

- (void)session:(id)session didEnableWithDevice:(id)device
{
  deviceCopy = device;
  enableDevice = [(SDUnlockXPCSession *)self enableDevice];
  uniqueID = [enableDevice uniqueID];
  uniqueID2 = [deviceCopy uniqueID];
  v8 = [uniqueID isEqualToString:uniqueID2];

  if (v8)
  {
    clientProxy = [(SDUnlockXPCSession *)self clientProxy];
    [clientProxy enabledDevice:deviceCopy];

    v10 = +[SDAutoUnlockSessionManager sharedManager];
    [v10 unregisterObserver:self];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)session:(id)session didFailToEnableDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  enableDevice = [(SDUnlockXPCSession *)self enableDevice];
  uniqueID = [enableDevice uniqueID];
  uniqueID2 = [deviceCopy uniqueID];
  v11 = [uniqueID isEqualToString:uniqueID2];

  if (v11)
  {
    clientProxy = [(SDUnlockXPCSession *)self clientProxy];
    [clientProxy failedToEnableDevice:deviceCopy error:errorCopy];

    v13 = +[SDAutoUnlockSessionManager sharedManager];
    [v13 unregisterObserver:self];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)session:(id)session didBeginAttemptWithDevice:(id)device
{
  deviceCopy = device;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientProxy = [(SDUnlockXPCSession *)self clientProxy];
    v9 = 138412290;
    v10 = clientProxy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Began: Calling client proxy %@", &v9, 0xCu);
  }

  clientProxy2 = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy2 beganAttemptWithDevice:deviceCopy];
}

- (void)session:(id)session didCompleteUnlockWithDevice:(id)device
{
  deviceCopy = device;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientProxy = [(SDUnlockXPCSession *)self clientProxy];
    v10 = 138412290;
    v11 = clientProxy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed: Calling client proxy %@", &v10, 0xCu);
  }

  clientProxy2 = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy2 completedUnlockWithDevice:deviceCopy];

  v9 = +[SDAutoUnlockSessionManager sharedManager];
  [v9 unregisterObserver:self];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)session:(id)session didFailUnlockWithResults:(id)results error:(id)error incrementedAttempt:(BOOL)attempt
{
  errorCopy = error;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy failedUnlockWithError:errorCopy];

  v9 = +[SDAutoUnlockSessionManager sharedManager];
  [v9 unregisterObserver:self];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)enableUnlockWithDevice:(id)device fromKey:(BOOL)key withPasscode:(id)passcode completionHandler:(id)handler
{
  deviceCopy = device;
  passcodeCopy = passcode;
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:handlerCopy])
  {
    if (key)
    {
      v13 = SFUnlockErrorDomian;
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Enabling from the key side is not yet supported";
      v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = [NSError errorWithDomain:v13 code:111 userInfo:v14];
      handlerCopy[2](handlerCopy, 0, v15);

      [(SDUnlockXPCSession *)self notifyDelegate];
    }

    else
    {
      v16 = +[SDUnlockLockManager sharedLockManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10010B7A0;
      v17[3] = &unk_1008D0818;
      v17[4] = self;
      v18 = handlerCopy;
      [v16 enableUnlockWithDevice:deviceCopy passcode:passcodeCopy completionHandler:v17];
    }
  }
}

- (void)disableUnlockWithDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:handlerCopy])
  {
    v8 = +[SDUnlockKeyManager sharedKeyManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010B8BC;
    v9[3] = &unk_1008D0818;
    v9[4] = self;
    v10 = handlerCopy;
    [v8 disableUnlockWithDevice:deviceCopy completionHandler:v9];
  }
}

- (void)unlockEnabledWithDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:?])
  {
    v5 = +[SDUnlockKeyManager sharedKeyManager];
    handlerCopy[2](handlerCopy, [v5 unlockEnabled], 0);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)establishStashBagWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:handlerCopy])
  {
    v5 = +[SDUnlockKeyManager sharedKeyManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010BA54;
    v6[3] = &unk_1008D0818;
    v6[4] = self;
    v7 = handlerCopy;
    [v5 establishStashBagWithCompletionHandler:v6];
  }
}

- (void)establishStashBagWithManifest:(id)manifest completionHandler:(id)handler
{
  manifestCopy = manifest;
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:handlerCopy])
  {
    v8 = +[SDUnlockKeyManager sharedKeyManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010BB70;
    v9[3] = &unk_1008D0818;
    v9[4] = self;
    v10 = handlerCopy;
    [v8 establishStashBagWithManifest:manifestCopy completionHandler:v9];
  }
}

- (void)unlockStateForDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v8 = +[SDUnlockKeyManager sharedKeyManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10010BD54;
    v12[3] = &unk_1008D0840;
    v12[4] = self;
    v13 = handlerCopy;
    [v8 unlockStateForDevice:deviceCopy completionHandler:v12];
  }

  else
  {
    v9 = SFUnlockErrorDomian;
    v14 = NSLocalizedDescriptionKey;
    v15 = @"This process does not have permission to perform this action";
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [NSError errorWithDomain:v9 code:111 userInfo:v10];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)listEligibleDevicesForAuthenticationType:(unint64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v7 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010BEA8;
    v10[3] = &unk_1008D0890;
    typeCopy = type;
    v11 = handlerCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v9 = authentications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)enableUsingClientProxy:(id)proxy authenticationType:(unint64_t)type device:(id)device passcode:(id)passcode sessionID:(id)d
{
  proxyCopy = proxy;
  deviceCopy = device;
  passcodeCopy = passcode;
  dCopy = d;
  v16 = authentications_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "enableUsingClientProxy type:%lu", buf, 0xCu);
  }

  if (![(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v17 = authentications_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
  v18 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v18 setDelegate:self];

  v19 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  queue = [v19 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C184;
  block[3] = &unk_1008CDC58;
  selfCopy = self;
  typeCopy2 = type;
  v25 = deviceCopy;
  v26 = passcodeCopy;
  v27 = dCopy;
  v21 = dCopy;
  v22 = passcodeCopy;
  v23 = deviceCopy;
  dispatch_async(queue, block);
}

- (void)requestEnablementUsingClientProxy:(id)proxy authenticationType:(unint64_t)type device:(id)device sessionID:(id)d
{
  proxyCopy = proxy;
  deviceCopy = device;
  dCopy = d;
  if (![(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v13 = authentications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
  v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v14 setDelegate:self];

  v15 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  queue = [v15 queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010C35C;
  v19[3] = &unk_1008D08B8;
  v20 = deviceCopy;
  v21 = dCopy;
  selfCopy = self;
  typeCopy = type;
  v17 = dCopy;
  v18 = deviceCopy;
  dispatch_async(queue, v19);
}

- (void)disableUsingClientProxy:(id)proxy authenticationType:(unint64_t)type device:(id)device sessionID:(id)d
{
  proxyCopy = proxy;
  deviceCopy = device;
  dCopy = d;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
    v13 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v13 setDelegate:self];

    v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v14 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010C530;
    v17[3] = &unk_1008D08B8;
    typeCopy = type;
    v18 = deviceCopy;
    v19 = dCopy;
    selfCopy = self;
    dispatch_async(queue, v17);
  }

  else
  {
    v16 = authentications_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)canAuthenticateUsingClientProxy:(id)proxy authenticationType:(unint64_t)type options:(id)options sessionID:(id)d
{
  proxyCopy = proxy;
  optionsCopy = options;
  dCopy = d;
  if (![(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v13 = authentications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
  v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v14 setDelegate:self];

  v15 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  queue = [v15 queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010C704;
  v19[3] = &unk_1008D08B8;
  v20 = optionsCopy;
  v21 = dCopy;
  selfCopy = self;
  typeCopy = type;
  v17 = dCopy;
  v18 = optionsCopy;
  dispatch_async(queue, v19);
}

- (void)authenticateUsingClientProxy:(id)proxy type:(unint64_t)type sessionID:(id)d options:(id)options
{
  proxyCopy = proxy;
  dCopy = d;
  optionsCopy = options;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
    v13 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v13 setDelegate:self];

    v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v14 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010C8D8;
    v17[3] = &unk_1008D08B8;
    typeCopy = type;
    v18 = dCopy;
    v19 = optionsCopy;
    selfCopy = self;
    dispatch_async(queue, v17);
  }

  else
  {
    v16 = authentications_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)cancelAuthenticationSessionWithID:(id)d
{
  dCopy = d;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010CA3C;
    block[3] = &unk_1008CDEA0;
    v9 = dCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = authentications_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)registerForApprovalRequestsUsingClientProxy:(id)proxy forType:(unint64_t)type
{
  proxyCopy = proxy;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:proxyCopy];
    v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v7 setDelegate:self];

    v8 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v8 queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10010CBC0;
    v11[3] = &unk_1008CFD30;
    v11[4] = self;
    v11[5] = type;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = authentications_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)startObservingAuthentationStateChangesWithObserver:(id)observer forIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  queue = [v7 queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010CCFC;
  v11[3] = &unk_1008CE028;
  v12 = observerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = observerCopy;
  dispatch_async(queue, v11);
}

- (void)stopObservingAuthentationStateChangesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  queue = [v4 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010CE18;
  block[3] = &unk_1008CDEA0;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)reportUserApprovalWithACMToken:(id)token error:(id)error sessionID:(id)d
{
  tokenCopy = token;
  errorCopy = error;
  dCopy = d;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v11 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v11 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010CFC0;
    block[3] = &unk_1008CE900;
    v15 = tokenCopy;
    v16 = errorCopy;
    v17 = dCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = authentications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    queue = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010D124;
    block[3] = &unk_1008D08E0;
    v9 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = authentications_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)manager:(id)manager didEnableAuthenticationFor:(id)for
{
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy enabledAuthenticationSessionWithID:forCopy];

  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v7 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)manager didDisableAuthenticationFor:(id)for
{
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy disabledAuthenticationSessionWithID:forCopy];

  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v7 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)manager didCompleteAuthenticationFor:(id)for
{
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy completedAuthenticationSessionWithID:forCopy];

  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v7 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)manager didFailToEnableDeviceFor:(id)for error:(id)error
{
  errorCopy = error;
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy failedToEnableDeviceForSessionID:forCopy error:errorCopy];

  v10 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v10 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)manager didFailToDisableDeviceFor:(id)for error:(id)error
{
  errorCopy = error;
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy failedToDisableDeviceForSessionID:forCopy error:errorCopy];

  v10 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v10 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)manager didFailAuthenticationFor:(id)for error:(id)error
{
  errorCopy = error;
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy failedAuthenticationSessionWithID:forCopy error:errorCopy];

  v10 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v10 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)manager didStartAuthenticationFor:(id)for
{
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy startedAuthenticationSessionWithID:forCopy];
}

- (void)manager:(id)manager didReceiveApproveRequestFor:(id)for info:(id)info
{
  infoCopy = info;
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy receivedApproveRequestForSessionID:forCopy info:infoCopy];
}

- (void)manager:(id)manager didFailApproveFor:(id)for error:(id)error
{
  errorCopy = error;
  forCopy = for;
  clientProxy = [(SDUnlockXPCSession *)self clientProxy];
  [clientProxy failedApproveSessionWithID:forCopy error:errorCopy];
}

- (BOOL)checkEntitlementWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 _connectionHasEntitlement:@"com.apple.private.sharing.unlock-manager"];

  if (v6)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [(SDUnlockXPCSession *)self bundleID];
      v13 = 138412290;
      v14 = bundleID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client bundle ID: %@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10010D858(self, v9);
    }

    if (handlerCopy)
    {
      v15 = NSLocalizedDescriptionKey;
      v16 = @"This process does not have permission to perform this action";
      v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [NSError errorWithDomain:@"SFUnlockErrorDomian" code:111 userInfo:v10];
      handlerCopy[2](handlerCopy, 0, v11);

      [(SDUnlockXPCSession *)self notifyDelegate];
    }
  }

  return v6;
}

@end