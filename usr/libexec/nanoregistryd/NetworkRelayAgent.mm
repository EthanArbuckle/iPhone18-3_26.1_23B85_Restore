@interface NetworkRelayAgent
+ (BOOL)_shouldSilentlyRetryNetworkRelayPairingForError:(id)error;
+ (id)networkRelayIdentifierForBluetoothIdentifier:(id)identifier;
+ (id)sharedInstance;
- (NSSet)migrationCandidates;
- (NSString)description;
- (NetworkRelayAgent)init;
- (void)_notifyDelegatesOfPairingCompletionWithIdentifier:(id)identifier error:(id)error;
- (void)_notifyDelegatesOfPreviouslyPairedBluetoothIdentifiers:(id)identifiers;
- (void)_notifyDelegatesOfUnpairingCompletionWithError:(id)error;
- (void)_pairWithCandidate:(id)candidate withPreSharedAuthData:(id)data isAltAccountPairing:(BOOL)pairing;
- (void)_requestPINPairingForCandidateWithIdentifier:(id)identifier;
- (void)abortCurrentPairing;
- (void)addDelegate:(id)delegate;
- (void)addMigrationScanCandidates:(id)candidates;
- (void)dealloc;
- (void)deviceHasUnpairedBluetooth:(id)bluetooth;
- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type;
- (void)invalidatePairingManagerIfIdle;
- (void)migrationPairWithCandidateWithBluetoothIdentifier:(id)identifier isAltAccountPairing:(BOOL)pairing completion:(id)completion;
- (void)passPINAuthDataToPairingCandidate:(id)candidate isAltAccountPairing:(BOOL)pairing;
- (void)removeAllMigrationScanCandidates;
- (void)removeDelegate:(id)delegate;
- (void)removeMigrationScanCandidates:(id)candidates;
- (void)requestMigrationFromCandidateWithNetworkRelayIdentifier:(id)identifier completion:(id)completion;
- (void)requestPINPairingForCandidateWithIdentifier:(id)identifier;
- (void)requestPreSharedAuthForCandidateWithIdentifier:(id)identifier preSharedAuthData:(id)data isAltAccountPairing:(BOOL)pairing;
- (void)reset;
- (void)resetMigrationPairingManager;
- (void)setHasPairingClients:(BOOL)clients;
- (void)startMonitoringDeviceWithBluetoothUUID:(id)d;
- (void)startPushingCandidates;
- (void)startScanningForCandidates;
- (void)startScanningForMigrationCandidates;
- (void)stopMonitoring;
- (void)stopPushingCandidates;
- (void)stopScanningForCandidates;
- (void)stopScanningForMigrationCandidates;
- (void)unpairNetworkRelayDeviceWithNetworkRelayIdentifier:(id)identifier;
@end

@implementation NetworkRelayAgent

