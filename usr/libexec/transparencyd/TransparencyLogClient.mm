@interface TransparencyLogClient
+ (double)timeShift:(id)shift;
- (BOOL)needsReauthorization:(id)reauthorization metadata:(id)metadata;
- (BOOL)needsTimeShift:(id)shift metadata:(id)metadata;
- (BOOL)ready;
- (TransparencyLogClient)initWithBackgroundSession:(id)session transparencyAnalytics:(id)analytics dataStore:(id)store settings:(id)settings;
- (void)deleteDownloadId:(id)id;
- (void)fetchRequest:(id)request completionHandler:(id)handler;
- (void)renewAccountTokenForFetch:(id)fetch allowEmptyData:(BOOL)data useReversePush:(BOOL)push completionHandler:(id)handler;
@end

@implementation TransparencyLogClient

- (TransparencyLogClient)initWithBackgroundSession:(id)session transparencyAnalytics:(id)analytics dataStore:(id)store settings:(id)settings
{
  sessionCopy = session;
  analyticsCopy = analytics;
  storeCopy = store;
  settingsCopy = settings;
  v18.receiver = self;
  v18.super_class = TransparencyLogClient;
  v14 = [(TransparencyLogClient *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(TransparencyLogClient *)v14 setSession:sessionCopy];
    [(TransparencyLogClient *)v15 setDataStore:storeCopy];
    [(TransparencyLogClient *)v15 setTransparencyAnalytics:analyticsCopy];
    [(TransparencyLogClient *)v15 setSettings:settingsCopy];
    v16 = +[TransparencyIDSConfigBag sharedInstance];
    [(TransparencyLogClient *)v15 setIdsConfigBag:v16];
  }

  return v15;
}

- (BOOL)ready
{
  session = [(TransparencyLogClient *)self session];
  auth = [session auth];
  isSupported = [auth isSupported];

  if (!isSupported)
  {
    return 1;
  }

  session2 = [(TransparencyLogClient *)self session];
  auth2 = [session2 auth];
  ready = [auth2 ready];

  return ready;
}

- (BOOL)needsReauthorization:(id)reauthorization metadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(TransparencyLogClient *)self needsRetry:reauthorization])
  {
    v7 = [metadataCopy objectForKeyedSubscript:@"x-auth-status"];
    v8 = v7;
    if (v7)
    {
      if ([v7 isEqualToString:@"unauthorized"])
      {
        if (qword_10039CE88 != -1)
        {
          sub_10026013C();
        }

        v9 = qword_10039CE90;
        if (!os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        LOWORD(v16) = 0;
        v10 = "authorization failed";
        v11 = v9;
        v12 = 2;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
LABEL_16:

        v13 = 1;
        goto LABEL_17;
      }

      if (([v8 isEqualToString:@"time-drift"] & 1) == 0)
      {
        if (qword_10039CE88 != -1)
        {
          sub_100260128();
        }

        v14 = qword_10039CE90;
        if (!os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v16 = 138412290;
        v17 = v8;
        v10 = "unknown auth status %@";
        v11 = v14;
        v12 = 12;
        goto LABEL_15;
      }
    }
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)needsTimeShift:(id)shift metadata:(id)metadata
{
  metadataCopy = metadata;
  if (![(TransparencyLogClient *)self needsRetry:shift])
  {
    goto LABEL_10;
  }

  v7 = [metadataCopy objectForKeyedSubscript:@"x-auth-status"];
  v8 = v7;
  if (!v7 || ![v7 isEqualToString:@"time-drift"])
  {

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (qword_10039CE88 != -1)
  {
    sub_100260150();
  }

  v9 = qword_10039CE90;
  if (os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "authorization failed due to time drift", v12, 2u);
  }

  v10 = 1;
LABEL_11:

  return v10;
}

+ (double)timeShift:(id)shift
{
  v3 = [shift objectForKeyedSubscript:@"Date"];
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"EE, dd MMM yyyy HH:mm:ss 'GMT'"];
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v6];

  v7 = [v4 dateFromString:v3];
  v8 = v7;
  if (v7)
  {
    [v7 timeIntervalSinceNow];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)renewAccountTokenForFetch:(id)fetch allowEmptyData:(BOOL)data useReversePush:(BOOL)push completionHandler:(id)handler
{
  fetchCopy = fetch;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002384C0;
  v17[3] = &unk_10032C678;
  handlerCopy = handler;
  v19 = handlerCopy;
  v17[4] = self;
  v12 = fetchCopy;
  v18 = v12;
  dataCopy = data;
  pushCopy = push;
  v13 = objc_retainBlock(v17);
  v16 = 0;
  LOBYTE(fetchCopy) = [TransparencyAccount initiateCredentialRenewal:&v16 completionHandler:v13];
  v14 = v16;
  if ((fetchCopy & 1) == 0)
  {
    if (qword_10039CE88 != -1)
    {
      sub_100260164();
    }

    v15 = qword_10039CE90;
    if (os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to initiate credential renewal: %@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);
  }
}

- (void)fetchRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  session = [(TransparencyLogClient *)self session];
  auth = [session auth];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100238B84;
  v12[3] = &unk_10032C738;
  v13 = requestCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = requestCopy;
  v11 = handlerCopy;
  [v10 createRequestForAuthentication:auth completionHandler:v12];
}

- (void)deleteDownloadId:(id)id
{
  idCopy = id;
  if (qword_10039CE88 != -1)
  {
    sub_10026018C();
  }

  v5 = qword_10039CE90;
  if (os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deleting downloadId %{public}@", buf, 0xCu);
  }

  dataStore = [(TransparencyLogClient *)self dataStore];
  v10 = 0;
  v7 = [dataStore deleteDownloadRecordById:idCopy error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    if (qword_10039CE88 != -1)
    {
      sub_1002601A0();
    }

    v9 = qword_10039CE90;
    if (os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = idCopy;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to delete downloadId %{public}@: %@", buf, 0x16u);
    }
  }
}

@end