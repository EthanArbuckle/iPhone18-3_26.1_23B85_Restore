@interface WipeAction
- (FMDServiceProvider)provider;
- (WipeAction)initWithProvider:(id)provider;
- (void)_abortWipe;
- (void)_ackWipeCommand:(id)command withStatus:(int64_t)status;
- (void)_sendWipeAck;
- (void)_wipeNow;
- (void)performWipe;
- (void)runWithCompletion:(id)completion;
@end

@implementation WipeAction

- (WipeAction)initWithProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = WipeAction;
  v5 = [(WipeAction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WipeAction *)v5 setProvider:providerCopy];
  }

  return v6;
}

- (void)runWithCompletion:(id)completion
{
  v4 = +[FMDPreferencesMgr wipeState];
  v5 = +[FMDPreferencesMgr wipeInfo];
  v6 = [v5 objectForKeyedSubscript:@"authId"];

  provider = [(WipeAction *)self provider];
  account = [provider account];

  if (account && ([account authId], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v6), v9, (v10 & 1) != 0))
  {
    [account setActivityState:2];
    if (v4 == 2)
    {
      v16 = sub_100002880();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wiping the device now...", v17, 2u);
      }

      [(WipeAction *)self _wipeNow];
    }

    else if (v4 == 1)
    {
      authToken = [account authToken];
      v12 = [authToken length];

      v13 = sub_100002880();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending wipe ack...", buf, 2u);
        }

        [(WipeAction *)self _sendWipeAck];
      }

      else
      {
        if (v14)
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Aborting wipe because ack was pending & no authToken available anymore", v18, 2u);
        }

        [(WipeAction *)self _abortWipe];
      }
    }
  }

  else
  {
    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleting old wipe state since the account info has changed", v20, 2u);
    }

    [FMDPreferencesMgr setWipeState:0];
    [FMDPreferencesMgr setWipeInfo:0];
  }
}

- (void)_sendWipeAck
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending wipe ack...", v6, 2u);
  }

  v4 = +[FMDPreferencesMgr wipeInfo];
  v5 = [v4 objectForKeyedSubscript:@"commandParams"];
  [(WipeAction *)self _ackWipeCommand:v5 withStatus:200];
}

- (void)_ackWipeCommand:(id)command withStatus:(int64_t)status
{
  commandCopy = command;
  v7 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  provider = [(WipeAction *)self provider];
  if (v7)
  {
    v9 = [NSURL URLWithString:v7];
    v10 = [[FMDRequestAckWipe alloc] initWithProvider:provider wipeCommand:commandCopy cmdStatusCode:status ackURL:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C97D4;
    v12[3] = &unk_1002D1008;
    v12[4] = self;
    [(FMDRequest *)v10 setCompletionHandler:v12];
    [provider enqueueRequest:v10];
  }

  else
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not acking the wipe command because there is no ack URL", v11, 2u);
    }
  }
}

- (void)_abortWipe
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Aborting wipe...", v6, 2u);
  }

  [FMDPreferencesMgr setWipeInfo:0];
  [FMDPreferencesMgr setWipeState:0];
  provider = [(WipeAction *)self provider];
  account = [provider account];
  [account setActivityState:0];
  [provider reinitializeProviderWithAccount:account];
}

- (void)_wipeNow
{
  v3 = +[FMDPowerMgr sharedInstance];
  [v3 powerAssertionEnableWithReason:@"Wiping" type:@"PreventSystemSleep" timeout:300 appliesOnLidClose:1];

  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initiating Remote Wipe now...", buf, 2u);
  }

  v5 = +[FMDPreferencesMgr wipeInfo];
  v6 = [v5 objectForKeyedSubscript:@"wipeMode"];
  if (+[FMDPreferencesMgr simulateWipe](FMDPreferencesMgr, "simulateWipe") || [v6 isEqualToString:@"fake"])
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initiating Simulated Remote Wipe now...", buf, 2u);
    }

    v8 = objc_alloc_init(FMAlert);
    [v8 setMsgText:@"Simulated Wipe: Your device would have been wiped now."];
    [v8 setMsgTitle:@"iCloud Remote Wipe"];
    [v8 setShowMsgInLockScreen:1];
    [v8 setDismissMsgOnUnlock:0];
    [v8 setDismissMsgOnLock:0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001C9CA8;
    v10[3] = &unk_1002CD4C8;
    v10[4] = self;
    [v8 setDefaultButtonAction:v10];
    v9 = +[FMAlertManager sharedInstance];
    [v9 activateAlert:v8];
  }

  else
  {
    [(WipeAction *)self performWipe];
  }
}

- (void)performWipe
{
  v9 = objc_opt_new();
  v3 = objc_opt_new();
  [(WipeAction *)self maxDelayInterval];
  [v3 setMaxDelayInterval:?];
  v4 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v4 isInternalBuild];

  if (isInternalBuild)
  {
    v6 = [FMPreferencesUtil integerForKey:@"wipeDelay" inDomain:kFMDPrefDomain];
    if (v6 >= 1)
    {
      [v3 setCustomDelay:v6];
    }
  }

  v7 = +[FMSystemInfo sharedInstance];
  isInternalBuild2 = [v7 isInternalBuild];

  if (isInternalBuild2)
  {
    [v3 setBrickDevice:{+[FMPreferencesUtil BOOLForKey:inDomain:](FMPreferencesUtil, "BOOLForKey:inDomain:", @"EnableRemoteBrickWithWipe", kFMDPrefDomain)}];
  }

  [v9 eraseDeviceWithOptions:v3 completion:&stru_1002D1028];
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end