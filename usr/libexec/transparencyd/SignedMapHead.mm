@interface SignedMapHead
+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store;
- (MapHead)parsedMapHead;
- (id)copyManagedObject:(id *)object;
- (id)createManagedObjectWithError:(id *)error;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyMMD:(double)d error:(id *)error;
- (unint64_t)verifyWithError:(id *)error;
- (void)setMMDVerifiedForMapHead:(unint64_t)head mmdError:(id)error;
- (void)setOverrideBeginTimeFromLogEntry:(id)entry;
@end

@implementation SignedMapHead

+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store
{
  storeCopy = store;
  verifierCopy = verifier;
  objectCopy = object;
  v10 = objc_alloc_init(SignedMapHead);
  [(SignedObjectHolder *)v10 setSignedObject:objectCopy];

  [(SignedObjectHolder *)v10 setVerifier:verifierCopy];
  [(SignedObjectHolder *)v10 setDataStore:storeCopy];

  return v10;
}

- (id)diagnosticsJsonDictionary
{
  v9.receiver = self;
  v9.super_class = SignedMapHead;
  diagnosticsJsonDictionary = [(SignedObjectHolder *)&v9 diagnosticsJsonDictionary];
  v4 = [diagnosticsJsonDictionary mutableCopy];

  parsedMapHead = [(SignedMapHead *)self parsedMapHead];
  v6 = parsedMapHead;
  if (parsedMapHead)
  {
    diagnosticsJsonDictionary2 = [parsedMapHead diagnosticsJsonDictionary];
    [v4 setObject:diagnosticsJsonDictionary2 forKeyedSubscript:@"mapHead"];
  }

  return v4;
}

- (void)setOverrideBeginTimeFromLogEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy hasSlh])
  {
    v4 = [entryCopy slh];
    v5 = [SignedLogHead signedTypeWithObject:v4];

    parsedLogHead = [v5 parsedLogHead];
    -[SignedMapHead setOverrideBeginTime:](self, "setOverrideBeginTime:", [parsedLogHead logBeginningMs]);
  }
}

- (id)copyManagedObject:(id *)object
{
  parsedMapHead = [(SignedMapHead *)self parsedMapHead];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedMapHead application]);
  v7 = [TransparencyApplication applicationIdentifierForValue:v6];

  dataStore = [(SignedObjectHolder *)self dataStore];
  parsedMapHead2 = [(SignedMapHead *)self parsedMapHead];
  mapHeadHash = [parsedMapHead2 mapHeadHash];
  overrideBeginTime = [(SignedMapHead *)self overrideBeginTime];
  if (overrideBeginTime)
  {
    overrideBeginTime2 = [(SignedMapHead *)self overrideBeginTime];
  }

  else
  {
    parsedMapHead3 = [(SignedMapHead *)self parsedMapHead];
    overrideBeginTime2 = [parsedMapHead3 logBeginningMs];
  }

  parsedMapHead4 = [(SignedMapHead *)self parsedMapHead];
  mapType = [parsedMapHead4 mapType];
  parsedMapHead5 = [(SignedMapHead *)self parsedMapHead];
  v16 = [dataStore fetchTreeHead:mapHeadHash isMapHead:1 application:v7 logBeginTime:overrideBeginTime2 logType:mapType revision:objc_msgSend(parsedMapHead5 error:{"revision"), object}];

  if (!overrideBeginTime)
  {
  }

  return v16;
}

- (id)createManagedObjectWithError:(id *)error
{
  parsedMapHead = [(SignedMapHead *)self parsedMapHead];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedMapHead application]);
  v6 = [TransparencyApplication applicationIdentifierForValue:v5];

  dataStore = [(SignedObjectHolder *)self dataStore];
  data = [(SignedObjectHolder *)self data];
  overrideBeginTime = [(SignedMapHead *)self overrideBeginTime];
  v22 = v6;
  if (overrideBeginTime)
  {
    overrideBeginTime2 = [(SignedMapHead *)self overrideBeginTime];
  }

  else
  {
    parsedMapHead2 = [(SignedMapHead *)self parsedMapHead];
    overrideBeginTime2 = [parsedMapHead2 logBeginningMs];
  }

  parsedMapHead3 = [(SignedMapHead *)self parsedMapHead];
  mapHeadHash = [parsedMapHead3 mapHeadHash];
  parsedMapHead4 = [(SignedMapHead *)self parsedMapHead];
  mapType = [parsedMapHead4 mapType];
  parsedMapHead5 = [(SignedMapHead *)self parsedMapHead];
  revision = [parsedMapHead5 revision];
  parsedMapHead6 = [(SignedMapHead *)self parsedMapHead];
  LOWORD(v18) = [parsedMapHead6 populating];
  v16 = [dataStore createMapHead:data application:v22 logBeginTime:overrideBeginTime2 logHeadHash:mapHeadHash logType:mapType revision:revision populating:v18 gossip:?];

  if (!overrideBeginTime)
  {
  }

  return v16;
}

- (MapHead)parsedMapHead
{
  mapHead = [(SignedMapHead *)self mapHead];
  if (mapHead && (v4 = mapHead, -[SignedMapHead mapHead](self, "mapHead"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    mapHead2 = [(SignedMapHead *)self mapHead];
    v13 = 0;
    v8 = [(TransparencyGPBMessage *)MapHead parseFromData:mapHead2 error:&v13];
    v9 = v13;

    if (v9)
    {
      if (qword_10039CDB8 != -1)
      {
        sub_10025F840();
      }

      v10 = qword_10039CDC0;
      if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to parse map head from SignedMapHead: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_10039CDB8 != -1)
    {
      sub_10025F868();
    }

    v11 = qword_10039CDC0;
    if (os_log_type_enabled(qword_10039CDC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMH missing map head", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (unint64_t)verifyWithError:(id *)error
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10022D424;
  v12[3] = &unk_100328178;
  v12[4] = self;
  v5 = objc_retainBlock(v12);
  parsedMapHead = [(SignedMapHead *)self parsedMapHead];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedMapHead application]);
  v8 = [TransparencyApplication applicationIdentifierForValue:v7];

  v9 = [TransparencyAnalytics formatEventName:@"VerifySMHEvent" application:v8];
  v10 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v9 validateType:3 error:error block:v5];

  return v10;
}

- (void)setMMDVerifiedForMapHead:(unint64_t)head mmdError:(id)error
{
  errorCopy = error;
  dataStore = [(SignedObjectHolder *)self dataStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10022DA74;
  v9[3] = &unk_10031A7F0;
  v10 = errorCopy;
  headCopy = head;
  v9[4] = self;
  v8 = errorCopy;
  [dataStore performBlockAndWait:v9];
}

- (unint64_t)verifyMMD:(double)d error:(id *)error
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10022DDA8;
  v16[3] = &unk_10032BC18;
  v16[4] = self;
  *&v16[5] = d;
  v6 = objc_retainBlock(v16);
  v15 = 0;
  v7 = [(SignedMapHead *)self verifyWithError:&v15];
  v8 = v15;
  [TransparencyMapEntryVerifier storeSMHSignatureResult:v7 smh:self error:v8];
  if (error && v8)
  {
    v9 = v8;
    *error = v8;
  }

  if (v7 == 1)
  {
    parsedMapHead = [(SignedMapHead *)self parsedMapHead];
    v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedMapHead application]);
    v12 = [TransparencyApplication applicationIdentifierForValue:v11];

    v13 = [TransparencyAnalytics formatEventName:@"VerifySMHEvent" application:v12];
    v7 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v13 error:error block:v6];
  }

  return v7;
}

@end