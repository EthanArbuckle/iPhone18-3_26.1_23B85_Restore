@interface CLIndoorTilePrefetcher
+ (id)createNewRequest:(int)request forURL:(id)l lastRelevant:(id)relevant;
+ (id)foregroundSessionConfigurationWithTimeout:(double)timeout;
+ (id)urlForAsset:(id)asset forFloor:(id)floor withTileServer:(id)server;
+ (id)urlForFloor:(id)floor withTileServer:(id)server;
- (BOOL)shouldPrefetchFloorMetadataForFloorUuid:(const void *)uuid forSession:(int)session withLocationContext:(int64_t)context;
- (CLIndoorTilePrefetcher)init;
- (CLIndoorTilePrefetcher)initWithServerConfiguration:(const void *)configuration usingDelegate:(id)delegate queue:(id)queue forTest:(BOOL)test;
- (CLIndoorTilePrefetcherDelegate)delegate;
- (CLQueuedNSURLSession)availableFloorForegroundSessionQueue;
- (CLQueuedNSURLSession)backgroundSessionQueue;
- (CLQueuedNSURLSession)unavailableFloorForegroundSessionQueue;
- (NSDate)now;
- (OS_dispatch_queue)delegateQ;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)allDownloadItemsCompleted;
- (void)cancelDownloadTasksMatching:(id)matching onSession:(id)session;
- (void)cancelInflightBackgroundTasksMatching:(id)matching;
- (void)cancelInflightForegroundTasksMatching:(id)matching;
- (void)invalidate;
- (void)invalidateSessions;
- (void)notifyDelegateForegroundFetchComplete;
- (void)notifyDelegateForegroundTaskCompleted:(id)completed;
- (void)notifyDelegateForegroundTaskCompleted:(id)completed withError:(id)error;
- (void)notifyDelegateIfPrefetchComplete;
- (void)notifyDelegatePrefetchComplete;
- (void)onQueueNotifyDelegateForegroundFetchComplete;
- (void)onQueueNotifyDelegatePrefetchComplete;
- (void)onQueueSession:(id)session didFinishDownloadTask:(id)task toPath:(id)path inTempPath:(shared_ptr<TemporaryPath>)tempPath;
- (void)onQueueSessionDidCompleteTask:(id)task withError:(id)error;
- (void)onQueueSessionWillSendRequestForEstablishedConnection:(id)connection task:(id)task completionHandler:(id)handler;
- (void)prefetch:(id)prefetch;
- (void)requestForegroundFetchForFloors:(id)floors withRequestUUID:(id)d;
- (void)resetSessions;
- (void)runFromNetworkCallback:(id)callback;
- (void)scheduleDownloadForRequest:(id)request withResumeData:(id)data withSession:(int)session andExpectedByteSize:(int64_t)size;
- (void)scheduleForegroundDownloadForFloors:(id)floors withRequestUUID:(id)d;
- (void)session:(id)session didFinishDownloadTask:(id)task toPath:(id)path inTempPath:(shared_ptr<TemporaryPath>)tempPath;
- (void)session:(id)session didResumeRequest:(id)request withRemainingRequests:(unint64_t)requests;
- (void)sessionDidCompleteTask:(id)task withError:(id)error;
- (void)sessionWillSendRequestForEstablishedConnection:(id)connection task:(id)task completionHandler:(id)handler;
- (void)setNow:(id)now;
@end

@implementation CLIndoorTilePrefetcher

+ (id)createNewRequest:(int)request forURL:(id)l lastRelevant:(id)relevant
{
  lCopy = l;
  v6 = objc_alloc_init(NSMutableURLRequest);
  [v6 setURL:lCopy];

  return v6;
}

- (CLIndoorTilePrefetcher)init
{
  [(CLIndoorTilePrefetcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLIndoorTilePrefetcher)initWithServerConfiguration:(const void *)configuration usingDelegate:(id)delegate queue:(id)queue forTest:(BOOL)test
{
  delegateCopy = delegate;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = CLIndoorTilePrefetcher;
  v12 = [(CLIndoorTilePrefetcher *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v12->_isDaemon = !test;
    v12->_discretionaryBackground = !test;
    v12->_isTest = test;
    v14 = v12;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeWeak(&v14->_delegateQ, queueCopy);
    if (!v13->_isTest)
    {
      [delegateCopy reloadAvailabilityTilePrefetchParameters];
    }

    v15 = sub_100322C78(configuration);
    tileServer = v13->_tileServer;
    v13->_tileServer = v15;

    v17 = objc_alloc_init(NSOperationQueue);
    downloadQ = v13->_downloadQ;
    v13->_downloadQ = v17;

    if (qword_10045B070 == -1)
    {
      v19 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_7:
        v20 = dispatch_queue_create("com.apple.indoord.DownloadQueue", 0);
        downloadQ = [(CLIndoorTilePrefetcher *)v13 downloadQ];
        [downloadQ setMaxConcurrentOperationCount:1];

        downloadQ2 = [(CLIndoorTilePrefetcher *)v13 downloadQ];
        [downloadQ2 setUnderlyingQueue:v20];

        [NSURLSession _getActiveSessionIdentifiersWithCompletionHandler:&stru_10044B770];
        v23 = v13;

        goto LABEL_8;
      }
    }

    else
    {
      sub_100387C10();
      v19 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }
    }

    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Downloads will be processed 1 at a time", v25, 2u);
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

- (void)invalidateSessions
{
  v3 = dispatch_group_create();
  [(CLIndoorTilePrefetcher *)self setSessionInvalidationGroup:v3];

  if (self->_availableFloorForegroundSessionQueue)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C38();
    }

    v4 = qword_10045B078;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      availableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)self availableFloorForegroundSessionQueue];
      session = [availableFloorForegroundSessionQueue session];
      v7 = [session description];
      v31 = 138543362;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting invalidation of available floor session %{public}@", &v31, 0xCu);
    }

    sessionInvalidationGroup = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];
    dispatch_group_enter(sessionInvalidationGroup);

    availableFloorForegroundSessionQueue2 = [(CLIndoorTilePrefetcher *)self availableFloorForegroundSessionQueue];
    [availableFloorForegroundSessionQueue2 invalidateAndCancel];
  }

  if (self->_unavailableFloorForegroundSessionQueue)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v10 = qword_10045B078;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      unavailableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)self unavailableFloorForegroundSessionQueue];
      session2 = [unavailableFloorForegroundSessionQueue session];
      v13 = [session2 description];
      v31 = 138543362;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Requesting invalidation of unavailable floor session %{public}@", &v31, 0xCu);
    }

    sessionInvalidationGroup2 = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];
    dispatch_group_enter(sessionInvalidationGroup2);

    unavailableFloorForegroundSessionQueue2 = [(CLIndoorTilePrefetcher *)self unavailableFloorForegroundSessionQueue];
    [unavailableFloorForegroundSessionQueue2 invalidateAndCancel];
  }

  if (self->_backgroundSessionQueue)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v16 = qword_10045B078;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      backgroundSessionQueue = [(CLIndoorTilePrefetcher *)self backgroundSessionQueue];
      session3 = [backgroundSessionQueue session];
      v19 = [session3 description];
      v31 = 138543362;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Requesting invalidation of background session %{public}@", &v31, 0xCu);
    }

    sessionInvalidationGroup3 = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];
    dispatch_group_enter(sessionInvalidationGroup3);

    backgroundSessionQueue2 = [(CLIndoorTilePrefetcher *)self backgroundSessionQueue];
    [backgroundSessionQueue2 invalidateAndCancel];
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
  }

  v22 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Waiting for sessions to be invalidated", &v31, 2u);
  }

  sessionInvalidationGroup4 = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];
  v24 = dispatch_time(0, 30000000000);
  v25 = dispatch_group_wait(sessionInvalidationGroup4, v24);

  if (v25)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v26 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v31) = 0;
      v27 = "Prefetcher invalidation timed out waiting for session invalidation. Waited for this many seconds: ";
      v28 = v26;
      v29 = OS_LOG_TYPE_FAULT;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v28, v29, v27, &v31, 2u);
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v30 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      v27 = "Sessions invalidated";
      v28 = v30;
      v29 = OS_LOG_TYPE_INFO;
      goto LABEL_32;
    }
  }
}

