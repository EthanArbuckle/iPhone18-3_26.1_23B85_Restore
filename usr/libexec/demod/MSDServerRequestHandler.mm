@interface MSDServerRequestHandler
+ (id)sharedInstance;
- (MSDServerRequestHandler)init;
- (id)getDownloadFileRequestFromResponse:(id)response forFilePath:(id)path;
- (id)getHmacKey;
- (id)handleRequest:(id)request synchronous:(BOOL)synchronous;
- (id)handleRequestSync:(id)sync;
- (id)updateFileDownloadCredentialFromManifestInfo:(id)info;
- (void)autoFillCDNRequest:(id)request;
- (void)autoFillCommandRequest:(id)request;
- (void)autoFillRequest:(id)request;
- (void)checkIPAForResponse:(id)response withRequest:(id)request;
- (void)downloadIPAForResponse:(id)response withRequest:(id)request;
- (void)handleAck:(id)ack;
- (void)handleCheckIn:(id)in;
- (void)handleDownloadFile:(id)file;
- (void)handleDownloadIPA:(id)a;
- (void)handleEnroll:(id)enroll;
- (void)handleFMH:(id)h;
- (void)handleGetAccountSettings:(id)settings;
- (void)handleGetContinuitySettings:(id)settings;
- (void)handleIsEnrolled:(id)enrolled;
- (void)handleKVStore:(id)store;
- (void)handleManifestDownload:(id)download;
- (void)handleMarkNotDemo:(id)demo;
- (void)handlePing:(id)ping;
- (void)handleReportDone:(id)done;
- (void)handleReportError:(id)error;
- (void)handleRequestAsync:(id)async;
- (void)handleS3Upload:(id)upload;
- (void)handleStoreSearch:(id)search;
- (void)handleUnenroll:(id)unenroll;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setupRequest:(id)request;
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

    device = [(MSDServerRequestHandler *)v2 device];
    udid = [device udid];
    [(MSDServerRequestHandler *)v2 setDeviceUDID:udid];

    [(MSDServerRequestHandler *)v2 setHubServer:0];
    [(MSDServerRequestHandler *)v2 setDownloadManager:0];
    v6 = objc_alloc_init(MSDDemoUnitServer);
    [(MSDServerRequestHandler *)v2 setDuServer:v6];

    getDispatchTable = [(MSDServerRequestHandler *)v2 getDispatchTable];
    [(MSDServerRequestHandler *)v2 setDispatchTable:getDispatchTable];

    device2 = [(MSDServerRequestHandler *)v2 device];
    [device2 addObserver:v2 forKeyPath:@"hubHostName" options:1 context:0];

    device3 = [(MSDServerRequestHandler *)v2 device];
    [device3 addObserver:v2 forKeyPath:@"hubPort" options:1 context:0];

    [(MSDServerRequestHandler *)v2 updateHubHostNameAndPort];
    v10 = v2;
  }

  return v2;
}

- (void)handleRequestAsync:(id)async
{
  asyncCopy = async;
  [(MSDServerRequestHandler *)self setupRequest:asyncCopy];
  v4 = [(MSDServerRequestHandler *)self handleRequest:asyncCopy synchronous:0];
}

- (id)handleRequestSync:(id)sync
{
  syncCopy = sync;
  [(MSDServerRequestHandler *)self setupRequest:syncCopy];
  v5 = [(MSDServerRequestHandler *)self handleRequest:syncCopy synchronous:1];

  return v5;
}

- (id)getHmacKey
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 getItemForKey:@"com.apple.mobilestoredemo.keychainItemID"];

  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  return v4;
}

- (void)autoFillRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSDServerRequestHandler *)self autoFillCommandRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSDServerRequestHandler *)self autoFillCDNRequest:requestCopy];
    }
  }
}

- (void)autoFillCommandRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  server = [requestCopy server];

  if (!server)
  {
    hubHostName = [(MSDServerRequestHandler *)selfCopy hubHostName];
    [requestCopy setServer:hubHostName];
  }

  port = [requestCopy port];

  if (!port)
  {
    hubPort = [(MSDServerRequestHandler *)selfCopy hubPort];
    [requestCopy setPort:hubPort];
  }

  hubVersion = [requestCopy hubVersion];

  if (!hubVersion)
  {
    device = [(MSDServerRequestHandler *)selfCopy device];
    hubProtocolVersion = [device hubProtocolVersion];
    [requestCopy setHubVersion:hubProtocolVersion];
  }

  deviceUDID = [requestCopy deviceUDID];

  if (!deviceUDID)
  {
    deviceUDID2 = [(MSDServerRequestHandler *)selfCopy deviceUDID];
    [requestCopy setDeviceUDID:deviceUDID2];
  }

  objc_sync_exit(selfCopy);
}

