@interface CKKSSynchronizeOperation
- (CKKSKeychainView)ckks;
- (CKKSSynchronizeOperation)initWithCKKSKeychainView:(id)a3 dependencies:(id)a4;
- (void)groupStart;
@end

@implementation CKKSSynchronizeOperation

- (CKKSKeychainView)ckks
{
  WeakRetained = objc_loadWeakRetained((&self->_restartCount + 1));

  return WeakRetained;
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v3 = [(CKKSSynchronizeOperation *)self ckks];
  if ([(CKKSSynchronizeOperation *)self isCancelled])
  {
    v4 = [v3 zoneName];
    oslog = sub_100019104(@"ckksresync", v4);

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "CKKSSynchronizeOperation cancelled, quitting", buf, 2u);
    }
  }

  else
  {
    [v3 setLastSynchronizeOperation:self];
    v5 = [v3 zoneName];
    v6 = sub_100019104(@"ckksresync", v5);

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CKKSSynchronizeOperation *)self restartCount];
      *buf = 67109120;
      v55 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning resynchronize (attempt %u)", buf, 8u);
    }

    oslog = [CKOperationGroup CKKSGroupWithName:@"ckks-resync"];
    v8 = +[NSMutableDictionary dictionary];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = [v3 operationDependencies];
    v10 = [v9 allCKKSManagedViews];

    v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v11)
    {
      v12 = *v49;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v48 + 1) + 8 * i) zoneID];
          [v8 setObject:v3 forKeyedSubscript:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v11);
    }

    v39 = [CKKSFetchAllRecordZoneChangesOperation alloc];
    v38 = [v3 container];
    v15 = [v3 cloudKitClassDependencies];
    v16 = [v15 fetchRecordZoneChangesOperationClass];
    v17 = [NSSet setWithObject:@"resync"];
    v18 = [(CKKSSynchronizeOperation *)self deps];
    v19 = [v18 activeAccount];
    v20 = [v19 altDSID];
    v21 = [(CKKSSynchronizeOperation *)self deps];
    LOBYTE(v37) = [v21 sendMetric];
    v40 = [(CKKSFetchAllRecordZoneChangesOperation *)v39 initWithContainer:v38 fetchClass:v16 clientMap:v8 fetchReasons:v17 apnsPushes:0 forceResync:1 ckoperationGroup:oslog altDSID:v20 sendMetric:v37];

    v22 = [NSString stringWithFormat:@"resync-step%u-fetch", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 1];
    [(CKKSGroupOperation *)v40 setName:v22];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v40];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100110FAC;
    v46[3] = &unk_100343BA0;
    v23 = v3;
    v47 = v23;
    v24 = [CKKSGroupOperation named:@"run-incoming" withBlockTakingSelf:v46];
    v25 = [NSString stringWithFormat:@"resync-step%u-incoming", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 2];
    [v24 setName:v25];

    [v24 addSuccessDependency:v40];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v24];
    v26 = [CKKSScanLocalItemsOperation alloc];
    v27 = [v23 operationDependencies];
    v28 = [(CKKSScanLocalItemsOperation *)v26 initWithDependencies:v27 intending:@"ready" errorState:@"error" ckoperationGroup:oslog];

    v29 = [NSString stringWithFormat:@"resync-step%u-scan", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 3];
    [(CKKSScanLocalItemsOperation *)v28 setName:v29];

    [(CKKSResultOperation *)v28 addSuccessDependency:v24];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v28];
    v30 = [CKKSOutgoingQueueOperation alloc];
    v31 = [v23 operationDependencies];
    v32 = [(CKKSOutgoingQueueOperation *)v30 initWithDependencies:v31 intending:@"ready" ckErrorState:@"process_outgoing_queue_failed" errorState:@"error"];

    v33 = [NSString stringWithFormat:@"resync-step%u-outgoing", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 4];
    [(CKKSGroupOperation *)v32 setName:v33];

    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v32];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v32];
    [(CKKSGroupOperation *)v32 addDependency:v28];
    v34 = objc_alloc_init(CKKSResultOperation);
    v35 = [NSString stringWithFormat:@"resync-step%u-consider-restart", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 5];
    [(CKKSResultOperation *)v34 setName:v35];

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100111018;
    v42[3] = &unk_100345310;
    objc_copyWeak(&v45, &location);
    v43 = v23;
    v36 = v28;
    v44 = v36;
    [(CKKSResultOperation *)v34 addExecutionBlock:v42];
    [(CKKSResultOperation *)v34 addSuccessDependency:v32];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v34];

    objc_destroyWeak(&v45);
  }

  objc_destroyWeak(&location);
}

- (CKKSSynchronizeOperation)initWithCKKSKeychainView:(id)a3 dependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKKSSynchronizeOperation;
  v8 = [(CKKSGroupOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak((v8 + 132), v6);
    *(v9 + 32) = 0;
    objc_storeStrong((v9 + 140), a4);
  }

  return v9;
}

@end