- (void)resetSessions
{
  v3 = dispatch_group_create();
  if (self->_unavailableFloorForegroundSessionQueue)
  {
    if (qword_10045B070 == -1)
    {
      v4 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        dispatch_group_enter(v3);
        unavailableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)self unavailableFloorForegroundSessionQueue];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10036C404;
        v17[3] = &unk_100432828;
        v18 = v3;
        [unavailableFloorForegroundSessionQueue resetWithCompletionHandler:v17];

        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C38();
      v4 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempting to reset unavailable foreground session", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (!self->_availableFloorForegroundSessionQueue)
  {
    goto LABEL_11;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
    v6 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_9:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to reset available foreground session", buf, 2u);
  }

LABEL_10:
  dispatch_group_enter(v3);
  availableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)self availableFloorForegroundSessionQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10036C4A4;
  v15[3] = &unk_100432828;
  v16 = v3;
  [availableFloorForegroundSessionQueue resetWithCompletionHandler:v15];

LABEL_11:
  if (!self->_backgroundSessionQueue)
  {
    goto LABEL_16;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
    v8 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_14:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attempting to reset background session", buf, 2u);
  }

LABEL_15:
  dispatch_group_enter(v3);
  backgroundSessionQueue = [(CLIndoorTilePrefetcher *)self backgroundSessionQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10036C544;
  v13[3] = &unk_100432828;
  v14 = v3;
  [backgroundSessionQueue resetWithCompletionHandler:v13];

LABEL_16:
  if (qword_10045B070 == -1)
  {
    v10 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_100387C10();
  v10 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_18:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Waiting for sessions to be reset", buf, 2u);
  }

LABEL_19:
  v11 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v3, v11))
  {
    sub_100387C4C();

    abort_report_np();
    __break(1u);
LABEL_27:
    sub_100387C10();
    v12 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (qword_10045B070 != -1)
  {
    goto LABEL_27;
  }

  v12 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_22:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sessions reset", buf, 2u);
  }

LABEL_23:
}

- (void)invalidate
{
  if (qword_10045B070 == -1)
  {
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100387C38();
  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Prefetcher invalidating all sessions and tasks", buf, 2u);
  }

LABEL_4:
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);
  sessionInvalidationGroup = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];

  if (sessionInvalidationGroup)
  {
    sub_100387D80();

    v11 = 289;
    v12 = "[CLIndoorTilePrefetcher invalidate]";
    v10 = "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/indoorservice/CLIndoorTilePrefetcher.mm";
    abort_report_np();
    __break(1u);
  }

  else
  {
    if (self->_availableFloorForegroundSessionQueue || self->_unavailableFloorForegroundSessionQueue || self->_backgroundSessionQueue)
    {
      [(CLIndoorTilePrefetcher *)self invalidateSessions];
      [(CLIndoorTilePrefetcher *)self resetSessions];
    }

    if (qword_10045B070 == -1)
    {
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  sub_100387C10();
  v6 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_11:
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cancelling all operations from the download queue", v14, 2u);
  }

LABEL_12:
  v7 = [(CLIndoorTilePrefetcher *)self downloadQ:v10];
  [v7 cancelAllOperations];

  downloadQ = [(CLIndoorTilePrefetcher *)self downloadQ];
  [downloadQ waitUntilAllOperationsAreFinished];

  [(CLIndoorTilePrefetcher *)self setDownloadQ:0];
  if (qword_10045B070 != -1)
  {
    sub_100387C10();
    v9 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_14:
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "All download queue operations cancelled", v13, 2u);
  }

LABEL_15:
}

- (CLQueuedNSURLSession)backgroundSessionQueue
{
  backgroundSessionQueue = self->_backgroundSessionQueue;
  if (!backgroundSessionQueue)
  {
    v4 = [CLIndoorTilePrefetcher backgroundSessionConfigurationWithDiscretionary:[(CLIndoorTilePrefetcher *)self discretionaryBackground] isDaemon:[(CLIndoorTilePrefetcher *)self isDaemon]];
    v5 = [CLQueuedNSURLSession alloc];
    v12 = sub_1000DD5B0();
    v13 = v6;
    v7 = sub_100005C94(&v12, &v13 + 1);
    downloadQ = [(CLIndoorTilePrefetcher *)self downloadQ];
    v9 = [(CLQueuedNSURLSession *)v5 initWithMaxTasks:v7 usingDelegate:self withSessionConfiguration:v4 andProxiedSessionDelegate:self andSessionDelegateQueue:downloadQ];
    v10 = self->_backgroundSessionQueue;
    self->_backgroundSessionQueue = v9;

    backgroundSessionQueue = self->_backgroundSessionQueue;
  }

  return backgroundSessionQueue;
}

+ (id)foregroundSessionConfigurationWithTimeout:(double)timeout
{
  v4 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v4 setNetworkServiceType:0];
  [v4 set_allowsExpensiveAccess:1];
  [v4 setRequestCachePolicy:1];
  [v4 setURLCache:0];
  [v4 setTimeoutIntervalForResource:timeout];

  return v4;
}

- (CLQueuedNSURLSession)unavailableFloorForegroundSessionQueue
{
  unavailableFloorForegroundSessionQueue = self->_unavailableFloorForegroundSessionQueue;
  if (!unavailableFloorForegroundSessionQueue)
  {
    sub_1000DD6BC(&v12);
    v4 = [CLIndoorTilePrefetcher foregroundSessionConfigurationWithTimeout:sub_1003307E4(&v12, &v14)];
    v5 = [CLQueuedNSURLSession alloc];
    v12 = sub_1000DD5B0();
    v13 = v6;
    v7 = sub_100005C94(&v12, &v13 + 1);
    downloadQ = [(CLIndoorTilePrefetcher *)self downloadQ];
    v9 = [(CLQueuedNSURLSession *)v5 initWithMaxTasks:v7 usingDelegate:self withSessionConfiguration:v4 andProxiedSessionDelegate:self andSessionDelegateQueue:downloadQ];
    v10 = self->_unavailableFloorForegroundSessionQueue;
    self->_unavailableFloorForegroundSessionQueue = v9;

    unavailableFloorForegroundSessionQueue = self->_unavailableFloorForegroundSessionQueue;
  }

  return unavailableFloorForegroundSessionQueue;
}

