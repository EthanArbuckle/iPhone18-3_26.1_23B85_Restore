@interface NRNetworkRelayPair
+ (BOOL)candidateSupportsNetworkRelayPairing:(id)pairing;
+ (id)_extendedMetadataFromWatchSetupMetadata:(id)metadata;
+ (id)sharedInstance;
+ (void)_getProductMajorAndMinorFromProductType:(id)type result:(id)result;
- (BOOL)isReady;
- (NRExtensiblePairingDelegate)pairingDelegate;
- (NRNetworkRelayPair)init;
- (id)_generateWatchSetupExtendedMetadata;
- (void)_invalidateIDSChannel;
- (void)accountAndDeviceReady;
- (void)dealloc;
- (void)discoverAndPairWithAdvertisedName:(id)name deviceID:(id)d;
- (void)discoverAndPairWithAdvertisedName:(id)name deviceID:(id)d oobKey:(id)key;
- (void)discoveredCandidateIdentifier:(id)identifier bluetoothIdentifier:(id)bluetoothIdentifier metadata:(id)metadata;
- (void)lostCandidateWithIdentifier:(id)identifier;
- (void)networkRelayPairFoundPreviouslyPairedBluetoothIdentifiers:(id)identifiers;
- (void)networkRelayPairingCompletedWithIdentifier:(id)identifier error:(id)error;
- (void)pairIDS;
- (void)propertiesReceived;
- (void)receivedNewPINAuthenticationData:(id)data;
- (void)receivedNewPreSharedKeyAuthenticationData:(id)data;
- (void)receivedNewPreSharedKeyAuthenticationRequest;
- (void)reset;
- (void)respondWithPasscode:(id)passcode;
- (void)startScanningForCandidatesWithDelegate:(id)delegate;
- (void)stopScanningForCandidatesWithDelegate:(id)delegate;
- (void)timeout;
- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion;
@end

@implementation NRNetworkRelayPair

+ (id)sharedInstance
{
  if (qword_1001B3960 != -1)
  {
    sub_100101AD0();
  }

  v3 = qword_1001B3958;

  return v3;
}

- (void)accountAndDeviceReady
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B1C8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NRNetworkRelayPair)init
{
  v15.receiver = self;
  v15.super_class = NRNetworkRelayPair;
  v2 = [(NRNetworkRelayPair *)&v15 init];
  if (v2)
  {
    v3 = +[NRQueue registryDaemonQueue];
    queue = [v3 queue];
    queue = v2->_queue;
    v2->_queue = queue;

    v6 = +[NSHashTable weakObjectsHashTable];
    weakDiscoveryDelegates = v2->_weakDiscoveryDelegates;
    v2->_weakDiscoveryDelegates = v6;

    v8 = +[NetworkRelayAgent sharedInstance];
    networkRelayAgent = v2->_networkRelayAgent;
    v2->_networkRelayAgent = v8;

    [(NetworkRelayAgent *)v2->_networkRelayAgent addDelegate:v2];
    v10 = objc_alloc_init(NSMutableDictionary);
    readableNameToCandidateInfoMap = v2->_readableNameToCandidateInfoMap;
    v2->_readableNameToCandidateInfoMap = v10;

    v12 = +[NRSystemProperties sharedInstance];
    systemProperties = v2->_systemProperties;
    v2->_systemProperties = v12;

    [(NRNetworkRelayPair *)v2 reset];
  }

  return v2;
}

- (void)dealloc
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[NRNetworkRelayPair dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(NRNetworkRelayPair *)self reset];
  v4.receiver = self;
  v4.super_class = NRNetworkRelayPair;
  [(NRNetworkRelayPair *)&v4 dealloc];
}

- (void)reset
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NRNetworkRelayPair reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  pairedBluetoothIdentifier = self->_pairedBluetoothIdentifier;
  self->_pairedBluetoothIdentifier = 0;

  *&self->_isNetworkRelayPairComplete = 0;
  self->_isInitialPropertiesReceived = 0;
  authData = self->_authData;
  self->_authData = 0;

  timer = self->_timer;
  if (timer)
  {
    [(AbstractTimer *)timer invalidate];
    v7 = self->_timer;
    self->_timer = 0;
  }

  [(NetworkRelayAgent *)self->_networkRelayAgent stopPushingCandidates];
  [(NetworkRelayAgent *)self->_networkRelayAgent stopScanningForCandidates];
  [(NetworkRelayAgent *)self->_networkRelayAgent abortCurrentPairing];
  [(NetworkRelayAgent *)self->_networkRelayAgent invalidatePairingManagerIfIdle];
}

