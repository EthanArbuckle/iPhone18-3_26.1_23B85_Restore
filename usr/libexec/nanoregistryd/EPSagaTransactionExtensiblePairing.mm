@interface EPSagaTransactionExtensiblePairing
- (BOOL)isInternalInstall;
- (EPServiceRegistry)serviceRegistry;
- (EPTransactionDelegate)delegate;
- (NRPairingReport)pairingReport;
- (NSUUID)pairingID;
- (id)_diffsForSettingDeviceIsActive:(BOOL)active withPairingID:(id)d collection:(id)collection;
- (id)getLocalPairingStorePairingID:(id)d;
- (id)makeLocalPairingStorePairingID:(id)d;
- (id)registry;
- (id)routingSlipEntry;
- (id)unpairHelper;
- (void)_beginDirectBluetoothPairingTransaction;
- (void)_beginNetworkRelayBluetoothPairingTransaction;
- (void)_cleanUpDiscoveredDevicesWithCollection:(id)collection;
- (void)activateDevice:(id)device withCompletion:(id)completion;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)cancelWithError:(id)error;
- (void)copyPropertiesToRTCReporter:(id)reporter;
- (void)createDeviceFromPairingRequest:(id)request discoveredBy:(unint64_t)by withBlock:(id)block;
- (void)createLocalPairingStore:(id)store andNotifyPairingBeginning:(BOOL)beginning bluetoothIdentifier:(id)identifier withBlock:(id)block;
- (void)deleteUnexpectedIDSPairedDevices;
- (void)filePairingReport;
- (void)getPairedPairingIDForBluetoothID:(id)d completion:(id)completion;
- (void)initializeAllIDSChannelsBlock:(id)block;
- (void)invalidate;
- (void)invalidateIDSChannels;
- (void)notifyPasscode:(id)passcode;
- (void)pairingCompleted;
- (void)pushVersion4CompatibilityMessageIfNeeded;
- (void)savePairingReport;
- (void)sendXPCBTPairRequestMessage:(id)message withCompletion:(id)completion;
- (void)sendXPCDeviceNeedsPasscodeMessage:(id)message passcode:(id)passcode;
- (void)sendXPCOOBKeyChanged:(id)changed;
- (void)setPairingID:(id)d;
- (void)transactionDidComplete;
- (void)unpairDeviceWithPairingID:(id)d obliterationString:(id)string shouldBrick:(id)brick storeUnpair:(id)unpair migrationUnpair:(id)migrationUnpair shouldPreserveESim:(id)sim pairingReport:(id)report remoteUnpairRequestUUID:(id)self0 shouldConnectionWithDevice:(BOOL)self1;
- (void)updateNRMutableDeviceFromEPDevice:(id)device withNRUUID:(id)d withBlock:(id)block;
- (void)updateRegistryForUnpairing:(id)unpairing withBlock:(id)block;
- (void)voidIDSService:(Class)service;
- (void)voidIDSServices;
@end

@implementation EPSagaTransactionExtensiblePairing

- (id)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v3 = [WeakRetained serviceFromClass:objc_opt_class()];

  return v3;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionExtensiblePairing: cancelWithError: %@", &v12, 0xCu);
    }
  }

  if (!errorCopy)
  {
    routingSlipEntry = [(EPSagaTransactionExtensiblePairing *)self routingSlipEntry];
    transactionBeganWithThisNR = [routingSlipEntry transactionBeganWithThisNR];

    if (transactionBeganWithThisNR)
    {
      errorCopy = 0;
    }

    else
    {
      errorCopy = nrGetPairingError();
    }
  }

  unpairHelper = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  v11 = [unpairHelper startUnpairDueToError:errorCopy];

  if (v11)
  {
    if (self->_useNetworkRelayBluetoothPairing)
    {
      [(NRNetworkRelayPair *)self->_networkRelayPair reset];
    }

    else
    {
      [(NRExtensiblePair *)self->_extensiblePair reset:1];
    }

    [(EPSagaTransactionExtensiblePairing *)self transactionDidComplete];
  }
}

