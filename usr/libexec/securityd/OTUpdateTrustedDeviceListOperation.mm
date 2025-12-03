@interface OTUpdateTrustedDeviceListOperation
- (OTUpdateTrustedDeviceListOperation)initWithDependencies:(id)dependencies intendedState:(id)state listUpdatesState:(id)updatesState errorState:(id)errorState retryFlag:(id)flag;
- (void)afterAuthKitFetch:(id)fetch userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals trustedDeviceHash:(id)hash deletedDeviceHash:(id)deviceHash trustedDevicesUpdateTimestamp:(id)timestamp accountIsDemo:(BOOL)self0 version:(id)self1;
- (void)groupStart;
@end

@implementation OTUpdateTrustedDeviceListOperation

- (void)afterAuthKitFetch:(id)fetch userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals trustedDeviceHash:(id)hash deletedDeviceHash:(id)deviceHash trustedDevicesUpdateTimestamp:(id)timestamp accountIsDemo:(BOOL)self0 version:(id)self1
{
  fetchCopy = fetch;
  removalsCopy = removals;
  evictedRemovalsCopy = evictedRemovals;
  reasonRemovalsCopy = reasonRemovals;
  hashCopy = hash;
  deviceHashCopy = deviceHash;
  timestampCopy = timestamp;
  versionCopy = version;
  objc_initWeak(location, self);
  deps = [(OTUpdateTrustedDeviceListOperation *)self deps];
  deviceInformationAdapter = [deps deviceInformationAdapter];
  isMachineIDOverridden = [deviceInformationAdapter isMachineIDOverridden];

  deps2 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  cuttlefishXPCWrapper = [deps2 cuttlefishXPCWrapper];
  deps3 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  deps4 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  permittedToSendMetrics = [deps6 permittedToSendMetrics];
  deps7 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  activeAccount2 = [deps7 activeAccount];
  altDSID = [activeAccount2 altDSID];
  v31 = deps4;
  LODWORD(deps4) = isMachineIDOverridden | demo;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000E6F28;
  v44[3] = &unk_100336C98;
  objc_copyWeak(&v46, location);
  v29 = versionCopy;
  v45 = v29;
  LOBYTE(v30) = permittedToSendMetrics;
  [cuttlefishXPCWrapper setAllowedMachineIDsWithSpecificUser:activeAccount allowedMachineIDs:fetchCopy userInitiatedRemovals:removalsCopy evictedRemovals:evictedRemovalsCopy unknownReasonRemovals:reasonRemovalsCopy honorIDMSListChanges:deps4 ^ 1 version:v29 flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:v30 altDSID:altDSID trustedDeviceHash:hashCopy deletedDeviceHash:deviceHashCopy trustedDevicesUpdateTimestamp:timestampCopy reply:v44];

  objc_destroyWeak(&v46);
  objc_destroyWeak(location);
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = sub_100006274("octagon-authkit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to update trusted device list", buf, 2u);
  }

  v51[0] = kSecurityRTCFieldAccountIsW;
  deps = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps accountIsW]);
  v52[0] = v5;
  v51[1] = kSecurityRTCFieldAccountIsG;
  deps2 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deps2 accountIsG]);
  v52[1] = v7;
  v40 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  deps3 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  activeAccount = [deps3 activeAccount];
  altDSID = [activeAccount altDSID];
  deps4 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  flowID = [deps4 flowID];
  deps5 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  deviceSessionID = [deps5 deviceSessionID];
  deps6 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  LOBYTE(v38) = [deps6 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v40 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:kSecurityRTCEventNameUpdateTDL testsAreEnabled:0 canSendMetrics:v38 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000E772C;
  v45[3] = &unk_100344D38;
  objc_copyWeak(&v47, &location);
  v39 = v17;
  v46 = v39;
  v18 = [NSBlockOperation blockOperationWithBlock:v45];
  [(OTUpdateTrustedDeviceListOperation *)self setFinishedOp:v18];

  finishedOp = [(OTUpdateTrustedDeviceListOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  deps7 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  activeAccount2 = [deps7 activeAccount];
  altDSID2 = [activeAccount2 altDSID];

  if (altDSID2)
  {
    deps8 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    authKitAdapter = [deps8 authKitAdapter];
    v44 = 0;
    v25 = [authKitAdapter accountIsDemoAccountByAltDSID:altDSID2 error:&v44];
    finishedOp2 = v44;

    if (finishedOp2)
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = finishedOp2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "octagon-authkit: failed to fetch demo account flag: %@", buf, 0xCu);
      }
    }

    deps9 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    authKitAdapter2 = [deps9 authKitAdapter];
    deps10 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    flowID2 = [deps10 flowID];
    deps11 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    deviceSessionID2 = [deps11 deviceSessionID];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E7A60;
    v41[3] = &unk_100336C70;
    objc_copyWeak(&v42, &location);
    v43 = v25;
    [authKitAdapter2 fetchCurrentDeviceListByAltDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 reply:v41];

    objc_destroyWeak(&v42);
  }

  else
  {
    v34 = sub_100006274("authkit");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      deps12 = [(OTUpdateTrustedDeviceListOperation *)self deps];
      activeAccount3 = [deps12 activeAccount];
      *buf = 138412290;
      v50 = activeAccount3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v37 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v37];

    finishedOp2 = [(OTUpdateTrustedDeviceListOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];
  }

  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);
}

- (OTUpdateTrustedDeviceListOperation)initWithDependencies:(id)dependencies intendedState:(id)state listUpdatesState:(id)updatesState errorState:(id)errorState retryFlag:(id)flag
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  updatesStateCopy = updatesState;
  errorStateCopy = errorState;
  flagCopy = flag;
  v21.receiver = self;
  v21.super_class = OTUpdateTrustedDeviceListOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 150), dependencies);
    objc_storeStrong((v18 + 142), state);
    objc_storeStrong((v18 + 134), errorState);
    objc_storeStrong((v18 + 158), updatesState);
    objc_storeStrong((v18 + 166), flag);
  }

  return v18;
}

@end