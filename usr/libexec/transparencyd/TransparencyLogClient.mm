@interface TransparencyLogClient
+ (double)timeShift:(id)a3;
- (BOOL)needsReauthorization:(id)a3 metadata:(id)a4;
- (BOOL)needsTimeShift:(id)a3 metadata:(id)a4;
- (BOOL)ready;
- (TransparencyLogClient)initWithBackgroundSession:(id)a3 transparencyAnalytics:(id)a4 dataStore:(id)a5 settings:(id)a6;
- (void)deleteDownloadId:(id)a3;
- (void)fetchRequest:(id)a3 completionHandler:(id)a4;
- (void)renewAccountTokenForFetch:(id)a3 allowEmptyData:(BOOL)a4 useReversePush:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation TransparencyLogClient

- (TransparencyLogClient)initWithBackgroundSession:(id)a3 transparencyAnalytics:(id)a4 dataStore:(id)a5 settings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = TransparencyLogClient;
  v14 = [(TransparencyLogClient *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(TransparencyLogClient *)v14 setSession:v10];
    [(TransparencyLogClient *)v15 setDataStore:v12];
    [(TransparencyLogClient *)v15 setTransparencyAnalytics:v11];
    [(TransparencyLogClient *)v15 setSettings:v13];
    v16 = +[TransparencyIDSConfigBag sharedInstance];
    [(TransparencyLogClient *)v15 setIdsConfigBag:v16];
  }

  return v15;
}

- (BOOL)ready
{
  v3 = [(TransparencyLogClient *)self session];
  v4 = [v3 auth];
  v5 = [v4 isSupported];

  if (!v5)
  {
    return 1;
  }

  v6 = [(TransparencyLogClient *)self session];
  v7 = [v6 auth];
  v8 = [v7 ready];

  return v8;
}

- (BOOL)needsReauthorization:(id)a3 metadata:(id)a4
{
  v6 = a4;
  if ([(TransparencyLogClient *)self needsRetry:a3])
  {
    v7 = [v6 objectForKeyedSubscript:@"x-auth-status"];
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

- (BOOL)needsTimeShift:(id)a3 metadata:(id)a4
{
  v6 = a4;
  if (![(TransparencyLogClient *)self needsRetry:a3])
  {
    goto LABEL_10;
  }

  v7 = [v6 objectForKeyedSubscript:@"x-auth-status"];
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

+ (double)timeShift:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Date"];
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

- (void)renewAccountTokenForFetch:(id)a3 allowEmptyData:(BOOL)a4 useReversePush:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002384C0;
  v17[3] = &unk_10032C678;
  v11 = a6;
  v19 = v11;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v20 = a4;
  v21 = a5;
  v13 = objc_retainBlock(v17);
  v16 = 0;
  LOBYTE(v10) = [TransparencyAccount initiateCredentialRenewal:&v16 completionHandler:v13];
  v14 = v16;
  if ((v10 & 1) == 0)
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

    (*(v11 + 2))(v11, 0, 0, v14);
  }
}

- (void)fetchRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransparencyLogClient *)self session];
  v9 = [v8 auth];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100238B84;
  v12[3] = &unk_10032C738;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v10 createRequestForAuthentication:v9 completionHandler:v12];
}

- (void)deleteDownloadId:(id)a3
{
  v4 = a3;
  if (qword_10039CE88 != -1)
  {
    sub_10026018C();
  }

  v5 = qword_10039CE90;
  if (os_log_type_enabled(qword_10039CE90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deleting downloadId %{public}@", buf, 0xCu);
  }

  v6 = [(TransparencyLogClient *)self dataStore];
  v10 = 0;
  v7 = [v6 deleteDownloadRecordById:v4 error:&v10];
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
      v12 = v4;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to delete downloadId %{public}@: %@", buf, 0x16u);
    }
  }
}

@end