@interface KTStatusServer
+ (id)auditorReportForKTRequest:(id)request;
+ (id)auditorReportForKTSMT:(id)t;
+ (id)auditorReportForSTH:(id)h;
+ (void)auditorReportsForFailedEvents:(id)events dataStore:(id)store completionBlock:(id)block;
@end

@implementation KTStatusServer

+ (id)auditorReportForKTRequest:(id)request
{
  requestCopy = request;
  v4 = +[NSMutableDictionary dictionary];
  type = [requestCopy type];
  if (type <= 2)
  {
    [v4 setObject:**(&off_10032A1F8 + type) forKeyedSubscript:kTransparencyAuditorReportType];
  }

  v6 = [requestCopy uri];
  [v4 setObject:v6 forKeyedSubscript:kTransparencyAuditorReportURI];

  accountKey = [requestCopy accountKey];
  v8 = [accountKey base64EncodedStringWithOptions:0];
  [v4 setObject:v8 forKeyedSubscript:kTransparencyAuditorReportAccountKey];

  application = [requestCopy application];
  [v4 setObject:application forKeyedSubscript:kTransparencyAuditorReportApplication];

  [requestCopy requestTime];
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v10 timeIntervalSince1970];
  v11 = [NSNumber numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:kTransparencyAuditorReportRequestTime];

  serverLoggableDatas = [requestCopy serverLoggableDatas];
  v13 = [serverLoggableDatas base64EncodedStringWithOptions:0];
  [v4 setObject:v13 forKeyedSubscript:kTransparencyAuditorReportServerLoggableDatas];

  clientLoggableDatas = [requestCopy clientLoggableDatas];

  if (clientLoggableDatas)
  {
    clientLoggableDatas2 = [requestCopy clientLoggableDatas];
    v16 = [clientLoggableDatas2 base64EncodedStringWithOptions:0];
    [v4 setObject:v16 forKeyedSubscript:kTransparencyAuditorReportTrustedLoggableDatas];
  }

  serverHint = [requestCopy serverHint];

  if (serverHint)
  {
    serverHint2 = [requestCopy serverHint];
    [v4 setObject:serverHint2 forKeyedSubscript:kTransparencyAuditorReportServerHint];
  }

  if ([requestCopy usedReversePush])
  {
    [v4 setObject:&off_10033D050 forKeyedSubscript:kTransparencyAuditorReportUsedReversePush];
  }

  queryRequest = [requestCopy queryRequest];

  if (queryRequest)
  {
    queryRequest2 = [requestCopy queryRequest];
    v21 = [queryRequest2 base64EncodedStringWithOptions:0];
    [v4 setObject:v21 forKeyedSubscript:kTransparencyAuditorReportQueryRequest];
  }

  queryResponse = [requestCopy queryResponse];

  if (queryResponse)
  {
    queryResponse2 = [requestCopy queryResponse];
    v24 = [queryResponse2 base64EncodedStringWithOptions:0];
    [v4 setObject:v24 forKeyedSubscript:kTransparencyAuditorReportQueryResponse];
  }

  responseTime = [requestCopy responseTime];

  if (responseTime)
  {
    responseTime2 = [requestCopy responseTime];
    [responseTime2 timeIntervalSince1970];
    v27 = [NSNumber numberWithDouble:?];
    [v4 setObject:v27 forKeyedSubscript:kTransparencyAuditorReportResponseTime];
  }

  if ([requestCopy type] == 1)
  {
    application2 = [requestCopy application];
    v29 = [KTAccountKeyServer sharedKeyServiceForApplication:application2];

    if (v29)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_100208DA8;
      v37 = sub_100208DB8;
      v38 = 0;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100208DC0;
      v32[3] = &unk_10032A168;
      v32[4] = &v33;
      [v29 signData:0 completionBlock:v32];
      v30 = [v34[5] base64EncodedStringWithOptions:0];
      [v4 setObject:v30 forKeyedSubscript:kTransparencyAuditorReportPCSIdentity];

      _Block_object_dispose(&v33, 8);
    }
  }

  return v4;
}

