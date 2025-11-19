@interface EscrowRequestInformCloudServicesOperation
+ (id)triggerCloudServicesPasscodeRequest:(id)a3 serializedReason:(id)a4 error:(id *)a5;
- (EscrowRequestInformCloudServicesOperation)initWithIntendedState:(id)a3 errorState:(id)a4 lockStateTracker:(id)a5;
- (void)main;
@end

@implementation EscrowRequestInformCloudServicesOperation

- (void)main
{
  v3 = sub_100006274("escrowrequest");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Telling CloudServices about any pending requests", buf, 2u);
  }

  v44 = 0;
  v4 = [SecEscrowPendingRecord loadAllFromKeychain:&v44];
  v5 = v44;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:NSOSStatusErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == -25300)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v28 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v6;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed to fetch records from keychain: %@", buf, 0xCu);
    }

    v29 = [(EscrowRequestInformCloudServicesOperation *)self lockStateTracker];
    v30 = [v29 isLockedError:v6];

    if (v30)
    {
      v31 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Trying again after unlock", buf, 2u);
      }

      v32 = off_100344D20;
    }

    else
    {
      v32 = &off_100344D28;
    }

    [(EscrowRequestInformCloudServicesOperation *)self setNextState:*v32];
    [(CKKSResultOperation *)self setError:v6];
    goto LABEL_50;
  }

LABEL_6:

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v41 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      if (![v14 hasCertCached])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v15 = v14;

    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = [v15 uuid];
    v17 = [v15 serializedReason];
    v39 = 0;
    v18 = [EscrowRequestInformCloudServicesOperation triggerCloudServicesPasscodeRequest:v16 serializedReason:v17 error:&v39];
    v6 = v39;

    v19 = +[NSDate date];
    [v19 timeIntervalSince1970];
    [v15 setLastCloudServicesTriggerTime:(v20 * 1000.0)];

    if (!v18 || v6)
    {
      v33 = sub_100006274("SecError");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v6;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "escrowrequest: cloudservices reports an issue caching the certificate, so we'll have to try again later: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v6];
      [(EscrowRequestInformCloudServicesOperation *)self setNextState:@"nothing_to_do"];
      v38 = 0;
      [v15 saveToKeychain:&v38];
      v34 = v38;
      if (v34)
      {
        v35 = sub_100006274("SecError");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to save the last attempt time: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      [v15 setCertCached:1];
      v37 = 0;
      [v15 saveToKeychain:&v37];
      v21 = v37;
      if (v21)
      {
        v6 = v21;
        v22 = sub_100006274("SecError");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v6;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to save escrow update request certificate status, so we'll have to try again later: %@", buf, 0xCu);
        }

        [(CKKSResultOperation *)self setError:v6];
        v23 = [(EscrowRequestInformCloudServicesOperation *)self lockStateTracker];
        v24 = [v23 isLockedError:v6];

        if (v24)
        {
          v25 = sub_100006274("escrowrequest");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Trying again after unlock", buf, 2u);
          }

          v26 = @"wait_for_unlock";
        }

        else
        {
          v26 = @"nothing_to_do";
        }

        [(EscrowRequestInformCloudServicesOperation *)self setNextState:v26];
      }

      else
      {
        v36 = sub_100006274("escrowrequest");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "CloudService successfully cached a certificate; request is ready for passcode", buf, 2u);
        }

        [(EscrowRequestInformCloudServicesOperation *)self setNextState:@"nothing_to_do"];
        v6 = 0;
      }
    }
  }

  else
  {
LABEL_14:

LABEL_25:
    v27 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No pending escrow request needs a certificate", buf, 2u);
    }

    [(EscrowRequestInformCloudServicesOperation *)self setNextState:@"nothing_to_do"];
    v6 = 0;
  }

LABEL_50:
}

- (EscrowRequestInformCloudServicesOperation)initWithIntendedState:(id)a3 errorState:(id)a4 lockStateTracker:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EscrowRequestInformCloudServicesOperation;
  v12 = [(CKKSResultOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intendedState, a3);
    objc_storeStrong(&v13->_nextState, a4);
    objc_storeStrong(&v13->_lockStateTracker, a5);
  }

  return v13;
}

+ (id)triggerCloudServicesPasscodeRequest:(id)a3 serializedReason:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[SecureBackup alloc] initWithUserActivityLabel:@"passcodeRequest"];
  v10 = [[SecureBackupEscrowReason alloc] initWithData:v7];

  v21 = 0;
  v11 = [v9 beginHSA2PasscodeRequest:1 uuid:v8 reason:v10 error:&v21];

  v12 = v21;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v18 = [v11 cert];

    if (v18)
    {
      v17 = [v11 cert];
      goto LABEL_15;
    }

    v19 = sub_100006274("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "escrowrequest: sbd failed to cache a certificate", buf, 2u);
    }
  }

  else
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to begin passcode request: %@", buf, 0xCu);
    }

    if (a5)
    {
      v16 = v13;
      v17 = 0;
      *a5 = v13;
      goto LABEL_15;
    }
  }

  v17 = 0;
LABEL_15:

  return v17;
}

@end