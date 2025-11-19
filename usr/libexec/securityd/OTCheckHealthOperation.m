@interface OTCheckHealthOperation
+ (BOOL)checkIfPasscodeIsSetForDevice;
- (OTCheckHealthOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 deviceInfo:(id)a6 skipRateLimitedCheck:(BOOL)a7 reportRateLimitingError:(BOOL)a8 repair:(BOOL)a9 danglingPeerCleanup:(BOOL)a10 caesarPeerCleanup:(BOOL)a11 updateIdMS:(BOOL)a12;
- (void)checkMachineID;
- (void)groupStart;
- (void)handleRepairSuggestions:(id)a3;
@end

@implementation OTCheckHealthOperation

- (void)handleRepairSuggestions:(id)a3
{
  [(OTCheckHealthOperation *)self setResults:a3];
  v4 = [(OTCheckHealthOperation *)self results];
  v5 = [v4 resetOctagon];

  if (v5)
  {
    v6 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting Octagon as per Cuttlefish request", buf, 2u);
    }

    v7 = @"HealthCheckReset";
  }

  else
  {
    v8 = [(OTCheckHealthOperation *)self results];
    v9 = [v8 leaveTrust];

    if (!v9)
    {
      v11 = [(OTCheckHealthOperation *)self intendedState];
      [(OTCheckHealthOperation *)self setNextState:v11];

      goto LABEL_11;
    }

    v10 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Leaving clique as per Cuttlefish request", v13, 2u);
    }

    v7 = @"HealthCheckLeaveClique";
  }

  [(OTCheckHealthOperation *)self setNextState:v7];
LABEL_11:
  v12 = [(OTCheckHealthOperation *)self finishOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v12];
}

- (void)groupStart
{
  v3 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning cuttlefish health checkup", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTCheckHealthOperation *)self setFinishOp:v4];

  v5 = [(OTCheckHealthOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  [(OTCheckHealthOperation *)self checkMachineID];
  v6 = [(OTCheckHealthOperation *)self skipRateLimitingCheck];
  v7 = sub_100006274("octagon-health");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NOT running rate limiting checks!", buf, 2u);
    }

    goto LABEL_6;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "running rate limiting checks!", buf, 2u);
  }

  [(CKKSResultOperation *)self setError:0];
  v19 = [(OTCheckHealthOperation *)self deps];
  v20 = [v19 stateHolder];
  v59 = 0;
  v7 = [v20 lastHealthCheckupDate:&v59];
  v21 = v59;

  v22 = [(OTCheckHealthOperation *)self deps];
  v23 = [v22 lockStateTracker];
  LODWORD(v20) = [v23 isLockedError:v21];

  v24 = sub_100006274("octagon-health");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "device is locked, not performing cuttlefish check", buf, 2u);
    }

    v26 = [(OTCheckHealthOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v26];

    return;
  }

  if (v25)
  {
    *buf = 138412290;
    v63 = v7;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "last health check timestamp: %@", buf, 0xCu);
  }

  v27 = objc_alloc_init(NSDateComponents);
  if (SecIsInternalRelease())
  {
    v28 = -23;
  }

  else
  {
    v28 = -72;
  }

  [v27 setHour:v28];
  v29 = +[NSDate date];
  v30 = +[NSCalendar currentCalendar];
  v55 = [v30 dateByAddingComponents:v27 toDate:v29 options:0];

  if (!v7 || [v7 compare:v55]== -1)
  {
    v36 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v63 = v7;
      v64 = 2112;
      v65 = v55;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not rate-limiting: last updated %@ vs %@", buf, 0x16u);
    }

    v37 = [(OTCheckHealthOperation *)self deps];
    v38 = [v37 stateHolder];
    v58 = 0;
    v39 = [v38 persistLastHealthCheck:v29 error:&v58];
    v40 = v58;

    v41 = [(OTCheckHealthOperation *)self deps];
    v42 = [v41 lockStateTracker];
    LOBYTE(v38) = [v42 isLockedError:v40];

    if (v38)
    {
      v43 = sub_100006274("octagon-health");
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        v50 = [(OTCheckHealthOperation *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v50];

        return;
      }

      *buf = 0;
      v44 = "device is locked, not performing cuttlefish check";
      v45 = v43;
      v46 = 2;
    }

    else
    {
      if (v40)
      {
        v47 = 0;
      }

      else
      {
        v47 = v39;
      }

      if (v47)
      {

LABEL_6:
        objc_initWeak(buf, self);
        v9 = [(OTCheckHealthOperation *)self deps];
        v54 = [v9 cuttlefishXPCWrapper];
        v10 = [(OTCheckHealthOperation *)self deps];
        v53 = [v10 activeAccount];
        v52 = +[OTCheckHealthOperation checkIfPasscodeIsSetForDevice];
        v51 = [(OTCheckHealthOperation *)self repair];
        v11 = [(OTCheckHealthOperation *)self danglingPeerCleanup];
        v12 = [(OTCheckHealthOperation *)self caesarPeerCleanup];
        v13 = [(OTCheckHealthOperation *)self updateIdMS];
        v14 = [SecureBackup knownICDPFederations:0];
        v15 = [(OTCheckHealthOperation *)self deps];
        v16 = [v15 flowID];
        v17 = [(OTCheckHealthOperation *)self deps];
        v18 = [v17 deviceSessionID];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000ADE34;
        v56[3] = &unk_100336648;
        objc_copyWeak(&v57, buf);
        [v54 requestHealthCheckWithSpecificUser:v53 requiresEscrowCheck:v52 repair:v51 danglingPeerCleanup:v11 caesarPeerCleanup:v12 updateIdMS:v13 knownFederations:v14 flowID:v16 deviceSessionID:v18 reply:v56];

        objc_destroyWeak(&v57);
        objc_destroyWeak(buf);
        return;
      }

      v43 = sub_100006274("SecError");
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      *buf = 138412290;
      v63 = v40;
      v44 = "octagon-health: failed to persist last health check value:%@";
      v45 = v43;
      v46 = 12;
    }

    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
    goto LABEL_41;
  }

  v31 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v7;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Last update is within 3 days (%@); rate-limiting this operation", buf, 0xCu);
  }

  v32 = [NSString stringWithFormat:@"Rate-limited the OTCheckHealthOperation:%@", v7];
  v60 = NSLocalizedDescriptionKey;
  v61 = v32;
  v33 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v34 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v33];

  v35 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v34;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "rate limited! %@", buf, 0xCu);
  }

  if ([(OTCheckHealthOperation *)self reportRateLimitingError])
  {
    [(CKKSResultOperation *)self setError:v34];
  }

  else
  {
    v48 = [(OTCheckHealthOperation *)self intendedState];
    [(OTCheckHealthOperation *)self setNextState:v48];
  }

  v49 = [(OTCheckHealthOperation *)self finishOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v49];
}

