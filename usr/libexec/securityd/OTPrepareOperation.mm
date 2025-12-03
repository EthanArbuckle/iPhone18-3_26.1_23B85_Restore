@interface OTPrepareOperation
- (OTPrepareOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState deviceInfo:(id)info policyOverride:(id)override accountSettings:(id)settings epoch:(unint64_t)epoch;
- (void)groupStart;
@end

@implementation OTPrepareOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "preparing an identity", &buf, 2u);
  }

  v94[0] = kSecurityRTCFieldAccountIsW;
  deps = [(OTPrepareOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps accountIsW]);
  v95[0] = v5;
  v94[1] = kSecurityRTCFieldAccountIsG;
  deps2 = [(OTPrepareOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps2 accountIsG]);
  v95[1] = v7;
  v78 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(OTPrepareOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(OTPrepareOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTPrepareOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTPrepareOperation *)self deps];
  LOBYTE(v60) = [deps6 permittedToSendMetrics];
  v76 = [v8 initWithKeychainCircleMetrics:v78 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNamePrepareIdentityInTPH testsAreEnabled:0 canSendMetrics:v60 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v17 = objc_alloc_init(NSOperation);
  [(OTPrepareOperation *)self setFinishedOp:v17];

  finishedOp = [(OTPrepareOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps7 = [(OTPrepareOperation *)self deps];
  activeAccount2 = [deps7 activeAccount];
  altDSID2 = [activeAccount2 altDSID];

  if (altDSID2)
  {
    error = altDSID2;
    objc_initWeak(&location, self);
    deps8 = [(OTPrepareOperation *)self deps];
    sosAdapter = [deps8 sosAdapter];
    sosEnabled = [sosAdapter sosEnabled];

    if (!sosEnabled)
    {
      v73 = 0;
      v67 = 0;
LABEL_32:
      *&buf = 0;
      *(&buf + 1) = &buf;
      v88 = 0x3032000000;
      v89 = sub_1000FCF5C;
      v90 = sub_1000FCF6C;
      v91 = 0;
      deps9 = [(OTPrepareOperation *)self deps];
      stateHolder = [deps9 stateHolder];
      v82 = 0;
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_1000FCF74;
      v83[3] = &unk_100336F48;
      v83[4] = self;
      v83[5] = &buf;
      v45 = [stateHolder persistAccountChanges:v83 error:&v82];
      v74 = v82;

      if (v74)
      {
        v46 = 0;
      }

      else
      {
        v46 = v45;
      }

      if ((v46 & 1) == 0)
      {
        v47 = sub_100006274("SecError");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v86 = 138412290;
          *&v86[4] = v74;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "octagon: failed to save 'attempted join' state: %@", v86, 0xCu);
        }
      }

      v48 = sub_100006274("octagon");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        accountSettings = [(OTPrepareOperation *)self accountSettings];
        *v86 = 138412290;
        *&v86[4] = accountSettings;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "preparing identity with %@", v86, 0xCu);
      }

      deps10 = [(OTPrepareOperation *)self deps];
      cuttlefishXPCWrapper = [deps10 cuttlefishXPCWrapper];
      deps11 = [(OTPrepareOperation *)self deps];
      activeAccount3 = [deps11 activeAccount];
      epoch = [(OTPrepareOperation *)self epoch];
      deviceInfo = [(OTPrepareOperation *)self deviceInfo];
      machineID = [deviceInfo machineID];
      v69 = +[NSUUID UUID];
      uUIDString = [v69 UUIDString];
      deviceInfo2 = [(OTPrepareOperation *)self deviceInfo];
      modelID = [deviceInfo2 modelID];
      deviceInfo3 = [(OTPrepareOperation *)self deviceInfo];
      deviceName = [deviceInfo3 deviceName];
      deviceInfo4 = [(OTPrepareOperation *)self deviceInfo];
      serialNumber = [deviceInfo4 serialNumber];
      deviceInfo5 = [(OTPrepareOperation *)self deviceInfo];
      osVersion = [deviceInfo5 osVersion];
      policyOverride = [(OTPrepareOperation *)self policyOverride];
      v58 = *(*(&buf + 1) + 40);
      accountSettings2 = [(OTPrepareOperation *)self accountSettings];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_1000FD010;
      v79[3] = &unk_100336F70;
      objc_copyWeak(&v81, &location);
      v80 = v76;
      LODWORD(v61) = 3;
      [cuttlefishXPCWrapper prepareWithSpecificUser:activeAccount3 epoch:epoch machineID:machineID bottleSalt:error bottleID:uUIDString modelID:modelID deviceName:deviceName serialNumber:serialNumber osVersion:osVersion policyVersion:policyOverride policySecrets:0 syncUserControllableViews:v61 secureElementIdentity:v58 setting:accountSettings2 signingPrivKeyPersistentRef:v67 encPrivKeyPersistentRef:v73 reply:v79];

      objc_destroyWeak(&v81);
      _Block_object_dispose(&buf, 8);

      objc_destroyWeak(&location);
      goto LABEL_42;
    }

    v24 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Investigating use of Octagon keys from SOS identity", &buf, 2u);
    }

    deps12 = [(OTPrepareOperation *)self deps];
    sosAdapter2 = [deps12 sosAdapter];
    v84 = 0;
    v27 = [sosAdapter2 currentSOSSelf:&v84];
    v28 = v84;

    if (!v27 || v28)
    {
      v38 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v28;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to get the current SOS self: %@", &buf, 0xCu);
      }
    }

    else
    {
      *&buf = 0;
      signingKey = [v27 signingKey];
      [signingKey _secKey];
      v30 = SecKeyCopyPersistentRef();

      if (v30 || !buf)
      {
        v39 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v86 = 67109120;
          *&v86[4] = v30;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Failed to get the persistent ref for our SOS signing key: %d", v86, 8u);
        }
      }

      else
      {
        *v86 = 0;
        encryptionKey = [v27 encryptionKey];
        [encryptionKey _secKey];
        v32 = SecKeyCopyPersistentRef();

        if (!v32)
        {
          v73 = *v86;
          if (*v86)
          {
            v67 = buf;
LABEL_31:

            goto LABEL_32;
          }
        }

        v40 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 67109120;
          v93 = v32;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Failed to get the persistent ref for our SOS encryption key: %d", v92, 8u);
        }

        v41 = buf;
        if (buf)
        {
          *&buf = 0;
          CFRelease(v41);
        }

        v42 = *v86;
        if (*v86)
        {
          *v86 = 0;
          CFRelease(v42);
        }
      }
    }

    v73 = 0;
    v67 = 0;
    goto LABEL_31;
  }

  v33 = sub_100006274("authkit");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    deps13 = [(OTPrepareOperation *)self deps];
    activeAccount4 = [deps13 activeAccount];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = activeAccount4;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", &buf, 0xCu);
  }

  v36 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
  [(CKKSResultOperation *)self setError:v36];

  finishedOp2 = [(OTPrepareOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];

  error = [(CKKSResultOperation *)self error];
  [v76 sendMetricWithResult:0 error:error];
LABEL_42:
}

- (OTPrepareOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState deviceInfo:(id)info policyOverride:(id)override accountSettings:(id)settings epoch:(unint64_t)epoch
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  infoCopy = info;
  overrideCopy = override;
  settingsCopy = settings;
  v25.receiver = self;
  v25.super_class = OTPrepareOperation;
  v19 = [(CKKSGroupOperation *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_deps, dependencies);
    objc_storeStrong(&v20->_deviceInfo, info);
    v20->_epoch = epoch;
    objc_storeStrong(&v20->_intendedState, state);
    objc_storeStrong(&v20->_nextState, errorState);
    objc_storeStrong(&v20->_policyOverride, override);
    objc_storeStrong(&v20->_accountSettings, settings);
  }

  return v20;
}

@end