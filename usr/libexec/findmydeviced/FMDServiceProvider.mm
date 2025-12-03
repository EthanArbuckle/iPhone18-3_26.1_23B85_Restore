@interface FMDServiceProvider
- (BOOL)_handleSecureLocationsPush:(id)push completion:(id)completion;
- (BOOL)_isValidIntentAccountId:(id)id;
- (BOOL)enqueueRequest:(id)request;
- (BOOL)enqueueRequest:(id)request account:(id)account;
- (BOOL)enqueueRequest:(id)request forAccessory:(id)accessory;
- (BOOL)isActivationLocked;
- (BOOL)supportsAccessory:(id)accessory;
- (FMDAccount)account;
- (FMDServiceProvider)init;
- (id)apsToken;
- (id)futureForCommandId:(id)id;
- (id)newLocationManager;
- (id)serverInteractionControllerForAccessory:(id)accessory;
- (id)serverInteractionControllerForAccount:(id)account;
- (id)urlForRequestType:(id)type;
- (unint64_t)_accountSecurityLevel;
- (unsigned)authInvalidError;
- (unsigned)essentialServerInfoMissingError;
- (void)_accountDidChangeFrom:(id)from to:(id)to;
- (void)_handleAccessoryDidPairNotification:(id)notification;
- (void)_handleLocateIntent:(id)intent serverContext:(id)context;
- (void)_handlePushWithoutIntents:(id)intents;
- (void)_handleQCIntent:(id)intent serverContext:(id)context;
- (void)_handleSoundIntent:(id)intent serverContext:(id)context;
- (void)_sendStartupRegister;
- (void)accessoryDidPair:(id)pair;
- (void)accessoryDidUnpair:(id)unpair;
- (void)accessoryDidUpdate:(id)update;
- (void)accountAdded;
- (void)accountInfoDidChange;
- (void)accountRemoveRequestedWithCompletion:(id)completion;
- (void)activationLockAuthInfo:(id)info;
- (void)clearFutures;
- (void)dealloc;
- (void)deregisterCommonNotifications;
- (void)deviceNameChanged:(id)changed;
- (void)didReceiveAPSMessage:(id)message;
- (void)didReceiveAPSToken:(id)token;
- (void)didReceiveAuthFailureForRequest:(id)request;
- (void)didReceiveServerAlertForRequest:(id)request;
- (void)locationServicesStateChanged:(id)changed;
- (void)makeProviderActive;
- (void)makeProviderInactive;
- (void)petForUserWithCompletion:(id)completion;
- (void)queueAccessoryActionsIfNeeded:(id)needed;
- (void)registerAccessory:(id)accessory completion:(id)completion;
- (void)registerCommonNotifications;
- (void)reinitializeProviderWithAccount:(id)account;
- (void)removeAccount:(id)account completion:(id)completion;
- (void)removeAccountPreferences;
- (void)removeFutureForCommandId:(id)id;
- (void)searchPartyBeaconsChanged:(id)changed;
- (void)setAccount:(id)account;
- (void)setFuture:(id)future commandId:(id)id;
- (void)showAlertFromServerResponse:(id)response;
- (void)start;
- (void)startLocationMonitoringIfNeeded;
- (void)supportedAccessoryRegistryDidUpdateSupportedAccessories:(id)accessories;
- (void)tryToFetchAuthToken;
- (void)unregisterAccessory:(id)accessory completion:(id)completion;
- (void)updateAccount:(id)account;
@end

@implementation FMDServiceProvider

- (id)newLocationManager
{
  v2 = +[FMDLocationManagerFactory sharedInstance];
  newLocationManager = [v2 newLocationManager];

  return newLocationManager;
}

- (FMDServiceProvider)init
{
  v15.receiver = self;
  v15.super_class = FMDServiceProvider;
  v2 = [(FMDServiceProvider *)&v15 init];
  if (v2)
  {
    v3 = +[FMDOperationManager sharedManager];
    v4 = dispatch_queue_create("FMDServiceProvider", 0);
    [(FMDServiceProvider *)v2 setSerialQueue:v4];

    v5 = objc_alloc_init(FMDDirectServerChannel);
    v16[0] = v5;
    v6 = objc_alloc_init(FMDCadmiumServerChannel);
    v16[1] = v6;
    v7 = [NSArray arrayWithObjects:v16 count:2];

    v8 = [[FMDServerInteractionController alloc] initWithChannels:v7 delegate:v2];
    [(FMDServiceProvider *)v2 setServerInteractionController:v8];

    v9 = +[NSMutableDictionary dictionary];
    [(FMDServiceProvider *)v2 setServerInteractionControllerByAccessory:v9];

    v10 = [NSMutableDictionary dictionaryWithCapacity:2];
    [(FMDServiceProvider *)v2 setServerInteractionControllerByAccount:v10];

    v11 = [[FMReadWriteLock alloc] initWithLockName:@"serviceProvider-accountLock"];
    [(FMDServiceProvider *)v2 setAccountReadWriteLock:v11];

    v12 = +[ActionManager sharedManager];
    if (_os_feature_enabled_impl())
    {
      v13 = objc_alloc_init(_TtC13findmydeviced19FindMyLocateWrapper);
      [(FMDServiceProvider *)v2 setFindMyLocate:v13];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(FMDServiceProvider *)self removeObserver:self forKeyPath:@"account"];
  v3.receiver = self;
  v3.super_class = FMDServiceProvider;
  [(FMDServiceProvider *)&v3 dealloc];
}

- (void)start
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    v18 = 138412290;
    v19 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", &v18, 0xCu);
  }

  accountStore = [(FMDServiceProvider *)self accountStore];
  loadAccount = [accountStore loadAccount];
  [(FMDServiceProvider *)self setAccount:loadAccount];

  if (+[FMDPreferencesMgr wipeState])
  {
    v7 = [[WipeAction alloc] initWithProvider:self];
    v8 = +[ActionManager sharedManager];
    v9 = [v8 enqueueAction:v7];
  }

  else
  {
    account = [(FMDServiceProvider *)self account];

    if (account)
    {
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [(FMDServiceProvider *)self account];
        username = [account2 username];
        v18 = 138412290;
        v19 = username;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found FMIP account %@...", &v18, 0xCu);
      }

      [(FMDServiceProvider *)self accountAdded];
    }
  }

  account3 = [(FMDServiceProvider *)self account];

  if (!account3)
  {
    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No FMIP account", &v18, 2u);
    }

    v16 = +[FMDDaemon sharedInstance];
    v17 = [v16 apsHandlerForEnvironment:@"production"];

    [v17 registerDelegate:self forTopic:@"com.apple.mobileme.fmip"];
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  account = [(FMDServiceProvider *)self account];
  accountReadWriteLock = [(FMDServiceProvider *)self accountReadWriteLock];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CBF14;
  v9[3] = &unk_1002CDD98;
  v9[4] = self;
  v10 = accountCopy;
  v11 = account;
  v7 = account;
  v8 = accountCopy;
  [accountReadWriteLock performWithWriteLock:v9];
}

- (FMDAccount)account
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB54;
  v11 = sub_100002B74;
  v12 = 0;
  accountReadWriteLock = [(FMDServiceProvider *)self accountReadWriteLock];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CC078;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  [accountReadWriteLock performWithReadLock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updateAccount:(id)account
{
  accountCopy = account;
  account = [(FMDServiceProvider *)self account];
  if (account)
  {
    authId = [accountCopy authId];
    authId2 = [account authId];
    v8 = [authId isEqualToString:authId2];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10022E41C(account, accountCopy);
      }
    }

    if ([account activityState] != 2)
    {
      account2 = [(FMDServiceProvider *)self account];
      [account2 copyInfoFromAccount:accountCopy];

      accountStore = [(FMDServiceProvider *)self accountStore];
      account3 = [(FMDServiceProvider *)self account];
      [accountStore saveAccount:account3];

      [(FMDServiceProvider *)self accountInfoDidChange];
    }
  }

  else
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "updateAccount is adding a new account", v16, 2u);
    }

    [(FMDServiceProvider *)self setAccount:accountCopy];
    accountStore2 = [(FMDServiceProvider *)self accountStore];
    [accountStore2 saveAccount:accountCopy];

    v15 = +[FMDStartupRegisterManager sharedInstance];
    [v15 eventDidOccur:0];

    [(FMDServiceProvider *)self accountAdded];
  }
}

