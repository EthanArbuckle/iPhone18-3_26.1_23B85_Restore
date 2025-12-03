@interface ConsistencyProofResponse_LogConsistencyResponse
+ (id)descriptor;
- (BOOL)forwards;
- (unint64_t)verifyWithError:(id *)error;
- (void)checkSplitsFor:(id)for;
- (void)setFollowUp:(id)up;
- (void)setMetadataValue:(id)value key:(id)key;
- (void)setOptInServer:(id)server;
- (void)setResult:(unint64_t)result treeHead:(id)head error:(id)error;
@end

@implementation ConsistencyProofResponse_LogConsistencyResponse

+ (id)descriptor
{
  v2 = qword_10039C7B8;
  if (!qword_10039C7B8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofResponse_LogConsistencyResponse messageName:@"LogConsistencyResponse" fileDescription:&unk_100389FE8 fields:&off_10038A0C0 fieldCount:3 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF22D];
    [v2 setupContainingMessageClass:ConsistencyProofResponse];
    qword_10039C7B8 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(ConsistencyProofResponse_LogConsistencyResponse *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(ConsistencyProofResponse_LogConsistencyResponse *)self setMetadata:v8];
  }
}

- (BOOL)forwards
{
  v2 = objc_getAssociatedObject(self, @"directionKey");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setOptInServer:(id)server
{
  if (server)
  {
    objc_setAssociatedObject(self, @"optInServerKey", server, 1);
  }
}

- (void)setFollowUp:(id)up
{
  if (up)
  {
    objc_setAssociatedObject(self, @"followUpKey", up, 1);
  }
}

- (void)setResult:(unint64_t)result treeHead:(id)head error:(id)error
{
  headCopy = head;
  errorCopy = error;
  [headCopy setUnsigned:"consistencyVerified" value:result];
  if (result || !headCopy)
  {
    [headCopy receiptTime];
    v14 = v13;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = +[TransparencyAnalytics logger];
    v17 = [NSNumber numberWithDouble:Current - v14];
    application = [headCopy application];
    v19 = [TransparencyAnalytics formatEventName:@"ConsistencyProofTime" application:application];
    [v16 logMetric:v17 withName:v19];

    application2 = [headCopy application];
    NSLog(@"%@", application2);
  }

  else
  {
    dataStore = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
    application2 = [dataStore createSignedTreeHeadFailure];

    if (errorCopy)
    {
      [application2 setErrorCode:{objc_msgSend(errorCopy, "code")}];
      domain = [errorCopy domain];
      [application2 setErrorDomain:domain];
    }

    else
    {
      [application2 setErrorCode:-120];
      [application2 setErrorDomain:kTransparencyErrorUnknown];
    }

    [application2 setSth:headCopy];
    [application2 setVerificationType:2];
    dataStore2 = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
    application3 = [headCopy application];
    optInServer = [(ConsistencyProofResponse_LogConsistencyResponse *)self optInServer];
    v23 = [dataStore2 createFailureEvent:errorCopy application:application3 optInServer:optInServer];

    [headCopy setFailureEvent:v23];
    optInServer2 = [(ConsistencyProofResponse_LogConsistencyResponse *)self optInServer];
    v25 = [optInServer2 getAggregateOptInState:0];

    if (qword_10039CD78 != -1)
    {
      sub_10025F5FC();
    }

    v26 = qword_10039CD80;
    if (os_log_type_enabled(qword_10039CD80, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      eventId = [v23 eventId];
      *buf = 138543618;
      v33 = eventId;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for STH consistency validation, optInState %@", buf, 0x16u);
    }

    followUp = [(ConsistencyProofResponse_LogConsistencyResponse *)self followUp];
    application4 = [headCopy application];
    eventId2 = [v23 eventId];
    [followUp postFollowup:application4 type:2 eventId:eventId2 errorCode:objc_msgSend(errorCopy optInState:"code") infoLink:v25 additionalInfo:0 error:{0, 0}];
  }
}

- (void)checkSplitsFor:(id)for
{
  forCopy = for;
  dataStore = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
  logHeadHash = [forCopy logHeadHash];
  application = [forCopy application];
  v51 = 0;
  v8 = [dataStore fetchTreeHeadsWithoutHash:logHeadHash isMapHead:0 application:application logBeginTime:objc_msgSend(forCopy logType:"getUnsigned:") revision:objc_msgSend(forCopy error:{"logType"), objc_msgSend(forCopy, "getUnsigned:"), &v51}];
  v39 = v51;

  v41 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-189 description:@"duplicate revision found with different head hash from consistent SLH"];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v8;
  v46 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v46)
  {
    v45 = *v48;
    v42 = forCopy;
    selfCopy = self;
    v40 = kTransparencyResponseMetadataKeyServerHint;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * v9);
        v11 = [v10 sth];
        v12 = [(SignedObjectHolder *)SignedLogHead parseFromData:v11 error:0];

        if (v12)
        {
          v13 = forCopy;
          verifier = [(ConsistencyProofResponse_LogConsistencyResponse *)self verifier];
          trustedKeyStore = [verifier trustedKeyStore];
          signatureVerifier = [trustedKeyStore signatureVerifier];
          [v12 setVerifier:signatureVerifier];

          if ([v12 verifyWithError:0] == 1)
          {
            selfCopy2 = self;
            parsedLogHead = [v12 parsedLogHead];
            v19 = v13;
            application2 = [v13 application];
            v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedLogHead application]);
            v22 = [TransparencyApplication applicationIdentifierForValue:v21];
            if ([application2 isEqual:v22])
            {
              v23 = [v13 getUnsigned:"logBeginTime"];
              if (v23 == [parsedLogHead logBeginningMs] && (v24 = objc_msgSend(v19, "logType"), v24 == objc_msgSend(parsedLogHead, "logType")) && (v25 = objc_msgSend(v19, "getUnsigned:", "revision"), v25 == objc_msgSend(parsedLogHead, "revision")))
              {
                logHeadHash2 = [v19 logHeadHash];
                logHeadHash3 = [parsedLogHead logHeadHash];
                v28 = [logHeadHash2 isEqual:logHeadHash3];

                if (v28)
                {
                  forCopy = v42;
                  self = selfCopy;
                  goto LABEL_20;
                }

                self = selfCopy;
                if (qword_10039CD78 != -1)
                {
                  sub_10025F610();
                }

                v29 = qword_10039CD80;
                if (os_log_type_enabled(qword_10039CD80, OS_LOG_TYPE_ERROR))
                {
                  v30 = v29;
                  logHeadHash4 = [parsedLogHead logHeadHash];
                  revision = [v42 revision];
                  *buf = 138412546;
                  v53 = logHeadHash4;
                  v54 = 2048;
                  v55 = revision;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "found inconsistent head hash %@ for revision %llu with consistent head hash", buf, 0x16u);
                }

                [(ConsistencyProofResponse_LogConsistencyResponse *)selfCopy setResult:0 treeHead:v10 error:v41];
                application3 = [v10 application];
                application2 = [TransparencyAnalytics formatEventName:@"VerifyConsistencyProofEvent" application:application3];

                v21 = +[NSMutableDictionary dictionary];
                metadata = [(ConsistencyProofResponse_LogConsistencyResponse *)selfCopy metadata];
                v35 = [metadata objectForKeyedSubscript:v40];

                if (v35)
                {
                  metadata2 = [(ConsistencyProofResponse_LogConsistencyResponse *)selfCopy metadata];
                  v37 = [metadata2 objectForKeyedSubscript:v40];
                  [v21 setObject:v37 forKeyedSubscript:v40];
                }

                v22 = +[TransparencyAnalytics logger];
                [v22 logResultForEvent:application2 hardFailure:1 result:v41 withAttributes:v21];
                v13 = v42;
              }

              else
              {
                v13 = v19;
                self = selfCopy;
              }
            }

            else
            {
              self = selfCopy2;
            }
          }

          else
          {
            parsedLogHead = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
            [parsedLogHead deleteObject:v10];
          }

          forCopy = v13;
        }

        else
        {
          parsedLogHead = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
          [parsedLogHead deleteObject:v10];
        }

LABEL_20:

        v9 = v9 + 1;
      }

      while (v46 != v9);
      v38 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      v46 = v38;
    }

    while (v38);
  }
}

- (unint64_t)verifyWithError:(id *)error
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002291B8;
  v14[3] = &unk_100328178;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  startSlh = [(ConsistencyProofResponse_LogConsistencyResponse *)self startSlh];
  v7 = [SignedLogHead signedTypeWithObject:startSlh];

  parsedLogHead = [v7 parsedLogHead];
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedLogHead application]);
  v10 = [TransparencyApplication applicationIdentifierForValue:v9];

  v11 = [TransparencyAnalytics formatEventName:@"VerifyConsistencyProofEvent" application:v10];
  v12 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v11 validateType:3 error:error block:v5];

  return v12;
}

@end