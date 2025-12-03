@interface EPSagaTransactionPairing
- (BOOL)alreadyPaired;
- (BOOL)isReadingCharacteristic;
- (BOOL)startedPairing;
- (EPSagaTransactionPairing)init;
- (EPTransactionDelegate)delegate;
- (id)findPairingReaderEntryWithPairer:(id)pairer andRemove:(BOOL)remove;
- (id)findPairingReaderEntryWithReader:(id)reader andRemove:(BOOL)remove;
- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate;
- (void)_directBluetoothMigrationPairing;
- (void)_directBluetoothMigrationUnpairing;
- (void)_networkRelayMigrationPairing;
- (void)_networkRelayMigrationUnpairing;
- (void)_requestMigrationAndPairWithCandidateWithNetworkRelayIdentifier:(id)identifier;
- (void)advertiser:(id)advertiser deviceDidAppear:(id)appear;
- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)characteristicReader:(id)reader didRead:(id)read;
- (void)checkIfIDSPaired;
- (void)connectUp:(id)up;
- (void)discoveredMigrationCandidateWithNetworkRelayIdentifier:(id)identifier;
- (void)discoverer:(id)discoverer deviceDidBecomeDisplayable:(id)displayable;
- (void)failWithError:(id)error;
- (void)migrationBTPairingTimeout:(id)timeout;
- (void)networkRelayPairingCompletedWithIdentifier:(id)identifier error:(id)error;
- (void)networkRelayUnpairingCompletedWithError:(id)error;
- (void)pairer:(id)pairer completedWithError:(id)error;
- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey;
- (void)registerForPairingNotificationCompletion:(id)completion;
- (void)setAdvertisingName:(id)name;
- (void)setState:(unint64_t)state;
- (void)timedOut;
- (void)timeout:(id)timeout;
- (void)unpairer:(id)unpairer didFinishUnpairingDevices:(id)devices;
- (void)unregisterForPairingNotification;
- (void)update;
- (void)updateAdvertisingName;
@end

@implementation EPSagaTransactionPairing

- (EPSagaTransactionPairing)init
{
  v11.receiver = self;
  v11.super_class = EPSagaTransactionPairing;
  v2 = [(EPSagaTransactionPairing *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(EPSagaTransactionPairing *)v2 setMigrationReadResponseBlocks:v3];

    v4 = +[NSMutableSet set];
    [(EPSagaTransactionPairing *)v2 setReaders:v4];

    v5 = +[NSMutableSet set];
    [(EPSagaTransactionPairing *)v2 setPairers:v5];

    v6 = +[NSMutableSet set];
    [(EPSagaTransactionPairing *)v2 setPairingDevices:v6];

    v7 = [EPNullResourceManager alloc];
    v8 = +[EPFactory queue];
    v9 = [(EPResourceManager *)v7 initWithQueue:v8];
    [(EPSagaTransactionPairing *)v2 setFakePipeManager:v9];
  }

  return v2;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  [(EPSagaTransactionPairing *)self setServiceRegistry:registryCopy];
  v8 = [registryCopy serviceFromClass:objc_opt_class()];
  [(EPSagaTransactionPairing *)self setFactory:v8];

  v9 = [registryCopy serviceFromClass:objc_opt_class()];

  [(EPSagaTransactionPairing *)self setOobKeyStash:v9];
  v10 = [entryCopy objectForKeyedSubscript:@"destinationIsAltAccount"];
  self->_isAltAccountPairing = [v10 BOOLValue];
  [(EPSagaTransactionPairing *)self setRoutingSlipEntry:entryCopy];

  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v12 = [routingSlipEntry objectForKeyedSubscript:@"useNetworkRelayPairing"];

  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  self->_useNetworkRelayPairing = bOOLValue;
  routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v15 = [routingSlipEntry2 objectForKeyedSubscript:@"iAmACompanionDevice"];

  self->_iAmACompanionDevice = [v15 BOOLValue];
  [(EPSagaTransactionPairing *)self updateAdvertisingName];
  v16 = sub_1000034AC();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = sub_1000034AC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = 0x404E000000000000;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairing: Setting transaction timeout of %1.0f seconds", buf, 0xCu);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E9A60;
  v19[3] = &unk_1001761C0;
  v19[4] = self;
  v19[5] = 0x404E000000000000;
  dispatch_sync(&_dispatch_main_q, v19);
  [(EPSagaTransactionPairing *)self setState:1];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  [(EPSagaTransactionPairing *)self setServiceRegistry:registryCopy];
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  [(EPSagaTransactionPairing *)self setFactory:v8];
  [(EPSagaTransactionPairing *)self setRoutingSlipEntry:entryCopy];

  [(EPSagaTransactionPairing *)self setState:3];
}

