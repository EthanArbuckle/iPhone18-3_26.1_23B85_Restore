@interface EscrowRequestController
- (EscrowRequestController)initWithLockStateTracker:(id)a3;
- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5;
- (void)storePrerecordsInEscrowRPC:(id)a3;
- (void)triggerEscrowUpdateRPC:(id)a3 options:(id)a4 reply:(id)a5;
@end

@implementation EscrowRequestController

- (void)storePrerecordsInEscrowRPC:(id)a3
{
  v4 = a3;
  v5 = [EscrowRequestPerformEscrowEnrollOperation alloc];
  v6 = [(EscrowRequestController *)self lockStateTracker];
  v7 = [(EscrowRequestPerformEscrowEnrollOperation *)v5 initWithIntendedState:@"nothing_to_do" errorState:@"nothing_to_do" enforceRateLimiting:0 lockStateTracker:v6];

  v8 = [(EscrowRequestController *)self stateMachine];
  [v8 startOperation];

  v9 = [(EscrowRequestController *)self stateMachine];
  v10 = [NSSet setWithObject:@"nothing_to_do"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A3E7C;
  v13[3] = &unk_1003386E8;
  v14 = v7;
  v15 = v4;
  v11 = v4;
  v12 = v7;
  [v9 doSimpleStateMachineRPC:@"trigger-escrow-store" op:v12 sourceStates:v10 reply:v13];
}

- (void)triggerEscrowUpdateRPC:(id)a3 options:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(EscrowRequestController *)self stateMachine];
  [v9 startOperation];

  v57 = 0;
  v10 = [SecEscrowPendingRecord loadAllFromKeychain:&v57];
  v11 = v57;
  v12 = v11;
  if (!v11)
  {
LABEL_4:

    v15 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Investigating a new escrow request", buf, 2u);
    }

    v16 = [v7 objectForKeyedSubscript:SecEscrowRequestOptionFederationMove];
    v50 = v16;
    v47 = self;
    if (v16)
    {
      v17 = v16;
      v18 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Move requested to federation %@", buf, 0xCu);
      }

      v19 = objc_alloc_init(SecureBackupEscrowReason);
      [v19 setReason:1];
      [v19 setExpectedFederationID:v17];
    }

    else
    {
      v19 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v22)
    {
      v23 = v22;
      v48 = v8;
      v49 = v7;
      v24 = 0;
      v25 = *v54;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v53 + 1) + 8 * i);
          if (([v27 uploadCompleted] & 1) == 0 && (objc_msgSend(v27, "hasAltDSID") & 1) == 0)
          {
            v28 = sub_100006274("escrowrequest");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v60 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Retriggering an existing escrow request: %@", buf, 0xCu);
            }

            [v27 setHasCertCached:0];
            [v27 setSerializedPrerecord:0];
            v29 = [v19 data];
            [v27 setSerializedReason:v29];

            v52 = 0;
            [v27 saveToKeychain:&v52];
            v30 = v52;
            if (v30)
            {
              v12 = v30;
              v32 = sub_100006274("SecError");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v60 = v12;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "escrowrequest: Unable to save modified request to keychain: %@", buf, 0xCu);
              }

              v8 = v48;
              v48[2](v48, v12);

              v7 = v49;
              goto LABEL_46;
            }

            v31 = sub_100006274("escrowrequest");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Retriggering an existing escrow request complete", buf, 2u);
            }

            v24 = 1;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v8 = v48;
      v7 = v49;
      if (v24)
      {
        goto LABEL_45;
      }
    }

    else
    {
    }

    v33 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Creating a new escrow request", buf, 2u);
    }

    v34 = objc_alloc_init(SecEscrowPendingRecord);
    v35 = +[NSUUID UUID];
    v36 = [v35 UUIDString];
    [(SecEscrowPendingRecord *)v34 setUuid:v36];

    [(SecEscrowPendingRecord *)v34 setAltDSID:0];
    v37 = +[NSDate date];
    [v37 timeIntervalSince1970];
    [(SecEscrowPendingRecord *)v34 setTriggerRequestTime:1000 * v38];

    v39 = [v19 data];
    [(SecEscrowPendingRecord *)v34 setSerializedReason:v39];

    v40 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [(SecEscrowPendingRecord *)v34 uuid];
      *buf = 138412290;
      v60 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "beginning a new escrow request (%@)", buf, 0xCu);
    }

    v51 = 0;
    [(SecEscrowPendingRecord *)v34 saveToKeychain:&v51];
    v42 = v51;
    if (v42)
    {
      v12 = v42;
      v43 = sub_100006274("SecError");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v12;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "escrowrequest: unable to save escrow update request: %@", buf, 0xCu);
      }

      v8[2](v8, v12);
      goto LABEL_46;
    }

