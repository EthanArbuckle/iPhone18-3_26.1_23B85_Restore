@interface EscrowRequestServer
+ (id)server;
- (BOOL)escrowCompletedWithinLastSeconds:(double)seconds;
- (BOOL)pendingEscrowUpload:(id *)upload;
- (BOOL)triggerEscrowUpdate:(id)update options:(id)options error:(id *)error;
- (EscrowRequestServer)initWithLockStateTracker:(id)tracker;
- (id)fetchStatuses:(id *)statuses;
- (void)cachePrerecord:(id)prerecord serializedPrerecord:(id)serializedPrerecord reply:(id)reply;
- (void)escrowCompletedWithinLastSeconds:(double)seconds reply:(id)reply;
- (void)fetchPrerecord:(id)prerecord reply:(id)reply;
- (void)fetchRequestStatuses:(id)statuses;
- (void)fetchRequestWaitingOnPasscode:(id)passcode;
- (void)resetAllRequests:(id)requests;
- (void)setupAnalytics;
- (void)storePrerecordsInEscrow:(id)escrow;
- (void)triggerEscrowUpdate:(id)update options:(id)options reply:(id)reply;
@end

@implementation EscrowRequestServer

- (void)setupAnalytics
{
  v3 = +[CKKSAnalytics logger];
  v2 = [v3 AddMultiSamplerForName:@"escorwrequest-healthSummary" withTimeInterval:&stru_1003365B0 block:SFAnalyticsSamplerIntervalOncePerReport];
}

- (void)escrowCompletedWithinLastSeconds:(double)seconds reply:(id)reply
{
  replyCopy = reply;
  if (!_os_feature_enabled_impl())
  {
    v20 = 0;
    v6 = [SecEscrowPendingRecord loadAllFromKeychain:&v20];
    v7 = v20;
    v8 = v7;
    if (v7)
    {
      domain = [v7 domain];
      if ([domain isEqualToString:NSOSStatusErrorDomain])
      {
        code = [v8 code];

        if (code == -25300)
        {
          v11 = 0;
LABEL_22:
          replyCopy[2](replyCopy, v11, 0);

          goto LABEL_23;
        }
      }

      else
      {
      }

      v12 = sub_100006274("SecError");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "escrowrequest: failed to load requests: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = v6;
      v11 = [v12 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (!v11)
      {
LABEL_21:

        goto LABEL_22;
      }

      v13 = *v17;
LABEL_9:
      v14 = 0;
      while (1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if ([v15 uploadCompleted])
        {
          if ([v15 escrowAttemptedWithinLastSeconds:seconds])
          {
            break;
          }
        }

        if (v11 == ++v14)
        {
          v11 = [v12 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }
    }

    v11 = 1;
    goto LABEL_21;
  }

  replyCopy[2](replyCopy, 0, 0);
LABEL_23:
}

- (void)storePrerecordsInEscrow:(id)escrow
{
  escrowCopy = escrow;
  if (_os_feature_enabled_impl())
  {
    (*(escrowCopy + 2))(escrowCopy, 0, 0);
  }

  else
  {
    v5 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attempting to store a prerecord in escrow", v7, 2u);
    }

    controller = [(EscrowRequestServer *)self controller];
    [controller storePrerecordsInEscrowRPC:escrowCopy];
  }
}

- (void)resetAllRequests:(id)requests
{
  requestsCopy = requests;
  if (!_os_feature_enabled_impl())
  {
    v4 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deleting all requests", buf, 2u);
    }

    v27 = 0;
    v5 = [SecEscrowPendingRecord loadAllFromKeychain:&v27];
    v6 = v27;
    if (!v6)
    {
      v20 = v5;
      v21 = requestsCopy;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v7 = 0;
        v14 = *v24;
        do
        {
          v15 = 0;
          v16 = v7;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v23 + 1) + 8 * v15);
            v22 = v16;
            [v17 deleteFromKeychain:{&v22, v20}];
            v7 = v22;

            if (v7)
            {
              v18 = sub_100006274("escrowrequest");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v29 = v17;
                v30 = 2112;
                v31 = v7;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unable to delete %@: %@", buf, 0x16u);
              }
            }

            v15 = v15 + 1;
            v16 = v7;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v13);
      }

      else
      {
        v7 = 0;
      }

      requestsCopy = v21;
      v21[2](v21, v7);
      v5 = v20;
      goto LABEL_29;
    }

    v7 = v6;
    domain = [v6 domain];
    if ([domain isEqualToString:NSOSStatusErrorDomain])
    {
      code = [v7 code];

      if (code == -25300)
      {
        v10 = sub_100006274("escrowrequest");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "no extant requests; nothing to delete", buf, 2u);
        }

        requestsCopy[2](requestsCopy, 0);
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
    }

    v19 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "error fetching records: %@", buf, 0xCu);
    }

    (requestsCopy)[2](requestsCopy, v7);
    goto LABEL_29;
  }

  requestsCopy[2](requestsCopy, 0);