- (void)removeAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  account = [(FMDServiceProvider *)self account];

  if (account)
  {
    account2 = [(FMDServiceProvider *)self account];
    [account2 copyInfoFromAccount:accountCopy];

    accountStore = [(FMDServiceProvider *)self accountStore];
    account3 = [(FMDServiceProvider *)self account];
    [accountStore saveAccount:account3];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001CC468;
    v16[3] = &unk_1002D0B98;
    v16[4] = self;
    v17 = accountCopy;
    v18 = completionCopy;
    [(FMDServiceProvider *)self accountRemoveRequestedWithCompletion:v16];
  }

  else
  {
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022E4C8(accountCopy);
    }

    v13 = kFMDErrorDomain;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"No existing account found";
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [NSError errorWithDomain:v13 code:-1 userInfo:v14];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }
}

- (void)removeAccountPreferences
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to clean prefs %@", &v6, 0xCu);
  }

  [FMPreferencesUtil removeKey:@"needsLostModeExitAuth" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"LastUpdated" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"FMIPInfo" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"LastALCompletionInfo" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"ClientLostModeInfo" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"FMIPWipeLostModeInfo" inDomain:kFMDNotBackedUpPrefDomain];
  +[FMDPreferencesMgr cleanAccountKeys];
  v5 = +[FMDSPStatusUtil sharedInstance];
  [v5 clearCache];
}

- (void)reinitializeProviderWithAccount:(id)account
{
  accountCopy = account;
  [(FMDServiceProvider *)self setAccount:0];
  accountStore = [(FMDServiceProvider *)self accountStore];
  [accountStore saveAccount:0];

  [(FMDServiceProvider *)self addAccount:accountCopy];
}

- (void)accountInfoDidChange
{
  account = [(FMDServiceProvider *)self account];
  activityState = [account activityState];

  if (activityState == 1)
  {

    [(FMDServiceProvider *)self registerDeviceWithCause:@"AccountChange" force:0];
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDServiceProvider *)self fm_logID];
      v7 = 138412290;
      v8 = fm_logID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to start %@ again because account changed", &v7, 0xCu);
    }

    [(FMDServiceProvider *)self makeProviderActive];
  }
}

- (void)accountAdded
{
  [(FMDServiceProvider *)self makeProviderInactive];

  [(FMDServiceProvider *)self makeProviderActive];
}

- (void)accountRemoveRequestedWithCompletion:(id)completion
{
  completionCopy = completion;
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  allAccessories = [accessoryRegistry allAccessories];
  [allAccessories enumerateObjectsUsingBlock:&stru_1002D1068];

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  [supportedAccessoryRegistry clearSupportedAccessoryRegistry];

  [(FMDServiceProvider *)self setSupportedAccessoryRegistry:0];
  accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry2 clearAccessoryRegistry];

  [(FMDServiceProvider *)self setAccessoryRegistry:0];
  accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
  [accessoryLocationStore clearAccessoryLocationStore];

  [(FMDServiceProvider *)self setAccessoryLocationStore:0];
  [(FMDServiceProvider *)self clearFutures];
  v9 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v9 = completionCopy;
  }
}

- (void)registerAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Now Registering Accessory - %@", &v21, 0xCu);
  }

  v9 = [[FMDInternalLocalFindableAccessory alloc] initWithLocalFindableAccessory:accessoryCopy];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry updateAccessory:v9];

  v11 = [AccessoryRegisterAction alloc];
  account = [(FMDServiceProvider *)self account];
  v13 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v9];
  v14 = [(AccessoryRegisterAction *)v11 initWithAccount:account accessory:v9 cause:@"deviceDidPair" force:0 serverInteractionController:v13];

  [(AccessoryRegisterAction *)v14 setIncludeDeviceState:1];
  v15 = +[FMDOperationManager sharedManager];
  accessoryIdentifier = [(FMDInternalLocalFindableAccessory *)v9 accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  v18 = [v15 addAction:v14 forIdentifier:stringValue];

  if (v18)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v19 = [NSError alloc];
    v20 = [v19 initWithDomain:kFMDErrorDomain code:1 userInfo:0];
    (completionCopy)[2](completionCopy, v20);
  }
}

- (void)unregisterAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Now Unregistering Accessory - %@", &v11, 0xCu);
  }

  v9 = [[FMDInternalLocalFindableAccessory alloc] initWithLocalFindableAccessory:accessoryCopy];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry removeAccessory:v9];

  [(FMDServiceProvider *)self registerDeviceWithCause:@"deviceDidUnpair" force:1];
  completionCopy[2](completionCopy, 0);
}

- (BOOL)isActivationLocked
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  account = [v2 account];

  lastIdentityTime = [account lastIdentityTime];

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    lastIdentityTime2 = [account lastIdentityTime];
    v8[0] = 67109376;
    v8[1] = lastIdentityTime != 0;
    v9 = 2048;
    fm_epoch = [lastIdentityTime2 fm_epoch];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "isActivationLocked returned %i, %lli", v8, 0x12u);
  }

  return lastIdentityTime != 0;
}

- (void)activationLockAuthInfo:(id)info
{
  infoCopy = info;
  account = [(FMDServiceProvider *)self account];

  if (account)
  {
    v6 = objc_alloc_init(FMDActivationLockAuthInfo);
    [v6 setIsFindMyON:1];
    [v6 setIsSignedIntoICloud:1];
    [v6 setIsActivationLockEnabled:{-[FMDServiceProvider isActivationLocked](self, "isActivationLocked")}];
    _accountSecurityLevel = [(FMDServiceProvider *)self _accountSecurityLevel];
    if (_accountSecurityLevel)
    {
      v8 = _accountSecurityLevel;
      account2 = [(FMDServiceProvider *)self account];
      adsid = [account2 adsid];

      account3 = [(FMDServiceProvider *)self account];
      dsid = [account3 dsid];

      [v6 setDsid:dsid];
      [v6 setAltDsid:adsid];
      [v6 setIsAccountHSA2:v8 == 4];
      LODWORD(account3) = [v6 isAccountHSA2];
      v13 = sub_100002880();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (account3)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "account is HSA2 - requesting pet", buf, 2u);
        }

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1001CD184;
        v25[3] = &unk_1002D1090;
        v26 = v6;
        v27 = infoCopy;
        [(FMDServiceProvider *)self petForUserWithCompletion:v25];
      }

      else
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Account is non-HSA2. Not requesting PET - returning immediately", buf, 2u);
        }

        (*(infoCopy + 2))(infoCopy, v6, 0);
      }
    }

    else
    {
      v16 = sub_100002880();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10022E5F4(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = [NSError alloc];
      adsid = [v24 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
      (*(infoCopy + 2))(infoCopy, 0, adsid);
    }
  }

  else
  {
    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No FMIP account for authinfo. Returning status as Find My OFF", buf, 2u);
    }

    v6 = objc_alloc_init(FMDActivationLockAuthInfo);
    [v6 setIsFindMyON:0];
    [v6 setPet:0];
    (*(infoCopy + 2))(infoCopy, v6, 0);
  }
}