- (NetworkRelayAgent)init
{
  v27.receiver = self;
  v27.super_class = NetworkRelayAgent;
  v2 = [(NetworkRelayAgent *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanoregistry.networkrelayagent", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    monitor = v2->_monitor;
    v2->_monitor = 0;

    v7 = objc_alloc_init(NSMutableDictionary);
    candidateExtendedMetadata = v2->_candidateExtendedMetadata;
    v2->_candidateExtendedMetadata = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    migrationCandidates = v2->_migrationCandidates;
    v2->_migrationCandidates = v9;

    v11 = objc_alloc_init(NSMutableSet);
    requestedMigrationScanIdentifiers = v2->_requestedMigrationScanIdentifiers;
    v2->_requestedMigrationScanIdentifiers = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    identifierCandidateMap = v2->_identifierCandidateMap;
    v2->_identifierCandidateMap = v13;

    v15 = objc_alloc_init(NSMutableSet);
    authRequestPendingIdentifiers = v2->_authRequestPendingIdentifiers;
    v2->_authRequestPendingIdentifiers = v15;

    v17 = objc_alloc_init(NSMutableSet);
    globalPresharedAuthRequestedIdentifiers = v2->_globalPresharedAuthRequestedIdentifiers;
    v2->_globalPresharedAuthRequestedIdentifiers = v17;

    activeMigrationScanIdentifiers = v2->_activeMigrationScanIdentifiers;
    v2->_activeMigrationScanIdentifiers = 0;

    monitoringBluetoothUUID = v2->_monitoringBluetoothUUID;
    v2->_monitoringBluetoothUUID = 0;

    *&v2->_scanningForCandidates = 0;
    v2->_pairingInProgress = 0;
    pendingPreSharedPairingCandidateIdentifier = v2->_pendingPreSharedPairingCandidateIdentifier;
    v2->_pendingPreSharedPairingCandidateIdentifier = 0;

    pendingAuthData = v2->_pendingAuthData;
    v2->_pendingAuthData = 0;

    pendingPINPairingCandidateIdentifier = v2->_pendingPINPairingCandidateIdentifier;
    v2->_pendingPINPairingCandidateIdentifier = 0;

    v24 = +[NSHashTable weakObjectsHashTable];
    weakDelegates = v2->_weakDelegates;
    v2->_weakDelegates = v24;
  }

  return v2;
}

- (void)dealloc
{
  monitor = self->_monitor;
  self->_monitor = 0;

  v4.receiver = self;
  v4.super_class = NetworkRelayAgent;
  [(NetworkRelayAgent *)&v4 dealloc];
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100064584;
  v10 = sub_100064594;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006459C;
  v5[3] = &unk_100176950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)reset
{
  [(NSMutableDictionary *)self->_identifierCandidateMap removeAllObjects];
  [(NSMutableSet *)self->_authRequestPendingIdentifiers removeAllObjects];
  [(NSMutableSet *)self->_globalPresharedAuthRequestedIdentifiers removeAllObjects];
  pendingPreSharedPairingCandidateIdentifier = self->_pendingPreSharedPairingCandidateIdentifier;
  self->_pendingPreSharedPairingCandidateIdentifier = 0;

  pendingAuthData = self->_pendingAuthData;
  self->_pendingAuthData = 0;

  pendingPINPairingCandidateIdentifier = self->_pendingPINPairingCandidateIdentifier;
  self->_pendingPINPairingCandidateIdentifier = 0;

  self->_pendingIsAltAccountPairing = 0;
}

- (void)setHasPairingClients:(BOOL)clients
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100064740;
  v4[3] = &unk_100176198;
  v4[4] = self;
  clientsCopy = clients;
  dispatch_async(queue, v4);
}

- (void)invalidatePairingManagerIfIdle
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000647D0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000649A0;
    v7[3] = &unk_100175598;
    v7[4] = self;
    v8 = delegateCopy;
    dispatch_async(queue, v7);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100064A54;
    v7[3] = &unk_100175598;
    v7[4] = self;
    v8 = delegateCopy;
    dispatch_async(queue, v7);
  }
}

- (void)startMonitoringDeviceWithBluetoothUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100064B48;
    v8[3] = &unk_100175598;
    v9 = dCopy;
    selfCopy = self;
    dispatch_async(queue, v8);
    v7 = v9;
  }

  else
  {
    v7 = link_monitor_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid bluetooth UUID to start monitoring", buf, 2u);
    }
  }
}

