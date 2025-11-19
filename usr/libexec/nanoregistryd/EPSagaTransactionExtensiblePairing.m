@interface EPSagaTransactionExtensiblePairing
- (BOOL)isInternalInstall;
- (EPServiceRegistry)serviceRegistry;
- (EPTransactionDelegate)delegate;
- (NRPairingReport)pairingReport;
- (NSUUID)pairingID;
- (id)_diffsForSettingDeviceIsActive:(BOOL)a3 withPairingID:(id)a4 collection:(id)a5;
- (id)getLocalPairingStorePairingID:(id)a3;
- (id)makeLocalPairingStorePairingID:(id)a3;
- (id)registry;
- (id)routingSlipEntry;
- (id)unpairHelper;
- (void)_beginDirectBluetoothPairingTransaction;
- (void)_beginNetworkRelayBluetoothPairingTransaction;
- (void)_cleanUpDiscoveredDevicesWithCollection:(id)a3;
- (void)activateDevice:(id)a3 withCompletion:(id)a4;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)copyPropertiesToRTCReporter:(id)a3;
- (void)createDeviceFromPairingRequest:(id)a3 discoveredBy:(unint64_t)a4 withBlock:(id)a5;
- (void)createLocalPairingStore:(id)a3 andNotifyPairingBeginning:(BOOL)a4 bluetoothIdentifier:(id)a5 withBlock:(id)a6;
- (void)deleteUnexpectedIDSPairedDevices;
- (void)filePairingReport;
- (void)getPairedPairingIDForBluetoothID:(id)a3 completion:(id)a4;
- (void)initializeAllIDSChannelsBlock:(id)a3;
- (void)invalidate;
- (void)invalidateIDSChannels;
- (void)notifyPasscode:(id)a3;
- (void)pairingCompleted;
- (void)pushVersion4CompatibilityMessageIfNeeded;
- (void)savePairingReport;
- (void)sendXPCBTPairRequestMessage:(id)a3 withCompletion:(id)a4;
- (void)sendXPCDeviceNeedsPasscodeMessage:(id)a3 passcode:(id)a4;
- (void)sendXPCOOBKeyChanged:(id)a3;
- (void)setPairingID:(id)a3;
- (void)transactionDidComplete;
- (void)unpairDeviceWithPairingID:(id)a3 obliterationString:(id)a4 shouldBrick:(id)a5 storeUnpair:(id)a6 migrationUnpair:(id)a7 shouldPreserveESim:(id)a8 pairingReport:(id)a9 remoteUnpairRequestUUID:(id)a10 shouldConnectionWithDevice:(BOOL)a11;
- (void)updateNRMutableDeviceFromEPDevice:(id)a3 withNRUUID:(id)a4 withBlock:(id)a5;
- (void)updateRegistryForUnpairing:(id)a3 withBlock:(id)a4;
- (void)voidIDSService:(Class)a3;
- (void)voidIDSServices;
@end

@implementation EPSagaTransactionExtensiblePairing

- (id)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v3 = [WeakRetained serviceFromClass:objc_opt_class()];

  return v3;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionExtensiblePairing: cancelWithError: %@", &v12, 0xCu);
    }
  }

  if (!v4)
  {
    v8 = [(EPSagaTransactionExtensiblePairing *)self routingSlipEntry];
    v9 = [v8 transactionBeganWithThisNR];

    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = nrGetPairingError();
    }
  }

  v10 = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  v11 = [v10 startUnpairDueToError:v4];

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

- (void)notifyPasscode:(id)a3
{
  v3 = 8;
  if (self->_useNetworkRelayBluetoothPairing)
  {
    v3 = 16;
  }

  [*(&self->super.isa + v3) respondWithPasscode:a3];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NRFeatureFlags sharedInstance];
  nrFeatureFlags = self->_nrFeatureFlags;
  self->_nrFeatureFlags = v8;

  objc_storeWeak(&self->_routingSlipEntry, v7);
  objc_storeWeak(&self->_serviceRegistry, v6);
  [v6 addService:self];

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
  v17 = [v16 integerValue];

  v18 = sub_100052C60(v17);
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
  v11 = [v10 queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F54F4;
  v12[3] = &unk_100175B90;
  v12[4] = self;
  [v9 checkIfFlaggedForRecoveryWithQueue:v11 completion:v12];
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
  v8 = [v7 queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F58A8;
  v9[3] = &unk_100175B90;
  v9[4] = self;
  [v6 checkIfFlaggedForRecoveryWithQueue:v8 completion:v9];
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

    v7 = [(EPSagaTransactionExtensiblePairing *)self delegate];
    [v7 transactionDidComplete:self];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  obj = a3;
  v6 = a4;
  objc_storeWeak(&self->_routingSlipEntry, obj);
  objc_storeWeak(&self->_serviceRegistry, v6);

  self->_transactionComplete = 0;
  v7 = [obj objectForKeyedSubscript:@"extensiblePairingDeviceID"];
  v8 = [obj objectForKeyedSubscript:@"pairingStarted"];
  v9 = v8;
  if (v7 && [v8 BOOLValue])
  {
    v10 = [obj routingSlipError];
    [(EPSagaTransactionExtensiblePairing *)self cancelWithError:v10];
  }

  [(EPSagaTransactionExtensiblePairing *)self transactionDidComplete];
}

- (id)_diffsForSettingDeviceIsActive:(BOOL)a3 withPairingID:(id)a4 collection:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [v8 activeDeviceID];

  v11 = +[NSDate date];
  if (!v7)
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v12 = +[NSMutableDictionary dictionary];
    if (([v7 isEqual:v10] & 1) == 0)
    {
      v13 = [NRMutableDevice diffsToActivate:1 withDate:v11];
      [v12 addEntriesFromDictionary:v13];
    }

    v14 = [NRMutableDevice diffsToSetStatusCode:1];
    [v12 addEntriesFromDictionary:v14];

    v15 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v12];
    v16 = [[NRDeviceDiffType alloc] initWithDiff:v15 andChangeType:1];
    [v9 setObject:v16 forKeyedSubscript:v7];

