@interface SignedMutationTimestamp
+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5;
- (id)createManagedObject:(id)a3 uri:(id)a4 serverHint:(id)a5 error:(id *)a6;
- (id)diagnosticsJsonDictionary;
- (id)parsedMutationWithError:(id *)a3;
- (unint64_t)verifyWithError:(id *)a3;
@end

@implementation SignedMutationTimestamp

+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(SignedMutationTimestamp);
  [(SignedObjectHolder *)v10 setSignedObject:v9];

  [(SignedObjectHolder *)v10 setVerifier:v8];
  [(SignedObjectHolder *)v10 setDataStore:v7];

  return v10;
}

- (id)parsedMutationWithError:(id *)a3
{
  v5 = [(SignedMutationTimestamp *)self mutation];
  if (v5 && (v6 = v5, -[SignedMutationTimestamp mutation](self, "mutation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    v9 = [(SignedMutationTimestamp *)self mutation];
    v10 = [IdsMutation parseFromData:v9 error:a3];
  }

  else
  {
    if (a3)
    {
      *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-4 description:@"SMT missing mutation"];
    }

    if (qword_10039CAC8 != -1)
    {
      sub_10025D004();
    }

    v11 = qword_10039CAD0;
    if (os_log_type_enabled(qword_10039CAD0, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMT missing mutation", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)createManagedObject:(id)a3 uri:(id)a4 serverHint:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SignedMutationTimestamp *)self parsedMutationWithError:a6];
  if (v13)
  {
    v14 = [(SignedObjectHolder *)self dataStore];
    v15 = [(SignedObjectHolder *)self data];
    [v13 mutationMs];
    v16 = [(SignedObjectHolder *)self signature];
    v17 = [v16 signingKeySpkihash];
    v18 = +[NSDate now];
    v19 = v10;
    v20 = v18;
    v21 = v11;
    v22 = v19;
    v29 = v21;
    v23 = [v14 createMutation:v15 application:? uri:? mutationMs:? spkiHash:? receiptTime:?];

    if (v23)
    {
      [v23 setReceiptServerHint:v12];
      v24 = v23;
      v10 = v22;
      v11 = v29;
    }

    else
    {
      if (a6)
      {
        *a6 = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:-60 description:@"failed to create KTMutation entity"];
      }

      v10 = v22;
      if (qword_10039CAC8 != -1)
      {
        sub_10025D018();
      }

      v11 = v29;
      v27 = qword_10039CAD0;
      if (os_log_type_enabled(qword_10039CAD0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "failed to create KTMutation entity", buf, 2u);
      }
    }
  }

  else
  {
    if (a6)
    {
      *a6 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-73 underlyingError:*a6 description:?];
    }

    if (qword_10039CAC8 != -1)
    {
      sub_10025D02C();
    }

    v25 = qword_10039CAD0;
    if (os_log_type_enabled(qword_10039CAD0, OS_LOG_TYPE_ERROR))
    {
      if (a6)
      {
        v26 = *a6;
      }

      else
      {
        v26 = 0;
      }

      *buf = 138412290;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "mutation failed to parse: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (id)diagnosticsJsonDictionary
{
  v9.receiver = self;
  v9.super_class = SignedMutationTimestamp;
  v3 = [(SignedObjectHolder *)&v9 diagnosticsJsonDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(SignedMutationTimestamp *)self parsedMutationWithError:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 diagnosticsJsonDictionary];
    [v4 setObject:v7 forKeyedSubscript:@"mutation"];
  }

  return v4;
}

- (unint64_t)verifyWithError:(id *)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EBC9C;
  v10[3] = &unk_100328178;
  v10[4] = self;
  v5 = objc_retainBlock(v10);
  v6 = [(SignedMutationTimestamp *)self application];
  v7 = [TransparencyAnalytics formatEventName:@"VerifySmtEvent" application:v6];
  v8 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v7 validateType:3 error:a3 block:v5];

  return v8;
}

@end