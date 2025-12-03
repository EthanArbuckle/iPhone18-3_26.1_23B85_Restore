@interface KTOptInManagerServer
+ (id)getOptInHistory:(id)history store:(id)store error:(id *)error;
+ (id)getOptInHistoryDiagnostic:(id)diagnostic store:(id)store;
+ (void)optInManagerOptInState:(id)state sync:(BOOL)sync store:(id)store complete:(id)complete;
- (BOOL)kvsOptInState;
- (KTContext)context;
- (KTOptInManagerServer)initWithApplication:(id)application context:(id)context stateMachine:(id)machine;
- (KTOptInManagerServer)initWithApplication:(id)application context:(id)context stateMachine:(id)machine account:(Class)account store:(id)store;
- (KTSMManager)stateMachine;
- (id)emailPrefix;
- (id)getAggregateOptInState:(id *)state;
- (id)getCurrentOptInEntry:(id *)entry;
- (id)getOptInHistory:(id *)history;
- (id)notificationKey;
- (id)optInKey;
- (void)changeOptInState:(unint64_t)state dataStore:(id)store completionBlock:(id)block;
- (void)dealloc;
- (void)getOptInState:(BOOL)state completionBlock:(id)block;
- (void)getOptInState:(id)state;
- (void)handleCDPReset:(id)reset;
- (void)handleOptInStateChange:(id)change;
@end

@implementation KTOptInManagerServer

- (KTOptInManagerServer)initWithApplication:(id)application context:(id)context stateMachine:(id)machine
{
  machineCopy = machine;
  contextCopy = context;
  applicationCopy = application;
  v11 = [(KTOptInManagerServer *)self initWithApplication:applicationCopy context:contextCopy stateMachine:machineCopy account:objc_opt_class() store:0];

  return v11;
}

- (KTOptInManagerServer)initWithApplication:(id)application context:(id)context stateMachine:(id)machine account:(Class)account store:(id)store
{
  applicationCopy = application;
  contextCopy = context;
  machineCopy = machine;
  storeCopy = store;
  v16 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];

  if (v16)
  {
    v29.receiver = self;
    v29.super_class = KTOptInManagerServer;
    v17 = [(KTOptInManagerServer *)&v29 init];
    v18 = v17;
    if (v17)
    {
      [(KTOptInManagerServer *)v17 setApplicationId:applicationCopy];
      [(KTOptInManagerServer *)v18 setContext:contextCopy];
      [(KTOptInManagerServer *)v18 setStateMachine:machineCopy];
      if (storeCopy)
      {
        [(KTOptInManagerServer *)v18 setStore:storeCopy];
      }

      else
      {
        v21 = +[KTKVSSoftStore sharedStore];
        [(KTOptInManagerServer *)v18 setStore:v21];
      }

      [(KTOptInManagerServer *)v18 setAccount:account];
      v22 = dispatch_group_create();
      [(KTOptInManagerServer *)v18 setSetGroup:v22];

      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_create("KTOptInManagerSet", v23);
      [(KTOptInManagerServer *)v18 setSetQueue:v24];

      v25 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
      [v25 addObserver:v18 selector:"handleCDPReset:" name:@"com.apple.security.resetprotecteddata.complete"];

      v26 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
      notificationKey = [(KTOptInManagerServer *)v18 notificationKey];
      [v26 addObserver:v18 selector:"handleOptInStateChange:" name:notificationKey];
    }

    self = v18;
    selfCopy = self;
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
      v31 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.security.resetprotecteddata.complete"];

  v4 = +[TransparencyDistributedReadNotificationCenter defaultCenter];
  notificationKey = [(KTOptInManagerServer *)self notificationKey];
  [v4 removeObserver:self name:notificationKey];

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

+ (void)optInManagerOptInState:(id)state sync:(BOOL)sync store:(id)store complete:(id)complete
{
  syncCopy = sync;
  stateCopy = state;
  storeCopy = store;
  completeCopy = complete;
  if (storeCopy && ([storeCopy storeReady] & 1) != 0)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001FF414;
    v19[3] = &unk_1003297D0;
    selfCopy = self;
    v20 = stateCopy;
    v13 = storeCopy;
    v21 = v13;
    v22 = completeCopy;
    v14 = objc_retainBlock(v19);
    v15 = v14;
    if (syncCopy)
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
    (*(completeCopy + 2))(completeCopy, 0, 0, v16);
  }
}

