@interface KTZoneFetcher
- (KTZoneFetcher)initWithDeps:(id)deps zoneHandler:(id)handler operationQueue:(id)queue ckFetchScheduler:(id)scheduler;
- (id)createSuccesfulCKFetchDependency;
- (id)description;
- (id)newCKFetch:(id)fetch;
- (id)requestSuccessfulCKFetchForManyReasons:(id)reasons;
- (void)_onqueueCreateNewCKFetch;
- (void)cancelAllPending;
- (void)cancelRequests;
- (void)inspectErrorForRetryAfter:(id)after trigger:(id)trigger;
- (void)maybeCreateNewCKFetch;
- (void)maybeCreateNewCKFetchOnQueue;
@end

@implementation KTZoneFetcher

- (KTZoneFetcher)initWithDeps:(id)deps zoneHandler:(id)handler operationQueue:(id)queue ckFetchScheduler:(id)scheduler
{
  depsCopy = deps;
  handlerCopy = handler;
  queueCopy = queue;
  schedulerCopy = scheduler;
  v23.receiver = self;
  v23.super_class = KTZoneFetcher;
  v14 = [(KTZoneFetcher *)&v23 init];
  if (v14)
  {
    v15 = +[NSUUID UUID];
    uUIDString = [v15 UUIDString];
    [(KTZoneFetcher *)v14 setName:uUIDString];

    v17 = dispatch_queue_create("KTZoneFetcher", 0);
    [(KTZoneFetcher *)v14 setQueue:v17];

    [(KTZoneFetcher *)v14 setDeps:depsCopy];
    [(KTZoneFetcher *)v14 setZoneHandler:handlerCopy];
    [(KTZoneFetcher *)v14 setCkFetchScheduler:schedulerCopy];
    [(KTZoneFetcher *)v14 setOperationQueue:queueCopy];
    createSuccesfulCKFetchDependency = [(KTZoneFetcher *)v14 createSuccesfulCKFetchDependency];
    [(KTZoneFetcher *)v14 setSuccessfulCKFetchDependency:createSuccesfulCKFetchDependency];

    v19 = +[NSMutableSet set];
    [(KTZoneFetcher *)v14 setInflightCKFetchDependencies:v19];

    v20 = +[NSMutableSet set];
    [(KTZoneFetcher *)v14 setCkFetchReasons:v20];

    v21 = v14;
  }

  return v14;
}

- (id)description
{
  name = [(KTZoneFetcher *)self name];
  newCKRequests = [(KTZoneFetcher *)self newCKRequests];
  isCancelled = [(KTZoneFetcher *)self isCancelled];
  currentCKFetch = [(KTZoneFetcher *)self currentCKFetch];
  v7 = [NSString stringWithFormat:@"<KTZoneFetcher: %@ newCKRequests: %d isCancelled: %d currentFetch: %@", name, newCKRequests, isCancelled, currentCKFetch];

  return v7;
}

- (id)createSuccesfulCKFetchDependency
{
  v2 = objc_alloc_init(KTZoneFetchDependencyOperation);
  [(KTZoneFetchDependencyOperation *)v2 setName:@"successful-fetch-dependency"];

  return v2;
}