- (void)autoFillCDNRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  downloadCredentials = [requestCopy downloadCredentials];

  if (!downloadCredentials)
  {
    v6 = +[MSDFileDownloadCredentials sharedInstance];
    [requestCopy setDownloadCredentials:v6];
  }

  objc_sync_exit(selfCopy);
}

- (void)setupRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hubServer = [(MSDServerRequestHandler *)selfCopy hubServer];

    if (!hubServer)
    {
      v6 = [[MSDHubServer alloc] initWithCellularAccess:1];
      [(MSDServerRequestHandler *)selfCopy setHubServer:v6];

      hubServer2 = [(MSDServerRequestHandler *)selfCopy hubServer];
      getHmacKey = [(MSDServerRequestHandler *)selfCopy getHmacKey];
      [hubServer2 overrideHmacKey:getHmacKey];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    downloadManager = [(MSDServerRequestHandler *)selfCopy downloadManager];

    if (!downloadManager)
    {
      v10 = [[MSDDownloadRequestManager alloc] initWithCellularAccess:1 andFDCUpdateDelegate:selfCopy];
      [(MSDServerRequestHandler *)selfCopy setDownloadManager:v10];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    s3Server = [(MSDServerRequestHandler *)selfCopy s3Server];

    if (!s3Server)
    {
      v12 = [[MSDS3Server alloc] initWithCellularAccess:1];
      [(MSDServerRequestHandler *)selfCopy setS3Server:v12];
    }
  }

  objc_sync_exit(selfCopy);

  [(MSDServerRequestHandler *)selfCopy autoFillRequest:requestCopy];
}

- (id)handleRequest:(id)request synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  requestCopy = request;
  v7 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000A805C;
  v26 = sub_1000A806C;
  v27 = 0;
  if (synchronousCopy)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A8074;
    v19[3] = &unk_10016C0D0;
    v21 = &v22;
    v7 = dispatch_semaphore_create(0);
    v20 = v7;
    [requestCopy setCompletion:v19];
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  dispatchTable = [(MSDServerRequestHandler *)self dispatchTable];
  allKeys = [dispatchTable allKeys];
  v12 = [allKeys containsObject:v9];

  if (v12)
  {
    dispatchTable2 = [(MSDServerRequestHandler *)self dispatchTable];
    v14 = [dispatchTable2 objectForKey:v9];
    v15 = NSSelectorFromString(v14);

    ([(MSDServerRequestHandler *)self methodForSelector:v15])(self, v15, requestCopy);
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

  if (synchronousCopy)
  {
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

- (void)handleIsEnrolled:(id)enrolled
{
  enrolledCopy = enrolled;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer isEnrolled:enrolledCopy];
}

- (void)handleEnroll:(id)enroll
{
  enrollCopy = enroll;
  [enrollCopy completion];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000A81FC;
  v10 = &unk_10016C0F8;
  v12 = v11 = self;
  v5 = v12;
  [enrollCopy setCompletion:&v7];
  v6 = [(MSDServerRequestHandler *)self hubServer:v7];
  [v6 enroll:enrollCopy];
}

- (void)handleUnenroll:(id)unenroll
{
  unenrollCopy = unenroll;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer unenroll:unenrollCopy];
}

- (void)handleDownloadIPA:(id)a
{
  aCopy = a;
  v5 = [aCopy copy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A8760;
  v20[3] = &unk_10016C120;
  v20[4] = self;
  v6 = aCopy;
  v21 = v6;
  [v5 setCompletion:v20];
  v7 = [v6 copy];
  [v7 setSavePath:0];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000A8770;
  v17 = &unk_10016C120;
  selfCopy = self;
  v19 = v6;
  v8 = v6;
  [v7 setCompletion:&v14];
  v9 = [(MSDServerRequestHandler *)self device:v14];
  hubProtocolVersion = [v9 hubProtocolVersion];
  v11 = [hubProtocolVersion isEqualToString:@"2"];

  hubServer = [(MSDServerRequestHandler *)self hubServer];
  v13 = hubServer;
  if (v11)
  {
    [hubServer downloadIPAPreCachingHub:v5];
  }

  else
  {
    [hubServer downloadIPACachingHub:v7];
  }
}

- (void)handleManifestDownload:(id)download
{
  downloadCopy = download;
  completion = [downloadCopy completion];
  savePath = [downloadCopy savePath];
  device = [(MSDServerRequestHandler *)self device];
  hubProtocolVersion = [device hubProtocolVersion];
  v9 = [hubProtocolVersion isEqualToString:@"3"];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A88C4;
    v11[3] = &unk_10016C148;
    v11[4] = self;
    v12 = savePath;
    v13 = completion;
    [downloadCopy setCompletion:v11];
    [downloadCopy setSavePath:0];
  }

  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer downloadManifest:downloadCopy];
}