LABEL_30:
}

- (void)fetchRequestStatuses:(id)statuses
{
  statusesCopy = statuses;
  if (!_os_feature_enabled_impl())
  {
    v33 = 0;
    v4 = [SecEscrowPendingRecord loadAllFromKeychain:&v33];
    v5 = v33;
    v6 = v5;
    if (!v5)
    {
      v25 = 0;
      v27 = statusesCopy;
      v10 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "found requests: %@", buf, 0xCu);
      }

      v11 = +[NSMutableDictionary dictionary];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v26 = v4;
      v12 = v4;
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        v28 = SecEscrowRequestPendingCertificate;
        v16 = SecEscrowRequestPendingPasscode;
        v17 = SecEscrowRequestHavePrecord;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            if ([v19 uploadCompleted])
            {
              uuid = [v19 uuid];
              v21 = v11;
              v22 = @"complete";
            }

            else if ([v19 hasSerializedPrerecord])
            {
              uuid = [v19 uuid];
              v21 = v11;
              v22 = v17;
            }

            else
            {
              certCached = [v19 certCached];
              uuid = [v19 uuid];
              v21 = v11;
              if (certCached)
              {
                v22 = v16;
              }

              else
              {
                v22 = v28;
              }
            }

            [v21 setObject:v22 forKeyedSubscript:uuid];
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v14);
      }

      statusesCopy = v27;
      v27[2](v27, v11, 0);

      v6 = v25;
      v4 = v26;
      goto LABEL_30;
    }

    domain = [v5 domain];
    if ([domain isEqualToString:NSOSStatusErrorDomain])
    {
      code = [v6 code];

      if (code == -25300)
      {
        v9 = sub_100006274("escrowrequest");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no extant requests", buf, 2u);
        }

        statusesCopy[2](statusesCopy, &__NSDictionary0__struct, 0);
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
    }

    v24 = sub_100006274("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "escrowrequest: failed to load requests: %@", buf, 0xCu);
    }

    (statusesCopy)[2](statusesCopy, 0, v6);
    goto LABEL_30;
  }

  statusesCopy[2](statusesCopy, &__NSDictionary0__struct, 0);
LABEL_31:
}

- (void)triggerEscrowUpdate:(id)update options:(id)options reply:(id)reply
{
  updateCopy = update;
  optionsCopy = options;
  replyCopy = reply;
  if (_os_feature_enabled_impl())
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v11 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = updateCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Triggering an escrow update request due to '%@'", &v13, 0xCu);
    }

    controller = [(EscrowRequestServer *)self controller];
    [controller triggerEscrowUpdateRPC:updateCopy options:optionsCopy reply:replyCopy];
  }
}

- (void)fetchRequestWaitingOnPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if (!_os_feature_enabled_impl())
  {
    v31 = 0;
    v4 = [SecEscrowPendingRecord loadAllFromKeychain:&v31];
    v5 = v31;
    v6 = v5;
    if (v5)
    {
      domain = [v5 domain];
      if ([domain isEqualToString:NSOSStatusErrorDomain])
      {
        code = [v6 code];

        if (code == -25300)
        {
          v9 = +[CKKSAnalytics logger];
          [v9 setDateProperty:0 forKey:@"ERSPending"];

          (*(passcodeCopy + 2))(passcodeCopy, 0, 0);
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

LABEL_26:
      (*(passcodeCopy + 2))(passcodeCopy, 0, v6);
      goto LABEL_32;
    }

    if (!v4)
    {
      goto LABEL_26;
    }

    v25 = 0;
    v26 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (!v11)
    {
LABEL_22:

      v22 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No escrow requests need a passcode", buf, 2u);
      }

      (*(passcodeCopy + 2))(passcodeCopy, 0, 0);
LABEL_31:
      v6 = v25;
      v4 = v26;
      goto LABEL_32;
    }

    v12 = v11;
    v13 = *v28;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v27 + 1) + 8 * v14);
      if ([v15 certCached])
      {
        break;
      }

      v17 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [v15 uuid];
        *buf = 138412290;
        v33 = uuid;
        v20 = v17;
        v21 = "Escrow request %@ doesn't yet have a certificate cached";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }

