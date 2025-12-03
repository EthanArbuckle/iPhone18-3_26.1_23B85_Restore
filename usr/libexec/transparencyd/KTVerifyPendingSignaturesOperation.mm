@interface KTVerifyPendingSignaturesOperation
- (BOOL)verifyHeadsWithPendingSignatures:(id)signatures error:(id *)error;
- (BOOL)verifySMTsWithPendingSignatures:(id)signatures error:(id *)error;
- (KTVerifyPendingSignaturesOperation)initWithDependencies:(id)dependencies opId:(id)id;
- (void)groupStart;
@end

@implementation KTVerifyPendingSignaturesOperation

- (KTVerifyPendingSignaturesOperation)initWithDependencies:(id)dependencies opId:(id)id
{
  dependenciesCopy = dependencies;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = KTVerifyPendingSignaturesOperation;
  v9 = [(KTGroupOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, dependencies);
    [(KTVerifyPendingSignaturesOperation *)v10 setBackgroundOpId:idCopy];
    v11 = +[NSMutableDictionary dictionary];
    [(KTVerifyPendingSignaturesOperation *)v10 setErrors:v11];

    v12 = +[NSMutableDictionary dictionary];
    [(KTVerifyPendingSignaturesOperation *)v10 setFailedSigs:v12];

    [(KTGroupOperation *)v10 setName:@"Signature"];
  }

  return v10;
}

