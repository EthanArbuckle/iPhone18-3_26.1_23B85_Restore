@interface SignedMutationTimestamp
+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store;
- (id)createManagedObject:(id)object uri:(id)uri serverHint:(id)hint error:(id *)error;
- (id)diagnosticsJsonDictionary;
- (id)parsedMutationWithError:(id *)error;
- (unint64_t)verifyWithError:(id *)error;
@end

@implementation SignedMutationTimestamp

+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store
{
  storeCopy = store;
  verifierCopy = verifier;
  objectCopy = object;
  v10 = objc_alloc_init(SignedMutationTimestamp);
  [(SignedObjectHolder *)v10 setSignedObject:objectCopy];

  [(SignedObjectHolder *)v10 setVerifier:verifierCopy];
  [(SignedObjectHolder *)v10 setDataStore:storeCopy];

  return v10;
}

- (id)parsedMutationWithError:(id *)error
{
  mutation = [(SignedMutationTimestamp *)self mutation];
  if (mutation && (v6 = mutation, -[SignedMutationTimestamp mutation](self, "mutation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    mutation2 = [(SignedMutationTimestamp *)self mutation];
    v10 = [IdsMutation parseFromData:mutation2 error:error];
  }

  else
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-4 description:@"SMT missing mutation"];
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

- (id)createManagedObject:(id)object uri:(id)uri serverHint:(id)hint error:(id *)error
{
  objectCopy = object;
  uriCopy = uri;
  hintCopy = hint;
  v13 = [(SignedMutationTimestamp *)self parsedMutationWithError:error];
  if (v13)
  {
    dataStore = [(SignedObjectHolder *)self dataStore];
    data = [(SignedObjectHolder *)self data];
    [v13 mutationMs];
    signature = [(SignedObjectHolder *)self signature];
    signingKeySpkihash = [signature signingKeySpkihash];
    v18 = +[NSDate now];
    v19 = objectCopy;
    v20 = v18;
    v21 = uriCopy;
    v22 = v19;
    v29 = v21;
    v23 = [dataStore createMutation:data application:? uri:? mutationMs:? spkiHash:? receiptTime:?];

    if (v23)
    {
      [v23 setReceiptServerHint:hintCopy];
      v24 = v23;
      objectCopy = v22;
      uriCopy = v29;
    }

    else
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:-60 description:@"failed to create KTMutation entity"];
      }

      objectCopy = v22;
      if (qword_10039CAC8 != -1)
      {
        sub_10025D018();
      }

      uriCopy = v29;
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
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-73 underlyingError:*error description:?];
    }

    if (qword_10039CAC8 != -1)
    {
      sub_10025D02C();
    }

    v25 = qword_10039CAD0;
    if (os_log_type_enabled(qword_10039CAD0, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v26 = *error;
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
  diagnosticsJsonDictionary = [(SignedObjectHolder *)&v9 diagnosticsJsonDictionary];
  v4 = [diagnosticsJsonDictionary mutableCopy];

  v5 = [(SignedMutationTimestamp *)self parsedMutationWithError:0];
  v6 = v5;
  if (v5)
  {
    diagnosticsJsonDictionary2 = [v5 diagnosticsJsonDictionary];
    [v4 setObject:diagnosticsJsonDictionary2 forKeyedSubscript:@"mutation"];
  }

  return v4;
}

- (unint64_t)verifyWithError:(id *)error
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001EBC9C;
  v10[3] = &unk_100328178;
  v10[4] = self;
  v5 = objc_retainBlock(v10);
  application = [(SignedMutationTimestamp *)self application];
  v7 = [TransparencyAnalytics formatEventName:@"VerifySmtEvent" application:application];
  v8 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:v7 validateType:3 error:error block:v5];

  return v8;
}

@end