- (void)petForUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  if (v5)
  {
    v6 = objc_alloc_init(AKAppleIDAuthenticationContext);
    if (v6)
    {
      account = [(FMDServiceProvider *)self account];
      adsid = [account adsid];

      [v6 setAltDSID:adsid];
      [v6 setAuthenticationType:1];
      [v6 setIsUsernameEditable:0];
      [v6 setServiceType:1];
      [v6 setShouldSkipSettingsLaunchAlert:1];
      [v6 setShouldPromptForPasswordOnly:1];
      [v6 setShouldUpdatePersistentServiceTokens:0];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001CD520;
      v13[3] = &unk_1002CF5F0;
      v14 = completionCopy;
      [v5 authenticateWithContext:v6 completion:v13];
    }

    else
    {
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authContext", buf, 2u);
      }

      v12 = [NSError alloc];
      adsid = [v12 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, adsid);
    }
  }

  else
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authController", buf, 2u);
    }

    v10 = [NSError alloc];
    v6 = [v10 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

- (unint64_t)_accountSecurityLevel
{
  account = [(FMDServiceProvider *)self account];
  adsid = [account adsid];

  if (adsid)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 authKitAccountWithAltDSID:adsid];
      if (v6)
      {
        v7 = [v5 securityLevelForAccount:v6];
        v8 = sub_100002880();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134217984;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "securityLevel %lu", &v17, 0xCu);
        }
      }

      else
      {
        v8 = sub_100002880();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to retrieve account", &v17, 2u);
        }

        v7 = 0;
      }
    }

    else
    {
      v6 = sub_100002880();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to instantiate accountManager", &v17, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022E62C(v5, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = 0;
  }

  return v7;
}

- (void)makeProviderActive
{
  account = [(FMDServiceProvider *)self account];
  v4 = account;
  if (!account || [account activityState] == 1)
  {
    goto LABEL_36;
  }

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    *buf = 138412290;
    v69 = fm_logID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#start Making %@ active...", buf, 0xCu);
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    username = [v4 username];
    *buf = 138412290;
    v69 = username;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#start Found account: %@", buf, 0xCu);
  }

  if ([(FMDServiceProvider *)self willMakeProviderActive])
  {
    [(FMDServiceProvider *)self setWaitingToMakeProviderActive:0];
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableDictionary dictionary];
    [(FMDServiceProvider *)self setFuturesByCommandId:v10];

    v11 = [[FMDSupportedAccessoryRegistry alloc] initWithDelegate:self];
    [(FMDServiceProvider *)self setSupportedAccessoryRegistry:v11];

    v12 = [[FMDAccessoryRegistry alloc] initWithSupportDelete:self];
    [(FMDServiceProvider *)self setAccessoryRegistry:v12];

    v13 = [FMDAccessoryRegistryDelegateAdaptor alloc];
    accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
    v15 = [(FMDAccessoryRegistryDelegateAdaptor *)v13 initWithAccessoryRegistry:accessoryRegistry];
    [(FMDServiceProvider *)self setAccessoryRegistryDelegateAdaptor:v15];

    v16 = objc_alloc_init(FMDBluetoothManager);
    [(FMDServiceProvider *)self setBluetoothManager:v16];

    supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
    bluetoothManager = [(FMDServiceProvider *)self bluetoothManager];
    [bluetoothManager setSupportedAccessoryRegistry:supportedAccessoryRegistry];

    accessoryRegistryDelegateAdaptor = [(FMDServiceProvider *)self accessoryRegistryDelegateAdaptor];
    bluetoothManager2 = [(FMDServiceProvider *)self bluetoothManager];
    [bluetoothManager2 setDelegate:accessoryRegistryDelegateAdaptor];

    bluetoothManager3 = [(FMDServiceProvider *)self bluetoothManager];
    [v9 addObject:bluetoothManager3];

    LOBYTE(bluetoothManager2) = [FMPreferencesUtil BOOLForKey:@"DisableFindkit" inDomain:kFMDNotBackedUpPrefDomain];
    v22 = sub_10000BE38();
    v23 = os_log_type_enabled(&v22->super, OS_LOG_TYPE_DEFAULT);
    if (bluetoothManager2)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v22->super, OS_LOG_TYPE_DEFAULT, "Findkit Disabled", buf, 2u);
      }
    }

    else
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v22->super, OS_LOG_TYPE_DEFAULT, "Findkit Enabled", buf, 2u);
      }

      v26 = +[FMDExtConfigurationRegistry sharedInstance];
      v22 = objc_alloc_init(FMDExtAccessoryManager);
      accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
      [(FMDExtAccessoryManager *)v22 setAccessoryRegistry:accessoryRegistry2];

      [(FMDServiceProvider *)self setExtAccessoryManager:v22];
      extAccessoryManager = [(FMDServiceProvider *)self extAccessoryManager];
      [v9 addObject:extAccessoryManager];

      [(FMDExtAccessoryManager *)v22 startMonitoring];
    }

    v29 = [FMDAccessoryLocationStore alloc];
    supportedAccessoryRegistry2 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
    accessoryRegistry3 = [(FMDServiceProvider *)self accessoryRegistry];
    v32 = [(FMDAccessoryLocationStore *)v29 initWithSupportedAccessoryRegistry:supportedAccessoryRegistry2 accessoryRegistry:accessoryRegistry3];
    [(FMDServiceProvider *)self setAccessoryLocationStore:v32];

    accessoryRegistry4 = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry4 registerDelegate:self];

    accessoryRegistry5 = [(FMDServiceProvider *)self accessoryRegistry];
    accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
    [accessoryRegistry5 registerDelegate:accessoryLocationStore];

    accessoryRegistryDelegateAdaptor2 = [(FMDServiceProvider *)self accessoryRegistryDelegateAdaptor];
    v37 = [FMDCompanionRegistryFactory companionRegistryWithDelegate:accessoryRegistryDelegateAdaptor2];

    [v9 addObject:v37];
    accessoryRegistry6 = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry6 addDataSources:v9];

    v39 = +[FMSystemInfo sharedInstance];
    if ([v39 isInternalBuild])
    {
      v40 = [FMPreferencesUtil BOOLForKey:@"AlertOnAccessoryConnect" inDomain:kFMDNotBackedUpPrefDomain];

      if (!v40)
      {
LABEL_21:
        v42 = +[FMDDaemon sharedInstance];
        apsEnvironmentConstant = [v4 apsEnvironmentConstant];
        v44 = [v42 apsHandlerForEnvironment:apsEnvironmentConstant];

        [v44 registerDelegate:self forTopic:@"com.apple.mobileme.fmip"];
        apsToken = [v44 apsToken];

        if (apsToken)
        {
          [(FMDServiceProvider *)self _sendStartupRegister];
        }

        else
        {
          v46 = sub_100002880();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "No APS token yet", buf, 2u);
          }

          v47 = +[FMSystemInfo sharedInstance];
          isInternalBuild = [v47 isInternalBuild];

          if (isInternalBuild)
          {
            objc_initWeak(buf, self);
            v49 = dispatch_time(0, 5000000000);
            v62 = _NSConcreteStackBlock;
            v63 = 3221225472;
            v64 = sub_1001CE020;
            v65 = &unk_1002CD288;
            objc_copyWeak(&v67, buf);
            v66 = v44;
            dispatch_after(v49, &_dispatch_main_q, &v62);

            objc_destroyWeak(&v67);
            objc_destroyWeak(buf);
          }
        }

        [(FMDServiceProvider *)self didMakeProviderActive:v62];
        account2 = [(FMDServiceProvider *)self account];
        [account2 setActivityState:1];

        authInvalidError = [(FMDServiceProvider *)self authInvalidError];
        if (authInvalidError != 1196379972)
        {
          v52 = authInvalidError;
          v53 = sub_100002880();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            serviceName = [(FMDServiceProvider *)self serviceName];
            username2 = [v4 username];
            v56 = [NSString stringWithFourCC:v52];
            *buf = 138412802;
            v69 = serviceName;
            v70 = 2112;
            v71 = username2;
            v72 = 2112;
            v73 = v56;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@: Account %@ is invalid due to '%@'", buf, 0x20u);
          }

          v57 = +[FMSystemInfo sharedInstance];
          isInternalBuild2 = [v57 isInternalBuild];

          if (isInternalBuild2)
          {
            v59 = sub_100002880();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              serviceName2 = [(FMDServiceProvider *)self serviceName];
              *buf = 138412290;
              v69 = serviceName2;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%@ is not functional as authentication credentials are not available.", buf, 0xCu);
            }
          }

          [(FMDServiceProvider *)self tryToFetchAuthToken];
        }

        v61 = +[FMDSPStatusUtil sharedInstance];
        [v61 setStatsChangeHandler:&stru_1002D10B0];
        [v61 refreshBeaconStats];

        goto LABEL_36;
      }

      v39 = +[FMDInternalAccessoryConnectionMonitor sharedMonitor];
      accessoryRegistry7 = [(FMDServiceProvider *)self accessoryRegistry];
      [accessoryRegistry7 registerDelegate:v39];
    }

    goto LABEL_21;
  }

  v24 = sub_100002880();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID2 = [(FMDServiceProvider *)self fm_logID];
    *buf = 138412290;
    v69 = fm_logID2;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not making %@ active now", buf, 0xCu);
  }

  [(FMDServiceProvider *)self setWaitingToMakeProviderActive:1];
