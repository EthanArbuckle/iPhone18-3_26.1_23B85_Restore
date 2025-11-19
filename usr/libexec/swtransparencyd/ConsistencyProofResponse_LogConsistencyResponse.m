@interface ConsistencyProofResponse_LogConsistencyResponse
+ (id)descriptor;
- (BOOL)forwards;
- (unint64_t)verifyWithError:(id *)a3;
- (void)checkSplitsFor:(id)a3;
- (void)setFollowUp:(id)a3;
- (void)setMetadataValue:(id)a3 key:(id)a4;
- (void)setOptInServer:(id)a3;
- (void)setResult:(unint64_t)a3 treeHead:(id)a4 error:(id)a5;
@end

@implementation ConsistencyProofResponse_LogConsistencyResponse

+ (id)descriptor
{
  v2 = qword_100155FE8;
  if (!qword_100155FE8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofResponse_LogConsistencyResponse messageName:@"LogConsistencyResponse" fileDescription:&unk_100151D88 fields:&off_100151E60 fieldCount:3 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F35];
    [v2 setupContainingMessageClass:ConsistencyProofResponse];
    qword_100155FE8 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(ConsistencyProofResponse_LogConsistencyResponse *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(ConsistencyProofResponse_LogConsistencyResponse *)self setMetadata:v8];
  }
}

