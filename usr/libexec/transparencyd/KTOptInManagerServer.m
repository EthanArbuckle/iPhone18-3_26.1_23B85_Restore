@interface KTOptInManagerServer
+ (id)getOptInHistory:(id)a3 store:(id)a4 error:(id *)a5;
+ (id)getOptInHistoryDiagnostic:(id)a3 store:(id)a4;
+ (void)optInManagerOptInState:(id)a3 sync:(BOOL)a4 store:(id)a5 complete:(id)a6;
- (BOOL)kvsOptInState;
- (KTContext)context;
- (KTOptInManagerServer)initWithApplication:(id)a3 context:(id)a4 stateMachine:(id)a5;
- (KTOptInManagerServer)initWithApplication:(id)a3 context:(id)a4 stateMachine:(id)a5 account:(Class)a6 store:(id)a7;
- (KTSMManager)stateMachine;
- (id)emailPrefix;
- (id)getAggregateOptInState:(id *)a3;
- (id)getCurrentOptInEntry:(id *)a3;
- (id)getOptInHistory:(id *)a3;
- (id)notificationKey;
- (id)optInKey;
- (void)changeOptInState:(unint64_t)a3 dataStore:(id)a4 completionBlock:(id)a5;
- (void)dealloc;
- (void)getOptInState:(BOOL)a3 completionBlock:(id)a4;
- (void)getOptInState:(id)a3;
- (void)handleCDPReset:(id)a3;
- (void)handleOptInStateChange:(id)a3;
@end

@implementation KTOptInManagerServer

- (KTOptInManagerServer)initWithApplication:(id)a3 context:(id)a4 stateMachine:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(KTOptInManagerServer *)self initWithApplication:v10 context:v9 stateMachine:v8 account:objc_opt_class() store:0];

  return v11;
}

- (KTOptInManagerServer)initWithApplication:(id)a3 context:(id)a4 stateMachine:(id)a5 account:(Class)a6 store:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [TransparencyApplication applicationValueForIdentifier:v12];

  if (v16)
  {
    v29.receiver = self;
    v29.super_class = KTOptInManagerServer;
    v17 = [(KTOptInManagerServer *)&v29 init];
    v18 = v17;
    if (v17)
    {
      [(KTOptInManagerServer *)v17 setApplicationId:v12];
      [(KTOptInManagerServer *)v18 setContext:v13];
      [(KTOptInManagerServer *)v18 setStateMachine:v14];
      if (v15)
      {
        [(KTOptInManagerServer *)v18 setStore:v15];
      }

      else
      {
        v21 = +[KTKVSSoftStore sharedStore];
        [(KTOptInManagerServer *)v18 setStore:v21];
      }

      [(KTOptInManagerServer *)v18 setAccount:a6];
      v22 = dispatch_group_create();
      [(KTOptInManagerServer *)v18 setSetGroup:v22];

      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_create("KTOptInManagerSet", v23);
      [(KTOptInManagerServer *)v18 setSetQueue:v24];

      v25 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
      [v25 addObserver:v18 selector:"handleCDPReset:" name:@"com.apple.security.resetprotecteddata.complete"];

      v26 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
      v27 = [(KTOptInManagerServer *)v18 notificationKey];
      [v26 addObserver:v18 selector:"handleOptInStateChange:" name:v27];
    }

    self = v18;
    v20 = self;
  }

  else
  {
    if (qword_10039CBD8 != -1)
    {
      sub_10025DAA4();
    }

    v19 = qword_10039CBE0;
    if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.security.resetprotecteddata.complete"];

  v4 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
  v5 = [(KTOptInManagerServer *)self notificationKey];
  [v4 removeObserver:self name:v5];

  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(*notifyToken);
    v7 = self->_notifyToken;
  }

  else
  {
    v7 = 0;
  }

  free(v7);
  v8.receiver = self;
  v8.super_class = KTOptInManagerServer;
  [(KTOptInManagerServer *)&v8 dealloc];
}