- (void)handleReportError:(id)error
{
  errorCopy = error;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer reportError:errorCopy];
}

- (void)handleReportDone:(id)done
{
  doneCopy = done;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer reportDone:doneCopy];
}

- (void)handleFMH:(id)h
{
  hCopy = h;
  duServer = [(MSDServerRequestHandler *)self duServer];
  [duServer findMyHub:hCopy];
}

- (void)handleCheckIn:(id)in
{
  inCopy = in;
  duServer = [(MSDServerRequestHandler *)self duServer];
  [duServer checkIn:inCopy];
}

- (void)handleMarkNotDemo:(id)demo
{
  demoCopy = demo;
  duServer = [(MSDServerRequestHandler *)self duServer];
  [duServer markAsNotDemo:demoCopy];
}

- (void)handleStoreSearch:(id)search
{
  searchCopy = search;
  duServer = [(MSDServerRequestHandler *)self duServer];
  [duServer storeSearch:searchCopy];
}

- (void)handleGetAccountSettings:(id)settings
{
  settingsCopy = settings;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer getAccountSettings:settingsCopy];
}

- (void)handleGetContinuitySettings:(id)settings
{
  settingsCopy = settings;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer getContinuitySettings:settingsCopy];
}

- (void)handleDownloadFile:(id)file
{
  fileCopy = file;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hubHostName = [(MSDServerRequestHandler *)selfCopy hubHostName];
  if (hubHostName)
  {
    hubPort = [(MSDServerRequestHandler *)selfCopy hubPort];

    if (hubPort)
    {
      objc_sync_exit(selfCopy);

      downloadManager = [(MSDServerRequestHandler *)selfCopy downloadManager];
      [downloadManager downloadFileForRequest:fileCopy];
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    getName = [fileCopy getName];
    sub_1000E6F20(getName, buf, v10);
  }

  v14 = 0;
  sub_1000C1390(&v14, 3727744769, @"Input is invalid");
  v9 = v14;
  objc_sync_exit(selfCopy);

  completion = [fileCopy completion];

  if (completion)
  {
    downloadManager = [fileCopy completion];
    v13 = [[MSDServerResponse alloc] initWithError:v9];
    (downloadManager)[2](downloadManager, v13);

    goto LABEL_8;
  }

LABEL_9:
}

- (void)handlePing:(id)ping
{
  pingCopy = ping;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer ping:pingCopy];
}

- (void)handleAck:(id)ack
{
  ackCopy = ack;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer ack:ackCopy];
}

- (void)handleS3Upload:(id)upload
{
  uploadCopy = upload;
  s3Server = [(MSDServerRequestHandler *)self s3Server];
  [s3Server uploadMobileStoreDemoLogs:uploadCopy];
}

- (void)handleKVStore:(id)store
{
  storeCopy = store;
  hubServer = [(MSDServerRequestHandler *)self hubServer];
  [hubServer handleKVStore:storeCopy];
}

- (id)updateFileDownloadCredentialFromManifestInfo:(id)info
{
  infoCopy = info;
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
  [(MSDFileDownloadCredentialRequest *)v7 setManifestInfo:infoCopy];
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

- (void)downloadIPAForResponse:(id)response withRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A935C;
  v18[3] = &unk_10016C170;
  v8 = responseCopy;
  v19 = v8;
  selfCopy = self;
  v9 = requestCopy;
  v21 = v9;
  v10 = objc_retainBlock(v18);
  error = [v8 error];

  if (error)
  {
    v14 = 0;
  }

  else
  {
    savePath = [v9 savePath];
    fileName = [v8 fileName];
    v14 = [savePath stringByAppendingPathComponent:fileName];

    v15 = [(MSDServerRequestHandler *)self getDownloadFileRequestFromResponse:v8 forFilePath:v14];
    if (v15)
    {
      completion2 = v15;
      [v15 setCompletion:v10];
      [(MSDServerRequestHandler *)self handleDownloadFile:completion2];
      goto LABEL_4;
    }

    sub_1000E6F78(v8);
  }

  completion = [v9 completion];

  if (!completion)
  {
    goto LABEL_5;
  }

  completion2 = [v9 completion];
  (completion2)[2](completion2, v8);
LABEL_4:

LABEL_5:
}

