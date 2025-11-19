@interface CKKSZoneChangeFetcher
- (CKKSZoneChangeFetcher)initWithContainer:(id)a3 fetchClass:(Class)a4 reachabilityTracker:(id)a5 altDSID:(id)a6 sendMetric:(BOOL)a7;
- (NSString)description;
- (id)createSuccessfulFetchDependency;
- (id)inflightFetch;
- (id)requestFetchDueToAPNS:(id)a3;
- (id)requestSuccessfulFetch:(id)a3;
- (id)requestSuccessfulFetchForManyReasons:(id)a3;
- (id)strongClientMap;
- (void)_onqueueCreateNewFetch;
- (void)cancel;
- (void)halt;
- (void)maybeCreateNewFetch;
- (void)maybeCreateNewFetchOnQueue;
- (void)notifyZoneChange:(id)a3;
- (void)registerClient:(id)a3 zoneID:(id)a4;
@end

@implementation CKKSZoneChangeFetcher

- (void)halt
{
  v3 = [(CKKSZoneChangeFetcher *)self fetchScheduler];
  [v3 cancel];

  v4 = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4BA4;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v4, block);

  v5 = [(CKKSZoneChangeFetcher *)self currentFetch];
  [v5 cancel];

  v6 = [(CKKSZoneChangeFetcher *)self holdOperation];

  if (v6)
  {
    v7 = [(CKKSZoneChangeFetcher *)self currentFetch];
    v8 = [(CKKSZoneChangeFetcher *)self holdOperation];
    [v7 removeDependency:v8];
  }

  v9 = [(CKKSZoneChangeFetcher *)self currentFetch];
  [v9 waitUntilFinished];

  v10 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [v10 waitUntilFinished];
}

- (void)cancel
{
  v2 = [(CKKSZoneChangeFetcher *)self fetchScheduler];
  [v2 cancel];
}

- (id)createSuccessfulFetchDependency
{
  v3 = objc_alloc_init(CKKSZoneChangeFetchDependencyOperation);
  [(CKKSZoneChangeFetchDependencyOperation *)v3 setName:@"successful-fetch-dependency"];
  [(CKKSResultOperation *)v3 setDescriptionErrorCode:2];
  [(CKKSZoneChangeFetchDependencyOperation *)v3 setOwner:self];

  return v3;
}