LABEL_36:
}

- (void)makeProviderInactive
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    v20 = 138412290;
    v21 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Making %@ inactive...", &v20, 0xCu);
  }

  account = [(FMDServiceProvider *)self account];
  account2 = [(FMDServiceProvider *)self account];
  [account2 setActivityState:2];

  [(FMDServiceProvider *)self willMakeProviderInactive];
  serverInteractionController = [(FMDServiceProvider *)self serverInteractionController];
  [serverInteractionController cancelAllRequests];

  v8 = +[ActionManager sharedManager];
  [v8 cancelAllActions];

  standardLocator = [(FMDServiceProvider *)self standardLocator];
  if (standardLocator)
  {
    v10 = standardLocator;
    standardLocator2 = [(FMDServiceProvider *)self standardLocator];
    locatorRunning = [standardLocator2 locatorRunning];

    if (locatorRunning)
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stopping standard locate...", &v20, 2u);
      }

      standardLocator3 = [(FMDServiceProvider *)self standardLocator];
      [standardLocator3 stopLocator];

      standardLocator4 = [(FMDServiceProvider *)self standardLocator];
      [standardLocator4 setStoppedLocatorBlock:0];
    }
  }

  [(FMDServiceProvider *)self setStandardLocator:0];
  v16 = +[FMDDaemon sharedInstance];
  apsEnvironmentConstant = [account apsEnvironmentConstant];
  v18 = [v16 apsHandlerForEnvironment:apsEnvironmentConstant];

  [v18 deregisterDelegate:self];
  v19 = +[FMDSPStatusUtil sharedInstance];
  [v19 setStatsChangeHandler:0];
  [v19 cancelRefresh];
  [(FMDServiceProvider *)self didMakeProviderInactive];
}

- (void)_sendStartupRegister
{
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE484;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)queueAccessoryActionsIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider checking if we need to QC for accessory", &v16, 2u);
  }

  if (!neededCopy)
  {
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider Skipping QC due to nil accessory.", &v16, 2u);
    }

    goto LABEL_10;
  }

  commandContext = [neededCopy commandContext];
  pendingAction = [commandContext pendingAction];

  if (pendingAction)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = neededCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider QC required for %@", &v16, 0xCu);
    }

    v9 = [AccessoryAction alloc];
    account = [(FMDServiceProvider *)self account];
    v11 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:neededCopy];
    v12 = [(AccessoryAction *)v9 initWithAccount:account accessory:neededCopy requiresConnectivity:1 serverInteractionController:v11];

    accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry registerDelegate:v12];

    v14 = +[ActionManager sharedManager];
    v15 = [v14 enqueueAction:v12];

LABEL_10:
  }
}

- (void)registerCommonNotifications
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"deviceNameChanged:" name:@"FMDDeviceNameChangedNotification" object:0];
  [v4 addObserver:self selector:"passcodeStateChanged:" name:@"FMDPasscodeStateChangedNotification" object:0];
  [v4 addObserver:self selector:"allowPasscodeModificationChanged:" name:@"FMDAllowPasscodeModificationChangedNotification" object:0];
  [v4 addObserver:self selector:"locationServicesStateChanged:" name:@"FMDLocationServicesStateChangedNotification" object:0];
  [v4 addObserver:self selector:"localeChanged:" name:@"FMDLocaleChangedNotification" object:0];
  [v4 addObserver:self selector:"searchPartyBeaconsChanged:" name:@"kFMDDeviceSPSelfBeaconChangeNotification" object:0];
  [v4 addObserver:self selector:"_handleAccessoryDidPairNotification:" name:@"kFMDAccessoryDidPairLocalNotification" object:0];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [v4 addObserver:accessoryRegistry selector:"refetchBauuids:" name:@"kFMDAccessoryDidPairLocalNotification" object:0];
}

- (void)deregisterCommonNotifications
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"FMDDeviceNameChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDPasscodeStateChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDAllowPasscodeModificationChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDLocationServicesStateChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDLocaleChangedNotification" object:0];
  [v4 removeObserver:self name:@"kFMDDeviceSPSelfBeaconChangeNotification" object:0];
  [v4 removeObserver:self name:@"kFMDAccessoryDidPairLocalNotification" object:0];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [v4 removeObserver:accessoryRegistry name:@"kFMDAccessoryDidPairLocalNotification" object:0];
}

