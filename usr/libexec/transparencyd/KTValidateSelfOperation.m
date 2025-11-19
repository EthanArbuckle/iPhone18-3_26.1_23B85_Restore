@interface KTValidateSelfOperation
- (BOOL)hasDeviceErrorForUri:(id)a3;
- (BOOL)validateOptInStatusWithAccountKey:(id)a3 error:(id *)a4;
- (id)ktLogData:(id)a3 accountKey:(id)a4;
- (void)fillStatus;
- (void)groupStart;
- (void)handleOperationResults:(id)a3;
@end

@implementation KTValidateSelfOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTValidateSelfOperation *)self setFinishedOp:v3];

  v4 = [(KTValidateSelfOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v4];

  if (qword_10038BCA0 != -1)
  {
    sub_100248930();
  }

  v5 = qword_10038BCA8;
  if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ValidateSelf: start", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(KTValidateSelfOperation *)self deps];
  v7 = [v6 smDataStore];
  v8 = [(KTValidateSelfOperation *)self application];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100034D9C;
  v9[3] = &unk_1003196A8;
  objc_copyWeak(&v10, buf);
  [v7 fetchSelfVerificationInfoForApplication:v8 complete:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (BOOL)hasDeviceErrorForUri:(id)a3
{
  v4 = a3;
  v5 = [(KTValidateSelfOperation *)self selfInfo];
  v6 = [v5 uriToServerLoggableDatas];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v7 serverLoggableDatas];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if (![*(*(&v13 + 1) + 8 * i) result])
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)fillStatus
{
  v2 = self;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(KTValidateSelfOperation *)self selfResults];
  v39 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  v40 = v2;
  if (v39)
  {
    v37 = *v42;
    v38 = 0;
    v4 = 2;
    *&v3 = 141558530;
    v35 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * v5);
        v7 = [(KTValidateSelfOperation *)v2 selfResults];
        v8 = [v7 objectForKeyedSubscript:v6];

        v9 = [v8 unsignedIntegerValue];
        v10 = [(KTValidateSelfOperation *)v2 selfInfo];
        v11 = [v10 uriToServerLoggableDatas];
        v12 = [v11 objectForKeyedSubscript:v6];
        v13 = [v12 serverLoggableDatas];

        if (v9 == 1)
        {
          v14 = 0;
        }

        else if (v9)
        {
          v14 = 2;
        }

        else if ([(KTValidateSelfOperation *)v40 hasDeviceErrorForUri:v6])
        {
          v14 = 1;
        }

        else
        {
          v15 = [(KTValidateSelfOperation *)v40 selfErrors];
          v16 = [v15 objectForKeyedSubscript:@"optIn"];

          if (v16)
          {
            v14 = 4;
          }

          else
          {
            v14 = 3;
          }
        }

        if (qword_10038BCA0 != -1)
        {
          sub_100248B60();
        }

        v17 = qword_10038BCA8;
        if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [NSNumber numberWithUnsignedInteger:v14];
          *buf = v35;
          v46 = 1752392040;
          v47 = 2112;
          v48 = v6;
          v49 = 2112;
          v50 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ValidateSelf fillStatus: %{mask.hash}@ has uriStatus %@", buf, 0x20u);
        }

        if (dword_1002D46B8[v14] <= dword_1002D46B8[v4])
        {
          v20 = v13;

          v38 = v20;
          v4 = v14;
        }

        v2 = v40;

        v5 = v5 + 1;
      }

      while (v39 != v5);
      v39 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v39);
  }

  else
  {
    v38 = 0;
    v4 = 2;
  }

  if (qword_10038BCA0 != -1)
  {
    sub_100248B88();
  }

  v21 = qword_10038BCA8;
  if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [NSNumber numberWithUnsignedInteger:v4];
    *buf = 138412290;
    v46 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ValidateSelf fillStatus: setting selfStatus to %@", buf, 0xCu);

    v2 = v40;
  }

  [(KTValidateSelfOperation *)v2 deps];
  v25 = v24 = v2;
  v26 = [v25 stateMonitor];
  [v26 setSelfStatus:v4];

  v27 = [(KTValidateSelfOperation *)v24 deps];
  v28 = [v27 stateMonitor];
  [v28 setSelfDevices:v38];

  v29 = [(KTValidateSelfOperation *)v24 deps];
  v30 = [v29 stateMonitor];
  v31 = [v30 statusFilled];
  [v31 fulfill];

  v32 = [[KTPendingFlag alloc] initWithFlag:@"StatusUpdate" delayInSeconds:1.0];
  v33 = [(KTValidateSelfOperation *)v24 deps];
  v34 = [v33 flagHandler];
  [v34 handlePendingFlag:v32];
}

- (BOOL)validateOptInStatusWithAccountKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTValidateSelfOperation *)self transparentDatas];
  v8 = [(KTValidateSelfOperation *)self ktLogData:v7 accountKey:v6];

  v9 = [(KTValidateSelfOperation *)self deps];
  v10 = [v9 cloudRecords];
  v11 = [(KTValidateSelfOperation *)self application];
  v18 = 0;
  v12 = [v10 evaluateKTLogData:v8 application:v11 error:&v18];
  v13 = v18;

  if (v12)
  {
    if (qword_10038BCA0 != -1)
    {
      sub_100248BD8();
    }

    v14 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "evaluateKTLogData eval result: %@", buf, 0xCu);
    }
  }

  else
  {
    if (qword_10038BCA0 != -1)
    {
      sub_100248BB0();
    }

    v15 = qword_10038BCA8;
    if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "evaluateKTLogData failure: %@", buf, 0xCu);
    }

    if (a4 && v13)
    {
      v16 = v13;
      *a4 = v13;
    }
  }

  return v12 != 0;
}

- (id)ktLogData:(id)a3 accountKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[NSMutableDictionary dictionary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100037908;
  v12[3] = &unk_100319750;
  v7 = v13 = v5;
  v14 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)handleOperationResults:(id)a3
{
  v46 = a3;
  v4 = [(KTValidateSelfOperation *)self selfInfo];
  if (v4)
  {
    v5 = [(KTValidateSelfOperation *)self transparentDatas];
    if ([v5 count])
    {
      v6 = [(KTValidateSelfOperation *)self selfResults];
      v7 = [v6 count];

      if (v7)
      {
        v47 = objc_alloc_init(KTSelfValidationDiagnostics);
        v8 = [(KTValidateSelfOperation *)self selfInfo];
        v9 = [v8 diagnosticsJsonDictionary];
        [v47 setKtSelfVerificationInfoDiagnosticsJson:v9];

        v10 = [(KTValidateSelfOperation *)self selfInfo];
        v11 = [v10 selfDeviceID];
        v12 = [v11 kt_hexString];
        [v47 setPushToken:v12];

        v13 = [(KTValidateSelfOperation *)self accountKeyServer];
        LODWORD(v11) = [v13 haveIdentity];

        if (v11)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v66 = sub_100038288;
          v67 = sub_100038298;
          v68 = 0;
          v58 = 0;
          v59 = &v58;
          v60 = 0x3032000000;
          v61 = sub_100038288;
          v62 = sub_100038298;
          v63 = 0;
          v14 = [(KTValidateSelfOperation *)self accountKeyServer];
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1000382A0;
          v57[3] = &unk_100319798;
          v57[4] = buf;
          v57[5] = &v58;
          [v14 signData:0 completionBlock:v57];

          if (*(*&buf[8] + 40) && v59[5])
          {
            [v47 setRawAccountKey:?];
            [v47 setAccountKey:v59[5]];
          }

          _Block_object_dispose(&v58, 8);

          _Block_object_dispose(buf, 8);
        }

        v51 = +[NSMutableDictionary dictionary];
        v52 = +[NSMutableDictionary dictionary];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v15 = [(KTValidateSelfOperation *)self selfInfo];
        obj = [v15 uriToServerLoggableDatas];

        v16 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
        if (!v16)
        {
          v49 = 1;
          goto LABEL_36;
        }

        v49 = 1;
        v50 = *v54;
        while (1)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v54 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v53 + 1) + 8 * i);
            v19 = [(KTValidateSelfOperation *)self selfInfo];
            v20 = [v19 uriToServerLoggableDatas];
            v21 = [v20 objectForKeyedSubscript:v18];

            v22 = [(KTValidateSelfOperation *)self application];
            v23 = [TransparencyApplication addApplicationPrefixForIdentifier:v22 uri:v18];

            v24 = objc_alloc_init(KTSelfValidationURIDiagnostics);
            v25 = [v21 diagnosticsJsonDictionary];
            [v24 setKtVerificationInfoDiagnosticsJson:v25];

            v26 = [v21 serverLoggableDatas];
            [KTLoggableData combineLoggableDatasForUI:v52 byAdding:v26];

            v27 = [(KTValidateSelfOperation *)self selfResults];
            v28 = [v27 objectForKeyedSubscript:v23];

            v29 = [v28 intValue];
            if (v29 > 1)
            {
              if (v29 != 3)
              {
                if (v29 == 2)
                {
                  v49 = 2;
                  v30 = @"Pending";
                  goto LABEL_24;
                }

                goto LABEL_21;
              }

              v30 = @"Ignored";
            }

            else
            {
              if (v29)
              {
                v30 = @"OK";
                if (v29 == 1)
                {
                  goto LABEL_24;
                }

LABEL_21:
                v49 = 0;
                v30 = @"Unknown";
                goto LABEL_24;
              }

              v49 = 0;
              v30 = @"Failed";
            }

LABEL_24:
            [v24 setResult:v30];
            v31 = [(KTValidateSelfOperation *)self cachedTimes];
            v32 = [v31 objectForKeyedSubscript:v23];
            [v24 setRequestTime:v32];

            v33 = [(KTValidateSelfOperation *)self selfErrors];
            v34 = [v33 objectForKeyedSubscript:v23];

            if (v34)
            {
              [v24 setError:v34];
            }

            v35 = [(KTValidateSelfOperation *)self transparentDatas];
            v36 = [v35 objectForKeyedSubscript:v23];

            v37 = [v36 diagnosticsJsonDictionary];
            [v24 setTransparentDataDiagnosticsJson:v37];

            [v51 setObject:v24 forKeyedSubscript:v23];
          }

          v16 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
          if (!v16)
          {
LABEL_36:

            [v47 setUriToDiagnostics:v51];
            v44 = [v52 allValues];
            v45 = [(KTResultOperation *)self error];
            v46[2](v46, v49, v47, v44, v45);

            goto LABEL_37;
          }
        }
      }
    }

    else
    {
    }
  }

  if (qword_10038BCA0 != -1)
  {
    sub_100248C00();
  }

  v38 = qword_10038BCA8;
  if (os_log_type_enabled(qword_10038BCA8, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    v40 = [(KTValidateSelfOperation *)self selfInfo];
    v41 = [(KTValidateSelfOperation *)self transparentDatas];
    v42 = [v41 count];
    v43 = [(KTValidateSelfOperation *)self selfResults];
    *buf = 138412802;
    *&buf[4] = v40;
    *&buf[12] = 1024;
    *&buf[14] = v42;
    *&buf[18] = 1024;
    *&buf[20] = [v43 count];
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "missing inputdata: selfinfo: %@ transparentDatas: %d selfResults: %d", buf, 0x18u);
  }

  v47 = [(KTResultOperation *)self error];
  v46[2](v46, 0, 0, 0, v47);
LABEL_37:
}

@end