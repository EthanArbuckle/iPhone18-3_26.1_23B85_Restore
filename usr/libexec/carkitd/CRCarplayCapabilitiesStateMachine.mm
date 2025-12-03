@interface CRCarplayCapabilitiesStateMachine
- (BOOL)_vehicleSatisfiesConfiguration:(id)configuration propertyHits:(int64_t *)hits;
- (CRCarplayCapabilitiesStateMachine)init;
- (id)_configurationValueForSafeKey:(id)key;
- (id)nextMetadataKey;
- (id)worker_queue_carCapabilities;
- (void)_ignoreEvent:(int64_t)event;
- (void)_transitionToState:(int64_t)state forEvent:(int64_t)event;
- (void)assignCarCapabilities:(id)capabilities valuesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)handleEvent:(int64_t)event;
- (void)initializeStateMachine;
- (void)lookupCarcapabilitiesForSession:(id)session plistURL:(id)l completionHandler:(id)handler;
- (void)performDoneCaptureResult;
- (void)performEnterReadyState;
- (void)performLoadingPlistData:(int64_t)data;
- (void)performLookup:(int64_t)lookup;
- (void)performPostResponseAndReleaseData;
- (void)setSession:(id)session;
@end

@implementation CRCarplayCapabilitiesStateMachine

- (CRCarplayCapabilitiesStateMachine)init
{
  v11.receiver = self;
  v11.super_class = CRCarplayCapabilitiesStateMachine;
  v2 = [(CRCarplayCapabilitiesStateMachine *)&v11 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_plistVersion, CRCapabilitiesDefaultVersion);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.carkitd.carcapabilities.statemachine", v4);
    workerQueue = v3->_workerQueue;
    v3->_workerQueue = v5;

    v3->_isReady = 1;
    v7 = objc_opt_new();
    delayedTasks = v3->_delayedTasks;
    v3->_delayedTasks = v7;
  }

  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100085E44();
  }

  return v3;
}

- (void)dealloc
{
  [(CUStateMachine *)self->_underlyingStateMachine invalidate];
  v3.receiver = self;
  v3.super_class = CRCarplayCapabilitiesStateMachine;
  [(CRCarplayCapabilitiesStateMachine *)&v3 dealloc];
}

- (id)worker_queue_carCapabilities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003AA48;
  v11 = sub_10003AA58;
  v12 = 0;
  workerQueue = [(CRCarplayCapabilitiesStateMachine *)self workerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003AA60;
  v6[3] = &unk_1000DDA88;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workerQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)lookupCarcapabilitiesForSession:(id)session plistURL:(id)l completionHandler:(id)handler
{
  sessionCopy = session;
  lCopy = l;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CRCarplayCapabilitiesStateMachine *)selfCopy isReady])
  {
    [(CRCarplayCapabilitiesStateMachine *)selfCopy setIsReady:0];
    objc_sync_exit(selfCopy);

    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CRCarplayCapabilitiesStateMachine lookupCarcapabilitiesForSession:plistURL:completionHandler:]";
      v22 = 2112;
      v23 = lCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Lookup request starting using %@", buf, 0x16u);
    }

    objc_storeStrong(&selfCopy->_plistURL, l);
    [(CRCarplayCapabilitiesStateMachine *)selfCopy setResponseBlock:handlerCopy];
    workerQueue = [(CRCarplayCapabilitiesStateMachine *)selfCopy workerQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003AD1C;
    v18[3] = &unk_1000DD580;
    v18[4] = selfCopy;
    v19 = sessionCopy;
    dispatch_async(workerQueue, v18);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100085EC0();
    }

    v15 = objc_opt_new();
    [v15 setResponseBlock:handlerCopy];
    [v15 setPlistURL:lCopy];
    [v15 setSession:sessionCopy];
    v16 = selfCopy;
    objc_sync_enter(v16);
    delayedTasks = [(CRCarplayCapabilitiesStateMachine *)v16 delayedTasks];
    [delayedTasks addObject:v15];

    objc_sync_exit(v16);
  }
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  if (self->_session != sessionCopy)
  {
    underlyingStateMachine = self->_underlyingStateMachine;
    v7 = [[CUStateEvent alloc] initWithName:@"Reset" userInfo:0];
    [(CUStateMachine *)underlyingStateMachine dispatchEvent:v7];

    objc_storeStrong(&self->_session, session);
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100085F40();
  }

  v9 = self->_underlyingStateMachine;
  v10 = [[CUStateEvent alloc] initWithName:@"Start" userInfo:0];
  [(CUStateMachine *)v9 dispatchEvent:v10];
}