- (CLQueuedNSURLSession)availableFloorForegroundSessionQueue
{
  availableFloorForegroundSessionQueue = self->_availableFloorForegroundSessionQueue;
  if (!availableFloorForegroundSessionQueue)
  {
    sub_1000DD6A0(&v12);
    v4 = [CLIndoorTilePrefetcher foregroundSessionConfigurationWithTimeout:sub_1003307E4(&v12, &v14)];
    v5 = [CLQueuedNSURLSession alloc];
    v12 = sub_1000DD5B0();
    v13 = v6;
    v7 = sub_100005C94(&v12, &v13 + 1);
    downloadQ = [(CLIndoorTilePrefetcher *)self downloadQ];
    v9 = [(CLQueuedNSURLSession *)v5 initWithMaxTasks:v7 usingDelegate:self withSessionConfiguration:v4 andProxiedSessionDelegate:self andSessionDelegateQueue:downloadQ];
    v10 = self->_availableFloorForegroundSessionQueue;
    self->_availableFloorForegroundSessionQueue = v9;

    availableFloorForegroundSessionQueue = self->_availableFloorForegroundSessionQueue;
  }

  return availableFloorForegroundSessionQueue;
}

- (NSDate)now
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10036CED8;
  v13 = sub_10036CEE8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10036CEF0;
  v6[3] = &unk_10044B798;
  v7 = dispatch_semaphore_create(0);
  v8 = &v9;
  v6[4] = self;
  v3 = v7;
  [(CLIndoorTilePrefetcher *)self runFromNetworkCallback:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)setNow:(id)now
{
  selfCopy = self;
  nowCopy = now;
  std::promise<void>::promise(&v6);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_10036D068;
  v5[3] = &unk_10044B7B8;
  v5[4] = &selfCopy;
  v5[5] = &nowCopy;
  v5[6] = &v6;
  [(CLIndoorTilePrefetcher *)self runFromNetworkCallback:v5];
  std::promise<void>::get_future(&v6);
  std::future<void>::get(&v4);
  std::future<void>::~future(&v4);
  std::promise<void>::~promise(&v6);
}

+ (id)urlForFloor:(id)floor withTileServer:(id)server
{
  floorCopy = floor;
  serverCopy = server;
  v7 = [floorCopy length];
  v8 = v7;
  if (v7 >= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = v7;
  }

  v10 = [[NSMutableString alloc] initWithCapacity:{objc_msgSend(floorCopy, "length") + 3 * (v9 >> 1) + 1}];
  if (v8 >= 2)
  {
    v11 = [floorCopy substringWithRange:{0, 2}];
    [v10 appendString:v11];

    if (v8 > 3)
    {
      [v10 appendString:@"/"];
      v12 = [floorCopy substringWithRange:{2, 2}];
      [v10 appendString:v12];

      if (v8 >= 6)
      {
        [v10 appendString:@"/"];
        v13 = [floorCopy substringWithRange:{4, 2}];
        [v10 appendString:v13];
      }
    }
  }

  [v10 appendString:@"/"];
  [v10 appendString:floorCopy];
  [v10 appendString:@"/"];
  v14 = [NSURL URLWithString:v10 relativeToURL:serverCopy];

  return v14;
}

+ (id)urlForAsset:(id)asset forFloor:(id)floor withTileServer:(id)server
{
  assetCopy = asset;
  v8 = [CLIndoorTilePrefetcher urlForFloor:floor withTileServer:server];
  v9 = [NSURL URLWithString:assetCopy relativeToURL:v8];

  return v9;
}

- (void)prefetch:(id)prefetch
{
  prefetchCopy = prefetch;
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [prefetchCopy count];
    tileServer = [(CLIndoorTilePrefetcher *)self tileServer];
    absoluteString = [tileServer absoluteString];
    *buf = 134349315;
    *v41 = v4;
    *&v41[8] = 2081;
    *v42 = [absoluteString UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "TileFetch, count, %{public}lu, server, %{private}s", buf, 0x16u);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
  }

  v7 = qword_10045B078;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [prefetchCopy description];
    *buf = 138477827;
    *v41 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Request to prefetch: %{private}@", buf, 0xCu);
  }

  backgroundSessionQueue = [(CLIndoorTilePrefetcher *)self backgroundSessionQueue];
  session = [backgroundSessionQueue session];
  [session getTasksWithCompletionHandler:&stru_10044B808];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = prefetchCopy;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v11)
  {
    v32 = 0;
    v33 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        floorUuid = [v14 floorUuid];
        venueUuid = [v14 venueUuid];
        locationContext = [v14 locationContext];
        relevancy = [v14 relevancy];
        v19 = -[CLIndoorTilePrefetcher scheduleDownloadForFloorMetadata:inVenue:withContext:lastRelevant:allowCellularDownload:onSession:withResumeData:withRequestUUID:](self, "scheduleDownloadForFloorMetadata:inVenue:withContext:lastRelevant:allowCellularDownload:onSession:withResumeData:withRequestUUID:", floorUuid, venueUuid, locationContext, relevancy, [v14 allowCellularDownload], 0, 0, 0);

        if (qword_10045B070 != -1)
        {
          sub_100387C10();
        }

        v20 = qword_10045B078;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          venueUuid2 = [v14 venueUuid];
          v22 = venueUuid2;
          uTF8String = [venueUuid2 UTF8String];
          priority = [v14 priority];
          relevancy2 = [v14 relevancy];
          [relevancy2 timeIntervalSinceNow];
          v27 = v26;
          allowCellularDownload = [v14 allowCellularDownload];
          *buf = 136381699;
          *v41 = uTF8String;
          *&v41[8] = 1026;
          *v42 = v19;
          *&v42[4] = 2050;
          *&v42[6] = priority;
          *v43 = 2050;
          *&v43[2] = v27 / 3600.0;
          v44 = 1026;
          v45 = allowCellularDownload;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "@TileFetch, reqcheck, %{private}s, %{public}d, priority, %{public}ld, relevancy, %{public}.1f, cell, %{public}d", buf, 0x2Cu);
        }

        if (v19 == 2)
        {
          LODWORD(v33) = v33 + 1;
        }

        else if (v19 == 1)
        {
          ++HIDWORD(v32);
        }

        else if (v19)
        {
          if (qword_10045B070 != -1)
          {
            sub_100387C10();
          }

          ++HIDWORD(v33);
          v29 = qword_10045B078;
          if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240192;
            *v41 = v19;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "@TileFetch, unxpected, scheduled, %{public}d, #Warning", buf, 8u);
          }
        }

        else
        {
          LODWORD(v32) = v32 + 1;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v11);
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
  }

  v30 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241216;
    *v41 = v32;
    *&v41[4] = 1026;
    *&v41[6] = HIDWORD(v32);
    *v42 = 1026;
    *&v42[2] = v33;
    *&v42[6] = 1026;
    *&v42[8] = 0;
    *&v42[12] = 1026;
    *v43 = HIDWORD(v33);
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "@TileFetch, scheduled, prefetch, mtnsu, %{public}d, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x20u);
  }
}

