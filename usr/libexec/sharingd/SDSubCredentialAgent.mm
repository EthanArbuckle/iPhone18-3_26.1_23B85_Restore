@interface SDSubCredentialAgent
+ (id)sharedAgent;
- (NSString)description;
- (SDSubCredentialAgent)init;
- (void)_activate;
- (void)_invalidate;
- (void)_uiPresentWithParams:(id)params completion:(id)completion;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)uiPresentWithParams:(id)params completion:(id)completion;
@end

@implementation SDSubCredentialAgent

+ (id)sharedAgent
{
  if (qword_10098A238 != -1)
  {
    sub_1001F9680();
  }

  v3 = qword_10098A240;

  return v3;
}

- (SDSubCredentialAgent)init
{
  v7.receiver = self;
  v7.super_class = SDSubCredentialAgent;
  v2 = [(SDSubCredentialAgent *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    [(SDSubCredentialAgent *)v2 setDispatchQueue:v3];

    v4 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = v2->_statusMonitor;
    v2->_statusMonitor = v4;
  }

  return v2;
}

- (NSString)description
{
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"-- SDSubCredentialAgent --"];

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F8730;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972A88 <= 50 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9694();
  }

  [(SDSubCredentialAgent *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F881C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972A88 <= 50 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F96B0();
  }
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefAppInfoDownload != v3)
  {
    if (dword_100972A88 <= 40 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F96CC();
    }

    self->_prefAppInfoDownload = v3;
  }

  CFStringGetTypeID();
  v4 = CFPrefs_CopyTypedValue();
  if (v4)
  {
    if (dword_100972A88 <= 50 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      prefAppStoreURL = self->_prefAppStoreURL;
      LogPrintF();
    }

    objc_storeStrong(&self->_prefAppStoreURL, v4);
  }

  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();

  if (v5)
  {
    if (dword_100972A88 <= 50 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      prefWalletLaunchURL = self->_prefWalletLaunchURL;
      LogPrintF();
    }

    objc_storeStrong(&self->_prefWalletLaunchURL, v5);
  }
}

- (void)uiPresentWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F8B90;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = paramsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = paramsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_uiPresentWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  adamIDs = [paramsCopy adamIDs];
  if (adamIDs)
  {
    v9 = adamIDs;
    goto LABEL_4;
  }

  adamID = [paramsCopy adamID];
  v31 = adamID;
  v9 = [NSArray arrayWithObjects:&v31 count:1];

  if (v9)
  {
LABEL_4:
    title = [paramsCopy title];
    if (!title)
    {
      if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F98B4();
      }

      subtitle = NSErrorWithOSStatusF();
      if (completionCopy)
      {
        completionCopy[2](completionCopy, subtitle);
      }

      goto LABEL_41;
    }

    subtitle = [paramsCopy subtitle];
    if (subtitle)
    {
      issuerID = [paramsCopy issuerID];
      if (issuerID || ([paramsCopy adamID], (issuerID = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = issuerID;
        if (gSDProxCardsSuppressed == 1)
        {
          if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F9818();
          }
        }

        else if ([(SDSubCredentialAgent *)self _uiShowing])
        {
          if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F97E4();
          }
        }

        else
        {
          v15 = +[SDStatusMonitor sharedMonitor];
          [v15 systemUIFlags];

          v16 = +[SDStatusMonitor sharedMonitor];
          v17 = [v16 systemUIFlags] & 0x5C808;

          if (!v17)
          {
            if (dword_100972A88 <= 30 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
            {
              sub_1001F9770();
            }

            v19 = objc_alloc_init(NSMutableDictionary);
            [v19 setObject:v9 forKeyedSubscript:@"adamIDs"];
            [v19 setObject:title forKeyedSubscript:@"title"];
            [v19 setObject:subtitle forKeyedSubscript:@"subtitle"];
            [v19 setObject:v14 forKeyedSubscript:@"issuerID"];
            v20 = [NSNumber numberWithBool:self->_prefAppInfoDownload];
            [v19 setObject:v20 forKeyedSubscript:@"appInfoDownload"];

            prefAppStoreURL = self->_prefAppStoreURL;
            if (prefAppStoreURL)
            {
              [v19 setObject:prefAppStoreURL forKeyedSubscript:@"appStoreURL"];
            }

            prefWalletLaunchURL = self->_prefWalletLaunchURL;
            if (prefWalletLaunchURL)
            {
              [v19 setObject:prefWalletLaunchURL forKeyedSubscript:@"launchURL"];
            }

            v30 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SharingViewService" viewControllerClassName:@"SubCredentialActivationMainController"];
            v23 = objc_opt_new();
            [v23 setUserInfo:v19];
            alertHandle = self->_alertHandle;
            if (alertHandle)
            {
              [(SBSRemoteAlertHandle *)alertHandle removeObserver:self];
              [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
              v25 = self->_alertHandle;
              self->_alertHandle = 0;
            }

            v26 = [SBSRemoteAlertHandle newHandleWithDefinition:v30 configurationContext:v23];
            v27 = self->_alertHandle;
            self->_alertHandle = v26;

            v28 = self->_alertHandle;
            if (!v28)
            {
              if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
              {
                sub_1001F97B0();
              }

              v29 = NSErrorWithOSStatusF();
              if (completionCopy)
              {
                completionCopy[2](completionCopy, v29);
              }

              v28 = self->_alertHandle;
            }

            [(SBSRemoteAlertHandle *)v28 addObserver:self];
            [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:0];
            if (completionCopy)
            {
              completionCopy[2](completionCopy, 0);
            }

            goto LABEL_40;
          }

          if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F9728();
          }
        }

        v18 = NSErrorWithOSStatusF();
        if (completionCopy)
        {
          completionCopy[2](completionCopy, v18);
        }

LABEL_40:
LABEL_41:

        goto LABEL_42;
      }

      if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F984C();
      }
    }

    else if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9880();
    }

    v14 = NSErrorWithOSStatusF();
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }

    goto LABEL_40;
  }

  if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F98E8();
  }

  v9 = NSErrorWithOSStatusF();
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }

LABEL_42:
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F9268;
  v7[3] = &unk_1008CE028;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F93C0;
  v7[3] = &unk_1008CE028;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F9544;
  block[3] = &unk_1008CE900;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

@end