- (id)urlForRequestType:(id)type
{
  typeCopy = type;
  v5 = +[FMDServerConfig sharedInstance];
  v6 = [v5 urlTemplateForRequestType:typeCopy];

  if (v6)
  {
    v7 = +[FMDSystemConfig sharedInstance];
    deviceUDID = [v7 deviceUDID];

    v9 = objc_alloc_init(RequestTemplateURL);
    account = [(FMDServiceProvider *)self account];
    v11 = [(RequestTemplateURL *)v9 urlFromTemplate:v6 account:account udid:deviceUDID];
  }

  else
  {
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = typeCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did not find a url template for request type : %@", &v14, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)serverInteractionControllerForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  if (accessoryIdentifier)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_10000AB54;
    v16 = sub_100002B74;
    v17 = 0;
    serialQueue = [(FMDServiceProvider *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CEDAC;
    block[3] = &unk_1002CDA70;
    p_buf = &buf;
    block[4] = self;
    v11 = accessoryIdentifier;
    dispatch_sync(serialQueue, block);

    v7 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to get serverInteractionController by accessory since accessoryIdentifier was nil. Accessory: %@.", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)serverInteractionControllerForAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy && ([accountCopy authId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_10000AB54;
    v18 = sub_100002B74;
    v19 = 0;
    serialQueue = [(FMDServiceProvider *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CF0C8;
    block[3] = &unk_1002CDA70;
    v13 = buf;
    block[4] = self;
    v12 = v5;
    dispatch_sync(serialQueue, block);

    v8 = *(v15 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unable to get serverinteractioncontroller by account since account or authID (DSID) was nil", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (unsigned)essentialServerInfoMissingError
{
  authInvalidError = [(FMDServiceProvider *)self authInvalidError];
  if (authInvalidError == 1196379972)
  {
    v4 = +[FMDDaemon sharedInstance];
    account = [(FMDServiceProvider *)self account];
    apsEnvironmentConstant = [account apsEnvironmentConstant];
    v7 = [v4 apsHandlerForEnvironment:apsEnvironmentConstant];

    apsToken = [v7 apsToken];

    if (apsToken)
    {
      authInvalidError = 1196379972;
    }

    else
    {
      authInvalidError = 1480675411;
    }
  }

  return authInvalidError;
}

- (unsigned)authInvalidError
{
  account = [(FMDServiceProvider *)self account];

  if (!account)
  {
    return 1480672067;
  }

  account2 = [(FMDServiceProvider *)self account];
  username = [account2 username];
  v6 = [username length];

  if (!v6)
  {
    return 1481986898;
  }

  account3 = [(FMDServiceProvider *)self account];
  authToken = [account3 authToken];
  v9 = [authToken length];

  if (!v9)
  {
    return 1481920331;
  }

  account4 = [(FMDServiceProvider *)self account];
  authId = [account4 authId];
  v12 = [authId length];

  if (v12)
  {
    return 1196379972;
  }

  else
  {
    return 1482639684;
  }
}

- (void)tryToFetchAuthToken
{
  account = [(FMDServiceProvider *)self account];
  authToken = [account authToken];
  [authToken length];
}

- (void)showAlertFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10022E664();
  }

  v5 = [responseCopy objectForKeyedSubscript:@"title"];
  v6 = [responseCopy objectForKeyedSubscript:@"text"];
  v7 = [responseCopy objectForKeyedSubscript:@"okButtonTitle"];
  v8 = [responseCopy objectForKeyedSubscript:@"okButtonURL"];
  v9 = [responseCopy objectForKeyedSubscript:@"okButtonAction"];
  v10 = [responseCopy objectForKeyedSubscript:@"cancelButtonTitle"];
  v11 = [responseCopy objectForKeyedSubscript:@"cancelButtonURL"];
  v12 = [responseCopy objectForKeyedSubscript:@"cancelButtonAction"];
  v13 = [responseCopy objectForKeyedSubscript:@"delay"];
  [v13 doubleValue];
  v15 = v14;

  if (v5)
  {
    v33 = v8;
    v16 = v7;
    v17 = +[FMDPreferencesMgr accessibilityFontSizeEnabled];
    v18 = objc_alloc_init(FMAlert);
    [v18 setCategory:2];
    if (v17)
    {
      fm_stringByReplacingNonBreakingSpaces = [v5 fm_stringByReplacingNonBreakingSpaces];
      [v18 setMsgTitle:fm_stringByReplacingNonBreakingSpaces];

      fm_stringByReplacingNonBreakingSpaces2 = [v6 fm_stringByReplacingNonBreakingSpaces];
      [v18 setMsgText:fm_stringByReplacingNonBreakingSpaces2];
    }

    else
    {
      [v18 setMsgTitle:v5];
      [v18 setMsgText:v6];
    }

    [v18 setShowMsgInLockScreen:1];
    [v18 setDismissMsgOnUnlock:0];
    [v18 setDismissMsgOnLock:0];
    v7 = v16;
    [v18 setDefaultButtonTitle:v16];
    if (v33)
    {
      v21 = v9 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v9 = @"open-url";
    }

    if (v11)
    {
      v22 = v12 == 0;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v12 = @"open-url";
    }

    if (v9)
    {
      v23 = [(FMDServiceProvider *)self alertActionInfoForAction:v9 andURL:?];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1001CFA58;
      v39[3] = &unk_1002CD478;
      v40 = v9;
      v41 = v23;
      v24 = v23;
      [v18 setDefaultButtonAction:v39];

      v7 = v16;
    }

    [v18 setAlternateButtonTitle:v10];
    if (v12)
    {
      v25 = [(FMDServiceProvider *)self alertActionInfoForAction:v12 andURL:v11];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001CFB10;
      v36[3] = &unk_1002CD478;
      v37 = v12;
      v38 = v25;
      v26 = v25;
      [v18 setAlternateButtonAction:v36];
    }

    defaultButtonTitle = [v18 defaultButtonTitle];
    if (!defaultButtonTitle)
    {
      alternateButtonTitle = [v18 alternateButtonTitle];

      if (alternateButtonTitle)
      {
        goto LABEL_24;
      }

      defaultButtonTitle = [@"FMD_DEFAULT_ALERT_BUTTON" fmd_localizedString];
      [v18 setDefaultButtonTitle:defaultButtonTitle];
    }

LABEL_24:
    if (v15 <= 0.0)
    {
      v31 = +[FMAlertManager sharedInstance];
      [v31 activateAlert:v18];
    }

    else
    {
      v29 = sub_100002880();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Showing alert after %.2f seconds...", buf, 0xCu);
      }

      v30 = dispatch_time(0, (v15 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001CFBC8;
      block[3] = &unk_1002CD4C8;
      v35 = v18;
      dispatch_after(v30, &_dispatch_main_q, block);
      v31 = v35;
    }

    v8 = v33;
  }
}

- (void)didReceiveAuthFailureForRequest:(id)request
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(FMDServiceProvider *)self serviceName];
    account = [(FMDServiceProvider *)self account];
    username = [account username];
    v8 = 138412546;
    v9 = serviceName;
    v10 = 2112;
    v11 = username;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ - Auth failure received for account %@", &v8, 0x16u);
  }
}

- (void)didReceiveServerAlertForRequest:(id)request
{
  requestCopy = request;
  alertFromServerResponse = [requestCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E6CC(requestCopy, v6);
    }

    alertFromServerResponse2 = [requestCopy alertFromServerResponse];
    [(FMDServiceProvider *)self showAlertFromServerResponse:alertFromServerResponse2];
  }
}

- (void)deviceNameChanged:(id)changed
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Register for device name change", v5, 2u);
  }

  [(FMDServiceProvider *)self registerDeviceWithCause:@"DeviceNameChanged" force:0];
}

- (void)locationServicesStateChanged:(id)changed
{
  [(FMDServiceProvider *)self registerDeviceWithCause:@"LocationServicesStateChanged" force:0];
  v4 = +[FMDSystemConfig sharedInstance];
  isLocationServicesEnabled = [v4 isLocationServicesEnabled];

  if ((isLocationServicesEnabled & 1) == 0)
  {
    accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
    [accessoryLocationStore clearAccessoryLocationStore];
  }
}

- (void)searchPartyBeaconsChanged:(id)changed
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Register for search Party Beacons Changed", buf, 2u);
  }

  v5 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFFD4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)_handleAccessoryDidPairNotification:(id)notification
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_handleAccessoryDidPairNotification", v6, 2u);
  }

  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry reloadData];
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy category] == 1 || objc_msgSend(updateCopy, "category") == 3)
  {
    v5 = sub_10017DA30();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E780();
    }

    v6 = [AccessoryRegisterAction alloc];
    account = [(FMDServiceProvider *)self account];
    v8 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:updateCopy];
    v9 = [(AccessoryRegisterAction *)v6 initWithAccount:account accessory:updateCopy cause:@"accessoryRegistryUpdate" force:0 serverInteractionController:v8];

    [(AccessoryRegisterAction *)v9 setIncludeDeviceState:1];
    v10 = +[FMDOperationManager sharedManager];
    accessoryIdentifier = [updateCopy accessoryIdentifier];
    stringValue = [accessoryIdentifier stringValue];
    [v10 addAction:v9 forIdentifier:stringValue];
  }
}

- (void)accessoryDidPair:(id)pair
{
  pairCopy = pair;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = pairCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory did pair : sending a register: %@", &v13, 0xCu);
  }

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  [supportedAccessoryRegistry resetSupportedAccessoriesVersion];

  [(FMDServiceProvider *)self registerDeviceWithCause:@"deviceDidPair" force:0];
  [AccessoryRegisterAction cleanupContextForAccessory:pairCopy];
  v7 = [pairCopy conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];
  v8 = sub_100002880();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Accessory did pair", &v13, 2u);
    }

    supportedAccessoryRegistry2 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
    accessoryRegistry2 = [supportedAccessoryRegistry2 assetsForAccessory:pairCopy];

    accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry updateAccessory:pairCopy assets:accessoryRegistry2];
  }

  else
  {
    if (v9)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Internal Accessory did pair", &v13, 2u);
    }

    accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry2 forceUpdateAccessory:pairCopy];
  }
}

- (void)accessoryDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory did un-pair : sending a register.", v7, 2u);
  }

  [(FMDServiceProvider *)self registerDeviceWithCause:@"deviceDidUnpair" force:0];
  commandContext = [unpairCopy commandContext];
  [commandContext cleanupContexts];

  [AccessoryRegisterAction cleanupContextForAccessory:unpairCopy];
}

- (BOOL)supportsAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10022E7E8();
  }

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  v7 = [supportedAccessoryRegistry isAccessorySupported:accessoryCopy];

  return v7;
}

- (void)supportedAccessoryRegistryDidUpdateSupportedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  allAccessories = [accessoryRegistry allAccessories];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D0598;
  v8[3] = &unk_1002D10D8;
  v9 = accessoriesCopy;
  selfCopy = self;
  v7 = accessoriesCopy;
  [allAccessories enumerateObjectsUsingBlock:v8];
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  account = [(FMDServiceProvider *)self account];
  LOBYTE(self) = [(FMDServiceProvider *)self enqueueRequest:requestCopy account:account];

  return self;
}

