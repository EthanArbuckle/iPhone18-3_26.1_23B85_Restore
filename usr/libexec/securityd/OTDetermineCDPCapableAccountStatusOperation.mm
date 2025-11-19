@interface OTDetermineCDPCapableAccountStatusOperation
- (OTDetermineCDPCapableAccountStatusOperation)initWithDependencies:(id)a3 stateIfCDPCapable:(id)a4 stateIfNotCDPCapable:(id)a5 stateIfNoAccount:(id)a6 errorState:(id)a7;
- (void)groupStart;
@end

@implementation OTDetermineCDPCapableAccountStatusOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OTDetermineCDPCapableAccountStatusOperation *)self setFinishedOp:v3];

  v4 = [(OTDetermineCDPCapableAccountStatusOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  v5 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [v6 altDSID];

  if (v7)
  {
    goto LABEL_2;
  }

  v18 = sub_100006274("octagon");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
    v20 = [v19 activeAccount];
    *buf = 138412290;
    v49 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "iCloud account is not present or not configured: %@", buf, 0xCu);
  }

  v41 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  v21 = [v41 accountsAdapter];
  v22 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  v23 = [v22 personaAdapter];
  v24 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  v25 = [v24 containerName];
  v26 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  v27 = [v26 contextID];
  v47 = 0;
  v17 = [v21 findAccountForCurrentThread:v23 optionalAltDSID:0 cloudkitContainerName:v25 octagonContextID:v27 error:&v47];
  v16 = v47;

  if (v17)
  {
    v28 = [(__CFString *)v17 altDSID];

    if (v28)
    {
      if (!v16)
      {
        v7 = [(__CFString *)v17 altDSID];

LABEL_2:
        v8 = sub_100006274("octagon");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCloud account(altDSID %@) is configured; checking if account is CDP capable", buf, 0xCu);
        }

        v9 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
        v10 = [v9 authKitAdapter];
        v11 = [v10 accountIsCDPCapableByAltDSID:v7];

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

        v14 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
        v15 = [v14 stateHolder];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1001AAA0C;
        v43[3] = &unk_1003439B8;
        v45 = v11;
        v16 = v7;
        v44 = v16;
        v42 = 0;
        [v15 persistAccountChanges:v43 error:&v42];
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

        v31 = [(OTDetermineCDPCapableAccountStatusOperation *)self finishedOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v31];

        v32 = v44;
        goto LABEL_29;
      }
    }
  }

  v33 = sub_100006274("SecError");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
    v35 = [v34 contextID];
    *buf = 138412546;
    v49 = v35;
    v50 = 2112;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "octagon-account: unable to determine active account(%@); assuming no account is present: %@", buf, 0x16u);
  }

  v36 = [(OTDetermineCDPCapableAccountStatusOperation *)self deps];
  v37 = [v36 stateHolder];
  v46 = 0;
  [v37 persistAccountChanges:&stru_100343990 error:&v46];
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

  v39 = [(OTDetermineCDPCapableAccountStatusOperation *)self stateIfNoAccount];
  [(OTDetermineCDPCapableAccountStatusOperation *)self setNextState:v39];

  v40 = [(OTDetermineCDPCapableAccountStatusOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v40];

LABEL_29:
}

- (OTDetermineCDPCapableAccountStatusOperation)initWithDependencies:(id)a3 stateIfCDPCapable:(id)a4 stateIfNotCDPCapable:(id)a5 stateIfNoAccount:(id)a6 errorState:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = OTDetermineCDPCapableAccountStatusOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_intendedState, a4);
    objc_storeStrong(&v18->_stateIfNotCDPCapable, a5);
    objc_storeStrong(&v18->_stateIfNoAccount, a6);
    objc_storeStrong(&v18->_nextState, a7);
  }

  return v18;
}

@end