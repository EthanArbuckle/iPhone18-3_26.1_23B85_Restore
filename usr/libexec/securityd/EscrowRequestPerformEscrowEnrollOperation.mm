@interface EscrowRequestPerformEscrowEnrollOperation
+ (void)cdpUploadPrerecord:(id)a3 secretType:(unint64_t)a4 reply:(id)a5;
- (BOOL)checkFatalError:(id)a3;
- (EscrowRequestPerformEscrowEnrollOperation)initWithIntendedState:(id)a3 errorState:(id)a4 enforceRateLimiting:(BOOL)a5 lockStateTracker:(id)a6;
- (void)groupStart;
@end

@implementation EscrowRequestPerformEscrowEnrollOperation

- (void)groupStart
{
  v3 = sub_100006274("escrowrequest");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to escrow any pending prerecords", buf, 2u);
  }

  v45 = 0;
  v34 = [SecEscrowPendingRecord loadAllFromKeychain:&v45];
  v4 = v45;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = [v4 domain];
  if (([v6 isEqualToString:NSOSStatusErrorDomain] & 1) == 0)
  {

    goto LABEL_25;
  }

  v7 = [v5 code] == -25300;

  if (!v7)
  {
LABEL_25:
    v16 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "failed to fetch records from keychain: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v5];
    v17 = [(EscrowRequestPerformEscrowEnrollOperation *)self lockStateTracker];
    v18 = [v17 isLockedError:v5];

    if (v18)
    {
      v19 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Will retry after unlock", buf, 2u);
      }

      [(EscrowRequestPerformEscrowEnrollOperation *)self setNextState:@"wait_for_unlock"];
    }

    else
    {
      [(EscrowRequestPerformEscrowEnrollOperation *)self setNextState:@"nothing_to_do"];
    }

    goto LABEL_45;
  }

LABEL_6:

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v34;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v9)
  {
    v10 = *v42;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v42 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v41 + 1) + 8 * v11);
      if ([v12 uploadCompleted])
      {
        break;
      }

      if (-[EscrowRequestPerformEscrowEnrollOperation enforceRateLimiting](self, "enforceRateLimiting") && [v12 escrowAttemptedWithinLastSeconds:300.0])
      {
        v13 = sub_100006274("escrowrequest");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v12;
          v14 = v13;
          v15 = "Skipping pending escrow request (%@); it's rate limited";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
        }

LABEL_15:

        goto LABEL_21;
      }

      if ([v12 hasSerializedPrerecord])
      {
        v20 = v12;

        if (v20)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

LABEL_21:
      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v9)
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    v13 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v12;
      v14 = v13;
      v15 = "Skipping completed escrow request (%@)";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_23:

LABEL_32:
  v21 = [0 uuid];
  v22 = v21 == 0;

  if (v22)
  {
    v33 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No pending escrow request has a prerecord", buf, 2u);
    }

    [(EscrowRequestPerformEscrowEnrollOperation *)self setNextState:@"nothing_to_do"];
  }

  else
  {
    v20 = 0;
LABEL_34:
    v23 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v20 uuid];
      *buf = 138412290;
      v48 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "escrow request have pre-record uploading: %@", buf, 0xCu);
    }

    v25 = [CKKSResultOperation named:@"cdp-finish" withBlock:&stru_100337448];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v25];
    v26 = +[NSDate date];
    [v26 timeIntervalSince1970];
    [v20 setLastEscrowAttemptTime:(v27 * 1000.0)];

    [v20 setUploadRetries:{objc_msgSend(v20, "uploadRetries") + 1}];
    v40 = 0;
    [v20 saveToKeychain:&v40];
    v28 = v40;
    if (v28)
    {
      v29 = sub_100006274("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to save last escrow time: %@", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100112F54;
    v35[3] = &unk_100337470;
    objc_copyWeak(&v39, buf);
    v30 = v20;
    v36 = v30;
    v31 = v28;
    v37 = v31;
    v32 = v25;
    v38 = v32;
    [EscrowRequestPerformEscrowEnrollOperation cdpUploadPrerecord:v30 secretType:3 reply:v35];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

LABEL_45:
}

- (BOOL)checkFatalError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_14;
  }

  if ([v3 code] == 24)
  {
    v5 = [v4 domain];
    v6 = kSecureBackupErrorDomain;
    v7 = [v5 isEqualToString:kSecureBackupErrorDomain];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = kSecureBackupErrorDomain;
  }

  v8 = [v4 domain];
  if ([v8 isEqualToString:v6])
  {
    v9 = [v4 code];

    if (v9 == 17)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = [v4 domain];
  if (![v10 isEqualToString:CDPStateErrorDomain])
  {

    goto LABEL_14;
  }

  v11 = [v4 code];

  if (v11 != -5309)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v12 = 1;
LABEL_15:

  return v12;
}

- (EscrowRequestPerformEscrowEnrollOperation)initWithIntendedState:(id)a3 errorState:(id)a4 enforceRateLimiting:(BOOL)a5 lockStateTracker:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = EscrowRequestPerformEscrowEnrollOperation;
  v14 = [(CKKSGroupOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 142), a3);
    objc_storeStrong((v15 + 134), a4);
    v15[128] = a5;
    objc_storeStrong((v15 + 158), a6);
  }

  return v15;
}

+ (void)cdpUploadPrerecord:(id)a3 secretType:(unint64_t)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [CDPStateController alloc];
  v10 = +[CDPContext contextForPrimaryAccount];
  v11 = [v9 initWithContext:v10];

  v12 = [v8 uuid];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100113640;
  v14[3] = &unk_100337BD8;
  v15 = v7;
  v13 = v7;
  [v11 attemptToEscrowPreRecord:@"unknown-local-passcode" preRecordUUID:v12 secretType:a4 completion:v14];
}

@end