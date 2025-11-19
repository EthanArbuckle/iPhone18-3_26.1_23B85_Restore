@interface MIHelperServiceClient
+ (id)sharedInstance;
- (BOOL)cloneItemAtURL:(id)a3 toURL:(id)a4 onBehalfOf:(id *)a5 error:(id *)a6;
- (BOOL)createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 withError:(id *)a7;
- (BOOL)dataContainer:(id)a3 ofContainerType:(unint64_t)a4 isEmpty:(BOOL *)a5 error:(id *)a6;
- (BOOL)makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)a3 forPersona:(id)a4 withError:(id *)a5;
- (BOOL)migrateMobileContentWithError:(id *)a3;
- (BOOL)moveItemInStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 onBehalfOf:(id *)a6 error:(id *)a7;
- (BOOL)wipeStagingRootAndSetUpPerUserDataDirWithError:(id *)a3;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (id)_sharedConnection;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)stageItemAtURL:(id)a3 toStagingLocation:(id)a4 options:(id)a5 containedSymlink:(BOOL *)a6 error:(id *)a7;
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
  block[4] = a1;
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
  v2 = [(MIHelperServiceClient *)obj xpcConnection];
  [v2 invalidate];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MIHelperServiceClient *)v2 xpcConnection];

  if (!v3)
  {
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MobileInstallationHelperService"];
    [(MIHelperServiceClient *)v2 setXpcConnection:v4];

    v5 = [(MIHelperServiceClient *)v2 xpcConnection];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = sub_1000040C8();
    v7 = [(MIHelperServiceClient *)v2 xpcConnection];
    [v7 setRemoteObjectInterface:v6];

    objc_initWeak(&location, v2);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003804C;
    v14[3] = &unk_100091798;
    objc_copyWeak(&v15, &location);
    v8 = [(MIHelperServiceClient *)v2 xpcConnection];
    [v8 setInterruptionHandler:v14];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003808C;
    v12[3] = &unk_100091798;
    objc_copyWeak(&v13, &location);
    v9 = [(MIHelperServiceClient *)v2 xpcConnection];
    [v9 setInvalidationHandler:v12];

    v10 = [(MIHelperServiceClient *)v2 xpcConnection];
    [v10 resume];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v5 = [(MIHelperServiceClient *)v2 xpcConnection];
LABEL_5:
  objc_sync_exit(v2);

  return v5;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(MIHelperServiceClient *)self _sharedConnection];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v9 = sub_100010734("[MIHelperServiceClient _remoteObjectProxyWithErrorHandler:]", 85, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    v4[2](v4, v9);

    v8 = 0;
  }

  return v8;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(MIHelperServiceClient *)self _sharedConnection];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v9 = sub_100010734("[MIHelperServiceClient _synchronousRemoteObjectProxyWithErrorHandler:]", 96, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    v4[2](v4, v9);

    v8 = 0;
  }

  return v8;
}

- (BOOL)migrateMobileContentWithError:(id *)a3
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
  if (a3 && v5)
  {
    *a3 = v5;
    v5 = v11[5];
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (BOOL)wipeStagingRootAndSetUpPerUserDataDirWithError:(id *)a3
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
  if (a3 && v5)
  {
    *a3 = v5;
    v5 = v11[5];
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)stageItemAtURL:(id)a3 toStagingLocation:(id)a4 options:(id)a5 containedSymlink:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
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
  [v15 stageItemAtURL:v12 toStagingLocation:v13 options:v14 completion:v20];

  v16 = v33;
  v17 = v33[5];
  if (a7 && !v17)
  {
    *a7 = v27[5];
    v16 = v33;
    v17 = v33[5];
  }

  if (a6 && v17)
  {
    *a6 = *(v23 + 24);
    v17 = v16[5];
  }

  v18 = v17;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v18;
}

- (BOOL)makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)a3 forPersona:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  [v10 makeSymlinkFromAppDataContainerToBundleForIdentifier:v8 forPersona:v9 completion:v14];

  v11 = v17[5];
  if (a5 && v11)
  {
    *a5 = v11;
    v11 = v17[5];
  }

  v12 = v11 == 0;
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (BOOL)createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
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
  [v15 createSafeHarborWithIdentifier:v12 forPersona:v13 containerType:a5 andMigrateDataFrom:v14 completion:v19];

  v16 = v22[5];
  if (a7 && v16)
  {
    *a7 = v16;
    v16 = v22[5];
  }

  v17 = v16 == 0;
  _Block_object_dispose(&v21, 8);

  return v17;
}

- (BOOL)dataContainer:(id)a3 ofContainerType:(unint64_t)a4 isEmpty:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
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
  [v11 isDataContainerEmpty:v10 ofContainerType:a4 completion:v15];

  if (a6)
  {
    v12 = v22[5];
    if (v12)
    {
      *a6 = v12;
    }
  }

  if (a5)
  {
    *a5 = *(v18 + 24);
  }

  v13 = v22[5] == 0;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (BOOL)moveItemInStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 onBehalfOf:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
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
  v16 = *&a6->var0[4];
  v19[0] = *a6->var0;
  v19[1] = v16;
  [v15 moveItemInStagingLocation:v12 atRelativePath:v13 toDestinationURL:v14 onBehalfOf:v19 completion:v20];

  v17 = *(v23 + 24);
  if (a7 && (v23[3] & 1) == 0)
  {
    *a7 = v27[5];
    v17 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v17 & 1;
}

- (BOOL)cloneItemAtURL:(id)a3 toURL:(id)a4 onBehalfOf:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
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
  v13 = *&a5->var0[4];
  v16[0] = *a5->var0;
  v16[1] = v13;
  [v12 cloneItemAtURL:v10 toURL:v11 onBehalfOf:v16 completion:v17];

  v14 = *(v20 + 24);
  if (a6 && (v20[3] & 1) == 0)
  {
    *a6 = v24[5];
    v14 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v14 & 1;
}

@end