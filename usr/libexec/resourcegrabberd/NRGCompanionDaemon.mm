@interface NRGCompanionDaemon
+ (id)sharedInstance;
- (BOOL)handleFullSyncResponseForIdentifier:(id)a3 responseURL:(id)a4 error:(id)a5;
- (BOOL)queueFullSyncRequestOperation:(id)a3;
- (NRGCompanionDaemon)init;
- (_opaque_pthread_mutex_t)lock;
- (int64_t)_appViewListImageAddResponseHandler:(id)a3;
- (void)_appViewListImageHandleResponse:(id)a3 error:(id)a4;
- (void)_appViewListImageRequestTimedOut:(id)a3;
- (void)_withLock:(id)a3;
- (void)dealloc;
- (void)fullSyncRequestTimedOut:(id)a3;
- (void)handleFullSyncResponse:(id)a3;
- (void)handleResourceResponse:(id)a3;
- (void)iconVersionTracker:(id)a3 detectedOutOfDateIcons:(id)a4;
- (void)iconVersionTracker:(id)a3 detectedUnusedIcons:(id)a4;
- (void)sendFullSyncRequest:(id)a3 requestHandler:(id)a4 responseHandler:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)setLock:(_opaque_pthread_mutex_t *)a3;
- (void)start;
- (void)xpcGetAppViewListImage:(CGSize)a3 scale:(double)a4 reply:(id)a5;
@end

@implementation NRGCompanionDaemon

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000089EC;
  block[3] = &unk_100020878;
  block[4] = a1;
  if (qword_100028398 != -1)
  {
    dispatch_once(&qword_100028398, block);
  }

  v2 = qword_100028390;

  return v2;
}

- (NRGCompanionDaemon)init
{
  v24.receiver = self;
  v24.super_class = NRGCompanionDaemon;
  v2 = [(NRGDaemon *)&v24 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    objc_initWeak(&location, v3);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008D00;
    v21[3] = &unk_1000208A0;
    objc_copyWeak(&v22, &location);
    v4 = objc_retainBlock(v21);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100008D5C;
    v19[3] = &unk_1000208A0;
    objc_copyWeak(&v20, &location);
    v5 = objc_retainBlock(v19);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100008DB8;
    v17 = &unk_1000208A0;
    objc_copyWeak(&v18, &location);
    v6 = objc_retainBlock(&v14);
    v25[0] = &off_100021768;
    v7 = objc_retainBlock(v4);
    v26[0] = v7;
    v25[1] = &off_100021780;
    v8 = objc_retainBlock(v5);
    v26[1] = v8;
    v25[2] = &off_100021798;
    v9 = objc_retainBlock(v6);
    v26[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3, v14, v15, v16, v17];
    [(NRGDaemon *)v3 setProtobufResponseHandlers:v10];

    v11 = objc_alloc_init(NSOperationQueue);
    syncOperationQueue = v3->_syncOperationQueue;
    v3->_syncOperationQueue = v11;

    [(NSOperationQueue *)v3->_syncOperationQueue setMaxConcurrentOperationCount:1];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = NRGCompanionDaemon;
  [(NRGDaemon *)&v3 dealloc];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v4[2](v4);

  pthread_mutex_unlock(&self->_lock);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = NRGCompanionDaemon;
  [(NRGDaemon *)&v5 start];
  v3 = [[NRGIconVersionTracker alloc] initWithDelegate:self];
  iconVersionTracker = self->_iconVersionTracker;
  self->_iconVersionTracker = v3;
}

- (BOOL)queueFullSyncRequestOperation:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009108;
  v6[3] = &unk_1000208C8;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(NRGCompanionDaemon *)v7 _withLock:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)handleResourceResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [(NRGDaemon *)self getResourceRequest:v6];
  if (v7)
  {
    v8 = [NRGPBResourceResponse alloc];
    v9 = [v4 data];
    v10 = [(NRGPBResourceResponse *)v8 initWithData:v9];

    [v7 handleResponse:v10];
  }

  else
  {
    v10 = nrg_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100011638();
    }
  }
}