- (void)timeout
{
  timer = self->_timer;
  self->_timer = 0;

  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Timeout trying to pair with NRNetworkRelayPair", buf, 2u);
  }

  v5 = nrGetPairingError();
  v19 = NSUnderlyingErrorKey;
  v17 = NSLocalizedDescriptionKey;
  v18 = @"timer fired";
  v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:1 userInfo:v6];
  v20 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  domain = [v5 domain];
  v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v5 code], v8);

  pairingDelegate = [(NRNetworkRelayPair *)self pairingDelegate];
  pairingReport = [pairingDelegate pairingReport];
  [pairingReport setOriginalError:v10];

  v13 = +[NRQueue registryDaemonQueue];
  queue = [v13 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000998D0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);

  [(NRNetworkRelayPair *)self reset];
}

+ (BOOL)candidateSupportsNetworkRelayPairing:(id)pairing
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
  v5 = [v4 unsignedIntegerValue] == 4;

  return v5;
}

- (void)startScanningForCandidatesWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100099A5C;
    v7[3] = &unk_100175598;
    v7[4] = self;
    v8 = delegateCopy;
    dispatch_async(queue, v7);
  }
}

- (void)stopScanningForCandidatesWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100099B68;
    v7[3] = &unk_100175598;
    v7[4] = self;
    v8 = delegateCopy;
    dispatch_async(queue, v7);
  }
}

- (void)discoverAndPairWithAdvertisedName:(id)name deviceID:(id)d oobKey:(id)key
{
  nameCopy = name;
  dCopy = d;
  keyCopy = key;
  v11 = [[WatchSetupAdvertisementIdentifier alloc] initWithHumanReadableName:nameCopy];
  packedIdentifierData = [v11 packedIdentifierData];
  v13 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = nameCopy;
    v28 = 2114;
    v29 = packedIdentifierData;
    v30 = 2114;
    v31 = keyCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Discover and pair with OOBKey:- advertised name: %{public}@ (identifier %{public}@, OOBKey: %{public}@", buf, 0x20u);
  }

  [(NRNetworkRelayPair *)self _invalidateIDSChannel];
  nrDeviceUUID = self->_nrDeviceUUID;
  self->_nrDeviceUUID = dCopy;
  v15 = dCopy;

  objc_storeStrong(&self->_authData, key);
  pairingDelegate = [(NRNetworkRelayPair *)self pairingDelegate];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100099E48;
  v23[3] = &unk_100178790;
  v23[4] = self;
  v24 = packedIdentifierData;
  v25 = keyCopy;
  v17 = keyCopy;
  v18 = packedIdentifierData;
  [pairingDelegate createDeviceFromPairingRequest:nameCopy discoveredBy:2 withBlock:v23];

  queue = self->_queue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100099E60;
  v22[3] = &unk_100175660;
  v22[4] = self;
  v20 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.NetworkRelayPair" delay:1 gracePeriod:queue waking:v22 handlerQueue:90.0 handlerBlock:0.0];
  timer = self->_timer;
  self->_timer = v20;
}

- (void)discoverAndPairWithAdvertisedName:(id)name deviceID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v8 = [[WatchSetupAdvertisementIdentifier alloc] initWithHumanReadableName:nameCopy];
  packedIdentifierData = [v8 packedIdentifierData];
  objc_storeStrong(&self->_nrDeviceUUID, d);
  objc_storeStrong(&self->_deviceBeingPairedIdentifier, packedIdentifierData);
  v10 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = nameCopy;
    v23 = 2114;
    v24 = packedIdentifierData;
    v25 = 2114;
    v26 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discover and pair with deviceID:- advertised name: %{public}@ (identifier %{public}@, device ID: %{public}@", buf, 0x20u);
  }

  [(NRNetworkRelayPair *)self _invalidateIDSChannel];
  pairingDelegate = [(NRNetworkRelayPair *)self pairingDelegate];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009A0B0;
  v18[3] = &unk_100178790;
  v18[4] = self;
  v19 = packedIdentifierData;
  v20 = dCopy;
  v12 = dCopy;
  v13 = packedIdentifierData;
  [pairingDelegate createDeviceFromPairingRequest:nameCopy discoveredBy:2 withBlock:v18];

  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009A114;
  v17[3] = &unk_100175660;
  v17[4] = self;
  v15 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.NetworkRelayPair" delay:1 gracePeriod:queue waking:v17 handlerQueue:90.0 handlerBlock:0.0];
  timer = self->_timer;
  self->_timer = v15;
}

