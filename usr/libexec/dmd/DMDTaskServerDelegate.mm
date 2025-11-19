@interface DMDTaskServerDelegate
+ (id)_specialCasedRequestNamesToOperationNames;
- (Class)operationClassForRequest:(id)a3 error:(id *)a4;
- (DMDTaskServerDelegate)initWithPolicyPersistence:(id)a3 activationManager:(id)a4;
- (NSString)description;
- (id)_nameForOperationGroup:(unint64_t)a3;
- (id)operationForRequest:(id)a3 targetUID:(unsigned int)a4 appleID:(id)a5 transport:(id)a6 error:(id *)a7;
- (id)server:(id)a3 clientSession:(id)a4 operationForRequest:(id)a5 error:(id *)a6;
- (void)_currentLocaleDidChange:(id)a3;
- (void)configurationEngineDidResume:(id)a3;
- (void)configurationEngineWillSuspend:(id)a3;
- (void)prepareToRunOperation:(id)a3 withContext:(id)a4 withDatabase:(id)a5;
- (void)run;
- (void)server:(id)a3 clientSession:(id)a4 didInterruptWithError:(id)a5;
- (void)server:(id)a3 clientSession:(id)a4 didReceiveNotificationWithName:(id)a5 userInfo:(id)a6;
- (void)server:(id)a3 clientSession:(id)a4 enqueueOperation:(id)a5;
- (void)server:(id)a3 clientSessionDidConnect:(id)a4;
- (void)server:(id)a3 clientSessionDidDisconnect:(id)a4;
- (void)server:(id)a3 clientSessionDidInvalidate:(id)a4;
@end

@implementation DMDTaskServerDelegate

- (DMDTaskServerDelegate)initWithPolicyPersistence:(id)a3 activationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = DMDTaskServerDelegate;
  v8 = [(DMDTaskServerDelegate *)&v40 init];
  if (v8)
  {
    v36 = v7;
    v9 = objc_opt_new();
    concurrentOperationQueue = v8->_concurrentOperationQueue;
    v8->_concurrentOperationQueue = v9;

    v11 = [NSString stringWithFormat:@"%@.%p.concurrent", objc_opt_class(), v8];
    [(CATOperationQueue *)v8->_concurrentOperationQueue setName:v11];

    v12 = 1;
    [(CATOperationQueue *)v8->_concurrentOperationQueue setSuspended:1];
    v13 = objc_opt_new();
    v14 = 0;
    do
    {
      v15 = v12;
      v16 = objc_opt_new();
      v17 = v13;
      v18 = objc_opt_class();
      v19 = [(DMDTaskServerDelegate *)v8 _nameForOperationGroup:v14];
      v20 = [NSString stringWithFormat:@"%@.%p.serial.%@", v18, v8, v19];
      [v16 setName:v20];

      v13 = v17;
      [v16 setSuspended:1];
      v21 = [NSNumber numberWithUnsignedInteger:v14];
      [v17 setObject:v16 forKeyedSubscript:v21];

      v12 = 0;
      v14 = 1;
    }

    while ((v15 & 1) != 0);
    v22 = [v17 copy];
    serialOperationQueuesByGroup = v8->_serialOperationQueuesByGroup;
    v8->_serialOperationQueuesByGroup = v22;

    v24 = objc_opt_new();
    deviceStateObserver = v8->_deviceStateObserver;
    v8->_deviceStateObserver = v24;

    v26 = +[DMDConfigurationDatabase newUserDatabase];
    v7 = v36;
    v27 = [[DMDConfigurationEngine alloc] initWithDatabase:v26 policyPersistence:v6 activationManager:v36];
    configurationEngine = v8->_configurationEngine;
    v8->_configurationEngine = v27;

    [(DMDConfigurationEngine *)v8->_configurationEngine setDelegate:v8];
    [(DMDConfigurationEngine *)v8->_configurationEngine setDeviceStateProvider:v8->_deviceStateObserver];
    [(DMDConfigurationEngine *)v8->_configurationEngine setTaskOperationProvider:v8];

    [(DMDDeviceStateObserver *)v8->_deviceStateObserver startObservingChanges];
    objc_initWeak(&location, v8);
    v29 = [DMFOSStateHandler alloc];
    v30 = CATGetCatalystQueue();
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100072D3C;
    v37[3] = &unk_1000CDDE8;
    objc_copyWeak(&v38, &location);
    v31 = [v29 initWithQueue:v30 name:@"DMD" stateHandlerBlock:v37];
    stateHandler = v8->_stateHandler;
    v8->_stateHandler = v31;

    v33 = [[DMCHangDetectionQueue alloc] initWithQoS:9 hangThreshold:@"DMDTaskServerDelegate_task_monitor" owner:180.0];
    monitorQueue = v8->_monitorQueue;
    v8->_monitorQueue = v33;

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)run
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting…", v7, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_currentLocaleDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];

  v4 = [(DMDTaskServerDelegate *)self concurrentOperationQueue];
  [v4 setSuspended:0];

  v5 = [(DMDTaskServerDelegate *)self serialOperationQueuesByGroup];
  [v5 enumerateKeysAndObjectsUsingBlock:&stru_1000CFF20];

  v6 = [(DMDTaskServerDelegate *)self configurationEngine];
  [v6 resume];
}

