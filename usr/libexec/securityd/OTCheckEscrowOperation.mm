@interface OTCheckEscrowOperation
- (BOOL)enablePasscodeCacheFlow:(id *)a3;
- (OTCheckEscrowOperation)initWithDependencies:(id)a3 followupHandler:(id)a4 isBackgroundCheck:(BOOL)a5;
- (id)getPasscodeGeneration;
- (void)handleRepairSuggestions:(id)a3;
- (void)performEscrowCheck:(id)a3;
@end

@implementation OTCheckEscrowOperation

- (BOOL)enablePasscodeCacheFlow:(id *)a3
{
  v5 = [(OTCheckEscrowOperation *)self deps];
  v6 = [v5 stateHolder];
  v60 = 0;
  v7 = [v6 loadOrCreateAccountMetadata:&v60];
  v8 = v60;

  if (v7 && !v8)
  {
    v55 = a3;
    v56 = [v7 altDSID];
    v9 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v7 lastEscrowRepairAttempted] / 1000.0);
    v10 = [(OTCheckEscrowOperation *)self results];
    if ([(__CFString *)v10 repairReason]!= 5)
    {
LABEL_7:

LABEL_8:
      v10 = +[NSDate date];
      [(__CFString *)v10 timeIntervalSinceDate:v9];
      if (v19 < 15552000.0)
      {
        v20 = [v7 escrowRepairAttemptVersion];
        v21 = sub_100006274("octagon-escrow-repair");
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20 == 1)
        {
          if (v22)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "rate limited, will not perform silent repair", buf, 2u);
          }

          if (a3)
          {
            v23 = 88;
LABEL_27:
            [NSError errorWithDomain:@"com.apple.security.octagon" code:v23 userInfo:0];
            *a3 = v26 = 0;
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

      v27 = [(OTCheckEscrowOperation *)self results];
      v28 = [v27 repairDisabled];

      v29 = sub_100006274("octagon-escrow-repair");
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (!v28)
      {
        v31 = v9;
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "enabling passcode cache flow", buf, 2u);
        }

        v54 = v8;

        v32 = [(OTCheckEscrowOperation *)self deps];
        v33 = [v32 stateHolder];
        v57 = 0;
        v34 = [v33 persistLastEscrowRepairTriggered:v10 error:&v57];
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

          if (v55)
          {
            *v55 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v38 userInfo:0];
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

      if (a3)
      {
        v23 = 29;
        goto LABEL_27;
      }