LABEL_20:

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    hasSerializedPrerecord = [v15 hasSerializedPrerecord];
    v17 = sub_100006274("escrowrequest");
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!hasSerializedPrerecord)
    {
      if (v18)
      {
        uuid2 = [v15 uuid];
        *buf = 138412290;
        v33 = uuid2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Escrow request %@ is pending a passcode", buf, 0xCu);
      }

      uuid3 = [v15 uuid];
      (*(passcodeCopy + 2))(passcodeCopy, uuid3, 0);

      goto LABEL_31;
    }

    if (!v18)
    {
      goto LABEL_20;
    }

    uuid = [v15 uuid];
    *buf = 138412290;
    v33 = uuid;
    v20 = v17;
    v21 = "Escrow request %@ already has a prerecord; no passcode needed";
    goto LABEL_19;
  }

  (*(passcodeCopy + 2))(passcodeCopy, 0, 0);
LABEL_33:
}

- (void)fetchPrerecord:(id)prerecord reply:(id)reply
{
  prerecordCopy = prerecord;
  replyCopy = reply;
  if (!_os_feature_enabled_impl())
  {
    v16 = 0;
    v7 = [SecEscrowPendingRecord loadFromKeychain:prerecordCopy error:&v16];
    v8 = v16;
    if (v8)
    {
      v9 = sub_100006274("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = prerecordCopy;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to load prerecord with uuid %@: %@", buf, 0x16u);
      }

      replyCopy[2](replyCopy, 0, v8);
      goto LABEL_18;
    }

    if ([v7 uploadCompleted])
    {
      v10 = sub_100006274("SecError");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        replyCopy[2](replyCopy, 0, 0);
LABEL_18:

        goto LABEL_19;
      }

      *buf = 138412290;
      v18 = prerecordCopy;
      v11 = "escrowrequest: prerecord for uuid %@ already uploaded";
      v12 = v10;
      v13 = 12;
    }

    else
    {
      if ([v7 hasSerializedPrerecord])
      {
        v14 = sub_100006274("escrowrequest");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = prerecordCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fetched prerecord for uuid %@", buf, 0xCu);
        }

        serializedPrerecord = [v7 serializedPrerecord];
        (replyCopy)[2](replyCopy, serializedPrerecord, 0);

        goto LABEL_18;
      }

      v10 = sub_100006274("SecError");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 138412546;
      v18 = prerecordCopy;
      v19 = 2112;
      v20 = 0;
      v11 = "escrowrequest: no prerecord for uuid %@: %@";
      v12 = v10;
      v13 = 22;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_17;
  }

  replyCopy[2](replyCopy, 0, 0);
LABEL_19:
}

- (void)cachePrerecord:(id)prerecord serializedPrerecord:(id)serializedPrerecord reply:(id)reply
{
  prerecordCopy = prerecord;
  serializedPrerecordCopy = serializedPrerecord;
  replyCopy = reply;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    v11 = [SecEscrowPendingRecord loadFromKeychain:prerecordCopy error:&v21];
    v12 = v21;
    if (v12)
    {
      v13 = v12;
      v14 = sub_100006274("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = prerecordCopy;
        v24 = 2112;
        v25 = v13;
        v15 = "escrowrequest: unable to load uuid %@: %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
      }
    }

    else
    {
      [v11 setSerializedPrerecord:serializedPrerecordCopy];
      v20 = 0;
      [v11 saveToKeychain:&v20];
      v16 = v20;
      if (!v16)
      {
        v17 = sub_100006274("escrowrequest");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = prerecordCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "saved new prerecord for uuid %@", buf, 0xCu);
        }

        controller = [(EscrowRequestServer *)self controller];
        stateMachine = [controller stateMachine];
        [stateMachine pokeStateMachine];

        replyCopy[2](replyCopy, 0);
        goto LABEL_11;
      }

      v13 = v16;
      v14 = sub_100006274("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = prerecordCopy;
        v24 = 2112;
        v25 = v13;
        v15 = "escrowrequest: unable to save new prerecord for uuid %@: %@";
        goto LABEL_9;
      }
    }

    (replyCopy)[2](replyCopy, v13);