+ (id)auditorReportForKTSMT:(id)t
{
  tCopy = t;
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:kTransparencyAuditorReportTypeSMT forKeyedSubscript:kTransparencyAuditorReportType];
  v5 = [tCopy uri];
  [v4 setObject:v5 forKeyedSubscript:kTransparencyAuditorReportURI];

  application = [tCopy application];
  [v4 setObject:application forKeyedSubscript:kTransparencyAuditorReportApplication];

  receiptTime = [tCopy receiptTime];
  [receiptTime timeIntervalSince1970];
  v8 = [NSNumber numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:kTransparencyAuditorReportRequestTime];

  v9 = [tCopy smt];
  v10 = [v9 base64EncodedStringWithOptions:0];
  [v4 setObject:v10 forKeyedSubscript:kTransparencyAuditorReportSMT];

  if ([tCopy signatureResult] != 1)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kTransparencyAuditorReportSignatureFailed];
  }

  if ([tCopy mergeResult] != 1)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kTransparencyAuditorReportMMDFailed];
  }

  failureEvent = [tCopy failureEvent];

  if (failureEvent)
  {
    failureEvent2 = [tCopy failureEvent];
    encodedError = [failureEvent2 encodedError];
    v14 = [encodedError base64EncodedStringWithOptions:0];
    [v4 setObject:v14 forKeyedSubscript:kTransparencyAuditorReportNSError];
  }

  return v4;
}

+ (id)auditorReportForSTH:(id)h
{
  hCopy = h;
  v4 = +[NSMutableDictionary dictionary];
  if ([hCopy isMapHead])
  {
    [v4 setObject:kTransparencyAuditorReportTypeSMH forKeyedSubscript:kTransparencyAuditorReportType];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [hCopy populating]);
    [v4 setObject:v5 forKeyedSubscript:kTransparencyAuditorReportMapPopulating];
  }

  else
  {
    [v4 setObject:kTransparencyAuditorReportTypeSLH forKeyedSubscript:kTransparencyAuditorReportType];
  }

  application = [hCopy application];
  [v4 setObject:application forKeyedSubscript:kTransparencyAuditorReportApplication];

  [hCopy receiptTime];
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v7 timeIntervalSince1970];
  v8 = [NSNumber numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:kTransparencyAuditorReportRequestTime];

  v9 = [hCopy sth];
  v10 = [v9 base64EncodedStringWithOptions:0];
  [v4 setObject:v10 forKeyedSubscript:kTransparencyAuditorReportSTH];

  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [hCopy gossip]);
  [v4 setObject:v11 forKeyedSubscript:kTransparencyAuditorReportGossip];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [hCopy logBeginTime]);
  [v4 setObject:v12 forKeyedSubscript:kTransparencyAuditorReportTreeEpoch];

  v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [hCopy revision]);
  [v4 setObject:v13 forKeyedSubscript:kTransparencyAuditorReportRevision];

  if ([hCopy signatureVerified] != 1)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kTransparencyAuditorReportSignatureFailed];
  }

  if ([hCopy inclusionVerified] != 1)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kTransparencyAuditorReportInclusionFailed];
  }

  if ([hCopy consistencyVerified] != 1)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kTransparencyAuditorReportConsistencyFailed];
  }

  if ([hCopy mmdVerified] != 1)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kTransparencyAuditorReportMMDFailed];
  }

  failureEvent = [hCopy failureEvent];

  if (failureEvent)
  {
    failureEvent2 = [hCopy failureEvent];
    encodedError = [failureEvent2 encodedError];
    v17 = [encodedError base64EncodedStringWithOptions:0];
    [v4 setObject:v17 forKeyedSubscript:kTransparencyAuditorReportNSError];
  }

  return v4;
}

+ (void)auditorReportsForFailedEvents:(id)events dataStore:(id)store completionBlock:(id)block
{
  eventsCopy = events;
  storeCopy = store;
  blockCopy = block;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100208DA8;
  v41 = sub_100208DB8;
  v42 = 0;
  v9 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  obj = eventsCopy;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v10)
  {
    v11 = *v34;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = (v38 + 5);
        v32 = v38[5];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10020970C;
        v30[3] = &unk_10032A190;
        v30[4] = v13;
        v15 = v9;
        v31 = v15;
        v16 = [storeCopy performAndWaitForRequestId:v13 error:&v32 block:v30];
        objc_storeStrong(v14, v32);
        if ((v16 & 1) == 0)
        {
          v18 = (v38 + 5);
          v17 = v38[5];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10020979C;
          v26[3] = &unk_10032A1D8;
          v28 = &v37;
          v29 = v17;
          v26[4] = v13;
          v27 = v15;
          v19 = [storeCopy performAndWaitForFailedEventId:v13 error:&v29 block:v26];
          objc_storeStrong(v18, v29);

          if ((v19 & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([v9 count])
  {
    v20 = 0;
    v21 = v9;
  }

  else
  {
    if (v38[5])
    {
      blockCopy[2](blockCopy, 0);
      goto LABEL_17;
    }

    v22 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-299 description:@"no auditor reports for eventIds: %@", obj];
    v23 = v38[5];
    v38[5] = v22;

    v21 = 0;
    v20 = v38[5];
  }

  (blockCopy[2])(blockCopy, v21, v20);
LABEL_17:

  _Block_object_dispose(&v37, 8);
}

@end