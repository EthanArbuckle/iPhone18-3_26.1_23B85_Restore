@interface NRGFullSyncRequestOperation
- (NRGCompanionDaemon)daemon;
- (NRGFullSyncRequestOperation)initWithRequest:(id)request;
- (_opaque_pthread_mutex_t)requestLock;
- (void)handleFullSyncResponse:(id)response url:(id)url iconVersionTracker:(id)tracker;
- (void)main;
- (void)requestComplete:(id)complete error:(id)error;
- (void)requestSent:(id)sent error:(id)error;
- (void)setCompletionHandler:(id)handler;
- (void)setIconVariants:(id)variants;
- (void)setRequestLock:(_opaque_pthread_mutex_t *)lock;
- (void)setRequestSentHandler:(id)handler;
- (void)start;
- (void)withLock:(id)lock;
@end

@implementation NRGFullSyncRequestOperation

- (NRGFullSyncRequestOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = NRGFullSyncRequestOperation;
  v6 = [(NRGFullSyncRequestOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v7->_requestExecuting = 0;
    v7->_requestFinished = 0;
    pthread_mutex_init(&v7->_requestLock, 0);
  }

  return v7;
}

- (void)withLock:(id)lock
{
  lockCopy = lock;
  pthread_mutex_lock(&self->_requestLock);
  lockCopy[2](lockCopy);

  pthread_mutex_unlock(&self->_requestLock);
}

- (void)start
{
  if ([(NRGFullSyncRequestOperation *)self isCancelled])
  {
    [(NRGFullSyncRequestOperation *)self willChangeValueForKey:@"isFinished"];
    [(NRGFullSyncRequestOperation *)self setRequestFinished:1];
    [(NRGFullSyncRequestOperation *)self didChangeValueForKey:@"isFinished"];
    v3 = [NRGFullSyncError errorWithCode:1 description:@"operation cancelled"];
    [(NRGFullSyncRequestOperation *)self requestComplete:0 error:v3];
  }

  else
  {
    [(NRGFullSyncRequestOperation *)self willChangeValueForKey:@"isExecuting"];
    [NSThread detachNewThreadSelector:"main" toTarget:self withObject:0];
    [(NRGFullSyncRequestOperation *)self setRequestExecuting:1];

    [(NRGFullSyncRequestOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)setIconVariants:(id)variants
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D93C;
  v4[3] = &unk_100020648;
  selfCopy = self;
  variantsCopy = variants;
  v3 = variantsCopy;
  [(NRGFullSyncRequestOperation *)selfCopy withLock:v4];
}

- (void)setRequestSentHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DA1C;
  v4[3] = &unk_100020A78;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(NRGFullSyncRequestOperation *)selfCopy withLock:v4];
}

- (void)setCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DAFC;
  v4[3] = &unk_100020A78;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(NRGFullSyncRequestOperation *)selfCopy withLock:v4];
}

- (void)main
{
  if (!self->_request)
  {
    v3 = objc_opt_new();
    request = self->_request;
    self->_request = v3;

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000DD08;
    v12[3] = &unk_1000205D0;
    v12[4] = self;
    [(NRGFullSyncRequestOperation *)self withLock:v12];
  }

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v6 = self->_request;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DE20;
  v9[3] = &unk_100020A00;
  objc_copyWeak(&v10, &location);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DF14;
  v7[3] = &unk_100020AA0;
  objc_copyWeak(&v8, &location);
  [WeakRetained sendFullSyncRequest:v6 requestHandler:v9 responseHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)handleFullSyncResponse:(id)response url:(id)url iconVersionTracker:(id)tracker
{
  responseCopy = response;
  urlCopy = url;
  trackerCopy = tracker;
  v11 = nrg_daemon_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = responseCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "received full sync response for %{public}@", &buf, 0xCu);
  }

  if ([(NRGFullSyncRequestOperation *)self shouldReset])
  {
    [trackerCopy reset];
  }

  v12 = [[NRGIconCatalog alloc] initWithURL:urlCopy readonly:1];
  v13 = NRGGetActivePairedDeviceStorePath();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000E2F0;
  v18[3] = &unk_100020AC8;
  p_buf = &buf;
  v14 = trackerCopy;
  v19 = v14;
  v15 = v13;
  v20 = v15;
  [(NRGIconCatalog *)v12 readIcons:v18];
  if (*(*(&buf + 1) + 24))
  {
    [v14 commit];
    v16 = nrg_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(&buf + 1) + 24);
      *v22 = 134218242;
      v23 = v17;
      v24 = 2112;
      v25 = urlCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "found %ld icons in %@", v22, 0x16u);
    }
  }

  else
  {
    v16 = nrg_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100011904(urlCopy, v16);
    }
  }

  [(NRGFullSyncRequestOperation *)self requestComplete:responseCopy error:0];
  _Block_object_dispose(&buf, 8);
}

- (void)requestSent:(id)sent error:(id)error
{
  sentCopy = sent;
  errorCopy = error;
  v8 = nrg_daemon_log();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001197C();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = sentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "full sync request %{public}@ sent successfully", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E610;
  v11[3] = &unk_100020648;
  v11[4] = self;
  v12 = errorCopy;
  v10 = errorCopy;
  [(NRGFullSyncRequestOperation *)self withLock:v11];
}

- (void)requestComplete:(id)complete error:(id)error
{
  completeCopy = complete;
  errorCopy = error;
  v8 = nrg_daemon_log();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000119E4();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = completeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "full sync request %{public}@ complete", buf, 0xCu);
  }

  [(NRGFullSyncRequestOperation *)self setError:errorCopy];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000E87C;
  v16 = &unk_100020648;
  selfCopy = self;
  v18 = errorCopy;
  v10 = errorCopy;
  [(NRGFullSyncRequestOperation *)self withLock:&v13];
  v11 = [(NRGFullSyncRequestOperation *)self requestExecuting:v13];
  requestFinished = [(NRGFullSyncRequestOperation *)self requestFinished];
  if ((requestFinished & 1) == 0)
  {
    [(NRGFullSyncRequestOperation *)self willChangeValueForKey:@"isFinished"];
  }

  if (v11)
  {
    [(NRGFullSyncRequestOperation *)self willChangeValueForKey:@"isExecuting"];
    [(NRGFullSyncRequestOperation *)self setRequestExecuting:0];
    [(NRGFullSyncRequestOperation *)self setRequestFinished:1];
    [(NRGFullSyncRequestOperation *)self didChangeValueForKey:@"isExecuting"];
    if (requestFinished)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(NRGFullSyncRequestOperation *)self setRequestExecuting:0];
  [(NRGFullSyncRequestOperation *)self setRequestFinished:1];
  if ((requestFinished & 1) == 0)
  {
LABEL_12:
    [(NRGFullSyncRequestOperation *)self didChangeValueForKey:@"isFinished"];
  }

LABEL_13:
}

- (NRGCompanionDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (_opaque_pthread_mutex_t)requestLock
{
  v3 = *&self[1].__opaque[8];
  *&retstr->__sig = *&self[1].__sig;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[40];
  *&retstr->__opaque[24] = *&self[1].__opaque[24];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setRequestLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__opaque[40];
  v5 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  *&self->_requestLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_requestLock.__opaque[40] = v3;
  *&self->_requestLock.__sig = v5;
  *&self->_requestLock.__opaque[8] = v4;
}

@end