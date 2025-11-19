@interface NIServerBluetoothSampleInternalObserver
+ (BOOL)_advertisementCacheEnabled;
+ (id)sharedObserver;
+ (unint64_t)_cachePreloadValue;
- (id)_activateCBDiscovery;
- (id)_initPrivate;
- (id)_printableState;
- (id)printableState;
- (void)_configureCBDiscovery;
- (void)_didDiscoverDevice:(id)a3;
- (void)_didDiscoverSample:(id)a3;
- (void)_registerForInternalBluetoothSamples:(id)a3 reportCache:(BOOL)a4;
- (void)_startBTScanningWithMaxRateForPrototypeHomeSession:(id)a3;
- (void)_startHighPriorityScanningForToken:(id)a3 forConsumer:(id)a4;
- (void)_startLeechingForConsumer:(id)a3;
- (void)_stopBTScanningWithMaxRateForPrototypeHomeSession;
- (void)_stopHighPriorityScanning;
- (void)_stopLeechingForConsumer:(id)a3;
- (void)configureBTMaxRateScanningForPrototypeHomeSession;
- (void)handleCBDiscoveryInterrupted;
- (void)handleCBDiscoveryStateChanged;
- (void)handleCBDiscoverySystemOverride;
- (void)registerForInternalBluetoothSamples:(id)a3;
- (void)registerForInternalBluetoothSamples:(id)a3 reportCache:(BOOL)a4;
- (void)startBTScanningWithMaxRateForPrototypeHomeSession:(id)a3;
- (void)startHighPriorityScanningForToken:(id)a3 forConsumer:(id)a4;
- (void)startLeechingForConsumer:(id)a3;
- (void)stopBTScanningWithMaxRateForPrototypeHomeSession;
- (void)stopHighPriorityScanning;
- (void)stopLeechingForConsumer:(id)a3;
- (void)unregisterForInternalBluetoothSamples:(id)a3;
@end

@implementation NIServerBluetoothSampleInternalObserver

- (id)_initPrivate
{
  v43.receiver = self;
  v43.super_class = NIServerBluetoothSampleInternalObserver;
  v2 = [(NIServerBluetoothSampleInternalObserver *)&v43 init];
  val = v2;
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nearbyd.devicepresence.observer", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    consumers = v2->_consumers;
    v2->_consumers = v5;

    v7 = +[NSHashTable weakObjectsHashTable];
    activeConsumers = v2->_activeConsumers;
    v2->_activeConsumers = v7;

    v9 = +[NSHashTable weakObjectsHashTable];
    currentHighPriorityConsumer = v2->_currentHighPriorityConsumer;
    v2->_currentHighPriorityConsumer = v9;

    atomic_store(0, &v2->_activated);
    atomic_store(0, &v2->_homeSessionAggressiveScanningActivated);
    if ([objc_opt_class() _advertisementCacheEnabled])
    {
      v11 = objc_alloc_init(NIBluetoothAdvertisementCache);
      advertisementCache = v2->_advertisementCache;
      v2->_advertisementCache = v11;

      v13 = mach_continuous_time();
      v14 = sub_100005348(v13);
      v15 = [objc_opt_class() _cachePreloadValue];
      if (v15 >= 1)
      {
        LODWORD(v16) = v15;
        v17 = v15 + 43;
        v18 = v15 + 6;
        v19 = 8 * v15 - 1;
        do
        {
          v35 = v16;
          v36 = v19;
          v16 = (v16 - 1);
          v20 = -8;
          v37 = v18;
          v38 = v17;
          do
          {
            v21 = [NIBluetoothSample alloc];
            v22 = [NSString stringWithFormat:@"%08i", v16];
            v23 = [(NIBluetoothSample *)v21 initWithRSSI:v22 identifier:@"a" model:v17 - 3 * (v18 / 3) channel:(v18 % 0x46 - 80) machContinuousTimeSeconds:v14 - vcvtd_n_f64_u32(v19, 3uLL)];

            [(NIBluetoothAdvertisementCache *)v2->_advertisementCache addSample:v23];
            --v17;
            --v18;
            --v19;
          }

          while (!__CFADD__(v20++, 1));
          v17 = v38 - 1;
          v18 = v37 - 1;
          v19 = v36 - 8;
        }

        while (v35 >= 2);
      }

      v25 = qword_1009F9820;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(NIBluetoothAdvertisementCache *)val->_advertisementCache allSamples];
        v27 = [v26 count];
        v28 = mach_continuous_time();
        v29 = sub_100005348(v28);
        *buf = 134218240;
        v45 = v27;
        v46 = 2048;
        v47 = v29 - v14;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#btsampledistributor AdvertisementCache preloaded with %lu samples in %f seconds", buf, 0x16u);
      }
    }

    [(NIServerBluetoothSampleInternalObserver *)val _configureCBDiscovery];
    objc_initWeak(buf, val);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001B456C;
    v41[3] = &unk_10099BA88;
    objc_copyWeak(&v42, buf);
    v30 = objc_retainBlock(v41);
    v31 = +[_TtC19ProximityDaemonCore22AONSenseSampleProvider shared];
    [v31 registerWithQueue:val->_queue callback:v30];

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 BOOLForKey:@"EnableStateDump"], v32, v33))
    {
      objc_copyWeak(&v40, buf);
      os_state_add_handler();
      objc_destroyWeak(&v40);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  return val;
}

