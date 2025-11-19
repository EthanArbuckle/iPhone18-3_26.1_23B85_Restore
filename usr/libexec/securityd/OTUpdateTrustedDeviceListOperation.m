@interface OTUpdateTrustedDeviceListOperation
- (OTUpdateTrustedDeviceListOperation)initWithDependencies:(id)a3 intendedState:(id)a4 listUpdatesState:(id)a5 errorState:(id)a6 retryFlag:(id)a7;
- (void)afterAuthKitFetch:(id)a3 userInitiatedRemovals:(id)a4 evictedRemovals:(id)a5 unknownReasonRemovals:(id)a6 trustedDeviceHash:(id)a7 deletedDeviceHash:(id)a8 trustedDevicesUpdateTimestamp:(id)a9 accountIsDemo:(BOOL)a10 version:(id)a11;
- (void)groupStart;
@end

@implementation OTUpdateTrustedDeviceListOperation

- (void)afterAuthKitFetch:(id)a3 userInitiatedRemovals:(id)a4 evictedRemovals:(id)a5 unknownReasonRemovals:(id)a6 trustedDeviceHash:(id)a7 deletedDeviceHash:(id)a8 trustedDevicesUpdateTimestamp:(id)a9 accountIsDemo:(BOOL)a10 version:(id)a11
{
  v43 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v41 = a7;
  v42 = a8;
  v17 = a9;
  v35 = a11;
  objc_initWeak(location, self);
  v18 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v19 = [v18 deviceInformationAdapter];
  v20 = [v19 isMachineIDOverridden];

  v21 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v34 = [v21 cuttlefishXPCWrapper];
  v22 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v33 = [v22 activeAccount];
  v23 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v32 = [v23 flowID];
  v40 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v24 = [v40 deviceSessionID];
  v39 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v25 = [v39 permittedToSendMetrics];
  v26 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v27 = [v26 activeAccount];
  v28 = [v27 altDSID];
  v31 = v23;
  LODWORD(v23) = v20 | a10;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000E6F28;
  v44[3] = &unk_100336C98;
  objc_copyWeak(&v46, location);
  v29 = v35;
  v45 = v29;
  LOBYTE(v30) = v25;
  [v34 setAllowedMachineIDsWithSpecificUser:v33 allowedMachineIDs:v43 userInitiatedRemovals:v38 evictedRemovals:v37 unknownReasonRemovals:v36 honorIDMSListChanges:v23 ^ 1 version:v29 flowID:v32 deviceSessionID:v24 canSendMetrics:v30 altDSID:v28 trustedDeviceHash:v41 deletedDeviceHash:v42 trustedDevicesUpdateTimestamp:v17 reply:v44];

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
  v4 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 accountIsW]);
  v52[0] = v5;
  v51[1] = kSecurityRTCFieldAccountIsG;
  v6 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 accountIsG]);
  v52[1] = v7;
  v40 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v10 = [v9 activeAccount];
  v11 = [v10 altDSID];
  v12 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v13 = [v12 flowID];
  v14 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v15 = [v14 deviceSessionID];
  v16 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  LOBYTE(v38) = [v16 permittedToSendMetrics];
  v17 = [v8 initWithKeychainCircleMetrics:v40 altDSID:v11 flowID:v13 deviceSessionID:v15 eventName:kSecurityRTCEventNameUpdateTDL testsAreEnabled:0 canSendMetrics:v38 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000E772C;
  v45[3] = &unk_100344D38;
  objc_copyWeak(&v47, &location);
  v39 = v17;
  v46 = v39;
  v18 = [NSBlockOperation blockOperationWithBlock:v45];
  [(OTUpdateTrustedDeviceListOperation *)self setFinishedOp:v18];

  v19 = [(OTUpdateTrustedDeviceListOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v19];

  v20 = [(OTUpdateTrustedDeviceListOperation *)self deps];
  v21 = [v20 activeAccount];
  v22 = [v21 altDSID];

  if (v22)
  {
    v23 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    v24 = [v23 authKitAdapter];
    v44 = 0;
    v25 = [v24 accountIsDemoAccountByAltDSID:v22 error:&v44];
    v26 = v44;

    if (v26)
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "octagon-authkit: failed to fetch demo account flag: %@", buf, 0xCu);
      }
    }

    v28 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    v29 = [v28 authKitAdapter];
    v30 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    v31 = [v30 flowID];
    v32 = [(OTUpdateTrustedDeviceListOperation *)self deps];
    v33 = [v32 deviceSessionID];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000E7A60;
    v41[3] = &unk_100336C70;
    objc_copyWeak(&v42, &location);
    v43 = v25;
    [v29 fetchCurrentDeviceListByAltDSID:v22 flowID:v31 deviceSessionID:v33 reply:v41];

    objc_destroyWeak(&v42);
  }

  else
  {
    v34 = sub_100006274("authkit");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(OTUpdateTrustedDeviceListOperation *)self deps];
      v36 = [v35 activeAccount];
      *buf = 138412290;
      v50 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No configured altDSID: %@", buf, 0xCu);
    }

    v37 = [NSError errorWithDomain:@"com.apple.security.octagon" code:59 description:@"No altDSID configured"];
    [(CKKSResultOperation *)self setError:v37];

    v26 = [(OTUpdateTrustedDeviceListOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v26];
  }

  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);
}

- (OTUpdateTrustedDeviceListOperation)initWithDependencies:(id)a3 intendedState:(id)a4 listUpdatesState:(id)a5 errorState:(id)a6 retryFlag:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = OTUpdateTrustedDeviceListOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 150), a3);
    objc_storeStrong((v18 + 142), a4);
    objc_storeStrong((v18 + 134), a6);
    objc_storeStrong((v18 + 158), a5);
    objc_storeStrong((v18 + 166), a7);
  }

  return v18;
}

@end