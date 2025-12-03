@interface NFFieldDetectManager
- (BOOL)containsFieldDetectSession:(id)session;
- (BOOL)isActive;
- (NFFieldDetectManager)init;
- (NSArray)fieldDetectSessionClientNames;
- (NSArray)persistentObserverNames;
- (id)getStateDumpInfo;
- (unint64_t)totalFieldDetectSessions;
- (unint64_t)totalPersistentClient;
- (void)addFieldDetectSession:(id)session;
- (void)addPersistentFieldObserver:(id)observer;
- (void)enumerateFieldDetectSessionsUsingBlock:(id)block;
- (void)removeAllPersistentFieldObservers;
- (void)removeFieldDetectSession:(id)session;
- (void)removePersistentFieldObserver:(id)observer;
- (void)resume:(id)resume;
- (void)suspend:(id)suspend;
@end

@implementation NFFieldDetectManager

- (BOOL)isActive
{
  sub_100004370(self);
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  v5 = [fieldDetectSessions count];
  if (!v5)
  {
    persistentFieldDetectClients = [(NFFieldDetectManager *)self persistentFieldDetectClients];
    if (![persistentFieldDetectClients count])
    {
      v7 = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  suspensionRequestor = [(NFFieldDetectManager *)self suspensionRequestor];
  v7 = [suspensionRequestor count] == 0;

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (NFFieldDetectManager)init
{
  v60.receiver = self;
  v60.super_class = NFFieldDetectManager;
  v2 = [(NFFieldDetectManager *)&v60 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    fieldDetectSessions = v2->_fieldDetectSessions;
    v2->_fieldDetectSessions = v3;

    v5 = objc_opt_new();
    persistentFieldDetectClients = v2->_persistentFieldDetectClients;
    v2->_persistentFieldDetectClients = v5;

    v7 = objc_opt_new();
    suspensionRequestor = v2->_suspensionRequestor;
    v2->_suspensionRequestor = v7;

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 removeObjectForKey:@"FieldDetect"];
    v10 = [v9 arrayForKey:@"FieldDetectClients"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = v10;
        v58 = v9;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        obj = v10;
        v11 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v62;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v62 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v61 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v15 lengthOfBytesUsingEncoding:4])
                {
                  persistentFieldDetectClients = [(NFFieldDetectManager *)v2 persistentFieldDetectClients];
                  [persistentFieldDetectClients addObject:v15];
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  Logger = NFLogGetLogger();
                  if (Logger)
                  {
                    v31 = Logger;
                    Class = object_getClass(v2);
                    isMetaClass = class_isMetaClass(Class);
                    ClassName = object_getClassName(v2);
                    Name = sel_getName("_loadPersistentClient");
                    v35 = 45;
                    if (isMetaClass)
                    {
                      v35 = 43;
                    }

                    v31(4, "%c[%{public}s %{public}s]:%i Dropping invalid entry, empty", v35, ClassName, Name, 62);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  persistentFieldDetectClients = NFSharedLogGetLogger();
                  if (os_log_type_enabled(persistentFieldDetectClients, OS_LOG_TYPE_ERROR))
                  {
                    v36 = object_getClass(v2);
                    if (class_isMetaClass(v36))
                    {
                      v37 = 43;
                    }

                    else
                    {
                      v37 = 45;
                    }

                    v38 = object_getClassName(v2);
                    v39 = sel_getName("_loadPersistentClient");
                    *buf = 67109890;
                    v66 = v37;
                    v67 = 2082;
                    v68 = v38;
                    v69 = 2082;
                    v70 = v39;
                    v71 = 1024;
                    v72 = 62;
                    _os_log_impl(&_mh_execute_header, persistentFieldDetectClients, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Dropping invalid entry, empty", buf, 0x22u);
                  }
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v17 = NFLogGetLogger();
                if (v17)
                {
                  v18 = v17;
                  v19 = object_getClass(v2);
                  v20 = class_isMetaClass(v19);
                  v21 = object_getClassName(v2);
                  v22 = sel_getName("_loadPersistentClient");
                  v56 = objc_opt_class();
                  v23 = 45;
                  if (v20)
                  {
                    v23 = 43;
                  }

                  v18(4, "%c[%{public}s %{public}s]:%i Dropping invalid entry (%@)", v23, v21, v22, 59, v56);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                persistentFieldDetectClients = NFSharedLogGetLogger();
                if (os_log_type_enabled(persistentFieldDetectClients, OS_LOG_TYPE_ERROR))
                {
                  v24 = object_getClass(v2);
                  if (class_isMetaClass(v24))
                  {
                    v25 = 43;
                  }

                  else
                  {
                    v25 = 45;
                  }

                  v26 = object_getClassName(v2);
                  v27 = sel_getName("_loadPersistentClient");
                  v28 = objc_opt_class();
                  *buf = 67110146;
                  v66 = v25;
                  v67 = 2082;
                  v68 = v26;
                  v69 = 2082;
                  v70 = v27;
                  v71 = 1024;
                  v72 = 59;
                  v73 = 2112;
                  v74 = v28;
                  v29 = v28;
                  _os_log_impl(&_mh_execute_header, persistentFieldDetectClients, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Dropping invalid entry (%@)", buf, 0x2Cu);
                }
              }
            }

            v12 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
          }

          while (v12);
        }

        persistentFieldDetectClients2 = [(NFFieldDetectManager *)v2 persistentFieldDetectClients];
        [persistentFieldDetectClients2 count];

        v10 = v57;
        v9 = v58;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v42 = v41;
          v43 = object_getClass(v2);
          v44 = class_isMetaClass(v43);
          v45 = object_getClassName(v2);
          v55 = sel_getName("_loadPersistentClient");
          v46 = 45;
          if (v44)
          {
            v46 = 43;
          }

          v42(3, "%c[%{public}s %{public}s]:%i Invalid client list; remove", v46, v45, v55, 52);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = object_getClass(v2);
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          v50 = object_getClassName(v2);
          v51 = sel_getName("_loadPersistentClient");
          *v75 = 67109890;
          v76 = v49;
          v77 = 2082;
          v78 = v50;
          v79 = 2082;
          v80 = v51;
          v81 = 1024;
          v82 = 52;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid client list; remove", v75, 0x22u);
        }

        [v9 removeObjectForKey:@"FieldDetectClients"];
      }
    }

    v52 = v2;
  }

  return v2;
}