- (void)initializeStateMachine
{
  underlyingStateMachine = self->_underlyingStateMachine;
  if (underlyingStateMachine)
  {
    [(CUStateMachine *)underlyingStateMachine invalidate];
    v4 = self->_underlyingStateMachine;
    self->_underlyingStateMachine = 0;
  }

  v5 = objc_alloc_init(CUStateMachine);
  v6 = self->_underlyingStateMachine;
  self->_underlyingStateMachine = v5;

  v7 = [[CUState alloc] initWithName:@"Root" parent:0];
  [v7 setEventHandler:&stru_1000DE7E8];
  objc_initWeak(&location, self);
  v8 = [[CUState alloc] initWithName:@"Ready" parent:v7];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003B34C;
  v22[3] = &unk_1000DE810;
  objc_copyWeak(&v23, &location);
  v22[4] = self;
  [v8 setEventHandler:v22];
  v9 = [[CUState alloc] initWithName:@"Loading" parent:v7];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003B4A4;
  v20[3] = &unk_1000DE838;
  objc_copyWeak(&v21, &location);
  [v9 setEventHandler:v20];
  v10 = [[CUState alloc] initWithName:@"Searching" parent:v7];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003B640;
  v18[3] = &unk_1000DE810;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  [v10 setEventHandler:v18];
  v11 = [[CUState alloc] initWithName:@"Done" parent:v7];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003B7C0;
  v16[3] = &unk_1000DE810;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  [v11 setEventHandler:v16];
  v26[0] = @"Ready";
  v26[1] = @"Loading";
  v27[0] = v8;
  v27[1] = v9;
  v26[2] = @"Searching";
  v26[3] = @"Done";
  v27[2] = v10;
  v27[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  stateForStateName = self->_stateForStateName;
  self->_stateForStateName = v12;

  v14 = self->_underlyingStateMachine;
  v25[0] = v7;
  v25[1] = v8;
  v25[2] = v9;
  v25[3] = v10;
  v25[4] = v11;
  v15 = [NSArray arrayWithObjects:v25 count:5];
  [(CUStateMachine *)v14 setStates:v15];

  [(CUStateMachine *)self->_underlyingStateMachine setInitialState:v8];
  [(CUStateMachine *)self->_underlyingStateMachine start];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)handleEvent:(int64_t)event
{
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000862CC();
  }

  underlyingStateMachine = self->_underlyingStateMachine;
  v7 = [CUStateEvent alloc];
  if ((event + 1) > 4)
  {
    v8 = @"Start";
  }

  else
  {
    v8 = off_1000DE8F0[event + 1];
  }

  v9 = [v7 initWithName:v8 userInfo:0];
  [(CUStateMachine *)underlyingStateMachine dispatchEvent:v9];
}

- (void)_transitionToState:(int64_t)state forEvent:(int64_t)event
{
  stateForStateName = self->_stateForStateName;
  if ((state + 1) > 4)
  {
    v7 = @"Ready";
  }

  else
  {
    v7 = off_1000DE8C8[state + 1];
  }

  event = [(NSDictionary *)stateForStateName objectForKey:v7, event];
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100086364();
  }

  [(CUStateMachine *)self->_underlyingStateMachine transitionToState:event];
  self->_currentState = state;
}

- (void)_ignoreEvent:(int64_t)event
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000863E0();
  }
}

- (id)nextMetadataKey
{
  p_configurationKeys = &self->_configurationKeys;
  metadaKeyIndex = self->_metadaKeyIndex;
  if (metadaKeyIndex >= [(NSMutableArray *)self->_configurationKeys count])
  {
    v6 = 0;
  }

  else
  {
    configurationKeys = self->_configurationKeys;
    ++self->_metadaKeyIndex;
    v6 = [(NSMutableArray *)configurationKeys objectAtIndex:?];
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100086478(p_configurationKeys, v6);
    }
  }

  return v6;
}

- (void)performEnterReadyState
{
  v3 = objc_opt_new();
  configurationValues = self->_configurationValues;
  self->_configurationValues = v3;

  v5 = objc_opt_new();
  configurationKeys = self->_configurationKeys;
  self->_configurationKeys = v5;

  v7 = objc_opt_new();
  searchHitsByProperty = self->_searchHitsByProperty;
  self->_searchHitsByProperty = v7;

  self->_metadaKeyIndex = 0;
  plistData = self->_plistData;
  self->_plistData = 0;

  v10 = objc_opt_new();
  propertyValueLookupTable = self->_propertyValueLookupTable;
  self->_propertyValueLookupTable = v10;

  _objc_release_x1();
}