- (void)cancelRequests
{
  queue = [(KTZoneFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000846A4;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)maybeCreateNewCKFetch
{
  queue = [(KTZoneFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084738;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)maybeCreateNewCKFetchOnQueue
{
  queue = [(KTZoneFetcher *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(KTZoneFetcher *)self newCKRequests])
  {
    goto LABEL_10;
  }

  if ([(KTZoneFetcher *)self isCancelled])
  {
    goto LABEL_10;
  }

  currentCKFetch = [(KTZoneFetcher *)self currentCKFetch];
  if (!currentCKFetch)
  {
    goto LABEL_5;
  }

  v5 = currentCKFetch;
  currentCKFetch2 = [(KTZoneFetcher *)self currentCKFetch];
  isFinished = [currentCKFetch2 isFinished];

  if (!isFinished)
  {
LABEL_10:
    if (qword_10038BDD0 != -1)
    {
      sub_10024B5C8();
    }

    v9 = qword_10038BDD8;
    if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not creating a CK fetch: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
LABEL_5:
    if (qword_10038BDD0 != -1)
    {
      sub_10024B5B4();
    }

    v8 = qword_10038BDD8;
    if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating a new CK fetch", &v10, 2u);
    }

    [(KTZoneFetcher *)self _onqueueCreateNewCKFetch];
  }
}

- (void)_onqueueCreateNewCKFetch
{
  queue = [(KTZoneFetcher *)self queue];
  dispatch_assert_queue_V2(queue);

  successfulCKFetchDependency = [(KTZoneFetcher *)self successfulCKFetchDependency];
  createSuccesfulCKFetchDependency = [(KTZoneFetcher *)self createSuccesfulCKFetchDependency];
  [(KTZoneFetcher *)self setSuccessfulCKFetchDependency:createSuccesfulCKFetchDependency];

  inflightCKFetchDependencies = [(KTZoneFetcher *)self inflightCKFetchDependencies];
  v38 = successfulCKFetchDependency;
  [inflightCKFetchDependencies addObject:successfulCKFetchDependency];

  ckFetchReasons = [(KTZoneFetcher *)self ckFetchReasons];
  v7 = +[NSMutableSet set];
  [(KTZoneFetcher *)self setCkFetchReasons:v7];

  allObjects = [ckFetchReasons allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];

  deps = [(KTZoneFetcher *)self deps];
  fetchCloudStorage = [deps fetchCloudStorage];
  deps2 = [(KTZoneFetcher *)self deps];
  zoneHandler = [(KTZoneFetcher *)self zoneHandler];
  deps3 = [(KTZoneFetcher *)self deps];
  dataStore = [deps3 dataStore];
  controller = [dataStore controller];
  backgroundContext = [controller backgroundContext];
  v37 = v9;
  v18 = [fetchCloudStorage cloudFetchOperationWithDeps:deps2 initialFetch:0 userInteractive:0 reason:v9 zoneHandler:zoneHandler context:backgroundContext];

  [(KTZoneFetcher *)self setCurrentCKFetch:v18];
  [(KTZoneFetcher *)self setNewCKRequests:0];
  if ([ckFetchReasons containsObject:off_100381D88])
  {
    v19 = v18;
    if (qword_10038BDD0 != -1)
    {
      sub_10024B5DC();
    }

    v20 = qword_10038BDD8;
    if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "blocking fetch on network reachability/network timeout", buf, 2u);
    }

    currentCKFetch = [(KTZoneFetcher *)self currentCKFetch];
    deps4 = [(KTZoneFetcher *)self deps];
    reachabilityTracker = [deps4 reachabilityTracker];
    reachabilityDependency = [reachabilityTracker reachabilityDependency];
    [currentCKFetch addNullableDependency:reachabilityDependency];

    currentCKFetch2 = [(KTZoneFetcher *)self currentCKFetch];
    deps5 = [(KTZoneFetcher *)self deps];
    networkTimeout = [deps5 networkTimeout];
    networkTimeoutOperation = [networkTimeout networkTimeoutOperation];
    [currentCKFetch2 addNullableDependency:networkTimeoutOperation];

    v18 = v19;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100084DAC;
  v39[3] = &unk_10031E018;
  v39[4] = self;
  v40 = v18;
  v41 = ckFetchReasons;
  v29 = ckFetchReasons;
  v30 = v18;
  v31 = [NSBlockOperation blockOperationWithBlock:v39];
  currentCKFetch3 = [(KTZoneFetcher *)self currentCKFetch];
  [v31 addNullableDependency:currentCKFetch3];

  operationQueue = [(KTZoneFetcher *)self operationQueue];
  currentCKFetch4 = [(KTZoneFetcher *)self currentCKFetch];
  [operationQueue addOperation:currentCKFetch4];

  operationQueue2 = [(KTZoneFetcher *)self operationQueue];
  [operationQueue2 addOperation:v31];
}

- (void)cancelAllPending
{
  v3 = [NSError errorWithDomain:@"foo" code:1 userInfo:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inflightCKFetchDependencies = [(KTZoneFetcher *)self inflightCKFetchDependencies];
  v5 = [inflightCKFetchDependencies countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(inflightCKFetchDependencies);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setError:v3];
        [v9 cancel];
      }

      v6 = [inflightCKFetchDependencies countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  inflightCKFetchDependencies2 = [(KTZoneFetcher *)self inflightCKFetchDependencies];
  [inflightCKFetchDependencies2 removeAllObjects];
}

- (id)requestSuccessfulCKFetchForManyReasons:(id)reasons
{
  reasonsCopy = reasons;
  if (qword_10038BDD0 != -1)
  {
    sub_10024B604();
  }

  v5 = qword_10038BDD8;
  if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    allObjects = [reasonsCopy allObjects];
    v8 = [allObjects componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "triggering a new CK fetch because of reason: %@", &buf, 0xCu);
  }

  deps = [(KTZoneFetcher *)self deps];
  cloudRecords = [deps cloudRecords];
  v11 = cloudRecords == 0;

  if (v11)
  {
    if (qword_10038BDD0 != -1)
    {
      sub_10024B618();
    }

    v14 = qword_10038BDD8;
    if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "no cloud records: %{public}@", &buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = sub_10008566C;
    v22 = sub_10008567C;
    v23 = 0;
    queue = [(KTZoneFetcher *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100085684;
    block[3] = &unk_10031A198;
    p_buf = &buf;
    block[4] = self;
    v17 = reasonsCopy;
    dispatch_sync(queue, block);

    v13 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  return v13;
}

- (id)newCKFetch:(id)fetch
{
  v4 = [NSSet setWithObject:fetch];
  v5 = [(KTZoneFetcher *)self requestSuccessfulCKFetchForManyReasons:v4];

  return v5;
}

- (void)inspectErrorForRetryAfter:(id)after trigger:(id)trigger
{
  afterCopy = after;
  triggerCopy = trigger;
  CKRetryAfterSecondsForError();
  if (v7 != 0.0)
  {
    v8 = v7;
    v9 = 1000000000 * v7;
    if (qword_10038BDD0 != -1)
    {
      sub_10024B640();
    }

    v10 = qword_10038BDD8;
    if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      name = [triggerCopy name];
      v13 = 138412802;
      v14 = name;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = afterCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CK operation failed, scheduling %@ delay for %.1f seconds: %@", &v13, 0x20u);
    }

    [triggerCopy waitUntil:v9];
  }
}

@end