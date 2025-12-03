@interface OTEscrowRepairOperation
- (BOOL)enableWithPasscodeStashSecret:(id)secret account:(id)account error:(id *)error;
- (BOOL)shouldIgnoreError:(id)error;
- (OTEscrowRepairOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState followupHandler:(id)handler contextType:(int64_t)type;
- (id)fetchPETForUsername:(id)username;
- (id)serializedIDMSData;
- (void)deleteRecord:(id)record;
- (void)groupStart;
@end

@implementation OTEscrowRepairOperation

- (id)serializedIDMSData
{
  deps = [(OTEscrowRepairOperation *)self deps];
  authKitAdapter = [deps authKitAdapter];
  deps2 = [(OTEscrowRepairOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  altDSID = [activeAccount altDSID];
  v13 = 0;
  v8 = [authKitAdapter passwordResetTokenByAltDSID:altDSID error:&v13];
  v9 = v13;

  if (v8)
  {
    v16 = @"prk";
    v17 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  }

  else
  {
    v10 = sub_100006274("octagon-escrow-repair");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to escrow account recovery data due to missing password reset token: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)fetchPETForUsername:(id)username
{
  usernameCopy = username;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001FA830;
  v16 = sub_1001FA840;
  v17 = 0;
  v4 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v4 setUsername:usernameCopy];
  [v4 setAuthenticationType:1];
  [v4 setIsUsernameEditable:0];
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001FA848;
  v9[3] = &unk_100344B40;
  v11 = &v12;
  v6 = dispatch_semaphore_create(0);
  v10 = v6;
  [v5 authenticateWithContext:v4 completion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)enableWithPasscodeStashSecret:(id)secret account:(id)account error:(id *)error
{
  accountCopy = account;
  secretCopy = secret;
  v10 = [[SecureBackup alloc] initWithUserActivityLabel:@"escrow-repair-enable"];
  [v10 setIcdp:1];
  [v10 setUsesMultipleiCSC:1];
  v11 = [accountCopy propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v12 = [v11 objectForKeyedSubscript:@"iCloudEnv"];
  [v10 setICloudEnv:v12];

  aa_authToken = [accountCopy aa_authToken];
  [v10 setAuthToken:aa_authToken];

  v14 = [accountCopy propertiesForDataclass:kAccountDataclassKeychainSync];
  v15 = [v14 objectForKeyedSubscript:@"escrowProxyUrl"];
  [v10 setEscrowProxyURL:v15];

  username = [accountCopy username];
  [v10 setAppleID:username];

  aa_personID = [accountCopy aa_personID];
  [v10 setDsid:aa_personID];

  username2 = [accountCopy username];

  v19 = [(OTEscrowRepairOperation *)self fetchPETForUsername:username2];
  [v10 setICloudPassword:v19];

  deps = [(OTEscrowRepairOperation *)self deps];
  deviceSessionID = [deps deviceSessionID];
  [v10 setDeviceSessionID:deviceSessionID];

  deps2 = [(OTEscrowRepairOperation *)self deps];
  flowID = [deps2 flowID];
  [v10 setFlowID:flowID];

  serializedIDMSData = [(OTEscrowRepairOperation *)self serializedIDMSData];
  [v10 setIdmsData:serializedIDMSData];

  [v10 setPasscodeStashSecret:secretCopy];
  [v10 setGenerateClientMetadata:1];
  deps3 = [(OTEscrowRepairOperation *)self deps];
  secureBackupAdapter = [deps3 secureBackupAdapter];
  v40 = 0;
  v27 = [secureBackupAdapter enableWithSecureBackup:v10 error:&v40];
  v28 = v40;

  v29 = sub_100006274("octagon-escrow-repair");
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "successfully enrolled escrow record", buf, 2u);
    }

    followupHandler = [(OTEscrowRepairOperation *)self followupHandler];
    deps4 = [(OTEscrowRepairOperation *)self deps];
    activeAccount = [deps4 activeAccount];
    v39 = 0;
    v34 = [followupHandler clearAllRepairFollowUps:activeAccount error:&v39];
    v35 = v39;

    if ((v34 & 1) == 0)
    {
      v36 = sub_100006274("octagon-escrow-repair");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "failed to clear follow ups: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v30)
    {
      *buf = 138412290;
      v42 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "failed to enroll escrow record: %@", buf, 0xCu);
    }

    if (error)
    {
      v37 = v28;
      *error = v28;
    }
  }

  return v27;
}

- (void)deleteRecord:(id)record
{
  recordCopy = record;
  v5 = [[SecureBackup alloc] initWithUserActivityLabel:@"escrow-repair-disable"];
  [v5 setIcdp:1];
  [v5 setRecordID:recordCopy];

  deps = [(OTEscrowRepairOperation *)self deps];
  deviceSessionID = [deps deviceSessionID];
  [v5 setDeviceSessionID:deviceSessionID];

  deps2 = [(OTEscrowRepairOperation *)self deps];
  flowID = [deps2 flowID];
  [v5 setFlowID:flowID];

  v16 = 0;
  LODWORD(deviceSessionID) = [v5 disableWithError:&v16];
  v10 = v16;
  v11 = sub_100006274("octagon-escrow-repair");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (deviceSessionID)
  {
    if (v12)
    {
      *buf = 0;
      v13 = "successfully deleted escrow record";
      v14 = v11;
      v15 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }
  }

  else if (v12)
  {
    *buf = 138412290;
    v18 = v10;
    v13 = "failed to delete escrow record: %@";
    v14 = v11;
    v15 = 12;
    goto LABEL_6;
  }
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v3 = [AAFAnalyticsEventSecurity alloc];
    deps = [(OTEscrowRepairOperation *)self deps];
    activeAccount = [deps activeAccount];
    altDSID = [activeAccount altDSID];
    deps2 = [(OTEscrowRepairOperation *)self deps];
    flowID = [deps2 flowID];
    deps3 = [(OTEscrowRepairOperation *)self deps];
    deviceSessionID = [deps3 deviceSessionID];
    v48 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    LOBYTE(v44) = 1;
    v11 = [v3 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameEscrowRepairOperation testsAreEnabled:0 canSendMetrics:v44 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    if ([(OTEscrowRepairOperation *)self contextType]== 100)
    {
      v12 = &kSecurityRTCEventNameEscrowRepairOperationPasscodeChanged;
    }

    else
    {
      if ([(OTEscrowRepairOperation *)self contextType]!= 102)
      {
        log = sub_100006274("SecError");
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          contextType = [(OTEscrowRepairOperation *)self contextType];
          *buf = 134217984;
          *&buf[4] = contextType;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "octagon-escrow-repair: unsupported context type: %ld", buf, 0xCu);
        }

        goto LABEL_32;
      }

      v12 = &kSecurityRTCEventNameEscrowRepairOperationPasscodeUnlocked;
    }

    log = *v12;
    if (log)
    {
      v13 = [AAFAnalyticsEventSecurity alloc];
      deps4 = [(OTEscrowRepairOperation *)self deps];
      activeAccount2 = [deps4 activeAccount];
      altDSID2 = [activeAccount2 altDSID];
      deps5 = [(OTEscrowRepairOperation *)self deps];
      flowID2 = [deps5 flowID];
      deps6 = [(OTEscrowRepairOperation *)self deps];
      deviceSessionID2 = [deps6 deviceSessionID];
      LOBYTE(v45) = 1;
      v21 = [v13 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:log testsAreEnabled:0 canSendMetrics:v45 category:v48];
    }

    else
    {
      v21 = 0;
    }

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1001FB710;
    v59[3] = &unk_100345310;
    objc_copyWeak(&v62, &location);
    v60 = v11;
    v49 = v21;
    v61 = v49;
    v22 = [NSBlockOperation blockOperationWithBlock:v59];
    [(OTEscrowRepairOperation *)self setFinishedOp:v22];

    finishedOp = [(OTEscrowRepairOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

    deps7 = [(OTEscrowRepairOperation *)self deps];
    stateHolder = [deps7 stateHolder];
    v58 = 0;
    v26 = [stateHolder getEgoPeerID:&v58];
    v27 = v58;

    if (!v26 || v27)
    {
      v39 = sub_100006274("octagon-escrow-repair");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "failed to get ego peer id: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v27];
      finishedOp2 = [(OTEscrowRepairOperation *)self finishedOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];
    }

    else
    {
      v28 = +[ACAccountStore defaultStore];
      deps8 = [(OTEscrowRepairOperation *)self deps];
      activeAccount3 = [deps8 activeAccount];
      appleAccountID = [activeAccount3 appleAccountID];
      v57 = 0;
      v47 = [v28 accountWithIdentifier:appleAccountID error:&v57];
      finishedOp2 = v57;

      if (v47)
      {

        deps9 = [(OTEscrowRepairOperation *)self deps];
        laContextAdapter = [deps9 laContextAdapter];
        v35 = +[NSData data];
        v55 = 0;
        v56 = 0;
        v36 = [laContextAdapter setCredential:v35 type:-12 laContext:&v56 error:&v55];
        v46 = v56;
        finishedOp4 = v55;

        if (v36)
        {
          *buf = 0;
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_1001FB7F0;
          v51[3] = &unk_100344B18;
          v51[4] = self;
          v52 = v26;
          v53 = v46;
          v54 = v47;
          if (!sub_100089884(-3, buf, v51))
          {
            v38 = *buf;
            [(CKKSResultOperation *)self setError:*buf];
          }
        }

        else
        {
          v42 = sub_100006274("octagon-escrow-repair");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = finishedOp4;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "failed to retrieve passcode stash: %@", buf, 0xCu);
          }

          [(CKKSResultOperation *)self setError:finishedOp4];
        }

        finishedOp3 = [(OTEscrowRepairOperation *)self finishedOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp3];

        finishedOp2 = v47;
      }

      else
      {
        v41 = sub_100006274("octagon-escrow-repair");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "failed to get account", buf, 2u);
        }

        [(CKKSResultOperation *)self setError:finishedOp2];
        finishedOp4 = [(OTEscrowRepairOperation *)self finishedOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp4];
      }
    }

    objc_destroyWeak(&v62);
