@interface OTCheckEscrowOperation
- (BOOL)enablePasscodeCacheFlow:(id *)flow;
- (OTCheckEscrowOperation)initWithDependencies:(id)dependencies followupHandler:(id)handler isBackgroundCheck:(BOOL)check;
- (id)getPasscodeGeneration;
- (void)handleRepairSuggestions:(id)suggestions;
- (void)performEscrowCheck:(id)check;
@end

@implementation OTCheckEscrowOperation

- (BOOL)enablePasscodeCacheFlow:(id *)flow
{
  deps = [(OTCheckEscrowOperation *)self deps];
  stateHolder = [deps stateHolder];
  v60 = 0;
  v7 = [stateHolder loadOrCreateAccountMetadata:&v60];
  v8 = v60;

  if (v7 && !v8)
  {
    flowCopy = flow;
    altDSID = [v7 altDSID];
    v9 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v7 lastEscrowRepairAttempted] / 1000.0);
    results = [(OTCheckEscrowOperation *)self results];
    if ([(__CFString *)results repairReason]!= 5)
    {
LABEL_7:

LABEL_8:
      results = +[NSDate date];
      [(__CFString *)results timeIntervalSinceDate:v9];
      if (v19 < 15552000.0)
      {
        escrowRepairAttemptVersion = [v7 escrowRepairAttemptVersion];
        v21 = sub_100006274("octagon-escrow-repair");
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (escrowRepairAttemptVersion == 1)
        {
          if (v22)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "rate limited, will not perform silent repair", buf, 2u);
          }

          if (flow)
          {
            v23 = 88;
LABEL_27:
            [NSError errorWithDomain:@"com.apple.security.octagon" code:v23 userInfo:0];
            *flow = v26 = 0;
LABEL_59:

            goto LABEL_60;
          }

          goto LABEL_58;
        }

        if (v22)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "rate limit ignored due to version check", buf, 2u);
        }
      }

      results2 = [(OTCheckEscrowOperation *)self results];
      repairDisabled = [results2 repairDisabled];

      v29 = sub_100006274("octagon-escrow-repair");
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (!repairDisabled)
      {
        v31 = v9;
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "enabling passcode cache flow", buf, 2u);
        }

        v54 = v8;

        deps2 = [(OTCheckEscrowOperation *)self deps];
        stateHolder2 = [deps2 stateHolder];
        v57 = 0;
        v34 = [stateHolder2 persistLastEscrowRepairTriggered:results error:&v57];
        v35 = v57;

        if (!v34 || v35)
        {
          v36 = sub_100006274("octagon-escrow-repair");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v62 = v35;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "failed to persist escrow repair trigger date: %@", buf, 0xCu);
          }
        }

        v37 = aks_enable_cache_flow();
        v26 = v37 == 0;
        v9 = v31;
        if (v37)
        {
          v38 = v37;
          v39 = sub_100006274("octagon-escrow-repair");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v62) = v38;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "aks_enable_cache_flow failed: %x", buf, 8u);
          }

          if (flowCopy)
          {
            *flowCopy = [NSError errorWithDomain:NSOSStatusErrorDomain code:v38 userInfo:0];
          }
        }

        v8 = v54;
        goto LABEL_59;
      }

      if (v30)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "repair disabled, will not perform silent repair", buf, 2u);
      }

      if (flow)
      {
        v23 = 29;
        goto LABEL_27;
      }

LABEL_58:
      v26 = 0;
      goto LABEL_59;
    }

    results3 = [(OTCheckEscrowOperation *)self results];
    moveRequest = [results3 moveRequest];

    if (!moveRequest)
    {
      goto LABEL_8;
    }

    v53 = v9;
    deps3 = [(OTCheckEscrowOperation *)self deps];
    secureBackupAdapter = [deps3 secureBackupAdapter];
    results4 = [(OTCheckEscrowOperation *)self results];
    moveRequest2 = [results4 moveRequest];
    intendedFederation = [moveRequest2 intendedFederation];
    v59 = 0;
    v18 = [secureBackupAdapter moveToFederationAllowed:intendedFederation altDSID:altDSID error:&v59];
    results = v59;

    if (v18)
    {
      v9 = v53;
      v8 = 0;
      goto LABEL_7;
    }

    v9 = v53;
    v8 = 0;
    if (results)
    {
      domain = [(__CFString *)results domain];
      if ([domain isEqualToString:kCloudServicesErrorDomain])
      {
        code = [(__CFString *)results code];

        if (code == 601)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v50 = sub_100006274("octagon-escrow-repair");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = results;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "failed to determine if federation move is allowed: %@", buf, 0xCu);
      }

      if (flow)
      {
        v51 = results;
        v26 = 0;
        *flow = results;
        goto LABEL_59;
      }

      goto LABEL_58;
    }

LABEL_44:
    v42 = sub_100006274("octagon-escrow-repair");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "terms acceptance needed, will post follow up", buf, 2u);
    }

    followupHandler = [(OTCheckEscrowOperation *)self followupHandler];
    deps4 = [(OTCheckEscrowOperation *)self deps];
    activeAccount = [deps4 activeAccount];
    v58 = 0;
    v46 = [followupHandler postFollowUp:4 activeAccount:activeAccount error:&v58];
    v47 = v58;

    v9 = v53;
    if ((v46 & 1) == 0)
    {
      v48 = sub_100006274("octagon-escrow-repair");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = @"secure terms";
        *buf = 138412546;
        v62 = @"secure terms";
        v63 = 2112;
        v64 = v47;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "failed to post follow up (%@): %@", buf, 0x16u);
      }
    }

    if (flow)
    {
      *flow = [NSError errorWithDomain:@"com.apple.security.octagon" code:89 userInfo:0];
    }

    goto LABEL_58;
  }

  v24 = sub_100006274("octagon-escrow-repair");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "failed to get account metadata: %@", buf, 0xCu);
  }

  if (flow)
  {
    v25 = v8;
    v26 = 0;
    *flow = v8;
  }

  else
  {
    v26 = 0;
  }