LABEL_6:
    if (!v10 || [v10 isEqual:v7] && v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = v7;

  [v17 isEqual:v17];
  v10 = v17;
LABEL_11:
  v18 = +[NSMutableDictionary dictionary];
  v19 = [NRMutableDevice diffsToActivate:0 withDate:v11];
  [v18 addEntriesFromDictionary:v19];

  v20 = +[NRMutableDevice diffsToClearStatusCodeAndCompatibilityState];
  [v18 addEntriesFromDictionary:v20];

  v21 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v18];
  v22 = [[NRDeviceDiffType alloc] initWithDiff:v21 andChangeType:1];
  [v9 setObject:v22 forKeyedSubscript:v10];

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

- (id)getLocalPairingStorePairingID:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndex:0];
  v6 = [v5 stringByAppendingPathComponent:@"DeviceRegistry"];

  v7 = [v3 UUIDString];

  v8 = [v6 stringByAppendingPathComponent:v7];

  return v8;
}

- (id)makeLocalPairingStorePairingID:(id)a3
{
  v3 = [(EPSagaTransactionExtensiblePairing *)self getLocalPairingStorePairingID:a3];
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

- (void)activateDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPSagaTransactionExtensiblePairing *)self registry];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F62B4;
  v11[3] = &unk_1001762B0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 grabRegistryWithWriteBlockAsync:v11];
}

- (void)sendXPCOOBKeyChanged:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v5 sendXPCOOBKeyChanged:v4];
}

- (void)deleteUnexpectedIDSPairedDevices
{
  v2 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v2 deleteUnexpectedIDSPairedDevices];
}

- (void)createDeviceFromPairingRequest:(id)a3 discoveredBy:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
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
      v25 = v8;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "createDeviceFromPairingRequest: advertisedName: %{public}@, pairingID: %{public}@", buf, 0x16u);
    }
  }

  v15 = [(EPSagaTransactionExtensiblePairing *)self registry];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F65D4;
  v19[3] = &unk_100179E18;
  v19[4] = self;
  v20 = v8;
  v22 = v9;
  v23 = a4;
  v21 = v11;
  v16 = v9;
  v17 = v11;
  v18 = v8;
  [v15 xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:v18 completion:v19];
}

- (void)updateNRMutableDeviceFromEPDevice:(id)a3 withNRUUID:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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

  v14 = [v8 name];
  v15 = nr_daemon_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = nr_daemon_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 name];
      advertisedName = self->_advertisedName;
      *buf = 138544130;
      v36 = v18;
      v37 = 2114;
      v38 = advertisedName;
      v39 = 2114;
      v40 = v11;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "updateNRMutableDeviceFromEPDevice: EPDeviceAdvertisedName: %{public}@, _advertisedName: %{public}@, NRUUID: %{public}@, pairingID: %{public}@", buf, 0x2Au);
    }
  }

  if (!v14)
  {
    v14 = self->_advertisedName;
  }

  v20 = [v8 uuid];
  v21 = [v8 btAddress];
  v22 = [(EPSagaTransactionExtensiblePairing *)self registry];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000F712C;
  v28[3] = &unk_100179DF0;
  v29 = v14;
  v30 = v12;
  v31 = v20;
  v32 = v21;
  v33 = v10;
  v34 = -30;
  v23 = v10;
  v24 = v21;
  v25 = v20;
  v26 = v12;
  v27 = v14;
  [v22 grabRegistryWithWriteBlockAsync:v28];
}

- (void)sendXPCDeviceNeedsPasscodeMessage:(id)a3 passcode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v8 sendXPCDeviceNeedsPasscodeMessage:v7 passcode:v6];
}

- (void)getPairedPairingIDForBluetoothID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v8 getPairedPairingIDForBluetoothID:v7 completion:v6];
}

- (void)createLocalPairingStore:(id)a3 andNotifyPairingBeginning:(BOOL)a4 bluetoothIdentifier:(id)a5 withBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(EPSagaTransactionExtensiblePairing *)self registry];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F7A20;
  v17[3] = &unk_100179E40;
  v18 = v10;
  v19 = self;
  v22 = a4;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 grabRegistryWithWriteBlockAsync:v17];
}

