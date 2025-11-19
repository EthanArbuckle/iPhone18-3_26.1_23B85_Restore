@interface MSDServerRequestHandler
+ (id)sharedInstance;
- (MSDServerRequestHandler)init;
- (id)getDownloadFileRequestFromResponse:(id)a3 forFilePath:(id)a4;
- (id)getHmacKey;
- (id)handleRequest:(id)a3 synchronous:(BOOL)a4;
- (id)handleRequestSync:(id)a3;
- (id)updateFileDownloadCredentialFromManifestInfo:(id)a3;
- (void)autoFillCDNRequest:(id)a3;
- (void)autoFillCommandRequest:(id)a3;
- (void)autoFillRequest:(id)a3;
- (void)checkIPAForResponse:(id)a3 withRequest:(id)a4;
- (void)downloadIPAForResponse:(id)a3 withRequest:(id)a4;
- (void)handleAck:(id)a3;
- (void)handleCheckIn:(id)a3;
- (void)handleDownloadFile:(id)a3;
- (void)handleDownloadIPA:(id)a3;
- (void)handleEnroll:(id)a3;
- (void)handleFMH:(id)a3;
- (void)handleGetAccountSettings:(id)a3;
- (void)handleGetContinuitySettings:(id)a3;
- (void)handleIsEnrolled:(id)a3;
- (void)handleKVStore:(id)a3;
- (void)handleManifestDownload:(id)a3;
- (void)handleMarkNotDemo:(id)a3;
- (void)handlePing:(id)a3;
- (void)handleReportDone:(id)a3;
- (void)handleReportError:(id)a3;
- (void)handleRequestAsync:(id)a3;
- (void)handleS3Upload:(id)a3;
- (void)handleStoreSearch:(id)a3;
- (void)handleUnenroll:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setupRequest:(id)a3;
- (void)updateHubHostNameAndPort;
@end

@implementation MSDServerRequestHandler

+ (id)sharedInstance
{
  if (qword_1001A5A00 != -1)
  {
    sub_1000E6E34();
  }

  v3 = qword_1001A59F8;

  return v3;
}

- (MSDServerRequestHandler)init
{
  v12.receiver = self;
  v12.super_class = MSDServerRequestHandler;
  v2 = [(MSDServerRequestHandler *)&v12 init];
  if (v2)
  {
    v3 = +[MSDTargetDevice sharedInstance];
    [(MSDServerRequestHandler *)v2 setDevice:v3];

    v4 = [(MSDServerRequestHandler *)v2 device];
    v5 = [v4 udid];
    [(MSDServerRequestHandler *)v2 setDeviceUDID:v5];

    [(MSDServerRequestHandler *)v2 setHubServer:0];
    [(MSDServerRequestHandler *)v2 setDownloadManager:0];
    v6 = objc_alloc_init(MSDDemoUnitServer);
    [(MSDServerRequestHandler *)v2 setDuServer:v6];

    v7 = [(MSDServerRequestHandler *)v2 getDispatchTable];
    [(MSDServerRequestHandler *)v2 setDispatchTable:v7];

    v8 = [(MSDServerRequestHandler *)v2 device];
    [v8 addObserver:v2 forKeyPath:@"hubHostName" options:1 context:0];

    v9 = [(MSDServerRequestHandler *)v2 device];
    [v9 addObserver:v2 forKeyPath:@"hubPort" options:1 context:0];

    [(MSDServerRequestHandler *)v2 updateHubHostNameAndPort];
    v10 = v2;
  }

  return v2;
}

- (void)handleRequestAsync:(id)a3
{
  v5 = a3;
  [(MSDServerRequestHandler *)self setupRequest:v5];
  v4 = [(MSDServerRequestHandler *)self handleRequest:v5 synchronous:0];
}

- (id)handleRequestSync:(id)a3
{
  v4 = a3;
  [(MSDServerRequestHandler *)self setupRequest:v4];
  v5 = [(MSDServerRequestHandler *)self handleRequest:v4 synchronous:1];

  return v5;
}

- (id)getHmacKey
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  return v4;
}

