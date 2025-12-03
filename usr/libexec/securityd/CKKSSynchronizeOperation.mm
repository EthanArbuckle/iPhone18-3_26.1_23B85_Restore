@interface CKKSSynchronizeOperation
- (CKKSKeychainView)ckks;
- (CKKSSynchronizeOperation)initWithCKKSKeychainView:(id)view dependencies:(id)dependencies;
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
  ckks = [(CKKSSynchronizeOperation *)self ckks];
  if ([(CKKSSynchronizeOperation *)self isCancelled])
  {
    zoneName = [ckks zoneName];
    oslog = sub_100019104(@"ckksresync", zoneName);

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "CKKSSynchronizeOperation cancelled, quitting", buf, 2u);
    }
  }

  else
  {
    [ckks setLastSynchronizeOperation:self];
    zoneName2 = [ckks zoneName];
    v6 = sub_100019104(@"ckksresync", zoneName2);

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      restartCount = [(CKKSSynchronizeOperation *)self restartCount];
      *buf = 67109120;
      v55 = restartCount;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning resynchronize (attempt %u)", buf, 8u);
    }

    oslog = [CKOperationGroup CKKSGroupWithName:@"ckks-resync"];
    v8 = +[NSMutableDictionary dictionary];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    operationDependencies = [ckks operationDependencies];
    allCKKSManagedViews = [operationDependencies allCKKSManagedViews];

    v11 = [allCKKSManagedViews countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v11)
    {
      v12 = *v49;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(allCKKSManagedViews);
          }

          zoneID = [*(*(&v48 + 1) + 8 * i) zoneID];
          [v8 setObject:ckks forKeyedSubscript:zoneID];
        }

        v11 = [allCKKSManagedViews countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v11);
    }

    v39 = [CKKSFetchAllRecordZoneChangesOperation alloc];
    container = [ckks container];
    cloudKitClassDependencies = [ckks cloudKitClassDependencies];
    fetchRecordZoneChangesOperationClass = [cloudKitClassDependencies fetchRecordZoneChangesOperationClass];
    v17 = [NSSet setWithObject:@"resync"];
    deps = [(CKKSSynchronizeOperation *)self deps];
    activeAccount = [deps activeAccount];
    altDSID = [activeAccount altDSID];
    deps2 = [(CKKSSynchronizeOperation *)self deps];
    LOBYTE(v37) = [deps2 sendMetric];
    v40 = [(CKKSFetchAllRecordZoneChangesOperation *)v39 initWithContainer:container fetchClass:fetchRecordZoneChangesOperationClass clientMap:v8 fetchReasons:v17 apnsPushes:0 forceResync:1 ckoperationGroup:oslog altDSID:altDSID sendMetric:v37];

    v22 = [NSString stringWithFormat:@"resync-step%u-fetch", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 1];
    [(CKKSGroupOperation *)v40 setName:v22];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v40];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100110FAC;
    v46[3] = &unk_100343BA0;
    v23 = ckks;
    v47 = v23;
    v24 = [CKKSGroupOperation named:@"run-incoming" withBlockTakingSelf:v46];
    v25 = [NSString stringWithFormat:@"resync-step%u-incoming", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 2];
    [v24 setName:v25];

    [v24 addSuccessDependency:v40];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v24];
    v26 = [CKKSScanLocalItemsOperation alloc];
    operationDependencies2 = [v23 operationDependencies];
    v28 = [(CKKSScanLocalItemsOperation *)v26 initWithDependencies:operationDependencies2 intending:@"ready" errorState:@"error" ckoperationGroup:oslog];

    v29 = [NSString stringWithFormat:@"resync-step%u-scan", 5 * [(CKKSSynchronizeOperation *)self restartCount]+ 3];
    [(CKKSScanLocalItemsOperation *)v28 setName:v29];

    [(CKKSResultOperation *)v28 addSuccessDependency:v24];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v28];
    v30 = [CKKSOutgoingQueueOperation alloc];
    operationDependencies3 = [v23 operationDependencies];
    v32 = [(CKKSOutgoingQueueOperation *)v30 initWithDependencies:operationDependencies3 intending:@"ready" ckErrorState:@"process_outgoing_queue_failed" errorState:@"error"];

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

- (CKKSSynchronizeOperation)initWithCKKSKeychainView:(id)view dependencies:(id)dependencies
{
  viewCopy = view;
  dependenciesCopy = dependencies;
  v11.receiver = self;
  v11.super_class = CKKSSynchronizeOperation;
  v8 = [(CKKSGroupOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak((v8 + 132), viewCopy);
    *(v9 + 32) = 0;
    objc_storeStrong((v9 + 140), dependencies);
  }

  return v9;
}

@end