+ (void)optInManagerOptInState:(id)a3 sync:(BOOL)a4 store:(id)a5 complete:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v11 && ([v11 storeReady] & 1) != 0)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001FF414;
    v19[3] = &unk_1003297D0;
    v23 = a1;
    v20 = v10;
    v13 = v11;
    v21 = v13;
    v22 = v12;
    v14 = objc_retainBlock(v19);
    v15 = v14;
    if (v8)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001FF530;
      v17[3] = &unk_10031A768;
      v18 = v14;
      [v13 forceSync:v17];
    }

    else
    {
      (v14[2])(v14);
    }
  }

  else
  {
    v16 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-308 description:@"KVS store not yet loaded"];
    (*(v12 + 2))(v12, 0, 0, v16);
  }
}

- (id)optInKey
{
  v2 = [(KTOptInManagerServer *)self applicationId];
  v3 = [KTOptInManagerServer optInKeyForApplication:v2];

  return v3;
}

- (id)notificationKey
{
  v2 = [(KTOptInManagerServer *)self applicationId];
  v3 = [KTOptInManager notificationKeyForApplication:v2];

  return v3;
}

- (id)getOptInHistory:(id *)a3
{
  v5 = [(KTOptInManagerServer *)self store];
  v6 = [v5 storeReady];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(KTOptInManagerServer *)self applicationId];
    v9 = [(KTOptInManagerServer *)self store];
    v10 = [v7 getOptInHistory:v8 store:v9 error:a3];
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-308 description:@"KVS store not yet loaded"];
    v8 = v11;
    v10 = 0;
    if (a3 && v11)
    {
      v12 = v11;
      v10 = 0;
      *a3 = v8;
    }
  }

  return v10;
}

+ (id)getOptInHistory:(id)a3 store:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [KTOptInManagerServer optInKeyForApplication:v7];
  v10 = [TransparencyAnalytics formatEventName:@"OptInServerGet" application:v7];
  v11 = [v8 objectForKey:v9];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v8;
      v36 = v10;
      v34 = v9;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v39;
        obj = v12;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v38 + 1) + 8 * v16);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v18 = v17;
          v19 = [v18 objectAtIndexedSubscript:0];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_24:
            v30 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-283 description:@"Opt-in entry has wrong value types"];
            v31 = +[TransparencyAnalytics logger];
            [v31 logResultForEvent:v36 hardFailure:1 result:v30];

            if (a5 && v30)
            {
              v32 = v30;
              *a5 = v30;
            }

LABEL_28:
            v9 = v34;
            v8 = v35;
            v10 = v36;
            v12 = obj;
            goto LABEL_29;
          }

          v20 = [v18 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_24;
          }

          if (v14 == ++v16)
          {
            v12 = obj;
            v14 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            goto LABEL_13;
          }
        }

        v18 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-282 description:@"Latest opt-in entry is not an array"];
        v28 = +[TransparencyAnalytics logger];
        [v28 logResultForEvent:v36 hardFailure:1 result:v18];

        if (!a5)
        {
          goto LABEL_28;
        }

        v9 = v34;
        v8 = v35;
        v12 = obj;
        if (v18)
        {
          v29 = v18;
          *a5 = v18;
        }

        v10 = v36;
LABEL_29:

        v23 = 0;
        goto LABEL_30;
      }

LABEL_13:

      v22 = +[TransparencyAnalytics logger];
      v10 = v36;
      [v22 logSuccessForEventNamed:v36];

      v23 = [v12 sortedArrayUsingComparator:&stru_100329810];
      v9 = v34;
      v8 = v35;
LABEL_30:
    }

    else
    {
      v25 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-281 description:@"Top-level opt-in value is not a array"];
      v26 = +[TransparencyAnalytics logger];
      [v26 logResultForEvent:v10 hardFailure:1 result:v25];

      if (a5 && v25)
      {
        v27 = v25;
        *a5 = v25;
      }

      v23 = 0;
    }
  }

  else
  {
    v24 = +[TransparencyAnalytics logger];
    [v24 logSuccessForEventNamed:v10];

    v23 = +[NSArray array];
  }

  return v23;
}

