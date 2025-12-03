@interface MSDIPAUninstallOperation
- (BOOL)_IXUninstallAppIPA;
- (id)methodSelectors;
@end

@implementation MSDIPAUninstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_IXUninstallAppIPA"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_IXUninstallAppIPA
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Uninstallig app: %{public}@", &buf, 0xCu);
  }

  v5 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = objc_alloc_init(IXUninstallOptions);
  [v6 setRequestUserConfirmation:0];
  [v6 setWaitForDeletion:0];
  [v6 setIgnoreRestrictions:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100084564;
  v19[3] = &unk_10016B940;
  v7 = identifier;
  v20 = v7;
  p_buf = &buf;
  v8 = v5;
  v21 = v8;
  [IXAppInstallCoordinator uninstallAppWithBundleID:v7 options:v6 completion:v19];
  v9 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Timed out waiting for app removal to finish.", v18, 2u);
    }
  }

  v11 = *(*(&buf + 1) + 24);
  if (v11 == 1)
  {
    v12 = +[MSDCache sharedInstance];
    v13 = [v12 containerExist:v7];

    if (v13)
    {
      v14 = +[MSDCache sharedInstance];
      v15 = [v14 deleteContainer:v7];

      if ((v15 & 1) == 0)
      {
        v16 = sub_100063A54();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000DDAF8(v7, v16);
        }
      }
    }
  }

  _Block_object_dispose(&buf, 8);
  return v11;
}

@end