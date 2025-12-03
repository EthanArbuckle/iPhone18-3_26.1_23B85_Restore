@interface CKKSZoneChangeFetcher
- (CKKSZoneChangeFetcher)initWithContainer:(id)container fetchClass:(Class)class reachabilityTracker:(id)tracker altDSID:(id)d sendMetric:(BOOL)metric;
- (NSString)description;
- (id)createSuccessfulFetchDependency;
- (id)inflightFetch;
- (id)requestFetchDueToAPNS:(id)s;
- (id)requestSuccessfulFetch:(id)fetch;
- (id)requestSuccessfulFetchForManyReasons:(id)reasons;
- (id)strongClientMap;
- (void)_onqueueCreateNewFetch;
- (void)cancel;
- (void)halt;
- (void)maybeCreateNewFetch;
- (void)maybeCreateNewFetchOnQueue;
- (void)notifyZoneChange:(id)change;
- (void)registerClient:(id)client zoneID:(id)d;
@end

@implementation CKKSZoneChangeFetcher

- (void)halt
{
  fetchScheduler = [(CKKSZoneChangeFetcher *)self fetchScheduler];
  [fetchScheduler cancel];

  queue = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4BA4;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  currentFetch = [(CKKSZoneChangeFetcher *)self currentFetch];
  [currentFetch cancel];

  holdOperation = [(CKKSZoneChangeFetcher *)self holdOperation];

  if (holdOperation)
  {
    currentFetch2 = [(CKKSZoneChangeFetcher *)self currentFetch];
    holdOperation2 = [(CKKSZoneChangeFetcher *)self holdOperation];
    [currentFetch2 removeDependency:holdOperation2];
  }

  currentFetch3 = [(CKKSZoneChangeFetcher *)self currentFetch];
  [currentFetch3 waitUntilFinished];

  currentProcessResult = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [currentProcessResult waitUntilFinished];
}

