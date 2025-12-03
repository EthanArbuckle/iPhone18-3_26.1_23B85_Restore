@interface KTFillStatusOperation
+ (id)memoizedKTSelfStatusResult:(id)result;
- (KTFillStatusOperation)initWithApplication:(id)application initialFill:(BOOL)fill dependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)fillBackgroundStatus;
- (void)fillOptInState;
- (void)fillSelfStatus;
- (void)fillSystemStatus;
- (void)groupStart;
@end

@implementation KTFillStatusOperation

- (KTFillStatusOperation)initWithApplication:(id)application initialFill:(BOOL)fill dependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  applicationCopy = application;
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v20.receiver = self;
  v20.super_class = KTFillStatusOperation;
  v17 = [(KTGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 142), dependencies);
    objc_storeStrong((v18 + 150), application);
    objc_storeStrong((v18 + 126), state);
    objc_storeStrong((v18 + 134), errorState);
    v18[120] = fill;
  }

  return v18;
}

+ (id)memoizedKTSelfStatusResult:(id)result
{
  smDataStore = [result smDataStore];
  v4 = [smDataStore getSettingsData:@"KTSelfStatusResult"];

  if (v4)
  {
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)groupStart
{
  if (qword_10038BCB0 != -1)
  {
    sub_100248C14();
  }

  v3 = qword_10038BCB8;
  if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "FillStatus: start", &v13, 2u);
  }

  deps = [(KTFillStatusOperation *)self deps];
  stateMonitor = [deps stateMonitor];

  ktStatus = [stateMonitor ktStatus];
  accountStatus = [ktStatus accountStatus];

  if (accountStatus)
  {
    [(KTFillStatusOperation *)self fillOptInState];
    [(KTFillStatusOperation *)self fillSystemStatus];
    if ([(KTFillStatusOperation *)self initialFill])
    {
      [(KTFillStatusOperation *)self fillSelfStatus];
    }

    [stateMonitor setPendingChanges:0];
    ktStatus2 = [stateMonitor ktStatus];
    if (ktStatus2)
    {
      v9 = [NSKeyedArchiver archivedDataWithRootObject:ktStatus2 requiringSecureCoding:1 error:0];
    }

    else
    {
      v9 = 0;
    }

    deps2 = [(KTFillStatusOperation *)self deps];
    smDataStore = [deps2 smDataStore];
    [smDataStore setSettingsData:@"KTSelfStatusResult" data:v9];

    if (qword_10038BCB0 != -1)
    {
      sub_100248C28();
    }

    v12 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = ktStatus2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "FillStatus: filled: %@", &v13, 0xCu);
    }
  }

  else
  {
    [(KTFillStatusOperation *)self setNextState:@"Initializing"];
  }
}

- (void)fillBackgroundStatus
{
  deps = [(KTFillStatusOperation *)self deps];
  stateMonitor = [deps stateMonitor];

  deps2 = [(KTFillStatusOperation *)self deps];
  smDataStore = [deps2 smDataStore];
  v7 = [smDataStore getSettingsNumber:off_100381AD8];

  if (v7)
  {
    if (qword_10038BCB0 != -1)
    {
      sub_100248C50();
    }

    v8 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "FillStatus: last background verification result %{public}@", &v11, 0xCu);
    }

    if ([v7 BOOLValue])
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    if (qword_10038BCB0 != -1)
    {
      sub_100248C64();
    }

    v10 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FillStatus: no stored background result, defaulting to OK", &v11, 2u);
    }

    v9 = 0;
  }

  [stateMonitor setSystemStatus:v9];
}