- (void)updateAdvertisingName
{
  if (CFPreferencesGetAppBooleanValue(@"ShouldNotDiscoverWithName", @"com.apple.nanoregistryd", 0) || !CFPreferencesGetAppBooleanValue(@"IDSAdvertiseMigrationWithNameEnabled", @"com.apple.nanoregistryd", 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1000E9C28();
  }

  v4 = v3;
  [(EPSagaTransactionPairing *)self setAdvertisingName:v3];
}

- (void)setAdvertisingName:(id)name
{
  nameCopy = name;
  advertisingName = self->_advertisingName;
  v8 = nameCopy;
  if (nameCopy && !advertisingName || advertisingName && ([(NSString *)advertisingName isEqual:nameCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_advertisingName, name);
    factory = [(EPSagaTransactionPairing *)self factory];
    [factory setAdvertisingName:v8];
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    v5 = sub_1000034AC();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = sub_1000034AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        state = self->_state;
        *buf = 67109376;
        stateCopy = state;
        v21 = 1024;
        stateCopy2 = state;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Changing EPSagaTransactionPairing state from %d -> %d", buf, 0xEu);
      }
    }

    self->_state = state;
    if (state == 1)
    {
      [(EPSagaTransactionPairing *)self update];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E9F54;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_sync(&_dispatch_main_q, block);
      if (state != 2)
      {
        pairers = [(EPSagaTransactionPairing *)self pairers];
        [pairers removeAllObjects];

        pairingDevices = [(EPSagaTransactionPairing *)self pairingDevices];
        [pairingDevices removeAllObjects];
      }

      unpairer = self->_unpairer;
      self->_unpairer = 0;

      discoverer = self->_discoverer;
      self->_discoverer = 0;

      sharedKey = self->_sharedKey;
      self->_sharedKey = 0;

      if (state == 3 || !state)
      {
        advertiser = self->_advertiser;
        self->_advertiser = 0;

        pairers2 = [(EPSagaTransactionPairing *)self pairers];
        [pairers2 removeAllObjects];

        pairingDevices2 = [(EPSagaTransactionPairing *)self pairingDevices];
        [pairingDevices2 removeAllObjects];

        [(EPSagaTransactionPairing *)self setConnector:0];
        [(EPSagaTransactionPairing *)self setConnectorManager:0];
      }

      [(EPSagaTransactionPairing *)self update];
      if ((state | 2) == 2)
      {
        delegate = [(EPSagaTransactionPairing *)self delegate];
        [delegate transactionDidComplete:self];
      }
    }
  }
}

- (void)registerForPairingNotificationCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_registeredForPairingNotification)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EA0B0;
    v7[3] = &unk_100175FA0;
    v7[4] = self;
    v8 = v5;
    [v6 initializeAllIDSChannelsBlock:v7];
  }
}

- (void)unregisterForPairingNotification
{
  if (self->_registeredForPairingNotification)
  {
    self->_registeredForPairingNotification = 0;
    v4 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
    [v4 removeConnectivityObserver:self];
    v5 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];

    [v5 removeConnectivityObserver:self];
  }
}

- (void)checkIfIDSPaired
{
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v12 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

  v4 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  defaultPairedDevice = [v4 defaultPairedDevice];
  nsuuid = [defaultPairedDevice nsuuid];
  v7 = [v12 isEqual:nsuuid];

  if (v7)
  {
    self->_classCPaired = 1;
  }

  v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];

  defaultPairedDevice2 = [v8 defaultPairedDevice];
  nsuuid2 = [defaultPairedDevice2 nsuuid];
  v11 = [v12 isEqual:nsuuid2];

  if (v11)
  {
    self->_classDPaired = 1;
  }

  if (self->_classCPaired && self->_classDPaired)
  {
    [(EPSagaTransactionPairing *)self unregisterForPairingNotification];
    [(EPSagaTransactionPairing *)self setState:2];
  }
}

- (void)update
{
  if ([(EPSagaTransactionPairing *)self state]== 1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000EA4A8;
    v3[3] = &unk_100175660;
    v3[4] = self;
    [(EPSagaTransactionPairing *)self registerForPairingNotificationCompletion:v3];
  }

  else if ([(EPSagaTransactionPairing *)self state]== 3)
  {
    if (self->_useNetworkRelayPairing)
    {

      [(EPSagaTransactionPairing *)self _networkRelayMigrationUnpairing];
    }

    else
    {

      [(EPSagaTransactionPairing *)self _directBluetoothMigrationUnpairing];
    }
  }
}