- (void)handleFullSyncResponse:(id)a3
{
  v3 = a3;
  v4 = nrg_daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received full sync response", buf, 2u);
  }

  v5 = [NRGPBFullSyncResponse alloc];
  v6 = [v3 data];
  v7 = [(NRGPBFullSyncResponse *)v5 initWithData:v6];

  v8 = nrg_daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedInteger:[(NRGPBFullSyncResponse *)v7 iconsCount]];
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "full sync returned %{public}@ icons (with variants)", buf, 0xCu);
  }

  v27 = NRGGetActivePairedDeviceStorePath();
  if ([(NRGPBFullSyncResponse *)v7 iconsCount])
  {
    v26 = v3;
    v10 = 0;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [(NRGPBFullSyncResponse *)v7 iconsAtIndex:v10];
      v13 = nrg_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [NSNumber numberWithInt:v10];
        v15 = [v12 bundleID];
        v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 iconVariant]);
        v17 = [v12 iconData];
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 length]);
        *buf = 138413058;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "icon at index %@ is %@ (%@) length %@", buf, 0x2Au);
      }

      iconVersionTracker = self->_iconVersionTracker;
      v20 = [v12 version];
      v21 = [v12 bundleID];
      [(NRGIconVersionTracker *)iconVersionTracker setVersion:v20 forBundleID:v21];

      v22 = [v12 iconData];
      v23 = [v12 iconVariant];
      v24 = [v12 bundleID];
      [NRGResourceCache setIcon:v22 forIconVariant:v23 inBundleID:v24 withPairedDeviceStorePath:v27];

      objc_autoreleasePoolPop(v11);
      ++v10;
    }

    while ([(NRGPBFullSyncResponse *)v7 iconsCount]> v10);
    v3 = v26;
  }

  [(NRGIconVersionTracker *)self->_iconVersionTracker commit];
  v25 = [(NRGCompanionDaemon *)self fullSyncIdentifier];
  [(NRGCompanionDaemon *)self handleFullSyncResponseForIdentifier:v25 error:0];
}

- (BOOL)handleFullSyncResponseForIdentifier:(id)a3 responseURL:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100009A00;
  v28 = sub_100009A2C;
  v29 = 0;
  v11 = nrg_daemon_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    fullSyncIdentifier = self->_fullSyncIdentifier;
    *buf = 138412802;
    v35 = v8;
    v36 = 2112;
    v37 = fullSyncIdentifier;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "identifier = %@, fullSyncIdentifier = %@, error =%@", buf, 0x20u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100009A34;
  v20[3] = &unk_1000208F0;
  v20[4] = self;
  v13 = v8;
  v21 = v13;
  v22 = &v30;
  v23 = &v24;
  [(NRGCompanionDaemon *)self _withLock:v20];
  v14 = nrg_daemon_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = self->_fullSyncIdentifier;
    v16 = objc_retainBlock(v25[5]);
    *buf = 138413058;
    v35 = v13;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "identifier = %@, fullSyncIdentifier = %@, handler = %@, error = %@", buf, 0x2Au);
  }

  if (*(v31 + 24) == 1)
  {
    v17 = v25[5];
    if (v17)
    {
      (*(v17 + 16))(v17, v13, v9, self->_iconVersionTracker, v10);
      v18 = *(v31 + 24);
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v18 & 1;
}

- (void)sendFullSyncRequest:(id)a3 requestHandler:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100009F68;
  v24[3] = &unk_100020918;
  v24[4] = self;
  v24[5] = &v25;
  [(NRGCompanionDaemon *)self _withLock:v24];
  if (v26[3])
  {
    v11 = nrg_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sending sync request %@", &buf, 0xCu);
    }

    objc_initWeak(&location, self);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = sub_100009FD4;
    v32 = sub_100009FE4;
    v33 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100009FEC;
    v19[3] = &unk_100020940;
    objc_copyWeak(&v22, &location);
    p_buf = &buf;
    v12 = v10;
    v19[4] = self;
    v20 = v12;
    v13 = [(NRGDaemon *)self sendProtobufRequest:v8 type:2 priority:200 expectsResponse:1 requestHandler:v9 errorHandler:v19 withTimeout:180.0];
    v14 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v13;

    if (*(*(&buf + 1) + 40))
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000A11C;
      v16[3] = &unk_100020968;
      v18 = &buf;
      v16[4] = self;
      v17 = v12;
      [(NRGCompanionDaemon *)self _withLock:v16];
    }

    _Block_object_dispose(&buf, 8);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [(NRGCompanionDaemon *)self requestUnsuccessfulError];
    v9[2](v9, 0, v15);
  }

  _Block_object_dispose(&v25, 8);
}

- (void)fullSyncRequestTimedOut:(id)a3
{
  v4 = a3;
  v5 = nrg_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000116E4();
  }

  v6 = [v4 userInfo];
  v7 = [NSString stringWithFormat:@"No response received from full sync request %@", v6];
  v8 = [NRGFullSyncError errorWithCode:2 description:v7];
  [(NRGCompanionDaemon *)self handleFullSyncResponseForIdentifier:v6 error:v8];
}

- (void)iconVersionTracker:(id)a3 detectedOutOfDateIcons:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = nrg_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "building request to retrieve out of date icons", buf, 2u);
    }

    v7 = objc_opt_new();
    v8 = +[NanoResourceGrabber nrgIconVariants];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A5B4;
    v17[3] = &unk_100020990;
    v9 = v7;
    v18 = v9;
    [v8 enumerateObjectsUsingBlock:v17];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000A5F4;
    v15[3] = &unk_100020620;
    v10 = v9;
    v16 = v10;
    [v5 enumerateObjectsUsingBlock:v15];
    v11 = [[NRGFullSyncRequestOperation alloc] initWithRequest:v10];
    [(NRGFullSyncRequestOperation *)v11 setDaemon:self];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000A600;
    v13[3] = &unk_100020830;
    v14 = v10;
    v12 = v10;
    [(NRGFullSyncRequestOperation *)v11 setRequestSentHandler:v13];
    [(NRGFullSyncRequestOperation *)v11 setCompletionHandler:&stru_1000209B0];
    [(NRGCompanionDaemon *)self queueFullSyncRequestOperation:v11];
  }
}