- (void)fillSystemStatus
{
  deps = [(KTFillStatusOperation *)self deps];
  stateMonitor = [deps stateMonitor];

  ktStatus = [stateMonitor ktStatus];
  systemStatus = [ktStatus systemStatus];

  if (systemStatus != 5)
  {
    deps2 = [(KTFillStatusOperation *)self deps];
    publicKeyStore = [deps2 publicKeyStore];
    application = [(KTFillStatusOperation *)self application];
    v10 = [publicKeyStore applicationPublicKeyStore:application];

    if (v10)
    {
      if ([v10 ready])
      {
        application2 = [(KTFillStatusOperation *)self application];
        v12 = [stateMonitor treeStateUnstable:application2 logBeginTime:{objc_msgSend(v10, "patLogBeginningMs")}];

        if (v12)
        {
          if (qword_10038BCB0 != -1)
          {
            sub_100248C8C();
          }

          v13 = qword_10038BCB8;
          if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FillStatus: system status is tree reset populating", buf, 2u);
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v21 = stateMonitor;
            v22 = 3;
            goto LABEL_31;
          }

          if (qword_10038BCB0 != -1)
          {
            sub_100248CA0();
          }

          v14 = qword_10038BCB8;
          if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FillStatus: overriding tree reset system status", v24, 2u);
          }
        }

        if (_os_feature_enabled_impl())
        {
          ktStatus2 = [stateMonitor ktStatus];
          optIn = [ktStatus2 optIn];

          if (optIn)
          {
            if (qword_10038BCB0 != -1)
            {
              sub_100248CC8();
            }

            v17 = qword_10038BCB8;
            if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
            {
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FillStatus: reading background verification status", v23, 2u);
            }

            [(KTFillStatusOperation *)self fillBackgroundStatus];
            goto LABEL_32;
          }
        }

        v21 = stateMonitor;
        v22 = 0;
LABEL_31:
        [v21 setSystemStatus:v22];
LABEL_32:

        goto LABEL_33;
      }

      if (qword_10038BCB0 != -1)
      {
        sub_100248C78();
      }

      v18 = qword_10038BCB8;
      if (!os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        v21 = stateMonitor;
        v22 = 4;
        goto LABEL_31;
      }

      *v26 = 0;
      v19 = "FillStatus: key store not ready";
      v20 = v26;
    }

    else
    {
      if (qword_10038BCB0 != -1)
      {
        sub_100248CF0();
      }

      v18 = qword_10038BCB8;
      if (!os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v27 = 0;
      v19 = "FillStatus: no key store";
      v20 = &v27;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, v20, 2u);
    goto LABEL_30;
  }

LABEL_33:
}

- (void)fillSelfStatus
{
  deps = [(KTFillStatusOperation *)self deps];
  stateMonitor = [deps stateMonitor];

  deps2 = [(KTFillStatusOperation *)self deps];
  accountKeyService = [deps2 accountKeyService];
  application = [(KTFillStatusOperation *)self application];
  v8 = [accountKeyService accountKeyService:application];

  v18 = 0;
  v9 = [v8 publicPublicKey:&v18];
  v10 = v18;
  if (v9)
  {
    deps3 = [(KTFillStatusOperation *)self deps];
    dataStore = [deps3 dataStore];
    application2 = [(KTFillStatusOperation *)self application];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003927C;
    v16[3] = &unk_1003199C0;
    v17 = stateMonitor;
    [dataStore performAndWaitForLatestSelfRequest:application2 accountKey:v9 block:v16];
  }

  else
  {
    if (qword_10038BCB0 != -1)
    {
      sub_100248D04();
    }

    v14 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "FillStatus: unable to get account key for latest self status", v15, 2u);
    }

    [stateMonitor setSelfStatus:2];
  }
}

- (void)fillOptInState
{
  deps = [(KTFillStatusOperation *)self deps];
  stateMonitor = [deps stateMonitor];

  deps2 = [(KTFillStatusOperation *)self deps];
  cloudRecords = [deps2 cloudRecords];

  if (cloudRecords)
  {
    application = [(KTFillStatusOperation *)self application];
    v8 = [cloudRecords getAggregateOptInStateForApplication:application];

    if (v8)
    {
      state = [v8 state];
      everOptIn = [v8 everOptIn];
      v11 = stateMonitor;
      v12 = state;
    }

    else
    {
      if (qword_10038BCB0 != -1)
      {
        sub_100248E30();
      }

      v14 = qword_10038BCB8;
      if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "FillStatus: unable to get opt-in for status: %@", &v15, 0xCu);
      }

      v11 = stateMonitor;
      v12 = 2;
      everOptIn = 0;
    }

    [v11 setOptInState:v12 everOptIn:everOptIn];
  }

  else
  {
    if (qword_10038BCB0 != -1)
    {
      sub_100248E44();
    }

    v13 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "FillStatus: No cloud records to fill status", &v15, 2u);
    }

    [stateMonitor setOptInState:2 everOptIn:0];
  }
}

@end