- (void)stopMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064D1C;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)abortCurrentPairing
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[NetworkRelayAgent abortCurrentPairing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064EA8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startScanningForCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[NetworkRelayAgent startScanningForCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_scanningForCandidates)
  {
    v4 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning already in progress", buf, 2u);
    }
  }

  else if (self->_pairingManager)
  {
    v5 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reuse existing NRDevicePairingManager to scan for candidates", buf, 2u);
    }

    [(NetworkRelayAgent *)self _startScanningForCandidates];
  }

  else
  {
    v6 = objc_alloc_init(NRDevicePairingCriteria);
    [v6 setPairingTransport:1];
    [v6 setDeviceType:1];
    [v6 setRssi:&off_100186D78];
    objc_initWeak(buf, self);
    v7 = [[NRDevicePairingManager alloc] initWithIdentifier:0 pairingCriteria:v6 metadata:0 queue:self->_queue];
    pairingManager = self->_pairingManager;
    self->_pairingManager = v7;

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000653CC;
    v18[3] = &unk_100177C80;
    objc_copyWeak(&v19, buf);
    [(NRDevicePairingManager *)self->_pairingManager setCandidateDiscoveredHandler:v18];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100065BAC;
    v16[3] = &unk_100177C80;
    objc_copyWeak(&v17, buf);
    [(NRDevicePairingManager *)self->_pairingManager setCandidateLostHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100065EFC;
    v14[3] = &unk_100177CA8;
    objc_copyWeak(&v15, buf);
    [(NRDevicePairingManager *)self->_pairingManager setInvalidationHandler:v14];
    v9 = self->_pairingManager;
    if (v9)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100066194;
      v11[3] = &unk_100177CA8;
      objc_copyWeak(&v12, buf);
      [(NRDevicePairingManager *)v9 activateWithCompletion:v11];
      objc_destroyWeak(&v12);
    }

    else
    {
      v10 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to initialize NRDevicePairingManager", v13, 2u);
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)stopScanningForCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NetworkRelayAgent stopScanningForCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (self->_scanningForCandidates)
  {
    self->_scanningForCandidates = 0;
    [(NRDevicePairingManager *)self->_pairingManager cancelDiscovery];
  }

  else
  {
    v4 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Currently not scanning for candidates", &v5, 2u);
    }
  }
}

- (void)startPushingCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[NetworkRelayAgent startPushingCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066568;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopPushingCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[NetworkRelayAgent stopPushingCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066BA8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)requestPreSharedAuthForCandidateWithIdentifier:(id)identifier preSharedAuthData:(id)data isAltAccountPairing:(BOOL)pairing
{
  identifierCopy = identifier;
  dataCopy = data;
  v10 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting to pair using pre-shared auth data with candidate with identifier = %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100066D80;
  v14[3] = &unk_100175CE0;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = dataCopy;
  pairingCopy = pairing;
  v12 = dataCopy;
  v13 = identifierCopy;
  dispatch_async(queue, v14);
}

- (void)_pairWithCandidate:(id)candidate withPreSharedAuthData:(id)data isAltAccountPairing:(BOOL)pairing
{
  pairingCopy = pairing;
  candidateCopy = candidate;
  dataCopy = data;
  pendingPreSharedPairingCandidateIdentifier = self->_pendingPreSharedPairingCandidateIdentifier;
  if (*&self->_pendingPreSharedPairingCandidateIdentifier != 0)
  {
    self->_pendingPreSharedPairingCandidateIdentifier = 0;

    pendingAuthData = self->_pendingAuthData;
    self->_pendingAuthData = 0;

    self->_pendingIsAltAccountPairing = 0;
    [(NetworkRelayAgent *)self stopScanningForCandidates];
  }

  v12 = objc_alloc_init(NRDevicePairingTarget);
  [v12 setCandidate:candidateCopy];
  [v12 setAuthMethod:1];
  [v12 setAuthData:dataCopy];
  if (pairingCopy)
  {
    v13 = objc_alloc_init(NRDevicePairingProperties);
    [v13 setIsAltAccountPairing:1];
    [v12 setProperties:v13];
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100067198;
  v31[3] = &unk_100177D68;
  v31[4] = self;
  v14 = candidateCopy;
  v32 = v14;
  v15 = dataCopy;
  v33 = v15;
  v34 = pairingCopy;
  v16 = objc_retainBlock(v31);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100064584;
  v29[4] = sub_100064594;
  v30 = 0;
  pairingManager = self->_pairingManager;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000674CC;
  v24[3] = &unk_100177D90;
  v18 = v14;
  v28 = v29;
  v25 = v18;
  selfCopy = self;
  v27 = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100067614;
  v20[3] = &unk_100177DB8;
  v20[4] = self;
  v19 = v27;
  v22 = v29;
  v23 = 1;
  v21 = v19;
  [(NRDevicePairingManager *)pairingManager startPairingDevice:v12 withCompletion:v24 resultBlock:v20];

  _Block_object_dispose(v29, 8);
}

- (void)requestPINPairingForCandidateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000678D0;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)_requestPINPairingForCandidateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting PIN pairing for candidate with identifier = %{public}@", buf, 0xCu);
  }

  pendingPINPairingCandidateIdentifier = self->_pendingPINPairingCandidateIdentifier;
  self->_pendingPINPairingCandidateIdentifier = 0;

  if (!self->_pairingInProgress)
  {
    self->_pairingInProgress = 1;
  }

  v7 = [(NSMutableDictionary *)self->_identifierCandidateMap objectForKeyedSubscript:identifierCopy];
  v8 = networkrelay_pairing_log_handle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v16 = 2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling requestAuthMethodForDevice with method %lu on %@", buf, 0x16u);
    }

    pairingManager = self->_pairingManager;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100067BF4;
    v13[3] = &unk_100177960;
    v13[4] = self;
    v14 = identifierCopy;
    [(NRDevicePairingManager *)pairingManager requestAuthMethodForDevice:v7 authMethod:2 withCompletion:v13];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to call requestAuthMethodForDevice on an unknown candidate with identifier %@", buf, 0xCu);
    }

    requestedPINPairingCandidateIdentifier = self->_requestedPINPairingCandidateIdentifier;
    self->_requestedPINPairingCandidateIdentifier = 0;

    v12 = nrGetPairingError();
    [(NetworkRelayAgent *)self _networkRelayAgentPairingCompletedWithIdentifier:0 error:v12];
  }
}

