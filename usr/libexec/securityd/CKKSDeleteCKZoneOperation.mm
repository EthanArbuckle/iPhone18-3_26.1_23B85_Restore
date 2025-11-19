@interface CKKSDeleteCKZoneOperation
- (CKKSDeleteCKZoneOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
@end

@implementation CKKSDeleteCKZoneOperation

- (void)groupStart
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1000CB89C;
  v40 = sub_1000CB8AC;
  v41 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(CKKSDeleteCKZoneOperation *)self deps];
  v4 = [v3 views];

  v5 = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v37[5];
        v9 = [*(*(&v32 + 1) + 8 * v7) zoneID];
        [v8 addObject:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v5);
  }

  v10 = [v37[5] count];
  v11 = sub_100019104(@"ckkszone", 0);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = v37[5];
      *buf = 138412290;
      v43 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting CloudKit zones: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14 = [(CKKSDeleteCKZoneOperation *)self deps];
    v15 = [v14 cloudKitClassDependencies];
    v16 = [objc_msgSend(v15 "modifyRecordZonesOperationClass")];
    v17 = [v16 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v37[5]];

    v18 = [v17 configuration];
    [v18 setIsCloudKitSupportOperation:1];

    v19 = [(CKKSDeleteCKZoneOperation *)self deps];
    v20 = [v19 ckdatabase];
    [v17 setDatabase:v20];

    [v17 setName:@"zone-creation-operation"];
    v21 = [CKOperationGroup CKKSGroupWithName:@"zone-creation"];
    [v17 setGroup:v21];

    [v17 setQualityOfService:25];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000CB8B4;
    v30[3] = &unk_100336998;
    objc_copyWeak(&v31, buf);
    v30[4] = &v36;
    [v17 setModifyRecordZonesCompletionBlock:v30];
    v22 = [(CKKSDeleteCKZoneOperation *)self deps];
    v23 = [v22 ckdatabase];
    [v23 addOperation:v17];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000CBB54;
    v28[3] = &unk_100337A10;
    objc_copyWeak(&v29, buf);
    v24 = [CKKSResultOperation named:@"determine-next-state" withBlockTakingSelf:v28];
    [(CKKSDeleteCKZoneOperation *)self setSetResultStateOperation:v24];

    v25 = [(CKKSDeleteCKZoneOperation *)self setResultStateOperation];
    [v25 addDependency:v17];

    v26 = [(CKKSDeleteCKZoneOperation *)self setResultStateOperation];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);

    objc_destroyWeak(buf);
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No zones to delete", buf, 2u);
    }

    v27 = [(CKKSDeleteCKZoneOperation *)self intendedState];
    [(CKKSDeleteCKZoneOperation *)self setNextState:v27];
  }

  _Block_object_dispose(&v36, 8);
}

- (CKKSDeleteCKZoneOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKKSDeleteCKZoneOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 150), a3);
    objc_storeStrong((v13 + 142), a4);
    objc_storeStrong((v13 + 134), a5);
    v13[128] = 0;
  }

  return v13;
}

@end