+ (id)getOptInHistoryDiagnostic:(id)a3 store:(id)a4
{
  v24 = 0;
  v4 = [a1 getOptInHistory:a3 store:a4 error:&v24];
  v5 = v24;
  v6 = v5;
  if (v4)
  {
    v18 = v5;
    v19 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([v12 count] >= 2)
          {
            v13 = [v12 objectAtIndexedSubscript:0];
            v14 = [v12 objectAtIndexedSubscript:1];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25[0] = @"date";
                v15 = [v13 kt_toISO_8601_UTCString];
                v25[1] = @"state";
                v26[0] = v15;
                v26[1] = v14;
                v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
                [v19 addObject:v16];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v9);
    }

    v6 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)getCurrentOptInEntry:(id *)a3
{
  v3 = [(KTOptInManagerServer *)self getOptInHistory:a3];
  v4 = [v3 lastObject];

  return v4;
}

- (void)getOptInState:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(KTOptInManagerServer *)self getCurrentOptInEntry:&v10];
  v6 = v10;
  if (v5 | v6)
  {
    if (v5)
    {
      v7 = [v5 objectAtIndexedSubscript:1];
      v8 = [v7 BOOLValue];

      v9 = [v5 objectAtIndexedSubscript:0];
      v4[2](v4, v8, v9, 0);
    }

    else
    {
      v4[2](v4, 0, 0, v6);
    }
  }

  else
  {
    v4[2](v4, 0, 0, 0);
  }
}

- (void)getOptInState:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(KTOptInManagerServer *)self stateMachine];
  v8 = [v7 deps];
  v9 = [v8 cloudRecords];

  if (v9)
  {
    v10 = [(KTOptInManagerServer *)self applicationId];
    v11 = [v9 getAggregateOptInStateForApplication:v10];

    if (v11)
    {
      v12 = [v11 state] != 0;
    }

    else
    {
      v12 = 0;
    }

    (*(v6 + 2))(v6, v12, 0, 0);
  }

  else
  {
    v13 = [(KTOptInManagerServer *)self store];
    v14 = [v13 storeReady];

    if (v14)
    {
      if (!v4)
      {
        [(KTOptInManagerServer *)self getOptInState:v6];
        goto LABEL_11;
      }

      v15 = [(KTOptInManagerServer *)self applicationId];
      v16 = [TransparencyAnalytics formatEventName:@"OptInServerGet" application:v15];

      v17 = [(KTOptInManagerServer *)self store];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100200154;
      v18[3] = &unk_100329838;
      v19 = v16;
      v20 = self;
      v21 = v6;
      v11 = v16;
      [v17 forceSync:v18];
    }

    else
    {
      v11 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-308 description:@"KVS store not yet loaded"];
      (*(v6 + 2))(v6, 0, 0, v11);
    }
  }

LABEL_11:
}

- (BOOL)kvsOptInState
{
  v2 = [(KTOptInManagerServer *)self getCurrentOptInEntry:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectAtIndexedSubscript:1];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)changeOptInState:(unint64_t)a3 dataStore:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = [(KTOptInManagerServer *)self setQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100200310;
  block[3] = &unk_100329860;
  block[4] = self;
  v11 = v7;
  v12 = a3;
  v9 = v7;
  dispatch_async(v8, block);
}

