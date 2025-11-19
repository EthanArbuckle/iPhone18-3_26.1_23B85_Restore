@interface SDUnlockXPCSession
- (BOOL)checkEntitlementWithHandler:(id)a3;
- (NSString)bundleID;
- (void)attemptAutoUnlockForSiriWithClientProxy:(id)a3;
- (void)attemptAutoUnlockWithClientProxy:(id)a3;
- (void)attemptAutoUnlockWithoutNotifyingWatchWithClientProxy:(id)a3;
- (void)authPromptInfoWithCompletionHandler:(id)a3;
- (void)authenticateUsingClientProxy:(id)a3 type:(unint64_t)a4 sessionID:(id)a5 options:(id)a6;
- (void)autoUnlockStateWithCompletionHandler:(id)a3;
- (void)canAuthenticateUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 options:(id)a5 sessionID:(id)a6;
- (void)cancelAuthenticationSessionWithID:(id)a3;
- (void)cancelAutoUnlock;
- (void)cancelAutoUnlock:(BOOL)a3;
- (void)cancelEnablingAutoUnlockForDevice:(id)a3;
- (void)disableAutoUnlockForDevice:(id)a3 completionHandler:(id)a4;
- (void)disableUnlockWithDevice:(id)a3 completionHandler:(id)a4;
- (void)disableUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 device:(id)a5 sessionID:(id)a6;
- (void)eligibleAutoUnlockDevicesWithCompletionHandler:(id)a3;
- (void)enableAutoUnlockWithDevice:(id)a3 passcode:(id)a4 clientProxy:(id)a5;
- (void)enableUnlockWithDevice:(id)a3 fromKey:(BOOL)a4 withPasscode:(id)a5 completionHandler:(id)a6;
- (void)enableUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 device:(id)a5 passcode:(id)a6 sessionID:(id)a7;
- (void)establishStashBagWithCompletionHandler:(id)a3;
- (void)establishStashBagWithManifest:(id)a3 completionHandler:(id)a4;
- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)a3;
- (void)invalidate;
- (void)listEligibleDevicesForAuthenticationType:(unint64_t)a3 completionHandler:(id)a4;
- (void)manager:(id)a3 didCompleteAuthenticationFor:(id)a4;
- (void)manager:(id)a3 didDisableAuthenticationFor:(id)a4;
- (void)manager:(id)a3 didEnableAuthenticationFor:(id)a4;
- (void)manager:(id)a3 didFailApproveFor:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didFailAuthenticationFor:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didFailToDisableDeviceFor:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didFailToEnableDeviceFor:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didReceiveApproveRequestFor:(id)a4 info:(id)a5;
- (void)manager:(id)a3 didStartAuthenticationFor:(id)a4;
- (void)notifyDelegate;
- (void)prewarmAutoUnlock;
- (void)registerForApprovalRequestsUsingClientProxy:(id)a3 forType:(unint64_t)a4;
- (void)repairCloudPairing;
- (void)reportUserApprovalWithACMToken:(id)a3 error:(id)a4 sessionID:(id)a5;
- (void)requestEnablementUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 device:(id)a5 sessionID:(id)a6;
- (void)requestRelock;
- (void)session:(id)a3 didBeginAttemptWithDevice:(id)a4;
- (void)session:(id)a3 didCompleteUnlockWithDevice:(id)a4;
- (void)session:(id)a3 didEnableWithDevice:(id)a4;
- (void)session:(id)a3 didFailToEnableDevice:(id)a4 error:(id)a5;
- (void)session:(id)a3 didFailUnlockWithResults:(id)a4 error:(id)a5 incrementedAttempt:(BOOL)a6;
- (void)session:(id)a3 didReceiveKeyDeviceLocked:(id)a4;
- (void)startObservingAuthentationStateChangesWithObserver:(id)a3 forIdentifier:(id)a4;
- (void)stopObservingAuthentationStateChangesForIdentifier:(id)a3;
- (void)unlockEnabledWithDevice:(id)a3 completionHandler:(id)a4;
- (void)unlockStateForDevice:(id)a3 completionHandler:(id)a4;
@end

@implementation SDUnlockXPCSession

- (NSString)bundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    v4 = +[NSXPCConnection currentConnection];
    v5 = [v4 _xpcConnection];
    v6 = sub_10000C344(v5);

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
  v3 = [(SDUnlockXPCSession *)self clientProxy];

  if (v3)
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