- (void)groupStart
{
  if (qword_10038BBF0 != -1)
  {
    sub_1002473C8();
  }

  v3 = qword_10038BBF8;
  if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "VerifyPendingSignatures: start", buf, 2u);
  }

  v4 = kKTApplicationIdentifierIDS;
  v83 = 0;
  v5 = [(KTVerifyPendingSignaturesOperation *)self verifySMTsWithPendingSignatures:kKTApplicationIdentifierIDS error:&v83];
  v6 = v83;
  if ((v5 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_1002473DC();
    }

    v7 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Verify pending IDS SMT signatures failed: %@", buf, 0xCu);
    }

    v8 = [NSString stringWithFormat:@"%@-SMTs", v4];
    errors = [(KTVerifyPendingSignaturesOperation *)self errors];
    [errors setObject:v6 forKeyedSubscript:v8];

    v6 = 0;
  }

  v82 = v6;
  v10 = [(KTVerifyPendingSignaturesOperation *)self verifyHeadsWithPendingSignatures:v4 error:&v82];
  v11 = v82;

  if ((v10 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_100247404();
    }

    v12 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Verify pending IDS Head signatures failed: %@", buf, 0xCu);
    }

    v13 = [NSString stringWithFormat:@"%@-STHs", v4];
    errors2 = [(KTVerifyPendingSignaturesOperation *)self errors];
    [errors2 setObject:v11 forKeyedSubscript:v13];

    v11 = 0;
  }

  v15 = kKTApplicationIdentifierTLT;
  v81 = v11;
  v16 = [(KTVerifyPendingSignaturesOperation *)self verifyHeadsWithPendingSignatures:kKTApplicationIdentifierTLT error:&v81];
  v17 = v81;

  if ((v16 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_10024742C();
    }

    v18 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Verify pending IDS Head signatures failed: %@", buf, 0xCu);
    }

    errors3 = [(KTVerifyPendingSignaturesOperation *)self errors];
    [errors3 setObject:v17 forKeyedSubscript:v15];

    v17 = 0;
  }

  v20 = kKTApplicationIdentifierIDSMultiplex;
  v80 = v17;
  v21 = [(KTVerifyPendingSignaturesOperation *)self verifySMTsWithPendingSignatures:kKTApplicationIdentifierIDSMultiplex error:&v80];
  v22 = v80;

  if ((v21 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_100247454();
    }

    v23 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Verify pending MP SMT signatures failed: %@", buf, 0xCu);
    }

    v22 = 0;
  }

  v79 = v22;
  v24 = [(KTVerifyPendingSignaturesOperation *)self verifyHeadsWithPendingSignatures:v20 error:&v79];
  v25 = v79;

  if ((v24 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_10024747C();
    }

    v26 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Verify pending MP Head signatures failed: %@", buf, 0xCu);
    }

    v25 = 0;
  }

  v27 = kKTApplicationIdentifierIDSFaceTime;
  v78 = v25;
  v28 = [(KTVerifyPendingSignaturesOperation *)self verifySMTsWithPendingSignatures:kKTApplicationIdentifierIDSFaceTime error:&v78];
  v29 = v78;

  if ((v28 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_1002474A4();
    }

    v30 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Verify pending FT SMT signatures failed: %@", buf, 0xCu);
    }

    v29 = 0;
  }

  v77 = v29;
  v31 = [(KTVerifyPendingSignaturesOperation *)self verifyHeadsWithPendingSignatures:v27 error:&v77];
  v32 = v77;

  if ((v31 & 1) == 0)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_1002474CC();
    }

    v33 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Verify pending FT Head signatures failed: %@", buf, 0xCu);
    }

    v32 = 0;
  }

  errors4 = [(KTVerifyPendingSignaturesOperation *)self errors];
  v35 = [errors4 count];

  if (v35)
  {
    v66 = v32;
    errors5 = [(KTVerifyPendingSignaturesOperation *)self errors];
    allKeys = [errors5 allKeys];

    v65 = allKeys;
    v38 = [allKeys componentsJoinedByString:{@", "}];
    v39 = [NSString stringWithFormat:@"Pending signatures failed for applications: %@", v38];

    v86[0] = NSMultipleUnderlyingErrorsKey;
    errors6 = [(KTVerifyPendingSignaturesOperation *)self errors];
    allValues = [errors6 allValues];
    v86[1] = NSLocalizedDescriptionKey;
    v87[0] = allValues;
    v64 = v39;
    v87[1] = v39;
    v42 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];

    v63 = v42;
    v43 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-384 userInfo:v42];
    [(KTResultOperation *)self setError:v43];

    v44 = +[NSMutableString string];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    selfCopy = self;
    obj = [(KTVerifyPendingSignaturesOperation *)self failedSigs];
    v45 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v74;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v74 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v73 + 1) + 8 * i);
          [v44 appendFormat:@"%@:", v49];
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          failedSigs = [(KTVerifyPendingSignaturesOperation *)selfCopy failedSigs];
          v51 = [failedSigs objectForKeyedSubscript:v49];

          v52 = [v51 countByEnumeratingWithState:&v69 objects:v84 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v70;
            do
            {
              for (j = 0; j != v53; j = j + 1)
              {
                if (*v70 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = [*(*(&v69 + 1) + 8 * j) base64EncodedStringWithOptions:0];
                [v44 appendFormat:@"%@;", v56];
              }

              v53 = [v51 countByEnumeratingWithState:&v69 objects:v84 count:16];
            }

            while (v53);
          }
        }

        v46 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v46);
    }

    backgroundOpId = [(KTVerifyPendingSignaturesOperation *)selfCopy backgroundOpId];
    deps = [(KTVerifyPendingSignaturesOperation *)selfCopy deps];
    smDataStore = [deps smDataStore];
    name = [(KTVerifyPendingSignaturesOperation *)selfCopy name];
    error = [(KTResultOperation *)selfCopy error];
    [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:backgroundOpId smDataStore:smDataStore failureDataString:v44 type:name serverHint:0 failure:error];

    v32 = v66;
  }

  if (qword_10038BBF0 != -1)
  {
    sub_1002474F4();
  }

  v62 = qword_10038BBF8;
  if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "VerifyPendingSignatures: end", buf, 2u);
  }
}

- (BOOL)verifySMTsWithPendingSignatures:(id)signatures error:(id *)error
{
  signaturesCopy = signatures;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100019738;
  v39 = sub_100019748;
  v40 = 0;
  deps = [(KTVerifyPendingSignaturesOperation *)self deps];
  publicKeyStore = [deps publicKeyStore];
  v9 = [publicKeyStore applicationPublicKeyStore:signaturesCopy];

  v10 = [KTContextVerifier alloc];
  deps2 = [(KTVerifyPendingSignaturesOperation *)self deps];
  dataStore = [deps2 dataStore];
  v13 = [(KTContextVerifier *)v10 initWithApplicationKeyStore:v9 dataStore:dataStore applicationID:signaturesCopy];

  v14 = +[NSMutableArray array];
  deps3 = [(KTVerifyPendingSignaturesOperation *)self deps];
  dataStore2 = [deps3 dataStore];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100019750;
  v28[3] = &unk_1003178A0;
  v33 = &v35;
  v34 = 0;
  v17 = v13;
  v29 = v17;
  v18 = signaturesCopy;
  v30 = v18;
  v19 = v14;
  v31 = v19;
  selfCopy = self;
  [dataStore2 performForSMTsWithUnverifiedSignature:v18 error:&v34 block:v28];
  v20 = v34;

  if (!v20)
  {
    v23 = v36;
    if (error)
    {
      v24 = v36[5];
      if (v24)
      {
        *error = v24;
        v23 = v36;
      }
    }

    if (!v23[5])
    {
      v22 = 1;
      goto LABEL_11;
    }

    v25 = [NSString stringWithFormat:@"%@-SMTs", v18];
    failedSigs = [(KTVerifyPendingSignaturesOperation *)self failedSigs];
    [failedSigs setObject:v19 forKeyedSubscript:v25];

    goto LABEL_9;
  }

  if (!error)
  {
LABEL_9:
    v22 = 0;
    goto LABEL_11;
  }

  v21 = v20;
  v22 = 0;
  *error = v20;
LABEL_11:

  _Block_object_dispose(&v35, 8);
  return v22;
}

