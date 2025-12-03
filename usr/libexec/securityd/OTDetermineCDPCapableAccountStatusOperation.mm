@interface OTDetermineCDPCapableAccountStatusOperation
- (OTDetermineCDPCapableAccountStatusOperation)initWithDependencies:(id)dependencies stateIfCDPCapable:(id)capable stateIfNotCDPCapable:(id)pCapable stateIfNoAccount:(id)account errorState:(id)state;
- (void)groupStart;
@end

@implementation OTDetermineCDPCapableAccountStatusOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTDetermineCDPCapableAccountStatusOperation *)self setFinishedOp:v3];

  finishedOp = [(OTDetermineCDPCapableAccountStatusOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];

  if (altDSID)
  {
    goto LABEL_2;
  }

  v18 = sub_100006274("octagon");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    deps2 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
    activeAccount2 = [deps2 activeAccount];
    *buf = 138412290;
    v49 = activeAccount2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "iCloud account is not present or not configured: %@", buf, 0xCu);
  }

  deps3 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  accountsAdapter = [deps3 accountsAdapter];
  deps4 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  personaAdapter = [deps4 personaAdapter];
  deps5 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  containerName = [deps5 containerName];
  deps6 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  contextID = [deps6 contextID];
  v47 = 0;
  v17 = [accountsAdapter findAccountForCurrentThread:personaAdapter optionalAltDSID:0 cloudkitContainerName:containerName octagonContextID:contextID error:&v47];
  v16 = v47;

  if (v17)
  {
    altDSID2 = [(__CFString *)v17 altDSID];

    if (altDSID2)
    {
      if (!v16)
      {
        altDSID = [(__CFString *)v17 altDSID];

LABEL_2:
        v8 = sub_100006274("octagon");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = altDSID;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCloud account(altDSID %@) is configured; checking if account is CDP capable", buf, 0xCu);
        }

        deps7 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
        authKitAdapter = [deps7 authKitAdapter];
        v11 = [authKitAdapter accountIsCDPCapableByAltDSID:altDSID];

        v12 = sub_100006274("octagon");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"not capable";
          if (v11)
          {
            v13 = @"capable";
          }

          *buf = 138412290;
          v49 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Account is %@", buf, 0xCu);
        }

        deps8 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
        stateHolder = [deps8 stateHolder];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1001AAA0C;
        v43[3] = &unk_1003439B8;
        v45 = v11;
        v16 = altDSID;
        v44 = v16;
        v42 = 0;
        [stateHolder persistAccountChanges:v43 error:&v42];
        v17 = v42;

        if (v11)
        {
          [(OTDetermineCDPCapableAccountStatusOperation *)self intendedState];
        }

        else
        {
          [(OTDetermineCDPCapableAccountStatusOperation *)self stateIfNotCDPCapable];
        }
        v29 = ;
        [(OTDetermineCDPCapableAccountStatusOperation *)self setNextState:v29];

        if (v17)
        {
          v30 = sub_100006274("SecError");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v17;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "octagon: unable to save new account state: %@", buf, 0xCu);
          }
        }

        finishedOp2 = [(OTDetermineCDPCapableAccountStatusOperation *)self finishedOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];

        v32 = v44;
        goto LABEL_29;
      }
    }
  }

  v33 = sub_100006274("SecError");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    deps9 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
    contextID2 = [deps9 contextID];
    *buf = 138412546;
    v49 = contextID2;
    v50 = 2112;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "octagon-account: unable to determine active account(%@); assuming no account is present: %@", buf, 0x16u);
  }

  deps10 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  stateHolder2 = [deps10 stateHolder];
  v46 = 0;
  [stateHolder2 persistAccountChanges:&stru_100343990 error:&v46];
  v32 = v46;

  if (v32)
  {
    v38 = sub_100006274("SecError");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v32;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "octagon: unable to save new account state: %@", buf, 0xCu);
    }
  }

  stateIfNoAccount = [(OTDetermineCDPCapableAccountStatusOperation *)self stateIfNoAccount];
  [(OTDetermineCDPCapableAccountStatusOperation *)self setNextState:stateIfNoAccount];

  finishedOp3 = [(OTDetermineCDPCapableAccountStatusOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp3];

LABEL_29:
}

- (OTDetermineCDPCapableAccountStatusOperation)initWithDependencies:(id)dependencies stateIfCDPCapable:(id)capable stateIfNotCDPCapable:(id)pCapable stateIfNoAccount:(id)account errorState:(id)state
{
  dependenciesCopy = dependencies;
  capableCopy = capable;
  pCapableCopy = pCapable;
  accountCopy = account;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = OTDetermineCDPCapableAccountStatusOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_intendedState, capable);
    objc_storeStrong(&v18->_stateIfNotCDPCapable, pCapable);
    objc_storeStrong(&v18->_stateIfNoAccount, account);
    objc_storeStrong(&v18->_nextState, state);
  }

  return v18;
}

@end