+ (BOOL)_advertisementCacheEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"AdvertisementCacheEnabled"];
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#btsampledistributor AdvertisementCache Enabled default override: %@", &v8, 0xCu);
    }

    v6 = [v3 BOOLValue];
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#btsampledistributor AdvertisementCache Enabled: YES", &v8, 2u);
    }

    v6 = 1;
  }

  return v6;
}

+ (unint64_t)_cachePreloadValue
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"AdvertisementCachePreloadValue"];
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#btsampledistributor AdvertisementCache PreloadValue default override: %@", &v8, 0xCu);
    }

    v6 = [v3 unsignedLongLongValue];
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#btsampledistributor AdvertisementCache PreloadValue: 0", &v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)sharedObserver
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B49AC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  if (qword_1009F02D8 != -1)
  {
    dispatch_once(&qword_1009F02D8, block);
  }

  v2 = qword_1009F02D0;

  return v2;
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001B4AD8;
  v10 = sub_1001B4AE8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B4AF0;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_printableState
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  v5 = [(NIBluetoothAdvertisementCache *)self->_advertisementCache deviceCount];
  v6 = atomic_load(&self->_activated);
  if (v6)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = atomic_load(&self->_homeSessionAggressiveScanningActivated);
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"Cache deviceCount: %d. Activated: %@, AggressiveScanning: %@. Consumers: %d, Active: %d, HighPrio: %d", v5, v7, v9, [(NSHashTable *)self->_consumers count], [(NSHashTable *)self->_activeConsumers count], [(NSHashTable *)self->_currentHighPriorityConsumer count]];
  [v3 addObject:v10];

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (void)registerForInternalBluetoothSamples:(id)a3
{
  v4 = a3;
  -[NIServerBluetoothSampleInternalObserver registerForInternalBluetoothSamples:reportCache:](self, "registerForInternalBluetoothSamples:reportCache:", v4, [objc_opt_class() _advertisementCacheEnabled]);
}

- (void)registerForInternalBluetoothSamples:(id)a3 reportCache:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4D88;
  block[3] = &unk_10099BAD8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)_registerForInternalBluetoothSamples:(id)a3 reportCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 supportsDevicePresence] & 1) == 0)
  {
    sub_1004A46C4(qword_1009F9820);
  }

  v7 = qword_1009F9820;
  v8 = os_signpost_id_make_with_pointer(qword_1009F9820, v6);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 67109120;
      v20 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "registerForInternalBluetoothSamples", "reportCache %d", buf, 8u);
    }
  }

  [(NSHashTable *)self->_consumers addObject:v6];
  if (v4)
  {
    v10 = [(NIBluetoothAdvertisementCache *)self->_advertisementCache allSamples];
    v11 = [v6 getQueueForInputingData];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001B4FE0;
    v16[3] = &unk_10098A2E8;
    v17 = v10;
    v18 = v6;
    v12 = v10;
    dispatch_async(v11, v16);
  }

  v13 = qword_1009F9820;
  v14 = os_signpost_id_make_with_pointer(qword_1009F9820, v6);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v15, "registerForInternalBluetoothSamples", "", buf, 2u);
    }
  }
}

