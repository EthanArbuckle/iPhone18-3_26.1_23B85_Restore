@interface OTSetAccountSettingsOperation
- (OTSetAccountSettingsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState settings:(id)settings;
- (void)groupStart;
@end

@implementation OTSetAccountSettingsOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTSetAccountSettingsOperation *)self setFinishOp:v3];

  finishOp = [(OTSetAccountSettingsOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  settings = [(OTSetAccountSettingsOperation *)self settings];

  if (settings)
  {
    if ([(OTAccountSettings *)self->_settings hasWalrus])
    {
      walrus = [(OTAccountSettings *)self->_settings walrus];

      if (walrus)
      {
        walrus = objc_alloc_init(TPPBPeerStableInfoSetting);
        settings2 = [(OTSetAccountSettingsOperation *)self settings];
        walrus2 = [settings2 walrus];
        [walrus setValue:{objc_msgSend(walrus2, "enabled")}];
      }
    }

    else
    {
      walrus = 0;
    }

    if ([(OTAccountSettings *)self->_settings hasWebAccess])
    {
      webAccess = [(OTAccountSettings *)self->_settings webAccess];

      if (webAccess)
      {
        webAccess = objc_alloc_init(TPPBPeerStableInfoSetting);
        settings3 = [(OTSetAccountSettingsOperation *)self settings];
        webAccess2 = [settings3 webAccess];
        [webAccess setValue:{objc_msgSend(webAccess2, "enabled")}];
      }
    }

    else
    {
      webAccess = 0;
    }

    objc_initWeak(&location, self);
    deps = [(OTSetAccountSettingsOperation *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTSetAccountSettingsOperation *)self deps];
    activeAccount = [deps2 activeAccount];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001F7C78;
    v18[3] = &unk_100344998;
    objc_copyWeak(&v19, &location);
    [cuttlefishXPCWrapper updateWithSpecificUser:activeAccount forceRefetch:0 deviceName:0 serialNumber:0 osVersion:0 policyVersion:0 policySecrets:0 syncUserControllableViews:0 secureElementIdentity:0 walrusSetting:walrus webAccess:webAccess reply:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    intendedState = [(OTSetAccountSettingsOperation *)self intendedState];
    [(OTSetAccountSettingsOperation *)self setNextState:intendedState];

    finishOp2 = [(OTSetAccountSettingsOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
  }
}

- (OTSetAccountSettingsOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState settings:(id)settings
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  settingsCopy = settings;
  v18.receiver = self;
  v18.super_class = OTSetAccountSettingsOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_settings, settings);
    objc_storeStrong(&v16->_deps, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_nextState, errorState);
  }

  return v16;
}

@end