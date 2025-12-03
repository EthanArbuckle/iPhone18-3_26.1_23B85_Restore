@interface SRAuthorizationStore
+ (SRAuthorizationStore)allSensorsStore;
+ (id)sharedAuthorizationStoreForSensors:(id)sensors;
+ (void)initialize;
- (BOOL)checkAccessForService:(id)service auditToken:(id *)token;
- (BOOL)sensorHasReaderAuthorization:(id)authorization;
- (BOOL)sensorHasReaderAuthorization:(id)authorization forBundleId:(id)id;
- (SRAuthorizationStore)initWithSensors:(id)sensors withAuthorizationTimes:(BOOL)times;
- (id)readerAuthorizationBundleIdValues;
- (void)addReaderAuthorizationDelegate:(id)delegate;
- (void)addWriterAuthorizationDelegate:(id)delegate;
- (void)dealloc;
- (void)listenForAuthorizationUpdates:(BOOL)updates;
- (void)removeReaderAuthorizationDelegate:(id)delegate;
- (void)removeWriterAuthorizationDelegate:(id)delegate;
- (void)resetAllAuthorizations;
- (void)resetAllAuthorizationsForBundleId:(id)id;
- (void)resetAuthorizationForService:(id)service bundleId:(id)id;
@end

@implementation SRAuthorizationStore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000719E8 = os_log_create("com.apple.SensorKit", "AuthorizationStore");
  }
}

