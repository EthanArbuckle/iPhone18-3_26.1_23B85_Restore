@interface DMDFetchAppsOperation
+ (id)whitelistedClassesForRequest;
+ (void)_fetchAppsForBundleIdentifier:(id)a3 type:(unint64_t)a4 completion:(id)a5;
+ (void)fetchAppsForRequest:(id)a3 completion:(id)a4;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchAppsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchAppsOperation;
  [(DMDFetchAppsOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100044CDC;
  v5[3] = &unk_1000CF1A8;
  v5[4] = self;
  [objc_opt_class() fetchAppsForRequest:v4 completion:v5];
}

+ (void)fetchAppsForRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100084310(a2, a1);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  sub_10008438C(a2, a1);
LABEL_3:
  v10 = +[DMDAppController sharedController];
  v11 = [v7 manifestURL];
  v12 = DMFAppLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [v7 manifestURL];
      v15 = [v14 host];
      *buf = 138543362;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetch app with manifest url from: %{public}@", buf, 0xCu);
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100045030;
    v29[3] = &unk_1000CF1D0;
    v16 = v31;
    v31[0] = v9;
    v31[1] = a1;
    v17 = &v30;
    v30 = v7;
    v18 = v7;
    v19 = v9;
    [v10 getBundleIdentifierForManifestURL:v11 completion:v29];
  }

  else
  {
    if (v13)
    {
      v20 = [v7 bundleIdentifiers];
      v21 = [v7 storeItemIdentifier];
      *buf = 138543618;
      v33 = v20;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetch apps with bundle ids: %{public}@, store item id: %{public}@", buf, 0x16u);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000450B8;
    v25[3] = &unk_1000CF1F8;
    v16 = &v28;
    v17 = &v26;
    v28 = v9;
    v26 = v7;
    v22 = v10;
    v27 = v22;
    v23 = v7;
    v24 = v9;
    [v22 handleFetchRequest:v23 completion:v25];
  }
}

+ (void)_fetchAppsForBundleIdentifier:(id)a3 type:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v12 = v9;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [v10 setBundleIdentifiers:v11];
  [v10 setType:a4];
  [a1 fetchAppsForRequest:v10 completion:v8];
}

@end