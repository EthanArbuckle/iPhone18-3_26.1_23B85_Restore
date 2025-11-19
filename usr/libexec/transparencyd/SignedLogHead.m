@interface SignedLogHead
+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5;
- (LogHead)parsedLogHead;
- (id)copyManagedObject:(id *)a3;
- (id)createManagedObjectWithError:(id *)a3;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)a3;
- (void)storeSignatureResult:(unint64_t)a3 signatureError:(id *)a4;
@end

@implementation SignedLogHead

+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(SignedLogHead);
  [(SignedObjectHolder *)v10 setSignedObject:v9];

  [(SignedObjectHolder *)v10 setVerifier:v8];
  [(SignedObjectHolder *)v10 setDataStore:v7];

  return v10;
}

- (id)diagnosticsJsonDictionary
{
  v8.receiver = self;
  v8.super_class = SignedLogHead;
  v3 = [(SignedObjectHolder *)&v8 diagnosticsJsonDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(SignedLogHead *)self parsedLogHead];
  v6 = [v5 diagnosticsJsonDictionary];
  [v4 setObject:v6 forKeyedSubscript:@"logHead"];

  return v4;
}

- (LogHead)parsedLogHead
{
  v3 = [(SignedLogHead *)self logHead];
  if (v3 && (v4 = v3, -[SignedLogHead logHead](self, "logHead"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = [(SignedLogHead *)self logHead];
    v13 = 0;
    v8 = [(TransparencyGPBMessage *)LogHead parseFromData:v7 error:&v13];
    v9 = v13;

    if (v9)
    {
      if (qword_10039CDA8 != -1)
      {
        sub_10025F778();
      }

      v10 = qword_10039CDB0;
      if (os_log_type_enabled(qword_10039CDB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to parse log head from Signed Log Head: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_10039CDA8 != -1)
    {
      sub_10025F7A0();
    }

    v11 = qword_10039CDB0;
    if (os_log_type_enabled(qword_10039CDB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SLH missing log head", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)copyManagedObject:(id *)a3
{
  v5 = [(SignedLogHead *)self parsedLogHead];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 application]);
  v7 = [TransparencyApplication applicationIdentifierForValue:v6];

  v8 = [(SignedObjectHolder *)self dataStore];
  v9 = [(SignedLogHead *)self parsedLogHead];
  v10 = [v9 logHeadHash];
  v11 = [(SignedLogHead *)self parsedLogHead];
  v12 = [v11 logBeginningMs];
  v13 = [(SignedLogHead *)self parsedLogHead];
  v14 = [v13 logType];
  v15 = [(SignedLogHead *)self parsedLogHead];
  v16 = [v8 fetchTreeHead:v10 isMapHead:0 application:v7 logBeginTime:v12 logType:v14 revision:objc_msgSend(v15 error:{"revision"), a3}];

  return v16;
}

- (id)createManagedObjectWithError:(id *)a3
{
  v4 = [(SignedLogHead *)self parsedLogHead];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 application]);
  v19 = [TransparencyApplication applicationIdentifierForValue:v5];

  v6 = [(SignedObjectHolder *)self dataStore];
  v7 = [(SignedObjectHolder *)self data];
  v8 = [(SignedLogHead *)self parsedLogHead];
  v18 = [v8 logBeginningMs];
  v9 = [(SignedLogHead *)self parsedLogHead];
  v10 = [v9 logHeadHash];
  v11 = [(SignedLogHead *)self parsedLogHead];
  v12 = [v11 logType];
  v13 = [(SignedLogHead *)self parsedLogHead];
  v14 = [v13 revision];
  LOBYTE(v17) = [(SignedLogHead *)self gossip];
  v15 = [v6 createTreeHead:v7 isMapHead:0 application:v19 logBeginTime:v18 logHeadHash:v10 logType:v12 revision:v14 gossip:v17];

  return v15;
}

- (void)storeSignatureResult:(unint64_t)a3 signatureError:(id *)a4
{
  v7 = [(SignedObjectHolder *)self dataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10022BE44;
  v8[3] = &unk_10032BAB0;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  [v7 performBlockAndWait:v8];
}

- (unint64_t)verifyWithError:(id *)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10022C1F4;
  v12[3] = &unk_100328178;
  v12[4] = self;
  v5 = objc_retainBlock(v12);
  v6 = [(SignedLogHead *)self parsedLogHead];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 application]);
  v8 = [TransparencyApplication applicationIdentifierForValue:v7];

  v9 = [TransparencyAnalytics formatEventName:@"VerifySTHEvent" application:v8];
  v10 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v9 validateType:3 error:a3 block:v5];

  return v10;
}

@end