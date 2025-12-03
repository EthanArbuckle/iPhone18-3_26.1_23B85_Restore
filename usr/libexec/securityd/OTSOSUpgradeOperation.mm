@interface OTSOSUpgradeOperation
- (OTSOSUpgradeOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState errorState:(id)errorState deviceInfo:(id)info policyOverride:(id)override;
- (id)persistentKeyRef:(__SecKey *)ref error:(id *)error;
- (void)afterPreflight;
- (void)afterPrepare;
- (void)afterSuccessfulAllowList;
- (void)afterUpdate;
- (void)groupStart;
- (void)handlePrepareErrors:(id)errors nextExpectedState:(id)state;
- (void)proceedWithKeys:(id)keys pendingTLKShares:(id)shares;
- (void)requestSilentEscrowUpdate;
@end

@implementation OTSOSUpgradeOperation

- (void)proceedWithKeys:(id)keys pendingTLKShares:(id)shares
{
  keysCopy = keys;
  sharesCopy = shares;
  objc_initWeak(&location, self);
  v6 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [keysCopy count];
    peerPreapprovedSPKIs = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
    v9 = [peerPreapprovedSPKIs count];
    *buf = 67109376;
    v31 = v7;
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning SOS upgrade with %d key sets and %d SOS peers", buf, 0xEu);
  }

  deps = [(OTSOSUpgradeOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTSOSUpgradeOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  peerPreapprovedSPKIs2 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
  deps3 = [(OTSOSUpgradeOperation *)self deps];
  activeAccount2 = [deps3 activeAccount];
  altDSID = [activeAccount2 altDSID];
  deps4 = [(OTSOSUpgradeOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTSOSUpgradeOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTSOSUpgradeOperation *)self deps];
  permittedToSendMetrics = [deps6 permittedToSendMetrics];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10016AD94;
  v27[3] = &unk_100338E70;
  objc_copyWeak(&v28, &location);
  LOBYTE(v20) = permittedToSendMetrics;
  [cuttlefishXPCWrapper attemptPreapprovedJoinWithSpecificUser:activeAccount ckksKeys:keysCopy tlkShares:sharesCopy preapprovedKeys:peerPreapprovedSPKIs2 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v20 reply:v27];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)afterSuccessfulAllowList
{
  objc_initWeak(&location, self);
  v3 = [OTFetchCKKSKeysOperation alloc];
  deps = [(OTSOSUpgradeOperation *)self deps];
  v5 = [(OTFetchCKKSKeysOperation *)v3 initWithDependencies:deps refetchNeeded:0];

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
  deps = [(OTSOSUpgradeOperation *)self deps];
  v10 = 0;
  v3 = [objc_msgSend(deps "escrowRequestClass")];
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
  updateOp = [(OTSOSUpgradeOperation *)self updateOp];
  error = [updateOp error];

  if (error)
  {
    updateOp2 = [(OTSOSUpgradeOperation *)self updateOp];
    error2 = [updateOp2 error];
    nextState = [(OTSOSUpgradeOperation *)self nextState];
    [(OTSOSUpgradeOperation *)self handlePrepareErrors:error2 nextExpectedState:nextState];

    finishedOp = [(OTSOSUpgradeOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp];
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

- (void)handlePrepareErrors:(id)errors nextExpectedState:(id)state
{
  errorsCopy = errors;
  stateCopy = state;
  v8 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = errorsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handling prepare error: %@", &v13, 0xCu);
  }

  deps = [(OTSOSUpgradeOperation *)self deps];
  lockStateTracker = [deps lockStateTracker];
  v11 = [lockStateTracker isLockedError:errorsCopy];

  if (v11)
  {
    v12 = @"WaitForUnlock";
  }

  else
  {
    v12 = stateCopy;
  }

  [(OTSOSUpgradeOperation *)self setNextState:v12];
  [(CKKSResultOperation *)self setError:errorsCopy];
}

- (void)afterPreflight
{
  objc_initWeak(&location, self);
  v3 = [OTUpdateTrustedDeviceListOperation alloc];
  deps = [(OTSOSUpgradeOperation *)self deps];
  v5 = [(OTUpdateTrustedDeviceListOperation *)v3 initWithDependencies:deps intendedState:@"Ready" listUpdatesState:@"Ready" errorState:@"Error" retryFlag:0];
  [(OTSOSUpgradeOperation *)self setUpdateOp:v5];

  updateOp = [(OTSOSUpgradeOperation *)self updateOp];
  [updateOp setLogForUpgrade:1];

  updateOp2 = [(OTSOSUpgradeOperation *)self updateOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:updateOp2];

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
  deps = [(OTSOSUpgradeOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTSOSUpgradeOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  peerPreapprovedSPKIs = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016BBFC;
  v8[3] = &unk_100338E20;
  objc_copyWeak(&v9, &location);
  [cuttlefishXPCWrapper preflightPreapprovedJoinWithSpecificUser:activeAccount preapprovedKeys:peerPreapprovedSPKIs reply:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [AAFAnalyticsEventSecurity alloc];
  deps = [(OTSOSUpgradeOperation *)self deps];
  activeAccount = [deps activeAccount];
  altDSID = [activeAccount altDSID];
  deps2 = [(OTSOSUpgradeOperation *)self deps];
  flowID = [deps2 flowID];
  deps3 = [(OTSOSUpgradeOperation *)self deps];
  deviceSessionID = [deps3 deviceSessionID];
  deps4 = [(OTSOSUpgradeOperation *)self deps];
  LOBYTE(v76) = [deps4 permittedToSendMetrics];
  v12 = [v3 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNamePreApprovedJoin testsAreEnabled:0 canSendMetrics:v76 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  [(OTSOSUpgradeOperation *)self setEventS:v12];

  deps5 = [(OTSOSUpgradeOperation *)self deps];
  sosAdapter = [deps5 sosAdapter];
  LOBYTE(activeAccount) = [sosAdapter sosEnabled];

  v15 = sub_100006274("octagon-sos");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (activeAccount)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attempting SOS upgrade", buf, 2u);
    }

    deps6 = [(OTSOSUpgradeOperation *)self deps];
    sosAdapter2 = [deps6 sosAdapter];
    v112 = 0;
    v19 = [sosAdapter2 circleStatus:&v112];
    eventS6 = v112;

    if (eventS6 || v19 == -1)
    {
      v29 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v115 = eventS6;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Error fetching circle status: %@", buf, 0xCu);
      }

      [(OTSOSUpgradeOperation *)self setNextState:@"BecomeUntrusted"];
      eventS = [(OTSOSUpgradeOperation *)self eventS];
      eventS2 = [NSError errorWithDomain:@"com.apple.security.octagon" code:71 description:@"Device not in SOS circle"];
      [(__CFString *)eventS sendMetricWithResult:0 error:eventS2];
    }

    else
    {
      deps7 = [(OTSOSUpgradeOperation *)self deps];
      stateHolder = [deps7 stateHolder];
      v111 = 0;
      v23 = [stateHolder persistAccountChanges:&stru_100338DD0 error:&v111];
      eventS = v111;

      if (eventS)
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
          v115 = eventS;
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
        eventS2 = [(OTSOSUpgradeOperation *)self eventS];
        eventS3 = [NSError errorWithDomain:@"com.apple.security.octagon" code:71 description:@"Device not in SOS circle"];
        [eventS2 sendMetricWithResult:0 error:eventS3];
        eventS6 = 0;
      }

      else
      {
        deps8 = [(OTSOSUpgradeOperation *)self deps];
        sosAdapter3 = [deps8 sosAdapter];
        v110 = 0;
        eventS2 = [sosAdapter3 currentSOSSelf:&v110];
        eventS6 = v110;

        if (!eventS2 || eventS6)
        {
          v66 = sub_100006274("octagon-sos");
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v115 = eventS6;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Failed to get the current SOS self: %@", buf, 0xCu);
          }

          [(OTSOSUpgradeOperation *)self handlePrepareErrors:eventS6 nextExpectedState:@"BecomeUntrusted"];
          eventS3 = [(OTSOSUpgradeOperation *)self eventS];
          [eventS3 sendMetricWithResult:0 error:eventS6];
        }

        else
        {
          signingKey = [eventS2 signingKey];
          v109 = 0;
          eventS3 = -[OTSOSUpgradeOperation persistentKeyRef:error:](self, "persistentKeyRef:error:", [signingKey _secKey], &v109);
          eventS6 = v109;

          if (eventS3)
          {
            encryptionKey = [eventS2 encryptionKey];
            v108 = eventS6;
            eventS5 = -[OTSOSUpgradeOperation persistentKeyRef:error:](self, "persistentKeyRef:error:", [encryptionKey _secKey], &v108);
            v100 = v108;

            if (eventS5)
            {
              v106[0] = _NSConcreteStackBlock;
              v106[1] = 3221225472;
              v106[2] = sub_10016CE2C;
              v106[3] = &unk_1003452E8;
              objc_copyWeak(&v107, &location);
              v37 = [NSBlockOperation blockOperationWithBlock:v106];
              [(OTSOSUpgradeOperation *)self setFinishedOp:v37];

              finishedOp = [(OTSOSUpgradeOperation *)self finishedOp];
              [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

              deps9 = [(OTSOSUpgradeOperation *)self deps];
              stateHolder2 = [deps9 stateHolder];
              v105 = 0;
              v98 = [stateHolder2 loadOrCreateAccountMetadata:&v105];
              v99 = v105;

              if (v98)
              {
                parsedSecureElementIdentity = [v98 parsedSecureElementIdentity];
                v41 = sub_100006274("octagon-sos");
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Fetching trusted peers from SOS", buf, 2u);
                }

                deps10 = [(OTSOSUpgradeOperation *)self deps];
                sosAdapter4 = [deps10 sosAdapter];
                v104 = 0;
                v44 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:sosAdapter4 error:&v104];
                v97 = v104;
                [(OTSOSUpgradeOperation *)self setPeerPreapprovedSPKIs:v44];

                peerPreapprovedSPKIs = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];

                v46 = sub_100006274("octagon-sos");
                v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
                if (peerPreapprovedSPKIs)
                {
                  if (v47)
                  {
                    peerPreapprovedSPKIs2 = [(OTSOSUpgradeOperation *)self peerPreapprovedSPKIs];
                    *buf = 138412290;
                    v115 = peerPreapprovedSPKIs2;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "SOS preapproved keys are %@", buf, 0xCu);
                  }

                  deps11 = [(OTSOSUpgradeOperation *)self deps];
                  activeAccount2 = [deps11 activeAccount];
                  altDSID2 = [activeAccount2 altDSID];

                  if (altDSID2)
                  {
                    v87 = altDSID2;
                    deps12 = [(OTSOSUpgradeOperation *)self deps];
                    sosAdapter5 = [deps12 sosAdapter];
                    v103 = 0;
                    v80 = [sosAdapter5 safariViewSyncingEnabled:&v103];
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

                    deps13 = [(OTSOSUpgradeOperation *)self deps];
                    cuttlefishXPCWrapper = [deps13 cuttlefishXPCWrapper];
                    deps14 = [(OTSOSUpgradeOperation *)self deps];
                    activeAccount3 = [deps14 activeAccount];
                    deviceInfo = [(OTSOSUpgradeOperation *)self deviceInfo];
                    epoch = [deviceInfo epoch];
                    deviceInfo2 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    machineID = [deviceInfo2 machineID];
                    v91 = +[NSUUID UUID];
                    uUIDString = [v91 UUIDString];
                    deviceInfo3 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    modelID = [deviceInfo3 modelID];
                    deviceInfo4 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    deviceName = [deviceInfo4 deviceName];
                    v88 = objc_opt_self();
                    deviceInfo5 = [v88 deviceInfo];
                    serialNumber = [deviceInfo5 serialNumber];
                    deviceInfo6 = [(OTSOSUpgradeOperation *)self deviceInfo];
                    osVersion = [deviceInfo6 osVersion];
                    policyOverride = [(OTSOSUpgradeOperation *)self policyOverride];
                    v78 = deps13;
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
                    [cuttlefishXPCWrapper prepareWithSpecificUser:activeAccount3 epoch:epoch machineID:machineID bottleSalt:v87 bottleID:uUIDString modelID:modelID deviceName:deviceName serialNumber:serialNumber osVersion:osVersion policyVersion:policyOverride policySecrets:0 syncUserControllableViews:v77 secureElementIdentity:parsedSecureElementIdentity setting:0 signingPrivKeyPersistentRef:eventS3 encPrivKeyPersistentRef:eventS5 reply:v101];

                    objc_destroyWeak(&v102);
                    finishedOp2 = v87;
                    finishedOp3 = v87;
                  }

                  else
                  {
                    v72 = sub_100006274("authkit");
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      deps15 = [(OTSOSUpgradeOperation *)self deps];
                      activeAccount4 = [deps15 activeAccount];
                      *buf = 138412290;
                      v115 = activeAccount4;
                      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
                    }

                    v75 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
                    [(CKKSResultOperation *)self setError:v75];

                    finishedOp2 = [(OTSOSUpgradeOperation *)self finishedOp];
                    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];
                    finishedOp3 = 0;
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
                  finishedOp3 = [(OTSOSUpgradeOperation *)self finishedOp];
                  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp3];
                }

                finishedOp4 = parsedSecureElementIdentity;
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
                finishedOp4 = [(OTSOSUpgradeOperation *)self finishedOp];
                [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp4];
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
              eventS4 = [(OTSOSUpgradeOperation *)self eventS];
              [eventS4 sendMetricWithResult:0 error:v100];

              eventS5 = 0;
            }

            eventS6 = v100;
          }

          else
          {
            v67 = sub_100006274("octagon-sos");
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v115 = eventS6;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Failed to get the persistent ref for our SOS signing key: %@", buf, 0xCu);
            }

            [(OTSOSUpgradeOperation *)self handlePrepareErrors:eventS6 nextExpectedState:@"BecomeUntrusted"];
            eventS5 = [(OTSOSUpgradeOperation *)self eventS];
            [eventS5 sendMetricWithResult:0 error:eventS6];
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
    eventS6 = [(OTSOSUpgradeOperation *)self eventS];
    eventS = [NSError errorWithDomain:@"com.apple.security.octagon" code:70 description:@"SOS not enabled on this platform"];
    [(__CFString *)eventS6 sendMetricWithResult:0 error:eventS];
  }

  objc_destroyWeak(&location);
}

- (id)persistentKeyRef:(__SecKey *)ref error:(id *)error
{
  v5 = SecKeyCopyPersistentRef();
  if (v5 && error)
  {
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:v5 userInfo:0];
  }

  return 0;
}

- (OTSOSUpgradeOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState errorState:(id)errorState deviceInfo:(id)info policyOverride:(id)override
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  conflictStateCopy = conflictState;
  errorStateCopy = errorState;
  infoCopy = info;
  overrideCopy = override;
  v24.receiver = self;
  v24.super_class = OTSOSUpgradeOperation;
  v18 = [(CKKSGroupOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_deps, dependencies);
    objc_storeStrong(&v19->_intendedState, state);
    objc_storeStrong(&v19->_nextState, errorState);
    objc_storeStrong(&v19->_ckksConflictState, conflictState);
    objc_storeStrong(&v19->_deviceInfo, info);
    objc_storeStrong(&v19->_policyOverride, override);
  }

  return v19;
}

@end