- (void)passPINAuthDataToPairingCandidate:(id)candidate isAltAccountPairing:(BOOL)pairing
{
  candidateCopy = candidate;
  v7 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    requestedPINPairingCandidateIdentifier = self->_requestedPINPairingCandidateIdentifier;
    *buf = 138412546;
    v15 = candidateCopy;
    v16 = 2114;
    v17 = requestedPINPairingCandidateIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Passing PIN data %@ for pairing with candidate with identifier %{public}@", buf, 0x16u);
  }

  if (candidateCopy && self->_requestedPINPairingCandidateIdentifier && [candidateCopy length])
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100067E38;
    v10[3] = &unk_100177E58;
    v10[4] = self;
    v12 = 2;
    v11 = candidateCopy;
    pairingCopy = pairing;
    dispatch_async(queue, v10);
  }
}

+ (BOOL)_shouldSilentlyRetryNetworkRelayPairingForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqual:NRDevicePairingErrorDomain] || objc_msgSend(errorCopy, "code") != -3006 && objc_msgSend(errorCopy, "code") != -3007 || (objc_msgSend(errorCopy, "userInfo"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_10;
  }

  v6 = v5;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:NRDevicePairingErrorOriginalNRUUIDKey];

  if (!v8)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error = device already paired at NetworkRelay, should unpair and try again", v12, 2u);
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (NSSet)migrationCandidates
{
  allKeys = [(NSMutableDictionary *)self->_migrationCandidates allKeys];
  v3 = [NSSet setWithArray:allKeys];

  return v3;
}

