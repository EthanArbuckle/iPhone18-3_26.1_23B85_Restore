@interface OTSetAccountSettingsOperation
- (OTSetAccountSettingsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 settings:(id)a6;
- (void)groupStart;
@end

@implementation OTSetAccountSettingsOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTSetAccountSettingsOperation *)self setFinishOp:v3];

  v4 = [(OTSetAccountSettingsOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  v5 = [(OTSetAccountSettingsOperation *)self settings];

  if (v5)
  {
    if ([(OTAccountSettings *)self->_settings hasWalrus])
    {
      v6 = [(OTAccountSettings *)self->_settings walrus];

      if (v6)
      {
        v6 = objc_alloc_init(TPPBPeerStableInfoSetting);
        v7 = [(OTSetAccountSettingsOperation *)self settings];
        v8 = [v7 walrus];
        [v6 setValue:{objc_msgSend(v8, "enabled")}];
      }
    }

    else
    {
      v6 = 0;
    }

    if ([(OTAccountSettings *)self->_settings hasWebAccess])
    {
      v10 = [(OTAccountSettings *)self->_settings webAccess];

      if (v10)
      {
        v10 = objc_alloc_init(TPPBPeerStableInfoSetting);
        v11 = [(OTSetAccountSettingsOperation *)self settings];
        v12 = [v11 webAccess];
        [v10 setValue:{objc_msgSend(v12, "enabled")}];
      }
    }

    else
    {
      v10 = 0;
    }

    objc_initWeak(&location, self);
    v13 = [(OTSetAccountSettingsOperation *)self deps];
    v14 = [v13 cuttlefishXPCWrapper];
    v15 = [(OTSetAccountSettingsOperation *)self deps];
    v16 = [v15 activeAccount];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001F7C78;
    v18[3] = &unk_100344998;
    objc_copyWeak(&v19, &location);
    [v14 updateWithSpecificUser:v16 forceRefetch:0 deviceName:0 serialNumber:0 osVersion:0 policyVersion:0 policySecrets:0 syncUserControllableViews:0 secureElementIdentity:0 walrusSetting:v6 webAccess:v10 reply:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [(OTSetAccountSettingsOperation *)self intendedState];
    [(OTSetAccountSettingsOperation *)self setNextState:v9];

    v17 = [(OTSetAccountSettingsOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v17];
  }
}

- (OTSetAccountSettingsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 settings:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = OTSetAccountSettingsOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, a3);
    objc_storeStrong(&v16->_settings, a6);
    objc_storeStrong(&v16->_deps, a3);
    objc_storeStrong(&v16->_intendedState, a4);
    objc_storeStrong(&v16->_nextState, a5);
  }

  return v16;
}

@end