@interface FitnessDeviceManager
+ (BOOL)shouldRestartCollecting;
+ (id)connectStateStr:(int64_t)a3;
+ (id)instance;
- (BOOL)isHKHeartRateEnabled;
- (BOOL)isHKQuantityRequested:(id)a3;
- (BOOL)isPeripheralConnected:(id)a3;
- (BOOL)shouldCollectFromDevice:(id)a3;
- (BOOL)shouldConnectDevice:(id)a3;
- (BOOL)shouldForwardFitnessService:(id)a3 quantityType:(id)a4;
- (FitnessDeviceManager)init;
- (HKHealthStore)hkHealthStore;
- (id)createHKDataCollectorForHKQuantityType:(id)a3;
- (id)findMatchingDistributedFitnessService:(id)a3;
- (id)getConnectedPeripheralUUIDsCollecting:(BOOL)a3 andIdle:(BOOL)a4;
- (id)getRequestedTags;
- (id)hkQuantityTypesForService:(id)a3;
- (id)quantityTypesForIdentifiers:(id)a3;
- (id)requestedServices;
- (id)servicesForHKQuantityType:(id)a3;
- (id)supportedQuantityTypesForServiceUUID:(id)a3;
- (void)activeDataCollectionObserver:(id)a3 updatedCollectedTypes:(id)a4;
- (void)cancelStaleConnectionRequests;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)collectDataForQuantityTypes:(id)a3 isWorkout:(BOOL)a4;
- (void)connectPeripheral:(id)a3;
- (void)connectTaggedDevices;
- (void)disconnectDevice:(id)a3;
- (void)disconnectDevicesWithoutRunningService;
- (void)handleDevicePairingChangeCallback;
- (void)handlePeripheralStatusChangeCallback;
- (void)heartRateCollectionObserver:(id)a3 didChangeShouldCollectHeartRate:(BOOL)a4;
- (void)loadCollectionState;
- (void)markFitnessTaskEnabled:(BOOL)a3;
- (void)migrateHKPairedHealthDevices;
- (void)notifyHRMSessionStateChanged;
- (void)registerFitnessService:(id)a3;
- (void)registerWithHealthKit:(BOOL)a3;
- (void)removeFitnessServicesForPeripheral:(id)a3;
- (void)setServiceUUID:(id)a3 forQuantityType:(id)a4;
- (void)setUnit:(id)a3 forQuantityType:(id)a4;
- (void)setupAudioRoutingControl;
- (void)setupKnownQuantityTypes;
- (void)startHeartRateScanTimer;
- (void)stopHeartRateScanTimer;
- (void)storeCollectionState;
- (void)updatePairedDevices:(id)a3;
- (void)updateScan;
@end

@implementation FitnessDeviceManager

- (void)updateScan
{
  if ([(CBCentralManager *)self->_centralManager state]== 5)
  {
    v3 = [(FitnessDeviceManager *)self centralManager];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100002308;
    v26[3] = &unk_1000BE240;
    v26[4] = self;
    [v3 retrievePeripheralsWithCustomProperties:&off_1000C4168 completion:v26];

    if (![(FitnessDeviceManager *)self workoutInSession])
    {
      [(FitnessDeviceManager *)self setHeartRateScanDidTimeOut:0];
      v4 = [(FitnessDeviceManager *)self requestedQuantityTypes];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [(FitnessDeviceManager *)self centralManager];
        v7 = [(FitnessDeviceManager *)self requestedServices];
        v8 = [v6 retrieveConnectedPeripheralsWithServices:v7];

        v9 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v8 count];
          v12 = [(FitnessDeviceManager *)self requestedServices];
          *buf = 67109378;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found %d connected peripherals with services: %@", buf, 0x12u);
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = v8;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * i);
              v19 = [v18 customProperty:{@"Fitness", v22}];

              if (v19)
              {
                if ([(FitnessDeviceManager *)self shouldConnectDevice:v18])
                {
                  v20 = +[ConnectionManager instance];
                  v21 = [v18 identifier];
                  [v20 connectOnce:v21];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v15);
        }
      }
    }
  }
}

- (void)disconnectDevicesWithoutRunningService
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [(FitnessDeviceManager *)self getConnectedPeripheralUUIDsCollecting:0 andIdle:1];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v25;
    p_vtable = LoggingManager.vtable;
    v8 = @"FitnessClassic";
    v9 = &qword_1000DDBC8;
    *&v4 = 138412546;
    v22 = v4;
    v23 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [p_vtable + 7 instance];
        v13 = [v12 peripheralForIdentifier:v11];

        if (v13 && ([v13 hasTag:v8] & 1) == 0)
        {
          v14 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            [v13 name];
            v16 = p_vtable;
            v17 = v2;
            v18 = v8;
            v20 = v19 = v9;
            *buf = v22;
            v29 = v11;
            v30 = 2112;
            v31 = v20;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No running service for %@ (%@), disconnecting", buf, 0x16u);

            v9 = v19;
            v8 = v18;
            v2 = v17;
            p_vtable = v16;
            v6 = v23;
          }

          v21 = [p_vtable + 7 instance];
          [v21 cancelPeripheralConnectionForConnectOnceIdentifier:v11];
        }

        v10 = v10 + 1;
      }

      while (v5 != v10);
      v5 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }
}

