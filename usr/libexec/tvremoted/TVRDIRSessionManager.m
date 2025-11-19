@interface TVRDIRSessionManager
- (TVRDIRSessionManager)init;
- (id)_candidateForDevice:(id)a3 createIfNeeded:(BOOL)a4;
- (int64_t)_deviceClassificationFromIRClassification:(int64_t)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_donateEventWithEventType:(int64_t)a3 forDevice:(id)a4;
- (void)_fetchServiceTokenWithCompletionHandler:(id)a3;
- (void)_invalidate;
- (void)_restartIRSession;
- (void)_setupSession;
- (void)invalidate;
- (void)pause;
- (void)processNewDevices:(id)a3;
- (void)removeDevice:(id)a3;
- (void)requestCurrentRecommendedDevices;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateContext:(id)a4;
- (void)updateDevice:(id)a3 withConnectionContext:(int64_t)a4;
@end

@implementation TVRDIRSessionManager

- (TVRDIRSessionManager)init
{
  v9.receiver = self;
  v9.super_class = TVRDIRSessionManager;
  v2 = [(TVRDIRSessionManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(TVRDIRSessionManager *)v2 _setupSession];
    v4 = +[NSMutableDictionary dictionary];
    identifierToCandidateMap = v3->_identifierToCandidateMap;
    v3->_identifierToCandidateMap = v4;

    v6 = +[NSMutableDictionary dictionary];
    identifierToDeviceMap = v3->_identifierToDeviceMap;
    v3->_identifierToDeviceMap = v6;
  }

  return v3;
}

- (void)_setupSession
{
  if (!self->_irSession)
  {
    v4 = objc_alloc_init(IRSession);
    irSession = self->_irSession;
    self->_irSession = v4;

    v6 = self->_irSession;

    [(IRSession *)v6 setDelegate:self];
  }
}

- (void)_fetchServiceTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  serviceToken = self->_serviceToken;
  if (serviceToken)
  {
    (*(v4 + 2))(v4, serviceToken, 0);
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 dataForKey:@"irServiceToken"];
    if (v8)
    {
      v19 = 0;
      v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v19];
      v10 = v19;
      v11 = self->_serviceToken;
      self->_serviceToken = v9;

      v12 = _TVRDIRLog();
      v13 = v12;
      if (v10)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [TVRDIRSessionManager _fetchServiceTokenWithCompletionHandler:];
        }

        (v5)[2](v5, 0, v10);
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_serviceToken;
          *buf = 138412290;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found token %@", buf, 0xCu);
        }

        v15 = [(TVRDIRSessionManager *)self serviceToken];
        (v5)[2](v5, v15, 0);
      }
    }

    else
    {
      v10 = [[IRServiceParameters alloc] initWithServicePackage:1];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke;
      v16[3] = &unk_1000206A8;
      v18 = v5;
      v17 = v7;
      [IRSession createServiceWithParameters:v10 reply:v16];
    }
  }
}

void __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_100020680;
  v9 = a3;
  v12 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 32);
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _TVRDIRLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else if (*(a1 + 40))
  {
    v11 = _TVRDIRLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Obtained new token %@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    v20 = 0;
    v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v20];
    v15 = v20;
    if (v15)
    {
      v16 = _TVRDIRLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2_cold_2();
      }

      v17 = *(*(a1 + 56) + 16);
    }

    else
    {
      [*(a1 + 48) setObject:v14 forKey:@"irServiceToken"];
      v18 = _TVRDIRLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stored token in user defaults", buf, 2u);
      }

      v19 = *(a1 + 40);
      v17 = *(*(a1 + 56) + 16);
    }

    v17();
  }
}

- (void)pause
{
  v3 = [(TVRDIRSessionManager *)self irSession];
  if (v3)
  {
    v4 = [(TVRDIRSessionManager *)self hasStarted];

    if (v4)
    {
      v5 = _TVRDIRLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(TVRDIRSessionManager *)self irSession];
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pausing %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = __29__TVRDIRSessionManager_pause__block_invoke;
      v7[3] = &unk_1000206D0;
      objc_copyWeak(&v8, buf);
      [(TVRDIRSessionManager *)self _fetchServiceTokenWithCompletionHandler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }
  }
}