- (void)_directBluetoothMigrationPairing
{
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v4 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

  routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v6 = [routingSlipEntry2 objectForKeyedSubscript:@"iAmACompanionDevice"];

  bOOLValue = [v6 BOOLValue];
  if (v4)
  {
    routingSlipEntry3 = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v9 = [routingSlipEntry3 objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

    [(EPSagaTransactionPairing *)self connectUp:v9];
    goto LABEL_3;
  }

  v10 = bOOLValue;
  if (self->_sharedKey)
  {
    if (bOOLValue)
    {
LABEL_6:
      if ([(EPResource *)self->_sharedKey availability]!= 1)
      {
        goto LABEL_3;
      }

      discoverer = [(EPSagaTransactionPairing *)self discoverer];
      if (discoverer)
      {

        goto LABEL_3;
      }

      readers = [(EPSagaTransactionPairing *)self readers];
      if ([readers count])
      {
LABEL_33:

        goto LABEL_3;
      }

      pairers = [(EPSagaTransactionPairing *)self pairers];
      v57 = [pairers count];

      if (!v57)
      {
        routingSlipEntry4 = [(EPSagaTransactionPairing *)self routingSlipEntry];
        v59 = [routingSlipEntry4 objectForKeyedSubscript:@"discoverableCoreBluetoothID"];

        v72 = v6;
        if (v59)
        {
          v85 = v59;
          factory2 = [NSArray arrayWithObjects:&v85 count:1];
          factory = [(EPSagaTransactionPairing *)self factory];
          [factory setDiscovererDeviceUUIDs:factory2];
        }

        else
        {
          factory2 = [(EPSagaTransactionPairing *)self factory];
          [factory2 setDiscovererDeviceUUIDs:0];
        }

        factory3 = [(EPSagaTransactionPairing *)self factory];
        [factory3 setDiscovererShouldScanForProximity:0];

        factory4 = [(EPSagaTransactionPairing *)self factory];
        v64 = [factory4 newDiscovererWithDelegate:self];
        [(EPSagaTransactionPairing *)self setDiscoverer:v64];

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        selfCopy = self;
        obj = [(EPDiscoverer *)self->_discoverer displayableDevices];
        v66 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v77;
          do
          {
            for (i = 0; i != v67; i = i + 1)
            {
              if (*v77 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v70 = *(*(&v76 + 1) + 8 * i);
              v71 = +[EPFactory queue];
              v75[0] = _NSConcreteStackBlock;
              v75[1] = 3221225472;
              v75[2] = sub_1000EAD14;
              v75[3] = &unk_100175598;
              v75[4] = selfCopy;
              v75[5] = v70;
              dispatch_async(v71, v75);
            }

            v67 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
          }

          while (v67);
        }

        v6 = v72;
      }

      goto LABEL_3;
    }
  }

  else
  {
    serviceRegistry = [(EPSagaTransactionPairing *)self serviceRegistry];
    v13 = [serviceRegistry serviceFromClass:objc_opt_class()];

    v14 = [v13 newResourceWithDelegate:self];
    sharedKey = self->_sharedKey;
    self->_sharedKey = v14;

    if (v10)
    {
      goto LABEL_6;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAD24;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
  if ([(EPResource *)self->_sharedKey availability]== 1)
  {
    v16 = sub_1000A98C0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = sub_1000A98C0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        startedPairing = [(EPSagaTransactionPairing *)self startedPairing];
        *buf = 67109120;
        v83 = startedPairing;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairing: Set not available to pair to %{BOOL}d", buf, 8u);
      }
    }

    startedPairing2 = [(EPSagaTransactionPairing *)self startedPairing];
    factory5 = [(EPSagaTransactionPairing *)self factory];
    [factory5 setAdvertiserNotAvailableToPair:startedPairing2];

    factory6 = [(EPSagaTransactionPairing *)self factory];
    [factory6 setDontAdvertiseWithServiceUUID:1];

    advertiser = [(EPSagaTransactionPairing *)self advertiser];

    if (!advertiser)
    {
      advertisingName = [(EPSagaTransactionPairing *)self advertisingName];
      factory7 = [(EPSagaTransactionPairing *)self factory];
      [factory7 setAdvertisingName:advertisingName];

      factory8 = [(EPSagaTransactionPairing *)self factory];
      [factory8 setAdvertisingRate:1];

      factory9 = [(EPSagaTransactionPairing *)self factory];
      v28 = [factory9 newAdvertiserWithDelegate:self];
      [(EPSagaTransactionPairing *)self setAdvertiser:v28];
    }

    oobKeyGenerator = [(EPSagaTransactionPairing *)self oobKeyGenerator];

    if (!oobKeyGenerator)
    {
      v30 = +[EPFactory sharedFactory];
      v31 = [v30 newKeyGeneratorWithDelegate:self];
      [(EPSagaTransactionPairing *)self setOobKeyGenerator:v31];
    }

    oobKeyGenerator2 = [(EPSagaTransactionPairing *)self oobKeyGenerator];
    availability = [oobKeyGenerator2 availability];

    if (availability == 1)
    {
      oobKeyStash = [(EPSagaTransactionPairing *)self oobKeyStash];
      oobKey = [oobKeyStash oobKey];

      if (!oobKey)
      {
        oobKeyGenerator3 = [(EPSagaTransactionPairing *)self oobKeyGenerator];
        v37 = [oobKeyGenerator3 key];
        oobKeyStash2 = [(EPSagaTransactionPairing *)self oobKeyStash];
        [oobKeyStash2 setOobKey:v37];
      }

      oobKeyStash3 = [(EPSagaTransactionPairing *)self oobKeyStash];
      oobKey2 = [oobKeyStash3 oobKey];

      if (oobKey2)
      {
        oobKeyStash4 = [(EPSagaTransactionPairing *)self oobKeyStash];
        oobKey3 = [oobKeyStash4 oobKey];
        oobKeyGenerator4 = [(EPSagaTransactionPairing *)self oobKeyGenerator];
        v44 = [oobKeyGenerator4 key];
        v45 = [oobKey3 isEqual:v44];

        if ((v45 & 1) == 0)
        {
          routingSlipEntry5 = [(EPSagaTransactionPairing *)self routingSlipEntry];
          errors = [routingSlipEntry5 errors];
          v80 = NSLocalizedDescriptionKey;
          v81 = @"OOB key changed";
          v48 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v49 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:2 userInfo:v48];
          [errors addObject:v49];

          routingSlipEntry6 = [(EPSagaTransactionPairing *)self routingSlipEntry];
          [routingSlipEntry6 persist];

          [(EPSagaTransactionPairing *)self setState:3];
        }

        if (!self->_calledReadyToPair)
        {
          self->_calledReadyToPair = 1;
          serviceRegistry2 = [(EPSagaTransactionPairing *)self serviceRegistry];
          readers = [serviceRegistry2 serviceFromProtocol:&OBJC_PROTOCOL___EPSagaTransactionPairingIsReadyToPair];

          if (readers)
          {
            v53 = sub_1000034AC();
            v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

            if (v54)
            {
              v55 = sub_1000034AC();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Ready to pair, calling service delegate", buf, 2u);
              }
            }

            [readers pairingTransactionIsReadyToPair:self];
          }

          goto LABEL_33;
        }
      }
    }
  }