- (void)cancelStaleConnectionRequests
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up stale connection requests", buf, 2u);
  }

  v4 = [(FitnessDeviceManager *)self centralManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002878;
  v5[3] = &unk_1000BE240;
  v5[4] = self;
  [v4 retrievePeripheralsWithCustomProperties:&off_1000C4180 completion:v5];
}

- (void)storeCollectionState
{
  v3 = +[NSDate now];
  v4 = qword_1000DDBC8;
  v5 = &MGGetBoolAnswer_ptr;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = v3;
    v17[0] = @"Timestamp";
    v17[1] = @"Collecting";
    v6 = v4;
    v7 = [(FitnessDeviceManager *)self getRequestedTags];
    v18[1] = v7;
    v17[2] = @"WorkoutInSession";
    v8 = [NSNumber numberWithBool:[(FitnessDeviceManager *)self workoutInSession]];
    v18[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    *buf = 138412546;
    v20 = @"Fitness";
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Storing setting for key:%@ = %@", buf, 0x16u);

    v5 = &MGGetBoolAnswer_ptr;
  }

  v10 = objc_opt_new();
  v16[0] = v3;
  v11 = [(FitnessDeviceManager *)self getRequestedTags:@"Timestamp"];
  v16[1] = v11;
  v15[2] = @"WorkoutInSession";
  v12 = [v5[502] numberWithBool:{-[FitnessDeviceManager workoutInSession](self, "workoutInSession")}];
  v16[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v10 addEntriesFromDictionary:v13];

  v14 = +[NSUserDefaults standardUserDefaults];
  [v14 setObject:v10 forKey:@"Fitness"];
}

+ (id)instance
{
  if (qword_1000DDB48 != -1)
  {
    sub_100079308();
  }

  v3 = qword_1000DDB40;

  return v3;
}

- (void)connectTaggedDevices
{
  v3 = [(FitnessDeviceManager *)self centralManager];
  v4 = [(FitnessDeviceManager *)self getRequestedTags];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002B18;
  v5[3] = &unk_1000BE240;
  v5[4] = self;
  [v3 retrievePeripheralsWithTags:v4 completion:v5];
}

- (id)getRequestedTags
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

+ (BOOL)shouldRestartCollecting
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"Fitness"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [v4 objectForKey:@"Collecting"];
      v6 = [(__CFString *)v5 count];
      v7 = v6 != 0;
      v8 = qword_1000DDBC8;
      v9 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v9)
        {
          v15 = 138412290;
          v16 = v5;
          v10 = "shouldRestartCollecting:YES %@";
          v11 = v8;
          v12 = 12;
LABEL_10:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
        }
      }

      else if (v9)
      {
        LOWORD(v15) = 0;
        v10 = "shouldRestartCollecting:NO";
        v11 = v8;
        v12 = 2;
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  v13 = qword_1000DDBC8;
  v7 = 0;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = @"Fitness";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "shouldRestartCollecting:NO - setting for key:%@ = %@", &v15, 0x16u);
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (void)loadCollectionState
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"Fitness"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 objectForKey:@"Timestamp"];
    v7 = [v5 objectForKey:@"Collecting"];
    v8 = [v5 objectForKey:@"WorkoutInSession"];

    if (v7)
    {
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring collecting state started at %@: %@", &v11, 0x16u);
      }

      [(FitnessDeviceManager *)self collectDataForQuantityTypeIdentifiers:v7 isWorkout:v8 != 0];
    }
  }

  else
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = @"Fitness";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "loading collection state, not actionable - setting for key:%@ = %@", &v11, 0x16u);
    }
  }
}