- (void)cancelDownloadTasksMatching:(id)matching onSession:(id)session
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10036DC4C;
  v6[3] = &unk_10044B858;
  matchingCopy = matching;
  v5 = matchingCopy;
  [session getTasksWithCompletionHandler:v6];
}

- (void)cancelInflightBackgroundTasksMatching:(id)matching
{
  matchingCopy = matching;
  if (self->_backgroundSessionQueue)
  {
    if (qword_10045B070 == -1)
    {
      v5 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        backgroundSessionQueue = [(CLIndoorTilePrefetcher *)self backgroundSessionQueue];
        session = [backgroundSessionQueue session];
        [(CLIndoorTilePrefetcher *)self cancelDownloadTasksMatching:matchingCopy onSession:session];

        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C38();
      v5 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Building list of in-flight background downloads to cancel", v8, 2u);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)cancelInflightForegroundTasksMatching:(id)matching
{
  matchingCopy = matching;
  if (*&self->_availableFloorForegroundSessionQueue != 0)
  {
    if (qword_10045B070 == -1)
    {
      v5 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        unavailableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)self unavailableFloorForegroundSessionQueue];
        session = [unavailableFloorForegroundSessionQueue session];
        [(CLIndoorTilePrefetcher *)self cancelDownloadTasksMatching:matchingCopy onSession:session];

        availableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)self availableFloorForegroundSessionQueue];
        session2 = [availableFloorForegroundSessionQueue session];
        [(CLIndoorTilePrefetcher *)self cancelDownloadTasksMatching:matchingCopy onSession:session2];

        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C38();
      v5 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Building list of in-flight foreground downloads to cancel", v10, 2u);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)scheduleForegroundDownloadForFloors:(id)floors withRequestUUID:(id)d
{
  floorsCopy = floors;
  dCopy = d;
  v36 = floorsCopy;
  v6 = [floorsCopy count];
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v7 = qword_10045B078;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 67240451;
    v49 = v6;
    v50 = 2113;
    *v51 = uUIDString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Processing %{public}d foreground fetch requests for request UUID %{private}@", buf, 0x12u);
  }

  if (v6)
  {
    [(CLIndoorTilePrefetcher *)self cancelInflightBackgroundTasksMatching:floorsCopy];
    [(CLIndoorTilePrefetcher *)self cancelInflightForegroundTasksMatching:floorsCopy];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = floorsCopy;
    v9 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v9)
    {
      v43 = 0;
      v37 = 0;
      v38 = 0;
      v40 = *v45;
      do
      {
        v10 = 0;
        do
        {
          if (*v45 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v44 + 1) + 8 * v10);
          if ([v11 hasCompleteFloor])
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          floorUuid = [v11 floorUuid];
          venueUuid = [v11 venueUuid];
          locationContext = [v11 locationContext];
          relevancy = [v11 relevancy];
          v17 = -[CLIndoorTilePrefetcher scheduleDownloadForFloorMetadata:inVenue:withContext:lastRelevant:allowCellularDownload:onSession:withResumeData:withRequestUUID:](self, "scheduleDownloadForFloorMetadata:inVenue:withContext:lastRelevant:allowCellularDownload:onSession:withResumeData:withRequestUUID:", floorUuid, venueUuid, locationContext, relevancy, [v11 allowCellularDownload], v12, 0, dCopy);

          if (qword_10045B070 != -1)
          {
            sub_100387C10();
          }

          v18 = qword_10045B078;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            venueUuid2 = [v11 venueUuid];
            v20 = venueUuid2;
            uTF8String = [venueUuid2 UTF8String];
            if ([v11 locationContext] == 1)
            {
              v22 = 82;
            }

            else
            {
              v22 = 73;
            }

            priority = [v11 priority];
            relevancy2 = [v11 relevancy];
            [relevancy2 timeIntervalSinceNow];
            v26 = v25;
            allowCellularDownload = [v11 allowCellularDownload];
            *buf = 67241474;
            v49 = v17;
            v50 = 2082;
            *v51 = uTF8String;
            *&v51[8] = 1026;
            *v52 = v22;
            *&v52[4] = 2050;
            v53 = priority;
            v54 = 2050;
            v55 = v26 / 3600.0;
            v56 = 1026;
            v57 = allowCellularDownload;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "@TileFetch, reqcheck, %{public}d, %{public}s, %{public}c, priority, %{public}ld, relevancy, %{public}.1f, cell, %{public}d", buf, 0x32u);
          }

          if (v17 == 2)
          {
            LODWORD(v38) = v38 + 1;
          }

          else if (v17 == 1)
          {
            ++HIDWORD(v37);
          }

          else if (v17)
          {
            if (qword_10045B070 != -1)
            {
              sub_100387C10();
            }

            ++HIDWORD(v38);
            v29 = qword_10045B078;
            if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67240192;
              v49 = v17;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "@TileFetch, unxpected, scheduled, %{public}d, #Warning", buf, 8u);
            }
          }

          else
          {
            if ([v11 locationContext] == 1)
            {
              v28 = v37 + 1;
            }

            else
            {
              v28 = v37;
            }

            LODWORD(v37) = v28;
          }

          locationContext2 = [v11 locationContext];
          v31 = locationContext2 == 1;
          if (locationContext2 == 1)
          {
            v32 = HIDWORD(v43) + 1;
          }

          else
          {
            v32 = HIDWORD(v43);
          }

          if (v17 != 2)
          {
            v31 = 0;
          }

          LODWORD(v43) = v43 + v31;
          HIDWORD(v43) = v32;
          v10 = v10 + 1;
        }

        while (v9 != v10);
        v9 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v9);
    }

    else
    {
      v43 = 0;
      v37 = 0;
      v38 = 0;
    }

    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v34 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67241216;
      v49 = v37;
      v50 = 1026;
      *v51 = HIDWORD(v37);
      *&v51[4] = 1026;
      *&v51[6] = v38;
      *v52 = 1026;
      *&v52[2] = 0;
      LOWORD(v53) = 1026;
      *(&v53 + 2) = HIDWORD(v38);
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "@TileFetch, scheduled, foreground, mtnsu, %{public}d, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x20u);
    }

    if (HIDWORD(v43))
    {
      if (qword_10045B070 != -1)
      {
        sub_100387C10();
      }

      v35 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240704;
        v49 = HIDWORD(v43) == v43;
        v50 = 1026;
        *v51 = HIDWORD(v43);
        *&v51[4] = 1026;
        *&v51[6] = 100 * v43 / SHIDWORD(v43);
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Wifi2Metric, localize, %{public}d, groups, %{public}d, pct, %{public}d", buf, 0x14u);
      }

      AnalyticsSendEventLazy();
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v33 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "WARNING: Received empty foreground download request", buf, 2u);
    }

    [(CLIndoorTilePrefetcher *)self notifyDelegateForegroundTaskCompleted:0];
  }
}

