@interface CLIndoorMaintenance
- (void)doSynchronousXPC:(id)a3 description:(const char *)a4 waitForever:(BOOL)a5;
- (void)eraseEverything;
- (void)numFloors:(id)a3;
- (void)onQueueEraseEverything:(id)a3;
- (void)onQueueNumFloors:(id)a3;
- (void)onQueueShutdown;
- (void)prefetch:(id)a3;
- (void)prefetchSynchronous:(id)a3;
- (void)retrieveLocationRelevancyDurationWithCompletionHandler:(id)a3;
- (void)shutdown;
- (void)withinQueueReinitializeRemoteState;
@end

@implementation CLIndoorMaintenance

- (void)withinQueueReinitializeRemoteState
{
  v2 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Cannot re-initialize remote state" userInfo:0];
  objc_exception_throw(v2);
}

- (void)retrieveLocationRelevancyDurationWithCompletionHandler:(id)a3
{
  frameworkQueue = self->super._frameworkQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_10001D1EC;
  v8[3] = &unk_100432558;
  v5 = self;
  v6 = objc_retainBlock(a3);
  v9 = v5;
  v7 = v5;
  v10 = objc_retainBlock(v6);
  dispatch_async(frameworkQueue, v8);
}

- (void)prefetch:(id)a3
{
  v4 = a3;
  if (qword_10045B060 != -1)
  {
    sub_100382820();
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v14 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sending request to prefetch %{public}zu venues", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_10001D508;
  v10[3] = &unk_100432588;
  v6 = self;
  v7 = v4;
  v8 = v6;
  v11 = v8;
  v12 = v7;
  [(CLIndoorMaintenance *)v8 doSynchronousXPC:v10 description:"prefetch:" waitForever:0];

  if (qword_10045B060 != -1)
  {
    sub_100382834();
  }

  v9 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Prefetch request finished", buf, 2u);
  }
}

- (void)prefetchSynchronous:(id)a3
{
  v4 = a3;
  if (qword_10045B060 != -1)
  {
    sub_100382820();
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v14 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sending request to prefetch %zu venues synchronously", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_10001D890;
  v10[3] = &unk_1004325B8;
  v6 = self;
  v7 = v4;
  v8 = v6;
  v11 = v8;
  v12 = v7;
  [(CLIndoorMaintenance *)v8 doSynchronousXPC:v10 description:"prefetch:" waitForever:1];

  if (qword_10045B060 != -1)
  {
    sub_100382834();
  }

  v9 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Synchronous prefetch request finished", buf, 2u);
  }
}

- (void)doSynchronousXPC:(id)a3 description:(const char *)a4 waitForever:(BOOL)a5
{
  v8 = a3;
  v9 = dispatch_semaphore_create(0);
  frameworkQueue = self->super._frameworkQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001DACC;
  v15[3] = &unk_100432620;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v16 = v12;
  dispatch_async(frameworkQueue, v15);
  if (a5)
  {
    if (!dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v12, v13))
    {
      goto LABEL_9;
    }
  }

  if (qword_10045B060 != -1)
  {
    sub_100382834();
  }

  v14 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Timeout trying to do XPC %{publci}s", buf, 0xCu);
  }

LABEL_9:
}

- (void)eraseEverything
{
  if (qword_10045B060 == -1)
  {
    v3 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100382820();
  v3 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Erasing all indoor tiles", buf, 2u);
  }

LABEL_4:
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_10001DD4C;
  v6[3] = &unk_100432640;
  v4 = self;
  v7 = v4;
  [(CLIndoorMaintenance *)v4 doSynchronousXPC:v6 description:"eraseEverything" waitForever:0];

  if (qword_10045B060 != -1)
  {
    sub_100382834();
    v5 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_6:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Erase all indoor tile request finished", buf, 2u);
  }

LABEL_7:
}

- (void)onQueueEraseEverything:(id)a3
{
  v4 = a3;
  if (qword_10045B060 != -1)
  {
    sub_100382820();
    v5 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sending request to erase all indoor tiles", v9, 2u);
  }

LABEL_4:
  connection = self->super._connection;
  v7 = [(CLIndoorXPCProvider *)self _defaultErrHandlerForCaller:@"eraseAllData"];
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  [v8 eraseAllData:v4];
}

- (void)shutdown
{
  if (qword_10045B060 != -1)
  {
    sub_100382820();
    v3 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Requesting shutdown of daemon", buf, 2u);
  }

LABEL_4:
  frameworkQueue = self->super._frameworkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10001DFCC;
  block[3] = &unk_100432670;
  v7 = self;
  v5 = v7;
  dispatch_sync(frameworkQueue, block);
}

- (void)onQueueShutdown
{
  if (qword_10045B060 != -1)
  {
    sub_100382820();
    v3 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Sending shutdown request to daemon", v7, 2u);
  }

LABEL_4:
  connection = self->super._connection;
  v5 = [(CLIndoorXPCProvider *)self _defaultErrHandlerForCaller:@"shutdown"];
  v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];
  [v6 shutdown];
}

- (void)numFloors:(id)a3
{
  v4 = a3;
  if (qword_10045B060 != -1)
  {
    sub_100382820();
    v5 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Requesting number of floors from daemon", buf, 2u);
  }

LABEL_4:
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10001E288;
  v9[3] = &unk_1004326A0;
  v6 = self;
  v7 = objc_retainBlock(v4);
  v8 = v6;
  v10 = v8;
  v11 = objc_retainBlock(v7);
  [(CLIndoorMaintenance *)v8 doSynchronousXPC:v9 description:"numFloors" waitForever:0];
}

- (void)onQueueNumFloors:(id)a3
{
  v4 = a3;
  if (qword_10045B060 != -1)
  {
    sub_100382820();
    v5 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sending request to find the number of floors in the Db", v9, 2u);
  }

LABEL_4:
  connection = self->super._connection;
  v7 = [(CLIndoorXPCProvider *)self _defaultErrHandlerForCaller:@"numFloors"];
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
  [v8 numFloors:v4];
}

@end