LABEL_3:
}

- (void)_directBluetoothMigrationUnpairing
{
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v7 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

  if (v7)
  {
    if (!self->_unpairer)
    {
      v4 = [EPMassUnpairer alloc];
      v5 = [NSSet setWithObject:v7];
      v6 = [(EPMassUnpairer *)v4 initWithDelegate:self UUIDs:v5];
      [(EPSagaTransactionPairing *)self setUnpairer:v6];
    }
  }

  else
  {
    [(EPSagaTransactionPairing *)self setState:0];
  }
}

- (void)_networkRelayMigrationPairing
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    iAmACompanionDevice = self->_iAmACompanionDevice;
    v16 = 136315394;
    v17 = "[EPSagaTransactionPairing _networkRelayMigrationPairing]";
    v18 = 1024;
    LODWORD(v19) = iAmACompanionDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s iAmACompanionDevice %{BOOL}d", &v16, 0x12u);
  }

  v5 = +[NetworkRelayAgent sharedInstance];
  [v5 addDelegate:self];
  if (self->_iAmACompanionDevice)
  {
    routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v7 = [routingSlipEntry objectForKeyedSubscript:@"networkRelayID"];

    migrationCandidates = [v5 migrationCandidates];
    v9 = [migrationCandidates containsObject:v7];

    if (v9)
    {
      v10 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[EPSagaTransactionPairing _networkRelayMigrationPairing]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s network relay migration candidate found, requesting migration", &v16, 0xCu);
      }

      [(EPSagaTransactionPairing *)self _requestMigrationAndPairWithCandidateWithNetworkRelayIdentifier:v7];
    }

    else
    {
      routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
      v12 = [routingSlipEntry2 objectForKeyedSubscript:@"networkRelayID"];

      v13 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "[EPSagaTransactionPairing _networkRelayMigrationPairing]";
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s network relay migration candidate not found yet, start scanning with network relay identifier %{public}@", &v16, 0x16u);
      }

      if (v12)
      {
        v14 = [NSSet setWithObject:v12];
        [v5 addMigrationScanCandidates:v14];

        [v5 startScanningForMigrationCandidates];
      }

      else
      {
        v15 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315138;
          v17 = "[EPSagaTransactionPairing _networkRelayMigrationPairing]";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s no network relay identifier to start scan", &v16, 0xCu);
        }
      }
    }
  }
}

- (void)_requestMigrationAndPairWithCandidateWithNetworkRelayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  +[NetworkRelayAgent sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EB210;
  v7[3] = &unk_100177CF0;
  v8 = v7[4] = self;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = v8;
  [v6 requestMigrationFromCandidateWithNetworkRelayIdentifier:v5 completion:v7];
}

- (void)discoveredMigrationCandidateWithNetworkRelayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v6 = [routingSlipEntry objectForKeyedSubscript:@"networkRelayID"];

  v7 = [v6 isEqual:identifierCopy];
  v8 = networkrelay_pairing_log_handle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[EPSagaTransactionPairing discoveredMigrationCandidateWithNetworkRelayIdentifier:]";
      v12 = 2114;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s discovered a migration candidate with NetworkRelay identifier %{public}@. Requesting migration.", &v10, 0x16u);
    }

    [(EPSagaTransactionPairing *)self _requestMigrationAndPairWithCandidateWithNetworkRelayIdentifier:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "[EPSagaTransactionPairing discoveredMigrationCandidateWithNetworkRelayIdentifier:]";
      v12 = 2114;
      v13 = identifierCopy;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s discovered an unexpected migration candidate with NetworkRelay identifier %{public}@, looking for %{public}@", &v10, 0x20u);
    }
  }
}

- (void)networkRelayPairingCompletedWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v9 = [routingSlipEntry objectForKeyedSubscript:@"networkRelayID"];

  v10 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [v9 UUIDString];
    uUIDString2 = [identifierCopy UUIDString];
    v28 = 136315906;
    v29 = "[EPSagaTransactionPairing networkRelayPairingCompletedWithIdentifier:error:]";
    v30 = 2114;
    v31 = uUIDString;
    v32 = 2114;
    v33 = uUIDString2;
    v34 = 2114;
    v35 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s identifier: requested nrUUID = %{public}@; got newly paired BTUUID = %{public}@ error:%{public}@", &v28, 0x2Au);
  }

  if (errorCopy)
  {
    errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
    [errors addObject:errorCopy];

    [(EPRoutingSlipEntry *)self->_routingSlipEntry persist];
    [(EPSagaTransactionPairing *)self setState:3];
  }

  else
  {
    v14 = +[NetworkRelayAgent sharedInstance];
    v15 = [NSSet setWithObject:v9];
    [v14 removeMigrationScanCandidates:v15];

    v16 = [[EPSagaOperandUUID alloc] initWithUUID:identifierCopy];
    routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
    operands = [routingSlipEntry2 operands];
    [operands setObject:v16 forKeyedSubscript:@"newlyPairedCoreBluetoothID"];

    v19 = [NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:identifierCopy];
    v20 = networkrelay_pairing_log_handle();
    routingSlipEntry3 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString3 = [identifierCopy UUIDString];
        uUIDString4 = [v19 UUIDString];
        v28 = 138412546;
        v29 = uUIDString3;
        v30 = 2114;
        v31 = uUIDString4;
        _os_log_impl(&_mh_execute_header, routingSlipEntry3, OS_LOG_TYPE_DEFAULT, "NetworkRelayIdentifier for device with Bluetooth identifier %@ is %{public}@", &v28, 0x16u);
      }

      v24 = [[EPSagaOperandUUID alloc] initWithUUID:v19];
      routingSlipEntry3 = [(EPSagaTransactionPairing *)self routingSlipEntry];
      operands2 = [routingSlipEntry3 operands];
      [operands2 setObject:v24 forKeyedSubscript:@"newlyPairedNetworkRelayID"];

      v16 = v24;
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      uUIDString5 = [identifierCopy UUIDString];
      v28 = 138412290;
      v29 = uUIDString5;
      _os_log_impl(&_mh_execute_header, routingSlipEntry3, OS_LOG_TYPE_ERROR, "Unable to retrieve NetworkRelayIdentifier for device with Bluetooth identifier %@", &v28, 0xCu);
    }

    routingSlipEntry4 = [(EPSagaTransactionPairing *)self routingSlipEntry];
    [routingSlipEntry4 persist];

    [(EPSagaTransactionPairing *)self setState:2];
  }
}