- (void)notifyPasscode:(id)passcode
{
  v3 = 8;
  if (self->_useNetworkRelayBluetoothPairing)
  {
    v3 = 16;
  }

  [*(&self->super.isa + v3) respondWithPasscode:passcode];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  v8 = +[NRFeatureFlags sharedInstance];
  nrFeatureFlags = self->_nrFeatureFlags;
  self->_nrFeatureFlags = v8;

  objc_storeWeak(&self->_routingSlipEntry, entryCopy);
  objc_storeWeak(&self->_serviceRegistry, registryCopy);
  [registryCopy addService:self];

  [(EPSagaTransactionExtensiblePairing *)self pairingReport];
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  [WeakRetained setTransactionBeganWithThisNR:1];

  v11 = objc_loadWeakRetained(&self->_routingSlipEntry);
  v12 = [v11 objectForKeyedSubscript:@"extensiblePairingAdvertisedName"];
  advertisedName = self->_advertisedName;
  self->_advertisedName = v12;

  v14 = self->_advertisedName;
  v15 = NRAdvertisingInfoFromPayload();
  v16 = [v15 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
  integerValue = [v16 integerValue];

  v18 = sub_100052C60(integerValue);
  v19 = nr_daemon_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v21 = nr_daemon_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = self->_advertisedName;
      v25 = sub_100052C70(v18);
      v33 = 138543874;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v37 = 2114;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@, advertised name: %{public}@, strategy: %{public}@", &v33, 0x20u);
    }
  }

  if (v18 == 4)
  {
    if ([(NRFeatureFlags *)self->_nrFeatureFlags networkRelayPairing])
    {
      self->_useNetworkRelayBluetoothPairing = 1;
LABEL_15:
      v30 = nr_daemon_log();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v32 = nr_daemon_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Using NetworkRelay for pairing Bluetooth (advertising/discoverying/pairing)", &v33, 2u);
        }
      }

      [(EPSagaTransactionExtensiblePairing *)self _beginNetworkRelayBluetoothPairingTransaction];
      goto LABEL_20;
    }

    v29 = +[NRSystemProperties sharedInstance];
    self->_useNetworkRelayBluetoothPairing = [v29 isVirtualDevice];

    if (self->_useNetworkRelayBluetoothPairing)
    {
      goto LABEL_15;
    }
  }

  else
  {
    self->_useNetworkRelayBluetoothPairing = 0;
  }

  v26 = nr_daemon_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

  if (v27)
  {
    v28 = nr_daemon_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Using NanoRegistry for pairing Bluetooth (advertising/discoverying/pairing)", &v33, 2u);
    }
  }

  [(EPSagaTransactionExtensiblePairing *)self _beginDirectBluetoothPairingTransaction];
LABEL_20:
}

- (void)_beginDirectBluetoothPairingTransaction
{
  v3 = [NRExtensiblePair alloc];
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v5 = [(NRExtensiblePair *)v3 initWithServiceRegistry:WeakRetained];
  extensiblePair = self->_extensiblePair;
  self->_extensiblePair = v5;

  [(NRExtensiblePair *)self->_extensiblePair setDelegate:self];
  v7 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v7 addService:self->_extensiblePair];

  v8 = objc_loadWeakRetained(&self->_serviceRegistry);
  v9 = [v8 serviceFromClass:objc_opt_class()];

  v10 = +[NRQueue registryDaemonQueue];
  queue = [v10 queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F54F4;
  v12[3] = &unk_100175B90;
  v12[4] = self;
  [v9 checkIfFlaggedForRecoveryWithQueue:queue completion:v12];
}