void __29__TVRDIRSessionManager_pause__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = _TVRDIRLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __29__TVRDIRSessionManager_pause__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = [[IRConfiguration alloc] initWithServiceToken:v5];
      [v8 setMode:0];
      v9 = [WeakRetained irSession];
      [v9 runWithConfiguration:v8];

      v10 = _TVRDIRLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updated config mode to paused", v11, 2u);
      }
    }
  }
}

- (void)invalidate
{
  v3 = _TVRDIRLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRDIRSessionManager *)self irSession];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating %{public}@", &v5, 0xCu);
  }

  [(TVRDIRSessionManager *)self _invalidate];
}

- (id)_candidateForDevice:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(TVRDIRSessionManager *)self identifierToCandidateMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9 == 0 && v7 != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v9 == 0 && v7 != 0 && v4)
  {
    v10 = [[IRCandidate alloc] initWithCandidateIdentifier:v7];
    v12 = objc_alloc_init(IRNode);
    v13 = [v6 alternateIdentifiers];
    v14 = [v13 objectForKeyedSubscript:TVRCAirplayIDKey];
    [v12 setAvOutpuDeviceIdentifier:v14];

    v15 = [v6 idsIdentifier];
    [v12 setIdsIdentifier:v15];

    if ([v6 connectionType] == 1)
    {
      v16 = [v6 identifier];
      [v12 setRapportIdentifier:v16];
    }

    v17 = [NSSet setWithObject:v12];
    [v10 updateNodes:v17];

    v18 = [(TVRDIRSessionManager *)self identifierToCandidateMap];
    [v18 setObject:v10 forKeyedSubscript:v7];
  }

  return v10;
}

- (void)processNewDevices:(id)a3
{
  v4 = a3;
  v5 = _TVRDIRLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:?];
  }

  v6 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
  v7 = [v6 allValues];
  v8 = [NSSet setWithArray:v7];

  v9 = _TVRDIRLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:];
  }

  v10 = [v8 mutableCopy];
  [v10 minusSet:v4];
  v11 = _TVRDIRLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(TVRDIRSessionManager *)self removeDevice:*(*(&v40 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v14);
  }

  v33 = v12;

  v35 = v4;
  v17 = [v4 mutableCopy];
  v34 = v8;
  [v17 minusSet:v8];
  v18 = _TVRDIRLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:];
  }

  v19 = +[NSMutableSet set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        if ([v25 paired])
        {
          v26 = _TVRDIRLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Adding new device: %{public}@", buf, 0xCu);
          }

          v27 = [(TVRDIRSessionManager *)self _candidateForDevice:v25 createIfNeeded:1];
          [v19 addObject:v27];
          v28 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
          v29 = [v25 identifier];
          [v28 setValue:v25 forKey:v29];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v22);
  }

  v30 = _TVRDIRLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v19;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Adding new candidates %{public}@", buf, 0xCu);
  }

  v31 = [(TVRDIRSessionManager *)self irSession];
  [v31 updateCandidates:v19];

  v32 = _TVRDIRLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:?];
  }
}

- (void)removeDevice:(id)a3
{
  v4 = a3;
  v5 = _TVRDIRLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing device %{public}@", &v16, 0xCu);
  }

  v6 = [(TVRDIRSessionManager *)self _candidateForDevice:v4 createIfNeeded:0];
  if (v6)
  {
    v7 = _TVRDIRLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing candidate %{public}@", &v16, 0xCu);
    }

    v8 = [(TVRDIRSessionManager *)self irSession];
    [v8 deleteCandidate:v6];
  }

  v9 = [v4 identifier];

  if (v9)
  {
    v10 = [(TVRDIRSessionManager *)self identifierToCandidateMap];
    v11 = [v4 identifier];
    [v10 removeObjectForKey:v11];

    v12 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
    v13 = [v4 identifier];
    [v12 removeObjectForKey:v13];
  }

  else
  {
    v12 = _TVRDIRLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(TVRDIRSessionManager *)self removeDevice:v12];
    }
  }

  v14 = _TVRDIRLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "identifierToDeviceMap %@", &v16, 0xCu);
  }
}