- (void)_invalidateIDSChannel
{
  if (![(NRNetworkRelayPair *)self IDSAccountAndDevicePresent])
  {
    v3 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      pairingDelegate = [(NRNetworkRelayPair *)self pairingDelegate];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asking %@ to invalidate IDS channels.", &v8, 0xCu);
    }

    pairingDelegate2 = [(NRNetworkRelayPair *)self pairingDelegate];
    [pairingDelegate2 invalidateIDSChannels];
  }
}

- (BOOL)isReady
{
  if (![(NRNetworkRelayPair *)self isNetworkRelayPairComplete]|| ![(NRNetworkRelayPair *)self IDSAccountAndDevicePresent])
  {
    return 0;
  }

  return [(NRNetworkRelayPair *)self isInitialPropertiesReceived];
}

- (void)respondWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A300;
  v7[3] = &unk_100175598;
  v8 = passcodeCopy;
  selfCopy = self;
  v6 = passcodeCopy;
  dispatch_async(queue, v7);
}

- (void)networkRelayPairingCompletedWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A450;
  block[3] = &unk_1001758F8;
  v12 = errorCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v9 = identifierCopy;
  v10 = errorCopy;
  dispatch_async(queue, block);
}

- (void)pairIDS
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[NRNetworkRelayPair pairIDS]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009AA24;
  v15[3] = &unk_100175A10;
  v15[4] = self;
  v4 = objc_retainBlock(v15);
  authData = self->_authData;
  if (authData && [(NSData *)authData length])
  {
    v6 = [[IDSLocalPairingAddPairedDeviceInfo alloc] initWithCBUUID:self->_pairedBluetoothIdentifier pairingProtocolVersion:0 BTOutOfBandKey:self->_authData];
    [v6 setPairingType:self->_isTinkerPairing];
    [v6 setShouldPairDirectlyOverIPsec:1];
    pairingDelegate = [(NRNetworkRelayPair *)self pairingDelegate];
    nrDeviceUUID = self->_nrDeviceUUID;
    pairedBluetoothIdentifier = self->_pairedBluetoothIdentifier;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009AD7C;
    v12[3] = &unk_1001787B8;
    v12[4] = self;
    v13 = v6;
    v14 = v4;
    v10 = v6;
    [pairingDelegate createLocalPairingStore:nrDeviceUUID andNotifyPairingBeginning:1 bluetoothIdentifier:pairedBluetoothIdentifier withBlock:v12];
  }

  else
  {
    v10 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_authData;
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to pair IDS Auth data is %@", buf, 0xCu);
    }
  }
}

- (void)propertiesReceived
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B3E0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_generateWatchSetupExtendedMetadata
{
  v3 = +[NRPairingCompatibilityVersionInfo systemVersions];
  maxPairingCompatibilityVersion = [v3 maxPairingCompatibilityVersion];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  postFailsafeObliteration = [(NRNetworkRelayPair *)self postFailsafeObliteration];
  encodedSystemVersion = [(NRSystemProperties *)self->_systemProperties encodedSystemVersion];
  intValue = [encodedSystemVersion intValue];

  productType = [(NRSystemProperties *)self->_systemProperties productType];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009B744;
  v13[3] = &unk_1001787E0;
  v13[4] = &v18;
  v13[5] = &v14;
  [NRNetworkRelayPair _getProductMajorAndMinorFromProductType:productType result:v13];
  v9 = [WatchSetupExtendedMetadata alloc];
  v10 = [v9 initWithPairingVersion:maxPairingCompatibilityVersion productVersionMajor:*(v19 + 24) productVersionMinor:*(v15 + 24) postFailSafeObliteration:postFailsafeObliteration encodedSystemVersion:intValue];
  packedExtendedMetadataData = [v10 packedExtendedMetadataData];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return packedExtendedMetadataData;
}

- (void)waitForWatchPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B824;
  block[3] = &unk_1001768B0;
  block[4] = self;
  v12 = nameCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