- (void)networkRelayUnpairingCompletedWithError:(id)error
{
  errorCopy = error;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "networkRelayUnpairingCompletedWithError called with error %{public}@", buf, 0xCu);
  }

  v6 = +[NetworkRelayAgent sharedInstance];
  [v6 removeDelegate:self];
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  queue = [routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBB64;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_networkRelayMigrationUnpairing
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[EPSagaTransactionPairing _networkRelayMigrationUnpairing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v5 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedNetworkRelayID"];

  if (v5)
  {
    v6 = +[NetworkRelayAgent sharedInstance];
    [v6 addDelegate:self];
    [v6 unpairNetworkRelayDeviceWithNetworkRelayIdentifier:v5];
  }

  else
  {
    v7 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[EPSagaTransactionPairing _networkRelayMigrationUnpairing]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s no EPSagaOperandNewlyPairedNetworkRelayIDKey", &v8, 0xCu);
    }

    [(EPSagaTransactionPairing *)self setState:0];
  }
}

- (void)connectUp:(id)up
{
  upCopy = up;
  if (upCopy)
  {
    v13 = upCopy;
    routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v6 = [routingSlipEntry objectForKeyedSubscript:@"iAmACompanionDevice"];

    if ([v6 BOOLValue])
    {
      connector = [(EPSagaTransactionPairing *)self connector];

      if (!connector)
      {
        connectorManager = [(EPSagaTransactionPairing *)self connectorManager];

        if (!connectorManager)
        {
          v9 = +[EPPeripheralConnectorManagerFactory sharedConnectorManagerFactory];
          v10 = [v9 connectorManagerWithUuid:v13];
          [(EPSagaTransactionPairing *)self setConnectorManager:v10];
        }

        connectorManager2 = [(EPSagaTransactionPairing *)self connectorManager];
        v12 = [connectorManager2 newResourceWithDelegate:self];
        [(EPSagaTransactionPairing *)self setConnector:v12];
      }
    }

    upCopy = v13;
  }
}

- (void)unpairer:(id)unpairer didFinishUnpairingDevices:(id)devices
{
  devicesCopy = devices;
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v7 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

  if ([(EPSagaTransactionPairing *)self state]== 3)
  {
    if (v7 && ([devicesCopy containsObject:v7] & 1) == 0)
    {
      v17 = NSLocalizedDescriptionKey;
      uUIDString = [v7 UUIDString];
      v11 = [NSString stringWithFormat:@"Bluetooth was not able to unpair device %@ during rollback", uUIDString];
      v18 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:4 userInfo:v12];

      routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
      errors = [routingSlipEntry2 errors];
      [errors addObject:v13];
    }

    else
    {
      routingSlipEntry3 = [(EPSagaTransactionPairing *)self routingSlipEntry];
      operands = [routingSlipEntry3 operands];
      [operands removeObjectForKey:@"newlyPairedCoreBluetoothID"];
    }

    routingSlipEntry4 = [(EPSagaTransactionPairing *)self routingSlipEntry];
    [routingSlipEntry4 persist];

    [(EPSagaTransactionPairing *)self setState:0];
  }
}

- (void)advertiser:(id)advertiser deviceDidAppear:(id)appear
{
  if ([(EPSagaTransactionPairing *)self state:advertiser]== 1)
  {

    [(EPSagaTransactionPairing *)self update];
  }
}

- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device
{
  advertiserCopy = advertiser;
  deviceCopy = device;
  if (CFPreferencesGetAppBooleanValue(@"migrationShouldIgnoreBTPairingRequest", @"com.apple.nanoregistryd", 0))
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairing: ************* Debug/Test Mode! Ignoring Bluetooth Pairing Requests!", buf, 2u);
      }
    }
  }

  else
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EC2F8;
    v17[3] = &unk_1001758D0;
    v17[4] = self;
    v17[5] = buf;
    dispatch_sync(&_dispatch_main_q, v17);
    if (![(EPSagaTransactionPairing *)self startedPairing]&& v19[24] == 1)
    {
      routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
      v12 = [routingSlipEntry objectForKeyedSubscript:@"iAmACompanionDevice"];

      if (([v12 BOOLValue] & 1) == 0)
      {
        v13 = [deviceCopy newPairerWithDelegate:self];
        if (v13)
        {
          pairers = [(EPSagaTransactionPairing *)self pairers];
          [pairers addObject:v13];

          pairingDevices = [(EPSagaTransactionPairing *)self pairingDevices];
          device = [v13 device];
          [pairingDevices addObject:device];
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)alreadyPaired
{
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v3 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

  return v3 != 0;
}

- (BOOL)startedPairing
{
  if ([(EPSagaTransactionPairing *)self alreadyPaired])
  {
    return 1;
  }

  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  v5 = [routingSlipEntry objectForKeyedSubscript:@"iAmACompanionDevice"];

  if ([v5 BOOLValue])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_readers;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          pairer = [*(*(&v14 + 1) + 8 * i) pairer];

          if (pairer)
          {

            v3 = 1;
            goto LABEL_15;
          }
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

  else
  {
    pairers = [(EPSagaTransactionPairing *)self pairers];
    v3 = [pairers count] != 0;
  }

LABEL_15:

  return v3;
}

- (void)discoverer:(id)discoverer deviceDidBecomeDisplayable:(id)displayable
{
  discovererCopy = discoverer;
  displayableCopy = displayable;
  if ([(EPSagaTransactionPairing *)self state]== 1)
  {
    routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v9 = [routingSlipEntry objectForKeyedSubscript:@"newlyPairedCoreBluetoothID"];

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000EC81C;
    v25[3] = &unk_1001758D0;
    v25[4] = self;
    v25[5] = &v26;
    dispatch_sync(&_dispatch_main_q, v25);
    if (*(v27 + 24) != 1 || v9 != 0)
    {
      goto LABEL_14;
    }

    routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v12 = [routingSlipEntry2 objectForKeyedSubscript:@"discoverableCoreBluetoothID"];

    uuid = [displayableCopy uuid];
    if ([uuid isEqual:v12])
    {
    }

    else
    {
      advertisingName = [(EPSagaTransactionPairing *)self advertisingName];
      if (!advertisingName)
      {
LABEL_12:

        goto LABEL_13;
      }

      advertisingName2 = [(EPSagaTransactionPairing *)self advertisingName];
      name = [displayableCopy name];
      v17 = [advertisingName2 isEqual:name];

      if (!v17)
      {
LABEL_13:

LABEL_14:
        _Block_object_dispose(&v26, 8);

        goto LABEL_15;
      }
    }

    uuid2 = [displayableCopy uuid];
    [(EPSagaTransactionPairing *)self connectUp:uuid2];

    uuid = [displayableCopy newObserverWithDelegate:0];
    v19 = [EPCharacteristicReader alloc];
    v20 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v21 = [CBUUID UUIDWithString:@"889DBEA2-6C42-4B56-A453-8EAB0976D184"];
    v22 = [(EPCharacteristicReader *)v19 initWithDelegate:self timeout:uuid peripheral:v20 serviceUUID:v21 characteristicUUID:70.0];

    v23 = objc_opt_new();
    [v23 setReader:v22];
    [v23 setDevice:displayableCopy];
    [(NSMutableSet *)self->_readers addObject:v23];
    discoverer = self->_discoverer;
    self->_discoverer = 0;

    goto LABEL_12;
  }

LABEL_15:
}

- (void)characteristicReader:(id)reader didRead:(id)read
{
  readerCopy = reader;
  readCopy = read;
  if ([(EPSagaTransactionPairing *)self state]== 1)
  {
    v8 = [(EPSagaTransactionPairing *)self findPairingReaderEntryWithReader:readerCopy andRemove:0];
    v9 = v8;
    if (!readCopy || !v8)
    {
      v22 = sub_1000034AC();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (readCopy)
      {
        if (!v23)
        {
          data = readCopy;
LABEL_45:

          goto LABEL_46;
        }

        v10 = sub_1000034AC();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100105E70();
        }

        data = readCopy;
      }

      else
      {
        if (v23)
        {
          v24 = sub_1000034AC();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100105E34();
          }
        }

        v48 = NSLocalizedDescriptionKey;
        v49 = @"Reader read no data";
        v25 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v10 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:10 userInfo:v25];

        [(EPSagaTransactionPairing *)self failWithError:v10];
        data = 0;
      }

LABEL_44:

      goto LABEL_45;
    }

    v10 = [(EPKey *)self->_sharedKey decryptPayload:readCopy];
    if (!v10)
    {
      v26 = sub_1000034AC();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        v28 = sub_1000034AC();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100105EE8();
        }
      }

      v50 = NSLocalizedDescriptionKey;
      v51 = @"Could not decrypt payload";
      v29 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v14 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:6 userInfo:v29];

      [(EPSagaTransactionPairing *)self failWithError:v14];
      data = readCopy;
      goto LABEL_43;
    }

    [(NSMutableSet *)self->_readers removeAllObjects];
    [(NSMutableSet *)self->_readers addObject:v9];
    if (!self->_watchReadFirstTime)
    {
      self->_watchReadFirstTime = 1;
      [(EPSagaTransactionPairing *)self updateAdvertisingName];
      v11 = sub_1000034AC();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = sub_1000034AC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v55 = 0x4056C00000000000;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPairing: First read received from watch, resetting transaction timeout of %1.0f seconds", buf, 0xCu);
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000ECF98;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_sync(&_dispatch_main_q, block);
    }

    v14 = [[NRPBBTMigrationOOBRead alloc] initWithData:v10];
    if (sub_100105980(v14))
    {
      if (sub_100105994(v14))
      {
        v15 = 8;
      }

      else
      {
        v15 = 7;
      }

      v52[0] = NSLocalizedDescriptionKey;
      if (sub_100105994(v14))
      {
        v16 = @"Watch returned FATAL error code";
      }

      else
      {
        v16 = @"Watch returned error code";
      }

      v52[1] = @"watchErrorCode";
      v53[0] = v16;
      v17 = [NSNumber numberWithInt:sub_100105980(v14)];
      v53[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
      v19 = [v18 mutableCopy];

      v20 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:v15 userInfo:v19];
      [(EPSagaTransactionPairing *)self failWithError:v20];
      data = readCopy;
      goto LABEL_42;
    }

    device = [v9 device];
    v19 = [device newObserverWithDelegate:0];

    v31 = [EPCharacteristicWriter alloc];
    v32 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
    v33 = [CBUUID UUIDWithString:@"35646DF5-E240-4355-8A8D-41271B5C4562"];
    v20 = [(EPCharacteristicWriter *)v31 initWithPeripheral:v19 serviceUUID:v32 characteristicUUID:v33];

    [v9 setReader:0];
    v42 = objc_opt_new();
    v34 = sub_10010596C(v14);
    sub_1001010A4(v42, v34);

    v41 = MGCopyAnswer();
    if (v41)
    {
      sharedKey = self->_sharedKey;
      v36 = [v41 dataUsingEncoding:4];
      v37 = [(EPKey *)sharedKey encryptPayload:v36];
      sub_1001010B8(v42, v37);
    }

    data = [v42 data];

    if (data)
    {
      v38 = [(EPKey *)self->_sharedKey encryptPayload:data];
      objc_initWeak(buf, self);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000ED02C;
      v43[3] = &unk_100176018;
      v43[4] = self;
      objc_copyWeak(&v46, buf);
      v44 = v9;
      v45 = v14;
      [(EPCharacteristicWriter *)v20 writeData:v38 timeout:&stru_100179CE0 begin:v43 completion:65.0];

      objc_destroyWeak(&v46);
      objc_destroyWeak(buf);
    }

    else
    {
      v39 = sub_1000034AC();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);

      if (!v40)
      {
        goto LABEL_41;
      }

      v38 = sub_1000034AC();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100105EAC();
      }
    }