- (SRAuthorizationStore)initWithSensors:(id)sensors withAuthorizationTimes:(BOOL)times
{
  v7 = objc_alloc_init(SRTCCStorePassThrough);
  if (self)
  {
    v34.receiver = self;
    v34.super_class = SRAuthorizationStore;
    v8 = [(SRAuthorizationStore *)&v34 init];
    if (v8)
    {
      v9 = v8;
      v8->_tccStore = v7;
      v9->_sensors = sensors;
      v9->_fetchAuthorizationTimes = times;
      v10 = +[NSHashTable weakObjectsHashTable];
      objc_setProperty_nonatomic(v9, v11, v10, 16);
      v12 = +[NSHashTable weakObjectsHashTable];
      objc_setProperty_nonatomic(v9, v13, v12, 24);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9->_updateQueue = dispatch_queue_create("SRAuthorizationStore.updateQueue", v14);
      v15 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSSet count](v9->_sensors, "count")}];
      v33 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSSet count](v9->_sensors, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v32 = v9;
      sensors = v9->_sensors;
      v17 = [(NSSet *)sensors countByEnumeratingWithState:&v35 objects:block count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(sensors);
            }

            v22 = *(*(&v35 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            v24 = [SRSensorDescription sensorDescriptionForSensor:v22];
            if (v24)
            {
              v25 = v24;
              authorizationService = [v24 authorizationService];
              v27 = [v15 objectForKeyedSubscript:authorizationService];
              if (!v27)
              {
                v28 = objc_alloc_init(NSMutableSet);
                [v15 setObject:v28 forKeyedSubscript:authorizationService];

                v27 = [v15 objectForKeyedSubscript:authorizationService];
              }

              [v27 addObject:{objc_msgSend(v25, "name")}];
              writerAuthorizationService = [v25 writerAuthorizationService];
              if (writerAuthorizationService)
              {
                [v33 setObject:objc_msgSend(v25 forKeyedSubscript:{"name"), writerAuthorizationService}];
              }
            }

            else
            {
              v21 = qword_1000719E8;
              if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v40 = v22;
                _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "No sensor description found for %{public}@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v23);
          }

          v18 = [(NSSet *)sensors countByEnumeratingWithState:&v35 objects:block count:16];
        }

        while (v18);
      }

      self = v32;
      [(SRAuthorizationStore *)v32 setReaderAuthorizationGroups:v15];

      [(SRAuthorizationStore *)v32 setWriterAuthorizationGroups:v33];
      [(SRAuthorizationStore *)v32 listenForAuthorizationUpdates:1];
      updateQueue = [(SRAuthorizationStore *)v32 updateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100016CA4;
      block[3] = &unk_100060E48;
      block[4] = v32;
      dispatch_sync(updateQueue, block);
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

+ (id)sharedAuthorizationStoreForSensors:(id)sensors
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000152BC;
  block[3] = &unk_100060E48;
  block[4] = sensors;
  if (qword_1000719F8 != -1)
  {
    dispatch_once(&qword_1000719F8, block);
  }

  return qword_1000719F0;
}

+ (SRAuthorizationStore)allSensorsStore
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = sub_100019058();
  v5 = sub_1000193F0(v4);
  v6 = [(SRSensorDescriptionEnumerator *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v2 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v9), "name", v12)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(SRSensorDescriptionEnumerator *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [[SRAuthorizationStore alloc] initWithSensors:v2];

  return v10;
}

- (void)dealloc
{
  [(SRAuthorizationStore *)self setReaderAuthorizationValues:0];
  [(SRAuthorizationStore *)self setWriterAuthorizationValues:0];
  [(SRAuthorizationStore *)self setReaderLastModifiedAuthorizationTimes:0];
  [(SRAuthorizationStore *)self setUpdateQueue:0];
  objc_setProperty_nonatomic(self, v3, 0, 16);
  objc_setProperty_nonatomic(self, v4, 0, 24);
  [(SRAuthorizationStore *)self listenForAuthorizationUpdates:0];
  objc_setProperty_nonatomic(self, v5, 0, 32);
  [(SRAuthorizationStore *)self setReaderAuthorizationGroups:0];
  [(SRAuthorizationStore *)self setWriterAuthorizationGroups:0];
  v6.receiver = self;
  v6.super_class = SRAuthorizationStore;
  [(SRAuthorizationStore *)&v6 dealloc];
}

- (void)listenForAuthorizationUpdates:(BOOL)updates
{
  p_notifyToken = &self->_notifyToken;
  notifyToken = self->_notifyToken;
  v7 = qword_1000719E8;
  v8 = os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_INFO);
  if (updates)
  {
    if (notifyToken)
    {
      if (!v8)
      {
        return;
      }

      LOWORD(buf[0]) = 0;
      v9 = "Asked to listen for TCC updates but we're already listening";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, buf, 2u);
      return;
    }

    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Registering for TCC updates", buf, 2u);
    }

    objc_initWeak(buf, self);
    updateQueue = [(SRAuthorizationStore *)self updateQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000159B4;
    handler[3] = &unk_100060E70;
    objc_copyWeak(&v35, buf);
    v11 = notify_register_dispatch("com.apple.tcc.access.changed", p_notifyToken, updateQueue, handler);
    if (v11)
    {
      v12 = v11;
      v13 = qword_1000719E8;
      if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_FAULT))
      {
        *v39 = 67240192;
        v40 = v12;
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to register for TCC notifications.  Got status %{public}d", v39, 8u);
      }

      [(SRAuthorizationStore *)self setReaderAuthorizationValues:+[NSDictionary dictionary]];
      [(SRAuthorizationStore *)self setReaderLastModifiedAuthorizationTimes:+[NSDictionary dictionary]];
      [(SRAuthorizationStore *)self setWriterAuthorizationValues:+[NSDictionary dictionary]];
      readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
      objc_sync_enter(readerAuthorizationDelegates);
      v15 = [(NSHashTable *)self->_readerAuthorizationDelegates copy];
      objc_sync_exit(readerAuthorizationDelegates);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v16)
      {
        v17 = *v31;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v30 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore readerAuthorizationValues](self, "readerAuthorizationValues")}];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v16);
      }

      writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
      objc_sync_enter(writerAuthorizationDelegates);
      v21 = [(NSHashTable *)self->_writerAuthorizationDelegates copy];
      objc_sync_exit(writerAuthorizationDelegates);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v26 objects:v37 count:16];
      if (v22)
      {
        v23 = *v27;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v26 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v25 authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore writerAuthorizationValues](self, "writerAuthorizationValues")}];
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v26 objects:v37 count:16];
        }

        while (v22);
      }
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!notifyToken)
    {
      if (!v8)
      {
        return;
      }

      LOWORD(buf[0]) = 0;
      v9 = "Asked to stop listen for TCC updates but we are already not listening";
      goto LABEL_36;
    }

    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Unregistering for TCC updates", buf, 2u);
      notifyToken = *p_notifyToken;
    }

    notify_cancel(notifyToken);
    *p_notifyToken = 0;
  }
}