LABEL_45:
    v44 = +[CKKSAnalytics logger];
    v45 = +[NSDate date];
    [v44 setDateProperty:v45 forKey:@"ERSPending"];

    [(EscrowRequestController *)v47 setHaveRecordedDate:1];
    v46 = [(EscrowRequestController *)v47 stateMachine];
    [v46 handleFlag:@"escrowrequest_inform_cloudservices"];

    v8[2](v8, 0);
    v12 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v13 = [v11 domain];
  if ([v13 isEqualToString:NSOSStatusErrorDomain])
  {
    v14 = [v12 code];

    if (v14 == -25300)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v20 = sub_100006274("escrowrequest");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "failed to fetch records from keychain: %@", buf, 0xCu);
  }

  v8[2](v8, v12);
LABEL_47:
}

- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(EscrowRequestController *)self queue];
  dispatch_assert_queue_V2(v9);

  if ([v8 _onqueueContains:@"escrowrequest_inform_cloudservices"])
  {
    [v8 _onqueueRemoveFlag:@"escrowrequest_inform_cloudservices"];
LABEL_4:
    v10 = [EscrowRequestInformCloudServicesOperation alloc];
    v11 = [(EscrowRequestController *)self lockStateTracker];
    v12 = [(EscrowRequestInformCloudServicesOperation *)v10 initWithIntendedState:@"nothing_to_do" errorState:@"nothing_to_do" lockStateTracker:v11];
LABEL_5:
    v13 = v12;
LABEL_6:

    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"trigger_cloudservices"])
  {
    goto LABEL_4;
  }

  if ([v7 isEqualToString:@"trigger_escrow_upload"])
  {
    v15 = [EscrowRequestPerformEscrowEnrollOperation alloc];
    v11 = [(EscrowRequestController *)self lockStateTracker];
    v12 = [(EscrowRequestPerformEscrowEnrollOperation *)v15 initWithIntendedState:@"nothing_to_do" errorState:@"nothing_to_do" enforceRateLimiting:1 lockStateTracker:v11];
    goto LABEL_5;
  }

  if ([v7 isEqualToString:@"wait_for_unlock"])
  {
    v16 = sub_100006274("escrowrequest");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "waiting for unlock before continuing with state machine", buf, 2u);
    }

    v13 = [OctagonStateTransitionOperation named:@"wait-for-unlock" entering:@"nothing_to_do"];
    v11 = [(EscrowRequestController *)self lockStateTracker];
    v17 = [v11 unlockDependency];
    [v13 addNullableDependency:v17];

    goto LABEL_6;
  }

  v55 = 0;
  v18 = [SecEscrowPendingRecord loadAllFromKeychain:&v55];
  v19 = v55;
  if (v19)
  {
    v20 = [(EscrowRequestController *)self lockStateTracker];
    v21 = [v20 isLockedError:v19];

    if (v21)
    {
      v13 = [OctagonStateTransitionOperation named:@"wait-for-unlock" entering:@"wait_for_unlock"];
    }

    else
    {
      v43 = sub_100006274("escrowrequest");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v19;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "failed to fetch records from keychain, nothing to do: %@", buf, 0xCu);
      }

      v13 = 0;
    }

    goto LABEL_52;
  }

  v49 = v18;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = v18;
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (!v23)
  {
    goto LABEL_44;
  }

  v24 = v23;
  v25 = *v52;
  while (2)
  {
    v26 = 0;
    v50 = v24;
    do
    {
      if (*v52 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v51 + 1) + 8 * v26);
      if (![v27 hasUploadCompleted] || (objc_msgSend(v27, "uploadCompleted") & 1) == 0)
      {
        if (![(EscrowRequestController *)self haveRecordedDate])
        {
          v28 = +[CKKSAnalytics logger];
          v29 = [v28 datePropertyForKey:@"ERSPending"];

          if (!v29)
          {
            v30 = +[CKKSAnalytics logger];
            +[NSDate date];
            v31 = v25;
            v33 = v32 = v22;
            [v30 setDateProperty:v33 forKey:@"ERSPending"];

            v22 = v32;
            v25 = v31;
            v24 = v50;
          }

          [(EscrowRequestController *)self setHaveRecordedDate:1];
        }

        v34 = +[NSDate date];
        [v34 timeIntervalSince1970];
        v36 = v35;

        if ([v27 certCached])
        {
          if (![v27 hasSerializedPrerecord])
          {
            goto LABEL_42;
          }

          v37 = [v27 escrowAttemptedWithinLastSeconds:300.0];
          v38 = sub_100006274("escrowrequest");
          v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          if (!v37)
          {
            if (v39)
            {
              v48 = [v27 uuid];
              *buf = 138412290;
              v58 = v48;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Request %@ needs to be stored!", buf, 0xCu);
            }

            v46 = @"escrow-request-attempt-escrow-upload";
            v47 = @"trigger_escrow_upload";
LABEL_51:
            v13 = [OctagonStateTransitionOperation named:v46 entering:v47];
            v19 = 0;
            v18 = v49;

            goto LABEL_52;
          }

          if (!v39)
          {
            goto LABEL_41;
          }

          v40 = [v27 uuid];
          *buf = 138412290;
          v58 = v40;
          v41 = v38;
          v42 = "Request %@ needs to be stored, but has been attempted recently. Holding off...";
        }

        else
        {
          if (-[EscrowRequestController forceIgnoreCloudServicesRateLimiting](self, "forceIgnoreCloudServicesRateLimiting") || ![v27 hasLastCloudServicesTriggerTime] || objc_msgSend(v27, "lastCloudServicesTriggerTime") < 1000 * v36 - 300000)
          {
            v44 = sub_100006274("escrowrequest");
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [v27 uuid];
              *buf = 138412290;
              v58 = v45;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Request %@ needs a cached certififcate", buf, 0xCu);
            }

            v46 = @"escrow-request-cache-cert";
            v47 = @"trigger_cloudservices";
            goto LABEL_51;
          }

          v38 = sub_100006274("escrowrequest");
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }

          v40 = [v27 uuid];
          *buf = 138412290;
          v58 = v40;
          v41 = v38;
          v42 = "Request %@ needs to cache a certificate, but that has been attempted recently. Holding off...";
        }

        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0xCu);