- (void)eligibleAutoUnlockDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = [(SDUnlockXPCSession *)self bundleID];
    objc_initWeak(&location, self);
    v6 = +[SDAutoUnlockSessionManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010A218;
    v9[3] = &unk_1008D07C8;
    v10 = v4;
    objc_copyWeak(&v11, &location);
    [v6 eligibleDevicesRequestFromBundleID:v5 withCompletionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"This process does not have permission to perform this action";
    v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:111 userInfo:v7];
    (*(v4 + 2))(v4, 0, v8);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)enableAutoUnlockWithDevice:(id)a3 passcode:(id)a4 clientProxy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setEnableDevice:v8];
    [(SDUnlockXPCSession *)self setClientProxy:v10];

    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding observer for enabling device %@", &v16, 0xCu);
    }

    v12 = +[SDAutoUnlockSessionManager sharedManager];
    [v12 registerObserver:self];

    v13 = +[SDAutoUnlockSessionManager sharedManager];
    [v13 enableAutoUnlockWithDevice:v8 passcode:v9];
  }

  else
  {
    v14 = SFAutoUnlockErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v19 = @"This process does not have permission to perform this action";
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:v14 code:111 userInfo:v15];

    [v10 failedToEnableDevice:v8 error:v13];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)cancelEnablingAutoUnlockForDevice:(id)a3
{
  v5 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v4 = +[SDAutoUnlockSessionManager sharedManager];
    [v4 cancelEnablingAutoUnlockForDevice:v5];
  }
}

- (void)disableAutoUnlockForDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:v7])
  {
    objc_initWeak(&location, self);
    v8 = +[SDAutoUnlockSessionManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010A5E8;
    v9[3] = &unk_1008D07F0;
    v10 = v7;
    objc_copyWeak(&v11, &location);
    [v8 disableAutoUnlockForDevice:v6 completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)prewarmAutoUnlock
{
  v2 = +[SDAutoUnlockSessionManager sharedManager];
  [v2 prewarmAutoUnlock];
}

- (void)attemptAutoUnlockWithClientProxy:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:v4];
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
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

    [v4 failedUnlockWithError:v7];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)attemptAutoUnlockWithoutNotifyingWatchWithClientProxy:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:v4];
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
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

    [v4 failedUnlockWithError:v7];
    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)attemptAutoUnlockForSiriWithClientProxy:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:v4];
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
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

    [v4 failedUnlockWithError:v7];
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

- (void)cancelAutoUnlock:(BOOL)a3
{
  v3 = a3;
  v5 = +[SDAutoUnlockSessionManager sharedManager];
  [v5 cancelAutoUnlock];

  if (v3)
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

- (void)autoUnlockStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[SDAutoUnlockSessionManager sharedManager];
    [v5 autoUnlockStateWithCompletionHandler:v4];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  else
  {
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"This process does not have permission to perform this action";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:111 userInfo:v7];
    (*(v4 + 2))(v4, 0, v8);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)authPromptInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[SDAutoUnlockSessionManager sharedManager];
    [v5 authPromptInfoWithCompletionHandler:v4];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  else
  {
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"This process does not have permission to perform this action";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:111 userInfo:v7];
    (*(v4 + 2))(v4, 0, v8);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)session:(id)a3 didReceiveKeyDeviceLocked:(id)a4
{
  v5 = a4;
  v6 = [(SDUnlockXPCSession *)self clientProxy];
  [v6 keyDeviceLocked:v5];
}

- (void)session:(id)a3 didEnableWithDevice:(id)a4
{
  v11 = a4;
  v5 = [(SDUnlockXPCSession *)self enableDevice];
  v6 = [v5 uniqueID];
  v7 = [v11 uniqueID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(SDUnlockXPCSession *)self clientProxy];
    [v9 enabledDevice:v11];

    v10 = +[SDAutoUnlockSessionManager sharedManager];
    [v10 unregisterObserver:self];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)session:(id)a3 didFailToEnableDevice:(id)a4 error:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(SDUnlockXPCSession *)self enableDevice];
  v9 = [v8 uniqueID];
  v10 = [v14 uniqueID];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = [(SDUnlockXPCSession *)self clientProxy];
    [v12 failedToEnableDevice:v14 error:v7];

    v13 = +[SDAutoUnlockSessionManager sharedManager];
    [v13 unregisterObserver:self];

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)session:(id)a3 didBeginAttemptWithDevice:(id)a4
{
  v5 = a4;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SDUnlockXPCSession *)self clientProxy];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Began: Calling client proxy %@", &v9, 0xCu);
  }

  v8 = [(SDUnlockXPCSession *)self clientProxy];
  [v8 beganAttemptWithDevice:v5];
}