- (void)_beginNetworkRelayBluetoothPairingTransaction
{
  v3 = +[NRNetworkRelayPair sharedInstance];
  networkRelayPair = self->_networkRelayPair;
  self->_networkRelayPair = v3;

  [(NRNetworkRelayPair *)self->_networkRelayPair setPairingDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v6 = [WeakRetained serviceFromClass:objc_opt_class()];

  v7 = +[NRQueue registryDaemonQueue];
  queue = [v7 queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F58A8;
  v9[3] = &unk_100175B90;
  v9[4] = self;
  [v6 checkIfFlaggedForRecoveryWithQueue:queue completion:v9];
}

- (void)transactionDidComplete
{
  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    [WeakRetained removeService:self];

    v5 = objc_loadWeakRetained(&self->_serviceRegistry);
    v6 = [v5 optionalServiceFromClass:objc_opt_class()];
    [v5 removeService:v6];

    delegate = [(EPSagaTransactionExtensiblePairing *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  obj = entry;
  registryCopy = registry;
  objc_storeWeak(&self->_routingSlipEntry, obj);
  objc_storeWeak(&self->_serviceRegistry, registryCopy);

  self->_transactionComplete = 0;
  v7 = [obj objectForKeyedSubscript:@"extensiblePairingDeviceID"];
  v8 = [obj objectForKeyedSubscript:@"pairingStarted"];
  v9 = v8;
  if (v7 && [v8 BOOLValue])
  {
    routingSlipError = [obj routingSlipError];
    [(EPSagaTransactionExtensiblePairing *)self cancelWithError:routingSlipError];
  }

  [(EPSagaTransactionExtensiblePairing *)self transactionDidComplete];
}

- (id)_diffsForSettingDeviceIsActive:(BOOL)active withPairingID:(id)d collection:(id)collection
{
  activeCopy = active;
  dCopy = d;
  collectionCopy = collection;
  v9 = +[NSMutableDictionary dictionary];
  activeDeviceID = [collectionCopy activeDeviceID];

  v11 = +[NSDate date];
  if (!dCopy)
  {
    goto LABEL_6;
  }

  if (activeCopy)
  {
    v12 = +[NSMutableDictionary dictionary];
    if (([dCopy isEqual:activeDeviceID] & 1) == 0)
    {
      v13 = [NRMutableDevice diffsToActivate:1 withDate:v11];
      [v12 addEntriesFromDictionary:v13];
    }

    v14 = [NRMutableDevice diffsToSetStatusCode:1];
    [v12 addEntriesFromDictionary:v14];

    v15 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v12];
    v16 = [[NRDeviceDiffType alloc] initWithDiff:v15 andChangeType:1];
    [v9 setObject:v16 forKeyedSubscript:dCopy];

LABEL_6:
    if (!activeDeviceID || [activeDeviceID isEqual:dCopy] && activeCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = dCopy;

  [v17 isEqual:v17];
  activeDeviceID = v17;
LABEL_11:
  v18 = +[NSMutableDictionary dictionary];
  v19 = [NRMutableDevice diffsToActivate:0 withDate:v11];
  [v18 addEntriesFromDictionary:v19];

  v20 = +[NRMutableDevice diffsToClearStatusCodeAndCompatibilityState];
  [v18 addEntriesFromDictionary:v20];

  v21 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v18];
  v22 = [[NRDeviceDiffType alloc] initWithDiff:v21 andChangeType:1];
  [v9 setObject:v22 forKeyedSubscript:activeDeviceID];

LABEL_12:
  if ([v9 count])
  {
    v23 = v9;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  return v23;
}

- (id)getLocalPairingStorePairingID:(id)d
{
  dCopy = d;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndex:0];
  v6 = [v5 stringByAppendingPathComponent:@"DeviceRegistry"];

  uUIDString = [dCopy UUIDString];

  v8 = [v6 stringByAppendingPathComponent:uUIDString];

  return v8;
}

- (id)makeLocalPairingStorePairingID:(id)d
{
  v3 = [(EPSagaTransactionExtensiblePairing *)self getLocalPairingStorePairingID:d];
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001068BC(v3, v6, v10);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)activateDevice:(id)device withCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F62B4;
  v11[3] = &unk_1001762B0;
  v11[4] = self;
  v12 = deviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  [registry grabRegistryWithWriteBlockAsync:v11];
}

- (void)sendXPCOOBKeyChanged:(id)changed
{
  changedCopy = changed;
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry sendXPCOOBKeyChanged:changedCopy];
}

- (void)deleteUnexpectedIDSPairedDevices
{
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry deleteUnexpectedIDSPairedDevices];
}

- (void)createDeviceFromPairingRequest:(id)request discoveredBy:(unint64_t)by withBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v11 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingDeviceID"];

  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = requestCopy;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "createDeviceFromPairingRequest: advertisedName: %{public}@, pairingID: %{public}@", buf, 0x16u);
    }
  }

  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F65D4;
  v19[3] = &unk_100179E18;
  v19[4] = self;
  v20 = requestCopy;
  v22 = blockCopy;
  byCopy = by;
  v21 = v11;
  v16 = blockCopy;
  v17 = v11;
  v18 = requestCopy;
  [registry xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:v18 completion:v19];
}