- (void)_onqueueCreateNewFetch
{
  v3 = [(CKKSZoneChangeFetcher *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v38 = [(CKKSZoneChangeFetcher *)self successfulFetchDependency];
  [(CKKSZoneChangeFetcher *)self setInflightFetchDependency:v38];
  v4 = [(CKKSZoneChangeFetcher *)self inflightFetchDependencies];
  [v4 addObject:v38];

  [(CKKSZoneChangeFetcher *)self setNewRequests:0];
  v5 = [(CKKSZoneChangeFetcher *)self createSuccessfulFetchDependency];
  [(CKKSZoneChangeFetcher *)self setSuccessfulFetchDependency:v5];

  v6 = [(CKKSZoneChangeFetcher *)self currentFetchReasons];
  v7 = objc_alloc_init(NSMutableSet);
  [(CKKSZoneChangeFetcher *)self setCurrentFetchReasons:v7];

  v8 = [NSSortDescriptor sortDescriptorWithKey:@"description" ascending:1];
  v47 = v8;
  v9 = [NSArray arrayWithObjects:&v47 count:1];
  v10 = [v6 sortedArrayUsingDescriptors:v9];
  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = sub_100019104(@"ckksfetcher", 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting a new fetch, reasons: %@", buf, 0xCu);
  }

  v13 = [(CKKSZoneChangeFetcher *)self apnsPushes];
  v14 = objc_alloc_init(NSMutableSet);
  [(CKKSZoneChangeFetcher *)self setApnsPushes:v14];

  v15 = [CKOperationGroup CKKSGroupWithName:v11];
  v16 = [(CKKSZoneChangeFetcher *)self strongClientMap];
  if (![v16 count])
  {
    v17 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No clients", buf, 2u);
    }
  }

  v18 = [CKKSFetchAllRecordZoneChangesOperation alloc];
  v19 = [(CKKSZoneChangeFetcher *)self container];
  v20 = [(CKKSZoneChangeFetcher *)self fetchRecordZoneChangesOperationClass];
  v21 = [(CKKSZoneChangeFetcher *)self altDSID];
  LOBYTE(v37) = [(CKKSZoneChangeFetcher *)self sendMetric];
  v22 = [(CKKSFetchAllRecordZoneChangesOperation *)v18 initWithContainer:v19 fetchClass:v20 clientMap:v16 fetchReasons:v6 apnsPushes:v13 forceResync:0 ckoperationGroup:v15 altDSID:v21 sendMetric:v37];

  if ([v6 containsObject:@"network"])
  {
    v23 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "blocking fetch on network reachability", buf, 2u);
    }

    v24 = [(CKKSZoneChangeFetcher *)self reachabilityTracker];
    v25 = [v24 reachabilityDependency];
    [(CKKSFetchAllRecordZoneChangesOperation *)v22 addNullableDependency:v25];
  }

  v26 = [(CKKSZoneChangeFetcher *)self holdOperation];
  [(CKKSFetchAllRecordZoneChangesOperation *)v22 addNullableDependency:v26];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001F5218;
  v39[3] = &unk_100344970;
  objc_copyWeak(&v43, &location);
  v27 = v22;
  v40 = v27;
  v28 = v6;
  v41 = v28;
  v29 = v13;
  v42 = v29;
  v30 = [CKKSResultOperation operationWithBlock:v39];
  [(CKKSZoneChangeFetcher *)self setCurrentProcessResult:v30];

  v31 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [v31 setName:@"zone-change-fetcher-worker"];

  v32 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [v32 addDependency:v27];

  v33 = [(CKKSZoneChangeFetcher *)self operationQueue];
  v34 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [v33 addOperation:v34];

  [(CKKSZoneChangeFetcher *)self setCurrentFetch:v27];
  v35 = [(CKKSZoneChangeFetcher *)self operationQueue];
  v36 = [(CKKSZoneChangeFetcher *)self currentFetch];
  [v35 addOperation:v36];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)maybeCreateNewFetch
{
  v3 = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5990;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)maybeCreateNewFetchOnQueue
{
  v3 = [(CKKSZoneChangeFetcher *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(CKKSZoneChangeFetcher *)self halted])
  {
    v4 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Halted; not starting a new fetch", buf, 2u);
    }

    return;
  }

  if (![(CKKSZoneChangeFetcher *)self newRequests])
  {
    return;
  }

  v9 = [(CKKSZoneChangeFetcher *)self currentFetch];
  if (v9)
  {
    v3 = [(CKKSZoneChangeFetcher *)self currentFetch];
    if (([v3 isFinished]& 1) == 0)
    {

      return;
    }
  }

  v5 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  if (!v5)
  {
    if (v9)
    {
    }

    goto LABEL_18;
  }

  v6 = v5;
  v7 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  v8 = [v7 isFinished];

  if (v9)
  {
  }

  if (v8)
  {
LABEL_18:

    [(CKKSZoneChangeFetcher *)self _onqueueCreateNewFetch];
  }
}

- (id)inflightFetch
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001F5C54;
  v11 = sub_1001F5C64;
  v12 = 0;
  v3 = [(CKKSZoneChangeFetcher *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F5C6C;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)requestSuccessfulFetchForManyReasons:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001F5C54;
  v16 = sub_1001F5C64;
  v17 = 0;
  v5 = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5E30;
  block[3] = &unk_100344920;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)requestFetchDueToAPNS:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v5 = [(CKKSZoneChangeFetcher *)self strongClientMap];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        if ([v11 zoneIsReadyForFetching:v10])
        {
          *(v27 + 24) = 0;

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F619C;
  block[3] = &unk_100344920;
  v13 = v4;
  v19 = v13;
  v20 = self;
  v21 = &v26;
  dispatch_sync(v12, block);

  if (*(v27 + 24) == 1)
  {
    v14 = sub_100019104(@"ckksfetch", 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping fetching size no zone is ready", v17, 2u);
    }

    v15 = 0;
  }

  else
  {
    v14 = [NSSet setWithObject:@"apns"];
    v15 = [(CKKSZoneChangeFetcher *)self requestSuccessfulFetchForManyReasons:v14];
  }

  _Block_object_dispose(&v26, 8);

  return v15;
}

- (void)notifyZoneChange:(id)a3
{
  v4 = a3;
  v5 = sub_100019104(@"ckkspush", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received a zone change notification for %@ %@", &v7, 0x16u);
  }

  v6 = [(CKKSZoneChangeFetcher *)self requestFetchDueToAPNS:v4];
}

- (id)requestSuccessfulFetch:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  v5 = [(CKKSZoneChangeFetcher *)self requestSuccessfulFetchForManyReasons:v4];

  return v5;
}

