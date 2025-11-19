@interface OTPrepareOperation
- (OTPrepareOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 deviceInfo:(id)a6 policyOverride:(id)a7 accountSettings:(id)a8 epoch:(unint64_t)a9;
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
  v4 = [(OTPrepareOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsW]);
  v95[0] = v5;
  v94[1] = kSecurityRTCFieldAccountIsG;
  v6 = [(OTPrepareOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsG]);
  v95[1] = v7;
  v78 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTPrepareOperation *)self deps];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTPrepareOperation *)self deps];
  v13 = [v12 flowID];
  v14 = [(OTPrepareOperation *)self deps];
  v15 = [v14 deviceSessionID];
  v16 = [(OTPrepareOperation *)self deps];
  LOBYTE(v60) = [v16 permittedToSendMetrics];
  v76 = [v8 initWithKeychainCircleMetrics:v78 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNamePrepareIdentityInTPH testsAreEnabled:0 canSendMetrics:v60 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v17 = objc_alloc_init(NSOperation);
  [(OTPrepareOperation *)self setFinishedOp:v17];

  v18 = [(OTPrepareOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v18];

  v19 = [(OTPrepareOperation *)self deps];
  v20 = [v19 activeAccount];
  v77 = [v20 altDSID];

  if (v77)
  {
    v75 = v77;
    objc_initWeak(&location, self);
    v21 = [(OTPrepareOperation *)self deps];
    v22 = [v21 sosAdapter];
    v23 = [v22 sosEnabled];

    if (!v23)
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
      v43 = [(OTPrepareOperation *)self deps];
      v44 = [v43 stateHolder];
      v82 = 0;
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_1000FCF74;
      v83[3] = &unk_100336F48;
      v83[4] = self;
      v83[5] = &buf;
      v45 = [v44 persistAccountChanges:v83 error:&v82];
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
        v49 = [(OTPrepareOperation *)self accountSettings];
        *v86 = 138412290;
        *&v86[4] = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "preparing identity with %@", v86, 0xCu);
      }

      v72 = [(OTPrepareOperation *)self deps];
      v66 = [v72 cuttlefishXPCWrapper];
      v71 = [(OTPrepareOperation *)self deps];
      v65 = [v71 activeAccount];
      v62 = [(OTPrepareOperation *)self epoch];
      v70 = [(OTPrepareOperation *)self deviceInfo];
      v64 = [v70 machineID];
      v69 = +[NSUUID UUID];
      v63 = [v69 UUIDString];
      v68 = [(OTPrepareOperation *)self deviceInfo];
      v50 = [v68 modelID];
      v51 = [(OTPrepareOperation *)self deviceInfo];
      v52 = [v51 deviceName];
      v53 = [(OTPrepareOperation *)self deviceInfo];
      v54 = [v53 serialNumber];
      v55 = [(OTPrepareOperation *)self deviceInfo];
      v56 = [v55 osVersion];
      v57 = [(OTPrepareOperation *)self policyOverride];
      v58 = *(*(&buf + 1) + 40);
      v59 = [(OTPrepareOperation *)self accountSettings];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_1000FD010;
      v79[3] = &unk_100336F70;
      objc_copyWeak(&v81, &location);
      v80 = v76;
      LODWORD(v61) = 3;
      [v66 prepareWithSpecificUser:v65 epoch:v62 machineID:v64 bottleSalt:v75 bottleID:v63 modelID:v50 deviceName:v52 serialNumber:v54 osVersion:v56 policyVersion:v57 policySecrets:0 syncUserControllableViews:v61 secureElementIdentity:v58 setting:v59 signingPrivKeyPersistentRef:v67 encPrivKeyPersistentRef:v73 reply:v79];

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

    v25 = [(OTPrepareOperation *)self deps];
    v26 = [v25 sosAdapter];
    v84 = 0;
    v27 = [v26 currentSOSSelf:&v84];
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
      v29 = [v27 signingKey];
      [v29 _secKey];
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
        v31 = [v27 encryptionKey];
        [v31 _secKey];
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
    v34 = [(OTPrepareOperation *)self deps];
    v35 = [v34 activeAccount];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", &buf, 0xCu);
  }

  v36 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
  [(CKKSResultOperation *)self setError:v36];

  v37 = [(OTPrepareOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v37];

  v75 = [(CKKSResultOperation *)self error];
  [v76 sendMetricWithResult:0 error:v75];
LABEL_42:
}

- (OTPrepareOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 deviceInfo:(id)a6 policyOverride:(id)a7 accountSettings:(id)a8 epoch:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = OTPrepareOperation;
  v19 = [(CKKSGroupOperation *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_deps, a3);
    objc_storeStrong(&v20->_deviceInfo, a6);
    v20->_epoch = a9;
    objc_storeStrong(&v20->_intendedState, a4);
    objc_storeStrong(&v20->_nextState, a5);
    objc_storeStrong(&v20->_policyOverride, a7);
    objc_storeStrong(&v20->_accountSettings, a8);
  }

  return v20;
}

@end