- (void)session:(id)a3 didCompleteUnlockWithDevice:(id)a4
{
  v5 = a4;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SDUnlockXPCSession *)self clientProxy];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed: Calling client proxy %@", &v10, 0xCu);
  }

  v8 = [(SDUnlockXPCSession *)self clientProxy];
  [v8 completedUnlockWithDevice:v5];

  v9 = +[SDAutoUnlockSessionManager sharedManager];
  [v9 unregisterObserver:self];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)session:(id)a3 didFailUnlockWithResults:(id)a4 error:(id)a5 incrementedAttempt:(BOOL)a6
{
  v7 = a5;
  v8 = [(SDUnlockXPCSession *)self clientProxy];
  [v8 failedUnlockWithError:v7];

  v9 = +[SDAutoUnlockSessionManager sharedManager];
  [v9 unregisterObserver:self];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)enableUnlockWithDevice:(id)a3 fromKey:(BOOL)a4 withPasscode:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:v12])
  {
    if (a4)
    {
      v13 = SFUnlockErrorDomian;
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Enabling from the key side is not yet supported";
      v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = [NSError errorWithDomain:v13 code:111 userInfo:v14];
      v12[2](v12, 0, v15);

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
      v18 = v12;
      [v16 enableUnlockWithDevice:v10 passcode:v11 completionHandler:v17];
    }
  }
}

- (void)disableUnlockWithDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:v7])
  {
    v8 = +[SDUnlockKeyManager sharedKeyManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010B8BC;
    v9[3] = &unk_1008D0818;
    v9[4] = self;
    v10 = v7;
    [v8 disableUnlockWithDevice:v6 completionHandler:v9];
  }
}

- (void)unlockEnabledWithDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:?])
  {
    v5 = +[SDUnlockKeyManager sharedKeyManager];
    v6[2](v6, [v5 unlockEnabled], 0);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)establishStashBagWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:v4])
  {
    v5 = +[SDUnlockKeyManager sharedKeyManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010BA54;
    v6[3] = &unk_1008D0818;
    v6[4] = self;
    v7 = v4;
    [v5 establishStashBagWithCompletionHandler:v6];
  }
}

- (void)establishStashBagWithManifest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:v7])
  {
    v8 = +[SDUnlockKeyManager sharedKeyManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010BB70;
    v9[3] = &unk_1008D0818;
    v9[4] = self;
    v10 = v7;
    [v8 establishStashBagWithManifest:v6 completionHandler:v9];
  }
}

- (void)unlockStateForDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v8 = +[SDUnlockKeyManager sharedKeyManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10010BD54;
    v12[3] = &unk_1008D0840;
    v12[4] = self;
    v13 = v7;
    [v8 unlockStateForDevice:v6 completionHandler:v12];
  }

  else
  {
    v9 = SFUnlockErrorDomian;
    v14 = NSLocalizedDescriptionKey;
    v15 = @"This process does not have permission to perform this action";
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [NSError errorWithDomain:v9 code:111 userInfo:v10];
    (*(v7 + 2))(v7, 0, v11);

    [(SDUnlockXPCSession *)self notifyDelegate];
  }
}

- (void)listEligibleDevicesForAuthenticationType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v8 = [v7 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010BEA8;
    v10[3] = &unk_1008D0890;
    v12 = a3;
    v11 = v6;
    dispatch_async(v8, v10);
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

- (void)enableUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 device:(id)a5 passcode:(id)a6 sessionID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = authentications_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = a4;
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

  [(SDUnlockXPCSession *)self setClientProxy:v12];
  v18 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v18 setDelegate:self];

  v19 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  v20 = [v19 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C184;
  block[3] = &unk_1008CDC58;
  v28 = self;
  v29 = a4;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  dispatch_async(v20, block);
}

- (void)requestEnablementUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 device:(id)a5 sessionID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v13 = authentications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  [(SDUnlockXPCSession *)self setClientProxy:v10];
  v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v14 setDelegate:self];

  v15 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  v16 = [v15 queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010C35C;
  v19[3] = &unk_1008D08B8;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23 = a4;
  v17 = v12;
  v18 = v11;
  dispatch_async(v16, v19);
}

- (void)disableUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 device:(id)a5 sessionID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:v10];
    v13 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v13 setDelegate:self];

    v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v15 = [v14 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010C530;
    v17[3] = &unk_1008D08B8;
    v21 = a4;
    v18 = v11;
    v19 = v12;
    v20 = self;
    dispatch_async(v15, v17);
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

- (void)canAuthenticateUsingClientProxy:(id)a3 authenticationType:(unint64_t)a4 options:(id)a5 sessionID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v13 = authentications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010D824();
    }

    [(SDUnlockXPCSession *)self notifyDelegate];
  }

  [(SDUnlockXPCSession *)self setClientProxy:v10];
  v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v14 setDelegate:self];

  v15 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  v16 = [v15 queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010C704;
  v19[3] = &unk_1008D08B8;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23 = a4;
  v17 = v12;
  v18 = v11;
  dispatch_async(v16, v19);
}