- (void)addReaderAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
    objc_sync_enter(readerAuthorizationDelegates);
    v6 = self->_readerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    readerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 addObject:delegate];
  if ([(SRAuthorizationStore *)self readerAuthorizationValues]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore readerAuthorizationValues](self, "readerAuthorizationValues")}];
  }

  objc_sync_exit(readerAuthorizationDelegates);
}

- (void)removeReaderAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
    objc_sync_enter(readerAuthorizationDelegates);
    v6 = self->_readerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    readerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 removeObject:delegate];

  objc_sync_exit(readerAuthorizationDelegates);
}

- (void)addWriterAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
    objc_sync_enter(writerAuthorizationDelegates);
    v6 = self->_writerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    writerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 addObject:delegate];
  if ([(SRAuthorizationStore *)self writerAuthorizationValues]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore writerAuthorizationValues](self, "writerAuthorizationValues")}];
  }

  objc_sync_exit(writerAuthorizationDelegates);
}

- (void)removeWriterAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
    objc_sync_enter(writerAuthorizationDelegates);
    v6 = self->_writerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    writerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 removeObject:delegate];

  objc_sync_exit(writerAuthorizationDelegates);
}

- (BOOL)sensorHasReaderAuthorization:(id)authorization
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  readerAuthorizationBundleIdValues = [(SRAuthorizationStore *)self readerAuthorizationBundleIdValues];
  v6 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(readerAuthorizationBundleIdValues);
        }

        if ([(SRAuthorizationStore *)self sensorHasReaderAuthorization:authorization forBundleId:*(*(&v11 + 1) + 8 * v9)])
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (BOOL)sensorHasReaderAuthorization:(id)authorization forBundleId:(id)id
{
  v4 = [-[NSDictionary objectForKeyedSubscript:](-[SRAuthorizationStore readerAuthorizationValues](self "readerAuthorizationValues")];

  return [v4 BOOLValue];
}

- (void)resetAllAuthorizationsForBundleId:(id)id
{
  idCopy = id;
  selfCopy = self;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(NSDictionary *)[(SRAuthorizationStore *)self readerAuthorizationValues] objectForKeyedSubscript:id];
  v5 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    p_info = &OBJC_METACLASS___RDReader.info;
    v9 = &off_100071000;
    v27 = *v38;
    v28 = selfCopy;
    do
    {
      v10 = 0;
      v29 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [objc_msgSend(p_info + 141 sensorDescriptionForSensor:{v11), "authorizationService"}];
        v13 = v9[317];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v52 = idCopy;
          v53 = 2112;
          v54 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "reset reader authorization for bundle %@ service %@", buf, 0x16u);
        }

        [(SRTCCStore *)selfCopy->_tccStore resetService:v12 forBundleId:idCopy];
        if (selfCopy)
        {
          v14 = v12;
          if (v12)
          {
            readerAuthorizationBundleIdValues = [(SRAuthorizationStore *)selfCopy readerAuthorizationBundleIdValues];
            v16 = [p_info + 141 sensorDescriptionsForAuthorizationService:v14];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v17 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v45 objects:buf count:16];
            if (!v17)
            {
              goto LABEL_5;
            }

            v31 = v14;
            v32 = v10;
            v34 = 0;
            v18 = *v46;
            v19 = v17;
            v35 = *v46;
            do
            {
              v20 = 0;
              v36 = v19;
              do
              {
                if (*v46 != v18)
                {
                  objc_enumerationMutation(readerAuthorizationBundleIdValues);
                }

                v21 = *(*(&v45 + 1) + 8 * v20);
                if (([v21 isEqualToString:idCopy] & 1) == 0)
                {
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  v22 = [v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = idCopy;
                    v25 = *v42;
                    do
                    {
                      for (i = 0; i != v23; i = i + 1)
                      {
                        if (*v42 != v25)
                        {
                          objc_enumerationMutation(v16);
                        }

                        if ([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", objc_msgSend(*(*(&v41 + 1) + 8 * i), "name")), "BOOLValue"}])
                        {
                          v34 = 1;
                          goto LABEL_18;
                        }
                      }

                      v23 = [v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
                    }

                    while (v23);
LABEL_18:
                    idCopy = v24;
                    v18 = v35;
                    v19 = v36;
                  }
                }

                v20 = v20 + 1;
              }

              while (v20 != v19);
              v19 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v45 objects:buf count:16];
            }

            while (v19);
            v7 = v27;
            selfCopy = v28;
            p_info = (&OBJC_METACLASS___RDReader + 32);
            v6 = v29;
            v9 = &off_100071000;
            v14 = v31;
            v10 = v32;
            if ((v34 & 1) == 0)
            {
LABEL_5:
              [(SRTCCStore *)selfCopy->_tccStore setOverride:0 forService:v14];
            }
          }
        }

        objc_autoreleasePoolPop(context);
        v10 = v10 + 1;
      }

      while (v10 != v6);
      v6 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v6);
  }
}