- (BOOL)enqueueRequest:(id)request account:(id)account
{
  requestCopy = request;
  accountCopy = account;
  v8 = accountCopy;
  if (accountCopy)
  {
    authId = [accountCopy authId];
    account = [(FMDServiceProvider *)self account];
    authId2 = [account authId];
    v12 = [authId localizedCaseInsensitiveCompare:authId2];

    if (v12)
    {
      [(FMDServiceProvider *)self serverInteractionControllerForAccount:v8];
    }

    else
    {
      [(FMDServiceProvider *)self serverInteractionController];
    }
    v16 = ;
    v15 = [v16 enqueueRequest:requestCopy];
  }

  else
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [requestCopy fm_logID];
      v18 = 138412290;
      v19 = fm_logID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not sending request %@ to server since there is no account. This seems like a stray request that escaped the deinitialization process", &v18, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)enqueueRequest:(id)request forAccessory:(id)accessory
{
  requestCopy = request;
  accessoryCopy = accessory;
  account = [(FMDServiceProvider *)self account];

  if (!account)
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [requestCopy fm_logID];
      v15 = 138412290;
      v16 = fm_logID;
      v13 = "Not sending request %@ to server since there is no account. This seems like a stray request that escaped the deinitialization process";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
    }

LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  if (!accessoryCopy)
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [requestCopy fm_logID];
      v15 = 138412290;
      v16 = fm_logID;
      v13 = "Not sending request %@ to server since there is no accessory. This seems like a stray request that escaped the deinitialization process";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:accessoryCopy];
  v10 = [v9 enqueueRequest:requestCopy];

LABEL_10:
  return v10;
}

- (void)didReceiveAPSMessage:(id)message
{
  messageCopy = message;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v58 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push message received %@", buf, 0xCu);
  }

  v6 = [messageCopy objectForKey:@"fmipIntents"];
  v7 = [messageCopy objectForKey:@"fmipAccessoryIntents"];
  v8 = [messageCopy objectForKey:@"fmipId"];
  v50 = [messageCopy objectForKeyedSubscript:@"serverContext"];
  v9 = +[FMSystemInfo sharedInstance];
  if ([v9 isInternalBuild])
  {
    v10 = +[FMDPreferencesMgr disablePush];

    if (v10)
    {
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Pushes are disabled", buf, 2u);
      }

LABEL_14:

      goto LABEL_65;
    }
  }

  else
  {
  }

  if (![(FMDServiceProvider *)self _handleSecureLocationsPush:messageCopy completion:0])
  {
    account = [(FMDServiceProvider *)self account];

    if (!account)
    {
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10022E8BC(v11, v15, v16, v17, v18, v19, v20, v21);
      }

      goto LABEL_14;
    }

    v13 = +[FMSystemInfo sharedInstance];
    if ([v13 isInternalBuild])
    {
      v14 = +[FMDPreferencesMgr disableIntents];
    }

    else
    {
      v14 = 0;
    }

    if (v6 | v7 && v14)
    {
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Intents are disabled", buf, 2u);
      }
    }

    if (((v6 | v7) == 0) | v14 & 1)
    {
      [(FMDServiceProvider *)self _handlePushWithoutIntents:v50];
    }

    else
    {
      v23 = [(FMDServiceProvider *)self _isValidIntentAccountId:v8];
      v24 = sub_100002880();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v58 = v23;
        *&v58[4] = 2112;
        *&v58[6] = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "isValidIntentAccount %d for intentAccountId %@", buf, 0x12u);
      }

      if (v23)
      {
        v51 = +[NSMutableSet set];
        if (v7)
        {
          v45 = v8;
          v46 = v7;
          v47 = v6;
          v48 = messageCopy;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          obj = v7;
          v25 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v53;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v53 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v52 + 1) + 8 * i);
                v30 = [v29 objectForKey:@"id"];
                v31 = [v29 objectForKey:@"type"];
                if ([v31 isEqualToString:@"SND"])
                {
                  [(FMDServiceProvider *)self _handleSoundIntent:v29 serverContext:v50];
                }

                else if ([v31 isEqualToString:@"LOC"])
                {
                  [(FMDServiceProvider *)self _handleLocateIntent:v29 serverContext:v50];
                }

                else if ([v31 isEqualToString:@"QC"])
                {
                  [(FMDServiceProvider *)self _handleQCIntent:v29 serverContext:v50];
                }

                [v51 addObject:v30];
              }

              v26 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
            }

            while (v26);
          }

          v6 = v47;
          messageCopy = v48;
          v8 = v45;
          v7 = v46;
        }

        if (v6)
        {
          v32 = [v6 objectForKey:@"SND"];
          v33 = v32;
          if (v32)
          {
            v34 = [v32 objectForKey:@"id"];
            if ([v51 containsObject:v34])
            {
              v35 = sub_100002880();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                sub_10022E850();
              }
            }

            else
            {
              [(FMDServiceProvider *)self _handleSoundIntent:v33 serverContext:v50];
            }
          }

          selfCopy = self;
          v37 = [v6 objectForKey:@"LOC"];
          v38 = v37;
          if (v37)
          {
            v39 = [v37 objectForKey:@"id"];
            if ([v51 containsObject:v39])
            {
              v40 = sub_100002880();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                sub_10022E850();
              }
            }

            else
            {
              [(FMDServiceProvider *)selfCopy _handleLocateIntent:v38 serverContext:v50];
            }
          }

          v41 = [v6 objectForKey:@"QC"];
          v42 = v41;
          if (v41)
          {
            v43 = [v41 objectForKey:@"id"];
            if ([v51 containsObject:v43])
            {
              v44 = sub_100002880();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                sub_10022E850();
              }
            }

            else
            {
              [(FMDServiceProvider *)selfCopy _handleQCIntent:v42 serverContext:v50];
            }
          }
        }
      }
    }
  }

LABEL_65:
}

- (void)didReceiveAPSToken:(id)token
{
  if ([(FMDServiceProvider *)self completedStartupRegister])
  {

    [(FMDServiceProvider *)self registerDeviceWithCause:@"APSTokenReceived" force:0];
  }

  else
  {

    [(FMDServiceProvider *)self _sendStartupRegister];
  }
}

- (void)_handlePushWithoutIntents:(id)intents
{
  intentsCopy = intents;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = intentsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling push without intent %@", buf, 0xCu);
  }

  essentialServerInfoMissingError = [(FMDServiceProvider *)self essentialServerInfoMissingError];
  if (essentialServerInfoMissingError == 1196379972)
  {
    v7 = [FMDActingRequestDecorator alloc];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001D1380;
    v23[3] = &unk_1002CD580;
    v23[4] = self;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1001D13FC;
    v21 = &unk_1002CD580;
    v22 = intentsCopy;
    v8 = [(FMDActingRequestDecorator *)v7 initWithDeviceContextGenerator:&stru_1002D10F8 deviceInfoGenerator:v23 serverContextGenerator:&v18 requestHeaderGenerator:0];
    v9 = [QCAction alloc];
    v10 = [(FMDServiceProvider *)self account:v18];
    serverInteractionController = [(FMDServiceProvider *)self serverInteractionController];
    v12 = [(QCAction *)v9 initWithAccount:v10 shutdownActivityPending:0 serverInteractionController:serverInteractionController];

    [(QCAction *)v12 setRequestDecorator:v8];
    v13 = +[ActionManager sharedManager];
    v14 = [v13 enqueueAction:v12];
  }

  else
  {
    v15 = essentialServerInfoMissingError;
    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [NSString stringWithFourCC:v15];
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring APS message since some essential server info is missing - '%@'", buf, 0xCu);
    }

    [(FMDServiceProvider *)self tryToFetchAuthToken];
  }
}

