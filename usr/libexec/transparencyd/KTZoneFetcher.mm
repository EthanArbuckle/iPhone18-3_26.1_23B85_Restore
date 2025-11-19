@interface KTZoneFetcher
- (KTZoneFetcher)initWithDeps:(id)a3 zoneHandler:(id)a4 operationQueue:(id)a5 ckFetchScheduler:(id)a6;
- (id)createSuccesfulCKFetchDependency;
- (id)description;
- (id)newCKFetch:(id)a3;
- (id)requestSuccessfulCKFetchForManyReasons:(id)a3;
- (void)_onqueueCreateNewCKFetch;
- (void)cancelAllPending;
- (void)cancelRequests;
- (void)inspectErrorForRetryAfter:(id)a3 trigger:(id)a4;
- (void)maybeCreateNewCKFetch;
- (void)maybeCreateNewCKFetchOnQueue;
@end

@implementation KTZoneFetcher

- (KTZoneFetcher)initWithDeps:(id)a3 zoneHandler:(id)a4 operationQueue:(id)a5 ckFetchScheduler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = KTZoneFetcher;
  v14 = [(KTZoneFetcher *)&v23 init];
  if (v14)
  {
    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];
    [(KTZoneFetcher *)v14 setName:v16];

    v17 = dispatch_queue_create("KTZoneFetcher", 0);
    [(KTZoneFetcher *)v14 setQueue:v17];

    [(KTZoneFetcher *)v14 setDeps:v10];
    [(KTZoneFetcher *)v14 setZoneHandler:v11];
    [(KTZoneFetcher *)v14 setCkFetchScheduler:v13];
    [(KTZoneFetcher *)v14 setOperationQueue:v12];
    v18 = [(KTZoneFetcher *)v14 createSuccesfulCKFetchDependency];
    [(KTZoneFetcher *)v14 setSuccessfulCKFetchDependency:v18];

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
  v3 = [(KTZoneFetcher *)self name];
  v4 = [(KTZoneFetcher *)self newCKRequests];
  v5 = [(KTZoneFetcher *)self isCancelled];
  v6 = [(KTZoneFetcher *)self currentCKFetch];
  v7 = [NSString stringWithFormat:@"<KTZoneFetcher: %@ newCKRequests: %d isCancelled: %d currentFetch: %@", v3, v4, v5, v6];

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
  v3 = [(KTZoneFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000846A4;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)maybeCreateNewCKFetch
{
  v3 = [(KTZoneFetcher *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084738;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)maybeCreateNewCKFetchOnQueue
{
  v3 = [(KTZoneFetcher *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(KTZoneFetcher *)self newCKRequests])
  {
    goto LABEL_10;
  }

  if ([(KTZoneFetcher *)self isCancelled])
  {
    goto LABEL_10;
  }

  v4 = [(KTZoneFetcher *)self currentCKFetch];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(KTZoneFetcher *)self currentCKFetch];
  v7 = [v6 isFinished];

  if (!v7)
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
      v11 = self;
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
  v3 = [(KTZoneFetcher *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(KTZoneFetcher *)self successfulCKFetchDependency];
  v5 = [(KTZoneFetcher *)self createSuccesfulCKFetchDependency];
  [(KTZoneFetcher *)self setSuccessfulCKFetchDependency:v5];

  v6 = [(KTZoneFetcher *)self inflightCKFetchDependencies];
  v38 = v4;
  [v6 addObject:v4];

  v36 = [(KTZoneFetcher *)self ckFetchReasons];
  v7 = +[NSMutableSet set];
  [(KTZoneFetcher *)self setCkFetchReasons:v7];

  v8 = [v36 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];

  v10 = [(KTZoneFetcher *)self deps];
  v11 = [v10 fetchCloudStorage];
  v12 = [(KTZoneFetcher *)self deps];
  v13 = [(KTZoneFetcher *)self zoneHandler];
  v14 = [(KTZoneFetcher *)self deps];
  v15 = [v14 dataStore];
  v16 = [v15 controller];
  v17 = [v16 backgroundContext];
  v37 = v9;
  v18 = [v11 cloudFetchOperationWithDeps:v12 initialFetch:0 userInteractive:0 reason:v9 zoneHandler:v13 context:v17];

  [(KTZoneFetcher *)self setCurrentCKFetch:v18];
  [(KTZoneFetcher *)self setNewCKRequests:0];
  if ([v36 containsObject:off_100381D88])
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

    v21 = [(KTZoneFetcher *)self currentCKFetch];
    v22 = [(KTZoneFetcher *)self deps];
    v23 = [v22 reachabilityTracker];
    v24 = [v23 reachabilityDependency];
    [v21 addNullableDependency:v24];

    v25 = [(KTZoneFetcher *)self currentCKFetch];
    v26 = [(KTZoneFetcher *)self deps];
    v27 = [v26 networkTimeout];
    v28 = [v27 networkTimeoutOperation];
    [v25 addNullableDependency:v28];

    v18 = v19;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100084DAC;
  v39[3] = &unk_10031E018;
  v39[4] = self;
  v40 = v18;
  v41 = v36;
  v29 = v36;
  v30 = v18;
  v31 = [NSBlockOperation blockOperationWithBlock:v39];
  v32 = [(KTZoneFetcher *)self currentCKFetch];
  [v31 addNullableDependency:v32];

  v33 = [(KTZoneFetcher *)self operationQueue];
  v34 = [(KTZoneFetcher *)self currentCKFetch];
  [v33 addOperation:v34];

  v35 = [(KTZoneFetcher *)self operationQueue];
  [v35 addOperation:v31];
}

- (void)cancelAllPending
{
  v3 = [NSError errorWithDomain:@"foo" code:1 userInfo:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(KTZoneFetcher *)self inflightCKFetchDependencies];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setError:v3];
        [v9 cancel];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = [(KTZoneFetcher *)self inflightCKFetchDependencies];
  [v10 removeAllObjects];
}

- (id)requestSuccessfulCKFetchForManyReasons:(id)a3
{
  v4 = a3;
  if (qword_10038BDD0 != -1)
  {
    sub_10024B604();
  }

  v5 = qword_10038BDD8;
  if (os_log_type_enabled(qword_10038BDD8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 allObjects];
    v8 = [v7 componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "triggering a new CK fetch because of reason: %@", &buf, 0xCu);
  }

  v9 = [(KTZoneFetcher *)self deps];
  v10 = [v9 cloudRecords];
  v11 = v10 == 0;

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
    v12 = [(KTZoneFetcher *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100085684;
    block[3] = &unk_10031A198;
    p_buf = &buf;
    block[4] = self;
    v17 = v4;
    dispatch_sync(v12, block);

    v13 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  return v13;
}

- (id)newCKFetch:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  v5 = [(KTZoneFetcher *)self requestSuccessfulCKFetchForManyReasons:v4];

  return v5;
}

- (void)inspectErrorForRetryAfter:(id)a3 trigger:(id)a4
{
  v5 = a3;
  v6 = a4;
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
      v12 = [v6 name];
      v13 = 138412802;
      v14 = v12;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CK operation failed, scheduling %@ delay for %.1f seconds: %@", &v13, 0x20u);
    }

    [v6 waitUntil:v9];
  }
}

@end