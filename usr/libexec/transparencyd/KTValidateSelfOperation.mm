@interface KTValidateSelfOperation
- (BOOL)hasDeviceErrorForUri:(id)uri;
- (BOOL)validateOptInStatusWithAccountKey:(id)key error:(id *)error;
- (id)ktLogData:(id)data accountKey:(id)key;
- (void)fillStatus;
- (void)groupStart;
- (void)handleOperationResults:(id)results;
@end

@implementation KTValidateSelfOperation

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(KTValidateSelfOperation *)self setFinishedOp:v3];

  finishedOp = [(KTValidateSelfOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

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
  deps = [(KTValidateSelfOperation *)self deps];
  smDataStore = [deps smDataStore];
  application = [(KTValidateSelfOperation *)self application];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100034D9C;
  v9[3] = &unk_1003196A8;
  objc_copyWeak(&v10, buf);
  [smDataStore fetchSelfVerificationInfoForApplication:application complete:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (BOOL)hasDeviceErrorForUri:(id)uri
{
  uriCopy = uri;
  selfInfo = [(KTValidateSelfOperation *)self selfInfo];
  uriToServerLoggableDatas = [selfInfo uriToServerLoggableDatas];
  v7 = [uriToServerLoggableDatas objectForKeyedSubscript:uriCopy];

  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    serverLoggableDatas = [v7 serverLoggableDatas];
    v9 = [serverLoggableDatas countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(serverLoggableDatas);
          }

          if (![*(*(&v13 + 1) + 8 * i) result])
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }

        v9 = [serverLoggableDatas countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  selfCopy = self;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(KTValidateSelfOperation *)self selfResults];
  v39 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  v40 = selfCopy;
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
        selfResults = [(KTValidateSelfOperation *)selfCopy selfResults];
        v8 = [selfResults objectForKeyedSubscript:v6];

        unsignedIntegerValue = [v8 unsignedIntegerValue];
        selfInfo = [(KTValidateSelfOperation *)selfCopy selfInfo];
        uriToServerLoggableDatas = [selfInfo uriToServerLoggableDatas];
        v12 = [uriToServerLoggableDatas objectForKeyedSubscript:v6];
        serverLoggableDatas = [v12 serverLoggableDatas];

        if (unsignedIntegerValue == 1)
        {
          v14 = 0;
        }

        else if (unsignedIntegerValue)
        {
          v14 = 2;
        }

        else if ([(KTValidateSelfOperation *)v40 hasDeviceErrorForUri:v6])
        {
          v14 = 1;
        }

        else
        {
          selfErrors = [(KTValidateSelfOperation *)v40 selfErrors];
          v16 = [selfErrors objectForKeyedSubscript:@"optIn"];

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
          v20 = serverLoggableDatas;

          v38 = v20;
          v4 = v14;
        }

        selfCopy = v40;

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

    selfCopy = v40;
  }

  [(KTValidateSelfOperation *)selfCopy deps];
  v25 = v24 = selfCopy;
  stateMonitor = [v25 stateMonitor];
  [stateMonitor setSelfStatus:v4];

  deps = [(KTValidateSelfOperation *)v24 deps];
  stateMonitor2 = [deps stateMonitor];
  [stateMonitor2 setSelfDevices:v38];

  deps2 = [(KTValidateSelfOperation *)v24 deps];
  stateMonitor3 = [deps2 stateMonitor];
  statusFilled = [stateMonitor3 statusFilled];
  [statusFilled fulfill];

  v32 = [[KTPendingFlag alloc] initWithFlag:@"StatusUpdate" delayInSeconds:1.0];
  deps3 = [(KTValidateSelfOperation *)v24 deps];
  flagHandler = [deps3 flagHandler];
  [flagHandler handlePendingFlag:v32];
}

- (BOOL)validateOptInStatusWithAccountKey:(id)key error:(id *)error
{
  keyCopy = key;
  transparentDatas = [(KTValidateSelfOperation *)self transparentDatas];
  v8 = [(KTValidateSelfOperation *)self ktLogData:transparentDatas accountKey:keyCopy];

  deps = [(KTValidateSelfOperation *)self deps];
  cloudRecords = [deps cloudRecords];
  application = [(KTValidateSelfOperation *)self application];
  v18 = 0;
  v12 = [cloudRecords evaluateKTLogData:v8 application:application error:&v18];
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

    if (error && v13)
    {
      v16 = v13;
      *error = v13;
    }
  }

  return v12 != 0;
}