- (void)_handleLocateIntent:(id)intent serverContext:(id)context
{
  intentCopy = intent;
  contextCopy = context;
  v8 = [intentCopy objectForKey:@"id"];
  if (v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Locate command intent found", &v24, 2u);
    }

    v10 = [intentCopy objectForKey:@"udid"];
    fm_nullToNil = [v10 fm_nullToNil];

    if ([fm_nullToNil length])
    {
      v12 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
      v14 = [accessoryRegistry accessoryForIdentifier:v12];

      if (v14)
      {
        commandContext = [v14 commandContext];
        [commandContext setPendingActionIntent:intentCopy];

        v16 = sub_100002880();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412546;
          v25 = v14;
          v26 = 2112;
          v27 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found accessory %@ from push for id %@", &v24, 0x16u);
        }

        v17 = [AccessoryAction alloc];
        account = [(FMDServiceProvider *)self account];
        v19 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v14];
        v20 = [(AccessoryAction *)v17 initWithAccount:account accessory:v14 requiresConnectivity:0 serverInteractionController:v19];

        accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
        [accessoryRegistry2 registerDelegate:v20];

        v22 = +[ActionManager sharedManager];
        v23 = [v22 enqueueAction:v20];
      }
    }

    else
    {
      [(FMDServiceProvider *)self _handlePushWithoutIntents:contextCopy];
    }
  }
}

- (void)_handleQCIntent:(id)intent serverContext:(id)context
{
  intentCopy = intent;
  contextCopy = context;
  v8 = [intentCopy objectForKey:@"id"];
  v9 = [intentCopy objectForKey:@"udid"];
  fm_nullToNil = [v9 fm_nullToNil];

  v11 = [intentCopy objectForKey:@"waitForConnect"];
  bOOLValue = [v11 BOOLValue];

  if (v8)
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "QC intent found", buf, 2u);
    }

    if ([fm_nullToNil length])
    {
      v14 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
      v16 = [accessoryRegistry accessoryForIdentifier:v14];

      if (v16)
      {
        v26 = bOOLValue;
        commandContext = [v16 commandContext];
        [commandContext setPendingActionIntent:intentCopy];

        v18 = sub_100002880();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v16;
          v29 = 2112;
          v30 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found accessory %@ from push for id %@", buf, 0x16u);
        }

        v19 = [AccessoryAction alloc];
        account = [(FMDServiceProvider *)self account];
        v21 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v16];
        v22 = [(AccessoryAction *)v19 initWithAccount:account accessory:v16 requiresConnectivity:v26 serverInteractionController:v21];

        accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
        [accessoryRegistry2 registerDelegate:v22];

        v24 = +[ActionManager sharedManager];
        v25 = [v24 enqueueAction:v22];
      }
    }

    else
    {
      [(FMDServiceProvider *)self _handlePushWithoutIntents:contextCopy];
    }
  }
}

- (id)futureForCommandId:(id)id
{
  idCopy = id;
  futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
  v6 = [futuresByCommandId objectForKeyedSubscript:idCopy];

  return v6;
}

- (void)setFuture:(id)future commandId:(id)id
{
  if (future && id)
  {
    idCopy = id;
    futureCopy = future;
    futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
    [futuresByCommandId setObject:futureCopy forKeyedSubscript:idCopy];
  }
}

- (void)removeFutureForCommandId:(id)id
{
  if (id)
  {
    idCopy = id;
    futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
    [futuresByCommandId removeObjectForKey:idCopy];
  }
}

- (void)clearFutures
{
  futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
  [futuresByCommandId removeAllObjects];
}

- (void)_handleSoundIntent:(id)intent serverContext:(id)context
{
  intentCopy = intent;
  v6 = [intentCopy objectForKey:@"id"];
  v7 = [intentCopy objectForKey:@"maxDurationInSeconds"];
  v8 = [intentCopy objectForKey:@"udid"];
  fm_nullToNil = [v8 fm_nullToNil];

  if (v6)
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v7 doubleValue];
      *buf = 134217984;
      v73 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Play sound intent found, playing sound for %f seconds...", buf, 0xCu);
    }

    if ([fm_nullToNil length])
    {
      v12 = [intentCopy objectForKey:@"rampUpDurationInSeconds"];
      v13 = [intentCopy objectForKey:@"rampDownDurationInSeconds"];
      v68 = [intentCopy objectForKey:@"channels"];
      v14 = [intentCopy objectForKey:@"userConfirmedSafetyWarning"];
      bOOLValue = [v14 BOOLValue];

      v15 = [intentCopy objectForKey:@"forceConnection"];
      bOOLValue2 = [v15 BOOLValue];

      v16 = [intentCopy objectForKeyedSubscript:@"scanDurationInSeconds"];
      v71 = [intentCopy objectForKey:@"intentEpochTime"];
      v70 = [intentCopy objectForKey:@"intentExpiryInSeconds"];
      v69 = [intentCopy objectForKey:@"delayIntervalInSeconds"];
      v67 = [intentCopy objectForKey:@"inEarDetectionTimeout"];
      v17 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
      v66 = v17;
      v19 = [accessoryRegistry accessoryForIdentifier:v17];

      v20 = sub_100002880();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v65 = v7;
        if (v21)
        {
          *buf = 138412546;
          v73 = v19;
          v74 = 2112;
          v75 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found accessory %@ from push for id %@", buf, 0x16u);
        }

        commandContext = [v19 commandContext];
        [commandContext setPendingActionIntent:intentCopy];

        supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
        [supportedAccessoryRegistry downloadAssetsIfNeededForAccessory:v19];

        supportedAccessoryRegistry2 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
        v59 = [supportedAccessoryRegistry2 defaultTimeoutAudioSafetyStatusForAccessory:v19];

        v20 = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v71 integerValue]);
        v63 = v16;
        v64 = v13;
        v62 = v12;
        if (!v70)
        {
          goto LABEL_11;
        }

        [v70 doubleValue];
        if (v25 <= 0.0)
        {
          goto LABEL_11;
        }

        [v70 doubleValue];
        v26 = [v20 dateByAddingTimeInterval:?];
        v27 = +[NSDate date];
        [v27 timeIntervalSinceReferenceDate];
        v29 = v28;
        [v26 timeIntervalSinceReferenceDate];
        v31 = v30;

        if (v29 < v31)
        {
LABEL_11:
          v32 = [(FMDServiceProvider *)self futureForCommandId:v6];

          if (v32)
          {
            v33 = sub_100002880();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider handling for command id has already started", buf, 2u);
            }
          }

          else
          {
            [(FMDServiceProvider *)self clearFutures];
            v58 = objc_alloc_init(FMFuture);
            [(FMDServiceProvider *)self setFuture:v58 commandId:v6];
            supportedAccessoryRegistry3 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
            v36 = [supportedAccessoryRegistry3 playbackChannelNamesForAccessory:v19 commandChannels:v68];

            v37 = [FMDAccessoryPlaySoundAction alloc];
            [(FMDServiceProvider *)self accessoryRegistry];
            v39 = v38 = v12;
            v40 = [(FMDAccessoryPlaySoundAction *)v37 initWithAccessory:v19 accessoryRegistry:v39 channels:v36];

            [(FMDAccessoryPlaySoundAction *)v40 setDuration:v65];
            [(FMDAccessoryPlaySoundAction *)v40 setTimeout:v63];
            v41 = v38;
            v33 = v58;
            [(FMDAccessoryPlaySoundAction *)v40 setRampUpDuration:v41];
            [(FMDAccessoryPlaySoundAction *)v40 setRampDownDuration:v64];
            [(FMDAccessoryPlaySoundAction *)v40 setDefaultAudioSafetyStatus:v59];
            [(FMDAccessoryPlaySoundAction *)v40 setFuture:v58];
            [(FMDAccessoryPlaySoundAction *)v40 setForceConnection:bOOLValue2];
            [(FMDAccessoryPlaySoundAction *)v40 setBypassInEarCheck:bOOLValue];
            [(FMDAccessoryPlaySoundAction *)v40 setInEarDetectionTimeout:v67];
            bluetoothManager = [(FMDServiceProvider *)self bluetoothManager];
            [(FMDAccessoryPlaySoundAction *)v40 setBluetoothManager:bluetoothManager];

            accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
            [accessoryRegistry2 registerDelegate:v40];

            v44 = +[ActionManager sharedManager];
            v45 = [v44 enqueueAction:v40];

            v68 = v36;
          }
        }

        v46 = [AccessoryAction alloc];
        account = [(FMDServiceProvider *)self account];
        v48 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v19];
        v49 = [(AccessoryAction *)v46 initWithAccount:account accessory:v19 requiresConnectivity:0 serverInteractionController:v48];

        accessoryRegistry3 = [(FMDServiceProvider *)self accessoryRegistry];
        [accessoryRegistry3 registerDelegate:v49];

        [v69 doubleValue];
        if (v51 <= 0.0)
        {
          v54 = +[ActionManager sharedManager];
          v57 = [(TimedWaitAction *)v54 enqueueAction:v49];
        }

        else
        {
          v52 = [TimedWaitAction alloc];
          [v69 doubleValue];
          v53 = [NSDate dateWithTimeIntervalSinceNow:?];
          v54 = [(TimedWaitAction *)v52 initWithAction:v49 executeAt:v53];

          v55 = +[ActionManager sharedManager];
          v56 = [v55 enqueueAction:v54];
        }

        v13 = v64;
        v7 = v65;
        v12 = v62;

        v16 = v63;
      }

      else if (v21)
      {
        *buf = 138412290;
        v73 = fm_nullToNil;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No accessory found with id %@. Ignoring the push", buf, 0xCu);
      }
    }

    else
    {
      v34 = +[FMDStartupRegisterManager sharedInstance];
      [v34 eventDidOccur:4];

      v12 = [NSString stringWithFormat:@"command-%@-id", @"message"];
      [FMPreferencesUtil setString:v6 forKey:v12 inDomain:kFMDPrefDomain];
      [FMPreferencesUtil setString:v6 forKey:@"lastCommandId" inDomain:kFMDNotBackedUpPrefDomain];
    }
  }
}