- (void)updateNRMutableDeviceFromEPDevice:(id)device withNRUUID:(id)d withBlock:(id)block
{
  deviceCopy = device;
  dCopy = d;
  blockCopy = block;
  v11 = dCopy;
  v12 = v11;
  if (!v11)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "updateNRMutableDeviceFromEPDevice: Received nil uuid, making up a whole new one", buf, 2u);
    }

    v12 = objc_opt_new();
  }

  name = [deviceCopy name];
  v15 = nr_daemon_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = nr_daemon_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [deviceCopy name];
      advertisedName = self->_advertisedName;
      *buf = 138544130;
      v36 = name2;
      v37 = 2114;
      v38 = advertisedName;
      v39 = 2114;
      v40 = v11;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "updateNRMutableDeviceFromEPDevice: EPDeviceAdvertisedName: %{public}@, _advertisedName: %{public}@, NRUUID: %{public}@, pairingID: %{public}@", buf, 0x2Au);
    }
  }

  if (!name)
  {
    name = self->_advertisedName;
  }

  uuid = [deviceCopy uuid];
  btAddress = [deviceCopy btAddress];
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000F712C;
  v28[3] = &unk_100179DF0;
  v29 = name;
  v30 = v12;
  v31 = uuid;
  v32 = btAddress;
  v33 = blockCopy;
  v34 = -30;
  v23 = blockCopy;
  v24 = btAddress;
  v25 = uuid;
  v26 = v12;
  v27 = name;
  [registry grabRegistryWithWriteBlockAsync:v28];
}

- (void)sendXPCDeviceNeedsPasscodeMessage:(id)message passcode:(id)passcode
{
  passcodeCopy = passcode;
  messageCopy = message;
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry sendXPCDeviceNeedsPasscodeMessage:messageCopy passcode:passcodeCopy];
}

- (void)getPairedPairingIDForBluetoothID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry getPairedPairingIDForBluetoothID:dCopy completion:completionCopy];
}

- (void)createLocalPairingStore:(id)store andNotifyPairingBeginning:(BOOL)beginning bluetoothIdentifier:(id)identifier withBlock:(id)block
{
  storeCopy = store;
  identifierCopy = identifier;
  blockCopy = block;
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F7A20;
  v17[3] = &unk_100179E40;
  v18 = storeCopy;
  selfCopy = self;
  beginningCopy = beginning;
  v20 = identifierCopy;
  v21 = blockCopy;
  v14 = blockCopy;
  v15 = identifierCopy;
  v16 = storeCopy;
  [registry grabRegistryWithWriteBlockAsync:v17];
}

