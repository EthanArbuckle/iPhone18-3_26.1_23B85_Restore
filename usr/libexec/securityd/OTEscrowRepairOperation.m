@interface OTEscrowRepairOperation
- (BOOL)enableWithPasscodeStashSecret:(id)a3 account:(id)a4 error:(id *)a5;
- (BOOL)shouldIgnoreError:(id)a3;
- (OTEscrowRepairOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 followupHandler:(id)a6 contextType:(int64_t)a7;
- (id)fetchPETForUsername:(id)a3;
- (id)serializedIDMSData;
- (void)deleteRecord:(id)a3;
- (void)groupStart;
@end

@implementation OTEscrowRepairOperation

- (id)serializedIDMSData
{
  v3 = [(OTEscrowRepairOperation *)self deps];
  v4 = [v3 authKitAdapter];
  v5 = [(OTEscrowRepairOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [v6 altDSID];
  v13 = 0;
  v8 = [v4 passwordResetTokenByAltDSID:v7 error:&v13];
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

- (id)fetchPETForUsername:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001FA830;
  v16 = sub_1001FA840;
  v17 = 0;
  v4 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v4 setUsername:v3];
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

- (BOOL)enableWithPasscodeStashSecret:(id)a3 account:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[SecureBackup alloc] initWithUserActivityLabel:@"escrow-repair-enable"];
  [v10 setIcdp:1];
  [v10 setUsesMultipleiCSC:1];
  v11 = [v8 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v12 = [v11 objectForKeyedSubscript:@"iCloudEnv"];
  [v10 setICloudEnv:v12];

  v13 = [v8 aa_authToken];
  [v10 setAuthToken:v13];

  v14 = [v8 propertiesForDataclass:kAccountDataclassKeychainSync];
  v15 = [v14 objectForKeyedSubscript:@"escrowProxyUrl"];
  [v10 setEscrowProxyURL:v15];

  v16 = [v8 username];
  [v10 setAppleID:v16];

  v17 = [v8 aa_personID];
  [v10 setDsid:v17];

  v18 = [v8 username];

  v19 = [(OTEscrowRepairOperation *)self fetchPETForUsername:v18];
  [v10 setICloudPassword:v19];

  v20 = [(OTEscrowRepairOperation *)self deps];
  v21 = [v20 deviceSessionID];
  [v10 setDeviceSessionID:v21];

  v22 = [(OTEscrowRepairOperation *)self deps];
  v23 = [v22 flowID];
  [v10 setFlowID:v23];

  v24 = [(OTEscrowRepairOperation *)self serializedIDMSData];
  [v10 setIdmsData:v24];

  [v10 setPasscodeStashSecret:v9];
  [v10 setGenerateClientMetadata:1];
  v25 = [(OTEscrowRepairOperation *)self deps];
  v26 = [v25 secureBackupAdapter];
  v40 = 0;
  v27 = [v26 enableWithSecureBackup:v10 error:&v40];
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

    v31 = [(OTEscrowRepairOperation *)self followupHandler];
    v32 = [(OTEscrowRepairOperation *)self deps];
    v33 = [v32 activeAccount];
    v39 = 0;
    v34 = [v31 clearAllRepairFollowUps:v33 error:&v39];
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

    if (a5)
    {
      v37 = v28;
      *a5 = v28;
    }
  }

  return v27;
}

- (void)deleteRecord:(id)a3
{
  v4 = a3;
  v5 = [[SecureBackup alloc] initWithUserActivityLabel:@"escrow-repair-disable"];
  [v5 setIcdp:1];
  [v5 setRecordID:v4];

  v6 = [(OTEscrowRepairOperation *)self deps];
  v7 = [v6 deviceSessionID];
  [v5 setDeviceSessionID:v7];

  v8 = [(OTEscrowRepairOperation *)self deps];
  v9 = [v8 flowID];
  [v5 setFlowID:v9];

  v16 = 0;
  LODWORD(v7) = [v5 disableWithError:&v16];
  v10 = v16;
  v11 = sub_100006274("octagon-escrow-repair");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v7)
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
    v4 = [(OTEscrowRepairOperation *)self deps];
    v5 = [v4 activeAccount];
    v6 = [v5 altDSID];
    v7 = [(OTEscrowRepairOperation *)self deps];
    v8 = [v7 flowID];
    v9 = [(OTEscrowRepairOperation *)self deps];
    v10 = [v9 deviceSessionID];
    v48 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    LOBYTE(v44) = 1;
    v11 = [v3 initWithKeychainCircleMetrics:0 altDSID:v6 flowID:v8 deviceSessionID:v10 eventName:kSecurityRTCEventNameEscrowRepairOperation testsAreEnabled:0 canSendMetrics:v44 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

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
          v40 = [(OTEscrowRepairOperation *)self contextType];
          *buf = 134217984;
          *&buf[4] = v40;
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
      v14 = [(OTEscrowRepairOperation *)self deps];
      v15 = [v14 activeAccount];
      v16 = [v15 altDSID];
      v17 = [(OTEscrowRepairOperation *)self deps];
      v18 = [v17 flowID];
      v19 = [(OTEscrowRepairOperation *)self deps];
      v20 = [v19 deviceSessionID];
      LOBYTE(v45) = 1;
      v21 = [v13 initWithKeychainCircleMetrics:0 altDSID:v16 flowID:v18 deviceSessionID:v20 eventName:log testsAreEnabled:0 canSendMetrics:v45 category:v48];
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

    v23 = [(OTEscrowRepairOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v23];

    v24 = [(OTEscrowRepairOperation *)self deps];
    v25 = [v24 stateHolder];
    v58 = 0;
    v26 = [v25 getEgoPeerID:&v58];
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
      v32 = [(OTEscrowRepairOperation *)self finishedOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v32];
    }

    else
    {
      v28 = +[ACAccountStore defaultStore];
      v29 = [(OTEscrowRepairOperation *)self deps];
      v30 = [v29 activeAccount];
      v31 = [v30 appleAccountID];
      v57 = 0;
      v47 = [v28 accountWithIdentifier:v31 error:&v57];
      v32 = v57;

      if (v47)
      {

        v33 = [(OTEscrowRepairOperation *)self deps];
        v34 = [v33 laContextAdapter];
        v35 = +[NSData data];
        v55 = 0;
        v56 = 0;
        v36 = [v34 setCredential:v35 type:-12 laContext:&v56 error:&v55];
        v46 = v56;
        v37 = v55;

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
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "failed to retrieve passcode stash: %@", buf, 0xCu);
          }

          [(CKKSResultOperation *)self setError:v37];
        }

        v43 = [(OTEscrowRepairOperation *)self finishedOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v43];

        v32 = v47;
      }

      else
      {
        v41 = sub_100006274("octagon-escrow-repair");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "failed to get account", buf, 2u);
        }

        [(CKKSResultOperation *)self setError:v32];
        v37 = [(OTEscrowRepairOperation *)self finishedOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v37];
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

