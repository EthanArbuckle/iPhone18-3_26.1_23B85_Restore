@interface TransparencyMapInclusionProofVerifier
- (TransparencyMapInclusionProofVerifier)initWithKeyBag:(id)bag application:(id)application;
- (unint64_t)verifyInclusionProofWithMapEntry:(id)entry perAppLogEntry:(id)logEntry topLevelTreeEntry:(id)treeEntry error:(id *)error;
- (unint64_t)verifyPerApplicationTreeEntry:(id)entry mapHead:(id)head topLevelTreeEntry:(id)treeEntry error:(id *)error;
- (void)setInclusionResult:(unint64_t)result mapHead:(id)head failure:(id)failure;
@end

@implementation TransparencyMapInclusionProofVerifier

- (TransparencyMapInclusionProofVerifier)initWithKeyBag:(id)bag application:(id)application
{
  bagCopy = bag;
  applicationCopy = application;
  v12.receiver = self;
  v12.super_class = TransparencyMapInclusionProofVerifier;
  v9 = [(TransparencyMapInclusionProofVerifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyBag, bag);
    objc_storeStrong(&v10->_application, application);
  }

  return v10;
}

- (void)setInclusionResult:(unint64_t)result mapHead:(id)head failure:(id)failure
{
  headCopy = head;
  failureCopy = failure;
  dataStore = [headCopy dataStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007C90;
  v12[3] = &unk_100132258;
  v14 = failureCopy;
  resultCopy = result;
  v13 = headCopy;
  v10 = failureCopy;
  v11 = headCopy;
  [dataStore performBlockAndWait:v12];
}

- (unint64_t)verifyPerApplicationTreeEntry:(id)entry mapHead:(id)head topLevelTreeEntry:(id)treeEntry error:(id *)error
{
  entryCopy = entry;
  headCopy = head;
  treeEntryCopy = treeEntry;
  if (entryCopy)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100008188;
    v23[3] = &unk_100132300;
    v13 = entryCopy;
    v24 = v13;
    v25 = headCopy;
    selfCopy = self;
    v14 = objc_retainBlock(v23);
    application = [(TransparencyMapInclusionProofVerifier *)self application];
    v16 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:application];
    v17 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v16 validateType:3 error:error block:v14];

    if (v17 == 1)
    {
      if (treeEntryCopy)
      {
        v18 = [v13 slh];
        v19 = [SignedLogHead signedTypeWithObject:v18];

        v17 = [treeEntryCopy verifyTLTEntryForPerApplicationLogHead:v19 error:error];
      }

      else
      {
        if (qword_100156078 != -1)
        {
          sub_1000F26C4();
        }

        v21 = qword_100156080;
        v17 = 1;
        if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v17 = 1;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "failed to get TLT inclusion proof for PAT head; deferring inclusion verification", buf, 2u);
        }
      }
    }
  }

  else
  {
    if (qword_100156078 != -1)
    {
      sub_1000F26EC();
    }

    v20 = qword_100156080;
    if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "failed to get PAT inclusion proof for PAM head; deferring inclusion verification", buf, 2u);
    }

    [(TransparencyMapInclusionProofVerifier *)self setInclusionResult:2 mapHead:headCopy failure:0];
    v17 = 1;
  }

  return v17;
}

- (unint64_t)verifyInclusionProofWithMapEntry:(id)entry perAppLogEntry:(id)logEntry topLevelTreeEntry:(id)treeEntry error:(id *)error
{
  entryCopy = entry;
  logEntryCopy = logEntry;
  treeEntryCopy = treeEntry;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000897C;
  v28[3] = &unk_100132348;
  v13 = entryCopy;
  v29 = v13;
  v14 = objc_retainBlock(v28);
  application = [(TransparencyMapInclusionProofVerifier *)self application];
  v16 = [TransparencyAnalytics formatEventName:@"VerifyMapInclusionProofEvent" application:application];
  v17 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v16 validateType:3 error:error block:v14];

  v18 = [v13 smh];
  v19 = [SignedMapHead signedTypeWithObject:v18];

  dataStore = [v13 dataStore];
  [v19 setDataStore:dataStore];

  if (logEntryCopy)
  {
    [v19 setOverrideBeginTimeFromLogEntry:logEntryCopy];
  }

  else
  {
    errorCopy = error;
    v21 = treeEntryCopy;
    metadata = [v13 metadata];
    v23 = [metadata objectForKeyedSubscript:@"overrideLogBeginTime"];
    longLongValue = [v23 longLongValue];

    if (longLongValue)
    {
      [v19 setOverrideBeginTime:longLongValue];
      treeEntryCopy = v21;
      error = errorCopy;
    }

    else
    {
      if (qword_100156078 != -1)
      {
        sub_1000F2778();
      }

      treeEntryCopy = v21;
      v25 = qword_100156080;
      error = errorCopy;
      if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "verifyInclusionProofWithMapEntry couldn't find an override time despite needing one. This SMH will leak to long-term gc: %@", buf, 0xCu);
      }
    }
  }

  if (v17 == 1)
  {
    v17 = [(TransparencyMapInclusionProofVerifier *)self verifyPerApplicationTreeEntry:logEntryCopy mapHead:v19 topLevelTreeEntry:treeEntryCopy error:error];
  }

  return v17;
}

@end