- (void)performPostResponseAndReleaseData
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10008651C();
  }

  responseBlock = [(CRCarplayCapabilitiesStateMachine *)self responseBlock];

  if (responseBlock)
  {
    responseBlock2 = [(CRCarplayCapabilitiesStateMachine *)self responseBlock];
    carCapabilities = [(CRCarplayCapabilitiesStateMachine *)self carCapabilities];
    v7 = [carCapabilities copy];
    (responseBlock2)[2](responseBlock2, v7, 0);
  }

  session = self->_session;
  self->_session = 0;

  configurationValues = self->_configurationValues;
  self->_configurationValues = 0;

  configurationKeys = self->_configurationKeys;
  self->_configurationKeys = 0;

  searchHitsByProperty = self->_searchHitsByProperty;
  self->_searchHitsByProperty = 0;

  responseBlock = self->_responseBlock;
  self->_responseBlock = 0;

  plistData = self->_plistData;
  self->_plistData = 0;

  propertyValueLookupTable = self->_propertyValueLookupTable;
  self->_propertyValueLookupTable = 0;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CRCarplayCapabilitiesStateMachine *)selfCopy setIsReady:1];
  delayedTasks = [(CRCarplayCapabilitiesStateMachine *)selfCopy delayedTasks];
  popFirstObject = [delayedTasks popFirstObject];

  objc_sync_exit(selfCopy);
  if (popFirstObject)
  {
    v18 = dispatch_get_global_queue(9, 0);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003BE74;
    v24[3] = &unk_1000DD580;
    v24[4] = selfCopy;
    v25 = popFirstObject;
    dispatch_async(v18, v24);
  }

  else
  {
    plistVersion = [(CRCarplayCapabilitiesStateMachine *)selfCopy plistVersion];
    if (plistVersion)
    {
      v20 = plistVersion;
      plistVersion2 = [(CRCarplayCapabilitiesStateMachine *)selfCopy plistVersion];
      v22 = [plistVersion2 isEqualToString:CRCapabilitiesDefaultVersion];

      if ((v22 & 1) == 0)
      {
        plistVersion3 = [(CRCarplayCapabilitiesStateMachine *)selfCopy plistVersion];
        [CRCarPlayCapabilities setCapabilitiesVersion:plistVersion3];
      }
    }
  }
}

- (void)performLoadingPlistData:(int64_t)data
{
  plistURL = self->_plistURL;
  v48 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:plistURL error:&v48];
  v6 = v48;
  plistData = self->_plistData;
  self->_plistData = v5;

  if (v6)
  {
    [(CRCarplayCapabilitiesStateMachine *)self handleEvent:2];
  }

  else
  {
    v8 = [(NSDictionary *)self->_plistData objectForKeyedSubscript:@"version"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = CRCapabilitiesDefaultVersion;
    }

    [(CRCarplayCapabilitiesStateMachine *)self setPlistVersion:v10];

    v11 = [(NSDictionary *)self->_plistData objectForKeyedSubscript:@"properties"];
    configuration = [(CARSession *)self->_session configuration];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          v17 = [(CRCarplayCapabilitiesStateMachine *)self _configurationValueForSafeKey:v16, configuration];
          if (v17)
          {
            [(NSMutableArray *)self->_configurationKeys addObject:v16];
            [(NSMutableDictionary *)self->_configurationValues setObject:v17 forKeyedSubscript:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v13);
    }

    v18 = CarGeneralLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      configurationValues = self->_configurationValues;
      *buf = 136315394;
      v52 = "[CRCarplayCapabilitiesStateMachine performLoadingPlistData:]";
      v53 = 2112;
      v54 = configurationValues;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Found configuration values for search: %@", buf, 0x16u);
    }

    [(NSDictionary *)self->_plistData objectForKeyedSubscript:@"vehicles"];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v43 = 0u;
    v34 = [v32 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v34)
    {
      v33 = *v41;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v32);
          }

          v21 = *(*(&v40 + 1) + 8 * j);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v22 = obj;
          v23 = [v22 countByEnumeratingWithState:&v36 objects:v49 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v37;
            do
            {
              for (k = 0; k != v24; k = k + 1)
              {
                if (*v37 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [v21 objectForKey:{*(*(&v36 + 1) + 8 * k), configuration}];
                if (v27)
                {
                  v28 = [(NSMutableDictionary *)self->_propertyValueLookupTable objectForKeyedSubscript:v27];
                  if (!v28)
                  {
                    v28 = objc_alloc_init(NSMutableArray);
                    [(NSMutableDictionary *)self->_propertyValueLookupTable setObject:v28 forKeyedSubscript:v27];
                  }

                  [v28 addObject:v21];
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v36 objects:v49 count:16];
            }

            while (v24);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v34);
    }

    if ([(NSMutableDictionary *)self->_configurationValues count])
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    [(CRCarplayCapabilitiesStateMachine *)self handleEvent:v29];

    v6 = 0;
  }
}

