@interface OTSOSUpgradeOperation
- (OTSOSUpgradeOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 errorState:(id)a6 deviceInfo:(id)a7 policyOverride:(id)a8;
- (id)persistentKeyRef:(__SecKey *)a3 error:(id *)a4;
- (void)afterPreflight;
- (void)afterPrepare;
- (void)afterSuccessfulAllowList;
- (void)afterUpdate;
- (void)groupStart;
- (void)handlePrepareErrors:(id)a3 nextExpectedState:(id)a4;
- (void)proceedWithKeys:(id)a3 pendingTLKShares:(id)a4;
- (void)requestSilentEscrowUpdate;
@end

@implementation OTSOSUpgradeOperation

- (void)proceedWithKeys:(id)a3 pendingTLKShares:(id)a4
{
  v26 = a3;
  v24 = a4;
  objc_initWeak(&location, self);
  v6 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v26 count];
    v8 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
    v9 = [v8 count];
    *buf = 67109376;
    v31 = v7;
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning SOS upgrade with %d key sets and %d SOS peers", buf, 0xEu);
  }

  v10 = [(OTSOSUpgradeOperation *)self deps];
  v23 = [v10 cuttlefishXPCWrapper];
  v25 = [(OTSOSUpgradeOperation *)self deps];
  v22 = [v25 activeAccount];
  v21 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
  v11 = [(OTSOSUpgradeOperation *)self deps];
  v12 = [v11 activeAccount];
  v13 = [v12 altDSID];
  v14 = [(OTSOSUpgradeOperation *)self deps];
  v15 = [v14 flowID];
  v16 = [(OTSOSUpgradeOperation *)self deps];
  v17 = [v16 deviceSessionID];
  v18 = [(OTSOSUpgradeOperation *)self deps];
  v19 = [v18 permittedToSendMetrics];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10016AD94;
  v27[3] = &unk_100338E70;
  objc_copyWeak(&v28, &location);
  LOBYTE(v20) = v19;
  [v23 attemptPreapprovedJoinWithSpecificUser:v22 ckksKeys:v26 tlkShares:v24 preapprovedKeys:v21 altDSID:v13 flowID:v15 deviceSessionID:v17 canSendMetrics:v20 reply:v27];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)afterSuccessfulAllowList
{
  objc_initWeak(&location, self);
  v3 = [OTFetchCKKSKeysOperation alloc];
  v4 = [(OTSOSUpgradeOperation *)self deps];
  v5 = [(OTFetchCKKSKeysOperation *)v3 initWithDependencies:v4 refetchNeeded:0];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v5];
  v6 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching keys from CKKS", buf, 2u);
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10016B434;
  v12 = &unk_100344D38;
  objc_copyWeak(&v14, &location);
  v7 = v5;
  v13 = v7;
  v8 = [CKKSResultOperation named:@"sos-upgrade-with-keys" withBlock:&v9];
  [v8 addDependency:{v7, v9, v10, v11, v12}];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)requestSilentEscrowUpdate
{
  v2 = [(OTSOSUpgradeOperation *)self deps];
  v10 = 0;
  v3 = [objc_msgSend(v2 "escrowRequestClass")];
  v4 = v10;

  if (!v3 || v4)
  {
    v6 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      v8 = "Unable to acquire a EscrowRequest object: %@";
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
  [v3 triggerEscrowUpdate:@"octagon-sos" error:&v9];
  v4 = v9;
  v5 = +[CKKSAnalytics logger];
  [v5 logResultForEvent:@"OctagonEventUpgradeSilentEscrow" hardFailure:1 result:v4];

  v6 = sub_100006274("octagon-sos");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      *buf = 138412290;
      v12 = v4;
      v8 = "Unable to request silent escrow update: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requested silent escrow update", buf, 2u);
  }

  v4 = v6;
LABEL_10:
}

- (void)afterUpdate
{
  v3 = [(OTSOSUpgradeOperation *)self updateOp];
  v4 = [v3 error];

  if (v4)
  {
    v5 = [(OTSOSUpgradeOperation *)self updateOp];
    v6 = [v5 error];
    v7 = [(OTSOSUpgradeOperation *)self nextState];
    [(OTSOSUpgradeOperation *)self handlePrepareErrors:v6 nextExpectedState:v7];

    v9 = [(OTSOSUpgradeOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v9];
  }

  else
  {
    v8 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully saved machineID allow-list", buf, 2u);
    }

    [(OTSOSUpgradeOperation *)self afterSuccessfulAllowList];
  }
}

