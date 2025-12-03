@interface OTCheckHealthOperation
+ (BOOL)checkIfPasscodeIsSetForDevice;
- (OTCheckHealthOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState deviceInfo:(id)info skipRateLimitedCheck:(BOOL)check reportRateLimitingError:(BOOL)error repair:(BOOL)repair danglingPeerCleanup:(BOOL)self0 caesarPeerCleanup:(BOOL)self1 updateIdMS:(BOOL)self2;
- (void)checkMachineID;
- (void)groupStart;
- (void)handleRepairSuggestions:(id)suggestions;
@end

@implementation OTCheckHealthOperation

- (void)handleRepairSuggestions:(id)suggestions
{
  [(OTCheckHealthOperation *)self setResults:suggestions];
  results = [(OTCheckHealthOperation *)self results];
  resetOctagon = [results resetOctagon];

  if (resetOctagon)
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
    results2 = [(OTCheckHealthOperation *)self results];
    leaveTrust = [results2 leaveTrust];

    if (!leaveTrust)
    {
      intendedState = [(OTCheckHealthOperation *)self intendedState];
      [(OTCheckHealthOperation *)self setNextState:intendedState];

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
  finishOp = [(OTCheckHealthOperation *)self finishOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp];
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

  finishOp = [(OTCheckHealthOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  [(OTCheckHealthOperation *)self checkMachineID];
  skipRateLimitingCheck = [(OTCheckHealthOperation *)self skipRateLimitingCheck];
  v7 = sub_100006274("octagon-health");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (skipRateLimitingCheck)
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
  deps = [(OTCheckHealthOperation *)self deps];
  stateHolder = [deps stateHolder];
  v59 = 0;
  v7 = [stateHolder lastHealthCheckupDate:&v59];
  v21 = v59;

  deps2 = [(OTCheckHealthOperation *)self deps];
  lockStateTracker = [deps2 lockStateTracker];
  LODWORD(stateHolder) = [lockStateTracker isLockedError:v21];

  v24 = sub_100006274("octagon-health");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (stateHolder)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "device is locked, not performing cuttlefish check", buf, 2u);
    }

    finishOp2 = [(OTCheckHealthOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];

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

    deps3 = [(OTCheckHealthOperation *)self deps];
    stateHolder2 = [deps3 stateHolder];
    v58 = 0;
    v39 = [stateHolder2 persistLastHealthCheck:v29 error:&v58];
    v40 = v58;

    deps4 = [(OTCheckHealthOperation *)self deps];
    lockStateTracker2 = [deps4 lockStateTracker];
    LOBYTE(stateHolder2) = [lockStateTracker2 isLockedError:v40];

    if (stateHolder2)
    {
      v43 = sub_100006274("octagon-health");
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        finishOp3 = [(OTCheckHealthOperation *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp3];

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
        deps5 = [(OTCheckHealthOperation *)self deps];
        cuttlefishXPCWrapper = [deps5 cuttlefishXPCWrapper];
        deps6 = [(OTCheckHealthOperation *)self deps];
        activeAccount = [deps6 activeAccount];
        v52 = +[OTCheckHealthOperation checkIfPasscodeIsSetForDevice];
        repair = [(OTCheckHealthOperation *)self repair];
        danglingPeerCleanup = [(OTCheckHealthOperation *)self danglingPeerCleanup];
        caesarPeerCleanup = [(OTCheckHealthOperation *)self caesarPeerCleanup];
        updateIdMS = [(OTCheckHealthOperation *)self updateIdMS];
        v14 = [SecureBackup knownICDPFederations:0];
        deps7 = [(OTCheckHealthOperation *)self deps];
        flowID = [deps7 flowID];
        deps8 = [(OTCheckHealthOperation *)self deps];
        deviceSessionID = [deps8 deviceSessionID];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000ADE34;
        v56[3] = &unk_100336648;
        objc_copyWeak(&v57, buf);
        [cuttlefishXPCWrapper requestHealthCheckWithSpecificUser:activeAccount requiresEscrowCheck:v52 repair:repair danglingPeerCleanup:danglingPeerCleanup caesarPeerCleanup:caesarPeerCleanup updateIdMS:updateIdMS knownFederations:v14 flowID:flowID deviceSessionID:deviceSessionID reply:v56];

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
    intendedState = [(OTCheckHealthOperation *)self intendedState];
    [(OTCheckHealthOperation *)self setNextState:intendedState];
  }

  finishOp4 = [(OTCheckHealthOperation *)self finishOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp4];
}

- (void)checkMachineID
{
  deps = [(OTCheckHealthOperation *)self deps];
  stateHolder = [deps stateHolder];
  v29 = 0;
  v5 = [stateHolder loadOrCreateAccountMetadata:&v29];
  v6 = v29;

  if (v5 && !v6)
  {
    v27 = v5;
    machineID = [v5 machineID];
    deps2 = [(OTCheckHealthOperation *)self deps];
    authKitAdapter = [deps2 authKitAdapter];
    deps3 = [(OTCheckHealthOperation *)self deps];
    activeAccount = [deps3 activeAccount];
    altDSID = [activeAccount altDSID];
    deps4 = [(OTCheckHealthOperation *)self deps];
    flowID = [deps4 flowID];
    deps5 = [(OTCheckHealthOperation *)self deps];
    deviceSessionID = [deps5 deviceSessionID];
    deps6 = [(OTCheckHealthOperation *)self deps];
    v28 = 0;
    v14 = [authKitAdapter machineID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:objc_msgSend(deps6 error:{"permittedToSendMetrics"), &v28}];
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
      v16 = machineID;
    }

    else
    {
      v16 = machineID;
      v6 = 0;
      v5 = v27;
      if ([v14 isEqualToString:machineID])
      {
LABEL_20:

        goto LABEL_21;
      }

      v17 = sub_100006274("octagon-health");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = machineID;
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
        deps7 = [(OTCheckHealthOperation *)self deps];
        flagHandler = [deps7 flagHandler];
        [flagHandler handlePendingFlag:v19];
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

- (OTCheckHealthOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState deviceInfo:(id)info skipRateLimitedCheck:(BOOL)check reportRateLimitingError:(BOOL)error repair:(BOOL)repair danglingPeerCleanup:(BOOL)self0 caesarPeerCleanup:(BOOL)self1 updateIdMS:(BOOL)self2
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = OTCheckHealthOperation;
  v22 = [(CKKSGroupOperation *)&v27 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong((v22 + 166), dependencies);
    objc_storeStrong((v23 + 134), state);
    objc_storeStrong((v23 + 142), errorState);
    v24 = *(v23 + 158);
    *(v23 + 158) = 0;

    objc_storeStrong((v23 + 150), info);
    v23[128] = check;
    v23[129] = error;
    v23[130] = repair;
    v23[131] = cleanup;
    v23[132] = peerCleanup;
    v23[133] = s;
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