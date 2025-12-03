@interface TransparencyBAACertFetcher
- (TransparencyBAACertFetcher)initWithWorkloop:(id)workloop analytics:(id)analytics;
- (id)eventNameForFetchPolicy:(unint64_t)policy;
- (void)dealloc;
- (void)deviceIdentityIssueCert:(id)cert completionHandler:(id)handler;
- (void)fetchWithPolicy:(unint64_t)policy completion:(id)completion;
- (void)getDeviceCertWithForcedFetch:(BOOL)fetch completionHandler:(id)handler;
- (void)triggerRemoteBAACertFetch;
@end

@implementation TransparencyBAACertFetcher

- (id)eventNameForFetchPolicy:(unint64_t)policy
{
  v3 = &stru_10032E8E8;
  if (policy == 2)
  {
    v3 = @"-noNet";
  }

  if (policy == 1)
  {
    v3 = @"-net";
  }

  return [NSString stringWithFormat:@"baaFetch%@", v3];
}

- (TransparencyBAACertFetcher)initWithWorkloop:(id)workloop analytics:(id)analytics
{
  workloopCopy = workloop;
  analyticsCopy = analytics;
  v23.receiver = self;
  v23.super_class = TransparencyBAACertFetcher;
  v8 = [(TransparencyBAACertFetcher *)&v23 init];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = [KTNearFutureScheduler alloc];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100242EB8;
    v20 = &unk_1003175E0;
    objc_copyWeak(&v21, &location);
    v10 = [(KTNearFutureScheduler *)v9 initWithName:@"BAACertFetch" initialDelay:2000000000 exponentialBackoff:7200000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:&v17 block:2.0];
    [(TransparencyBAACertFetcher *)v8 setBAACertFetcher:v10, v17, v18, v19, v20];

    [(TransparencyBAACertFetcher *)v8 setWorkloop:workloopCopy];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.transparency.deviceCertIssuanceQueue", v11);
    [(TransparencyBAACertFetcher *)v8 setIssuanceQueue:v12];

    v13 = dispatch_group_create();
    [(TransparencyBAACertFetcher *)v8 setIssuanceGroup:v13];

    v14 = objc_alloc_init(TransparencyBAAIssuer);
    [(TransparencyBAACertFetcher *)v8 setCertIssuer:v14];

    [(TransparencyBAACertFetcher *)v8 setAnalytics:analyticsCopy];
    v15 = v8;
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)deviceIdentityIssueCert:(id)cert completionHandler:(id)handler
{
  handlerCopy = handler;
  certCopy = cert;
  certIssuer = [(TransparencyBAACertFetcher *)self certIssuer];
  workloop = [(TransparencyBAACertFetcher *)self workloop];
  [certIssuer deviceIdentityIssueCert:certCopy queue:workloop completionHandler:handlerCopy];
}