LABEL_11:

    goto LABEL_12;
  }

  replyCopy[2](replyCopy, 0);
LABEL_12:
}

- (BOOL)escrowCompletedWithinLastSeconds:(double)seconds
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA548;
  v7[3] = &unk_1003471E8;
  v9 = &v10;
  v5 = dispatch_semaphore_create(0);
  v8 = v5;
  [(EscrowRequestServer *)self escrowCompletedWithinLastSeconds:v7 reply:seconds];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (BOOL)pendingEscrowUpload:(id *)upload
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000AA884;
  v32 = sub_1000AA894;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000AA884;
  v26 = sub_1000AA894;
  v27 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AA89C;
  v21[3] = &unk_100336570;
  v21[4] = &v28;
  v21[5] = &v22;
  [(EscrowRequestServer *)self fetchRequestStatuses:v21];
  if (v23[5])
  {
    v4 = sub_100006274("escrow");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v23[5];
      *buf = 138412290;
      v36 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to fetch escrow statuses: %@", buf, 0xCu);
    }

    if (upload)
    {
      v6 = 0;
      *upload = v23[5];
      goto LABEL_21;
    }

LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v7 = v29[5];
  if (!v7 || ![v7 count])
  {
    goto LABEL_20;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [v29[5] allValues];
  v6 = 0;
  v9 = [allValues countByEnumeratingWithState:&v17 objects:v34 count:16];
  if (v9)
  {
    v10 = *v18;
    v11 = SecEscrowRequestHavePrecord;
    v12 = SecEscrowRequestPendingPasscode;
    v13 = SecEscrowRequestPendingCertificate;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (([v15 isEqualToString:v11] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", v12) & 1) != 0 || objc_msgSend(v15, "isEqualToString:", v13))
        {
          v6 = 1;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v17 objects:v34 count:16];
    }

    while (v9);
  }

LABEL_21:
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v6 & 1;
}

- (id)fetchStatuses:(id *)statuses
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000AA884;
  v18 = sub_1000AA894;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000AA884;
  v12 = sub_1000AA894;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AAA94;
  v7[3] = &unk_100336570;
  v7[4] = &v14;
  v7[5] = &v8;
  [(EscrowRequestServer *)self fetchRequestStatuses:v7];
  if (statuses)
  {
    v4 = v9[5];
    if (v4)
    {
      *statuses = v4;
    }
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

- (BOOL)triggerEscrowUpdate:(id)update options:(id)options error:(id *)error
{
  updateCopy = update;
  optionsCopy = options;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000AA884;
  v22 = sub_1000AA894;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AAC90;
  v15[3] = &unk_100346F60;
  v17 = &v18;
  v10 = dispatch_semaphore_create(0);
  v16 = v10;
  [(EscrowRequestServer *)self triggerEscrowUpdate:updateCopy options:optionsCopy reply:v15];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v19;
  if (error)
  {
    v12 = v19[5];
    if (v12)
    {
      *error = v12;
      v11 = v19;
    }
  }

  v13 = v11[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v13;
}

- (EscrowRequestServer)initWithLockStateTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = EscrowRequestServer;
  v5 = [(EscrowRequestServer *)&v9 init];
  if (v5)
  {
    v6 = [[EscrowRequestController alloc] initWithLockStateTracker:trackerCopy];
    controller = v5->_controller;
    v5->_controller = v6;
  }

  return v5;
}

+ (id)server
{
  if (qword_10039DDE0 != -1)
  {
    dispatch_once(&qword_10039DDE0, &stru_100336548);
  }

  v3 = qword_10039DDD8;

  return v3;
}

@end