- (NRPairingReport)pairingReport
{
  v2 = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  v3 = [v2 pairingReport];

  return v3;
}

- (void)savePairingReport
{
  v2 = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  [v2 savePairingReport];
}

- (void)setPairingID:(id)a3
{
  v4 = a3;
  v5 = [[EPSagaOperandUUID alloc] initWithUUID:v4];

  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v7 = [WeakRetained operands];
  [v7 setObject:v5 forKeyedSubscript:@"extensiblePairingDeviceID"];

  v8 = objc_loadWeakRetained(&self->_routingSlipEntry);
  [v8 persist];
}

- (void)filePairingReport
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v5 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingDeviceID"];

  v4 = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
  [v4 filePairingReportWithPairingID:v5];
}

- (void)unpairDeviceWithPairingID:(id)a3 obliterationString:(id)a4 shouldBrick:(id)a5 storeUnpair:(id)a6 migrationUnpair:(id)a7 shouldPreserveESim:(id)a8 pairingReport:(id)a9 remoteUnpairRequestUUID:(id)a10 shouldConnectionWithDevice:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = +[NRQueue registryDaemonQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000F821C;
  v34[3] = &unk_100179E68;
  v34[4] = self;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v43 = a11;
  v26 = v24;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = v18;
  v33 = v17;
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
      v8 = [v4 UUIDString];
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionExtensiblePairing: Pairing is done for %{public}@.", &v17, 0xCu);
    }
  }

  v9 = objc_loadWeakRetained(&self->_serviceRegistry);
  [v9 removeService:self->_extensiblePair];

  v10 = [(EPSagaTransactionExtensiblePairing *)self pairingReport];
  if ([v10 isErrorSet])
  {
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_routingSlipEntry);
    v12 = [v11 errors];
    v13 = [v12 count];

    if (!v13)
    {
      [(EPSagaTransactionExtensiblePairing *)self transactionDidComplete];
      v14 = [(EPSagaTransactionExtensiblePairing *)self registry];
      v15 = [v14 mirrorOfActiveDevice];
      [(EPSagaTransactionExtensiblePairing *)self copyPropertiesToRTCReporter:v15];

      v16 = [(EPSagaTransactionExtensiblePairing *)self unpairHelper];
      [v16 addToOrCapOffRTCPairingMetric:0];

      goto LABEL_9;
    }
  }

  [(EPSagaTransactionExtensiblePairing *)self cancelWithError:0];
LABEL_9:
}

- (void)updateRegistryForUnpairing:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(EPSagaTransactionExtensiblePairing *)self pairingReport];
    v10 = [(EPSagaTransactionExtensiblePairing *)self registry];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F8598;
    v13[3] = &unk_100179E90;
    v14 = v9;
    v15 = v6;
    v16 = self;
    v17 = v8;
    WeakRetained = v9;
    [v10 grabRegistryWithWriteBlockAsync:v13];

LABEL_5:
    goto LABEL_6;
  }

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    v12 = [WeakRetained queue];
    dispatch_async(v12, v8);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)_cleanUpDiscoveredDevicesWithCollection:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
  v2 = [(EPSagaTransactionExtensiblePairing *)self registry];
  v3 = [v2 isInternalInstall];

  return v3;
}

- (void)pushVersion4CompatibilityMessageIfNeeded
{
  v2 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v2 pushVersion4CompatibilityMessageIfNeeded];
}

- (void)sendXPCBTPairRequestMessage:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 UUIDString];
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendXPCBTPairRequestMessage: pairingID=%{public}@, adding EPSagaOperandExtensiblePairingStartedKey to operands", buf, 0xCu);
    }
  }

  v12 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v14 = [WeakRetained operands];
  [v14 setObject:v12 forKeyedSubscript:@"pairingStarted"];

  v15 = objc_loadWeakRetained(&self->_routingSlipEntry);
  [v15 persist];

  v16 = [(EPSagaTransactionExtensiblePairing *)self registry];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F8C60;
  v19[3] = &unk_100176AE0;
  v20 = v6;
  v21 = v7;
  v17 = v7;
  v18 = v6;
  [v16 grabRegistryWithWriteBlockAsync:v19];
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

- (void)voidIDSService:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v7 = [WeakRetained optionalServiceFromClass:a3];

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

- (void)copyPropertiesToRTCReporter:(id)a3
{
  v3 = a3;
  v7 = [v3 objectForKeyedSubscript:@"systemBuildVersion"];
  v4 = [v3 objectForKeyedSubscript:@"hwModelStr"];

  v5 = +[NRRTCPairingReporter sharedInstance];
  [v5 setGizmoHW:v4];

  v6 = +[NRRTCPairingReporter sharedInstance];
  [v6 setGizmoBuild:v7];
}

- (void)initializeAllIDSChannelsBlock:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v5 initializeAllIDSChannelsBlock:v4];
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

  v8 = [(EPSagaTransactionExtensiblePairing *)self registry];
  [v8 invalidateIDSChannels];
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