- (unint64_t)totalPersistentClient
{
  persistentFieldDetectClients = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  v3 = [persistentFieldDetectClients count];

  return v3;
}

- (unint64_t)totalFieldDetectSessions
{
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  v3 = [fieldDetectSessions count];

  return v3;
}

- (NSArray)persistentObserverNames
{
  persistentFieldDetectClients = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  allObjects = [persistentFieldDetectClients allObjects];

  return allObjects;
}

- (NSArray)fieldDetectSessionClientNames
{
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  v5 = [fieldDetectSessions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(fieldDetectSessions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            connection = [v9 connection];
            nF_clientName = [connection NF_clientName];

            if (nF_clientName)
            {
              v12 = nF_clientName;
            }

            else
            {
              v12 = &stru_10031EA18;
            }

            [v3 addObject:v12];
          }
        }
      }

      v6 = [fieldDetectSessions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)suspend:(id)suspend
{
  suspendCopy = suspend;
  suspensionRequestor = [(NFFieldDetectManager *)self suspensionRequestor];
  v6 = [suspensionRequestor containsObject:suspendCopy];

  if (v6)
  {
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = suspendCopy;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "SuspensionOwner %{public}@ is currently active", buf, 0xCu);
    }
  }

  suspensionRequestor2 = [(NFFieldDetectManager *)self suspensionRequestor];
  [suspensionRequestor2 addObject:suspendCopy];

  v9 = +[_NFHardwareManager sharedHardwareManager];
  v10 = sub_100007D90(v9);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6918;
  block[3] = &unk_100315F30;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, block);
}

- (void)resume:(id)resume
{
  resumeCopy = resume;
  suspensionRequestor = [(NFFieldDetectManager *)self suspensionRequestor];
  v6 = [suspensionRequestor containsObject:resumeCopy];

  if ((v6 & 1) == 0)
  {
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = resumeCopy;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "SuspensionOwner %{public}@ unavailable", buf, 0xCu);
    }
  }

  suspensionRequestor2 = [(NFFieldDetectManager *)self suspensionRequestor];
  [suspensionRequestor2 removeObject:resumeCopy];

  v9 = +[_NFHardwareManager sharedHardwareManager];
  v10 = sub_100007D90(v9);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6AAC;
  block[3] = &unk_100315F30;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, block);
}