- (FitnessDeviceManager)init
{
  v15.receiver = self;
  v15.super_class = FitnessDeviceManager;
  v2 = [(FitnessDeviceManager *)&v15 init];
  registeredServices = v2->_registeredServices;
  v2->_registeredServices = &__NSArray0__struct;

  requestedQuantityTypes = v2->_requestedQuantityTypes;
  v2->_requestedQuantityTypes = &__NSArray0__struct;

  knownQuantityTypes = v2->_knownQuantityTypes;
  v2->_knownQuantityTypes = &__NSArray0__struct;

  v6 = [CBCentralManager alloc];
  v16[0] = CBCentralManagerOptionReceiveSystemEvents;
  v16[1] = CBManagerNeedsRestrictedStateOperation;
  v17[0] = &__kCFBooleanTrue;
  v17[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v8 = [v6 initWithDelegate:v2 queue:&_dispatch_main_q options:v7];
  centralManager = v2->_centralManager;
  v2->_centralManager = v8;

  [(FitnessDeviceManager *)v2 setupAudioRoutingControl];
  v10 = objc_opt_new();
  [(FitnessDeviceManager *)v2 setServiceUUIDForSupportedHKQuantityType:v10];

  [(FitnessDeviceManager *)v2 setServiceUUID:CBUUIDHeartRateServiceString forQuantityType:HKQuantityTypeIdentifierHeartRate];
  v11 = CBUUIDCyclingSpeedAndCadenceServiceString;
  [(FitnessDeviceManager *)v2 setServiceUUID:CBUUIDCyclingSpeedAndCadenceServiceString forQuantityType:HKQuantityTypeIdentifierCyclingCadence];
  [(FitnessDeviceManager *)v2 setServiceUUID:v11 forQuantityType:HKQuantityTypeIdentifierCyclingSpeed];
  [(FitnessDeviceManager *)v2 setServiceUUID:v11 forQuantityType:HKQuantityTypeIdentifierDistanceCycling];
  [(FitnessDeviceManager *)v2 setServiceUUID:CBUUIDCyclingPowerServiceString forQuantityType:HKQuantityTypeIdentifierCyclingPower];
  v12 = objc_opt_new();
  [(FitnessDeviceManager *)v2 setUnitForSupportedHKQuantityType:v12];

  [(FitnessDeviceManager *)v2 setUnit:@"count/min" forQuantityType:HKQuantityTypeIdentifierHeartRate];
  [(FitnessDeviceManager *)v2 setUnit:@"count/min" forQuantityType:HKQuantityTypeIdentifierCyclingCadence];
  [(FitnessDeviceManager *)v2 setUnit:@"mi/hr" forQuantityType:HKQuantityTypeIdentifierCyclingSpeed];
  [(FitnessDeviceManager *)v2 setUnit:@"W" forQuantityType:HKQuantityTypeIdentifierCyclingPower];
  [(FitnessDeviceManager *)v2 setUnit:@"m" forQuantityType:HKQuantityTypeIdentifierDistanceCycling];
  [(FitnessDeviceManager *)v2 setupKnownQuantityTypes];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100051D20, @"com.apple.bluetooth.settings.fitness-device-pairing-state-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100051D28, @"HKHealthPeripheralStatusDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return v2;
}

- (void)registerWithHealthKit:(BOOL)a3
{
  if (_os_feature_enabled_impl())
  {
    v5 = [(FitnessDeviceManager *)self heartRateCollectionObserver];

    if (!v5)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v10 = qword_1000DDB50;
      v30 = qword_1000DDB50;
      if (!qword_1000DDB50)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v33 = sub_1000569C4;
        v34 = &unk_1000BD290;
        v35 = &v27;
        sub_1000569C4(&buf);
        v10 = v28[3];
      }

      v11 = v10;
      _Block_object_dispose(&v27, 8);
      if (v10)
      {
        v12 = objc_alloc_init(v10);
        [(FitnessDeviceManager *)self setHeartRateCollectionObserver:v12];

        v13 = [(FitnessDeviceManager *)self heartRateCollectionObserver];
        [v13 setDelegate:self];

        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [(FitnessDeviceManager *)self hleHeartRateCollectionObserverKnownQuantityTypes];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Registered Fitness callback with HeartRateCoordinator for %@", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007931C();
      }
    }
  }

  if (!_os_feature_enabled_impl() || a3)
  {
    if (self->_dataCollectionObserver)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100079350();
      }

      v8 = [(FitnessDeviceManager *)self requestedQuantityTypes];
      v9 = [v8 count] == 0;

      if (!v9)
      {
        [(FitnessDeviceManager *)self connectTaggedDevices];
      }
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v17 = qword_1000DDB60;
      v30 = qword_1000DDB60;
      if (!qword_1000DDB60)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v33 = sub_100056B38;
        v34 = &unk_1000BD290;
        v35 = &v27;
        sub_100056B88();
        Class = objc_getClass("HKActiveDataCollectionObserver");
        *(v35[1] + 24) = Class;
        qword_1000DDB60 = *(v35[1] + 24);
        v17 = v28[3];
      }

      v19 = v17;
      _Block_object_dispose(&v27, 8);
      if (v17)
      {
        [(FitnessDeviceManager *)self markFitnessTaskEnabled:1];
        v20 = [v17 alloc];
        v21 = [(FitnessDeviceManager *)self hkHealthStore];
        v22 = [v20 initWithHealthStore:v21];
        dataCollectionObserver = self->_dataCollectionObserver;
        self->_dataCollectionObserver = v22;

        [(HKActiveDataCollectionObserver *)self->_dataCollectionObserver setDelegate:self];
        v24 = [(FitnessDeviceManager *)self knownQuantityTypes];
        if (_os_feature_enabled_impl())
        {
          v25 = [(FitnessDeviceManager *)self hkActiveDataCollectionObserverKnownQuantityTypes];

          v24 = v25;
        }

        [(HKActiveDataCollectionObserver *)self->_dataCollectionObserver subscribeForQuantityTypes:v24];
        v26 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "registerWithHealthKit - Registered Fitness callback with HealthKit for %@", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100079390();
      }
    }
  }

  else
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting HRM collection", &buf, 2u);
    }

    v31 = HKQuantityTypeIdentifierHeartRate;
    v7 = [NSArray arrayWithObjects:&v31 count:1];
    [(FitnessDeviceManager *)self collectDataForQuantityTypeIdentifiers:v7 isWorkout:0];
  }
}

- (HKHealthStore)hkHealthStore
{
  if (!self->fHKHealthStore)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = qword_1000DDB70;
    v15 = qword_1000DDB70;
    if (!qword_1000DDB70)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100056CCC;
      v10[3] = &unk_1000BD290;
      v11 = &v12;
      sub_100056B88();
      v13[3] = objc_getClass("HKHealthStore");
      qword_1000DDB70 = *(v11[1] + 24);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    if (v5)
    {
      v7 = objc_alloc_init(v5);
      fHKHealthStore = self->fHKHealthStore;
      self->fHKHealthStore = v7;

      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created HKHealthStore", v10, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000793C4();
    }
  }

  v3 = self->fHKHealthStore;

  return v3;
}