- (void)requestForegroundFetchForFloors:(id)floors withRequestUUID:(id)d
{
  floorsCopy = floors;
  dCopy = d;
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    v10 = 138477827;
    v11 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Request foreground fetch requests for request UUID %{private}@", &v10, 0xCu);
  }

  [(CLIndoorTilePrefetcher *)self scheduleForegroundDownloadForFloors:floorsCopy withRequestUUID:dCopy];
}

- (void)allDownloadItemsCompleted
{
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "TileFetch, allDownloadItemsCompleted", v4, 2u);
  }

LABEL_4:
  [(CLIndoorTilePrefetcher *)self notifyDelegatePrefetchComplete];
}

- (void)scheduleDownloadForRequest:(id)request withResumeData:(id)data withSession:(int)session andExpectedByteSize:(int64_t)size
{
  requestCopy = request;
  dataCopy = data;
  v12 = requestCopy;
  v31 = dataCopy;
  v30 = [IndoorRequestInfo indoorRequestInfoFromRequest:requestCopy];
  session = [v30 session];
  venueUuid = [v30 venueUuid];
  *(&v32.__r_.__value_.__s + 23) = 0;
  v32.__r_.__value_.__s.__data_[0] = 0;
  if (session)
  {
    if ([v30 session] == 1)
    {
      v14 = "with available floor";
    }

    else
    {
      v14 = "with unavailable floor";
    }

    std::string::assign(&v32, v14);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
  }

  v15 = qword_10045B078;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    sessionCopy = session;
    v28 = requestCopy;
    if (session)
    {
      v17 = "foreground";
    }

    else
    {
      v17 = "background";
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__r_.__value_.__r.__words[0];
    }

    if ([v30 context])
    {
      v19 = @"Regional";
    }

    else
    {
      v19 = @"Indoor";
    }

    v20 = [v28 URL];
    v21 = [v20 description];
    *buf = 136447235;
    *&buf[4] = v17;
    v34 = 2082;
    v35 = v18;
    v36 = 2113;
    v37 = venueUuid;
    v38 = 2113;
    v39 = v19;
    v40 = 2113;
    v41 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Scheduling %{public}s download %{public}s of '%{private}@' (%{private}@): %{private}@", buf, 0x34u);

    v12 = v28;
    session = sessionCopy;
  }

  if (!session)
  {
    backgroundSessionQueue = [(CLIndoorTilePrefetcher *)self backgroundSessionQueue];
    v26 = [[CLQueuedNSURLRequest alloc] initWithRequest:v12 withPriority:1];
    [backgroundSessionQueue resumeRequestIfAllowedOrEnqueue:v26];
    goto LABEL_33;
  }

  selfCopy = self;
  v23 = selfCopy;
  if (session == 2)
  {
    unavailableFloorForegroundSessionQueue = [(CLIndoorTilePrefetcher *)selfCopy unavailableFloorForegroundSessionQueue];
  }

  else
  {
    if (session == 1)
    {
      [(CLIndoorTilePrefetcher *)selfCopy availableFloorForegroundSessionQueue];
    }

    else
    {
      [(CLIndoorTilePrefetcher *)selfCopy backgroundSessionQueue];
    }
    unavailableFloorForegroundSessionQueue = ;
  }

  backgroundSessionQueue = unavailableFloorForegroundSessionQueue;

  if (!backgroundSessionQueue)
  {
    sub_100387EC4();

    abort_report_np();
    __break(1u);
LABEL_37:
    sub_100387C10();
LABEL_30:
    v27 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Using resume data", buf, 2u);
    }

    goto LABEL_32;
  }

  if (v31)
  {
    if (qword_10045B070 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

LABEL_32:
  v26 = [[CLQueuedNSURLRequest alloc] initWithRequest:v12 withPriority:0 andResumeData:v31 andCountOfBytesClientExpectsToReceive:size];
  [backgroundSessionQueue resumeRequestIfAllowedOrEnqueue:v26];
LABEL_33:

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

- (BOOL)shouldPrefetchFloorMetadataForFloorUuid:(const void *)uuid forSession:(int)session withLocationContext:(int64_t)context
{
  delegate = [(CLIndoorTilePrefetcher *)self delegate];
  v9 = delegate;
  if (session || context)
  {
    v11 = [delegate tilePrefetchShouldPrefetchMetadataForFloor:sub_100118234(uuid) withLocationContext:context];

    return v11;
  }

  else
  {

    return 1;
  }
}

- (void)runFromNetworkCallback:(id)callback
{
  callbackCopy = callback;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10036CED8;
  v18[4] = sub_10036CEE8;
  sel_getName(a2);
  v19 = os_transaction_create();
  downloadQ = [(CLIndoorTilePrefetcher *)self downloadQ];
  maxConcurrentOperationCount = [downloadQ maxConcurrentOperationCount];

  if (maxConcurrentOperationCount < 2)
  {
    v10 = objc_autoreleasePoolPush();
    downloadQ2 = [(CLIndoorTilePrefetcher *)self downloadQ];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003700B0;
    v12[3] = &unk_10044B8A0;
    v13 = callbackCopy;
    v14 = v18;
    [downloadQ2 addOperationWithBlock:v12];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    downloadQ3 = [(CLIndoorTilePrefetcher *)self downloadQ];
    underlyingQueue = [downloadQ3 underlyingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100370050;
    block[3] = &unk_10044B8A0;
    v16 = callbackCopy;
    v17 = v18;
    dispatch_barrier_async(underlyingQueue, block);
  }

  _Block_object_dispose(v18, 8);
}

- (void)notifyDelegateForegroundFetchComplete
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10036CED8;
  v8[4] = sub_10036CEE8;
  sel_getName(a2);
  v9 = os_transaction_create();
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  if (!delegateQ)
  {
    if (qword_10045B070 == -1)
    {
      v4 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C10();
      v4 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "delegate queue is no longer valid. Ignoring callback", location, 2u);
    goto LABEL_6;
  }

  objc_initWeak(location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003702B4;
  v5[3] = &unk_10044B8C8;
  objc_copyWeak(&v6, location);
  v5[4] = v8;
  dispatch_async(delegateQ, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(location);
LABEL_6:

  _Block_object_dispose(v8, 8);
}

- (void)onQueueNotifyDelegateForegroundFetchComplete
{
  delegate = [(CLIndoorTilePrefetcher *)self delegate];
  [delegate tileForegroundFetchFinishedAllDownloads];
}

- (void)notifyDelegatePrefetchComplete
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10036CED8;
  v8[4] = sub_10036CEE8;
  sel_getName(a2);
  v9 = os_transaction_create();
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  if (!delegateQ)
  {
    if (qword_10045B070 == -1)
    {
      v4 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C10();
      v4 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "delegate queue is no longer valid. Ignoring callback", location, 2u);
    goto LABEL_6;
  }

  objc_initWeak(location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100370528;
  v5[3] = &unk_10044B8C8;
  objc_copyWeak(&v6, location);
  v5[4] = v8;
  dispatch_async(delegateQ, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(location);
LABEL_6:

  _Block_object_dispose(v8, 8);
}

- (void)onQueueNotifyDelegatePrefetchComplete
{
  delegate = [(CLIndoorTilePrefetcher *)self delegate];
  [delegate tilePrefetchFinishedAllDownloads];
}

- (void)notifyDelegateIfPrefetchComplete
{
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);

  objc_initWeak(&location, self);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10036CED8;
  v7[4] = sub_10036CEE8;
  sel_getName(a2);
  v8 = os_transaction_create();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100370764;
  v5[3] = &unk_10044B8C8;
  objc_copyWeak(&v6, &location);
  v5[4] = v7;
  [(CLIndoorTilePrefetcher *)self runFromNetworkCallback:v5];
  objc_destroyWeak(&v6);
  _Block_object_dispose(v7, 8);

  objc_destroyWeak(&location);
}

- (void)notifyDelegateForegroundTaskCompleted:(id)completed
{
  completedCopy = completed;
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);

  Name = sel_getName(a2);
  sub_100364B68(v9, Name);
  delegate = [(CLIndoorTilePrefetcher *)self delegate];
  [delegate prefetcher:self didFinishForegroundRequest:completedCopy];

  sub_100364D88(v9);
}

- (void)notifyDelegateForegroundTaskCompleted:(id)completed withError:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);

  Name = sel_getName(a2);
  sub_100364B68(v12, Name);
  delegate = [(CLIndoorTilePrefetcher *)self delegate];
  [delegate prefetcher:self didFinishForegroundRequest:completedCopy withError:errorCopy];

  sub_100364D88(v12);
}

- (void)sessionWillSendRequestForEstablishedConnection:(id)connection task:(id)task completionHandler:(id)handler
{
  connectionCopy = connection;
  taskCopy = task;
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10036CED8;
  v21[4] = sub_10036CEE8;
  sel_getName(a2);
  v22 = os_transaction_create();
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  if (!delegateQ)
  {
    handlerCopy[2](handlerCopy, 0);
    if (qword_10045B070 == -1)
    {
      v13 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C10();
      v13 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "delegate queue is no longer valid. Ignoring callback", location, 2u);
    goto LABEL_6;
  }

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100370ED4;
  block[3] = &unk_10044B958;
  objc_copyWeak(&v19, location);
  v15 = connectionCopy;
  v16 = taskCopy;
  v17 = handlerCopy;
  v18 = v21;
  dispatch_async(delegateQ, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
LABEL_6:

  _Block_object_dispose(v21, 8);
}

- (void)onQueueSessionWillSendRequestForEstablishedConnection:(id)connection task:(id)task completionHandler:(id)handler
{
  connectionCopy = connection;
  taskCopy = task;
  handlerCopy = handler;
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);

  v10 = objc_autoreleasePoolPush();
  v11 = [IndoorRequestInfo indoorRequestInfoFromTask:taskCopy];
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v12 = qword_10045B078;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v11 description];
    *buf = 138477827;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Download of %{private}@ starting", buf, 0xCu);
  }

  venueUuid = [v11 venueUuid];
  v15 = venueUuid;
  if (venueUuid)
  {
    [venueUuid ps_STLString];
  }

  else
  {
    v54 = 0uLL;
    v55 = 0;
  }

  floorUuid = [v11 floorUuid];
  v17 = floorUuid;
  if (floorUuid)
  {
    [floorUuid ps_STLString];
  }

  else
  {
    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
  }

  delegate = [(CLIndoorTilePrefetcher *)self delegate];
  if ((sub_100372C44(v11, self->_now) & 1) == 0)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C10();
    }

    v20 = qword_10045B078;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = delegate;
      if (v55 >= 0)
      {
        v22 = &v54;
      }

      else
      {
        v22 = v54;
      }

      lastRelevant = [v11 lastRelevant];
      [lastRelevant timeIntervalSinceNow];
      *buf = 136380931;
      *&buf[4] = v22;
      v57 = 2050;
      v58 = v24 / 3600.0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "TileFetch, reqcb, %{private}s, tooold, %{public}.1f", buf, 0x16u);

      delegate = v21;
    }

    v5 = 1;