+ (id)_extendedMetadataFromWatchSetupMetadata:(id)metadata
{
  v3 = sub_10009B8B4(metadata);
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 objectForKeyedSubscript:off_1001B3138];
    [v4 setPairingVersion:{objc_msgSend(v5, "integerValue")}];

    [v4 setChipID:123];
    v6 = [v3 objectForKeyedSubscript:off_1001B3158];
    [v4 setEncodedSystemVersion:{objc_msgSend(v6, "integerValue")}];

    v7 = [v3 objectForKeyedSubscript:off_1001B3140];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    v9 = [v3 objectForKeyedSubscript:off_1001B3148];
    unsignedIntegerValue2 = [v9 unsignedIntegerValue];

    v11 = [NRNetworkRelayPair _productTypeStringFromMajor:unsignedIntegerValue minor:unsignedIntegerValue2];
    [v4 setProductType:v11];

    [v4 setIsCellularEnabled:1];
    v12 = [v3 objectForKeyedSubscript:off_1001B3150];
    [v4 setPostFailsafeObliteration:{objc_msgSend(v12, "BOOLValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_getProductMajorAndMinorFromProductType:(id)type result:(id)result
{
  typeCopy = type;
  if (result)
  {
    v20 = 0;
    resultCopy = result;
    v7 = [NSRegularExpression regularExpressionWithPattern:@"Watch(?<MAJOR>\\d+) options:(?<MINOR>\\d+)" error:0, &v20];
    v8 = v20;
    if (v8)
    {
      v9 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error creating a regular expression: %@", buf, 0xCu);
      }

      integerValue2 = 0;
      integerValue = 0;
    }

    else
    {
      v9 = [v7 matchesInString:typeCopy options:0 range:{0, objc_msgSend(typeCopy, "length")}];
      if ([v9 count]== 1)
      {
        firstObject = [v9 firstObject];
        v13 = [firstObject rangeWithName:@"MAJOR"];
        v15 = [typeCopy substringWithRange:{v13, v14}];
        v16 = [firstObject rangeWithName:@"MINOR"];
        v18 = [typeCopy substringWithRange:{v16, v17}];
        integerValue = [v15 integerValue];
        integerValue2 = [v18 integerValue];
      }

      else
      {
        firstObject = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          v19 = [v9 count];
          *buf = 138412546;
          v22 = typeCopy;
          v23 = 2048;
          v24 = v19;
          _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_ERROR, "Unexpected number of matches from %@, got %lu", buf, 0x16u);
        }

        integerValue2 = 0;
        integerValue = 0;
      }
    }

    resultCopy[2](resultCopy, integerValue, integerValue2);
  }
}

- (void)discoveredCandidateIdentifier:(id)identifier bluetoothIdentifier:(id)bluetoothIdentifier metadata:(id)metadata
{
  identifierCopy = identifier;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  metadataCopy = metadata;
  v11 = [[WatchSetupAdvertisementIdentifier alloc] initWithPackedIdentifierData:identifierCopy];
  humanReadableName = [v11 humanReadableName];
  if (humanReadableName)
  {
    v13 = [NRNetworkRelayPair _extendedMetadataFromWatchSetupMetadata:metadataCopy];
    v14 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v23 = identifierCopy;
      v24 = 2114;
      v25 = humanReadableName;
      v26 = 2114;
      v27 = bluetoothIdentifierCopy;
      v28 = 2114;
      v29 = metadataCopy;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Discovered candidate with identifier %{public}@ (name %{public}@), bluetooth UUID %{public}@, metadata %{public}@ (legacy %{public}@)", buf, 0x34u);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009C0E0;
    block[3] = &unk_1001783B8;
    block[4] = self;
    v18 = humanReadableName;
    v19 = identifierCopy;
    v20 = v13;
    v21 = bluetoothIdentifierCopy;
    v16 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v16 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Candidate discovered but failed to create a human readable name from Watch Setup identifier %{public}@", buf, 0xCu);
    }
  }
}

- (void)lostCandidateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[WatchSetupAdvertisementIdentifier alloc] initWithPackedIdentifierData:identifierCopy];
  humanReadableName = [v5 humanReadableName];
  v7 = networkrelay_pairing_log_handle();
  v8 = v7;
  if (humanReadableName)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = identifierCopy;
      v14 = 2114;
      v15 = humanReadableName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Lost candidate with identifier %{public}@ (name %{public}@)", buf, 0x16u);
    }

    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009C3E0;
    v10[3] = &unk_100175598;
    v10[4] = self;
    v11 = humanReadableName;
    dispatch_async(queue, v10);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Candidate lost but failed to create a human readable name from Watch Setup identifier %{public}@", buf, 0xCu);
    }
  }
}

- (void)receivedNewPreSharedKeyAuthenticationData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009C5AC;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)receivedNewPreSharedKeyAuthenticationRequest
{
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received new authentication request, pushing.", v4, 2u);
  }

  dispatch_async(self->_queue, &stru_100178800);
}

- (void)receivedNewPINAuthenticationData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009C754;
  v7[3] = &unk_100175598;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)networkRelayPairFoundPreviouslyPairedBluetoothIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Previously paired Bluetooth identifiers: %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        pairingDelegate = [(NRNetworkRelayPair *)self pairingDelegate];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10009CA54;
        v13[3] = &unk_100178828;
        v13[4] = v11;
        v13[5] = self;
        [pairingDelegate getPairedPairingIDForBluetoothID:v11 completion:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (NRExtensiblePairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

@end