- (void)cancel
{
  fetchScheduler = [(CKKSZoneChangeFetcher *)self fetchScheduler];
  [fetchScheduler cancel];
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
  queue = [(CKKSZoneChangeFetcher *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  successfulFetchDependency = [(CKKSZoneChangeFetcher *)self successfulFetchDependency];
  [(CKKSZoneChangeFetcher *)self setInflightFetchDependency:successfulFetchDependency];
  inflightFetchDependencies = [(CKKSZoneChangeFetcher *)self inflightFetchDependencies];
  [inflightFetchDependencies addObject:successfulFetchDependency];

  [(CKKSZoneChangeFetcher *)self setNewRequests:0];
  createSuccessfulFetchDependency = [(CKKSZoneChangeFetcher *)self createSuccessfulFetchDependency];
  [(CKKSZoneChangeFetcher *)self setSuccessfulFetchDependency:createSuccessfulFetchDependency];

  currentFetchReasons = [(CKKSZoneChangeFetcher *)self currentFetchReasons];
  v7 = objc_alloc_init(NSMutableSet);
  [(CKKSZoneChangeFetcher *)self setCurrentFetchReasons:v7];

  v8 = [NSSortDescriptor sortDescriptorWithKey:@"description" ascending:1];
  v47 = v8;
  v9 = [NSArray arrayWithObjects:&v47 count:1];
  v10 = [currentFetchReasons sortedArrayUsingDescriptors:v9];
  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = sub_100019104(@"ckksfetcher", 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting a new fetch, reasons: %@", buf, 0xCu);
  }

  apnsPushes = [(CKKSZoneChangeFetcher *)self apnsPushes];
  v14 = objc_alloc_init(NSMutableSet);
  [(CKKSZoneChangeFetcher *)self setApnsPushes:v14];

  v15 = [CKOperationGroup CKKSGroupWithName:v11];
  strongClientMap = [(CKKSZoneChangeFetcher *)self strongClientMap];
  if (![strongClientMap count])
  {
    v17 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No clients", buf, 2u);
    }
  }

  v18 = [CKKSFetchAllRecordZoneChangesOperation alloc];
  container = [(CKKSZoneChangeFetcher *)self container];
  fetchRecordZoneChangesOperationClass = [(CKKSZoneChangeFetcher *)self fetchRecordZoneChangesOperationClass];
  altDSID = [(CKKSZoneChangeFetcher *)self altDSID];
  LOBYTE(v37) = [(CKKSZoneChangeFetcher *)self sendMetric];
  v22 = [(CKKSFetchAllRecordZoneChangesOperation *)v18 initWithContainer:container fetchClass:fetchRecordZoneChangesOperationClass clientMap:strongClientMap fetchReasons:currentFetchReasons apnsPushes:apnsPushes forceResync:0 ckoperationGroup:v15 altDSID:altDSID sendMetric:v37];

  if ([currentFetchReasons containsObject:@"network"])
  {
    v23 = sub_100019104(@"ckksfetcher", 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "blocking fetch on network reachability", buf, 2u);
    }

    reachabilityTracker = [(CKKSZoneChangeFetcher *)self reachabilityTracker];
    reachabilityDependency = [reachabilityTracker reachabilityDependency];
    [(CKKSFetchAllRecordZoneChangesOperation *)v22 addNullableDependency:reachabilityDependency];
  }

  holdOperation = [(CKKSZoneChangeFetcher *)self holdOperation];
  [(CKKSFetchAllRecordZoneChangesOperation *)v22 addNullableDependency:holdOperation];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001F5218;
  v39[3] = &unk_100344970;
  objc_copyWeak(&v43, &location);
  v27 = v22;
  v40 = v27;
  v28 = currentFetchReasons;
  v41 = v28;
  v29 = apnsPushes;
  v42 = v29;
  v30 = [CKKSResultOperation operationWithBlock:v39];
  [(CKKSZoneChangeFetcher *)self setCurrentProcessResult:v30];

  currentProcessResult = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [currentProcessResult setName:@"zone-change-fetcher-worker"];

  currentProcessResult2 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [currentProcessResult2 addDependency:v27];

  operationQueue = [(CKKSZoneChangeFetcher *)self operationQueue];
  currentProcessResult3 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  [operationQueue addOperation:currentProcessResult3];

  [(CKKSZoneChangeFetcher *)self setCurrentFetch:v27];
  operationQueue2 = [(CKKSZoneChangeFetcher *)self operationQueue];
  currentFetch = [(CKKSZoneChangeFetcher *)self currentFetch];
  [operationQueue2 addOperation:currentFetch];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)maybeCreateNewFetch
{
  queue = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5990;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)maybeCreateNewFetchOnQueue
{
  queue = [(CKKSZoneChangeFetcher *)self queue];
  dispatch_assert_queue_V2(queue);

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

  currentFetch = [(CKKSZoneChangeFetcher *)self currentFetch];
  if (currentFetch)
  {
    queue = [(CKKSZoneChangeFetcher *)self currentFetch];
    if (([queue isFinished]& 1) == 0)
    {

      return;
    }
  }

  currentProcessResult = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  if (!currentProcessResult)
  {
    if (currentFetch)
    {
    }

    goto LABEL_18;
  }

  v6 = currentProcessResult;
  currentProcessResult2 = [(CKKSZoneChangeFetcher *)self currentProcessResult];
  isFinished = [currentProcessResult2 isFinished];

  if (currentFetch)
  {
  }

  if (isFinished)
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
  queue = [(CKKSZoneChangeFetcher *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F5C6C;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)requestSuccessfulFetchForManyReasons:(id)reasons
{
  reasonsCopy = reasons;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001F5C54;
  v16 = sub_1001F5C64;
  v17 = 0;
  queue = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5E30;
  block[3] = &unk_100344920;
  v10 = reasonsCopy;
  v11 = &v12;
  block[4] = self;
  v6 = reasonsCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)requestFetchDueToAPNS:(id)s
{
  sCopy = s;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  strongClientMap = [(CKKSZoneChangeFetcher *)self strongClientMap];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [strongClientMap allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [strongClientMap objectForKeyedSubscript:v10];
        if ([v11 zoneIsReadyForFetching:v10])
        {
          *(v27 + 24) = 0;

          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  queue = [(CKKSZoneChangeFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F619C;
  block[3] = &unk_100344920;
  v13 = sCopy;
  v19 = v13;
  selfCopy = self;
  v21 = &v26;
  dispatch_sync(queue, block);

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

- (void)notifyZoneChange:(id)change
{
  changeCopy = change;
  v5 = sub_100019104(@"ckkspush", 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received a zone change notification for %@ %@", &v7, 0x16u);
  }

  v6 = [(CKKSZoneChangeFetcher *)self requestFetchDueToAPNS:changeCopy];
}

- (id)requestSuccessfulFetch:(id)fetch
{
  v4 = [NSSet setWithObject:fetch];
  v5 = [(CKKSZoneChangeFetcher *)self requestSuccessfulFetchForManyReasons:v4];

  return v5;
}

- (id)strongClientMap
{
  v3 = +[NSMutableDictionary dictionary];
  clientMap = [(CKKSZoneChangeFetcher *)self clientMap];
  objc_sync_enter(clientMap);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientMap2 = [(CKKSZoneChangeFetcher *)self clientMap];
  keyEnumerator = [clientMap2 keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        clientMap3 = [(CKKSZoneChangeFetcher *)self clientMap];
        v12 = [clientMap3 objectForKey:v10];

        if (v12)
        {
          [v3 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  objc_sync_exit(clientMap);

  return v3;
}

- (void)registerClient:(id)client zoneID:(id)d
{
  clientCopy = client;
  dCopy = d;
  clientMap = [(CKKSZoneChangeFetcher *)self clientMap];
  objc_sync_enter(clientMap);
  clientMap2 = [(CKKSZoneChangeFetcher *)self clientMap];
  [clientMap2 setObject:clientCopy forKey:dCopy];

  objc_sync_exit(clientMap);
}

- (NSString)description
{
  fetchScheduler = [(CKKSZoneChangeFetcher *)self fetchScheduler];
  nextFireTime = [fetchScheduler nextFireTime];

  if (nextFireTime)
  {
    name2 = objc_alloc_init(NSDateFormatter);
    [name2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    name = [(CKKSZoneChangeFetcher *)self name];
    v7 = [name2 stringFromDate:nextFireTime];
    v8 = [NSString stringWithFormat:@"<CKKSZoneChangeFetcher(%@): next fetch at %@", name, v7];
  }

  else
  {
    name2 = [(CKKSZoneChangeFetcher *)self name];
    v8 = [NSString stringWithFormat:@"<CKKSZoneChangeFetcher(%@): no pending fetches", name2];
  }

  return v8;
}

- (CKKSZoneChangeFetcher)initWithContainer:(id)container fetchClass:(Class)class reachabilityTracker:(id)tracker altDSID:(id)d sendMetric:(BOOL)metric
{
  containerCopy = container;
  trackerCopy = tracker;
  dCopy = d;
  v48.receiver = self;
  v48.super_class = CKKSZoneChangeFetcher;
  v16 = [(CKKSZoneChangeFetcher *)&v48 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_container, container);
    objc_storeStrong(&v17->_fetchRecordZoneChangesOperationClass, class);
    objc_storeStrong(&v17->_reachabilityTracker, tracker);
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

    uTF8String = [(NSString *)v17->_name UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(uTF8String, v26);
    queue = v17->_queue;
    v17->_queue = v27;

    v29 = objc_alloc_init(NSOperationQueue);
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v29;

    createSuccessfulFetchDependency = [(CKKSZoneChangeFetcher *)v17 createSuccessfulFetchDependency];
    successfulFetchDependency = v17->_successfulFetchDependency;
    v17->_successfulFetchDependency = createSuccessfulFetchDependency;

    v33 = +[NSMutableSet set];
    inflightFetchDependencies = v17->_inflightFetchDependencies;
    v17->_inflightFetchDependencies = v33;

    inflightFetchDependency = v17->_inflightFetchDependency;
    v17->_inflightFetchDependency = 0;

    v17->_newRequests = 0;
    objc_storeStrong(&v17->_altDSID, d);
    v17->_sendMetric = metric;
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