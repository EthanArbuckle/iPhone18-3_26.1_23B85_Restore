@interface ValidDelegate
- (int64_t)versionFromTask:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)reschedule;
- (void)updateDb:(int64_t)a3;
@end

@implementation ValidDelegate

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1000027AC("validupdate");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v18 = 138412802;
      Current = *&v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session %@ task %@ failed with error %@", &v18, 0x20u);
    }

    v13 = +[TrustAnalytics logger];
    [v13 logResultForEvent:@"ValidUpdateEvent" hardFailure:0 result:v10];

    [(ValidDelegate *)self reschedule];
    [(NSFileHandle *)self->_currentUpdateFile closeFile];
    currentUpdateFile = self->_currentUpdateFile;
    self->_currentUpdateFile = 0;

    currentUpdateServer = self->_currentUpdateServer;
    self->_currentUpdateServer = 0;

    currentUpdateFileURL = self->_currentUpdateFileURL;
    self->_currentUpdateFileURL = 0;
  }

  else
  {
    if (v12)
    {
      v18 = 134217984;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "download finished at %f", &v18, 0xCu);
    }

    self->_finishedDownloading = 1;
    [(ValidDelegate *)self updateDb:[(ValidDelegate *)self versionFromTask:v9]];
  }

  transaction = self->_transaction;
  if (transaction)
  {
    self->_transaction = 0;
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  currentUpdateFile = self->_currentUpdateFile;
  if (currentUpdateFile)
  {
    [(NSFileHandle *)currentUpdateFile writeData:v10];
  }

  else
  {
    v12 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received data, but output file is not open", v13, 2u);
    }

    [v9 cancel];
    [(ValidDelegate *)self reschedule];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v14;

  v16 = [v12 statusCode];
  v17 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v12 MIMEType];
    *buf = 138413314;
    v42 = *&v10;
    v43 = 2112;
    v44 = v11;
    v45 = 2048;
    v46 = v16;
    v47 = 2112;
    v48 = v39;
    v49 = 2048;
    v50 = [v12 expectedContentLength];
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Session %@ data task %@ returned response %ld (%@), expecting %lld bytes", buf, 0x34u);
  }

  if (sub_1000511C0() == qword_100092920 && v16 == 403)
  {
    v18 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = *&v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "failed to connect to URL. canceling task %@", buf, 0xCu);
    }

    v13[2](v13, 0);
    qword_100092920 = 4;
LABEL_17:
    [(ValidDelegate *)self reschedule];
    goto LABEL_29;
  }

  v19 = sub_100008BFC(@"update-current");
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  currentUpdateFileURL = self->_currentUpdateFileURL;
  self->_currentUpdateFileURL = v20;

  v22 = [(NSURL *)self->_currentUpdateFileURL fileSystemRepresentation];
  if (!v22)
  {
    v26 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = *&v11;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "failed to find revocation info directory. canceling task %@", buf, 0xCu);
    }

    v13[2](v13, 0);
    goto LABEL_17;
  }

  v24 = v22;
  remove(v22, v23);
  v25 = open(v24, 1538, 420);
  if (v25 < 0)
  {
    v27 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_currentUpdateFileURL;
      v29 = *__error();
      *buf = 138412546;
      v42 = *&v28;
      v43 = 1024;
      LODWORD(v44) = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "unable to open %@ (errno %d)", buf, 0x12u);
    }
  }

  else
  {
    close(v25);
  }

  v30 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    Current = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v42 = Current;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "download started at %f", buf, 0xCu);
  }

  v32 = self->_currentUpdateFileURL;
  v40 = 0;
  v33 = [NSFileHandle fileHandleForWritingToURL:v32 error:&v40];
  v34 = v40;
  currentUpdateFile = self->_currentUpdateFile;
  self->_currentUpdateFile = v33;

  if (self->_currentUpdateFile)
  {
    v13[2](v13, 1);
  }

  else
  {
    v36 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_currentUpdateFileURL;
      *buf = 138412802;
      v42 = *&v37;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v11;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "failed to open %@: %@. canceling task %@", buf, 0x20u);
    }

    v38 = +[TrustAnalytics logger];
    [v38 logResultForEvent:@"ValidUpdateEvent" hardFailure:0 result:v34];

    v13[2](v13, 0);
    [(ValidDelegate *)self reschedule];
  }

LABEL_29:
}

- (int64_t)versionFromTask:(id)a3
{
  v3 = [a3 taskDescription];
  v4 = atol([v3 cStringUsingEncoding:4]);

  return v4;
}

- (void)updateDb:(int64_t)a3
{
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10003BA04;
  v26[4] = sub_10003BA14;
  v5 = self->_currentUpdateFileURL;
  v27 = v5;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_10003BA04;
  v24[4] = sub_10003BA14;
  v25 = self->_currentUpdateServer;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10003BA04;
  v22[4] = sub_10003BA14;
  v6 = self->_currentUpdateFile;
  v23 = v6;
  if (v5 && v6)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = sub_10003BA04;
    v20[4] = sub_10003BA14;
    v21 = os_transaction_create();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10003BA04;
    v18 = sub_10003BA14;
    v19 = 0;
    v7 = dispatch_get_global_queue(25, 0);
    v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);
    v9 = v15[5];
    v15[5] = v8;

    v10 = v15[5];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003BA1C;
    handler[3] = &unk_100083638;
    handler[4] = v20;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_activate(v15[5]);
    revDbUpdateQueue = self->_revDbUpdateQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003BAA4;
    v12[3] = &unk_100083660;
    v12[4] = self;
    v12[5] = v26;
    v12[6] = &v14;
    v12[7] = v20;
    v12[8] = v24;
    v12[9] = v22;
    v12[10] = a3;
    dispatch_async(revDbUpdateQueue, v12);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(v20, 8);
  }

  else
  {
    [(ValidDelegate *)self reschedule];
  }

  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

- (void)reschedule
{
  v3 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_finishedDownloading)
    {
      v4 = "update";
    }

    else
    {
      v4 = "download";
    }

    v6 = 136315394;
    v7 = v4;
    v8 = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s canceled at %f", &v6, 0x16u);
  }

  (*(self->_handler + 2))();
  qword_100092E60 = sub_10004F0A4(0);
  sub_100047F9C(*&qword_100092E60);
  qword_100092E58 = 0;
  transaction = self->_transaction;
  if (transaction)
  {
    self->_transaction = 0;
  }
}

@end