- (void)performLookup:(int64_t)lookup
{
  nextMetadataKey = [(CRCarplayCapabilitiesStateMachine *)self nextMetadataKey];
  if (nextMetadataKey)
  {
    v5 = [(NSMutableDictionary *)self->_configurationValues objectForKeyedSubscript:nextMetadataKey];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    selfCopy = self;
    propertyValueLookupTable = self->_propertyValueLookupTable;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003C588;
    v25[3] = &unk_1000DE860;
    v9 = v5;
    v26 = v9;
    v10 = v7;
    v27 = v10;
    [(NSMutableDictionary *)propertyValueLookupTable enumerateKeysAndObjectsUsingBlock:v25];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 valueForKey:nextMetadataKey];
          v18 = sub_10003C5EC(v17, v9);

          if (v18)
          {
            [v6 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v13);
    }

    if ([v6 count])
    {
      [(NSMutableDictionary *)selfCopy->_searchHitsByProperty setObject:v6 forKeyedSubscript:nextMetadataKey];
    }

    [(CRCarplayCapabilitiesStateMachine *)selfCopy handleEvent:0];
  }

  else
  {
    v19 = CarGeneralLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10008661C();
    }

    [(CRCarplayCapabilitiesStateMachine *)self handleEvent:1];
  }
}

- (void)performDoneCaptureResult
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10008669C(self);
  }

  if ([(NSMutableDictionary *)self->_searchHitsByProperty count]&& [(NSMutableArray *)self->_configurationKeys count])
  {
    allKeys = [(NSMutableDictionary *)self->_searchHitsByProperty allKeys];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = sub_10003AA48;
    v19 = sub_10003AA58;
    v20 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003CB18;
    v16[3] = &unk_1000DE888;
    v16[4] = self;
    v16[5] = buf;
    [allKeys enumerateObjectsUsingBlock:v16];
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [CRCarPlayCapabilities alloc];
  plistVersion = [(CRCarplayCapabilitiesStateMachine *)self plistVersion];
  v8 = [v6 initWithVersion:plistVersion];
  [(CRCarplayCapabilitiesStateMachine *)self setCarCapabilities:v8];

  if (v5)
  {
    v9 = [v5 valueForKey:@"features"];
    v10 = CarGeneralLogging();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    *&buf[4] = "[CRCarplayCapabilitiesStateMachine performDoneCaptureResult]";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    v11 = "%s: matching vehicle for session/plist is: %@";
    goto LABEL_13;
  }

  plistData = self->_plistData;
  if (!plistData)
  {
    goto LABEL_16;
  }

  v9 = [(NSDictionary *)plistData valueForKey:@"features"];
  v10 = CarGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CRCarplayCapabilitiesStateMachine performDoneCaptureResult]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    v11 = "%s: no matching vehicle for session/plist, using default values: %@";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
  }

LABEL_14:

  if (v9)
  {
    carCapabilities = [(CRCarplayCapabilitiesStateMachine *)self carCapabilities];
    [(CRCarplayCapabilitiesStateMachine *)self assignCarCapabilities:carCapabilities valuesFromDictionary:v9];
  }

LABEL_16:
  carCapabilities2 = [(CRCarplayCapabilitiesStateMachine *)self carCapabilities];

  if (carCapabilities2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [(CRCarplayCapabilitiesStateMachine *)self handleEvent:v15];
}