- (BOOL)shouldIgnoreError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:CKErrorDomain])
  {
    goto LABEL_14;
  }

  v5 = [v3 code];

  if (v5 != 3)
  {
    goto LABEL_15;
  }

  v6 = [v3 userInfo];
  v4 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = [v4 domain];
  if (([v7 isEqualToString:NSURLErrorDomain] & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  if ([v4 code] == -1009 || objc_msgSend(v4, "code") == -1 || objc_msgSend(v4, "code") == -1003 || objc_msgSend(v4, "code") == -1004 || objc_msgSend(v4, "code") == -1006 || objc_msgSend(v4, "code") == -1018 || objc_msgSend(v4, "code") == -1020)
  {
    v8 = 1;
LABEL_28:

    goto LABEL_29;
  }

  v15 = [v4 code];

  if (v15 == -2000)
  {
    goto LABEL_17;
  }

LABEL_15:
  v9 = [v3 domain];
  if ([v9 isEqualToString:kCloudServicesErrorDomain])
  {
    v10 = [v3 code];

    if (v10 == 22)
    {
LABEL_17:
      v8 = 1;
      goto LABEL_30;
    }
  }

  else
  {
  }

  v4 = [v3 domain];
  if (![v4 isEqualToString:@"com.apple.security.trustedpeers.container"])
  {
    v8 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v11 = [v3 code];

  if (v11 == 38)
  {
    v12 = [v3 userInfo];
    v4 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v7 = [v4 domain];
    if ([v7 isEqualToString:@"securityd"])
    {
      v13 = [v4 code];

      if (v13 == -25308)
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

- (OTEscrowRepairOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 followupHandler:(id)a6 contextType:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = OTEscrowRepairOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_followupHandler, a6);
    objc_storeStrong(&v18->_intendedState, a4);
    objc_storeStrong(&v18->_nextState, a5);
    v18->_contextType = a7;
  }

  return v18;
}

@end