- (BOOL)verifyHeadsWithPendingSignatures:(id)signatures error:(id *)error
{
  signaturesCopy = signatures;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100019738;
  v52 = sub_100019748;
  v53 = 0;
  deps = [(KTVerifyPendingSignaturesOperation *)self deps];
  publicKeyStore = [deps publicKeyStore];
  v8 = [publicKeyStore applicationPublicKeyStore:signaturesCopy];

  if ([signaturesCopy isEqual:kKTApplicationIdentifierTLT])
  {
    deps2 = [(KTVerifyPendingSignaturesOperation *)self deps];
    publicKeyStore2 = [deps2 publicKeyStore];
    tltKeyStore = [publicKeyStore2 tltKeyStore];

    v8 = tltKeyStore;
  }

  v12 = [KTContextVerifier alloc];
  deps3 = [(KTVerifyPendingSignaturesOperation *)self deps];
  dataStore = [deps3 dataStore];
  v15 = [(KTContextVerifier *)v12 initWithApplicationKeyStore:v8 dataStore:dataStore applicationID:signaturesCopy];

  v16 = +[NSMutableArray array];
  deps4 = [(KTVerifyPendingSignaturesOperation *)self deps];
  dataStore2 = [deps4 dataStore];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100019FB0;
  v41[3] = &unk_1003178A0;
  v46 = &v48;
  v47 = 0;
  v19 = v15;
  v42 = v19;
  v20 = signaturesCopy;
  v43 = v20;
  v21 = v16;
  v44 = v21;
  selfCopy = self;
  [dataStore2 performForSTHsWithUnverifiedSignature:v20 error:&v47 block:v41];
  v22 = v47;

  v23 = (v49 + 5);
  obj = v49[5];
  v24 = [(KTContextVerifier *)v19 failExpiredSTHsForType:0 error:&obj];
  objc_storeStrong(v23, obj);
  if (!v24 || ![v24 count])
  {
    if (v22)
    {
      if (error)
      {
        v32 = v22;
        v31 = 0;
        *error = v22;
        goto LABEL_19;
      }
    }

    else
    {
      v33 = v49;
      if (error)
      {
        v34 = v49[5];
        if (v34)
        {
          *error = v34;
          v33 = v49;
        }
      }

      if (!v33[5])
      {
        v31 = 1;
        goto LABEL_19;
      }

      v35 = [NSString stringWithFormat:@"%@-STHs", v20];
      failedSigs = [(KTVerifyPendingSignaturesOperation *)self failedSigs];
      [failedSigs setObject:v21 forKeyedSubscript:v35];
    }

    v31 = 0;
    goto LABEL_19;
  }

  v38 = v8;
  v25 = [NSString stringWithFormat:@"%@-STHs", v20];
  deps5 = [(KTVerifyPendingSignaturesOperation *)self deps];
  dataStore3 = [deps5 dataStore];
  v28 = [dataStore3 failedHeadSignaturesWithRevisions:v24 application:v20];
  failedSigs2 = [(KTVerifyPendingSignaturesOperation *)self failedSigs];
  [failedSigs2 setObject:v28 forKeyedSubscript:v25];

  if (error)
  {
    v30 = v49[5];
    if (v30)
    {
      *error = v30;
    }
  }

  v31 = 0;
  v8 = v38;
LABEL_19:

  _Block_object_dispose(&v48, 8);
  return v31;
}

@end