- (void)checkIPAForResponse:(id)response withRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  error = [responseCopy error];

  if (!error)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      appID = [requestCopy appID];
      v19 = 138543362;
      v20 = appID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking IPA File for %{public}@", &v19, 0xCu);
    }

    savePath = [requestCopy savePath];
    v12 = [v8 fileExistsAtPath:savePath];

    if (v12)
    {
      savePath2 = [requestCopy savePath];
      v14 = [v8 attributesOfItemAtPath:savePath2 error:0];

      if ([v14 fileSize])
      {
LABEL_6:

        goto LABEL_7;
      }

      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E7050(requestCopy);
      }
    }

    else
    {
      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E6FCC(requestCopy);
      }

      v14 = 0;
    }

    v18 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
    [responseCopy setError:v18];

    goto LABEL_6;
  }

LABEL_7:
  completion = [requestCopy completion];

  if (completion)
  {
    completion2 = [requestCopy completion];
    (completion2)[2](completion2, responseCopy);
  }
}

- (id)getDownloadFileRequestFromResponse:(id)response forFilePath:(id)path
{
  responseCopy = response;
  pathCopy = path;
  fileName = [responseCopy fileName];
  originServer = [responseCopy originServer];
  v9 = [responseCopy conformsToProtocol:&OBJC_PROTOCOL___MSDDownloadFileDetailsProtocol];
  v10 = sub_100063A54();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = fileName;
      v19 = 2114;
      v20 = originServer;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Details to download file are: FileName = %{public}@, OriginServer = %{public}@", &v17, 0x16u);
    }

    v12 = objc_alloc_init(MSDDownloadFileRequest);
    v13 = +[MSDFileDownloadCredentials sharedInstance];
    [(MSDCDNServerRequest *)v12 setDownloadCredentials:v13];

    fileInfo = [(MSDDownloadFileRequest *)v12 fileInfo];
    [fileInfo setFile:fileName];

    fileInfo2 = [(MSDDownloadFileRequest *)v12 fileInfo];
    [fileInfo2 setFileHash:fileName];

    [(MSDServerRequest *)v12 setSavePath:pathCopy];
    [(MSDCDNServerRequest *)v12 setOriginServer:originServer];
  }

  else
  {
    sub_1000E70D4(v10, responseCopy);
    v12 = 0;
  }

  return v12;
}

- (void)updateHubHostNameAndPort
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  device = [(MSDServerRequestHandler *)selfCopy device];
  hubHostName = [device hubHostName];
  [(MSDServerRequestHandler *)selfCopy setHubHostName:hubHostName];

  device2 = [(MSDServerRequestHandler *)selfCopy device];
  hubPort = [device2 hubPort];
  [(MSDServerRequestHandler *)selfCopy setHubPort:hubPort];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hubHostName2 = [(MSDServerRequestHandler *)selfCopy hubHostName];
    hubPort2 = [(MSDServerRequestHandler *)selfCopy hubPort];
    v10 = 136315650;
    v11 = "[MSDServerRequestHandler updateHubHostNameAndPort]";
    v12 = 2114;
    v13 = hubHostName2;
    v14 = 2114;
    v15 = hubPort2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - updated hub host name: %{public}@ port: %{public}@", &v10, 0x20u);
  }

  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"hubHostName"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"hubPort"))
  {
    device = [(MSDServerRequestHandler *)self device];

    if (device == objectCopy)
    {
      v13 = [changeCopy objectForKey:NSKeyValueChangeKindKey];
      intValue = [v13 intValue];

      if (intValue == 1)
      {
        v15 = sub_100063A54();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          sub_100006E3C();
          v19 = 2114;
          v20 = pathCopy;
          v17 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Observed %{public}@ change!", v18, 0x16u);
        }

        [(MSDServerRequestHandler *)self updateHubHostNameAndPort];
      }
    }
  }
}

@end