- (void)autoFillRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSDServerRequestHandler *)self autoFillCommandRequest:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDServerRequestHandler *)self autoFillCDNRequest:v4];
    }
  }
}

- (void)autoFillCommandRequest:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v14 server];

  if (!v5)
  {
    v6 = [(MSDServerRequestHandler *)v4 hubHostName];
    [v14 setServer:v6];
  }

  v7 = [v14 port];

  if (!v7)
  {
    v8 = [(MSDServerRequestHandler *)v4 hubPort];
    [v14 setPort:v8];
  }

  v9 = [v14 hubVersion];

  if (!v9)
  {
    v10 = [(MSDServerRequestHandler *)v4 device];
    v11 = [v10 hubProtocolVersion];
    [v14 setHubVersion:v11];
  }

  v12 = [v14 deviceUDID];

  if (!v12)
  {
    v13 = [(MSDServerRequestHandler *)v4 deviceUDID];
    [v14 setDeviceUDID:v13];
  }

  objc_sync_exit(v4);
}

- (void)autoFillCDNRequest:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 downloadCredentials];

  if (!v5)
  {
    v6 = +[MSDFileDownloadCredentials sharedInstance];
    [v7 setDownloadCredentials:v6];
  }

  objc_sync_exit(v4);
}

- (void)setupRequest:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(MSDServerRequestHandler *)v4 hubServer];

    if (!v5)
    {
      v6 = [[MSDHubServer alloc] initWithCellularAccess:1];
      [(MSDServerRequestHandler *)v4 setHubServer:v6];

      v7 = [(MSDServerRequestHandler *)v4 hubServer];
      v8 = [(MSDServerRequestHandler *)v4 getHmacKey];
      [v7 overrideHmacKey:v8];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [(MSDServerRequestHandler *)v4 downloadManager];

    if (!v9)
    {
      v10 = [[MSDDownloadRequestManager alloc] initWithCellularAccess:1 andFDCUpdateDelegate:v4];
      [(MSDServerRequestHandler *)v4 setDownloadManager:v10];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(MSDServerRequestHandler *)v4 s3Server];

    if (!v11)
    {
      v12 = [[MSDS3Server alloc] initWithCellularAccess:1];
      [(MSDServerRequestHandler *)v4 setS3Server:v12];
    }
  }

  objc_sync_exit(v4);

  [(MSDServerRequestHandler *)v4 autoFillRequest:v13];
}

- (id)handleRequest:(id)a3 synchronous:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000A805C;
  v26 = sub_1000A806C;
  v27 = 0;
  if (v4)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A8074;
    v19[3] = &unk_10016C0D0;
    v21 = &v22;
    v7 = dispatch_semaphore_create(0);
    v20 = v7;
    [v6 setCompletion:v19];
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(MSDServerRequestHandler *)self dispatchTable];
  v11 = [v10 allKeys];
  v12 = [v11 containsObject:v9];

  if (v12)
  {
    v13 = [(MSDServerRequestHandler *)self dispatchTable];
    v14 = [v13 objectForKey:v9];
    v15 = NSSelectorFromString(v14);

    ([(MSDServerRequestHandler *)self methodForSelector:v15])(self, v15, v6);
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unrecognized request: %{public}@, ignoring...", buf, 0xCu);
    }
  }

  if (v4)
  {
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

- (void)handleIsEnrolled:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 isEnrolled:v4];
}

- (void)handleEnroll:(id)a3
{
  v4 = a3;
  [v4 completion];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000A81FC;
  v10 = &unk_10016C0F8;
  v12 = v11 = self;
  v5 = v12;
  [v4 setCompletion:&v7];
  v6 = [(MSDServerRequestHandler *)self hubServer:v7];
  [v6 enroll:v4];
}

- (void)handleUnenroll:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 unenroll:v4];
}