- (void)fetchWithPolicy:(unint64_t)policy completion:(id)completion
{
  completionCopy = completion;
  issuanceGroup = [(TransparencyBAACertFetcher *)self issuanceGroup];
  objc_sync_enter(issuanceGroup);
  if ([(TransparencyBAACertFetcher *)self outstandingRemoteFetchSignal])
  {
    if (qword_10039CED8 != -1)
    {
      sub_100260600();
    }

    v8 = qword_10039CEE0;
    if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "An existing remote cert fetch is in progress. Waiting for that to finish.", buf, 2u);
    }

    issuanceGroup2 = [(TransparencyBAACertFetcher *)self issuanceGroup];
    issuanceQueue = [(TransparencyBAACertFetcher *)self issuanceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002434E4;
    block[3] = &unk_10031ABA0;
    block[4] = self;
    v25 = completionCopy;
    v11 = completionCopy;
    dispatch_group_notify(issuanceGroup2, issuanceQueue, block);

    objc_sync_exit(issuanceGroup);
  }

  else
  {
    objc_sync_exit(issuanceGroup);

    if (policy == 1)
    {
      issuanceGroup3 = [(TransparencyBAACertFetcher *)self issuanceGroup];
      objc_sync_enter(issuanceGroup3);
      issuanceGroup4 = [(TransparencyBAACertFetcher *)self issuanceGroup];
      dispatch_group_enter(issuanceGroup4);

      [(TransparencyBAACertFetcher *)self setOutstandingRemoteFetchSignal:1];
      objc_sync_exit(issuanceGroup3);
    }

    v29[0] = kTransparencyBAACertKeychainLabelKey;
    v28[0] = kMAOptionsBAAKeychainLabel;
    v28[1] = kMAOptionsBAAValidity;
    v14 = [NSNumber numberWithLongLong:[(TransparencyBAACertFetcher *)self getBAAValidity]];
    v29[1] = v14;
    v29[2] = kTransparencyBAACertKeychainAccessGroup;
    v28[2] = kMAOptionsBAAKeychainAccessGroup;
    v28[3] = kMAOptionsBAAOIDSToInclude;
    v27[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
    v27[1] = kMAOptionsBAAOIDDeviceOSInformation;
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v29[3] = v15;
    v28[4] = kMAOptionsUseSoftwareGeneratedKey;
    v29[4] = &__kCFBooleanTrue;
    v16 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];
    issuanceGroup = [v16 mutableCopy];

    if (policy == 2)
    {
      if (qword_10039CED8 != -1)
      {
        sub_100260588();
      }

      v18 = qword_10039CEE0;
      if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Calling deviceIdentityIssueCert with KTBAAForceNoNetworkFetchPolicy", buf, 2u);
      }

      [issuanceGroup setObject:&__kCFBooleanTrue forKeyedSubscript:kMAOptionsBAASkipNetworkRequest];
    }

    else if (policy == 1)
    {
      if (qword_10039CED8 != -1)
      {
        sub_1002605B0();
      }

      v17 = qword_10039CEE0;
      if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Calling deviceIdentityIssueCert with KTBAAForceNetworkFetchPolicy", buf, 2u);
      }

      [issuanceGroup setObject:&__kCFBooleanTrue forKeyedSubscript:kMAOptionsBAAIgnoreExistingKeychainItems];
    }

    else
    {
      if (qword_10039CED8 != -1)
      {
        sub_1002605D8();
      }

      v19 = qword_10039CEE0;
      if (os_log_type_enabled(qword_10039CEE0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Calling deviceIdentityIssueCert with KTBAADefaultFetchPolicy", buf, 2u);
      }
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1002435C0;
    v21[3] = &unk_10032CE98;
    v22 = completionCopy;
    policyCopy = policy;
    v21[4] = self;
    v20 = completionCopy;
    [(TransparencyBAACertFetcher *)self deviceIdentityIssueCert:issuanceGroup completionHandler:v21];
  }
}

- (void)triggerRemoteBAACertFetch
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100243778;
  v2[3] = &unk_10032CEE0;
  v2[4] = self;
  [(TransparencyBAACertFetcher *)self fetchWithPolicy:1 completion:v2];
}

- (void)getDeviceCertWithForcedFetch:(BOOL)fetch completionHandler:(id)handler
{
  fetchCopy = fetch;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002439EC;
  v6[3] = &unk_10032C2B0;
  selfCopy = self;
  handlerCopy = handler;
  v5 = handlerCopy;
  [(TransparencyBAACertFetcher *)selfCopy fetchWithPolicy:fetchCopy completion:v6];
}

- (void)dealloc
{
  bAACertFetcher = [(TransparencyBAACertFetcher *)self BAACertFetcher];
  [bAACertFetcher cancel];

  v4.receiver = self;
  v4.super_class = TransparencyBAACertFetcher;
  [(TransparencyBAACertFetcher *)&v4 dealloc];
}

@end