LABEL_23:
    if (qword_10045B070 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

  kind = [v11 kind];
  if (kind != 1)
  {
    if (!kind)
    {
      sub_1001181E4(buf, v52);
    }

    goto LABEL_23;
  }

  if ([delegate tilePrefetchShouldPrefetchTileDataForFloor:v52])
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  if (qword_10045B070 != -1)
  {
LABEL_51:
    sub_100387C10();
  }

LABEL_24:
  v25 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    v26 = &v54;
    if (v55 < 0)
    {
      v26 = v54;
    }

    *buf = 136380931;
    *&buf[4] = v26;
    v57 = 1026;
    LODWORD(v58) = v5;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "TileFetch, reqcb, %{private}s, drop, %{public}d", buf, 0x12u);
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      if (qword_10045B070 != -1)
      {
        sub_100387C10();
      }

      v29 = qword_10045B078;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v11 description];
        *buf = 138477827;
        *&buf[4] = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Cancelling download of %{private}@ as it's too old", buf, 0xCu);
      }

      [taskCopy cancel];
      handlerCopy[2](handlerCopy, 0);
    }

    else if (!v5)
    {
      if (qword_10045B070 != -1)
      {
        sub_100387C10();
      }

      v27 = qword_10045B078;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v11 description];
        *buf = 138477827;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Continuing download of %{private}@.  Determined to be necessary", buf, 0xCu);
      }

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10037190C;
      v49[3] = &unk_100432620;
      v51 = handlerCopy;
      v50 = connectionCopy;
      [(CLIndoorTilePrefetcher *)self runFromNetworkCallback:v49];
    }

    goto LABEL_66;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C10();
  }

  v31 = qword_10045B078;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v11 description];
    *buf = 138477827;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Cancelling download of %{private}@ as it's in the DB", buf, 0xCu);
  }

  if (SHIBYTE(v53) < 0)
  {
    sub_100003228(v47, v52[0], v52[1]);
  }

  else
  {
    *v47 = *v52;
    v48 = v53;
  }

  if (SHIBYTE(v55) < 0)
  {
    sub_100003228(__p, v54, *(&v54 + 1));
  }

  else
  {
    *__p = v54;
    v46 = v55;
  }

  *&v33 = sub_100261BAC(buf, v47, __p, +[CLLocationContextConversions fromCLPipelinedLocationContext:](CLLocationContextConversions, "fromCLPipelinedLocationContext:", [v11 context])).n128_u64[0];
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_62:
    operator delete(v47[0]);
    goto LABEL_58;
  }

  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_62;
  }