- (void)addMigrationScanCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NetworkRelayAgent addMigrationScanCandidates:]";
    v10 = 2112;
    v11 = candidatesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  [(NSMutableSet *)self->_requestedMigrationScanIdentifiers unionSet:candidatesCopy];
  v6 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    requestedMigrationScanIdentifiers = self->_requestedMigrationScanIdentifiers;
    v8 = 136315394;
    v9 = "[NetworkRelayAgent addMigrationScanCandidates:]";
    v10 = 2112;
    v11 = requestedMigrationScanIdentifiers;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: _migrationScanIdentifiers = %@", &v8, 0x16u);
  }
}

- (void)removeMigrationScanCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NetworkRelayAgent removeMigrationScanCandidates:]";
    v10 = 2112;
    v11 = candidatesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  [(NSMutableSet *)self->_requestedMigrationScanIdentifiers minusSet:candidatesCopy];
  v6 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    requestedMigrationScanIdentifiers = self->_requestedMigrationScanIdentifiers;
    v8 = 136315394;
    v9 = "[NetworkRelayAgent removeMigrationScanCandidates:]";
    v10 = 2112;
    v11 = requestedMigrationScanIdentifiers;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: _migrationScanIdentifiers = %@", &v8, 0x16u);
  }
}

- (void)removeAllMigrationScanCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NetworkRelayAgent removeAllMigrationScanCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(NSMutableSet *)self->_requestedMigrationScanIdentifiers removeAllObjects];
}

- (void)startScanningForMigrationCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[NetworkRelayAgent startScanningForMigrationCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(NSMutableSet *)self->_requestedMigrationScanIdentifiers count])
  {
    if (self->_migrationPairingManager)
    {
      v4 = [(NSMutableSet *)self->_requestedMigrationScanIdentifiers isEqual:self->_activeMigrationScanIdentifiers];
      v5 = networkrelay_pairing_log_handle();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v6)
        {
          requestedMigrationScanIdentifiers = self->_requestedMigrationScanIdentifiers;
          *buf = 138412290;
          v33 = requestedMigrationScanIdentifiers;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request to start scanning with identical set of migration candidates, no need to reset manager. current %@", buf, 0xCu);
        }

        [(NRDevicePairingManager *)self->_migrationPairingManager startDiscoveryWithCompletion:&stru_100177E78];
        return;
      }

      if (v6)
      {
        v10 = self->_requestedMigrationScanIdentifiers;
        activeMigrationScanIdentifiers = self->_activeMigrationScanIdentifiers;
        *buf = 138412546;
        v33 = activeMigrationScanIdentifiers;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request to start scanning with different set of migration candidates, resetting. current %@, new %@", buf, 0x16u);
      }

      [(NetworkRelayAgent *)self resetMigrationPairingManager];
    }

    v11 = objc_alloc_init(NSMutableArray);
    v12 = self->_requestedMigrationScanIdentifiers;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000693B8;
    v30[3] = &unk_100176670;
    v13 = v11;
    v31 = v13;
    [(NSMutableSet *)v12 enumerateObjectsUsingBlock:v30];
    v14 = objc_alloc_init(NRDevicePairingCriteria);
    [v14 setPairingTransport:1];
    [v14 setDeviceType:1];
    [v14 setMigrationPairing:1];
    v15 = [NSArray arrayWithArray:v13];
    [v14 setNrDeviceIdentifiers:v15];

    v16 = [[NRDevicePairingManager alloc] initWithIdentifier:0 pairingCriteria:v14 metadata:0 queue:self->_queue];
    migrationPairingManager = self->_migrationPairingManager;
    self->_migrationPairingManager = v16;

    if (self->_migrationPairingManager)
    {
      objc_initWeak(buf, self);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100069430;
      v28[3] = &unk_100177C80;
      objc_copyWeak(&v29, buf);
      [(NRDevicePairingManager *)self->_migrationPairingManager setCandidateDiscoveredHandler:v28];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100069668;
      v26[3] = &unk_100177C80;
      objc_copyWeak(&v27, buf);
      [(NRDevicePairingManager *)self->_migrationPairingManager setCandidateLostHandler:v26];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100069880;
      v24[3] = &unk_100177CA8;
      objc_copyWeak(&v25, buf);
      [(NRDevicePairingManager *)self->_migrationPairingManager setInvalidationHandler:v24];
      v18 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Activating NRDevicePairingManager for migration", v23, 2u);
      }

      v19 = self->_migrationPairingManager;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100069954;
      v21[3] = &unk_100177EA0;
      objc_copyWeak(&v22, buf);
      v21[4] = self;
      [(NRDevicePairingManager *)v19 activateWithCompletion:v21];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v20 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to initialize NRDevicePairingManager", buf, 2u);
      }
    }
  }

  else
  {
    v8 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Requesting to start scanning with an empty set of candidate identifiers!", buf, 2u);
    }
  }
}