- (void)iconVersionTracker:(id)a3 detectedUnusedIcons:(id)a4
{
  v4 = a4;
  NRGGetActivePairedDeviceStorePath();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A810;
  v7 = v6[3] = &unk_100020620;
  v5 = v7;
  [v4 enumerateObjectsUsingBlock:v6];
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v11 = a5;
  v12 = a6;
  v13 = a8;
  v14 = nrg_daemon_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "received resource %@ %@", &v16, 0x16u);
  }

  v15 = [v13 incomingResponseIdentifier];

  [(NRGCompanionDaemon *)self handleFullSyncResponseForIdentifier:v15 responseURL:v11 error:0];
}

- (void)xpcGetAppViewListImage:(CGSize)a3 scale:(double)a4 reply:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = objc_alloc_init(NRGPBAppViewListImageRequest);
  *&v11 = width;
  [(NRGPBAppViewListImageRequest *)v10 setWidth:v11];
  *&v12 = height;
  [(NRGPBAppViewListImageRequest *)v10 setHeight:v12];
  *&v13 = a4;
  [(NRGPBAppViewListImageRequest *)v10 setScale:v13];
  v14 = nrg_daemon_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "xpcGetAppViewList sending %@", buf, 0xCu);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000AC08;
  v24[3] = &unk_1000209D8;
  v15 = v9;
  v25 = v15;
  v16 = objc_retainBlock(v24);
  if ([(NRGCompanionDaemon *)self _appViewListImageAddResponseHandler:v16]== 1)
  {
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000AC18;
    v21[3] = &unk_100020A00;
    objc_copyWeak(&v22, &location);
    v17 = objc_retainBlock(v21);
    v18 = nrg_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "sending app view list image request %@", buf, 0xCu);
    }

    v20.receiver = self;
    v20.super_class = NRGCompanionDaemon;
    v19 = [(NRGDaemon *)&v20 sendProtobufRequest:v10 type:[(NRGPBAppViewListImageRequest *)v10 requestTypeCode] priority:200 expectsResponse:1 requestHandler:v17 errorHandler:0 withTimeout:30.0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (int64_t)_appViewListImageAddResponseHandler:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AD94;
  v6[3] = &unk_100020A28;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(NRGCompanionDaemon *)v7 _withLock:v6];
  v4 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)_appViewListImageRequestTimedOut:(id)a3
{
  v4 = a3;
  v5 = nrg_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000116E4();
  }

  v6 = [NRGError errorWithCode:4];
  [(NRGCompanionDaemon *)self _appViewListImageHandleResponse:0 error:v6];
}

- (void)_appViewListImageHandleResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100009FD4;
  v26 = sub_100009FE4;
  v27 = 0;
  v8 = nrg_daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v29 = v6;
    *&v29[8] = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "handleAppViewListImageResponse:%@ error %@", buf, 0x16u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000B3D0;
  v21[3] = &unk_100020918;
  v21[4] = self;
  v21[5] = &v22;
  [(NRGCompanionDaemon *)self _withLock:v21];
  if (v23[5])
  {
    v9 = nrg_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 hasImageData];
      v11 = [v6 imageData];
      v12 = [v11 length];
      *buf = 67109376;
      *v29 = v10;
      *&v29[4] = 1024;
      *&v29[6] = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "hasImageData %{BOOL}u, imageData length %d", buf, 0xEu);
    }

    if ([v6 hasImageData])
    {
      v13 = [v6 imageData];
    }

    else
    {
      if (!v7)
      {
        v7 = [NRGError errorWithCode:6];
      }

      v13 = 0;
    }

    v15 = nrg_daemon_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v23[5];
      *buf = 138412802;
      *v29 = v6;
      *&v29[8] = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "response = %@, handlers = %@, error = %@", buf, 0x20u);
    }

    v17 = v23[5];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000B468;
    v18[3] = &unk_100020A50;
    v14 = v13;
    v19 = v14;
    v7 = v7;
    v20 = v7;
    [v17 enumerateObjectsUsingBlock:v18];
  }

  else
  {
    v14 = nrg_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100011890();
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (_opaque_pthread_mutex_t)lock
{
  v3 = *&self[2].__opaque[16];
  *&retstr->__sig = *self[2].__opaque;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[2].__opaque[48];
  *&retstr->__opaque[24] = *&self[2].__opaque[32];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__opaque[40];
  v5 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  *&self->_lock.__opaque[24] = *&a3->__opaque[24];
  *&self->_lock.__opaque[40] = v3;
  *&self->_lock.__sig = v5;
  *&self->_lock.__opaque[8] = v4;
}

@end