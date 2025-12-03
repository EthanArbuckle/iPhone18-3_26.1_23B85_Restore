@interface SignedLogHead
+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store;
- (LogHead)parsedLogHead;
- (id)copyManagedObject:(id *)object;
- (id)createManagedObjectWithError:(id *)error;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)error;
- (void)storeSignatureResult:(unint64_t)result signatureError:(id *)error;
@end

@implementation SignedLogHead

+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store
{
  storeCopy = store;
  verifierCopy = verifier;
  objectCopy = object;
  v10 = objc_alloc_init(SignedLogHead);
  [(SignedObjectHolder *)v10 setSignedObject:objectCopy];

  [(SignedObjectHolder *)v10 setVerifier:verifierCopy];
  [(SignedObjectHolder *)v10 setDataStore:storeCopy];

  return v10;
}

- (id)diagnosticsJsonDictionary
{
  v8.receiver = self;
  v8.super_class = SignedLogHead;
  diagnosticsJsonDictionary = [(SignedObjectHolder *)&v8 diagnosticsJsonDictionary];
  v4 = [diagnosticsJsonDictionary mutableCopy];

  parsedLogHead = [(SignedLogHead *)self parsedLogHead];
  diagnosticsJsonDictionary2 = [parsedLogHead diagnosticsJsonDictionary];
  [v4 setObject:diagnosticsJsonDictionary2 forKeyedSubscript:@"logHead"];

  return v4;
}

- (LogHead)parsedLogHead
{
  logHead = [(SignedLogHead *)self logHead];
  if (logHead && (v4 = logHead, -[SignedLogHead logHead](self, "logHead"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    logHead2 = [(SignedLogHead *)self logHead];
    v13 = 0;
    v8 = [(TransparencyGPBMessage *)LogHead parseFromData:logHead2 error:&v13];
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

- (id)copyManagedObject:(id *)object
{
  parsedLogHead = [(SignedLogHead *)self parsedLogHead];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedLogHead application]);
  v7 = [TransparencyApplication applicationIdentifierForValue:v6];

  dataStore = [(SignedObjectHolder *)self dataStore];
  parsedLogHead2 = [(SignedLogHead *)self parsedLogHead];
  logHeadHash = [parsedLogHead2 logHeadHash];
  parsedLogHead3 = [(SignedLogHead *)self parsedLogHead];
  logBeginningMs = [parsedLogHead3 logBeginningMs];
  parsedLogHead4 = [(SignedLogHead *)self parsedLogHead];
  logType = [parsedLogHead4 logType];
  parsedLogHead5 = [(SignedLogHead *)self parsedLogHead];
  v16 = [dataStore fetchTreeHead:logHeadHash isMapHead:0 application:v7 logBeginTime:logBeginningMs logType:logType revision:objc_msgSend(parsedLogHead5 error:{"revision"), object}];

  return v16;
}

- (id)createManagedObjectWithError:(id *)error
{
  parsedLogHead = [(SignedLogHead *)self parsedLogHead];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedLogHead application]);
  v19 = [TransparencyApplication applicationIdentifierForValue:v5];

  dataStore = [(SignedObjectHolder *)self dataStore];
  data = [(SignedObjectHolder *)self data];
  parsedLogHead2 = [(SignedLogHead *)self parsedLogHead];
  logBeginningMs = [parsedLogHead2 logBeginningMs];
  parsedLogHead3 = [(SignedLogHead *)self parsedLogHead];
  logHeadHash = [parsedLogHead3 logHeadHash];
  parsedLogHead4 = [(SignedLogHead *)self parsedLogHead];
  logType = [parsedLogHead4 logType];
  parsedLogHead5 = [(SignedLogHead *)self parsedLogHead];
  revision = [parsedLogHead5 revision];
  LOBYTE(v17) = [(SignedLogHead *)self gossip];
  v15 = [dataStore createTreeHead:data isMapHead:0 application:v19 logBeginTime:logBeginningMs logHeadHash:logHeadHash logType:logType revision:revision gossip:v17];

  return v15;
}

- (void)storeSignatureResult:(unint64_t)result signatureError:(id *)error
{
  dataStore = [(SignedObjectHolder *)self dataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10022BE44;
  v8[3] = &unk_10032BAB0;
  v8[4] = self;
  v8[5] = result;
  v8[6] = error;
  [dataStore performBlockAndWait:v8];
}

- (unint64_t)verifyWithError:(id *)error
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10022C1F4;
  v12[3] = &unk_100328178;
  v12[4] = self;
  v5 = objc_retainBlock(v12);
  parsedLogHead = [(SignedLogHead *)self parsedLogHead];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedLogHead application]);
  v8 = [TransparencyApplication applicationIdentifierForValue:v7];

  v9 = [TransparencyAnalytics formatEventName:@"VerifySTHEvent" application:v8];
  v10 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v9 validateType:3 error:error block:v5];

  return v10;
}

@end