- (void)handlePrepareErrors:(id)a3 nextExpectedState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handling prepare error: %@", &v13, 0xCu);
  }

  v9 = [(OTSOSUpgradeOperation *)self deps];
  v10 = [v9 lockStateTracker];
  v11 = [v10 isLockedError:v6];

  if (v11)
  {
    v12 = @"WaitForUnlock";
  }

  else
  {
    v12 = v7;
  }

  [(OTSOSUpgradeOperation *)self setNextState:v12];
  [(CKKSResultOperation *)self setError:v6];
}

- (void)afterPreflight
{
  objc_initWeak(&location, self);
  v3 = [OTUpdateTrustedDeviceListOperation alloc];
  v4 = [(OTSOSUpgradeOperation *)self deps];
  v5 = [(OTUpdateTrustedDeviceListOperation *)v3 initWithDependencies:v4 intendedState:@"Ready" listUpdatesState:@"Ready" errorState:@"Error" retryFlag:0];
  [(OTSOSUpgradeOperation *)self setUpdateOp:v5];

  v6 = [(OTSOSUpgradeOperation *)self updateOp];
  [v6 setLogForUpgrade:1];

  v7 = [(OTSOSUpgradeOperation *)self updateOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v7];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10016BA84;
  v13 = &unk_1003452E8;
  objc_copyWeak(&v14, &location);
  v8 = [CKKSResultOperation named:@"after-update" withBlock:&v10];
  v9 = [(OTSOSUpgradeOperation *)self updateOp:v10];
  [v8 addDependency:v9];

  [(CKKSGroupOperation *)self runBeforeGroupFinished:v8];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)afterPrepare
{
  objc_initWeak(&location, self);
  v3 = [(OTSOSUpgradeOperation *)self deps];
  v4 = [v3 cuttlefishXPCWrapper];
  v5 = [(OTSOSUpgradeOperation *)self deps];
  v6 = [v5 activeAccount];
  v7 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016BBFC;
  v8[3] = &unk_100338E20;
  objc_copyWeak(&v9, &location);
  [v4 preflightPreapprovedJoinWithSpecificUser:v6 preapprovedKeys:v7 reply:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [AAFAnalyticsEventSecurity alloc];
  v4 = [(OTSOSUpgradeOperation *)self deps];
  v5 = [v4 activeAccount];
  v6 = [v5 altDSID];
  v7 = [(OTSOSUpgradeOperation *)self deps];
  v8 = [v7 flowID];
  v9 = [(OTSOSUpgradeOperation *)self deps];
  v10 = [v9 deviceSessionID];
  v11 = [(OTSOSUpgradeOperation *)self deps];
  LOBYTE(v76) = [v11 permittedToSendMetrics];
  v12 = [v3 initWithKeychainCircleMetrics:0 altDSID:v6 flowID:v8 deviceSessionID:v10 eventName:kSecurityRTCEventNamePreApprovedJoin testsAreEnabled:0 canSendMetrics:v76 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  [(OTSOSUpgradeOperation *)self setEventS:v12];

  v13 = [(OTSOSUpgradeOperation *)self deps];
  v14 = [v13 sosAdapter];
  LOBYTE(v5) = [v14 sosEnabled];

  v15 = sub_100006274("octagon-sos");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attempting SOS upgrade", buf, 2u);
    }

    v17 = [(OTSOSUpgradeOperation *)self deps];
    v18 = [v17 sosAdapter];
    v112 = 0;
    v19 = [v18 circleStatus:&v112];
    v20 = v112;

    if (v20 || v19 == -1)
    {
      v29 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v115 = v20;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Error fetching circle status: %@", buf, 0xCu);
      }

      [(OTSOSUpgradeOperation *)self setNextState:@"BecomeUntrusted"];
      v24 = [(OTSOSUpgradeOperation *)self eventS];
      v30 = [NSError errorWithDomain:@"com.apple.security.octagon" code:71 description:@"Device not in SOS circle"];
      [(__CFString *)v24 sendMetricWithResult:0 error:v30];
    }

    else
    {
      v21 = [(OTSOSUpgradeOperation *)self deps];
      v22 = [v21 stateHolder];
      v111 = 0;
      v23 = [v22 persistAccountChanges:&stru_100338DD0 error:&v111];
      v24 = v111;

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      if ((v25 & 1) == 0)
      {
        v26 = sub_100006274("SecError");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v115 = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "octagon: failed to save 'attempted join' state: %@", buf, 0xCu);
        }
      }

      if (v19)
      {
        v27 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if (v19 + 1 > 4)
          {
            v28 = @"kSOSCCError";
          }

          else
          {
            v28 = off_1003454A8[v19 + 1];
          }

          *buf = 138412290;
          v115 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Device is not in SOS circle (state: %@), quitting SOS upgrade", buf, 0xCu);
        }

        [(OTSOSUpgradeOperation *)self setNextState:@"BecomeUntrusted"];
        v30 = [(OTSOSUpgradeOperation *)self eventS];
        v34 = [NSError errorWithDomain:@"com.apple.security.octagon" code:71 description:@"Device not in SOS circle"];
        [v30 sendMetricWithResult:0 error:v34];
        v20 = 0;
      }

      else
      {
        v31 = [(OTSOSUpgradeOperation *)self deps];
        v32 = [v31 sosAdapter];
        v110 = 0;
        v30 = [v32 currentSOSSelf:&v110];
        v20 = v110;

        if (!v30 || v20)
        {
          v66 = sub_100006274("octagon-sos");
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v115 = v20;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Failed to get the current SOS self: %@", buf, 0xCu);
          }

          [(OTSOSUpgradeOperation *)self handlePrepareErrors:v20 nextExpectedState:@"BecomeUntrusted"];
          v34 = [(OTSOSUpgradeOperation *)self eventS];
          [v34 sendMetricWithResult:0 error:v20];
        }

        else
        {
          v33 = [v30 signingKey];
          v109 = 0;
          v34 = -[OTSOSUpgradeOperation persistentKeyRef:error:](self, "persistentKeyRef:error:", [v33 _secKey], &v109);
          v20 = v109;

          if (v34)
          {
            v35 = [v30 encryptionKey];
            v108 = v20;
            v36 = -[OTSOSUpgradeOperation persistentKeyRef:error:](self, "persistentKeyRef:error:", [v35 _secKey], &v108);
            v100 = v108;

            if (v36)
            {
              v106[0] = _NSConcreteStackBlock;
              v106[1] = 3221225472;
              v106[2] = sub_10016CE2C;
              v106[3] = &unk_1003452E8;
              objc_copyWeak(&v107, &location);
              v37 = [NSBlockOperation blockOperationWithBlock:v106];
              [(OTSOSUpgradeOperation *)self setFinishedOp:v37];

              v38 = [(OTSOSUpgradeOperation *)self finishedOp];
              [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v38];

              v39 = [(OTSOSUpgradeOperation *)self deps];
              v40 = [v39 stateHolder];
              v105 = 0;
              v98 = [v40 loadOrCreateAccountMetadata:&v105];
              v99 = v105;

              if (v98)
              {
                v96 = [v98 parsedSecureElementIdentity];
                v41 = sub_100006274("octagon-sos");
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Fetching trusted peers from SOS", buf, 2u);
                }

                v42 = [(OTSOSUpgradeOperation *)self deps];
                v43 = [v42 sosAdapter];
                v104 = 0;
                v44 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:v43 error:&v104];
                v97 = v104;
                [(OTSOSUpgradeOperation *)self setPeerPreapprovedSPKIs:v44];

                v45 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];

                v46 = sub_100006274("octagon-sos");
                v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
                if (v45)
                {
                  if (v47)
                  {
                    v48 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
                    *buf = 138412290;
                    v115 = v48;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "SOS preapproved keys are %@", buf, 0xCu);
                  }

                  v49 = [(OTSOSUpgradeOperation *)self deps];
                  v50 = [v49 activeAccount];
                  v51 = [v50 altDSID];

                  if (v51)
                  {
                    v87 = v51;
                    v52 = [(OTSOSUpgradeOperation *)self deps];
                    v53 = [v52 sosAdapter];
                    v103 = 0;
                    v80 = [v53 safariViewSyncingEnabled:&v103];
                    v95 = v103;

                    if (v95)
                    {
                      v54 = sub_100006274("octagon-sos");
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v115 = v95;
                        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Unable to check safari view status: %@", buf, 0xCu);
                      }
                    }

                    v55 = sub_100006274("octagon-sos");
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                    {
                      v56 = @"disabled";
                      if (v80)
                      {
                        v56 = @"enabled";
                      }

                      *buf = 138412290;
                      v115 = v56;
                      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Safari view is: %@", buf, 0xCu);
                    }

                    v57 = [(OTSOSUpgradeOperation *)self deps];
                    v86 = [v57 cuttlefishXPCWrapper];
                    v94 = [(OTSOSUpgradeOperation *)self deps];
                    v85 = [v94 activeAccount];
                    v93 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    v79 = [v93 epoch];
                    v92 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    v84 = [v92 machineID];
                    v91 = +[NSUUID UUID];
                    v83 = [v91 UUIDString];
                    v90 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    v82 = [v90 modelID];
                    v89 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    v81 = [v89 deviceName];
                    v88 = objc_opt_self();
                    v58 = [v88 deviceInfo];
                    v59 = [v58 serialNumber];
                    v60 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    v61 = [v60 osVersion];
                    v62 = [(OTSOSUpgradeOperation *)self policyOverride];
                    v78 = v57;
                    if (v80)
                    {
                      v63 = 2;
                    }

                    else
                    {
                      v63 = 1;
                    }

                    v101[0] = _NSConcreteStackBlock;
                    v101[1] = 3221225472;
                    v101[2] = sub_10016D074;
                    v101[3] = &unk_100338DF8;
                    objc_copyWeak(&v102, &location);
                    LODWORD(v77) = v63;
                    [v86 prepareWithSpecificUser:v85 epoch:v79 machineID:v84 bottleSalt:v87 bottleID:v83 modelID:v82 deviceName:v81 serialNumber:v59 osVersion:v61 policyVersion:v62 policySecrets:0 syncUserControllableViews:v77 secureElementIdentity:v96 setting:0 signingPrivKeyPersistentRef:v34 encPrivKeyPersistentRef:v36 reply:v101];

                    objc_destroyWeak(&v102);
                    v64 = v87;
                    v65 = v87;
                  }

                  else
                  {
                    v72 = sub_100006274("authkit");
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      v73 = [(OTSOSUpgradeOperation *)self deps];
                      v74 = [v73 activeAccount];
                      *buf = 138412290;
                      v115 = v74;
                      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
                    }

                    v75 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
                    [(CKKSResultOperation *)self setError:v75];

                    v64 = [(OTSOSUpgradeOperation *)self finishedOp];
                    [(CKKSGroupOperation *)self runBeforeGroupFinished:v64];
                    v65 = 0;
                  }
                }

                else
                {
                  if (v47)
                  {
                    *buf = 138412290;
                    v115 = v97;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Unable to fetch SOS preapproved keys: %@", buf, 0xCu);
                  }

                  [(CKKSResultOperation *)self setError:v97];
                  v65 = [(OTSOSUpgradeOperation *)self finishedOp];
                  [(CKKSGroupOperation *)self runBeforeGroupFinished:v65];
                }

                v71 = v96;
              }

              else
              {
                if (!v99)
                {
                  v99 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-67671 userInfo:0];
                }

                v70 = sub_100006274("SecError");
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v115 = v99;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "failed to retrieve account object: %@", buf, 0xCu);
                }

                [(CKKSResultOperation *)self setError:v99];
                v71 = [(OTSOSUpgradeOperation *)self finishedOp];
                [(CKKSGroupOperation *)self runBeforeGroupFinished:v71];
              }

              objc_destroyWeak(&v107);
            }

            else
            {
              v68 = sub_100006274("octagon-sos");
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v115 = v100;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Failed to get the persistent ref for our SOS encryption key: %@", buf, 0xCu);
              }

              [(OTSOSUpgradeOperation *)self handlePrepareErrors:v100 nextExpectedState:@"BecomeUntrusted"];
              v69 = [(OTSOSUpgradeOperation *)self eventS];
              [v69 sendMetricWithResult:0 error:v100];

              v36 = 0;
            }

            v20 = v100;
          }

          else
          {
            v67 = sub_100006274("octagon-sos");
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v115 = v20;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Failed to get the persistent ref for our SOS signing key: %@", buf, 0xCu);
            }

            [(OTSOSUpgradeOperation *)self handlePrepareErrors:v20 nextExpectedState:@"BecomeUntrusted"];
            v36 = [(OTSOSUpgradeOperation *)self eventS];
            [v36 sendMetricWithResult:0 error:v20];
          }
        }
      }
    }
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SOS not enabled on this platform?", buf, 2u);
    }

    [(OTSOSUpgradeOperation *)self setNextState:@"BecomeUntrusted"];
    v20 = [(OTSOSUpgradeOperation *)self eventS];
    v24 = [NSError errorWithDomain:@"com.apple.security.octagon" code:70 description:@"SOS not enabled on this platform"];
    [(__CFString *)v20 sendMetricWithResult:0 error:v24];
  }

  objc_destroyWeak(&location);
}

- (id)persistentKeyRef:(__SecKey *)a3 error:(id *)a4
{
  v5 = SecKeyCopyPersistentRef();
  if (v5 && a4)
  {
    *a4 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v5 userInfo:0];
  }

  return 0;
}

- (OTSOSUpgradeOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 errorState:(id)a6 deviceInfo:(id)a7 policyOverride:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = OTSOSUpgradeOperation;
  v18 = [(CKKSGroupOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_deps, a3);
    objc_storeStrong(&v19->_intendedState, a4);
    objc_storeStrong(&v19->_nextState, a6);
    objc_storeStrong(&v19->_ckksConflictState, a5);
    objc_storeStrong(&v19->_deviceInfo, a7);
    objc_storeStrong(&v19->_policyOverride, a8);
  }

  return v19;
}

@end