- (NRPairingReport)pairingReport
{
  unpairHelper = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  pairingReport = [unpairHelper pairingReport];

  return pairingReport;
}

- (void)savePairingReport
{
  unpairHelper = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  [unpairHelper savePairingReport];
}

- (void)setPairingID:(id)d
{
  dCopy = d;
  v5 = [[EPSagaOperandUUID alloc] initWithUUID:dCopy];

  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  operands = [WeakRetained operands];
  [operands setObject:v5 forKeyedSubscript:@"extensiblePairingDeviceID"];

  v8 = objc_loadWeakRetained(&self->_routingSlipEntry);
  [v8 persist];
}

- (void)filePairingReport
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v5 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingDeviceID"];

  unpairHelper = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  [unpairHelper filePairingReportWithPairingID:v5];
}

- (void)unpairDeviceWithPairingID:(id)d obliterationString:(id)string shouldBrick:(id)brick storeUnpair:(id)unpair migrationUnpair:(id)migrationUnpair shouldPreserveESim:(id)sim pairingReport:(id)report remoteUnpairRequestUUID:(id)self0 shouldConnectionWithDevice:(BOOL)self1
{
  dCopy = d;
  stringCopy = string;
  brickCopy = brick;
  unpairCopy = unpair;
  migrationUnpairCopy = migrationUnpair;
  simCopy = sim;
  reportCopy = report;
  iDCopy = iD;
  v25 = +[NRQueue registryDaemonQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000F821C;
  v34[3] = &unk_100179E68;
  v34[4] = self;
  v35 = dCopy;
  v36 = stringCopy;
  v37 = brickCopy;
  v38 = unpairCopy;
  v39 = migrationUnpairCopy;
  v40 = simCopy;
  v41 = reportCopy;
  v42 = iDCopy;
  deviceCopy = device;
  v26 = iDCopy;
  v27 = reportCopy;
  v28 = simCopy;
  v29 = migrationUnpairCopy;
  v30 = unpairCopy;
  v31 = brickCopy;
  v32 = stringCopy;
  v33 = dCopy;
  [v25 dispatchAsync:v34];
}

- (void)pairingCompleted
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v4 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingDeviceID"];

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v4 UUIDString];
      v17 = 138543362;
      v18 = uUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionExtensiblePairing: Pairing is done for %{public}@.", &v17, 0xCu);
    }
  }

  v9 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v9 removeService:self->_extensiblePair];

  pairingReport = [(EPSagaTransactionExtensiblePairing *)self pairingReport];
  if ([pairingReport isErrorSet])
  {
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_routingSlipEntry);
    errors = [v11 errors];
    v13 = [errors count];

    if (!v13)
    {
      [(EPSagaTransactionExtensiblePairing *)self transactionDidComplete];
      registry = [(EPSagaTransactionExtensiblePairing *)self registry];
      mirrorOfActiveDevice = [registry mirrorOfActiveDevice];
      [(EPSagaTransactionExtensiblePairing *)self copyPropertiesToRTCReporter:mirrorOfActiveDevice];

      unpairHelper = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
      [unpairHelper addToOrCapOffRTCPairingMetric:0];

      goto LABEL_9;
    }
  }

  [(EPSagaTransactionExtensiblePairing *)self cancelWithError:0];
LABEL_9:
}

