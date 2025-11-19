@interface WCDRetrieveInstalledAppsListOperation
+ (id)md5HexDigest:(id)a3;
- (void)doWorkWithCompletionHandler:(id)a3;
@end

@implementation WCDRetrieveInstalledAppsListOperation

- (void)doWorkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = "[WCDRetrieveInstalledAppsListOperation doWorkWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6 = objc_initWeak(buf, self);
  v7 = [(WCDRetrieveInstalledAppsListOperation *)self isCancelled];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained finish];
  }

  else
  {
    v9 = +[NSMutableSet set];
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v11 = [v10 getActivePairedDevice];

    v12 = +[ACXDeviceConnection sharedDeviceConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000BCFC;
    v14[3] = &unk_100048DA0;
    v18 = v4;
    v13 = v11;
    v15 = v13;
    v16 = self;
    WeakRetained = v9;
    v17 = WeakRetained;
    objc_copyWeak(&v19, buf);
    [v12 fetchInstalledApplicationsForPairedDevice:v13 completion:v14];

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(buf);
}

+ (id)md5HexDigest:(id)a3
{
  v3 = [a3 UTF8String];
  v4 = strlen(v3);
  CC_MD5(v3, v4, md);
  v5 = [NSMutableString stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  return v5;
}

@end