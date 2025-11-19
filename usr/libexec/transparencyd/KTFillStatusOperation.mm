@interface KTFillStatusOperation
+ (id)memoizedKTSelfStatusResult:(id)a3;
- (KTFillStatusOperation)initWithApplication:(id)a3 initialFill:(BOOL)a4 dependencies:(id)a5 intendedState:(id)a6 errorState:(id)a7;
- (void)fillBackgroundStatus;
- (void)fillOptInState;
- (void)fillSelfStatus;
- (void)fillSystemStatus;
- (void)groupStart;
@end

@implementation KTFillStatusOperation

- (KTFillStatusOperation)initWithApplication:(id)a3 initialFill:(BOOL)a4 dependencies:(id)a5 intendedState:(id)a6 errorState:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = KTFillStatusOperation;
  v17 = [(KTGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 142), a5);
    objc_storeStrong((v18 + 150), a3);
    objc_storeStrong((v18 + 126), a6);
    objc_storeStrong((v18 + 134), a7);
    v18[120] = a4;
  }

  return v18;
}

+ (id)memoizedKTSelfStatusResult:(id)a3
{
  v3 = [a3 smDataStore];
  v4 = [v3 getSettingsData:@"KTSelfStatusResult"];

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

  v4 = [(KTFillStatusOperation *)self deps];
  v5 = [v4 stateMonitor];

  v6 = [v5 ktStatus];
  v7 = [v6 accountStatus];

  if (v7)
  {
    [(KTFillStatusOperation *)self fillOptInState];
    [(KTFillStatusOperation *)self fillSystemStatus];
    if ([(KTFillStatusOperation *)self initialFill])
    {
      [(KTFillStatusOperation *)self fillSelfStatus];
    }

    [v5 setPendingChanges:0];
    v8 = [v5 ktStatus];
    if (v8)
    {
      v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(KTFillStatusOperation *)self deps];
    v11 = [v10 smDataStore];
    [v11 setSettingsData:@"KTSelfStatusResult" data:v9];

    if (qword_10038BCB0 != -1)
    {
      sub_100248C28();
    }

    v12 = qword_10038BCB8;
    if (os_log_type_enabled(qword_10038BCB8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v8;
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
  v3 = [(KTFillStatusOperation *)self deps];
  v4 = [v3 stateMonitor];

  v5 = [(KTFillStatusOperation *)self deps];
  v6 = [v5 smDataStore];
  v7 = [v6 getSettingsNumber:off_100381AD8];

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

  [v4 setSystemStatus:v9];
}

- (void)fillSystemStatus
{
  v3 = [(KTFillStatusOperation *)self deps];
  v4 = [v3 stateMonitor];

  v5 = [v4 ktStatus];
  v6 = [v5 systemStatus];

  if (v6 != 5)
  {
    v7 = [(KTFillStatusOperation *)self deps];
    v8 = [v7 publicKeyStore];
    v9 = [(KTFillStatusOperation *)self application];
    v10 = [v8 applicationPublicKeyStore:v9];

    if (v10)
    {
      if ([v10 ready])
      {
        v11 = [(KTFillStatusOperation *)self application];
        v12 = [v4 treeStateUnstable:v11 logBeginTime:{objc_msgSend(v10, "patLogBeginningMs")}];

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
            v21 = v4;
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
          v15 = [v4 ktStatus];
          v16 = [v15 optIn];

          if (v16)
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

        v21 = v4;
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
        v21 = v4;
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
  v3 = [(KTFillStatusOperation *)self deps];
  v4 = [v3 stateMonitor];

  v5 = [(KTFillStatusOperation *)self deps];
  v6 = [v5 accountKeyService];
  v7 = [(KTFillStatusOperation *)self application];
  v8 = [v6 accountKeyService:v7];

  v18 = 0;
  v9 = [v8 publicPublicKey:&v18];
  v10 = v18;
  if (v9)
  {
    v11 = [(KTFillStatusOperation *)self deps];
    v12 = [v11 dataStore];
    v13 = [(KTFillStatusOperation *)self application];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003927C;
    v16[3] = &unk_1003199C0;
    v17 = v4;
    [v12 performAndWaitForLatestSelfRequest:v13 accountKey:v9 block:v16];
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

    [v4 setSelfStatus:2];
  }
}

- (void)fillOptInState
{
  v3 = [(KTFillStatusOperation *)self deps];
  v4 = [v3 stateMonitor];

  v5 = [(KTFillStatusOperation *)self deps];
  v6 = [v5 cloudRecords];

  if (v6)
  {
    v7 = [(KTFillStatusOperation *)self application];
    v8 = [v6 getAggregateOptInStateForApplication:v7];

    if (v8)
    {
      v9 = [v8 state];
      v10 = [v8 everOptIn];
      v11 = v4;
      v12 = v9;
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

      v11 = v4;
      v12 = 2;
      v10 = 0;
    }

    [v11 setOptInState:v12 everOptIn:v10];
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

    [v4 setOptInState:2 everOptIn:0];
  }
}

@end