- (void)updateRegistryForUnpairing:(id)unpairing withBlock:(id)block
{
  unpairingCopy = unpairing;
  blockCopy = block;
  v8 = blockCopy;
  if (unpairingCopy)
  {
    pairingReport = [(EPSagaTransactionExtensiblePairing *)self pairingReport];
    registry = [(EPSagaTransactionExtensiblePairing *)self registry];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F8598;
    v13[3] = &unk_100179E90;
    v14 = pairingReport;
    v15 = unpairingCopy;
    selfCopy = self;
    v17 = v8;
    WeakRetained = pairingReport;
    [registry grabRegistryWithWriteBlockAsync:v13];

LABEL_5:
    goto LABEL_6;
  }

  if (blockCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    queue = [WeakRetained queue];
    dispatch_async(queue, v8);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)_cleanUpDiscoveredDevicesWithCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = collectionCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v15}];
        if (([v11 isActive] & 1) == 0 && (objc_msgSend(v11, "isPaired") & 1) == 0 && (objc_msgSend(v11, "isArchived") & 1) == 0)
        {
          v12 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
          [v4 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
  v14 = [v5 applyDiff:v13];
}

- (BOOL)isInternalInstall
{
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  isInternalInstall = [registry isInternalInstall];

  return isInternalInstall;
}

- (void)pushVersion4CompatibilityMessageIfNeeded
{
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry pushVersion4CompatibilityMessageIfNeeded];
}

- (void)sendXPCBTPairRequestMessage:(id)message withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [messageCopy UUIDString];
      *buf = 138543362;
      v23 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendXPCBTPairRequestMessage: pairingID=%{public}@, adding EPSagaOperandExtensiblePairingStartedKey to operands", buf, 0xCu);
    }
  }

  v12 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  operands = [WeakRetained operands];
  [operands setObject:v12 forKeyedSubscript:@"pairingStarted"];

  v15 = objc_loadWeakRetained(&self->_routingSlipEntry);
  [v15 persist];

  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F8C60;
  v19[3] = &unk_100176AE0;
  v20 = messageCopy;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = messageCopy;
  [registry grabRegistryWithWriteBlockAsync:v19];
}

- (void)voidIDSServices
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Suspending IDS services A and C.", v6, 2u);
    }
  }

  [(EPSagaTransactionExtensiblePairing *)self voidIDSService:objc_opt_class()];
  [(EPSagaTransactionExtensiblePairing *)self voidIDSService:objc_opt_class()];
}

- (void)voidIDSService:(Class)service
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained optionalServiceFromClass:service];

  v6 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v6 removeService:v7];

  [v7 invalidate];
}

- (void)invalidate
{
  [(EPSagaTransactionExtensiblePairing *)self initializeAllIDSChannelsBlock:0];
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v6 = [WeakRetained optionalServiceFromClass:objc_opt_class()];

  v4 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v4 removeService:v6];

  v5 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v5 removeService:self];
}

- (void)copyPropertiesToRTCReporter:(id)reporter
{
  reporterCopy = reporter;
  v7 = [reporterCopy objectForKeyedSubscript:@"systemBuildVersion"];
  v4 = [reporterCopy objectForKeyedSubscript:@"hwModelStr"];

  v5 = +[NRRTCPairingReporter sharedInstance];
  [v5 setGizmoHW:v4];

  v6 = +[NRRTCPairingReporter sharedInstance];
  [v6 setGizmoBuild:v7];
}

- (void)initializeAllIDSChannelsBlock:(id)block
{
  blockCopy = block;
  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry initializeAllIDSChannelsBlock:blockCopy];
}

- (void)invalidateIDSChannels
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating all IDS channels.", &v9, 0xCu);
    }
  }

  registry = [(EPSagaTransactionExtensiblePairing *)self registry];
  [registry invalidateIDSChannels];
}

- (NSUUID)pairingID
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v3 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingDeviceID"];

  return v3;
}

- (id)unpairHelper
{
  unpairHelper = self->_unpairHelper;
  if (!unpairHelper)
  {
    v4 = objc_alloc_init(EPSagaUnpairHelper);
    v5 = self->_unpairHelper;
    self->_unpairHelper = v4;

    [(EPSagaUnpairHelper *)self->_unpairHelper setDelegate:self];
    unpairHelper = self->_unpairHelper;
  }

  return unpairHelper;
}

- (id)routingSlipEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);

  return WeakRetained;
}

- (EPServiceRegistry)serviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);

  return WeakRetained;
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end