- (NSString)description
{
  v3 = objc_opt_new();
  v4 = [(DMDTaskServerDelegate *)self serialOperationQueuesByGroup];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100072FCC;
  v12[3] = &unk_1000CFF48;
  v12[4] = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v12];

  v6 = [(DMDTaskServerDelegate *)self deviceStateObserver];
  v7 = [(DMDTaskServerDelegate *)self concurrentOperationQueue];
  v8 = [v7 operations];
  v11 = [(DMDTaskServerDelegate *)self configurationEngine];
  v9 = DMFObjectDescription();

  return v9;
}

- (id)operationForRequest:(id)a3 targetUID:(unsigned int)a4 appleID:(id)a5 transport:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a6;
  v12 = [(DMDTaskServerDelegate *)self operationClassForRequest:v10 error:a7];
  if (v12)
  {
    v13 = v12;
    v14 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v14;
      v31 = v11;
      v15 = v11;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = [(objc_class *)v13 requiredEntitlements];
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v32 + 1) + 8 * i);
            if (([v15 BOOLValueForEntitlement:v21] & 1) == 0)
            {
              v24 = [NSBundle bundleForClass:objc_opt_class()];
              v25 = [v24 localizedStringForKey:@"Process is missing entitlement “%@”" value:&stru_1000D0428 table:@"DMFServerErrors"];

              v26 = [NSString stringWithFormat:v25, v21];
              v27 = v26;
              if (a7)
              {
                v36 = NSLocalizedFailureReasonErrorKey;
                v37 = v26;
                v28 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
                *a7 = DMFErrorWithCodeAndUserInfo();
              }

              v23 = 0;
              v14 = v30;
              v11 = v31;
              goto LABEL_21;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v22 = [v15 valueForEntitlement:DMFEntitlementsApplicationIdentifierKey];
      v14 = v30;
      [v30 setClientBundleIdentifier:v22];

      [v30 setUid:{objc_msgSend(v15, "effectiveUserIdentifier")}];
      v11 = v31;
    }

    if ([(objc_class *)v13 validateRequest:v10 error:a7])
    {
      v23 = [[v13 alloc] initWithRequest:v10];
      [(DMDTaskServerDelegate *)self prepareToRunOperation:v23 withContext:v14 withDatabase:0];
    }

    else
    {
      v23 = 0;
    }