- (void)unregisterForInternalBluetoothSamples:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B523C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)startLeechingForConsumer:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B52E8;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_startLeechingForConsumer:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_activeConsumers addObject:v4];
  if (![(CBDiscovery *)self->_cbDiscovery discoveryFlags])
  {
    [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0x101202000040];
  }

  v5 = atomic_load(&self->_activated);
  if ((v5 & 1) == 0)
  {
    v6 = [(NIServerBluetoothSampleInternalObserver *)self _activateCBDiscovery];
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A4790();
    }
  }
}

- (void)startBTScanningWithMaxRateForPrototypeHomeSession:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B5450;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_startBTScanningWithMaxRateForPrototypeHomeSession:(id)a3
{
  v4 = a3;
  homeSessionAggressiveScanner = self->_homeSessionAggressiveScanner;
  if (!homeSessionAggressiveScanner)
  {
    [(NIServerBluetoothSampleInternalObserver *)self configureBTMaxRateScanningForPrototypeHomeSession];
    homeSessionAggressiveScanner = self->_homeSessionAggressiveScanner;
  }

  [(CBDiscovery *)homeSessionAggressiveScanner setDiscoveryFlags:0x1200000040];
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setBleScanRate:60];
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setUseCase:131093];
  v6 = atomic_load(&self->_homeSessionAggressiveScanningActivated);
  if ((v6 & 1) == 0)
  {
    if ([(CBDiscovery *)self->_homeSessionAggressiveScanner bluetoothState]== 4)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A4800();
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v7 = sub_100005288();
      v8 = self->_homeSessionAggressiveScanner;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001B55CC;
      v9[3] = &unk_10099BB00;
      v10[1] = *&v7;
      objc_copyWeak(v10, &location);
      [(CBDiscovery *)v8 activateWithCompletion:v9];
      objc_destroyWeak(v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)stopBTScanningWithMaxRateForPrototypeHomeSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B576C;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_stopBTScanningWithMaxRateForPrototypeHomeSession
{
  p_homeSessionAggressiveScanningActivated = &self->_homeSessionAggressiveScanningActivated;
  v3 = atomic_load(&self->_homeSessionAggressiveScanningActivated);
  if (v3)
  {
    [(CBDiscovery *)self->_homeSessionAggressiveScanner setDiscoveryFlags:0];
    [(CBDiscovery *)self->_homeSessionAggressiveScanner setBleScanRate:0];
    [(CBDiscovery *)self->_homeSessionAggressiveScanner setUseCase:0];
    [(CBDiscovery *)self->_homeSessionAggressiveScanner removeAllDiscoveryTypes];
    atomic_store(0, p_homeSessionAggressiveScanningActivated);
  }
}

- (void)stopLeechingForConsumer:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B5868;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_stopLeechingForConsumer:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_activeConsumers removeObject:v4];
  if ([(NSHashTable *)self->_currentHighPriorityConsumer containsObject:v4])
  {
    [(NSHashTable *)self->_currentHighPriorityConsumer removeObject:v4];
    [(NIServerBluetoothSampleInternalObserver *)self _stopHighPriorityScanning];
  }

  if (![(NSHashTable *)self->_activeConsumers count])
  {
    v5 = [(NSHashTable *)self->_currentHighPriorityConsumer count];
    v6 = qword_1009F9820;
    v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#btsampledistributor No active leech consumers but we have a high priority consumer so not changing discovery flags", v8, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#btsampledistributor No active leech consumers and no active high priority consumers so unsetting discovery flags", buf, 2u);
      }

      [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0];
    }
  }
}