- (void)handleDownloadIPA:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A8760;
  v20[3] = &unk_10016C120;
  v20[4] = self;
  v6 = v4;
  v21 = v6;
  [v5 setCompletion:v20];
  v7 = [v6 copy];
  [v7 setSavePath:0];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000A8770;
  v17 = &unk_10016C120;
  v18 = self;
  v19 = v6;
  v8 = v6;
  [v7 setCompletion:&v14];
  v9 = [(MSDServerRequestHandler *)self device:v14];
  v10 = [v9 hubProtocolVersion];
  v11 = [v10 isEqualToString:@"2"];

  v12 = [(MSDServerRequestHandler *)self hubServer];
  v13 = v12;
  if (v11)
  {
    [v12 downloadIPAPreCachingHub:v5];
  }

  else
  {
    [v12 downloadIPACachingHub:v7];
  }
}

- (void)handleManifestDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 completion];
  v6 = [v4 savePath];
  v7 = [(MSDServerRequestHandler *)self device];
  v8 = [v7 hubProtocolVersion];
  v9 = [v8 isEqualToString:@"3"];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A88C4;
    v11[3] = &unk_10016C148;
    v11[4] = self;
    v12 = v6;
    v13 = v5;
    [v4 setCompletion:v11];
    [v4 setSavePath:0];
  }

  v10 = [(MSDServerRequestHandler *)self hubServer];
  [v10 downloadManifest:v4];
}

- (void)handleReportError:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 reportError:v4];
}

- (void)handleReportDone:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 reportDone:v4];
}

- (void)handleFMH:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self duServer];
  [v5 findMyHub:v4];
}

- (void)handleCheckIn:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self duServer];
  [v5 checkIn:v4];
}

- (void)handleMarkNotDemo:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self duServer];
  [v5 markAsNotDemo:v4];
}

- (void)handleStoreSearch:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self duServer];
  [v5 storeSearch:v4];
}

- (void)handleGetAccountSettings:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 getAccountSettings:v4];
}

- (void)handleGetContinuitySettings:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 getContinuitySettings:v4];
}

- (void)handleDownloadFile:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDServerRequestHandler *)v5 hubHostName];
  if (v6)
  {
    v7 = [(MSDServerRequestHandler *)v5 hubPort];

    if (v7)
    {
      objc_sync_exit(v5);

      v8 = [(MSDServerRequestHandler *)v5 downloadManager];
      [v8 downloadFileForRequest:v4];
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v4 getName];
    sub_1000E6F20(v11, buf, v10);
  }

  v14 = 0;
  sub_1000C1390(&v14, 3727744769, @"Input is invalid");
  v9 = v14;
  objc_sync_exit(v5);

  v12 = [v4 completion];

  if (v12)
  {
    v8 = [v4 completion];
    v13 = [[MSDServerResponse alloc] initWithError:v9];
    (v8)[2](v8, v13);

    goto LABEL_8;
  }

LABEL_9:
}

- (void)handlePing:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 ping:v4];
}

- (void)handleAck:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 ack:v4];
}

- (void)handleS3Upload:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self s3Server];
  [v5 uploadMobileStoreDemoLogs:v4];
}

- (void)handleKVStore:(id)a3
{
  v4 = a3;
  v5 = [(MSDServerRequestHandler *)self hubServer];
  [v5 handleKVStore:v4];
}

- (id)updateFileDownloadCredentialFromManifestInfo:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating file download credential...", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_1000A805C;
  v22 = sub_1000A806C;
  v23 = 0;
  v7 = objc_alloc_init(MSDFileDownloadCredentialRequest);
  [(MSDServerRequestHandler *)self autoFillCommandRequest:v7];
  [(MSDFileDownloadCredentialRequest *)v7 setManifestInfo:v4];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000E6C70;
  v15 = &unk_10016C0D0;
  v17 = buf;
  v8 = v6;
  v16 = v8;
  [(MSDServerRequest *)v7 setCompletion:&v12];
  v9 = [(MSDServerRequestHandler *)self hubServer:v12];
  [v9 getFileDownloadCredential:v7];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v10;
}