- (void)stopScanningForMigrationCandidates
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NetworkRelayAgent stopScanningForMigrationCandidates]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  if (self->_migrationPairingManager)
  {
    v4 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      migrationPairingManager = self->_migrationPairingManager;
      v7 = 136315394;
      v8 = "[NetworkRelayAgent stopScanningForMigrationCandidates]";
      v9 = 2112;
      v10 = migrationPairingManager;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Calling cancelDiscovery on %@", &v7, 0x16u);
    }

    [(NRDevicePairingManager *)self->_migrationPairingManager cancelDiscovery];
  }

  if (![(NSMutableSet *)self->_requestedMigrationScanIdentifiers count])
  {
    v6 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NetworkRelayAgent stopScanningForMigrationCandidates]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s No more migration candidates to scan for", &v7, 0xCu);
    }

    [(NetworkRelayAgent *)self resetMigrationPairingManager];
  }
}

- (void)resetMigrationPairingManager
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NetworkRelayAgent resetMigrationPairingManager]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NRDevicePairingManager *)self->_migrationPairingManager invalidate];
  migrationPairingManager = self->_migrationPairingManager;
  self->_migrationPairingManager = 0;

  [(NSMutableDictionary *)self->_migrationCandidates removeAllObjects];
  activeMigrationScanIdentifiers = self->_activeMigrationScanIdentifiers;
  self->_activeMigrationScanIdentifiers = 0;
}

- (void)requestMigrationFromCandidateWithNetworkRelayIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[NetworkRelayAgent requestMigrationFromCandidateWithNetworkRelayIdentifier:completion:]";
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s NetworkRelay identifier: %@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_migrationCandidates objectForKeyedSubscript:identifierCopy];
  v10 = networkrelay_pairing_log_handle();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v18 = 3;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting auth method %lu from migration candidate with NetworkRelay identifier: %@", buf, 0x16u);
    }

    migrationPairingManager = self->_migrationPairingManager;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006A130;
    v14[3] = &unk_100177938;
    v15 = identifierCopy;
    v16 = completionCopy;
    [(NRDevicePairingManager *)migrationPairingManager requestAuthMethodForDevice:v9 authMethod:3 withCompletion:v14];

    v13 = v15;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to locate migration candidate with NetworkRelay identifier: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v13 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:6153 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v13);
LABEL_11:
  }
}