- (id)createHKDataCollectorForHKQuantityType:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = qword_1000DDB78;
  v16 = qword_1000DDB78;
  if (!qword_1000DDB78)
  {
    sub_100056B88();
    v14[3] = objc_getClass("HKDataCollector");
    qword_1000DDB78 = v14[3];
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  if (v5)
  {
    v7 = [v5 alloc];
    v8 = [(FitnessDeviceManager *)self hkHealthStore];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = [v7 initWithHealthStore:v8 bundleIdentifier:v10 quantityType:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isHKQuantityRequested:(id)a3
{
  v4 = a3;
  v5 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)collectDataForQuantityTypes:(id)a3 isWorkout:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 count];
  if (!v4)
  {
    if (v7)
    {
      v13 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "STARTING NON-WORKOUT COLLECTION FOR: %@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    if (![(FitnessDeviceManager *)self workoutInSession])
    {
LABEL_22:
      v18 = [v6 copy];
      [(FitnessDeviceManager *)self setRequestedQuantityTypes:v18];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v19 = [(FitnessDeviceManager *)self registeredServices];
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v29;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v28 + 1) + 8 * i);
            if ([v24 isFitnessClassicDevice])
            {
              if (![(FitnessDeviceManager *)self workoutInSession])
              {
                v25 = [(FitnessDeviceManager *)self requestedQuantityTypes];
                v26 = [v25 count];

                if (v26)
                {
                  continue;
                }
              }
            }

            v27 = [(FitnessDeviceManager *)self requestedQuantityTypes];
            [v24 updateRequestedQuantityTypes:v27];
          }

          v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v21);
      }

      [(FitnessDeviceManager *)self updateScan];
      [(FitnessDeviceManager *)self disconnectDevicesWithoutRunningService];
      [(FitnessDeviceManager *)self cancelStaleConnectionRequests];
      [(FitnessDeviceManager *)self storeCollectionState];
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (v7)
  {
    v8 = [(FitnessDeviceManager *)self requestedQuantityTypes];
    v9 = [v8 count];

    if (v9)
    {
      [(FitnessDeviceManager *)self setWorkoutInSession:1];
      v10 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(FitnessDeviceManager *)self requestedQuantityTypes];
        *buf = 138412546;
        v34 = v12;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CHANGING WORKOUT FROM:%@ TO %@", buf, 0x16u);
      }

      goto LABEL_22;
    }

    if ([v6 count])
    {
      goto LABEL_17;
    }

    if (![(FitnessDeviceManager *)self workoutInSession])
    {
      goto LABEL_36;
    }

LABEL_13:
    [(FitnessDeviceManager *)self setWorkoutInSession:0];
    [(FitnessDeviceManager *)self setHeartRateScanDidTimeOut:0];
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ENDING WORKOUT", buf, 2u);
    }

    v15 = self;
    v16 = 0;
    goto LABEL_21;
  }

  if ([v6 count])
  {
LABEL_17:
    v17 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "STARTING WORKOUT FOR:%@", buf, 0xCu);
    }

    [(FitnessDeviceManager *)self setWorkoutInSession:1];
LABEL_20:
    v15 = self;
    v16 = 1;
LABEL_21:
    [(FitnessDeviceManager *)v15 markFitnessTaskEnabled:v16];
    goto LABEL_22;
  }

  if ([(FitnessDeviceManager *)self workoutInSession])
  {
    goto LABEL_13;
  }

LABEL_36:
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000793F8();
  }

LABEL_34:
}

- (id)findMatchingDistributedFitnessService:(id)a3
{
  v4 = a3;
  if ([v4 isDistributed])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(FitnessDeviceManager *)self registeredServices];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 matchesDistributedService:v4])
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)registerFitnessService:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 service];
    v8 = [v7 UUID];
    v9 = [v4 debugDescription];
    v10 = [v4 peripheral];
    v11 = [v10 name];
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registering service %@ (%@) for:“%@”", &v18, 0x20u);
  }

  if ([v4 isFitnessClassicDevice] && !-[FitnessDeviceManager workoutInSession](self, "workoutInSession") && (-[FitnessDeviceManager requestedQuantityTypes](self, "requestedQuantityTypes"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
  {
    [v4 updateRequestedQuantityTypes:&__NSArray0__struct];
  }

  else
  {
    v14 = [(FitnessDeviceManager *)self requestedQuantityTypes];
    [v4 updateRequestedQuantityTypes:v14];
  }

  v15 = [(FitnessDeviceManager *)self registeredServices];
  v16 = [v15 mutableCopy];

  [v16 addObject:v4];
  v17 = [v16 copy];
  [(FitnessDeviceManager *)self setRegisteredServices:v17];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = [(FitnessDeviceManager *)self centralManager];
  v5 = [v4 state];

  if (v5 == 5)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FitnessDeviceManager's CentralManager state is now POWERED ON", v7, 2u);
    }

    [(FitnessDeviceManager *)self updateScan];
    [(FitnessDeviceManager *)self migrateHKPairedHealthDevices];
  }
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v7 = a4;
  v8 = [(FitnessDeviceManager *)self shouldConnectDevice:v7];
  v9 = qword_1000DDBC8;
  v10 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = v9;
      v12 = [v7 identifier];
      v13 = [v7 name];
      v14 = +[FitnessDeviceManager connectStateStr:](FitnessDeviceManager, "connectStateStr:", [v7 state]);
      v19 = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDiscoverPeripheral %@ “%@” (%@), connecting", &v19, 0x20u);
    }

    v15 = [v7 identifier];
    [(FitnessDeviceManager *)self connectPeripheral:v15];
  }

  else if (v10)
  {
    v16 = v9;
    v17 = [v7 identifier];
    v18 = [v7 name];
    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didDiscoverPeripheral %@ “%@” -> UNTAGGED, NOT CONNECTING", &v19, 0x16u);
  }
}

- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4
{
  v5 = a4;
  if ([v5 state])
  {
    goto LABEL_19;
  }

  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 name];
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "“%@” disconnected", &v16, 0xCu);
  }

  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing fitness services for peripheral %@", &v16, 0xCu);
  }

  [(FitnessDeviceManager *)self removeFitnessServicesForPeripheral:v5];
  v10 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  if (![v10 count])
  {
    v12 = [(FitnessDeviceManager *)self getConnectedPeripheralUUIDsCollecting:1 andIdle:0];
    if ([v12 count])
    {
      v13 = [(FitnessDeviceManager *)self workoutInSession];

      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_16:
    if (![(FitnessDeviceManager *)self workoutInSession])
    {
      [(FitnessDeviceManager *)self setRequestedQuantityTypes:&__NSArray0__struct];
      [(FitnessDeviceManager *)self storeCollectionState];
    }

    [(FitnessDeviceManager *)self markFitnessTaskEnabled:0];
    goto LABEL_19;
  }

  v11 = [(FitnessDeviceManager *)self workoutInSession];

  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v14 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  if ([v14 count])
  {
    v15 = [(FitnessDeviceManager *)self workoutInSession];

    if (v15)
    {
      [(FitnessDeviceManager *)self updateScan];
    }
  }

  else
  {
  }

LABEL_19:
}

- (void)activeDataCollectionObserver:(id)a3 updatedCollectedTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FitnessDeviceManager callback from HK - collect %@", &v14, 0xCu);
  }

  v9 = [v7 mutableCopy];
  v10 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v11 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v12 = [v11 containsObject:v10];

  if (v12)
  {
    [v9 addObject:v10];
  }

  v13 = [v9 copy];
  [(FitnessDeviceManager *)self collectDataForQuantityTypes:v13 isWorkout:1];
}

- (void)heartRateCollectionObserver:(id)a3 didChangeShouldCollectHeartRate:(BOOL)a4
{
  v4 = a4;
  v6 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v7 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v8 = [v7 indexOfObject:v6];

  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"No";
    if (v4)
    {
      v11 = @"Yes";
    }

    else
    {
      v11 = @"No";
    }

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = @"Yes";
    }

    v17 = 138412546;
    v18 = v11;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FitnessDeviceManager should collect heart rate: %@, already collecting: %@", &v17, 0x16u);
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v4)
  {
    v15 = [(FitnessDeviceManager *)self requestedQuantityTypes];
    v16 = [v15 arrayByAddingObject:v6];
LABEL_16:
    v14 = v16;

    goto LABEL_17;
  }

  v13 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v14 = v13;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && !v4)
  {
    v15 = [v13 mutableCopy];

    [v15 removeObjectAtIndex:v8];
    v16 = [v15 copy];
    goto LABEL_16;
  }

LABEL_17:
  [(FitnessDeviceManager *)self collectDataForQuantityTypes:v14 isWorkout:1];
}

- (void)setupKnownQuantityTypes
{
  v11[0] = HKQuantityTypeIdentifierCyclingCadence;
  v11[1] = HKQuantityTypeIdentifierCyclingSpeed;
  v11[2] = HKQuantityTypeIdentifierCyclingPower;
  v11[3] = HKQuantityTypeIdentifierDistanceCycling;
  v3 = [NSArray arrayWithObjects:v11 count:4];
  v4 = [(FitnessDeviceManager *)self quantityTypesForIdentifiers:v3];
  [(FitnessDeviceManager *)self setHkActiveDataCollectionObserverKnownQuantityTypes:v4];

  v10 = HKQuantityTypeIdentifierHeartRate;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = [(FitnessDeviceManager *)self quantityTypesForIdentifiers:v5];
  [(FitnessDeviceManager *)self setHleHeartRateCollectionObserverKnownQuantityTypes:v6];

  v7 = [(FitnessDeviceManager *)self hkActiveDataCollectionObserverKnownQuantityTypes];
  v8 = [(FitnessDeviceManager *)self hleHeartRateCollectionObserverKnownQuantityTypes];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];
  [(FitnessDeviceManager *)self setKnownQuantityTypes:v9];
}

+ (id)connectStateStr:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000BE388 + a3);
  }
}

- (void)removeFitnessServicesForPeripheral:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 state])
  {
    v24 = self;
    v25 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [(FitnessDeviceManager *)self registeredServices];
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [v11 peripheral];
          v13 = [v12 identifier];
          v14 = [v5 identifier];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            [v25 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v16 = [(FitnessDeviceManager *)v24 registeredServices];
    v17 = [v16 mutableCopy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v25;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v17 removeObject:*(*(&v26 + 1) + 8 * j)];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    v23 = [v17 copy];
    [(FitnessDeviceManager *)v24 setRegisteredServices:v23];
  }
}

- (void)markFitnessTaskEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [(FitnessDeviceManager *)self persistanceAssertion];

    v5 = qword_1000DDBC8;
    v6 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fitness task already marked started", buf, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mark fitness task started", v11, 2u);
      }

      v8 = os_transaction_create();
      [(FitnessDeviceManager *)self setPersistanceAssertion:v8];
    }
  }

  else
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Mark fitness task completed", v9, 2u);
    }

    [(FitnessDeviceManager *)self setPersistanceAssertion:0];
  }
}

