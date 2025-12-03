@interface MIHelperServiceClient
+ (id)sharedInstance;
- (BOOL)cloneItemAtURL:(id)l toURL:(id)rL onBehalfOf:(id *)of error:(id *)error;
- (BOOL)createSafeHarborWithIdentifier:(id)identifier forPersona:(id)persona containerType:(unint64_t)type andMigrateDataFrom:(id)from withError:(id *)error;
- (BOOL)dataContainer:(id)container ofContainerType:(unint64_t)type isEmpty:(BOOL *)empty error:(id *)error;
- (BOOL)makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)identifier forPersona:(id)persona withError:(id *)error;
- (BOOL)migrateMobileContentWithError:(id *)error;
- (BOOL)moveItemInStagingLocation:(id)location atRelativePath:(id)path toDestinationURL:(id)l onBehalfOf:(id *)of error:(id *)error;
- (BOOL)wipeStagingRootAndSetUpPerUserDataDirWithError:(id *)error;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_sharedConnection;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)stageItemAtURL:(id)l toStagingLocation:(id)location options:(id)options containedSymlink:(BOOL *)symlink error:(id *)error;
- (void)_invalidateObject;
- (void)dealloc;
@end

@implementation MIHelperServiceClient

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037D00;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A9698 != -1)
  {
    dispatch_once(&qword_1000A9698, block);
  }

  v2 = qword_1000A96A0;

  return v2;
}

- (void)_invalidateObject
{
  obj = self;
  objc_sync_enter(obj);
  xpcConnection = [(MIHelperServiceClient *)obj xpcConnection];
  [xpcConnection invalidate];

  [(MIHelperServiceClient *)obj setXpcConnection:0];
  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(MIHelperServiceClient *)self _invalidateObject];
  v3.receiver = self;
  v3.super_class = MIHelperServiceClient;
  [(MIHelperServiceClient *)&v3 dealloc];
}

