@interface KTVerifyMapHeadMMDOperation
- (BOOL)handlePendingMapHeadMMDs:(id)a3 error:(id *)a4;
- (KTVerifyMapHeadMMDOperation)initWithDependencies:(id)a3 opId:(id)a4;
- (id)verifyMapHeadMMDs:(id)a3 application:(id)a4 error:(id *)a5;
- (void)groupStart;
@end

@implementation KTVerifyMapHeadMMDOperation

- (KTVerifyMapHeadMMDOperation)initWithDependencies:(id)a3 opId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = KTVerifyMapHeadMMDOperation;
  v9 = [(KTGroupOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deps, a3);
    [(KTVerifyMapHeadMMDOperation *)v10 setBackgroundOpId:v8];
    v11 = +[NSMutableDictionary dictionary];
    [(KTVerifyMapHeadMMDOperation *)v10 setErrors:v11];

    v12 = +[NSMutableDictionary dictionary];
    [(KTVerifyMapHeadMMDOperation *)v10 setFailedSMHs:v12];

    [(KTGroupOperation *)v10 setName:@"SmhMMD"];
  }

  return v10;
}

- (void)groupStart
{
  if (qword_10038BCE0 != -1)
  {
    sub_1002492A4();
  }

  v3 = qword_10038BCE8;
  if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "VerifyMapHeadMMD: start", buf, 2u);
  }

  v60 = 0;
  v4 = [(KTVerifyMapHeadMMDOperation *)self handlePendingMapHeadMMDs:kKTApplicationIdentifierIDS error:&v60];
  v5 = v60;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      if (qword_10038BCE0 != -1)
      {
        sub_1002492B8();
      }

      v7 = qword_10038BCE8;
      if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v66 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Verify IDS Map Head MMDs failed: %@", buf, 0xCu);
      }
    }

    [(KTResultOperation *)self setError:v6];
  }

  v59 = v6;
  v8 = [(KTVerifyMapHeadMMDOperation *)self handlePendingMapHeadMMDs:kKTApplicationIdentifierIDSMultiplex error:&v59];
  v9 = v59;

  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      if (qword_10038BCE0 != -1)
      {
        sub_1002492E0();
      }

      v10 = qword_10038BCE8;
      if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v66 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Verify MP Map Head MMDs failed: %@", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  v58 = v9;
  v11 = [(KTVerifyMapHeadMMDOperation *)self handlePendingMapHeadMMDs:kKTApplicationIdentifierIDSFaceTime error:&v58];
  v12 = v58;

  if ((v11 & 1) == 0)
  {
    if (v12)
    {
      if (qword_10038BCE0 != -1)
      {
        sub_100249308();
      }

      v13 = qword_10038BCE8;
      if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v66 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Verify FT Map Head MMDs failed: %@", buf, 0xCu);
      }
    }

    v12 = 0;
  }

  v14 = [(KTVerifyMapHeadMMDOperation *)self errors];
  v15 = [v14 count];

  if (v15)
  {
    v47 = v12;
    v16 = [(KTVerifyMapHeadMMDOperation *)self errors];
    v17 = [v16 allKeys];

    v46 = v17;
    v18 = [v17 componentsJoinedByString:{@", "}];
    v19 = [NSString stringWithFormat:@"SMH MMDs failed for applications: %@", v18];

    v63[0] = NSMultipleUnderlyingErrorsKey;
    v20 = [(KTVerifyMapHeadMMDOperation *)self errors];
    v21 = [v20 allValues];
    v63[1] = NSLocalizedDescriptionKey;
    v64[0] = v21;
    v45 = v19;
    v64[1] = v19;
    v22 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];

    v44 = v22;
    v23 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-383 userInfo:v22];
    [(KTResultOperation *)self setError:v23];

    v24 = +[NSMutableString string];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [(KTVerifyMapHeadMMDOperation *)self failedSMHs];
    v25 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v25)
    {
      v26 = v25;
      v49 = *v55;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v55 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v54 + 1) + 8 * i);
          [v24 appendFormat:@"%@:", v28];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v29 = self;
          v30 = [(KTVerifyMapHeadMMDOperation *)self failedSMHs];
          v31 = [v30 objectForKeyedSubscript:v28];

          v32 = [v31 countByEnumeratingWithState:&v50 objects:v61 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v51;
            do
            {
              for (j = 0; j != v33; j = j + 1)
              {
                if (*v51 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = [*(*(&v50 + 1) + 8 * j) base64EncodedStringWithOptions:0];
                [v24 appendFormat:@"%@;", v36];
              }

              v33 = [v31 countByEnumeratingWithState:&v50 objects:v61 count:16];
            }

            while (v33);
          }

          self = v29;
        }

        v26 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v26);
    }

    v37 = [(KTVerifyMapHeadMMDOperation *)self backgroundOpId];
    v38 = [(KTVerifyMapHeadMMDOperation *)self deps];
    [v38 smDataStore];
    v40 = v39 = self;
    v41 = [(KTVerifyMapHeadMMDOperation *)v39 name];
    v42 = [(KTResultOperation *)v39 error];
    [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:v37 smDataStore:v40 failureDataString:v24 type:v41 serverHint:0 failure:v42];

    v12 = v47;
  }

  if (qword_10038BCE0 != -1)
  {
    sub_100249330();
  }

  v43 = qword_10038BCE8;
  if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "VerifyMapHeadMMD: end", buf, 2u);
  }
}

- (BOOL)handlePendingMapHeadMMDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003F0A4;
  v21 = sub_10003F0B4;
  v22 = 0;
  objc_initWeak(&location, self);
  v7 = [(KTVerifyMapHeadMMDOperation *)self deps];
  v8 = [v7 dataStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003F0BC;
  v12[3] = &unk_10031A030;
  objc_copyWeak(&v15, &location);
  v9 = v6;
  v13 = v9;
  v14 = &v17;
  [v8 performForSMHsWithUnverifiedMMD:v9 error:a4 block:v12];

  if (a4)
  {
    v10 = v18[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v17, 8);

  return 0;
}

- (id)verifyMapHeadMMDs:(id)a3 application:(id)a4 error:(id *)a5
{
  v41 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableArray array];
  v44 = +[NSMutableArray array];
  v47 = self;
  v10 = [(KTVerifyMapHeadMMDOperation *)self deps];
  v11 = [v10 publicKeyStore];
  v42 = v8;
  v45 = [v11 applicationPublicKeyStore:v8];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v46 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 sth];
        v50 = 0;
        v18 = [(SignedObjectHolder *)SignedMapHead parseFromData:v17 error:&v50];
        v19 = v50;

        if (v18)
        {
          v20 = [v45 appSthKeyStore];
          v21 = [v20 signatureVerifier];
          [v18 setVerifier:v21];

          [v15 receiptTime];
          v49 = v19;
          v22 = [v18 verifyMMD:&v49 error:?];
          v23 = v49;

          [v15 setUnsigned:"mmdVerified" value:v22];
          if (!v22)
          {
            v24 = [v15 sth];
            [v44 addObject:v24];

            [v9 addObject:v23];
          }

          v25 = v9;
          v26 = [(KTVerifyMapHeadMMDOperation *)v47 deps];
          v27 = [v26 dataStore];
          v48 = v23;
          v28 = [v27 persistAndRefaultObject:v15 error:&v48];
          v19 = v48;

          if (v28)
          {
            goto LABEL_16;
          }

          if (qword_10038BCE0 != -1)
          {
            sub_100249380();
          }

          v29 = qword_10038BCE8;
          if (os_log_type_enabled(qword_10038BCE8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v58 = v19;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "VerifyMapHeadMMD: failed to save MMD verified SMHs: %@", buf, 0xCu);
          }

          if (!v19)
          {
LABEL_16:
            v9 = v25;
            goto LABEL_19;
          }

          v30 = [(KTVerifyMapHeadMMDOperation *)v47 deps];
          v31 = [v30 dataStore];
          [v31 reportCoreDataPersistEventForLocation:@"verifyMapHeadMMDs" underlyingError:v19];

          v9 = v25;
          v32 = v25;
        }

        else
        {
          v33 = [v15 sth];
          [v44 addObject:v33];

          v34 = [(KTVerifyMapHeadMMDOperation *)v47 deps];
          v35 = [v34 dataStore];
          [v35 deleteObject:v15];

          v32 = v9;
        }

        [v32 addObject:{v19, v41}];
LABEL_19:

        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v13);
  }

  if ([v9 count])
  {
    v55 = NSMultipleUnderlyingErrorsKey;
    v56 = v9;
    v36 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v37 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-383 userInfo:v36];
    if (v41 && v37)
    {
      v37 = v37;
      *v41 = v37;
    }
  }

  if ([v44 count])
  {
    v38 = v44;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

  return v38;
}

@end