- (void)updatePairedDevices:(id)a3
{
  v4 = a3;
  v5 = [(FitnessDeviceManager *)self pairedFitnessDeviceUUIDS];
  if ([v5 count])
  {
    v6 = [(FitnessDeviceManager *)self pairedFitnessDeviceUUIDS];
    v7 = [v6 count];
    v8 = [v4 count];

    if (v7 > v8)
    {
      v9 = [(FitnessDeviceManager *)self pairedFitnessDeviceUUIDS];
      v10 = [NSMutableSet setWithArray:v9];

      v11 = [NSSet setWithArray:v4];
      [v10 minusSet:v11];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            v18 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              v20 = [v17 UUIDString];
              *buf = 138412290;
              v26 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disconnecting unpaired device: %@", buf, 0xCu);
            }

            [(FitnessDeviceManager *)self disconnectDevice:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v14);
      }
    }
  }

  else
  {
  }

  [(FitnessDeviceManager *)self setPairedFitnessDeviceUUIDS:v4];
}

- (void)disconnectDevice:(id)a3
{
  v4 = a3;
  v5 = +[ConnectionManager instance];
  v6 = [v5 peripheralForIdentifier:v4];

  if (v6)
  {
    v32 = v4;
    v7 = [(FitnessDeviceManager *)self registeredServices];
    v8 = [v7 copy];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
    v11 = &qword_1000DDBC8;
    if (v10)
    {
      v12 = v10;
      v13 = *v36;
      do
      {
        v14 = 0;
        v33 = v12;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v16 = [v15 peripheral];
          v17 = [v16 identifier];
          v18 = [v6 identifier];

          if (v17 == v18)
          {
            v19 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
              v34 = [v15 service];
              v21 = [v34 UUID];
              v22 = [v15 debugDescription];
              [v6 name];
              v23 = v13;
              v24 = v11;
              v25 = v6;
              v27 = v26 = v9;
              *buf = 138412802;
              v40 = v21;
              v41 = 2112;
              v42 = v22;
              v43 = 2112;
              v44 = v27;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unregistering service %@ (%@) for: “%@”", buf, 0x20u);

              v9 = v26;
              v6 = v25;
              v11 = v24;
              v13 = v23;

              v12 = v33;
            }

            [v15 updateRequestedQuantityTypes:&__NSArray0__struct];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v12);
    }

    v4 = v32;
    if (([v6 hasTag:@"FitnessClassic"] & 1) == 0)
    {
      v28 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [v6 name];
        *buf = 138412290;
        v40 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Disconnecting device: %@", buf, 0xCu);
      }

      v31 = +[ConnectionManager instance];
      [v31 cancelPeripheralConnectionForConnectOnceIdentifier:v32];
    }
  }
}

- (void)connectPeripheral:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[ConnectionManager instance];
    v5 = [v4 peripheralForIdentifier:v3];

    if (v5 && [v5 state] && objc_msgSend(v5, "state") != 3)
    {
      v12 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v11 = v12;
      v13 = [v5 name];
      v14 = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ALREADY MARKED CONNECTED %@ “%@”", &v14, 0x16u);
    }

    else
    {
      v6 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [v5 name];
        v9 = v8;
        v10 = @"(loading)";
        if (v8)
        {
          v10 = v8;
        }

        v14 = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CONNECTING %@ “%@”", &v14, 0x16u);
      }

      v11 = +[ConnectionManager instance];
      [v11 connectOnce:v3 connectionTimeoutEnabled:0];
    }

LABEL_11:
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000795DC();
  }

LABEL_14:
}