- (id)_sharedConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = [(MIHelperServiceClient *)selfCopy xpcConnection];

  if (!xpcConnection)
  {
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MobileInstallationHelperService"];
    [(MIHelperServiceClient *)selfCopy setXpcConnection:v4];

    xpcConnection2 = [(MIHelperServiceClient *)selfCopy xpcConnection];

    if (!xpcConnection2)
    {
      goto LABEL_5;
    }

    v6 = sub_1000040C8();
    xpcConnection3 = [(MIHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v6];

    objc_initWeak(&location, selfCopy);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003804C;
    v14[3] = &unk_100091798;
    objc_copyWeak(&v15, &location);
    xpcConnection4 = [(MIHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection4 setInterruptionHandler:v14];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003808C;
    v12[3] = &unk_100091798;
    objc_copyWeak(&v13, &location);
    xpcConnection5 = [(MIHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection5 setInvalidationHandler:v12];

    xpcConnection6 = [(MIHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection6 resume];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  xpcConnection2 = [(MIHelperServiceClient *)selfCopy xpcConnection];
LABEL_5:
  objc_sync_exit(selfCopy);

  return xpcConnection2;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedConnection = [(MIHelperServiceClient *)self _sharedConnection];
  v7 = _sharedConnection;
  if (_sharedConnection)
  {
    v8 = [_sharedConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = sub_100010734("[MIHelperServiceClient _remoteObjectProxyWithErrorHandler:]", 85, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    handlerCopy[2](handlerCopy, v9);

    v8 = 0;
  }

  return v8;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedConnection = [(MIHelperServiceClient *)self _sharedConnection];
  v7 = _sharedConnection;
  if (_sharedConnection)
  {
    v8 = [_sharedConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = sub_100010734("[MIHelperServiceClient _synchronousRemoteObjectProxyWithErrorHandler:]", 96, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    handlerCopy[2](handlerCopy, v9);

    v8 = 0;
  }

  return v8;
}

- (BOOL)migrateMobileContentWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000383CC;
  v14 = sub_1000383DC;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000383E4;
  v9[3] = &unk_1000917C0;
  v9[4] = &v10;
  v4 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038460;
  v8[3] = &unk_1000917C0;
  v8[4] = &v10;
  [v4 migrateMobileContentWithCompletion:v8];

  v5 = v11[5];
  if (error && v5)
  {
    *error = v5;
    v5 = v11[5];
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (BOOL)wipeStagingRootAndSetUpPerUserDataDirWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000383CC;
  v14 = sub_1000383DC;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000385D8;
  v9[3] = &unk_1000917C0;
  v9[4] = &v10;
  v4 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038654;
  v8[3] = &unk_1000917C0;
  v8[4] = &v10;
  [v4 wipeStagingRootAndSetUpPerUserDataDirWithCompletion:v8];

  v5 = v11[5];
  if (error && v5)
  {
    *error = v5;
    v5 = v11[5];
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)stageItemAtURL:(id)l toStagingLocation:(id)location options:(id)options containedSymlink:(BOOL *)symlink error:(id *)error
{
  lCopy = l;
  locationCopy = location;
  optionsCopy = options;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000383CC;
  v36 = sub_1000383DC;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000383CC;
  v30 = sub_1000383DC;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000388E8;
  v21[3] = &unk_1000917C0;
  v21[4] = &v26;
  v15 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100038964;
  v20[3] = &unk_1000917E8;
  v20[4] = &v26;
  v20[5] = &v32;
  v20[6] = &v22;
  [v15 stageItemAtURL:lCopy toStagingLocation:locationCopy options:optionsCopy completion:v20];

  v16 = v33;
  v17 = v33[5];
  if (error && !v17)
  {
    *error = v27[5];
    v16 = v33;
    v17 = v33[5];
  }

  if (symlink && v17)
  {
    *symlink = *(v23 + 24);
    v17 = v16[5];
  }

  v18 = v17;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v18;
}

- (BOOL)makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)identifier forPersona:(id)persona withError:(id *)error
{
  identifierCopy = identifier;
  personaCopy = persona;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000383CC;
  v20 = sub_1000383DC;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100038BA4;
  v15[3] = &unk_1000917C0;
  v15[4] = &v16;
  v10 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100038C20;
  v14[3] = &unk_1000917C0;
  v14[4] = &v16;
  [v10 makeSymlinkFromAppDataContainerToBundleForIdentifier:identifierCopy forPersona:personaCopy completion:v14];

  v11 = v17[5];
  if (error && v11)
  {
    *error = v11;
    v11 = v17[5];
  }

  v12 = v11 == 0;
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (BOOL)createSafeHarborWithIdentifier:(id)identifier forPersona:(id)persona containerType:(unint64_t)type andMigrateDataFrom:(id)from withError:(id *)error
{
  identifierCopy = identifier;
  personaCopy = persona;
  fromCopy = from;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000383CC;
  v25 = sub_1000383DC;
  v26 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100038DF0;
  v20[3] = &unk_1000917C0;
  v20[4] = &v21;
  v15 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100038E6C;
  v19[3] = &unk_1000917C0;
  v19[4] = &v21;
  [v15 createSafeHarborWithIdentifier:identifierCopy forPersona:personaCopy containerType:type andMigrateDataFrom:fromCopy completion:v19];

  v16 = v22[5];
  if (error && v16)
  {
    *error = v16;
    v16 = v22[5];
  }

  v17 = v16 == 0;
  _Block_object_dispose(&v21, 8);

  return v17;
}

- (BOOL)dataContainer:(id)container ofContainerType:(unint64_t)type isEmpty:(BOOL *)empty error:(id *)error
{
  containerCopy = container;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000383CC;
  v25 = sub_1000383DC;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100039060;
  v16[3] = &unk_1000917C0;
  v16[4] = &v21;
  v11 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000390DC;
  v15[3] = &unk_100091810;
  v15[4] = &v17;
  v15[5] = &v21;
  [v11 isDataContainerEmpty:containerCopy ofContainerType:type completion:v15];

  if (error)
  {
    v12 = v22[5];
    if (v12)
    {
      *error = v12;
    }
  }

  if (empty)
  {
    *empty = *(v18 + 24);
  }

  v13 = v22[5] == 0;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (BOOL)moveItemInStagingLocation:(id)location atRelativePath:(id)path toDestinationURL:(id)l onBehalfOf:(id *)of error:(id *)error
{
  locationCopy = location;
  pathCopy = path;
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000383CC;
  v30 = sub_1000383DC;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100039648;
  v21[3] = &unk_1000917C0;
  v21[4] = &v26;
  v15 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000396C4;
  v20[3] = &unk_100091860;
  v20[4] = &v26;
  v20[5] = &v22;
  v16 = *&of->var0[4];
  v19[0] = *of->var0;
  v19[1] = v16;
  [v15 moveItemInStagingLocation:locationCopy atRelativePath:pathCopy toDestinationURL:lCopy onBehalfOf:v19 completion:v20];

  v17 = *(v23 + 24);
  if (error && (v23[3] & 1) == 0)
  {
    *error = v27[5];
    v17 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v17 & 1;
}

- (BOOL)cloneItemAtURL:(id)l toURL:(id)rL onBehalfOf:(id *)of error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000383CC;
  v27 = sub_1000383DC;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003992C;
  v18[3] = &unk_1000917C0;
  v18[4] = &v23;
  v12 = [(MIHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000399A8;
  v17[3] = &unk_100091860;
  v17[4] = &v23;
  v17[5] = &v19;
  v13 = *&of->var0[4];
  v16[0] = *of->var0;
  v16[1] = v13;
  [v12 cloneItemAtURL:lCopy toURL:rLCopy onBehalfOf:v16 completion:v17];

  v14 = *(v20 + 24);
  if (error && (v20[3] & 1) == 0)
  {
    *error = v24[5];
    v14 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v14 & 1;
}

@end