LABEL_41:
      }

LABEL_42:
      v26 = v26 + 1;
    }

    while (v24 != v26);
    v24 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_44:

  v13 = 0;
  v19 = 0;
  v18 = v49;
LABEL_52:

LABEL_7:

  return v13;
}

- (EscrowRequestController)initWithLockStateTracker:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = EscrowRequestController;
  v6 = [(EscrowRequestController *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("EscrowRequestControllerQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_lockStateTracker, a3);
    v10 = [OctagonStateMachine alloc];
    v19[0] = @"nothing_to_do";
    v19[1] = @"trigger_cloudservices";
    v20[0] = &off_1003644B0;
    v20[1] = &off_1003644C8;
    v19[2] = @"trigger_escrow_upload";
    v19[3] = @"wait_for_unlock";
    v20[2] = &off_1003644E0;
    v20[3] = &off_1003644F8;
    v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
    v18 = @"escrowrequest_inform_cloudservices";
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = [NSSet setWithArray:v12];
    v14 = [(OctagonStateMachine *)v10 initWithName:@"escrowrequest" states:v11 flags:v13 initialState:@"nothing_to_do" queue:v6->_queue stateEngine:v6 unexpectedStateErrorDomain:@"com.apple.security.escrowrequest.state" lockStateTracker:v5 reachabilityTracker:0];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v14;

    v6->_forceIgnoreCloudServicesRateLimiting = 0;
  }

  return v6;
}

@end