- (id)optInKey
{
  applicationId = [(KTOptInManagerServer *)self applicationId];
  v3 = [KTOptInManagerServer optInKeyForApplication:applicationId];

  return v3;
}

- (id)notificationKey
{
  applicationId = [(KTOptInManagerServer *)self applicationId];
  v3 = [KTOptInManager notificationKeyForApplication:applicationId];

  return v3;
}

- (id)getOptInHistory:(id *)history
{
  store = [(KTOptInManagerServer *)self store];
  storeReady = [store storeReady];

  if (storeReady)
  {
    v7 = objc_opt_class();
    applicationId = [(KTOptInManagerServer *)self applicationId];
    store2 = [(KTOptInManagerServer *)self store];
    v10 = [v7 getOptInHistory:applicationId store:store2 error:history];
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-308 description:@"KVS store not yet loaded"];
    applicationId = v11;
    v10 = 0;
    if (history && v11)
    {
      v12 = v11;
      v10 = 0;
      *history = applicationId;
    }
  }

  return v10;
}

+ (id)getOptInHistory:(id)history store:(id)store error:(id *)error
{
  historyCopy = history;
  storeCopy = store;
  v9 = [KTOptInManagerServer optInKeyForApplication:historyCopy];
  v10 = [TransparencyAnalytics formatEventName:@"OptInServerGet" application:historyCopy];
  v11 = [storeCopy objectForKey:v9];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = storeCopy;
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

            if (error && v30)
            {
              v32 = v30;
              *error = v30;
            }

LABEL_28:
            v9 = v34;
            storeCopy = v35;
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

        if (!error)
        {
          goto LABEL_28;
        }

        v9 = v34;
        storeCopy = v35;
        v12 = obj;
        if (v18)
        {
          v29 = v18;
          *error = v18;
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
      storeCopy = v35;
LABEL_30:
    }

    else
    {
      v25 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-281 description:@"Top-level opt-in value is not a array"];
      v26 = +[TransparencyAnalytics logger];
      [v26 logResultForEvent:v10 hardFailure:1 result:v25];

      if (error && v25)
      {
        v27 = v25;
        *error = v25;
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

+ (id)getOptInHistoryDiagnostic:(id)diagnostic store:(id)store
{
  v24 = 0;
  v4 = [self getOptInHistory:diagnostic store:store error:&v24];
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
                kt_toISO_8601_UTCString = [v13 kt_toISO_8601_UTCString];
                v25[1] = @"state";
                v26[0] = kt_toISO_8601_UTCString;
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

- (id)getCurrentOptInEntry:(id *)entry
{
  v3 = [(KTOptInManagerServer *)self getOptInHistory:entry];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (void)getOptInState:(id)state
{
  stateCopy = state;
  v10 = 0;
  v5 = [(KTOptInManagerServer *)self getCurrentOptInEntry:&v10];
  v6 = v10;
  if (v5 | v6)
  {
    if (v5)
    {
      v7 = [v5 objectAtIndexedSubscript:1];
      bOOLValue = [v7 BOOLValue];

      v9 = [v5 objectAtIndexedSubscript:0];
      stateCopy[2](stateCopy, bOOLValue, v9, 0);
    }

    else
    {
      stateCopy[2](stateCopy, 0, 0, v6);
    }
  }

  else
  {
    stateCopy[2](stateCopy, 0, 0, 0);
  }
}

- (void)getOptInState:(BOOL)state completionBlock:(id)block
{
  stateCopy = state;
  blockCopy = block;
  stateMachine = [(KTOptInManagerServer *)self stateMachine];
  deps = [stateMachine deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    applicationId = [(KTOptInManagerServer *)self applicationId];
    v11 = [cloudRecords getAggregateOptInStateForApplication:applicationId];

    if (v11)
    {
      v12 = [v11 state] != 0;
    }

    else
    {
      v12 = 0;
    }

    (*(blockCopy + 2))(blockCopy, v12, 0, 0);
  }

  else
  {
    store = [(KTOptInManagerServer *)self store];
    storeReady = [store storeReady];

    if (storeReady)
    {
      if (!stateCopy)
      {
        [(KTOptInManagerServer *)self getOptInState:blockCopy];
        goto LABEL_11;
      }

      applicationId2 = [(KTOptInManagerServer *)self applicationId];
      v16 = [TransparencyAnalytics formatEventName:@"OptInServerGet" application:applicationId2];

      store2 = [(KTOptInManagerServer *)self store];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100200154;
      v18[3] = &unk_100329838;
      v19 = v16;
      selfCopy = self;
      v21 = blockCopy;
      v11 = v16;
      [store2 forceSync:v18];
    }

    else
    {
      v11 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-308 description:@"KVS store not yet loaded"];
      (*(blockCopy + 2))(blockCopy, 0, 0, v11);
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
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)changeOptInState:(unint64_t)state dataStore:(id)store completionBlock:(id)block
{
  blockCopy = block;
  setQueue = [(KTOptInManagerServer *)self setQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100200310;
  block[3] = &unk_100329860;
  block[4] = self;
  v11 = blockCopy;
  stateCopy = state;
  v9 = blockCopy;
  dispatch_async(setQueue, block);
}

- (id)emailPrefix
{
  applicationId = [(KTOptInManagerServer *)self applicationId];
  if ([applicationId isEqualToString:kKTApplicationIdentifierIDS])
  {
    goto LABEL_4;
  }

  applicationId2 = [(KTOptInManagerServer *)self applicationId];
  if ([applicationId2 isEqualToString:kKTApplicationIdentifierIDSFaceTime])
  {

LABEL_4:
LABEL_5:
    applicationId3 = [(KTOptInManagerServer *)self applicationId];
    v6 = [TransparencyApplication applicationPrefixForIdentifier:applicationId3];

    goto LABEL_6;
  }

  applicationId4 = [(KTOptInManagerServer *)self applicationId];
  v9 = [applicationId4 isEqualToString:kKTApplicationIdentifierIDSMultiplex];

  if (v9)
  {
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)handleCDPReset:(id)reset
{
  resetCopy = reset;
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
    aa_primaryEmail = [v5 aa_primaryEmail];
    emailPrefix = [(KTOptInManagerServer *)self emailPrefix];
    if (emailPrefix)
    {
      v22 = [NSString stringWithFormat:@"%@://mailto:%@", emailPrefix, aa_primaryEmail];
      applicationId = [(KTOptInManagerServer *)self applicationId];
      v29 = v6;
      v10 = [TransparencyRPCRequestBuilder buildQueryRequest:v22 application:applicationId error:&v29];
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
        context = [(KTOptInManagerServer *)self context];
        logClient = [context logClient];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100200B40;
        v24[3] = &unk_1003299D0;
        objc_copyWeak(&v28, buf);
        v25 = v10;
        v16 = v13;
        v26 = v16;
        v27 = aa_primaryEmail;
        [logClient fetchQuery:v25 uuid:v16 userInitiated:0 completionHandler:v24];

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
        applicationId2 = [(KTOptInManagerServer *)self applicationId];
        *buf = 138543362;
        v32 = applicationId2;
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

- (void)handleOptInStateChange:(id)change
{
  changeCopy = change;
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
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      v7 = 0;
      goto LABEL_19;
    }

    context = [(KTOptInManagerServer *)self context];
    followUp = [context followUp];
    v18 = 0;
    v16 = [followUp clearAllFollowups:&v18];
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

- (id)getAggregateOptInState:(id *)state
{
  stateMachine = [(KTOptInManagerServer *)self stateMachine];
  deps = [stateMachine deps];
  cloudRecords = [deps cloudRecords];

  if (cloudRecords)
  {
    applicationId = [(KTOptInManagerServer *)self applicationId];
    v8 = [cloudRecords getAggregateOptInStateForApplication:applicationId];
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