- (id)strongClientMap
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(CKKSZoneChangeFetcher *)self clientMap];
  objc_sync_enter(v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CKKSZoneChangeFetcher *)self clientMap];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CKKSZoneChangeFetcher *)self clientMap];
        v12 = [v11 objectForKey:v10];

        if (v12)
        {
          [v3 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v4);

  return v3;
}

- (void)registerClient:(id)a3 zoneID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CKKSZoneChangeFetcher *)self clientMap];
  objc_sync_enter(v7);
  v8 = [(CKKSZoneChangeFetcher *)self clientMap];
  [v8 setObject:v9 forKey:v6];

  objc_sync_exit(v7);
}

- (NSString)description
{
  v3 = [(CKKSZoneChangeFetcher *)self fetchScheduler];
  v4 = [v3 nextFireTime];

  if (v4)
  {
    v5 = objc_alloc_init(NSDateFormatter);
    [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v6 = [(CKKSZoneChangeFetcher *)self name];
    v7 = [v5 stringFromDate:v4];
    v8 = [NSString stringWithFormat:@"<CKKSZoneChangeFetcher(%@): next fetch at %@", v6, v7];
  }

  else
  {
    v5 = [(CKKSZoneChangeFetcher *)self name];
    v8 = [NSString stringWithFormat:@"<CKKSZoneChangeFetcher(%@): no pending fetches", v5];
  }

  return v8;
}

- (CKKSZoneChangeFetcher)initWithContainer:(id)a3 fetchClass:(Class)a4 reachabilityTracker:(id)a5 altDSID:(id)a6 sendMetric:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v48.receiver = self;
  v48.super_class = CKKSZoneChangeFetcher;
  v16 = [(CKKSZoneChangeFetcher *)&v48 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_container, a3);
    objc_storeStrong(&v17->_fetchRecordZoneChangesOperationClass, a4);
    objc_storeStrong(&v17->_reachabilityTracker, a5);
    v18 = objc_alloc_init(NSMutableSet);
    currentFetchReasons = v17->_currentFetchReasons;
    v17->_currentFetchReasons = v18;

    v20 = objc_alloc_init(NSMutableSet);
    apnsPushes = v17->_apnsPushes;
    v17->_apnsPushes = v20;

    v22 = +[NSMapTable strongToWeakObjectsMapTable];
    clientMap = v17->_clientMap;
    v17->_clientMap = v22;

    name = v17->_name;
    v17->_name = @"zone-change-fetcher";

    v25 = [(NSString *)v17->_name UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(v25, v26);
    queue = v17->_queue;
    v17->_queue = v27;

    v29 = objc_alloc_init(NSOperationQueue);
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v29;

    v31 = [(CKKSZoneChangeFetcher *)v17 createSuccessfulFetchDependency];
    successfulFetchDependency = v17->_successfulFetchDependency;
    v17->_successfulFetchDependency = v31;

    v33 = +[NSMutableSet set];
    inflightFetchDependencies = v17->_inflightFetchDependencies;
    v17->_inflightFetchDependencies = v33;

    inflightFetchDependency = v17->_inflightFetchDependency;
    v17->_inflightFetchDependency = 0;

    v17->_newRequests = 0;
    objc_storeStrong(&v17->_altDSID, a6);
    v17->_sendMetric = a7;
    if (qword_10039DEC8 != -1)
    {
      dispatch_once(&qword_10039DEC8, &stru_100337248);
    }

    v36 = byte_10039DED0;
    v37 = byte_10039DED0;
    objc_initWeak(&location, v17);
    v38 = [CKKSNearFutureScheduler alloc];
    if (v37)
    {
      v39 = 6000000000;
    }

    else
    {
      v39 = 120000000000;
    }

    if (v36)
    {
      v40 = 100000000;
    }

    else
    {
      v40 = 2000000000;
    }

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1001F6C2C;
    v45[3] = &unk_1003452E8;
    objc_copyWeak(&v46, &location);
    LODWORD(v44) = 0;
    v41 = [(CKKSNearFutureScheduler *)v38 initWithName:@"zone-change-fetch-scheduler" initialDelay:0 startingBackoff:v40 exponentialBackoff:v39 maximumDelay:0 keepProcessAlive:1000 dependencyDescriptionCode:2.0 qosClass:v44 block:v45];
    fetchScheduler = v17->_fetchScheduler;
    v17->_fetchScheduler = v41;

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v17;
}

@end