- (void)resetAllAuthorizations
{
  v3 = +[NSMutableSet set];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_100017DC4;
  v17 = &unk_100060E98;
  v18 = v3;
  sub_100017DC4(v15, [(SRAuthorizationStore *)self readerAuthorizationBundleIdValues], &stru_100060ED8);
  writerAuthorizationValues = [(SRAuthorizationStore *)self writerAuthorizationValues];
  v16(v15, writerAuthorizationValues, &stru_100060EF8);
  v5 = qword_1000719E8;
  if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reset authorization for services %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(SRTCCStore *)self->_tccStore resetService:v10];
        [(SRTCCStore *)self->_tccStore setOverride:0 forService:v10];
      }

      v7 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)resetAuthorizationForService:(id)service bundleId:(id)id
{
  v7 = qword_1000719E8;
  if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    serviceCopy = service;
    v10 = 2114;
    idCopy = id;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reset authorization for service %@ and bundle id: %{public}@", &v8, 0x16u);
  }

  [(SRTCCStore *)self->_tccStore resetService:service forBundleId:id];
  sub_1000175E4(self, service, 0, id);
}

- (id)readerAuthorizationBundleIdValues
{
  readerAuthorizationValues = [(SRAuthorizationStore *)self readerAuthorizationValues];
  v3 = [NSMutableDictionary dictionaryWithCapacity:[(NSDictionary *)readerAuthorizationValues count]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSDictionary *)readerAuthorizationValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 == v6)
        {
          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 isEqualToString:@"com.apple.sensorkit.dummy-bundle-id"])
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(readerAuthorizationValues);
          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 isEqualToString:@"com.apple.sensorkit.dummy-bundle-id"])
          {
            continue;
          }
        }

        [(NSMutableDictionary *)v3 setObject:[(NSDictionary *)readerAuthorizationValues objectForKeyedSubscript:v8] forKeyedSubscript:v8];
      }

      v5 = [(NSDictionary *)readerAuthorizationValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (BOOL)checkAccessForService:(id)service auditToken:(id *)token
{
  tccStore = self->_tccStore;
  v5 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v5;
  return [(SRTCCStore *)tccStore checkAccessForService:service auditToken:v7];
}

@end