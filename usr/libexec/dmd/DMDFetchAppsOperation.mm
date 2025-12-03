@interface DMDFetchAppsOperation
+ (id)whitelistedClassesForRequest;
+ (void)_fetchAppsForBundleIdentifier:(id)identifier type:(unint64_t)type completion:(id)completion;
+ (void)fetchAppsForRequest:(id)request completion:(id)completion;
- (void)runWithRequest:(id)request;
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

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100044CDC;
  v5[3] = &unk_1000CF1A8;
  v5[4] = self;
  [objc_opt_class() fetchAppsForRequest:requestCopy completion:v5];
}

+ (void)fetchAppsForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9 = completionCopy;
  if (requestCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100084310(a2, self);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  sub_10008438C(a2, self);
LABEL_3:
  v10 = +[DMDAppController sharedController];
  manifestURL = [requestCopy manifestURL];
  v12 = DMFAppLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (manifestURL)
  {
    if (v13)
    {
      manifestURL2 = [requestCopy manifestURL];
      host = [manifestURL2 host];
      *buf = 138543362;
      v33 = host;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetch app with manifest url from: %{public}@", buf, 0xCu);
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100045030;
    v29[3] = &unk_1000CF1D0;
    v16 = v31;
    v31[0] = v9;
    v31[1] = self;
    v17 = &v30;
    v30 = requestCopy;
    v18 = requestCopy;
    v19 = v9;
    [v10 getBundleIdentifierForManifestURL:manifestURL completion:v29];
  }

  else
  {
    if (v13)
    {
      bundleIdentifiers = [requestCopy bundleIdentifiers];
      storeItemIdentifier = [requestCopy storeItemIdentifier];
      *buf = 138543618;
      v33 = bundleIdentifiers;
      v34 = 2114;
      v35 = storeItemIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetch apps with bundle ids: %{public}@, store item id: %{public}@", buf, 0x16u);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000450B8;
    v25[3] = &unk_1000CF1F8;
    v16 = &v28;
    v17 = &v26;
    v28 = v9;
    v26 = requestCopy;
    v22 = v10;
    v27 = v22;
    v23 = requestCopy;
    v24 = v9;
    [v22 handleFetchRequest:v23 completion:v25];
  }
}

+ (void)_fetchAppsForBundleIdentifier:(id)identifier type:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  v12 = identifierCopy;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [v10 setBundleIdentifiers:v11];
  [v10 setType:type];
  [self fetchAppsForRequest:v10 completion:completionCopy];
}

@end