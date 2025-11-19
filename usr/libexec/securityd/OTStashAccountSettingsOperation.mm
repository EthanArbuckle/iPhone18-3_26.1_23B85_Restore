@interface OTStashAccountSettingsOperation
+ (void)performWithAccountWide:(BOOL)a3 forceFetch:(BOOL)a4 cuttlefishXPCWrapper:(id)a5 activeAccount:(id)a6 containerName:(id)a7 contextID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12;
- (OTStashAccountSettingsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 accountSettings:(id)a6 accountWide:(BOOL)a7 forceFetch:(BOOL)a8;
- (void)groupStart;
@end

@implementation OTStashAccountSettingsOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stashing account settings", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTStashAccountSettingsOperation *)self setFinishedOp:v4];

  v5 = [(OTStashAccountSettingsOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  objc_initWeak(buf, self);
  v6 = [(OTStashAccountSettingsOperation *)self accountWide];
  v20 = [(OTStashAccountSettingsOperation *)self forceFetch];
  v7 = [(OTStashAccountSettingsOperation *)self deps];
  v19 = [v7 cuttlefishXPCWrapper];
  v22 = [(OTStashAccountSettingsOperation *)self deps];
  v18 = [v22 activeAccount];
  v21 = [(OTStashAccountSettingsOperation *)self deps];
  v17 = [v21 containerName];
  v8 = [(OTStashAccountSettingsOperation *)self deps];
  v16 = [v8 contextID];
  v9 = [(OTStashAccountSettingsOperation *)self deps];
  v10 = [v9 flowID];
  v11 = [(OTStashAccountSettingsOperation *)self deps];
  v12 = [v11 deviceSessionID];
  v13 = [(OTStashAccountSettingsOperation *)self deps];
  v14 = [v13 permittedToSendMetrics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000FDAE8;
  v23[3] = &unk_100337008;
  objc_copyWeak(&v24, buf);
  LOBYTE(v15) = v14;
  [OTStashAccountSettingsOperation performWithAccountWide:v6 forceFetch:v20 cuttlefishXPCWrapper:v19 activeAccount:v18 containerName:v17 contextID:v16 flowID:v10 deviceSessionID:v12 canSendMetrics:v15 reply:v23];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (OTStashAccountSettingsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 accountSettings:(id)a6 accountWide:(BOOL)a7 forceFetch:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = OTStashAccountSettingsOperation;
  v18 = [(CKKSGroupOperation *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong((v18 + 150), a3);
    objc_storeStrong((v19 + 134), a4);
    objc_storeStrong((v19 + 142), a5);
    objc_storeStrong((v19 + 166), a6);
    v19[128] = a7;
    v19[129] = a8;
  }

  return v19;
}

+ (void)performWithAccountWide:(BOOL)a3 forceFetch:(BOOL)a4 cuttlefishXPCWrapper:(id)a5 activeAccount:(id)a6 containerName:(id)a7 contextID:(id)a8 flowID:(id)a9 deviceSessionID:(id)a10 canSendMetrics:(BOOL)a11 reply:(id)a12
{
  v31 = a4;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a12;
  if (v15)
  {
    v21 = a6;
    v22 = a5;
    v23 = [AAFAnalyticsEventSecurity alloc];
    v24 = [v21 altDSID];
    LOBYTE(v30) = a11;
    v25 = [v23 initWithKeychainCircleMetrics:0 altDSID:v24 flowID:v18 deviceSessionID:v19 eventName:kSecurityRTCEventNameFetchAccountWideSettings testsAreEnabled:0 canSendMetrics:v30 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    v26 = [v21 altDSID];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000FE004;
    v36[3] = &unk_100336F98;
    v37 = v16;
    v38 = v17;
    v39 = v25;
    v40 = v20;
    v27 = v25;
    [v22 fetchAccountSettingsWithSpecificUser:v21 forceFetch:v31 altDSID:v26 flowID:v18 deviceSessionID:v19 canSendMetrics:a11 reply:v36];
  }

  else
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000FE2E0;
    v32[3] = &unk_100336FC0;
    v33 = v16;
    v34 = v17;
    v35 = v20;
    v28 = a6;
    v29 = a5;
    [v29 fetchTrustStateWithSpecificUser:v28 reply:v32];

    v27 = v33;
  }
}

@end