- (void)downloadIPAForResponse:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A935C;
  v18[3] = &unk_10016C170;
  v8 = v6;
  v19 = v8;
  v20 = self;
  v9 = v7;
  v21 = v9;
  v10 = objc_retainBlock(v18);
  v11 = [v8 error];

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = [v9 savePath];
    v13 = [v8 fileName];
    v14 = [v12 stringByAppendingPathComponent:v13];

    v15 = [(MSDServerRequestHandler *)self getDownloadFileRequestFromResponse:v8 forFilePath:v14];
    if (v15)
    {
      v16 = v15;
      [v15 setCompletion:v10];
      [(MSDServerRequestHandler *)self handleDownloadFile:v16];
      goto LABEL_4;
    }

    sub_1000E6F78(v8);
  }

  v17 = [v9 completion];

  if (!v17)
  {
    goto LABEL_5;
  }

  v16 = [v9 completion];
  (v16)[2](v16, v8);
LABEL_4:

LABEL_5:
}

- (void)checkIPAForResponse:(id)a3 withRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 error];

  if (!v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 appID];
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking IPA File for %{public}@", &v19, 0xCu);
    }

    v11 = [v6 savePath];
    v12 = [v8 fileExistsAtPath:v11];

    if (v12)
    {
      v13 = [v6 savePath];
      v14 = [v8 attributesOfItemAtPath:v13 error:0];

      if ([v14 fileSize])
      {
LABEL_6:

        goto LABEL_7;
      }

      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E7050(v6);
      }
    }

    else
    {
      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E6FCC(v6);
      }

      v14 = 0;
    }

    v18 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
    [v5 setError:v18];

    goto LABEL_6;
  }

LABEL_7:
  v15 = [v6 completion];

  if (v15)
  {
    v16 = [v6 completion];
    (v16)[2](v16, v5);
  }
}

- (id)getDownloadFileRequestFromResponse:(id)a3 forFilePath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 fileName];
  v8 = [v5 originServer];
  v9 = [v5 conformsToProtocol:&OBJC_PROTOCOL___MSDDownloadFileDetailsProtocol];
  v10 = sub_100063A54();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Details to download file are: FileName = %{public}@, OriginServer = %{public}@", &v17, 0x16u);
    }

    v12 = objc_alloc_init(MSDDownloadFileRequest);
    v13 = +[MSDFileDownloadCredentials sharedInstance];
    [(MSDCDNServerRequest *)v12 setDownloadCredentials:v13];

    v14 = [(MSDDownloadFileRequest *)v12 fileInfo];
    [v14 setFile:v7];

    v15 = [(MSDDownloadFileRequest *)v12 fileInfo];
    [v15 setFileHash:v7];

    [(MSDServerRequest *)v12 setSavePath:v6];
    [(MSDCDNServerRequest *)v12 setOriginServer:v8];
  }

  else
  {
    sub_1000E70D4(v10, v5);
    v12 = 0;
  }

  return v12;
}

- (void)updateHubHostNameAndPort
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDServerRequestHandler *)v2 device];
  v4 = [v3 hubHostName];
  [(MSDServerRequestHandler *)v2 setHubHostName:v4];

  v5 = [(MSDServerRequestHandler *)v2 device];
  v6 = [v5 hubPort];
  [(MSDServerRequestHandler *)v2 setHubPort:v6];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MSDServerRequestHandler *)v2 hubHostName];
    v9 = [(MSDServerRequestHandler *)v2 hubPort];
    v10 = 136315650;
    v11 = "[MSDServerRequestHandler updateHubHostNameAndPort]";
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - updated hub host name: %{public}@ port: %{public}@", &v10, 0x20u);
  }

  objc_sync_exit(v2);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v9 isEqualToString:@"hubHostName"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"hubPort"))
  {
    v12 = [(MSDServerRequestHandler *)self device];

    if (v12 == v10)
    {
      v13 = [v11 objectForKey:NSKeyValueChangeKindKey];
      v14 = [v13 intValue];

      if (v14 == 1)
      {
        v15 = sub_100063A54();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          sub_100006E3C();
          v19 = 2114;
          v20 = v9;
          v17 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Observed %{public}@ change!", v18, 0x16u);
        }

        [(MSDServerRequestHandler *)self updateHubHostNameAndPort];
      }
    }
  }
}

@end