- (void)startHighPriorityScanningForToken:(id)a3 forConsumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5A54;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_startHighPriorityScanningForToken:(id)a3 forConsumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CBOOBKeyInfo);
  v9 = [v6 objectInRawTokenOPACKDictForKey:&off_1009C3DD0];
  [v8 setIrkData:v9];

  v10 = [v6 objectInRawTokenOPACKDictForKey:&off_1009C3DE8];
  if (v10)
  {
    [v8 setBtAddressData:v10];
    v11 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", 3 * [v10 length]);
    v12 = [v10 bytes];
    for (i = 0; i < [v10 length]; ++i)
    {
      [v11 appendFormat:@"%02x:", v12[i]];
    }

    if (![v11 length])
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1004A48F4(buf, [v11 length], v19);
      }

      goto LABEL_25;
    }

    v14 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];
    v15 = [v14 mutableCopy];

    v16 = qword_1009F9820;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = [v15 UTF8String];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#btsampledistributor #nibtfinding starting token finding for btaddress: %s", buf, 0xCu);
    }

    v17 = [v10 length];
    if (v17 == 6)
    {
      v11 = v15;
    }

    else
    {
      if (v17 != 7)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v26 = v15;
          sub_1004A48AC([v15 UTF8String], buf, v19);
        }

        v11 = v15;
        goto LABEL_25;
      }

      v18 = [v15 substringFromIndex:3];
      v11 = [v18 mutableCopy];
    }

    v20 = qword_1009F9820;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v11;
      v22 = [v11 UTF8String];
      *buf = 136315138;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#btsampledistributor #nibtfinding setting device filter: %s", buf, 0xCu);
    }

    v28 = v8;
    v23 = [NSArray arrayWithObjects:&v28 count:1];
    [(CBDiscovery *)self->_cbDiscovery setOobKeys:v23];

    v27 = v11;
    v24 = [NSArray arrayWithObjects:&v27 count:1];
    [(CBDiscovery *)self->_cbDiscovery setDeviceFilter:v24];

    [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0x200000000];
    [(CBDiscovery *)self->_cbDiscovery setBleScanRate:60];
    [(CBDiscovery *)self->_cbDiscovery setUseCase:589824];
    [(CBDiscovery *)self->_cbDiscovery addDiscoveryType:14];
    [(NSHashTable *)self->_currentHighPriorityConsumer addObject:v7];
    v25 = atomic_load(&self->_activated);
    if (v25)
    {
      goto LABEL_26;
    }

    v19 = [(NIServerBluetoothSampleInternalObserver *)self _activateCBDiscovery];
    if (v19 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A4790();
    }

LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A493C();
  }

LABEL_27:
}

- (void)stopHighPriorityScanning
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5FCC;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_stopHighPriorityScanning
{
  [(CBDiscovery *)self->_cbDiscovery setOobKeys:0];
  [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0x101202000040];
  [(CBDiscovery *)self->_cbDiscovery setDeviceFilter:0];
  [(CBDiscovery *)self->_cbDiscovery setBleScanRate:0];
  [(CBDiscovery *)self->_cbDiscovery setUseCase:0];
  [(CBDiscovery *)self->_cbDiscovery removeAllDiscoveryTypes];
  currentHighPriorityConsumer = self->_currentHighPriorityConsumer;

  [(NSHashTable *)currentHighPriorityConsumer removeAllObjects];
}

- (id)_activateCBDiscovery
{
  cbDiscovery = self->_cbDiscovery;
  if (cbDiscovery && [(CBDiscovery *)cbDiscovery bluetoothState]!= 4)
  {
    objc_initWeak(&location, self);
    v5 = sub_100005288();
    v6 = self->_cbDiscovery;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B6174;
    v8[3] = &unk_10099BB00;
    v9[1] = *&v5;
    objc_copyWeak(v9, &location);
    [(CBDiscovery *)v6 activateWithCompletion:v8];
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
    v4 = 0;
  }

  else
  {
    v4 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10017 userInfo:0];
  }

  return v4;
}