- (void)checkMachineID
{
  v3 = [(OTCheckHealthOperation *)self deps];
  v4 = [v3 stateHolder];
  v29 = 0;
  v5 = [v4 loadOrCreateAccountMetadata:&v29];
  v6 = v29;

  if (v5 && !v6)
  {
    v27 = v5;
    v26 = [v5 machineID];
    v25 = [(OTCheckHealthOperation *)self deps];
    v7 = [v25 authKitAdapter];
    v24 = [(OTCheckHealthOperation *)self deps];
    v23 = [v24 activeAccount];
    v8 = [v23 altDSID];
    v9 = [(OTCheckHealthOperation *)self deps];
    v10 = [v9 flowID];
    v11 = [(OTCheckHealthOperation *)self deps];
    v12 = [v11 deviceSessionID];
    v13 = [(OTCheckHealthOperation *)self deps];
    v28 = 0;
    v14 = [v7 machineID:v8 flowID:v10 deviceSessionID:v12 canSendMetrics:objc_msgSend(v13 error:{"permittedToSendMetrics"), &v28}];
    v15 = v28;

    if (!v14 || v15)
    {
      v19 = sub_100006274("octagon-health");
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "fetching machine id failed: %@", buf, 0xCu);
      }

      v6 = 0;
      v5 = v27;
      v16 = v26;
    }

    else
    {
      v16 = v26;
      v6 = 0;
      v5 = v27;
      if ([v14 isEqualToString:v26])
      {
LABEL_20:

        goto LABEL_21;
      }

      v17 = sub_100006274("octagon-health");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v26;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "machineID %@ -> %@", buf, 0x16u);
      }

      if (qword_10039E128 != -1)
      {
        dispatch_once(&qword_10039E128, &stru_1003420F8);
      }

      v18 = byte_10039E120;
      v19 = sub_100006274("octagon-health");
      v20 = os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT);
      if (v18 == 1)
      {
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "reroll feature flag enabled -- rerolling", buf, 2u);
        }

        v19 = [[OctagonPendingFlag alloc] initWithFlag:@"reroll_identity" conditions:3];
        v21 = [(OTCheckHealthOperation *)self deps];
        v22 = [v21 flagHandler];
        [v22 handlePendingFlag:v19];
      }

      else if (v20)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "reroll feature flag disabled -- not rerolling", buf, 2u);
      }
    }

    goto LABEL_20;
  }

  v16 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "could not fetch account state -- not checking machine id (%@)", buf, 0xCu);
  }

LABEL_21:
}

- (OTCheckHealthOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 deviceInfo:(id)a6 skipRateLimitedCheck:(BOOL)a7 reportRateLimitingError:(BOOL)a8 repair:(BOOL)a9 danglingPeerCleanup:(BOOL)a10 caesarPeerCleanup:(BOOL)a11 updateIdMS:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v27.receiver = self;
  v27.super_class = OTCheckHealthOperation;
  v22 = [(CKKSGroupOperation *)&v27 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong((v22 + 166), a3);
    objc_storeStrong((v23 + 134), a4);
    objc_storeStrong((v23 + 142), a5);
    v24 = *(v23 + 158);
    *(v23 + 158) = 0;

    objc_storeStrong((v23 + 150), a6);
    v23[128] = a7;
    v23[129] = a8;
    v23[130] = a9;
    v23[131] = a10;
    v23[132] = a11;
    v23[133] = a12;
  }

  return v23;
}

+ (BOOL)checkIfPasscodeIsSetForDevice
{
  v15 = -21846;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v2;
  v14 = v2;
  v11 = v2;
  v12 = v2;
  device_state = aks_get_device_state();
  if (device_state)
  {
    v4 = device_state;
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "octagon-health: aks_get_device_state failed with: %d", &v9, 8u);
    }

    v6 = 0;
  }

  else
  {
    v6 = DWORD1(v11) != 3;
  }

  v7 = sub_100006274("octagon-health");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "checkIfPasscodeIsSetForDevice is %{BOOL}d", &v9, 8u);
  }

  return v6;
}

@end