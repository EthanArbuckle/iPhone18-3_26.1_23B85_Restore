@interface CKKSCreateCKZoneOperation
- (CKKSCreateCKZoneOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
@end

@implementation CKKSCreateCKZoneOperation

- (void)groupStart
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1000EB8C4;
  v50 = sub_1000EB8D4;
  v51 = +[NSMutableArray array];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_1000EB8C4;
  v44[4] = sub_1000EB8D4;
  v45 = +[NSMutableArray array];
  v3 = [(CKKSCreateCKZoneOperation *)self deps];
  v4 = [v3 databaseProvider];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000EB8DC;
  v43[3] = &unk_100344BB0;
  v43[4] = self;
  v43[5] = &v46;
  v43[6] = v44;
  [v4 dispatchSyncWithReadOnlySQLTransaction:v43];

  if ([v47[5] count])
  {
    v5 = [AAFAnalyticsEventSecurity alloc];
    v57 = kSecurityRTCFieldNumViews;
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47[5] count]);
    v58 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v8 = [(CKKSCreateCKZoneOperation *)self deps];
    v9 = [v8 activeAccount];
    v10 = [v9 altDSID];
    v11 = [(CKKSCreateCKZoneOperation *)self deps];
    v12 = [v11 sendMetric];
    v13 = [v5 initWithCKKSMetrics:v7 altDSID:v10 eventName:kSecurityRTCEventNameZoneCreation testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v12];

    v14 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v47[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Asking to create and subscribe to CloudKit zones: %@", &buf, 0xCu);
    }

    v16 = [(CKKSCreateCKZoneOperation *)self deps];
    v17 = [v16 overallLaunch];
    [v17 addEvent:@"zone-create"];

    objc_initWeak(&location, self);
    v18 = sub_100019104(@"ckkszonemodifier", 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v47[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Attempting to create zones %@", &buf, 0xCu);
    }

    v20 = [(CKKSCreateCKZoneOperation *)self deps];
    v21 = [v20 cloudKitClassDependencies];
    v22 = [objc_msgSend(v21 "modifyRecordZonesOperationClass")];
    v23 = [v22 initWithRecordZonesToSave:v47[5] recordZoneIDsToDelete:0];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x3032000000;
    v54 = sub_1000EB8C4;
    v55 = sub_1000EB8D4;
    v56 = 0;
    v24 = [v23 configuration];
    [v24 setIsCloudKitSupportOperation:1];

    v25 = [(CKKSCreateCKZoneOperation *)self deps];
    v26 = [v25 ckdatabase];
    [v23 setDatabase:v26];

    [v23 setName:@"zone-creation-operation"];
    v27 = [CKOperationGroup CKKSGroupWithName:@"zone-creation"];
    [v23 setGroup:v27];

    [v23 setQualityOfService:25];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000EBC28;
    v40[3] = &unk_100336D50;
    objc_copyWeak(&v41, &location);
    v40[4] = v44;
    v40[5] = &buf;
    v40[6] = &v46;
    [v23 setModifyRecordZonesCompletionBlock:v40];
    v28 = [(CKKSCreateCKZoneOperation *)self deps];
    v29 = [v28 ckdatabase];
    [v29 addOperation:v23];

    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_1000EC0BC;
    v37 = &unk_1003444E8;
    objc_copyWeak(&v39, &location);
    v30 = v13;
    v38 = v30;
    v31 = [CKKSResultOperation named:@"determine-next-state" withBlockTakingSelf:&v34];
    [(CKKSCreateCKZoneOperation *)self setSetResultStateOperation:v31, v34, v35, v36, v37];

    v32 = [(CKKSCreateCKZoneOperation *)self setResultStateOperation];
    [v32 addNullableDependency:*(*(&buf + 1) + 40)];

    v33 = [(CKKSCreateCKZoneOperation *)self setResultStateOperation];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v33];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    _Block_object_dispose(&buf, 8);

    objc_destroyWeak(&location);
  }

  else
  {
    v30 = [(CKKSCreateCKZoneOperation *)self intendedState];
    [(CKKSCreateCKZoneOperation *)self setNextState:v30];
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);
}

- (CKKSCreateCKZoneOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKKSCreateCKZoneOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 150), a3);
    objc_storeStrong((v13 + 142), a4);
    objc_storeStrong((v13 + 134), a5);
    v13[128] = 1;
    v13[129] = 1;
    v13[130] = 0;
  }

  return v13;
}

@end