- (id)emailPrefix
{
  v3 = [(KTOptInManagerServer *)self applicationId];
  if ([v3 isEqualToString:kKTApplicationIdentifierIDS])
  {
    goto LABEL_4;
  }

  v4 = [(KTOptInManagerServer *)self applicationId];
  if ([v4 isEqualToString:kKTApplicationIdentifierIDSFaceTime])
  {

LABEL_4:
LABEL_5:
    v5 = [(KTOptInManagerServer *)self applicationId];
    v6 = [TransparencyApplication applicationPrefixForIdentifier:v5];

    goto LABEL_6;
  }

  v8 = [(KTOptInManagerServer *)self applicationId];
  v9 = [v8 isEqualToString:kKTApplicationIdentifierIDSMultiplex];

  if (v9)
  {
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)handleCDPReset:(id)a3
{
  v23 = a3;
  if (qword_10039CBD8 != -1)
  {
    sub_10025DAB8();
  }

  v4 = qword_10039CBE0;
  if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "received CDP Reset notification", buf, 2u);
  }

  v30 = 0;
  v5 = [TransparencyAccount primaryAccount:&v30];
  v6 = v30;
  if (v5)
  {
    v7 = [v5 aa_primaryEmail];
    v8 = [(KTOptInManagerServer *)self emailPrefix];
    if (v8)
    {
      v22 = [NSString stringWithFormat:@"%@://mailto:%@", v8, v7];
      v9 = [(KTOptInManagerServer *)self applicationId];
      v29 = v6;
      v10 = [TransparencyRPCRequestBuilder buildQueryRequest:v22 application:v9 error:&v29];
      v11 = v29;

      if (v10)
      {
        if (qword_10039CBD8 != -1)
        {
          sub_10025DACC();
        }

        v12 = qword_10039CBE0;
        if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 141558274;
          v32 = 1752392040;
          v33 = 2112;
          v34 = v22;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "querying KT server opt-in state for %{mask.hash}@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v13 = +[NSUUID UUID];
        v14 = [(KTOptInManagerServer *)self context];
        v15 = [v14 logClient];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100200B40;
        v24[3] = &unk_1003299D0;
        objc_copyWeak(&v28, buf);
        v25 = v10;
        v16 = v13;
        v26 = v16;
        v27 = v7;
        [v15 fetchQuery:v25 uuid:v16 userInitiated:0 completionHandler:v24];

        objc_destroyWeak(&v28);
        objc_destroyWeak(buf);
      }

      else
      {
        if (qword_10039CBD8 != -1)
        {
          sub_10025DAF4();
        }

        v21 = qword_10039CBE0;
        if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v11;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to check opt-in after CDP reset, no query request: %@", buf, 0xCu);
        }
      }

      v6 = v11;
    }

    else
    {
      if (qword_10039CBD8 != -1)
      {
        sub_10025DB1C();
      }

      v18 = qword_10039CBE0;
      if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [(KTOptInManagerServer *)self applicationId];
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "skipping opt in check after CDP reset for %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_10039CBD8 != -1)
    {
      sub_10025DB44();
    }

    v17 = qword_10039CBE0;
    if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to check opt-in after CDP reset, no account: %@", buf, 0xCu);
    }
  }
}

- (void)handleOptInStateChange:(id)a3
{
  v4 = a3;
  if (qword_10039CBD8 != -1)
  {
    sub_10025DBE4();
  }

  v5 = qword_10039CBE0;
  if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got opt-in change notification", buf, 2u);
  }

  v19 = 0;
  v6 = [(KTOptInManagerServer *)self getCurrentOptInEntry:&v19];
  v7 = v19;
  if (v7 || !v6)
  {
    if (qword_10039CBD8 != -1)
    {
      sub_10025DBF8();
    }

    v10 = qword_10039CBE0;
    if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v7;
      v11 = "failed to get current opt-in state: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, 0xCu);
    }
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v7 = 0;
      goto LABEL_19;
    }

    v14 = [(KTOptInManagerServer *)self context];
    v15 = [v14 followUp];
    v18 = 0;
    v16 = [v15 clearAllFollowups:&v18];
    v7 = v18;

    if ((v16 & 1) == 0)
    {
      if (qword_10039CBD8 != -1)
      {
        sub_10025DC20();
      }

      v17 = qword_10039CBE0;
      if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v7;
        v11 = "failed to clear existing follow ups on optOut notification: %@";
        v12 = v17;
        v13 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }
    }
  }

LABEL_19:
}

- (id)getAggregateOptInState:(id *)a3
{
  v4 = [(KTOptInManagerServer *)self stateMachine];
  v5 = [v4 deps];
  v6 = [v5 cloudRecords];

  if (v6)
  {
    v7 = [(KTOptInManagerServer *)self applicationId];
    v8 = [v6 getAggregateOptInStateForApplication:v7];
  }

  else
  {
    if (qword_10039CBD8 != -1)
    {
      sub_10025DC48();
    }

    v9 = qword_10039CBE0;
    if (os_log_type_enabled(qword_10039CBE0, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "no state machine or cloudrecords", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (KTContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (KTSMManager)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end