- (void)updateDevice:(id)a3 withConnectionContext:(int64_t)a4
{
  if (a4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (a4 == 3);
  }

  [(TVRDIRSessionManager *)self _donateEventWithEventType:v5 forDevice:a3];
}

- (void)_donateEventWithEventType:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [[IRAppleTVControlEvent alloc] initWithEventType:a3 eventSubType:0];
  v8 = [(TVRDIRSessionManager *)self identifierToCandidateMap];
  v9 = [v6 identifier];

  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = IRAppleTVControlEventTypeToString();
    if ([v11 hasPrefix:@"AppleTVControl"])
    {
      v12 = [v11 substringFromIndex:14];

      v11 = v12;
    }

    v13 = _TVRDIRLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Donating %@ for %@", &v15, 0x16u);
    }

    v14 = [(TVRDIRSessionManager *)self irSession];
    [v14 addEvent:v7 forCandidate:v10];
  }
}

- (void)requestCurrentRecommendedDevices
{
  v3 = _TVRDIRLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRDIRSessionManager *)self irSession];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting current context from IRSession: %@", &v6, 0xCu);
  }

  v5 = [(TVRDIRSessionManager *)self irSession];
  [v5 requestCurrentContext];
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([(TVRDIRSessionManager *)self hasStarted])
  {
    v5 = _TVRDIRLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IRSession is already active. Setting Configuration mode to OnEvents.", buf, 2u);
    }

    [(TVRDIRSessionManager *)self setSuggestedDevices:0];
    v6 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
    [v6 removeAllObjects];

    v7 = [(TVRDIRSessionManager *)self identifierToCandidateMap];
    [v7 removeAllObjects];

    v8 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __48__TVRDIRSessionManager__activateWithCompletion___block_invoke;
    v13[3] = &unk_1000206F8;
    v13[4] = v4;
    v9 = &v14;
    objc_copyWeak(&v14, &location);
    [(TVRDIRSessionManager *)self _fetchServiceTokenWithCompletionHandler:v13];
  }

  else
  {
    v10 = _TVRDIRLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting IRSession", buf, 2u);
    }

    [(TVRDIRSessionManager *)self _setupSession];
    v8 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __48__TVRDIRSessionManager__activateWithCompletion___block_invoke_18;
    v11[3] = &unk_1000206F8;
    v11[4] = v4;
    v9 = &v12;
    objc_copyWeak(&v12, &location);
    [(TVRDIRSessionManager *)self _fetchServiceTokenWithCompletionHandler:v11];
  }

  objc_destroyWeak(v9);

  objc_destroyWeak(&location);
}

void __48__TVRDIRSessionManager__activateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v7 = [[IRConfiguration alloc] initWithServiceToken:v5];
      [v7 setMode:1];
      v8 = [WeakRetained irSession];
      [v8 runWithConfiguration:v7];

      v9 = _TVRDIRLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated config mode to OnEvents", v10, 2u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __48__TVRDIRSessionManager__activateWithCompletion___block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[IRConfiguration alloc] initWithServiceToken:v5];
    [v6 setMode:1];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained irSession];
      [v9 runWithConfiguration:v6];

      [v8 setHasStarted:1];
      v10 = _TVRDIRLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 irSession];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started %@", &v12, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_invalidate
{
  [(IRSession *)self->_irSession invalidate];
  [(IRSession *)self->_irSession setDelegate:0];
  irSession = self->_irSession;
  self->_irSession = 0;

  serviceToken = self->_serviceToken;
  self->_serviceToken = 0;

  query = self->_query;
  self->_query = 0;

  filteredDeviceListHandler = self->_filteredDeviceListHandler;
  self->_filteredDeviceListHandler = 0;

  self->_hasStarted = 0;
  [(NSMutableDictionary *)self->_identifierToCandidateMap removeAllObjects];
  identifierToDeviceMap = self->_identifierToDeviceMap;

  [(NSMutableDictionary *)identifierToDeviceMap removeAllObjects];
}