LABEL_60:

  return v26;
}

- (void)handleRepairSuggestions:(id)suggestions
{
  [(OTCheckEscrowOperation *)self setResults:suggestions];
  results = [(OTCheckEscrowOperation *)self results];
  octagonTrusted = [results octagonTrusted];

  if (octagonTrusted)
  {
    results2 = [(OTCheckEscrowOperation *)self results];
    needsReenroll = [results2 needsReenroll];

    v8 = sub_100006274("octagon-health");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if ((needsReenroll & 1) == 0)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCSC Doesn't need Reenroll", buf, 2u);
      }

      followupHandler = [(OTCheckEscrowOperation *)self followupHandler];
      deps = [(OTCheckEscrowOperation *)self deps];
      activeAccount = [deps activeAccount];
      v30 = 0;
      v16 = [followupHandler clearAllRepairFollowUps:activeAccount error:&v30];
      v12 = v30;

      if ((v16 & 1) == 0)
      {
        v17 = sub_100006274("octagon-escrow-repair");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "failed to clear follow ups: %@", buf, 0xCu);
        }
      }

      goto LABEL_17;
    }

    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCSC Needs Reenroll", buf, 2u);
    }

    results3 = [(OTCheckEscrowOperation *)self results];
    if ([results3 repairReason] == 5)
    {
      v11 = _os_feature_enabled_impl();

      if ((v11 & 1) == 0)
      {
        v12 = sub_100006274("octagon-escrow-repair");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "escrow check migration is disabled", buf, 2u);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v18 = [AAFAnalyticsEventSecurity alloc];
    deps2 = [(OTCheckEscrowOperation *)self deps];
    activeAccount2 = [deps2 activeAccount];
    altDSID = [activeAccount2 altDSID];
    deps3 = [(OTCheckEscrowOperation *)self deps];
    flowID = [deps3 flowID];
    deps4 = [(OTCheckEscrowOperation *)self deps];
    deviceSessionID = [deps4 deviceSessionID];
    LOBYTE(v28) = 1;
    v12 = [v18 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameEscrowPasscodeEnableCacheFlow testsAreEnabled:0 canSendMetrics:v28 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    v29 = 0;
    v26 = [(OTCheckEscrowOperation *)self enablePasscodeCacheFlow:&v29];
    v27 = v29;
    [v12 sendMetricWithResult:v26 error:v27];

LABEL_17:
  }
}

- (void)performEscrowCheck:(id)check
{
  checkCopy = check;
  v4 = sub_100006274("octagon-escrowcheck");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning cuttlefish escrow check", &buf, 2u);
  }

  getPasscodeGeneration = [(OTCheckEscrowOperation *)self getPasscodeGeneration];
  if (getPasscodeGeneration)
  {
    objc_initWeak(&buf, self);
    deps = [(OTCheckEscrowOperation *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTCheckEscrowOperation *)self deps];
    activeAccount = [deps2 activeAccount];
    v7 = +[OTCheckHealthOperation checkIfPasscodeIsSetForDevice];
    unsignedLongLongValue = [getPasscodeGeneration unsignedLongLongValue];
    v9 = [SecureBackup knownICDPFederations:0];
    isBackgroundCheck = [(OTCheckEscrowOperation *)self isBackgroundCheck];
    deps3 = [(OTCheckEscrowOperation *)self deps];
    flowID = [deps3 flowID];
    deps4 = [(OTCheckEscrowOperation *)self deps];
    deviceSessionID = [deps4 deviceSessionID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000AF608;
    v22[3] = &unk_100336670;
    objc_copyWeak(&v24, &buf);
    v23 = checkCopy;
    [cuttlefishXPCWrapper requestEscrowCheckWithSpecificUser:activeAccount requiresEscrowCheck:v7 passcodeGeneration:unsignedLongLongValue knownFederations:v9 isBackgroundCheck:isBackgroundCheck flowID:flowID deviceSessionID:deviceSessionID reply:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&buf);
  }

  else
  {
    v15 = sub_100006274("octagon-escrowcheck");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "unable to obtain passcode generation for device, returning", &buf, 2u);
    }

    v26 = NSLocalizedDescriptionKey;
    v27 = @"unable to obtain passcode generation for device";
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.security.octagon" code:82 userInfo:v16];

    (*(checkCopy + 2))(checkCopy, 0, v17);
  }
}

- (id)getPasscodeGeneration
{
  v2 = MKBGetDeviceConfigurations();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:kAKSConfigPasscodeGeneration];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v6 = sub_100006274("octagon-escrowcheck");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to get passcodeGeneration", v8, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (OTCheckEscrowOperation)initWithDependencies:(id)dependencies followupHandler:(id)handler isBackgroundCheck:(BOOL)check
{
  dependenciesCopy = dependencies;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = OTCheckEscrowOperation;
  v11 = [(OTCheckEscrowOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deps, dependencies);
    objc_storeStrong(&v12->_followupHandler, handler);
    results = v12->_results;
    v12->_results = 0;

    v12->_isBackgroundCheck = check;
  }

  return v12;
}

@end