- (BOOL)isPeripheralConnected:(id)a3
{
  v3 = a3;
  v4 = +[ConnectionManager instance];
  v5 = [v4 peripheralForIdentifier:v3];

  if (v5)
  {
    v6 = [v5 state] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldConnectDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 identifier];

  if (!v6 || ([v5 hasTag:@"FitnessClassic"] & 1) != 0 || !-[FitnessDeviceManager shouldCollectFromDevice:](self, "shouldCollectFromDevice:", v5))
  {
    goto LABEL_9;
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_12;
  }

  v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  if (!-[FitnessDeviceManager isHKQuantityRequested:](self, "isHKQuantityRequested:", v7) || ![v5 hasTag:HKQuantityTypeIdentifierHeartRate])
  {

    goto LABEL_12;
  }

  v8 = [(FitnessDeviceManager *)self heartRateScanDidTimeOut];

  if ((v8 & 1) == 0)
  {
LABEL_12:
    v9 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)shouldCollectFromDevice:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = *v21;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v20 + 1) + 8 * i);
      v10 = [v9 identifier];
      v11 = [v4 hasTag:v10];

      if (v11)
      {
        if (_os_feature_enabled_impl())
        {
          v12 = [v9 identifier];
          if ([v12 isEqualToString:HKQuantityTypeIdentifierHeartRate])
          {
            v13 = [v4 customProperty:@"UpdateHealth"];
            v14 = [v13 isEqualToString:@"1"];

            if ((v14 & 1) == 0)
            {
              v15 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
              {
                v16 = v15;
                v17 = [v4 identifier];
                v18 = [v17 UUIDString];
                *buf = 138412290;
                v25 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping connection to peripheral %@. Peripheral disabled in Health Settings", buf, 0xCu);
              }

              LOBYTE(v6) = 0;
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        LOBYTE(v6) = 1;
        goto LABEL_18;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_18:

  return v6;
}

- (BOOL)shouldForwardFitnessService:(id)a3 quantityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FitnessDeviceManager *)self servicesForHKQuantityType:v7];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v6];
  if ([v9 count])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v34 = v9;
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [v7 identifier];
          v17 = [HKQuantityTypeIdentifierCyclingPower isEqualToString:v16];

          if (v17)
          {
            if ([v15 wasPairedAfter:v6] && objc_msgSend(v15, "latestSampleTimestampWithinSeconds:", 5.0) && (objc_msgSend(v6, "matchesDistributedService:", v15) & 1) == 0)
            {
              v20 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_34;
              }

              goto LABEL_36;
            }
          }

          else
          {
            objc_opt_class();
            v18 = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              if (v18)
              {
                if ([v15 wasPairedAfter:v6] && objc_msgSend(v15, "latestSampleTimestampWithinSeconds:", 5.0))
                {
                  v30 = qword_1000DDBC8;
                  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
                  {
                    v23 = v30;
                    v24 = [v7 identifier];
                    v25 = [v6 peripheral];
                    v26 = [v25 name];
                    v27 = [v15 peripheral];
                    v28 = [v27 name];
                    *buf = 138412802;
                    v41 = v24;
                    v42 = 2112;
                    v43 = v26;
                    v44 = 2112;
                    v45 = v28;
                    v29 = "Ignoring %@ from power meter “%@” because power meter “%@” started earlier";
                    goto LABEL_35;
                  }

                  goto LABEL_36;
                }
              }

              else if ([v15 latestSampleTimestampWithinSeconds:5.0])
              {
                v22 = qword_1000DDBC8;
                if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
                {
                  v23 = v22;
                  v24 = [v7 identifier];
                  v25 = [v6 peripheral];
                  v26 = [v25 name];
                  v27 = [v15 peripheral];
                  v28 = [v27 name];
                  *buf = 138412802;
                  v41 = v24;
                  v42 = 2112;
                  v43 = v26;
                  v44 = 2112;
                  v45 = v28;
                  v29 = "Ignoring %@ from power meter “%@” because “%@” is a dedicated sensor";
                  goto LABEL_35;
                }

                goto LABEL_36;
              }
            }

            else if ((v18 & 1) == 0 && [v15 wasPairedAfter:v6] && objc_msgSend(v15, "latestSampleTimestampWithinSeconds:", 5.0))
            {
              v20 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
              {
LABEL_34:
                v23 = v20;
                v24 = [v7 identifier];
                v25 = [v6 peripheral];
                v26 = [v25 name];
                v27 = [v15 peripheral];
                v28 = [v27 name];
                *buf = 138412802;
                v41 = v24;
                v42 = 2112;
                v43 = v26;
                v44 = 2112;
                v45 = v28;
                v29 = "Ignoring %@ from “%@” because “%@” started earlier";
LABEL_35:
                _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v29, buf, 0x20u);
              }

LABEL_36:
              v19 = 0;
              goto LABEL_37;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_37:
      v9 = v34;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (id)getConnectedPeripheralUUIDsCollecting:(BOOL)a3 andIdle:(BOOL)a4
{
  v22 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(FitnessDeviceManager *)self registeredServices];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = !a4;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 hkQuantityTypesCollecting];
        if ([v14 count])
        {
          v15 = 1;
        }

        else
        {
          v16 = [v13 alwaysCollectQuantityTypes];
          v15 = [v16 count] != 0;
        }

        v17 = a3 && v15;
        v18 = v11 || v15;
        if (v17 || !v18)
        {
          v19 = [v13 peripheral];
          v20 = [v19 identifier];

          if (v20 && ([v22 containsObject:v20] & 1) == 0 || !v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v13, "updateHealthEnabled") & 1) == 0 && (objc_msgSend(v22, "containsObject:", v20) & 1) == 0)
          {
            [v22 addObject:v20];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v22;
}

- (id)supportedQuantityTypesForServiceUUID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_serviceUUIDForSupportedHKQuantityType allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_serviceUUIDForSupportedHKQuantityType objectForKey:v11];
        v13 = [v4 isEqual:v12];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)requestedServices
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(FitnessDeviceManager *)self requestedQuantityTypes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_serviceUUIDForSupportedHKQuantityType objectForKey:*(*(&v11 + 1) + 8 * i)];
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)servicesForHKQuantityType:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(FitnessDeviceManager *)self registeredServices];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 supportsHKQuantityType:v4])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)hkQuantityTypesForService:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v4 service];
  v7 = [v6 UUID];
  v8 = [(FitnessDeviceManager *)self supportedQuantityTypesForServiceUUID:v7];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v4 peripheral];
        v15 = [v13 identifier];
        v16 = [v14 hasTag:v15];

        if (v16)
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)quantityTypesForIdentifiers:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [FitnessService hkQuantityTypeForIdentifier:v10];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v21 = v10;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "FitnessDeviceManager init - Could not get HKQuantityType for %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (void)setServiceUUID:(id)a3 forQuantityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_serviceUUIDForSupportedHKQuantityType)
  {
    v8 = [FitnessService hkQuantityTypeForIdentifier:v7];
    v9 = [CBUUID UUIDWithString:v6];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      [(NSMutableDictionary *)self->_serviceUUIDForSupportedHKQuantityType setObject:v9 forKey:v8];
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_100079610();
      }
    }
  }
}