LABEL_58:
      v26 = 0;
      goto LABEL_59;
    }

    v11 = [(OTCheckEscrowOperation *)self results];
    v12 = [v11 moveRequest];

    if (!v12)
    {
      goto LABEL_8;
    }

    v53 = v9;
    v13 = [(OTCheckEscrowOperation *)self deps];
    v14 = [v13 secureBackupAdapter];
    v15 = [(OTCheckEscrowOperation *)self results];
    v16 = [v15 moveRequest];
    v17 = [v16 intendedFederation];
    v59 = 0;
    v18 = [v14 moveToFederationAllowed:v17 altDSID:v56 error:&v59];
    v10 = v59;

    if (v18)
    {
      v9 = v53;
      v8 = 0;
      goto LABEL_7;
    }

    v9 = v53;
    v8 = 0;
    if (v10)
    {
      v40 = [(__CFString *)v10 domain];
      if ([v40 isEqualToString:kCloudServicesErrorDomain])
      {
        v41 = [(__CFString *)v10 code];

        if (v41 == 601)
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
        v62 = v10;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "failed to determine if federation move is allowed: %@", buf, 0xCu);
      }

      if (a3)
      {
        v51 = v10;
        v26 = 0;
        *a3 = v10;
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

    v43 = [(OTCheckEscrowOperation *)self followupHandler];
    v44 = [(OTCheckEscrowOperation *)self deps];
    v45 = [v44 activeAccount];
    v58 = 0;
    v46 = [v43 postFollowUp:4 activeAccount:v45 error:&v58];
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

    if (a3)
    {
      *a3 = [NSError errorWithDomain:@"com.apple.security.octagon" code:89 userInfo:0];
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

  if (a3)
  {
    v25 = v8;
    v26 = 0;
    *a3 = v8;
  }

  else
  {
    v26 = 0;
  }

LABEL_60:

  return v26;
}

- (void)handleRepairSuggestions:(id)a3
{
  [(OTCheckEscrowOperation *)self setResults:a3];
  v4 = [(OTCheckEscrowOperation *)self results];
  v5 = [v4 octagonTrusted];

  if (v5)
  {
    v6 = [(OTCheckEscrowOperation *)self results];
    v7 = [v6 needsReenroll];

    v8 = sub_100006274("octagon-health");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if ((v7 & 1) == 0)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCSC Doesn't need Reenroll", buf, 2u);
      }

      v13 = [(OTCheckEscrowOperation *)self followupHandler];
      v14 = [(OTCheckEscrowOperation *)self deps];
      v15 = [v14 activeAccount];
      v30 = 0;
      v16 = [v13 clearAllRepairFollowUps:v15 error:&v30];
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

    v10 = [(OTCheckEscrowOperation *)self results];
    if ([v10 repairReason] == 5)
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
    v19 = [(OTCheckEscrowOperation *)self deps];
    v20 = [v19 activeAccount];
    v21 = [v20 altDSID];
    v22 = [(OTCheckEscrowOperation *)self deps];
    v23 = [v22 flowID];
    v24 = [(OTCheckEscrowOperation *)self deps];
    v25 = [v24 deviceSessionID];
    LOBYTE(v28) = 1;
    v12 = [v18 initWithKeychainCircleMetrics:0 altDSID:v21 flowID:v23 deviceSessionID:v25 eventName:kSecurityRTCEventNameEscrowPasscodeEnableCacheFlow testsAreEnabled:0 canSendMetrics:v28 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    v29 = 0;
    v26 = [(OTCheckEscrowOperation *)self enablePasscodeCacheFlow:&v29];
    v27 = v29;
    [v12 sendMetricWithResult:v26 error:v27];

LABEL_17:
  }
}

- (void)performEscrowCheck:(id)a3
{
  v20 = a3;
  v4 = sub_100006274("octagon-escrowcheck");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning cuttlefish escrow check", &buf, 2u);
  }

  v21 = [(OTCheckEscrowOperation *)self getPasscodeGeneration];
  if (v21)
  {
    objc_initWeak(&buf, self);
    v5 = [(OTCheckEscrowOperation *)self deps];
    v18 = [v5 cuttlefishXPCWrapper];
    v19 = [(OTCheckEscrowOperation *)self deps];
    v6 = [v19 activeAccount];
    v7 = +[OTCheckHealthOperation checkIfPasscodeIsSetForDevice];
    v8 = [v21 unsignedLongLongValue];
    v9 = [SecureBackup knownICDPFederations:0];
    v10 = [(OTCheckEscrowOperation *)self isBackgroundCheck];
    v11 = [(OTCheckEscrowOperation *)self deps];
    v12 = [v11 flowID];
    v13 = [(OTCheckEscrowOperation *)self deps];
    v14 = [v13 deviceSessionID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000AF608;
    v22[3] = &unk_100336670;
    objc_copyWeak(&v24, &buf);
    v23 = v20;
    [v18 requestEscrowCheckWithSpecificUser:v6 requiresEscrowCheck:v7 passcodeGeneration:v8 knownFederations:v9 isBackgroundCheck:v10 flowID:v12 deviceSessionID:v14 reply:v22];

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

    (*(v20 + 2))(v20, 0, v17);
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

- (OTCheckEscrowOperation)initWithDependencies:(id)a3 followupHandler:(id)a4 isBackgroundCheck:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = OTCheckEscrowOperation;
  v11 = [(OTCheckEscrowOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deps, a3);
    objc_storeStrong(&v12->_followupHandler, a4);
    results = v12->_results;
    v12->_results = 0;

    v12->_isBackgroundCheck = a5;
  }

  return v12;
}

@end