- (void)addFieldDetectSession:(id)session
{
  sessionCopy = session;
  sub_100004370(self);
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  v6 = [fieldDetectSessions count];

  fieldDetectSessions2 = [(NFFieldDetectManager *)self fieldDetectSessions];
  [fieldDetectSessions2 addObject:sessionCopy];

  if (!v6)
  {
    v8 = os_transaction_create();
    [(NFFieldDetectManager *)self setFieldDetectTransaction:v8];
  }
}

- (void)removeFieldDetectSession:(id)session
{
  sessionCopy = session;
  sub_100004370(self);
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  [fieldDetectSessions removeObject:sessionCopy];

  fieldDetectSessions2 = [(NFFieldDetectManager *)self fieldDetectSessions];
  v7 = [fieldDetectSessions2 count];

  if (!v7)
  {

    [(NFFieldDetectManager *)self setFieldDetectTransaction:0];
  }
}

- (BOOL)containsFieldDetectSession:(id)session
{
  sessionCopy = session;
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  v6 = [fieldDetectSessions containsObject:sessionCopy];

  return v6;
}

- (void)enumerateFieldDetectSessionsUsingBlock:(id)block
{
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  fieldDetectSessions = [(NFFieldDetectManager *)self fieldDetectSessions];
  v6 = [fieldDetectSessions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(fieldDetectSessions);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [fieldDetectSessions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addPersistentFieldObserver:(id)observer
{
  nF_clientName = [observer NF_clientName];
  persistentFieldDetectClients = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  [persistentFieldDetectClients addObject:nF_clientName];

  v5 = +[NSUserDefaults standardUserDefaults];
  persistentFieldDetectClients2 = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  allObjects = [persistentFieldDetectClients2 allObjects];
  [v5 setObject:allObjects forKey:@"FieldDetectClients"];
}

- (void)removePersistentFieldObserver:(id)observer
{
  nF_clientName = [observer NF_clientName];
  persistentFieldDetectClients = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  [persistentFieldDetectClients removeObject:nF_clientName];

  persistentFieldDetectClients2 = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  v6 = [persistentFieldDetectClients2 count];

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = v7;
  if (v6)
  {
    persistentFieldDetectClients3 = [(NFFieldDetectManager *)self persistentFieldDetectClients];
    allObjects = [persistentFieldDetectClients3 allObjects];
    [v8 setObject:allObjects forKey:@"FieldDetectClients"];
  }

  else
  {
    [v7 removeObjectForKey:@"FieldDetectClients"];
  }
}

- (void)removeAllPersistentFieldObservers
{
  persistentFieldDetectClients = [(NFFieldDetectManager *)self persistentFieldDetectClients];
  v4 = [persistentFieldDetectClients count];

  if (v4)
  {
    persistentFieldDetectClients2 = [(NFFieldDetectManager *)self persistentFieldDetectClients];
    [persistentFieldDetectClients2 removeAllObjects];

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 removeObjectForKey:@"FieldDetectClients"];
  }
}

- (id)getStateDumpInfo
{
  v10[0] = @"persistentFieldDetectClients";
  persistentObserverNames = [(NFFieldDetectManager *)self persistentObserverNames];
  v11[0] = persistentObserverNames;
  v10[1] = @"numFieldDetectSessions";
  v4 = [NSNumber numberWithUnsignedInteger:[(NFFieldDetectManager *)self totalFieldDetectSessions]];
  v11[1] = v4;
  v10[2] = @"fieldDetectClients";
  fieldDetectSessionClientNames = [(NFFieldDetectManager *)self fieldDetectSessionClientNames];
  v11[2] = fieldDetectSessionClientNames;
  v10[3] = @"suspensionRequestors";
  suspensionRequestor = [(NFFieldDetectManager *)self suspensionRequestor];
  allObjects = [suspensionRequestor allObjects];
  v11[3] = allObjects;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

@end