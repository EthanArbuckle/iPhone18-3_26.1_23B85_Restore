@interface KTFetchServerOptInStatus
- (KTFetchServerOptInStatus)initWithDependencies:(id)dependencies reason:(id)reason retryScheduler:(id)scheduler;
- (void)groupStart;
- (void)retry;
@end

@implementation KTFetchServerOptInStatus

- (KTFetchServerOptInStatus)initWithDependencies:(id)dependencies reason:(id)reason retryScheduler:(id)scheduler
{
  dependenciesCopy = dependencies;
  reasonCopy = reason;
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = KTFetchServerOptInStatus;
  v11 = [(KTGroupOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(KTFetchServerOptInStatus *)v11 setDeps:dependenciesCopy];
    [(KTFetchServerOptInStatus *)v12 setRetryScheduler:schedulerCopy];
    [(KTFetchServerOptInStatus *)v12 setReason:reasonCopy];
  }

  return v12;
}

- (void)groupStart
{
  deps = [(KTFetchServerOptInStatus *)self deps];
  stateMonitor = [deps stateMonitor];
  ktStatus = [stateMonitor ktStatus];

  v6 = [ktStatus idsAccountStatus] == 3;
  if (_os_feature_enabled_impl())
  {
    v6 = [ktStatus idsAccountStatus] != 0;
  }

  if ([ktStatus optIn] == 2 || objc_msgSend(ktStatus, "accountStatus") != 4 && v6)
  {
    deps2 = [(KTFetchServerOptInStatus *)self deps];
    accountOperations = [deps2 accountOperations];
    v31 = 0;
    v9 = [accountOperations primaryAccount:&v31];
    v10 = v31;

    if (v9)
    {
      v11 = objc_alloc_init(NSOperation);
      [(KTFetchServerOptInStatus *)self setFinishedOp:v11];

      finishedOp = [(KTFetchServerOptInStatus *)self finishedOp];
      [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

      username = [v9 username];
      v13 = [IDSURI URIWithUnprefixedURI:username];
      objc_initWeak(location, self);
      deps3 = [(KTFetchServerOptInStatus *)self deps];
      contextStore = [deps3 contextStore];
      deps4 = [(KTFetchServerOptInStatus *)self deps];
      logClient = [deps4 logClient];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10003A37C;
      v28[3] = &unk_100319B30;
      objc_copyWeak(&v30, location);
      v18 = v10;
      v19 = kKTApplicationIdentifierIDS;
      v20 = v13;
      v29 = v20;
      [contextStore contextForApplication:v19 logClient:logClient fetchState:1 completionHandler:v28];

      v10 = v18;
      objc_destroyWeak(&v30);
      objc_destroyWeak(location);
    }

    else
    {
      deps5 = [(KTFetchServerOptInStatus *)self deps];
      stateMonitor2 = [deps5 stateMonitor];
      [stateMonitor2 setServerOptInState:2];

      if (qword_10038BCC0 != -1)
      {
        sub_100248E6C();
      }

      v23 = qword_10038BCC8;
      if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v10;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "KTFetchServerOptInStatus: failed to check server opt-in, no account: %@", location, 0xCu);
      }
    }
  }

  else
  {
    deps6 = [(KTFetchServerOptInStatus *)self deps];
    stateMonitor3 = [deps6 stateMonitor];
    [stateMonitor3 setServerOptInState:2];

    if (qword_10038BCC0 != -1)
    {
      sub_100248E58();
    }

    v26 = qword_10038BCC8;
    if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "KTFetchServerOptInStatus: CDP is ready and we found an opt-in state, skipping KT server opt-in state", location, 2u);
    }
  }
}

- (void)retry
{
  if (qword_10038BCC0 != -1)
  {
    sub_100248EE4();
  }

  v3 = qword_10038BCC8;
  if (os_log_type_enabled(qword_10038BCC8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "triggering a server opt-in state fetch retry", v12, 2u);
  }

  v4 = [KTPendingFlag alloc];
  retryScheduler = [(KTFetchServerOptInStatus *)self retryScheduler];
  v6 = [(KTPendingFlag *)v4 initWithFlag:@"CheckServerOptIn" conditions:2 scheduler:retryScheduler];

  deps = [(KTFetchServerOptInStatus *)self deps];
  flagHandler = [deps flagHandler];
  [flagHandler handlePendingFlag:v6];

  deps2 = [(KTFetchServerOptInStatus *)self deps];
  stateMonitor = [deps2 stateMonitor];
  [stateMonitor setNewServerOptInRequests:1];

  retryScheduler2 = [(KTFetchServerOptInStatus *)self retryScheduler];
  [retryScheduler2 trigger];
}

@end