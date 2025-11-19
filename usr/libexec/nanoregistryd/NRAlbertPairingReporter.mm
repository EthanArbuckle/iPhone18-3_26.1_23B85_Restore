@interface NRAlbertPairingReporter
- (NRAlbertPairingReporter)init;
- (id)_submissionURL;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)_sendPairingActivityData:(id)a3;
- (void)submitPairingReportWithRegistry:(id)a3 deviceID:(id)a4;
@end

@implementation NRAlbertPairingReporter

- (NRAlbertPairingReporter)init
{
  v7.receiver = self;
  v7.super_class = NRAlbertPairingReporter;
  v2 = [(NRAlbertPairingReporter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoRegistry.albertPairingReporter", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)submitPairingReportWithRegistry:(id)a3 deviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1000504AC;
    v17[4] = sub_1000504BC;
    v18 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000504C4;
    v12[3] = &unk_1001777E8;
    v16 = v17;
    v13 = v7;
    v14 = self;
    v15 = v6;
    [v15 grabRegistryWithReadBlock:v12];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF924();
      }
    }
  }
}

- (id)_submissionURL
{
  if (qword_1001B3808 != -1)
  {
    sub_1000FFA5C();
  }

  v3 = qword_1001B3800;

  return v3;
}

- (void)_sendPairingActivityData:(id)a3
{
  v4 = a3;
  v5 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v5 setHTTPCookieAcceptPolicy:1];
  [v5 setHTTPCookieStorage:0];
  v6 = objc_alloc_init(NSOperationQueue);
  [v6 setName:@"com.apple.NanoRegistry.AlbertPairingReporter"];
  v7 = [NSURLSession sessionWithConfiguration:v5 delegate:self delegateQueue:v6];
  v8 = [(NRAlbertPairingReporter *)self _submissionURL];
  v9 = [NSURL URLWithString:v8];
  v10 = [NSMutableURLRequest requestWithURL:v9];

  [v10 setHTTPMethod:@"POST"];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1000504AC;
  v18[4] = sub_1000504BC;
  v11 = self;
  v19 = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100050B30;
  v14[3] = &unk_100177858;
  v12 = v7;
  v16 = v11;
  v17 = v18;
  v15 = v12;
  v13 = [v12 uploadTaskWithRequest:v10 fromData:v4 completionHandler:v14];
  [v13 resume];

  _Block_object_dispose(v18, 8);
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting server validation", buf, 2u);
    }
  }

  v12 = [v7 protectionSpace];
  [v12 host];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100051028;
  v13 = v38[3] = &unk_100175FA0;
  v39 = v13;
  v14 = v8;
  v40 = v14;
  v15 = objc_retainBlock(v38);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000510B4;
  v36[3] = &unk_100175D58;
  v16 = v14;
  v37 = v16;
  v17 = objc_retainBlock(v36);
  v18 = [v12 authenticationMethod];
  v19 = [v18 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (!v19)
  {
    v25 = nr_daemon_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      v27 = nr_daemon_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFB00(v12, v27);
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v20 = [v12 serverTrust];
  if (!v20)
  {
    v28 = nr_daemon_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      v27 = nr_daemon_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFBC4();
      }

      goto LABEL_18;
    }

LABEL_19:
    (v15[2])(v15);
    goto LABEL_20;
  }

  v21 = v20;
  SecTrustSetNetworkFetchAllowed(v20, 1u);
  SSL = SecPolicyCreateSSL(1u, @"albert.apple.com");
  if (!SSL)
  {
    v30 = nr_daemon_log();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

    if (v31)
    {
      v27 = nr_daemon_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000FFB90();
      }

LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v23 = SSL;
  SecTrustSetPolicies(v21, SSL);
  CFRelease(v23);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051160;
  block[3] = &unk_1001778A8;
  v35 = v21;
  block[4] = self;
  v33 = v17;
  v34 = v15;
  dispatch_async(queue, block);

LABEL_20:
}

@end