- (void)_configureCBDiscovery
{
  v3 = objc_alloc_init(CBDiscovery);
  cbDiscovery = self->_cbDiscovery;
  self->_cbDiscovery = v3;

  [(CBDiscovery *)self->_cbDiscovery setDispatchQueue:self->_queue];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000498C;
  v11[3] = &unk_10098AAF0;
  objc_copyWeak(&v12, &location);
  [(CBDiscovery *)self->_cbDiscovery setDeviceFoundHandler:v11];
  [(CBDiscovery *)self->_cbDiscovery setInvalidationHandler:&stru_10099BB48];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B6550;
  v9[3] = &unk_10098AB18;
  objc_copyWeak(&v10, &location);
  [(CBDiscovery *)self->_cbDiscovery setInterruptionHandler:v9];
  [(CBDiscovery *)self->_cbDiscovery setErrorHandler:&stru_10099BB88];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6618;
  v7[3] = &unk_10098AB18;
  objc_copyWeak(&v8, &location);
  [(CBDiscovery *)self->_cbDiscovery setBluetoothStateChangedHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B667C;
  v5[3] = &unk_10098AB18;
  objc_copyWeak(&v6, &location);
  [(CBDiscovery *)self->_cbDiscovery setSystemOverrideHandler:v5];
  [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_didDiscoverSample:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  v6 = os_signpost_id_make_with_pointer(qword_1009F9820, v4);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "didDiscoverSample", "", buf, 2u);
    }
  }

  [v4 rssi];
  if (v8 >= 0.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A4AD0();
    }
  }

  else if ([(NIBluetoothAdvertisementCache *)self->_advertisementCache isSampleInCache:v4])
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#btsampledistributor Dropping sample that is already in the cache %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v4 identifier];
    v11 = v10 == 0;

    if (!v11)
    {
      [(NIBluetoothAdvertisementCache *)self->_advertisementCache addSample:v4];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_consumers;
    v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 getQueueForInputingData];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1001B6A44;
          v21[3] = &unk_10098A2E8;
          v21[4] = v16;
          v22 = v4;
          dispatch_async(v17, v21);
        }

        v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v18 = qword_1009F9820;
    v19 = os_signpost_id_make_with_pointer(qword_1009F9820, v4);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "didDiscoverSample", "", buf, 2u);
      }
    }
  }
}

- (void)configureBTMaxRateScanningForPrototypeHomeSession
{
  v3 = objc_opt_new();
  homeSessionAggressiveScanner = self->_homeSessionAggressiveScanner;
  self->_homeSessionAggressiveScanner = v3;

  [(CBDiscovery *)self->_homeSessionAggressiveScanner setDispatchQueue:self->_queue];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B6CF0;
  v11[3] = &unk_10098AAF0;
  objc_copyWeak(&v12, &location);
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setDeviceFoundHandler:v11];
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setInvalidationHandler:&stru_10099BBA8];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B6DB0;
  v9[3] = &unk_10098AB18;
  objc_copyWeak(&v10, &location);
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setInterruptionHandler:v9];
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setErrorHandler:&stru_10099BBC8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6E78;
  v7[3] = &unk_10098AB18;
  objc_copyWeak(&v8, &location);
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setBluetoothStateChangedHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B6EDC;
  v5[3] = &unk_10098AB18;
  objc_copyWeak(&v6, &location);
  [(CBDiscovery *)self->_homeSessionAggressiveScanner setSystemOverrideHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_didDiscoverDevice:(id)a3
{
  v4 = a3;
  v39 = v4;
  v5 = [v4 model];
  if (!v5)
  {
    v47 = [v4 proximityPairingProductID];
    sub_100004AC0(&v47, __p);
    if (v49 < 0)
    {
      if (!__p[1])
      {
        v5 = 0;
LABEL_44:
        operator delete(__p[0]);
        goto LABEL_2;
      }

      v12 = __p[0];
    }

    else
    {
      if (!v49)
      {
        v5 = 0;
        goto LABEL_2;
      }

      v12 = __p;
    }

    v5 = [NSString stringWithUTF8String:v12];
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_44;
  }

LABEL_2:
  v6 = [v4 rssi];
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = [v4 bleChannel];
  switch(v7)
  {
    case '%':
      v8 = [v4 transmitPowerOne];
      v47 = 37;
      v14 = v5;
      sub_100004A08(__p, [v5 UTF8String]);
      v10 = sub_10000884C(&v47, __p);
      break;
    case '&':
      v8 = [v4 transmitPowerTwo];
      v47 = 38;
      v13 = v5;
      sub_100004A08(__p, [v5 UTF8String]);
      v10 = sub_10000884C(&v47, __p);
      break;
    case '\'':
      v8 = [v4 transmitPowerThree];
      v47 = 39;
      v9 = v5;
      sub_100004A08(__p, [v5 UTF8String]);
      v10 = sub_10000884C(&v47, __p);
      break;
    default:
      goto LABEL_15;
  }

  v15 = v10;
  v16 = v11;
  if ((v49 & 0x80000000) == 0)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (v16)
  {
LABEL_14:
    v6 = v6 - (COERCE_DOUBLE(v15 ^ 0x8000000000000000) + v8 * 0.1);
  }

LABEL_15:
  v17 = [v4 identifier];
  v18 = [v4 idsDeviceID];
  v19 = v18 == 0;

  if (!v19)
  {
    v20 = [v39 idsDeviceID];

    v17 = v20;
  }

  if ([v39 productID] == 8212)
  {
    if (([v39 deviceFlags] & 0x400000000) != 0)
    {
      [v39 serialNumberLeft];
    }

    else
    {
      [v39 serialNumberRight];
    }
    v21 = ;
  }

  else
  {
    v21 = &stru_1009B1428;
  }

  v22 = [NIBluetoothSample alloc];
  v23 = [v39 bleChannel];
  v24 = [v39 bleAdvertisementTimestampMachContinuous];
  v25 = [v39 name];
  v26 = [(NIBluetoothSample *)v22 initWithRSSI:v17 identifier:v5 model:v23 channel:v21 machContinuousTimeSeconds:v25 partIdentifier:0 name:v6 presenceConfigData:v24 / 1000000.0];

  v27 = [v39 name];
  if (v27)
  {
    v28 = [v39 name];
    v29 = [v28 isEqualToString:@"Bluetooth Device"];

    if ((v29 & 1) == 0)
    {
      v30 = [v39 name];
      [(NIBluetoothSample *)v26 setName:v30];
    }
  }

  v31 = [v39 idsDeviceID];
  v32 = v31 == 0;

  if (!v32)
  {
    [(NIBluetoothAdvertisementCache *)self->_advertisementCache addSample:v26];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = self->_consumers;
  v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v34)
  {
    v35 = *v44;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v43 + 1) + 8 * i);
        v38 = [v37 getQueueForInputingData];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001B75A4;
        block[3] = &unk_10099BB28;
        block[4] = v37;
        v41 = v39;
        v42 = v26;
        dispatch_async(v38, block);
      }

      v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v34);
  }
}