LABEL_32:

    goto LABEL_33;
  }

  v11 = sub_100006274("octagon-escrow-repair");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "skipping escrow repair, feature flag is disabled", buf, 2u);
  }

LABEL_33:

  objc_destroyWeak(&location);
}

- (BOOL)shouldIgnoreError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:CKErrorDomain])
  {
    goto LABEL_14;
  }

  code = [errorCopy code];

  if (code != 3)
  {
    goto LABEL_15;
  }

  userInfo = [errorCopy userInfo];
  domain = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!domain)
  {
    goto LABEL_15;
  }

  v4Domain = [domain domain];
  if (([v4Domain isEqualToString:NSURLErrorDomain] & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  if ([domain code] == -1009 || objc_msgSend(domain, "code") == -1 || objc_msgSend(domain, "code") == -1003 || objc_msgSend(domain, "code") == -1004 || objc_msgSend(domain, "code") == -1006 || objc_msgSend(domain, "code") == -1018 || objc_msgSend(domain, "code") == -1020)
  {
    v8 = 1;
LABEL_28:

    goto LABEL_29;
  }

  code2 = [domain code];

  if (code2 == -2000)
  {
    goto LABEL_17;
  }

LABEL_15:
  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:kCloudServicesErrorDomain])
  {
    code3 = [errorCopy code];

    if (code3 == 22)
    {
LABEL_17:
      v8 = 1;
      goto LABEL_30;
    }
  }

  else
  {
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"com.apple.security.trustedpeers.container"])
  {
    v8 = 0;
LABEL_29:

    goto LABEL_30;
  }

  code4 = [errorCopy code];

  if (code4 == 38)
  {
    userInfo2 = [errorCopy userInfo];
    domain = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4Domain = [domain domain];
    if ([v4Domain isEqualToString:@"securityd"])
    {
      code5 = [domain code];

      if (code5 == -25308)
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_29;
    }

    v8 = 0;
    goto LABEL_28;
  }

  v8 = 0;
LABEL_30:

  return v8 & 1;
}

- (OTEscrowRepairOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState followupHandler:(id)handler contextType:(int64_t)type
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = OTEscrowRepairOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_followupHandler, handler);
    objc_storeStrong(&v18->_intendedState, state);
    objc_storeStrong(&v18->_nextState, errorState);
    v18->_contextType = type;
  }

  return v18;
}

@end