LABEL_21:
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not get operation class for request: %{public}@", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (Class)operationClassForRequest:(id)a3 error:(id *)a4
{
  v7 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000735C0;
  block[3] = &unk_1000CE578;
  block[4] = self;
  block[5] = a2;
  if (qword_1000FF2F8 != -1)
  {
    dispatch_once(&qword_1000FF2F8, block);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [qword_1000FF2F0 firstMatchInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
  v11 = v10;
  if (!v10)
  {
    v21 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = [v10 rangeAtIndex:1];
  v14 = [v9 substringWithRange:{v12, v13}];
  v15 = [objc_opt_class() _specialCasedRequestNamesToOperationNames];
  v16 = [v15 objectForKeyedSubscript:v14];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;

  v20 = [NSString stringWithFormat:@"DMD%@Operation", v19];

  v21 = NSClassFromString(v20);
  if (![(objc_class *)v21 isSubclassOfClass:objc_opt_class()])
  {
    v21 = 0;
  }

  if (a4)
  {
LABEL_12:
    if (!v21)
    {
      *a4 = DMFErrorWithCodeAndUserInfo();
    }
  }

LABEL_14:
  v22 = v21;

  return v21;
}

- (void)prepareToRunOperation:(id)a3 withContext:(id)a4 withDatabase:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v12;
    v11 = [(DMDTaskServerDelegate *)self configurationEngine];
    [v10 setConfigurationEngine:v11];

    [v10 setContext:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setDatabase:v9];
  }
}

- (id)server:(id)a3 clientSession:(id)a4 operationForRequest:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received request: %{public}@, from client: %{public}@", &v24, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_opt_class() isPermittedOnCurrentPlatform])
  {
    v13 = [v11 clientUserInfo];
    v14 = [v11 transport];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [v11 transport];
      v17 = [v13 objectForKeyedSubscript:DMFConnectionSenderPIDKey];
      v18 = [v17 intValue];

      if (v18 && v18 != [v16 processIdentifier])
      {
        if (a6)
        {
          DMFErrorWithCodeAndUserInfo();
          *a6 = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_10;
      }
    }

    v16 = [v13 objectForKeyedSubscript:DMFConnectionTargetUIDKey];
    v19 = [v13 objectForKeyedSubscript:DMFConnectionAppleIDKey];
    v20 = [v16 intValue];
    v21 = [v11 transport];
    v22 = [(DMDTaskServerDelegate *)self operationForRequest:v12 targetUID:v20 appleID:v19 transport:v21 error:a6];

LABEL_10:
    goto LABEL_14;
  }

  if (a6)
  {
    DMFErrorWithCodeAndUserInfo();
    *a6 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_14:

  return v22;
}

- (void)server:(id)a3 clientSessionDidConnect:(id)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Connected %{public}@", &v5, 0xCu);
  }
}

- (void)server:(id)a3 clientSessionDidDisconnect:(id)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disconnected %{public}@", &v5, 0xCu);
  }
}

- (void)server:(id)a3 clientSessionDidInvalidate:(id)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalidated %{public}@", &v5, 0xCu);
  }
}

- (void)server:(id)a3 clientSession:(id)a4 didInterruptWithError:(id)a5
{
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a5 verboseDescription];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Interrupted %{public}@: %{public}@", &v8, 0x16u);
  }

  [v6 invalidate];
}

- (void)server:(id)a3 clientSession:(id)a4 didReceiveNotificationWithName:(id)a5 userInfo:(id)a6
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = a4;
    v11 = 2114;
    v12 = a5;
    v13 = 2114;
    v14 = a6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notification %{public}@: %{public}@ %{public}@", &v9, 0x20u);
  }
}

- (void)server:(id)a3 clientSession:(id)a4 enqueueOperation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Add operation: %{public}@", buf, 0xCu);
  }

  v12 = [(DMDTaskServerDelegate *)self serialOperationQueuesByGroup];
  v13 = [v12 objectForKeyedSubscript:&off_1000D7AD8];

  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___DMDTaskOperationProtocol])
  {
    v14 = v11;
    if ([v14 runConcurrently])
    {
      v15 = [(DMDTaskServerDelegate *)self concurrentOperationQueue];
    }

    else
    {
      v16 = [(DMDTaskServerDelegate *)self serialOperationQueuesByGroup];
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 queueGroup]);
      v15 = [v16 objectForKeyedSubscript:v17];

      v13 = v16;
    }

    v13 = v15;
  }

  if (!v13)
  {
    sub_100087B2C(a2, self, v11);
  }

  v18 = [(DMDTaskServerDelegate *)self monitorQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100073FB4;
  v20[3] = &unk_1000CE5A0;
  v21 = v11;
  v19 = v11;
  [v18 queueBlock:v20];

  [v13 addOperation:v19];
}

- (void)configurationEngineDidResume:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Declaration engine did resume", v3, 2u);
  }
}

- (void)configurationEngineWillSuspend:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Declaration engine did suspend", v3, 2u);
  }
}

+ (id)_specialCasedRequestNamesToOperationNames
{
  if (qword_1000FF308 != -1)
  {
    sub_100087BA0();
  }

  v3 = qword_1000FF300;

  return v3;
}

- (void)_currentLocaleDidChange:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notified of locale change. Exiting when clean.", v3, 2u);
  }

  xpc_transaction_exit_clean();
}

- (id)_nameForOperationGroup:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"declaration";
  }

  else
  {
    return @"unspecified";
  }
}

@end