LABEL_58:
  lastRelevant2 = [v11 lastRelevant];
  [delegate tilePrefetchForTileId:buf updateRelevancy:lastRelevant2];

  [taskCopy cancel];
  if ([v11 kind])
  {
    if ([v11 session])
    {
      [(CLIndoorTilePrefetcher *)self notifyDelegateForegroundTaskCompleted:v11];
    }
  }

  else
  {
    floorUuid2 = [v11 floorUuid];
    venueUuid2 = [v11 venueUuid];
    context = [v11 context];
    lastRelevant3 = [v11 lastRelevant];
    allowCellularDownloadTile = [v11 allowCellularDownloadTile];
    session = [v11 session];
    requestUUID = [v11 requestUUID];
    [(CLIndoorTilePrefetcher *)self scheduleDownloadForTile:floorUuid2 inVenue:venueUuid2 withContext:context lastRelevant:lastRelevant3 allowCellularDownload:allowCellularDownloadTile onSession:session withResumeData:0 withRequestUUID:requestUUID];
  }

  handlerCopy[2](handlerCopy, 0);
  if (v61 < 0)
  {
    operator delete(v60);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((v59 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(*buf);
LABEL_66:

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_70:
    operator delete(v54);
    goto LABEL_68;
  }

  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_70;
  }

LABEL_68:

  objc_autoreleasePoolPop(v10);
}

- (void)session:(id)session didFinishDownloadTask:(id)task toPath:(id)path inTempPath:(shared_ptr<TemporaryPath>)tempPath
{
  var0 = tempPath.var0;
  sessionCopy = session;
  taskCopy = task;
  pathCopy = path;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10036CED8;
  v28[4] = sub_10036CEE8;
  sel_getName(a2);
  v29 = os_transaction_create();
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  if (!delegateQ)
  {
    if (qword_10045B070 == -1)
    {
      v19 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_100387C10();
      v19 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }
    }

    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "delegate queue is no longer valid. Ignoring callback", location, 2u);
    goto LABEL_11;
  }

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100371BD8;
  block[3] = &unk_10044B980;
  objc_copyWeak(v25, location);
  v21 = sessionCopy;
  v22 = taskCopy;
  v15 = pathCopy;
  v17 = *var0;
  v16 = *(var0 + 1);
  v23 = v15;
  v25[1] = v17;
  v26 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v28;
  dispatch_async(delegateQ, block);
  v18 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  objc_destroyWeak(v25);
  objc_destroyWeak(location);
LABEL_11:

  _Block_object_dispose(v28, 8);
}

- (void)onQueueSession:(id)session didFinishDownloadTask:(id)task toPath:(id)path inTempPath:(shared_ptr<TemporaryPath>)tempPath
{
  sessionCopy = session;
  taskCopy = task;
  pathCopy = path;
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);

  context = objc_autoreleasePoolPush();
  v11 = [IndoorRequestInfo indoorRequestInfoFromTask:taskCopy];
  response = [taskCopy response];
  uTF8String = [pathCopy UTF8String];
  v13 = strlen(uTF8String);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v33 = v13;
  if (v13)
  {
    memmove(&__dst, uTF8String, v13);
  }

  *(&__dst + v14) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v15 = qword_10045B078;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v11 description];
    v17 = v16;
    p_dst = &__dst;
    if (v33 < 0)
    {
      p_dst = __dst;
    }

    *buf = 138478083;
    v35 = v16;
    v36 = 2081;
    v37 = p_dst;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "download complete: %{private}@. tmpfile = %{private}s", buf, 0x16u);
  }

  [WeakRetained tilePrefetchDidDownload:&__dst forRequest:v11];
  kind = [v11 kind];
  if (kind)
  {
    if (kind == 1)
    {
      if ([v11 session])
      {
        [(CLIndoorTilePrefetcher *)self notifyDelegateForegroundTaskCompleted:v11];
      }

      else
      {
        [(CLIndoorTilePrefetcher *)self notifyDelegateIfPrefetchComplete];
      }
    }
  }

  else
  {
    floorUuid = [v11 floorUuid];
    venueUuid = [v11 venueUuid];
    context = [v11 context];
    lastRelevant = [v11 lastRelevant];
    allowCellularDownloadTile = [v11 allowCellularDownloadTile];
    session = [v11 session];
    requestUUID = [v11 requestUUID];
    [(CLIndoorTilePrefetcher *)self scheduleDownloadForTile:floorUuid inVenue:venueUuid withContext:context lastRelevant:lastRelevant allowCellularDownload:allowCellularDownloadTile onSession:session withResumeData:0 withRequestUUID:requestUUID];
  }

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  objc_autoreleasePoolPop(context);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v30 = taskCopy;
  v27 = [IndoorRequestInfo indoorRequestInfoFromTask:taskCopy];
  if (sub_100372C44(v27, self->_now))
  {
    response = [taskCopy response];
    if ([response statusCode] >= 200 && objc_msgSend(response, "statusCode") < 400)
    {
      operator new();
    }

    if (qword_10045B070 != -1)
    {
      sub_100387C38();
    }

    v10 = qword_10045B078;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v27 description];
      *buf = 138478083;
      v32 = v11;
      v33 = 2050;
      statusCode = [response statusCode];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Download of %{private}@ failed with response code %{public}ld. Synthesizing error", buf, 0x16u);
    }

    statusCode2 = [response statusCode];
    v35[0] = @"response";
    v13 = response;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = +[NSNull null];
    }

    v19 = v15;

    v36[0] = v19;
    v35[1] = NSURLErrorKey;
    currentRequest = [taskCopy currentRequest];
    v21 = [currentRequest URL];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = +[NSNull null];
    }

    v24 = v23;

    v36[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    v26 = [NSError errorWithDomain:@"indoor tile prefetch" code:statusCode2 userInfo:v25];

    [(CLIndoorTilePrefetcher *)self URLSession:sessionCopy task:v30 didCompleteWithError:v26];
    v18 = v14;
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C38();
    }

    v16 = qword_10045B078;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v27 description];
      *buf = 138477827;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Downloaded %{private}@ too irrelevant to accept into db", buf, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"foobar" code:-1 userInfo:&__NSDictionary0__struct];
    [(CLIndoorTilePrefetcher *)self URLSession:sessionCopy task:taskCopy didCompleteWithError:v18];
  }
}

- (void)sessionDidCompleteTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_10036CED8;
  v17[4] = sub_10036CEE8;
  sel_getName(a2);
  v18 = os_transaction_create();
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  if (!delegateQ)
  {
    if (qword_10045B070 == -1)
    {
      v10 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387C10();
      v10 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "delegate queue is no longer valid. Ignoring callback", location, 2u);
    goto LABEL_6;
  }

  objc_initWeak(location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100373128;
  v11[3] = &unk_10044B9B8;
  objc_copyWeak(&v15, location);
  v12 = taskCopy;
  v13 = errorCopy;
  v14 = v17;
  dispatch_async(delegateQ, v11);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_6:

  _Block_object_dispose(v17, 8);
}

- (void)onQueueSessionDidCompleteTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_V2(delegateQ);

  response = [taskCopy response];
  statusCode = [response statusCode];

  if (errorCopy || statusCode != 200)
  {
    sub_100364B68(buf, "prefetch didCompleteWithError:");
    context = objc_autoreleasePoolPush();
    v13 = [IndoorRequestInfo indoorRequestInfoFromTask:taskCopy];
    if (errorCopy)
    {
      v4 = [errorCopy description];
      v14 = v4;
      uTF8String = [v4 UTF8String];
      v16 = strlen(uTF8String);
      if (v16 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      uTF8String = "no error object";
      v16 = strlen("no error object");
      if (v16 < 0x7FFFFFFFFFFFFFF8)
      {
LABEL_9:
        v17 = v16;
        if (v16 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v16;
        if (v16)
        {
          memmove(&__dst, uTF8String, v16);
          __dst.__r_.__value_.__s.__data_[v17] = 0;
          if (!errorCopy)
          {
            goto LABEL_16;
          }
        }

        else
        {
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (!errorCopy)
          {
LABEL_16:
            std::to_string(&v42, statusCode);
            v18 = std::string::insert(&v42, 0, ". status = ");
            v19 = *&v18->__r_.__value_.__l.__data_;
            v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
            *&v43.__r_.__value_.__l.__data_ = v19;
            v18->__r_.__value_.__l.__size_ = 0;
            v18->__r_.__value_.__r.__words[2] = 0;
            v18->__r_.__value_.__r.__words[0] = 0;
            v20 = std::string::append(&v43, ": ");
            v21 = *&v20->__r_.__value_.__l.__data_;
            v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
            *&v48.__r_.__value_.__l.__data_ = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            v22 = [NSHTTPURLResponse localizedStringForStatusCode:statusCode];
            v23 = v22;
            v24 = std::string::append(&v48, [v22 UTF8String]);
            v25 = *&v24->__r_.__value_.__l.__data_;
            v45 = v24->__r_.__value_.__r.__words[2];
            *__p = v25;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            if (v45 >= 0)
            {
              v26 = __p;
            }

            else
            {
              v26 = __p[0];
            }

            if (v45 >= 0)
            {
              v27 = HIBYTE(v45);
            }

            else
            {
              v27 = __p[1];
            }

            std::string::append(&__dst, v26, v27);
            if (SHIBYTE(v45) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_26:
                if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_27;
                }

LABEL_33:
                operator delete(v42.__r_.__value_.__l.__data_);
LABEL_27:
                session = [v13 session];
                floorUuid = [v13 floorUuid];
                v30 = floorUuid;
                if (floorUuid)
                {
                  [floorUuid ps_STLString];
                }

                else
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  v45 = 0;
                }

                if ([errorCopy code] == -999)
                {
                  if (qword_10045B070 != -1)
                  {
                    sub_100387C10();
                  }

                  v31 = qword_10045B078;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    v32 = [v13 description];
                    v33 = v32;
                    p_dst = &__dst;
                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      p_dst = __dst.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v48.__r_.__value_.__l.__data_) = 138478083;
                    *(v48.__r_.__value_.__r.__words + 4) = v32;
                    WORD2(v48.__r_.__value_.__r.__words[1]) = 2081;
                    *(&v48.__r_.__value_.__r.__words[1] + 6) = p_dst;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "WARNING: Download of %{private}@ was cancelled: %{private}s", &v48, 0x16u);
                  }
                }

                else if ([errorCopy code] == -1001)
                {
                  if (qword_10045B070 != -1)
                  {
                    sub_100387C10();
                  }

                  v31 = qword_10045B078;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    v35 = [v13 description];
                    v36 = v35;
                    v37 = &__dst;
                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v37 = __dst.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v48.__r_.__value_.__l.__data_) = 138478083;
                    *(v48.__r_.__value_.__r.__words + 4) = v35;
                    WORD2(v48.__r_.__value_.__r.__words[1]) = 2081;
                    *(&v48.__r_.__value_.__r.__words[1] + 6) = v37;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "WARNING: Download of %{private}@ timed out: %{private}s", &v48, 0x16u);
                  }
                }

                else
                {
                  if (qword_10045B070 != -1)
                  {
                    sub_100387C10();
                  }

                  v31 = qword_10045B078;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v38 = [v13 description];
                    v39 = v38;
                    v40 = &__dst;
                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v40 = __dst.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v48.__r_.__value_.__l.__data_) = 138478083;
                    *(v48.__r_.__value_.__r.__words + 4) = v38;
                    WORD2(v48.__r_.__value_.__r.__words[1]) = 2081;
                    *(&v48.__r_.__value_.__r.__words[1] + 6) = v40;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Download of %{private}@ failed: %{private}s", &v48, 0x16u);
                  }
                }

                if (session)
                {
                  [(CLIndoorTilePrefetcher *)self notifyDelegateForegroundTaskCompleted:v13 withError:errorCopy];
                }

                else
                {
                  [(CLIndoorTilePrefetcher *)self notifyDelegateIfPrefetchComplete];
                }

                if (SHIBYTE(v45) < 0)
                {
                  operator delete(__p[0]);
                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_60:

                  objc_autoreleasePoolPop(context);
                  sub_100364D88(buf);
                  goto LABEL_61;
                }

                operator delete(__dst.__r_.__value_.__l.__data_);
                goto LABEL_60;
              }
            }

            else if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_26;
            }

            operator delete(v43.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_33;
          }
        }

        goto LABEL_16;
      }
    }

    sub_10000D39C();
  }

  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v12 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "NSURLSessionDelegate didCompleteWithError: invoked on a successfully completed task", buf, 2u);
  }

LABEL_61:
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [sessionCopy description];
    v10 = [errorCopy description];
    v14 = 138543619;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Session %{public}@ invalidated with error: %{private}@", &v14, 0x16u);
  }

  delegateQ = [(CLIndoorTilePrefetcher *)self delegateQ];
  dispatch_assert_queue_not_V2(delegateQ);

  sessionInvalidationGroup = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];
  LOBYTE(delegateQ) = sessionInvalidationGroup == 0;

  if ((delegateQ & 1) == 0)
  {
    sessionInvalidationGroup2 = [(CLIndoorTilePrefetcher *)self sessionInvalidationGroup];
    dispatch_group_leave(sessionInvalidationGroup2);
  }
}

- (void)session:(id)session didResumeRequest:(id)request withRemainingRequests:(unint64_t)requests
{
  sessionCopy = session;
  requestCopy = request;
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    v10 = 138478083;
    v11 = requestCopy;
    v12 = 2050;
    requestsCopy = requests;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Resuming request: %{private}@ with %{public}lu remaining", &v10, 0x16u);
  }
}

- (CLIndoorTilePrefetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQ
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateQ);

  return WeakRetained;
}

@end