- (id)ktLogData:(id)data accountKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  +[NSMutableDictionary dictionary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100037908;
  v12[3] = &unk_100319750;
  v7 = v13 = keyCopy;
  v14 = v7;
  v8 = keyCopy;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)handleOperationResults:(id)results
{
  resultsCopy = results;
  selfInfo = [(KTValidateSelfOperation *)self selfInfo];
  if (selfInfo)
  {
    transparentDatas = [(KTValidateSelfOperation *)self transparentDatas];
    if ([transparentDatas count])
    {
      selfResults = [(KTValidateSelfOperation *)self selfResults];
      v7 = [selfResults count];

      if (v7)
      {
        error2 = objc_alloc_init(KTSelfValidationDiagnostics);
        selfInfo2 = [(KTValidateSelfOperation *)self selfInfo];
        diagnosticsJsonDictionary = [selfInfo2 diagnosticsJsonDictionary];
        [error2 setKtSelfVerificationInfoDiagnosticsJson:diagnosticsJsonDictionary];

        selfInfo3 = [(KTValidateSelfOperation *)self selfInfo];
        selfDeviceID = [selfInfo3 selfDeviceID];
        kt_hexString = [selfDeviceID kt_hexString];
        [error2 setPushToken:kt_hexString];

        accountKeyServer = [(KTValidateSelfOperation *)self accountKeyServer];
        LODWORD(selfDeviceID) = [accountKeyServer haveIdentity];

        if (selfDeviceID)
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
          accountKeyServer2 = [(KTValidateSelfOperation *)self accountKeyServer];
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1000382A0;
          v57[3] = &unk_100319798;
          v57[4] = buf;
          v57[5] = &v58;
          [accountKeyServer2 signData:0 completionBlock:v57];

          if (*(*&buf[8] + 40) && v59[5])
          {
            [error2 setRawAccountKey:?];
            [error2 setAccountKey:v59[5]];
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
        selfInfo4 = [(KTValidateSelfOperation *)self selfInfo];
        obj = [selfInfo4 uriToServerLoggableDatas];

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
            selfInfo5 = [(KTValidateSelfOperation *)self selfInfo];
            uriToServerLoggableDatas = [selfInfo5 uriToServerLoggableDatas];
            v21 = [uriToServerLoggableDatas objectForKeyedSubscript:v18];

            application = [(KTValidateSelfOperation *)self application];
            v23 = [TransparencyApplication addApplicationPrefixForIdentifier:application uri:v18];

            v24 = objc_alloc_init(KTSelfValidationURIDiagnostics);
            diagnosticsJsonDictionary2 = [v21 diagnosticsJsonDictionary];
            [v24 setKtVerificationInfoDiagnosticsJson:diagnosticsJsonDictionary2];

            serverLoggableDatas = [v21 serverLoggableDatas];
            [KTLoggableData combineLoggableDatasForUI:v52 byAdding:serverLoggableDatas];

            selfResults2 = [(KTValidateSelfOperation *)self selfResults];
            v28 = [selfResults2 objectForKeyedSubscript:v23];

            intValue = [v28 intValue];
            if (intValue > 1)
            {
              if (intValue != 3)
              {
                if (intValue == 2)
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
              if (intValue)
              {
                v30 = @"OK";
                if (intValue == 1)
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
            cachedTimes = [(KTValidateSelfOperation *)self cachedTimes];
            v32 = [cachedTimes objectForKeyedSubscript:v23];
            [v24 setRequestTime:v32];

            selfErrors = [(KTValidateSelfOperation *)self selfErrors];
            v34 = [selfErrors objectForKeyedSubscript:v23];

            if (v34)
            {
              [v24 setError:v34];
            }

            transparentDatas2 = [(KTValidateSelfOperation *)self transparentDatas];
            v36 = [transparentDatas2 objectForKeyedSubscript:v23];

            diagnosticsJsonDictionary3 = [v36 diagnosticsJsonDictionary];
            [v24 setTransparentDataDiagnosticsJson:diagnosticsJsonDictionary3];

            [v51 setObject:v24 forKeyedSubscript:v23];
          }

          v16 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
          if (!v16)
          {
LABEL_36:

            [error2 setUriToDiagnostics:v51];
            allValues = [v52 allValues];
            error = [(KTResultOperation *)self error];
            resultsCopy[2](resultsCopy, v49, error2, allValues, error);

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
    selfInfo6 = [(KTValidateSelfOperation *)self selfInfo];
    transparentDatas3 = [(KTValidateSelfOperation *)self transparentDatas];
    v42 = [transparentDatas3 count];
    selfResults3 = [(KTValidateSelfOperation *)self selfResults];
    *buf = 138412802;
    *&buf[4] = selfInfo6;
    *&buf[12] = 1024;
    *&buf[14] = v42;
    *&buf[18] = 1024;
    *&buf[20] = [selfResults3 count];
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "missing inputdata: selfinfo: %@ transparentDatas: %d selfResults: %d", buf, 0x18u);
  }

  error2 = [(KTResultOperation *)self error];
  resultsCopy[2](resultsCopy, 0, 0, 0, error2);
LABEL_37:
}

@end