LABEL_41:
LABEL_42:

LABEL_43:
    goto LABEL_44;
  }

  data = readCopy;
LABEL_46:
}

- (id)findPairingReaderEntryWithReader:(id)reader andRemove:(BOOL)remove
{
  removeCopy = remove;
  readerCopy = reader;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_readers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        reader = [v12 reader];

        if (reader == readerCopy)
        {
          v14 = v12;

          if (v14)
          {
            v15 = !removeCopy;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            [(NSMutableSet *)self->_readers removeObject:v14];
          }

          goto LABEL_15;
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)findPairingReaderEntryWithPairer:(id)pairer andRemove:(BOOL)remove
{
  removeCopy = remove;
  pairerCopy = pairer;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_readers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        pairer = [v12 pairer];

        if (pairer == pairerCopy)
        {
          v14 = v12;

          if (v14)
          {
            v15 = !removeCopy;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            [(NSMutableSet *)self->_readers removeObject:v14];
          }

          goto LABEL_15;
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  fakePipeManager = [(EPSagaTransactionPairing *)self fakePipeManager];
  v7 = [fakePipeManager newResourceWithDelegate:delegateCopy];

  return v7;
}

- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey
{
  pairerCopy = pairer;
  passkeyCopy = passkey;
  if ([(EPSagaTransactionPairing *)self state]== 1)
  {
    routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v11 = [routingSlipEntry objectForKeyedSubscript:@"iAmACompanionDevice"];

    bOOLValue = [v11 BOOLValue];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED9F8;
    block[3] = &unk_1001758D0;
    block[4] = self;
    block[5] = &v37;
    dispatch_sync(&_dispatch_main_q, block);
    if (type == 5)
    {
      if (*(v38 + 24) != 1 || [(EPSagaTransactionPairing *)self alreadyPaired])
      {
        goto LABEL_18;
      }

      if (bOOLValue)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = self->_readers;
        v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v32 objects:v47 count:16];
        if (v14)
        {
          v15 = *v33;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v32 + 1) + 8 * v16);
            pairer = [v17 pairer];
            v19 = pairer == pairerCopy;

            if (v19)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v32 objects:v47 count:16];
              if (v14)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          p_super = v17;

          if (!p_super)
          {
            goto LABEL_18;
          }

          oobKey = [p_super oobKey];
          oobKeyStash = [(EPSagaTransactionPairing *)self oobKeyStash];
          [oobKeyStash setOobKey:oobKey];

          v45 = CBPairingAgentPairingDataOOBTKKey;
          oobKey2 = [p_super oobKey];
          v46 = oobKey2;
          v29 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          [pairerCopy respondWithType:5 accept:1 data:v29];
        }

        else
        {
LABEL_14:
          p_super = &v13->super.super;
        }
      }

      else
      {
        oobKeyStash2 = [(EPSagaTransactionPairing *)self oobKeyStash];
        oobKey3 = [oobKeyStash2 oobKey];

        if (oobKey3)
        {
          v43 = CBPairingAgentPairingDataOOBTKKey;
          p_super = [(EPSagaTransactionPairing *)self oobKeyStash];
          oobKey4 = [p_super oobKey];
          v44 = oobKey4;
          v25 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [pairerCopy respondWithType:5 accept:1 data:v25];
        }

        else
        {
          v30 = sub_1000034AC();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

          if (!v31)
          {
            goto LABEL_18;
          }

          p_super = sub_1000034AC();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            sub_100105F98();
          }
        }
      }
    }

    else
    {
      if ((type - 1) > 1)
      {
LABEL_18:
        _Block_object_dispose(&v37, 8);

        goto LABEL_19;
      }

      v41 = NSLocalizedDescriptionKey;
      v42 = @"Wrong Bluetooth pairing type received";
      p_super = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v21 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:5 userInfo:p_super];
      [pairerCopy invalidateWithError:v21];
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)pairer:(id)pairer completedWithError:(id)error
{
  pairerCopy = pairer;
  errorCopy = error;
  if ([(EPSagaTransactionPairing *)self state]== 1)
  {
    routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
    v8 = [routingSlipEntry objectForKeyedSubscript:@"iAmACompanionDevice"];

    if ([v8 BOOLValue])
    {
      v9 = [(EPSagaTransactionPairing *)self findPairingReaderEntryWithPairer:pairerCopy andRemove:1];
    }

    pairers = self->_pairers;
    if (errorCopy)
    {
      [(NSMutableSet *)pairers removeObject:pairerCopy];
      pairingDevices = self->_pairingDevices;
      device = [pairerCopy device];
      [(NSMutableSet *)pairingDevices removeObject:device];

      errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
      [errors addObject:errorCopy];

      [(EPRoutingSlipEntry *)self->_routingSlipEntry persist];
      [(EPSagaTransactionPairing *)self setState:3];
    }

    else
    {
      [(NSMutableSet *)pairers addObject:pairerCopy];
      v14 = self->_pairingDevices;
      device2 = [pairerCopy device];
      [(NSMutableSet *)v14 addObject:device2];

      v16 = [EPSagaOperandUUID alloc];
      device3 = [pairerCopy device];
      uuid = [device3 uuid];
      v19 = [(EPSagaOperandUUID *)v16 initWithUUID:uuid];

      routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
      operands = [routingSlipEntry2 operands];
      [operands setObject:v19 forKeyedSubscript:@"newlyPairedCoreBluetoothID"];

      routingSlipEntry3 = [(EPSagaTransactionPairing *)self routingSlipEntry];
      [routingSlipEntry3 persist];

      device4 = [pairerCopy device];
      pairingConnector = [device4 pairingConnector];
      [(EPSagaTransactionPairing *)self setConnector:pairingConnector];

      [(EPSagaTransactionPairing *)self setState:2];
    }
  }
}

