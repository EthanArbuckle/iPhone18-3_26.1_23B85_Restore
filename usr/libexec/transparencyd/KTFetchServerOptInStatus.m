@interface KTFetchServerOptInStatus
- (KTFetchServerOptInStatus)initWithDependencies:(id)a3 reason:(id)a4 retryScheduler:(id)a5;
- (void)groupStart;
- (void)retry;
@end

@implementation KTFetchServerOptInStatus

- (KTFetchServerOptInStatus)initWithDependencies:(id)a3 reason:(id)a4 retryScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = KTFetchServerOptInStatus;
  v11 = [(KTGroupOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(KTFetchServerOptInStatus *)v11 setDeps:v8];
    [(KTFetchServerOptInStatus *)v12 setRetryScheduler:v10];
    [(KTFetchServerOptInStatus *)v12 setReason:v9];
  }

  return v12;
}

- (void)groupStart
{
  v3 = [(KTFetchServerOptInStatus *)self deps];
  v4 = [v3 stateMonitor];
  v5 = [v4 ktStatus];

  v6 = [v5 idsAccountStatus] == 3;
  if (_os_feature_enabled_impl())
  {
    v6 = [v5 idsAccountStatus] != 0;
  }

  if ([v5 optIn] == 2 || objc_msgSend(v5, "accountStatus") != 4 && v6)
  {
    v7 = [(KTFetchServerOptInStatus *)self deps];
    v8 = [v7 accountOperations];
    v31 = 0;
    v9 = [v8 primaryAccount:&v31];
    v10 = v31;

    if (v9)
    {
      v11 = objc_alloc_init(NSOperation);
      [(KTFetchServerOptInStatus *)self setFinishedOp:v11];

      v12 = [(KTFetchServerOptInStatus *)self finishedOp];
      [(KTGroupOperation *)self dependOnBeforeGroupFinished:v12];

      v27 = [v9 username];
      v13 = [IDSURI URIWithUnprefixedURI:v27];
      objc_initWeak(location, self);
      v14 = [(KTFetchServerOptInStatus *)self deps];
      v15 = [v14 contextStore];
      v16 = [(KTFetchServerOptInStatus *)self deps];
      v17 = [v16 logClient];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10003A37C;
      v28[3] = &unk_100319B30;
      objc_copyWeak(&v30, location);
      v18 = v10;
      v19 = kKTApplicationIdentifierIDS;
      v20 = v13;
      v29 = v20;
      [v15 contextForApplication:v19 logClient:v17 fetchState:1 completionHandler:v28];

      v10 = v18;
      objc_destroyWeak(&v30);
      objc_destroyWeak(location);
    }

    else
    {
      v21 = [(KTFetchServerOptInStatus *)self deps];
      v22 = [v21 stateMonitor];
      [v22 setServerOptInState:2];

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
    v24 = [(KTFetchServerOptInStatus *)self deps];
    v25 = [v24 stateMonitor];
    [v25 setServerOptInState:2];

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
  v5 = [(KTFetchServerOptInStatus *)self retryScheduler];
  v6 = [(KTPendingFlag *)v4 initWithFlag:@"CheckServerOptIn" conditions:2 scheduler:v5];

  v7 = [(KTFetchServerOptInStatus *)self deps];
  v8 = [v7 flagHandler];
  [v8 handlePendingFlag:v6];

  v9 = [(KTFetchServerOptInStatus *)self deps];
  v10 = [v9 stateMonitor];
  [v10 setNewServerOptInRequests:1];

  v11 = [(KTFetchServerOptInStatus *)self retryScheduler];
  [v11 trigger];
}

@end