- (void)migrationPairWithCandidateWithBluetoothIdentifier:(id)identifier isAltAccountPairing:(BOOL)pairing completion:(id)completion
{
  pairingCopy = pairing;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[NetworkRelayAgent migrationPairWithCandidateWithBluetoothIdentifier:isAltAccountPairing:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 1024;
    LODWORD(v24) = pairingCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s bluetooth identifier: %@, isAltAccount: %{BOOL}d", buf, 0x1Cu);
  }

  v11 = [(NSMutableDictionary *)self->_migrationCandidates objectForKeyedSubscript:identifierCopy];
  if (v11)
  {
    v12 = objc_alloc_init(NRDevicePairingTarget);
    [v12 setCandidate:v11];
    [v12 setAuthMethod:3];
    v13 = +[NSData data];
    [v12 setAuthData:v13];

    if (pairingCopy)
    {
      v14 = objc_alloc_init(NRDevicePairingProperties);
      [v14 setIsAltAccountPairing:1];
      [v12 setProperties:v14];
    }

    v15 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NetworkRelayAgent migrationPairWithCandidateWithBluetoothIdentifier:isAltAccountPairing:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s calling startPairing for migration on candidate %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_100064584;
    v25 = sub_100064594;
    v26 = 0;
    migrationPairingManager = self->_migrationPairingManager;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10006A60C;
    v20[3] = &unk_100177EC8;
    v20[4] = buf;
    objc_copyWeak(&v21, &location);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006A71C;
    v18[3] = &unk_100177EF0;
    objc_copyWeak(v19, &location);
    v19[1] = 3;
    v18[4] = buf;
    [(NRDevicePairingManager *)migrationPairingManager startPairingDevice:v12 withCompletion:v20 resultBlock:v18];
    objc_destroyWeak(v19);
    objc_destroyWeak(&v21);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  v17 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = identifierCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to locate migration candidate with bluetooth identifier: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v12 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:6154 userInfo:0];
    completionCopy[2](completionCopy, v12);
LABEL_13:
  }
}

- (void)_notifyDelegatesOfPairingCompletionWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_weakDelegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 networkRelayPairingCompletedWithIdentifier:identifierCopy error:{errorCopy, v14}];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)unpairNetworkRelayDeviceWithNetworkRelayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [identifierCopy UUIDString];
    *buf = 138543362;
    v14 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unpairing NetworkRelay device with Network Relay Identifier %{public}@", buf, 0xCu);
  }

  v7 = [[NRDeviceIdentifier alloc] initWithUUID:identifierCopy];
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006AB50;
  v10[3] = &unk_100177960;
  v11 = v7;
  selfCopy = self;
  v9 = v7;
  [NRDevicePairingManager unpairDevice:v9 queue:queue withCompletion:v10];
}

- (void)_notifyDelegatesOfUnpairingCompletionWithError:(id)error
{
  errorCopy = error;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_weakDelegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 networkRelayUnpairingCompletedWithError:{errorCopy, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDelegatesOfPreviouslyPairedBluetoothIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_weakDelegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 networkRelayPairFoundPreviouslyPairedBluetoothIdentifiers:{identifiersCopy, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (id)sharedInstance
{
  if (qword_1001B3878 != -1)
  {
    sub_100100BC8();
  }

  v3 = qword_1001B3870;

  return v3;
}

+ (id)networkRelayIdentifierForBluetoothIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:?];
    v4 = v3;
    if (v3)
    {
      nrDeviceIdentifier = [v3 nrDeviceIdentifier];
    }

    else
    {
      nrDeviceIdentifier = 0;
    }
  }

  else
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100100BDC(v8);
      }
    }

    nrDeviceIdentifier = 0;
  }

  return nrDeviceIdentifier;
}

- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type
{
  changeCopy = change;
  v5 = link_monitor_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [changeCopy deviceIdentifier];
    StringFromNRLinkType = createStringFromNRLinkType();
    v8 = 138412546;
    v9 = deviceIdentifier;
    v10 = 2112;
    v11 = StringFromNRLinkType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceLinkTypeDidChange:%@ linkType:%@", &v8, 0x16u);
  }
}

- (void)deviceHasUnpairedBluetooth:(id)bluetooth
{
  bluetoothCopy = bluetooth;
  v5 = link_monitor_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [bluetoothCopy deviceIdentifier];
    *buf = 138412290;
    v19 = deviceIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceHasUnpairedBluetooth:%@", buf, 0xCu);
  }

  if (self->_monitoringBluetoothUUID)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_weakDelegates;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 deviceHasUnpairedBluetooth:{self->_monitoringBluetoothUUID, v13}];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

@end