- (void)assignCarCapabilities:(id)capabilities valuesFromDictionary:(id)dictionary
{
  capabilitiesCopy = capabilities;
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    goto LABEL_33;
  }

  selfCopy = self;
  v8 = [dictionaryCopy objectForKey:@"nowPlayingAlbumArt"];

  v9 = [v7 objectForKey:@"liveActivities"];

  v10 = [v7 objectForKey:@"lodWidgets"];

  v11 = [v7 objectForKey:@"userInterfaceStyle"];

  v12 = [v7 objectForKey:@"viewAreaInsets"];

  v13 = [v7 objectForKey:@"dashboardRoundedCorners"];

  v14 = [v7 objectForKey:@"userInfo"];

  objc_opt_class();
  v15 = [v7 objectForKey:@"zoomFactor"];
  if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (![v16 length])
  {
    [capabilitiesCopy setZoomFactor:0];
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_10:
    v18 = [v7 valueForKey:@"nowPlayingAlbumArt"];
    [capabilitiesCopy setNowPlayingAlbumArtMode:{objc_msgSend(v18, "integerValue")}];

    if ([capabilitiesCopy nowPlayingAlbumArtMode] == 1)
    {
      [capabilitiesCopy setDisabledFeature:{objc_msgSend(capabilitiesCopy, "disabledFeature") | 1}];
    }

    goto LABEL_12;
  }

  [v16 floatValue];
  v17 = [NSNumber numberWithFloat:?];
  [capabilitiesCopy setZoomFactor:v17];

  if (v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v9)
  {
    v19 = [v7 valueForKey:@"liveActivities"];
    [capabilitiesCopy setLiveActivitiesMode:{objc_msgSend(v19, "integerValue")}];

    if ([capabilitiesCopy liveActivitiesMode] == 1)
    {
      [capabilitiesCopy setDisabledFeature:{objc_msgSend(capabilitiesCopy, "disabledFeature") | 2}];
    }
  }

  if (v10)
  {
    v20 = [v7 valueForKey:@"lodWidgets"];
    [capabilitiesCopy setLodWidgetsMode:{objc_msgSend(v20, "integerValue")}];

    if ([capabilitiesCopy lodWidgetsMode] == 1)
    {
      [capabilitiesCopy setDisabledFeature:{objc_msgSend(capabilitiesCopy, "disabledFeature") | 4}];
    }
  }

  if (v11)
  {
    v21 = [v7 valueForKey:@"userInterfaceStyle"];
    [capabilitiesCopy setUserInterfaceStyle:{objc_msgSend(v21, "integerValue")}];
  }

  if (v12)
  {
    v22 = [v7 valueForKey:@"viewAreaInsets"];
    NSRectFromString(v22);

    v23 = [v7 objectForKeyedSubscript:@"rightHandDriveFlip"];
    if ([v23 BOOLValue])
    {
      configuration = [(CARSession *)selfCopy->_session configuration];
      rightHandDrive = [configuration rightHandDrive];

      if (rightHandDrive)
      {
        CRRectRHDFlip();
      }
    }

    else
    {
    }

    CREdgeInsetsFromRect();
    v26 = [NSValue valueWithEdgeInsets:?];
    [capabilitiesCopy setViewAreaInsets:v26];
  }

  if (v13)
  {
    v27 = [v7 valueForKey:@"dashboardRoundedCorners"];
    NSRectFromString(v27);

    CREdgeInsetsFromRect();
    v28 = [NSValue valueWithEdgeInsets:?];
    [capabilitiesCopy setDashboardRoundedCorners:v28];
  }

  if (v14)
  {
    v29 = +[NSDictionary dictionary];
    v30 = [v7 valueForKey:@"userInfo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v32 = [v7 valueForKey:@"userInfo"];

      v29 = v32;
    }

    [capabilitiesCopy setUserInfo:v29];
  }

LABEL_33:
}

- (BOOL)_vehicleSatisfiesConfiguration:(id)configuration propertyHits:(int64_t *)hits
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  configurationCopy = configuration;
  allKeys = [configurationCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (([v12 isEqualToString:@"features"] & 1) == 0)
        {
          v13 = [(NSMutableDictionary *)self->_configurationValues objectForKeyedSubscript:v12];
          v14 = [configurationCopy objectForKeyedSubscript:v12];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            v7 = sub_10003C5EC(v14, v13);
            ++v9;
          }

          if ((v7 & 1) == 0)
          {
            v7 = 0;
            goto LABEL_19;
          }

          ++v8;
          v7 = 1;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

LABEL_19:

  if (hits)
  {
    *hits = v9;
  }

  return v7 & (v9 == v8);
}

- (id)_configurationValueForSafeKey:(id)key
{
  keyCopy = key;
  if (qword_100107F48 != -1)
  {
    sub_10008672C();
  }

  if ([qword_100107F50 containsObject:keyCopy])
  {
    configuration = [(CARSession *)self->_session configuration];
    v6 = [configuration valueForKeyPath:keyCopy];
  }

  else
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100086740();
    }

    v6 = 0;
  }

  return v6;
}

@end