- (void)authenticateUsingClientProxy:(id)a3 type:(unint64_t)a4 sessionID:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:v10];
    v13 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v13 setDelegate:self];

    v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v15 = [v14 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010C8D8;
    v17[3] = &unk_1008D08B8;
    v21 = a4;
    v18 = v11;
    v19 = v12;
    v20 = self;
    dispatch_async(v15, v17);
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

- (void)cancelAuthenticationSessionWithID:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v6 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010CA3C;
    block[3] = &unk_1008CDEA0;
    v9 = v4;
    dispatch_async(v6, block);
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

- (void)registerForApprovalRequestsUsingClientProxy:(id)a3 forType:(unint64_t)a4
{
  v6 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    [(SDUnlockXPCSession *)self setClientProxy:v6];
    v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v7 setDelegate:self];

    v8 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v9 = [v8 queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10010CBC0;
    v11[3] = &unk_1008CFD30;
    v11[4] = self;
    v11[5] = a4;
    dispatch_async(v9, v11);
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

- (void)startObservingAuthentationStateChangesWithObserver:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  v8 = [v7 queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010CCFC;
  v11[3] = &unk_1008CE028;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

- (void)stopObservingAuthentationStateChangesForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  v5 = [v4 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010CE18;
  block[3] = &unk_1008CDEA0;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

- (void)reportUserApprovalWithACMToken:(id)a3 error:(id)a4 sessionID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v11 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v12 = [v11 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010CFC0;
    block[3] = &unk_1008CE900;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatch_async(v12, block);
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

- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SDUnlockXPCSession *)self checkEntitlementWithHandler:0])
  {
    v5 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    v6 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010D124;
    block[3] = &unk_1008D08E0;
    v9 = v4;
    dispatch_async(v6, block);
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

- (void)manager:(id)a3 didEnableAuthenticationFor:(id)a4
{
  v5 = a4;
  v6 = [(SDUnlockXPCSession *)self clientProxy];
  [v6 enabledAuthenticationSessionWithID:v5];

  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v7 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)a3 didDisableAuthenticationFor:(id)a4
{
  v5 = a4;
  v6 = [(SDUnlockXPCSession *)self clientProxy];
  [v6 disabledAuthenticationSessionWithID:v5];

  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v7 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)a3 didCompleteAuthenticationFor:(id)a4
{
  v5 = a4;
  v6 = [(SDUnlockXPCSession *)self clientProxy];
  [v6 completedAuthenticationSessionWithID:v5];

  v7 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v7 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)a3 didFailToEnableDeviceFor:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SDUnlockXPCSession *)self clientProxy];
  [v9 failedToEnableDeviceForSessionID:v8 error:v7];

  v10 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v10 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)a3 didFailToDisableDeviceFor:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SDUnlockXPCSession *)self clientProxy];
  [v9 failedToDisableDeviceForSessionID:v8 error:v7];

  v10 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v10 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)a3 didFailAuthenticationFor:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SDUnlockXPCSession *)self clientProxy];
  [v9 failedAuthenticationSessionWithID:v8 error:v7];

  v10 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  [v10 setDelegate:0];

  [(SDUnlockXPCSession *)self notifyDelegate];
}

- (void)manager:(id)a3 didStartAuthenticationFor:(id)a4
{
  v5 = a4;
  v6 = [(SDUnlockXPCSession *)self clientProxy];
  [v6 startedAuthenticationSessionWithID:v5];
}

- (void)manager:(id)a3 didReceiveApproveRequestFor:(id)a4 info:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SDUnlockXPCSession *)self clientProxy];
  [v9 receivedApproveRequestForSessionID:v8 info:v7];
}

- (void)manager:(id)a3 didFailApproveFor:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SDUnlockXPCSession *)self clientProxy];
  [v9 failedApproveSessionWithID:v8 error:v7];
}

- (BOOL)checkEntitlementWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 _connectionHasEntitlement:@"com.apple.private.sharing.unlock-manager"];

  if (v6)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SDUnlockXPCSession *)self bundleID];
      v13 = 138412290;
      v14 = v8;
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

    if (v4)
    {
      v15 = NSLocalizedDescriptionKey;
      v16 = @"This process does not have permission to perform this action";
      v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [NSError errorWithDomain:@"SFUnlockErrorDomian" code:111 userInfo:v10];
      v4[2](v4, 0, v11);

      [(SDUnlockXPCSession *)self notifyDelegate];
    }
  }

  return v6;
}

@end