- (void)setUnit:(id)a3 forQuantityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = qword_1000DDB80;
  v18 = qword_1000DDB80;
  if (!qword_1000DDB80)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100056D6C;
    v20 = &unk_1000BD290;
    v21[0] = &v15;
    sub_100056B88();
    Class = objc_getClass("HKUnit");
    *(*(v21[0] + 8) + 24) = Class;
    qword_1000DDB80 = *(*(v21[0] + 8) + 24);
    v8 = v16[3];
  }

  v10 = v8;
  _Block_object_dispose(&v15, 8);
  if (self->_unitForSupportedHKQuantityType && v8)
  {
    v11 = [FitnessService hkQuantityTypeForIdentifier:v7, v15];
    v12 = [v8 unitFromString:v6];
    v13 = v12;
    if (v11 && v12)
    {
      [(NSMutableDictionary *)self->_unitForSupportedHKQuantityType setObject:v12 forKey:v11];
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000796F0();
      }
    }

    else
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        v20 = v7;
        LOWORD(v21[0]) = 2112;
        *(v21 + 2) = v11;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not register unit %@(%@) for qty %@(%@)", buf, 0x2Au);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100079678();
  }
}

- (void)startHeartRateScanTimer
{
  v3 = [(FitnessDeviceManager *)self heartRateScanTimer];

  if (v3)
  {
    v4 = [(FitnessDeviceManager *)self heartRateScanTimer];
    [v4 invalidate];
  }

  [(FitnessDeviceManager *)self setHeartRateScanDidTimeOut:0];
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000559B4;
  v9 = &unk_1000BE268;
  objc_copyWeak(&v10, &location);
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v6 block:30.0];
  [(FitnessDeviceManager *)self setHeartRateScanTimer:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)stopHeartRateScanTimer
{
  v3 = [(FitnessDeviceManager *)self heartRateScanTimer];

  if (v3)
  {
    v4 = [(FitnessDeviceManager *)self heartRateScanTimer];
    [v4 invalidate];

    [(FitnessDeviceManager *)self setHeartRateScanTimer:0];
  }

  [(FitnessDeviceManager *)self setHeartRateScanDidTimeOut:1];

  [(FitnessDeviceManager *)self cancelStaleConnectionRequests];
}

- (void)setupAudioRoutingControl
{
  v3 = [(FitnessDeviceManager *)self audioRoutingControl];

  if (!v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v4 = qword_1000DDB88;
    v12 = qword_1000DDB88;
    if (!qword_1000DDB88)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100056DBC;
      v8[3] = &unk_1000BD290;
      v8[4] = &v9;
      sub_100056DBC(v8);
      v4 = v10[3];
    }

    v5 = v4;
    _Block_object_dispose(&v9, 8);
    if (v4)
    {
      v6 = objc_alloc_init(v4);
      [(FitnessDeviceManager *)self setAudioRoutingControl:v6];

      v7 = [(FitnessDeviceManager *)self audioRoutingControl];
      [v7 activateWithCompletion:&stru_1000BE288];
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079758();
    }
  }
}

- (void)notifyHRMSessionStateChanged
{
  if ([(FitnessDeviceManager *)self workoutInSession])
  {
    v3 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
    v4 = [(FitnessDeviceManager *)self isHKQuantityRequested:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007981C(v4, v5);
  }

  v6 = [(FitnessDeviceManager *)self audioRoutingControl];
  [v6 hrmSessionStateChanged:v4 completion:&stru_1000BE2A8];
}

- (BOOL)isHKHeartRateEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:kHKPrivacyPreferencesDomain];

  v4 = [v3 objectForKey:kHKPrivacyPreferencesKeyEnableHeartRate];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)handleDevicePairingChangeCallback
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "A fitness device's pairing state changed", v6, 2u);
  }

  v4 = [(FitnessDeviceManager *)self knownQuantityTypes];
  v5 = [v4 count];

  if (v5)
  {
    [(FitnessDeviceManager *)self updateScan];
  }
}

- (void)handlePeripheralStatusChangeCallback
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "A fitness device's UpdateHealth state changed", buf, 2u);
  }

  v4 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v5 = [(FitnessDeviceManager *)self servicesForHKQuantityType:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10) refreshUpdateHealthEnabledStatus];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(FitnessDeviceManager *)self knownQuantityTypes];
  v12 = [v11 count];

  if (v12)
  {
    [(FitnessDeviceManager *)self disconnectDevicesWithoutRunningService];
    [(FitnessDeviceManager *)self updateScan];
  }
}

- (void)migrateHKPairedHealthDevices
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 persistentDomainForName:@"com.apple.BTLEServer"];
    v5 = [v4 objectForKey:@"HRM_MIGRATION_COMPLETE"];
    if (([v5 isEqualToString:@"1"] & 1) == 0)
    {
      if (+[HKHealthStore isHealthDataAvailable])
      {
        objc_initWeak(&location, self);
        v6 = [(FitnessDeviceManager *)self hkHealthStore];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100056180;
        v7[3] = &unk_1000BE320;
        objc_copyWeak(&v10, &location);
        v8 = v4;
        v9 = v3;
        [v6 healthPeripheralsWithFilter:1 handler:v7];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

@end