- (BOOL)forwards
{
  v2 = objc_getAssociatedObject(self, @"directionKey");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setOptInServer:(id)a3
{
  if (a3)
  {
    objc_setAssociatedObject(self, @"optInServerKey", a3, 1);
  }
}

- (void)setFollowUp:(id)a3
{
  if (a3)
  {
    objc_setAssociatedObject(self, @"followUpKey", a3, 1);
  }
}

- (void)setResult:(unint64_t)a3 treeHead:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  [v8 setUnsigned:"consistencyVerified" value:a3];
  if (a3 || !v8)
  {
    [v8 receiptTime];
    v14 = v13;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = +[TransparencyAnalytics logger];
    v17 = [NSNumber numberWithDouble:Current - v14];
    v18 = [v8 application];
    v19 = [TransparencyAnalytics formatEventName:@"ConsistencyProofTime" application:v18];
    [v16 logMetric:v17 withName:v19];

    v11 = [v8 application];
    NSLog(@"%@", v11);
  }

  else
  {
    v10 = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
    v11 = [v10 createSignedTreeHeadFailure];

    if (v9)
    {
      [v11 setErrorCode:{objc_msgSend(v9, "code")}];
      v12 = [v9 domain];
      [v11 setErrorDomain:v12];
    }

    else
    {
      [v11 setErrorCode:-120];
      [v11 setErrorDomain:kTransparencyErrorUnknown];
    }

    [v11 setSth:v8];
    [v11 setVerificationType:2];
    v20 = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
    v21 = [v8 application];
    v22 = [(ConsistencyProofResponse_LogConsistencyResponse *)self optInServer];
    v23 = [v20 createFailureEvent:v9 application:v21 optInServer:v22];

    [v8 setFailureEvent:v23];
    v24 = [(ConsistencyProofResponse_LogConsistencyResponse *)self optInServer];
    v25 = [v24 getAggregateOptInState:0];

    if (qword_1001560B8 != -1)
    {
      sub_1000F2C64();
    }

    v26 = qword_1001560C0;
    if (os_log_type_enabled(qword_1001560C0, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = [v23 eventId];
      *buf = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for STH consistency validation, optInState %@", buf, 0x16u);
    }

    v29 = [(ConsistencyProofResponse_LogConsistencyResponse *)self followUp];
    v30 = [v8 application];
    v31 = [v23 eventId];
    [v29 postFollowup:v30 type:2 eventId:v31 errorCode:objc_msgSend(v9 optInState:"code") infoLink:v25 additionalInfo:0 error:{0, 0}];
  }
}

- (void)checkSplitsFor:(id)a3
{
  v4 = a3;
  v5 = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
  v6 = [v4 logHeadHash];
  v7 = [v4 application];
  v51 = 0;
  v8 = [v5 fetchTreeHeadsWithoutHash:v6 isMapHead:0 application:v7 logBeginTime:objc_msgSend(v4 logType:"getUnsigned:") revision:objc_msgSend(v4 error:{"logType"), objc_msgSend(v4, "getUnsigned:"), &v51}];
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
    v42 = v4;
    v43 = self;
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
          v13 = v4;
          v14 = [(ConsistencyProofResponse_LogConsistencyResponse *)self verifier];
          v15 = [v14 trustedKeyStore];
          v16 = [v15 signatureVerifier];
          [v12 setVerifier:v16];

          if ([v12 verifyWithError:0] == 1)
          {
            v17 = self;
            v18 = [v12 parsedLogHead];
            v19 = v13;
            v20 = [v13 application];
            v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 application]);
            v22 = [TransparencyApplication applicationIdentifierForValue:v21];
            if ([v20 isEqual:v22])
            {
              v23 = [v13 getUnsigned:"logBeginTime"];
              if (v23 == [v18 logBeginningMs] && (v24 = objc_msgSend(v19, "logType"), v24 == objc_msgSend(v18, "logType")) && (v25 = objc_msgSend(v19, "getUnsigned:", "revision"), v25 == objc_msgSend(v18, "revision")))
              {
                v26 = [v19 logHeadHash];
                v27 = [v18 logHeadHash];
                v28 = [v26 isEqual:v27];

                if (v28)
                {
                  v4 = v42;
                  self = v43;
                  goto LABEL_20;
                }

                self = v43;
                if (qword_1001560B8 != -1)
                {
                  sub_1000F2C78();
                }

                v29 = qword_1001560C0;
                if (os_log_type_enabled(qword_1001560C0, OS_LOG_TYPE_ERROR))
                {
                  v30 = v29;
                  v31 = [v18 logHeadHash];
                  v32 = [v42 revision];
                  *buf = 138412546;
                  v53 = v31;
                  v54 = 2048;
                  v55 = v32;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "found inconsistent head hash %@ for revision %llu with consistent head hash", buf, 0x16u);
                }

                [(ConsistencyProofResponse_LogConsistencyResponse *)v43 setResult:0 treeHead:v10 error:v41];
                v33 = [v10 application];
                v20 = [TransparencyAnalytics formatEventName:@"VerifyConsistencyProofEvent" application:v33];

                v21 = +[NSMutableDictionary dictionary];
                v34 = [(ConsistencyProofResponse_LogConsistencyResponse *)v43 metadata];
                v35 = [v34 objectForKeyedSubscript:v40];

                if (v35)
                {
                  v36 = [(ConsistencyProofResponse_LogConsistencyResponse *)v43 metadata];
                  v37 = [v36 objectForKeyedSubscript:v40];
                  [v21 setObject:v37 forKeyedSubscript:v40];
                }

                v22 = +[TransparencyAnalytics logger];
                [v22 logResultForEvent:v20 hardFailure:1 result:v41 withAttributes:v21];
                v13 = v42;
              }

              else
              {
                v13 = v19;
                self = v43;
              }
            }

            else
            {
              self = v17;
            }
          }

          else
          {
            v18 = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
            [v18 deleteObject:v10];
          }

          v4 = v13;
        }

        else
        {
          v18 = [(ConsistencyProofResponse_LogConsistencyResponse *)self dataStore];
          [v18 deleteObject:v10];
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

- (unint64_t)verifyWithError:(id *)a3
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F0D8;
  v14[3] = &unk_100132348;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  v6 = [(ConsistencyProofResponse_LogConsistencyResponse *)self startSlh];
  v7 = [SignedLogHead signedTypeWithObject:v6];

  v8 = [v7 parsedLogHead];
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 application]);
  v10 = [TransparencyApplication applicationIdentifierForValue:v9];

  v11 = [TransparencyAnalytics formatEventName:@"VerifyConsistencyProofEvent" application:v10];
  v12 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v11 validateType:3 error:a3 block:v5];

  return v12;
}

@end