- (void)handleCBDiscoveryInterrupted
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_consumers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 getQueueForInputingData];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001B777C;
        block[3] = &unk_10098BD28;
        block[4] = v6;
        dispatch_async(v7, block);
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)handleCBDiscoveryStateChanged
{
  v3 = [(CBDiscovery *)self->_cbDiscovery bluetoothState];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 0xA)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_10099BCE0[v3];
    }

    *buf = 136315138;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#btsampledistributor CBDiscovery Bluetooth state changed: %s", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_consumers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 getQueueForInputingData];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001B7988;
        v12[3] = &unk_10098A450;
        v12[4] = v10;
        v12[5] = v3;
        dispatch_async(v11, v12);
      }

      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)handleCBDiscoverySystemOverride
{
  if (([(CBDiscovery *)self->_cbDiscovery systemOverrideFlags]& 1) != 0)
  {
    v3 = qword_1009F9820;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_24:

      return;
    }

    v4 = [(CBDiscovery *)self->_cbDiscovery bleScanRate];
    if (v4 > 34)
    {
      if (v4 > 49)
      {
        if (v4 == 50)
        {
          v5 = "High";
          goto LABEL_23;
        }

        if (v4 == 60)
        {
          v5 = "Max";
          goto LABEL_23;
        }
      }

      else
      {
        if (v4 == 35)
        {
          v5 = "MediumLow";
          goto LABEL_23;
        }

        if (v4 == 40)
        {
          v5 = "Medium";
          goto LABEL_23;
        }
      }
    }

    else if (v4 > 19)
    {
      if (v4 == 20)
      {
        v5 = "Background";
        goto LABEL_23;
      }

      if (v4 == 30)
      {
        v5 = "Low";
        goto LABEL_23;
      }
    }

    else
    {
      if (!v4)
      {
        v5 = "Default";
        goto LABEL_23;
      }

      if (v4 == 10)
      {
        v5 = "Periodic";
LABEL_23:
        v6 = 136315138;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#btsampledistributor CBDiscovery #nicoex Bluetooth scanning reduced (%s) due to WiFi critical.", &v6, 0xCu);
        goto LABEL_24;
      }
    }

    v5 = "?";
    goto LABEL_23;
  }
}

@end