- (void)_restartIRSession
{
  v3 = objc_retainBlock(self->_filteredDeviceListHandler);
  [(TVRDIRSessionManager *)self _invalidate];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __41__TVRDIRSessionManager__restartIRSession__block_invoke;
  v5[3] = &unk_100020720;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  [(TVRDIRSessionManager *)self _activateWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__TVRDIRSessionManager__restartIRSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRDIRLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__TVRDIRSessionManager__restartIRSession__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setFilteredDeviceListHandler:*(a1 + 32)];
  }
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = _TVRDIRLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [TVRDIRSessionManager session:didFailWithError:];
  }

  [(TVRDIRSessionManager *)self _restartIRSession];
}

- (void)session:(id)a3 didUpdateContext:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke;
  block[3] = &unk_100020518;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:IRContextAppleTVControlKey];
    v4 = _TVRDIRLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke_cold_1(v3);
    }

    v32 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v3;
    obj = [v3 candidateResults];
    v5 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v34;
      v8 = @"OneTapSuggestion";
      v29 = WeakRetained;
      do
      {
        v9 = 0;
        v30 = v6;
        do
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * v9);
          v11 = [v10 candidate];
          v12 = [WeakRetained identifierToDeviceMap];
          v13 = [v11 candidateIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v14 setClassification:{objc_msgSend(WeakRetained, "_deviceClassificationFromIRClassification:", objc_msgSend(v10, "classification"))}];
            [v10 classification];
            v15 = IRCandidateClassificationToString();
            if ([v15 isEqualToString:v8])
            {

              v15 = @"OneTap";
            }

            v16 = _TVRDIRLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v14 name];
              [v14 identifier];
              v18 = v8;
              v20 = v19 = v7;
              *buf = 138412802;
              v38 = v15;
              v39 = 2112;
              v40 = v17;
              v41 = 2114;
              v42 = v20;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Update context: %10@, %22@, %{public}@", buf, 0x20u);

              v7 = v19;
              v8 = v18;

              WeakRetained = v29;
              v6 = v30;
            }

            if ([v10 classification] == 2 || objc_msgSend(v10, "classification") == 3 || objc_msgSend(v10, "classification") == 4)
            {
              [v32 addObject:v14];
            }
          }

          else
          {
            v15 = _TVRDIRLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v11;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No device found for candidate: %@", buf, 0xCu);
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v6);
    }

    [v32 sortUsingComparator:&__block_literal_global_2];
    [WeakRetained setSuggestedDevices:v32];
    v21 = [WeakRetained suggestedDevices];
    v22 = [v21 count];

    if (v22)
    {
      v23 = _TVRDIRLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [WeakRetained suggestedDevices];
        *buf = 138543362;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Suggested devices: %{public}@", buf, 0xCu);
      }
    }

    v25 = [WeakRetained filteredDeviceListHandler];

    if (v25)
    {
      v26 = [WeakRetained filteredDeviceListHandler];
      v27 = [WeakRetained suggestedDevices];
      (v26)[2](v26, v27);
    }
  }
}

int64_t __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke_27(id a1, TVRXDevice *a2, TVRXDevice *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(TVRXDevice *)v4 classification])
  {
    if ([(TVRXDevice *)v5 classification]&& (v6 = [(TVRXDevice *)v4 classification], v6 >= [(TVRXDevice *)v5 classification]))
    {
      v8 = [(TVRXDevice *)v4 classification];
      v7 = v8 > [(TVRXDevice *)v5 classification];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_deviceClassificationFromIRClassification:(int64_t)a3
{
  if (a3 > 4)
  {
    return 5;
  }

  else
  {
    return qword_100015368[a3];
  }
}

- (void)processNewDevices:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifierToDeviceMap];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "Before processing - identifierToDeviceMap %{public}@", v4, v5, v6, v7, v8);
}

- (void)processNewDevices:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 identifierToDeviceMap];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "After processing - identifierToDeviceMap %{public}@", v4, v5, v6, v7, v8);
}

- (void)removeDevice:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 identifierToDeviceMap];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Device identifier shouldn't be nil. deviceMap: %{public}@", v4, 0xCu);
}

void __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke_cold_1(void *a1)
{
  v1 = [a1 candidateResults];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "Found potential candidates %@", v4, v5, v6, v7, v8);
}

@end