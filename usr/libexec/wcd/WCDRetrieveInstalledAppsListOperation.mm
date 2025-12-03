@interface WCDRetrieveInstalledAppsListOperation
+ (id)md5HexDigest:(id)digest;
- (void)doWorkWithCompletionHandler:(id)handler;
@end

@implementation WCDRetrieveInstalledAppsListOperation

- (void)doWorkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = "[WCDRetrieveInstalledAppsListOperation doWorkWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6 = objc_initWeak(buf, self);
  isCancelled = [(WCDRetrieveInstalledAppsListOperation *)self isCancelled];

  if (isCancelled)
  {
    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained finish];
  }

  else
  {
    v9 = +[NSMutableSet set];
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v10 getActivePairedDevice];

    v12 = +[ACXDeviceConnection sharedDeviceConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000BCFC;
    v14[3] = &unk_100048DA0;
    v18 = handlerCopy;
    v13 = getActivePairedDevice;
    v15 = v13;
    selfCopy = self;
    WeakRetained = v9;
    v17 = WeakRetained;
    objc_copyWeak(&v19, buf);
    [v12 fetchInstalledApplicationsForPairedDevice:v13 completion:v14];

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(buf);
}

+ (id)md5HexDigest:(id)digest
{
  uTF8String = [digest UTF8String];
  v4 = strlen(uTF8String);
  CC_MD5(uTF8String, v4, md);
  v5 = [NSMutableString stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  return v5;
}

@end