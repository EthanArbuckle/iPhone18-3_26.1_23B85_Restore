@interface SignedMapHead
+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5;
- (MapHead)parsedMapHead;
- (id)copyManagedObject:(id *)a3;
- (id)createManagedObjectWithError:(id *)a3;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyMMD:(double)a3 error:(id *)a4;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setMMDVerifiedForMapHead:(unint64_t)a3 mmdError:(id)a4;
- (void)setOverrideBeginTimeFromLogEntry:(id)a3;
@end

@implementation SignedMapHead

+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(SignedMapHead);
  [(SignedObjectHolder *)v10 setSignedObject:v9];

  [(SignedObjectHolder *)v10 setVerifier:v8];
  [(SignedObjectHolder *)v10 setDataStore:v7];

  return v10;
}

- (id)diagnosticsJsonDictionary
{
  v9.receiver = self;
  v9.super_class = SignedMapHead;
  v3 = [(SignedObjectHolder *)&v9 diagnosticsJsonDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(SignedMapHead *)self parsedMapHead];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 diagnosticsJsonDictionary];
    [v4 setObject:v7 forKeyedSubscript:@"mapHead"];
  }

  return v4;
}

- (void)setOverrideBeginTimeFromLogEntry:(id)a3
{
  v7 = a3;
  if ([v7 hasSlh])
  {
    v4 = [v7 slh];
    v5 = [SignedLogHead signedTypeWithObject:v4];

    v6 = [v5 parsedLogHead];
    -[SignedMapHead setOverrideBeginTime:](self, "setOverrideBeginTime:", [v6 logBeginningMs]);
  }
}

- (id)copyManagedObject:(id *)a3
{
  v5 = [(SignedMapHead *)self parsedMapHead];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 application]);
  v7 = [TransparencyApplication applicationIdentifierForValue:v6];

  v8 = [(SignedObjectHolder *)self dataStore];
  v9 = [(SignedMapHead *)self parsedMapHead];
  v10 = [v9 mapHeadHash];
  v11 = [(SignedMapHead *)self overrideBeginTime];
  if (v11)
  {
    v12 = [(SignedMapHead *)self overrideBeginTime];
  }

  else
  {
    v18 = [(SignedMapHead *)self parsedMapHead];
    v12 = [v18 logBeginningMs];
  }

  v13 = [(SignedMapHead *)self parsedMapHead];
  v14 = [v13 mapType];
  v15 = [(SignedMapHead *)self parsedMapHead];
  v16 = [v8 fetchTreeHead:v10 isMapHead:1 application:v7 logBeginTime:v12 logType:v14 revision:objc_msgSend(v15 error:{"revision"), a3}];

  if (!v11)
  {
  }

  return v16;
}

- (id)createManagedObjectWithError:(id *)a3
{
  v4 = [(SignedMapHead *)self parsedMapHead];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 application]);
  v6 = [TransparencyApplication applicationIdentifierForValue:v5];

  v7 = [(SignedObjectHolder *)self dataStore];
  v8 = [(SignedObjectHolder *)self data];
  v21 = [(SignedMapHead *)self overrideBeginTime];
  v22 = v6;
  if (v21)
  {
    v20 = [(SignedMapHead *)self overrideBeginTime];
  }

  else
  {
    v19 = [(SignedMapHead *)self parsedMapHead];
    v20 = [v19 logBeginningMs];
  }

  v9 = [(SignedMapHead *)self parsedMapHead];
  v10 = [v9 mapHeadHash];
  v11 = [(SignedMapHead *)self parsedMapHead];
  v12 = [v11 mapType];
  v13 = [(SignedMapHead *)self parsedMapHead];
  v14 = [v13 revision];
  v15 = [(SignedMapHead *)self parsedMapHead];
  LOWORD(v18) = [v15 populating];
  v16 = [v7 createMapHead:v8 application:v22 logBeginTime:v20 logHeadHash:v10 logType:v12 revision:v14 populating:v18 gossip:?];

  if (!v21)
  {
  }

  return v16;
}

- (MapHead)parsedMapHead
{
  v3 = [(SignedMapHead *)self mapHead];
  if (v3 && (v4 = v3, -[SignedMapHead mapHead](self, "mapHead"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = [(SignedMapHead *)self mapHead];
    v13 = 0;
    v8 = [(TransparencyGPBMessage *)MapHead parseFromData:v7 error:&v13];
    v9 = v13;

    if (v9)
    {
      if (qword_1001560F0 != -1)
      {
        sub_1000F2DCC();
      }

      v10 = qword_1001560F8;
      if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to parse map head from SignedMapHead: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_1001560F0 != -1)
    {
      sub_1000F2DF4();
    }

    v11 = qword_1001560F8;
    if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMH missing map head", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (unint64_t)verifyWithError:(id *)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001277C;
  v12[3] = &unk_100132348;
  v12[4] = self;
  v5 = objc_retainBlock(v12);
  v6 = [(SignedMapHead *)self parsedMapHead];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 application]);
  v8 = [TransparencyApplication applicationIdentifierForValue:v7];

  v9 = [TransparencyAnalytics formatEventName:@"VerifySMHEvent" application:v8];
  v10 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v9 validateType:3 error:a3 block:v5];

  return v10;
}

- (void)setMMDVerifiedForMapHead:(unint64_t)a3 mmdError:(id)a4
{
  v6 = a4;
  v7 = [(SignedObjectHolder *)self dataStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012DCC;
  v9[3] = &unk_100132258;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performBlockAndWait:v9];
}

- (unint64_t)verifyMMD:(double)a3 error:(id *)a4
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100013100;
  v16[3] = &unk_100132BD8;
  v16[4] = self;
  *&v16[5] = a3;
  v6 = objc_retainBlock(v16);
  v15 = 0;
  v7 = [(SignedMapHead *)self verifyWithError:&v15];
  v8 = v15;
  [TransparencyMapEntryVerifier storeSMHSignatureResult:v7 smh:self error:v8];
  if (a4 && v8)
  {
    v9 = v8;
    *a4 = v8;
  }

  if (v7 == 1)
  {
    v10 = [(SignedMapHead *)self parsedMapHead];
    v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 application]);
    v12 = [TransparencyApplication applicationIdentifierForValue:v11];

    v13 = [TransparencyAnalytics formatEventName:@"VerifySMHEvent" application:v12];
    v7 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v13 error:a4 block:v6];
  }

  return v7;
}

@end