- (void)timeout:(id)timeout
{
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  queue = [routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EDD18;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)migrationBTPairingTimeout:(id)timeout
{
  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  queue = [routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EDDC0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)timedOut
{
  v3 = sub_1000034AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = sub_1000034AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100105FD4();
    }
  }

  if (self->_useNetworkRelayPairing)
  {
    v6 = +[NetworkRelayAgent sharedInstance];
    [v6 abortCurrentPairing];
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Timeout NetworkRelay migration";
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:0 userInfo:v7];

    [(EPSagaTransactionPairing *)self failWithError:v8];
  }

  else
  {
    if ([(EPSagaTransactionPairing *)self isReadingCharacteristic]&& [(EPSagaTransactionPairing *)self state]== 1)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Timeout discovering characteristics";
      v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v10 = 9;
    }

    else
    {
      v11 = [(EPSagaTransactionPairing *)self state]!= 1;
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Timeout";
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = v11;
    }

    v6 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing" code:v10 userInfo:v9];

    [(EPSagaTransactionPairing *)self failWithError:v6];
  }
}

- (BOOL)isReadingCharacteristic
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  readers = [(EPSagaTransactionPairing *)self readers];
  v3 = [readers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(readers);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        reader = [v6 reader];
        if (reader)
        {
          v8 = reader;
          reader2 = [v6 reader];
          readData = [reader2 readData];

          if (!readData)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [readers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = sub_1000034AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100106010();
    }
  }

  factory = [(EPSagaTransactionPairing *)self factory];
  [factory setAdvertiserNotAvailableToPair:1];

  routingSlipEntry = [(EPSagaTransactionPairing *)self routingSlipEntry];
  errors = [routingSlipEntry errors];
  [errors addObject:errorCopy];

  routingSlipEntry2 = [(EPSagaTransactionPairing *)self routingSlipEntry];
  [routingSlipEntry2 persist];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pairers = [(EPSagaTransactionPairing *)self pairers];
  v13 = [pairers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(pairers);
        }

        [*(*(&v21 + 1) + 8 * v16) invalidateWithError:errorCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [pairers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  pairers2 = [(EPSagaTransactionPairing *)self pairers];
  [pairers2 removeAllObjects];

  pairingDevices = [(EPSagaTransactionPairing *)self pairingDevices];
  [pairingDevices removeAllObjects];

  oobKeyStash = [(EPSagaTransactionPairing *)self oobKeyStash];
  [oobKeyStash clearOOBKey];

  if ([(EPSagaTransactionPairing *)self state]== 1)
  {
    v20 = 3;
LABEL_16:
    [(EPSagaTransactionPairing *)self setState:v20];
    goto LABEL_17;
  }

  if ([(EPSagaTransactionPairing *)self state]== 3)
  {
    v20 = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end