- (BOOL)_isValidIntentAccountId:(id)id
{
  idCopy = id;
  account = [(FMDServiceProvider *)self account];
  adsid = [account adsid];

  v7 = [adsid dataUsingEncoding:4];
  CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), md);
  v8 = [NSData dataWithBytes:md length:32];
  v9 = [v8 base64EncodedStringWithOptions:0];
  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = idCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Comparing ADSIDs (_isValidIntentAccountId) %@ : %@", &v13, 0x16u);
  }

  v11 = [idCopy isEqualToString:v9];
  return v11;
}

- (void)_accountDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy && !toCopy)
  {
    v6 = 1;
LABEL_4:
    v7 = +[FMDStartupRegisterManager sharedInstance];
    [v7 eventDidOccur:v6];

    goto LABEL_5;
  }

  if (fromCopy)
  {
    if (toCopy)
    {
      authId = [fromCopy authId];
      authId2 = [toCopy authId];
      v10 = [authId isEqualToString:authId2];

      if ((v10 & 1) == 0)
      {
        v11 = +[FMDStartupRegisterManager sharedInstance];
        [v11 eventDidOccur:1];

        v6 = 0;
        goto LABEL_4;
      }
    }
  }

LABEL_5:
}

- (BOOL)_handleSecureLocationsPush:(id)push completion:(id)completion
{
  pushCopy = push;
  completionCopy = completion;
  v8 = [pushCopy objectForKey:@"findmyws"];
  if (v8)
  {
    v9 = +[FMXPCTransactionManager sharedInstance];
    [v9 beginTransaction:@"MDSecureLocationsHandlePushTransaction"];

    v10 = [v8 objectForKey:@"locationPayload"];
    v11 = [v8 objectForKey:@"cmd"];
    v48 = 0;
    v12 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v48];
    v13 = v48;
    v14 = v13 == 0;
    if (v13)
    {
      v15 = _os_feature_enabled_impl();
      v16 = sub_1000029E0();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (!v17)
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v50 = v13;
        v18 = "Error creating json data to send to FML %@";
      }

      else
      {
        if (!v17)
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v50 = v13;
        v18 = "Error creating json data to send to searchparty %@";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_19:

      v26 = +[FMXPCTransactionManager sharedInstance];
      [v26 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v13);
      }

      goto LABEL_37;
    }

    if (v10)
    {
      v36 = v11;
      v20 = sub_1000029E0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v10;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received Location Payload Push %@", buf, 0xCu);
      }

      v21 = _os_feature_enabled_impl();
      v22 = sub_1000029E0();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          *buf = 138412290;
          v50 = v12;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending processLocationPayload payload to FML %@", buf, 0xCu);
        }

        findMyLocate = [(FMDServiceProvider *)self findMyLocate];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1001D2C6C;
        v46[3] = &unk_1002CD770;
        v47 = completionCopy;
        [findMyLocate processLocationPayload:v12 completionHandler:v46];

        v25 = v47;
        goto LABEL_35;
      }

      if (v23)
      {
        *buf = 138412290;
        v50 = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending processLocationPayload payload to SearchParty %@", buf, 0xCu);
      }

      v25 = objc_alloc_init(SPSecureLocationsManager);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1001D2D64;
      v44[3] = &unk_1002CD770;
      v45 = completionCopy;
      [v25 receivedLocationPayload:v12 completion:v44];
      v32 = v45;
    }

    else
    {
      if (!v11)
      {
LABEL_36:
        [FMXPCTransactionManager sharedInstance:v36];
        v34 = v33 = v11;
        [v34 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

        v11 = v33;
LABEL_37:

        goto LABEL_38;
      }

      v36 = v11;
      v27 = sub_1000029E0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = pushCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Received Location Command Push %@", buf, 0xCu);
      }

      v28 = _os_feature_enabled_impl();
      v29 = sub_1000029E0();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v30)
        {
          *buf = 138412290;
          v50 = v12;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending processLocationCommandPayload payload to FML %@", buf, 0xCu);
        }

        findMyLocate2 = [(FMDServiceProvider *)self findMyLocate];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_1001D2E5C;
        v42[3] = &unk_1002CD770;
        v43 = completionCopy;
        [findMyLocate2 processLocationCommandPayload:v12 completionHandler:v42];

        v25 = v43;
        goto LABEL_35;
      }

      if (v30)
      {
        *buf = 138412290;
        v50 = v12;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending processLocationCommandPayload payload to SearchParty %@", buf, 0xCu);
      }

      v25 = objc_alloc_init(SPSecureLocationsManager);
      v37 = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = sub_1001D2F54;
      v40 = &unk_1002CD770;
      v41 = completionCopy;
      [v25 receivedLocationCommand:v12 completion:&v37];
      v32 = v41;
    }

LABEL_35:
    v11 = v36;

    goto LABEL_36;
  }

  if (completionCopy)
  {
    v19 = [NSError errorWithDomain:kFMDErrorDomain code:1 userInfo:0];
    completionCopy[2](completionCopy, v19);
  }

  v14 = 0;
LABEL_38:

  return v14;
}

- (void)startLocationMonitoringIfNeeded
{
  locationMonitor = [(FMDServiceProvider *)self locationMonitor];

  if (!locationMonitor)
  {
    v4 = objc_alloc_init(FMDSecureLocationMonitor);
    [(FMDServiceProvider *)self setLocationMonitor:v4];
  }

  locationMonitor2 = [(FMDServiceProvider *)self locationMonitor];
  [locationMonitor2 startLocationMonitorAfterRestart];
}

- (id)apsToken
{
  account = [(FMDServiceProvider *)self account];

  v4 = +[FMDDaemon sharedInstance];
  v5 = v4;
  if (account)
  {
    account2 = [(FMDServiceProvider *)self account];
    apsEnvironmentConstant = [account2 apsEnvironmentConstant];
    v8 = [v5 apsHandlerForEnvironment:apsEnvironmentConstant];

    apsToken = [v8 apsToken];
  }

  else
  {
    v10 = [v4 apsHandlerForEnvironment:@"production"];

    apsToken = [v10 apsToken];
    v11 = sub_1000029E0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No FMIP account. Defaulting to aps token for PROD env", v13, 2u);
    }
  }

  return apsToken;
}

@end