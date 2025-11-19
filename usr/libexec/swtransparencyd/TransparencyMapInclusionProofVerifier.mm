@interface TransparencyMapInclusionProofVerifier
- (TransparencyMapInclusionProofVerifier)initWithKeyBag:(id)a3 application:(id)a4;
- (unint64_t)verifyInclusionProofWithMapEntry:(id)a3 perAppLogEntry:(id)a4 topLevelTreeEntry:(id)a5 error:(id *)a6;
- (unint64_t)verifyPerApplicationTreeEntry:(id)a3 mapHead:(id)a4 topLevelTreeEntry:(id)a5 error:(id *)a6;
- (void)setInclusionResult:(unint64_t)a3 mapHead:(id)a4 failure:(id)a5;
@end

@implementation TransparencyMapInclusionProofVerifier

- (TransparencyMapInclusionProofVerifier)initWithKeyBag:(id)a3 application:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TransparencyMapInclusionProofVerifier;
  v9 = [(TransparencyMapInclusionProofVerifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyBag, a3);
    objc_storeStrong(&v10->_application, a4);
  }

  return v10;
}

- (void)setInclusionResult:(unint64_t)a3 mapHead:(id)a4 failure:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 dataStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007C90;
  v12[3] = &unk_100132258;
  v14 = v8;
  v15 = a3;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  [v9 performBlockAndWait:v12];
}

- (unint64_t)verifyPerApplicationTreeEntry:(id)a3 mapHead:(id)a4 topLevelTreeEntry:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100008188;
    v23[3] = &unk_100132300;
    v13 = v10;
    v24 = v13;
    v25 = v11;
    v26 = self;
    v14 = objc_retainBlock(v23);
    v15 = [(TransparencyMapInclusionProofVerifier *)self application];
    v16 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:v15];
    v17 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v16 validateType:3 error:a6 block:v14];

    if (v17 == 1)
    {
      if (v12)
      {
        v18 = [v13 slh];
        v19 = [SignedLogHead signedTypeWithObject:v18];

        v17 = [v12 verifyTLTEntryForPerApplicationLogHead:v19 error:a6];
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

    [(TransparencyMapInclusionProofVerifier *)self setInclusionResult:2 mapHead:v11 failure:0];
    v17 = 1;
  }

  return v17;
}

- (unint64_t)verifyInclusionProofWithMapEntry:(id)a3 perAppLogEntry:(id)a4 topLevelTreeEntry:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000897C;
  v28[3] = &unk_100132348;
  v13 = v10;
  v29 = v13;
  v14 = objc_retainBlock(v28);
  v15 = [(TransparencyMapInclusionProofVerifier *)self application];
  v16 = [TransparencyAnalytics formatEventName:@"VerifyMapInclusionProofEvent" application:v15];
  v17 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v16 validateType:3 error:a6 block:v14];

  v18 = [v13 smh];
  v19 = [SignedMapHead signedTypeWithObject:v18];

  v20 = [v13 dataStore];
  [v19 setDataStore:v20];

  if (v11)
  {
    [v19 setOverrideBeginTimeFromLogEntry:v11];
  }

  else
  {
    v27 = a6;
    v21 = v12;
    v22 = [v13 metadata];
    v23 = [v22 objectForKeyedSubscript:@"overrideLogBeginTime"];
    v24 = [v23 longLongValue];

    if (v24)
    {
      [v19 setOverrideBeginTime:v24];
      v12 = v21;
      a6 = v27;
    }

    else
    {
      if (qword_100156078 != -1)
      {
        sub_1000F2778();
      }

      v12 = v21;
      v25 = qword_100156080;
      a6 = v27;
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
    v17 = [(TransparencyMapInclusionProofVerifier *)self verifyPerApplicationTreeEntry:v11 mapHead:v19 topLevelTreeEntry:v12 error:a6];
  }

  return v17;
}

@end