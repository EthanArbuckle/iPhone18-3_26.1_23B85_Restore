@interface NRExtensiblePair
+ (id)newService:(id)service;
+ (unint64_t)_pairingStrategyFromAdvertisedName:(id)name;
- (BOOL)hasStartedPairing;
- (BOOL)isReady;
- (EPFactory)factory;
- (NRExtensiblePair)initWithServiceRegistry:(id)registry;
- (NRExtensiblePair)pairWithDevice:(id)device;
- (NRExtensiblePairingDelegate)delegate;
- (id)_getPairingExtendedMetadata;
- (id)dataFromPairingStrategy:(unint64_t)strategy andStyle:(unint64_t)style;
- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate;
- (unint64_t)pairingStrategyFromData:(id)data andStyle:(unint64_t *)style;
- (void)_invalidateIDSChannel;
- (void)accountAndDeviceReady;
- (void)advertiseAndPairWithAdvertisedName:(id)name andPairingMode:(unint64_t)mode withGetStartedBlock:(id)block;
- (void)advertiser:(id)advertiser receivedData:(id)data;
- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device;
- (void)bluetoothPaired:(id)paired;
- (void)discoverAndPairWithAdvertisedName:(id)name andDeviceID:(id)d;
- (void)discoverAndPairWithAdvertisedName:(id)name andOOBKey:(id)key;
- (void)discoverer:(id)discoverer deviceDidBecomeDisplayable:(id)displayable;
- (void)discovererBluetoothMayHaveFailed:(id)failed;
- (void)pairer:(id)pairer completedWithError:(id)error;
- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey;
- (void)pairerDidBeginToPair:(id)pair;
- (void)propertiesReceived;
- (void)reset:(BOOL)reset;
- (void)respondWithPasscode:(id)passcode;
- (void)sendBeginningToPairNotification;
- (void)setNrDeviceUUID:(id)d;
- (void)setPairingError;
- (void)setPairingStrategy:(unint64_t)strategy andStyle:(unint64_t)style;
- (void)setPairingTimer;
- (void)timeout;
- (void)unpairer:(id)unpairer didFinishUnpairingDevices:(id)devices;
- (void)update;
@end

@implementation NRExtensiblePair

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] initWithServiceRegistry:serviceCopy];

  return v5;
}

- (EPFactory)factory
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (NRExtensiblePair)initWithServiceRegistry:(id)registry
{
  registryCopy = registry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  v6 = [(NRExtensiblePair *)self init];
  if (v6)
  {
    v7 = +[NSMutableArray array];
    pairers = v6->_pairers;
    v6->_pairers = v7;

    v9 = +[NSMutableArray array];
    pairingDevices = v6->_pairingDevices;
    v6->_pairingDevices = v9;

    v11 = +[NSMutableArray array];
    startupBlocks = v6->_startupBlocks;
    v6->_startupBlocks = v11;

    v13 = +[NSMutableDictionary dictionary];
    didSetPairingStrategy = v6->_didSetPairingStrategy;
    v6->_didSetPairingStrategy = v13;

    v15 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B92D4;
    block[3] = &unk_100175660;
    v18 = v6;
    dispatch_async(v15, block);
  }

  return v6;
}

- (void)reset:(BOOL)reset
{
  resetCopy = reset;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: reset", v9, 2u);
    }
  }

  if (resetCopy)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  [(NRExtensiblePair *)self setPairingMode:v8];
}

- (void)setPairingStrategy:(unint64_t)strategy andStyle:(unint64_t)style
{
  if (self->_pairingStrategy != strategy)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_100052C70(strategy);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Switching to pairing strategy %@", &v11, 0xCu);
      }
    }

    self->_pairingStrategy = strategy;
  }

  self->_pairingStyle = style;
  [(NRExtensiblePair *)self update];
}

- (void)update
{
  pairingMode = [(NRExtensiblePair *)self pairingMode];
  nextPairingMode = self->_nextPairingMode;
  if (pairingMode != nextPairingMode)
  {
    self->_pairingMode = nextPairingMode;
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_nextPairingMode;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Pairing mode changed to %d", &buf, 8u);
      }
    }

    pairingMode2 = [(NRExtensiblePair *)self pairingMode];
    if (pairingMode2 > 2)
    {
      if (pairingMode2 == 3)
      {
        goto LABEL_19;
      }

      if (pairingMode2 == 4)
      {
        goto LABEL_10;
      }

      if (pairingMode2 != 5)
      {
LABEL_31:
        delegate = [(NRExtensiblePair *)self delegate];
        [delegate savePairingReport];

        goto LABEL_32;
      }
    }

    else if (pairingMode2)
    {
      if (pairingMode2 != 1)
      {
        if (pairingMode2 == 2)
        {
LABEL_10:
          delegate2 = [(NRExtensiblePair *)self delegate];
          pairingReport = [delegate2 pairingReport];
          [pairingReport setPairingType:2];
LABEL_30:

          goto LABEL_31;
        }

        goto LABEL_31;
      }

LABEL_19:
      delegate2 = [(NRExtensiblePair *)self delegate];
      pairingReport = [delegate2 pairingReport];
      [pairingReport setPairingType:1];
      goto LABEL_30;
    }

    if (self->_pairingMode == 5)
    {
      nrDeviceUUID = [(NRExtensiblePair *)self nrDeviceUUID];
      if (nrDeviceUUID && [(NRExtensiblePair *)self isReady])
      {
        delegate3 = [(NRExtensiblePair *)self delegate];
        pairingReport2 = [delegate3 pairingReport];
        isErrorSet = [pairingReport2 isErrorSet];

        if ((isErrorSet & 1) == 0)
        {
          delegate4 = [(NRExtensiblePair *)self delegate];
          nrDeviceUUID2 = [(NRExtensiblePair *)self nrDeviceUUID];
          v118[0] = _NSConcreteStackBlock;
          v118[1] = 3221225472;
          v118[2] = sub_1000BA304;
          v118[3] = &unk_100175660;
          v118[4] = self;
          [delegate4 activateDevice:nrDeviceUUID2 withCompletion:v118];

          goto LABEL_24;
        }
      }

      else
      {
      }

      delegate5 = [(NRExtensiblePair *)self delegate];
      [delegate5 pairingCompleted];
    }

LABEL_24:
    [(AbstractTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    [(NSMutableDictionary *)self->_didSetPairingStrategy removeAllObjects];
    advertiser = self->_advertiser;
    self->_advertiser = 0;

    pipe = self->_pipe;
    self->_pipe = 0;

    pipeManager = self->_pipeManager;
    self->_pipeManager = 0;

    discoverer = self->_discoverer;
    self->_discoverer = 0;

    unpairer = self->_unpairer;
    self->_unpairer = 0;

    generator = self->_generator;
    self->_generator = 0;

    *&self->_pairingIsSetUp = 0;
    self->_failure = 0;
    pairedBTDeviceUUID = self->_pairedBTDeviceUUID;
    self->_pairedBTDeviceUUID = 0;

    self->_beginningToPairNotificationSent = 0;
    concurrentPipeFactory = self->_concurrentPipeFactory;
    self->_concurrentPipeFactory = 0;

    [(NRExtensiblePair *)self setIsBluetoothPairComplete:0];
    lastBluetoothPairingError = self->_lastBluetoothPairingError;
    self->_lastBluetoothPairingError = 0;

    *&self->_haveStartedCreatingPairingDevice = 0;
    [(NSMutableArray *)self->_pairers removeAllObjects];
    [(NSMutableArray *)self->_pairingDevices removeAllObjects];
    if ([(NSMutableArray *)self->_startupBlocks count])
    {
      v29 = nr_daemon_log();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v31 = nr_daemon_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Entering Done/Inactive state calling pending blocks", &buf, 2u);
        }
      }

      v32 = [(NSMutableArray *)self->_startupBlocks copy];
      [(NSMutableArray *)self->_startupBlocks removeAllObjects];
      v33 = +[EPFactory queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BA348;
      block[3] = &unk_100175660;
      v117 = v32;
      delegate2 = v32;
      dispatch_async(v33, block);

      pairingReport = v117;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_32:
  if (![(NRExtensiblePair *)self pairingMode])
  {
    goto LABEL_41;
  }

  if ([(NRExtensiblePair *)self pairingMode]== 5)
  {
    goto LABEL_41;
  }

  advertisedName = [(NRExtensiblePair *)self advertisedName];
  v36 = advertisedName == 0;

  if (v36)
  {
    goto LABEL_41;
  }

  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    pairingMode3 = [(NRExtensiblePair *)self pairingMode];
    if (pairingMode3 - 1 < 2)
    {
      v91 = self->_generator;
      self->_generator = 0;

      v92 = self->_unpairer;
      self->_unpairer = 0;

      v93 = self->_advertiser;
      self->_advertiser = 0;

      if (!self->_discoverer)
      {
        factory = [(NRExtensiblePair *)self factory];
        [factory setDiscovererDeviceUUIDs:0];

        factory2 = [(NRExtensiblePair *)self factory];
        [factory2 setDiscovererShouldScanForProximity:0];

        factory3 = [(NRExtensiblePair *)self factory];
        v97 = [factory3 newDiscovererWithDelegate:self];
        v98 = self->_discoverer;
        self->_discoverer = v97;
      }

      if (self->_pipeManager)
      {
        goto LABEL_36;
      }

      v81 = 1;
LABEL_112:
      v99 = +[EPScalablePipeManagerManagerFactory sharedPipeManagerManagerFactory];
      v100 = [v99 pipeManagerManagerWithName:@"com.apple.ep" type:v81 priority:1];
      v101 = self->_pipeManager;
      self->_pipeManager = v100;

      v102 = [(EPScalablePipeManagerManager *)self->_pipeManager newManagerWithDelegate:self];
      v103 = self->_pipe;
      self->_pipe = v102;

      goto LABEL_36;
    }

    if (pairingMode3 - 3 > 1)
    {
      goto LABEL_36;
    }

    v56 = self->_discoverer;
    self->_discoverer = 0;

    if ([(NRExtensiblePair *)self pairingMode]== 4 || [(NRExtensiblePair *)self pairingStyle]== 2)
    {
      factory11 = self->_generator;
      self->_generator = 0;
    }

    else
    {
      if (self->_generator)
      {
LABEL_75:
        oobKey = [(NRExtensiblePair *)self oobKey];
        oobKey3 = [(EPOOBKeyGenerator *)self->_generator key];
        if (oobKey != oobKey3)
        {
          oobKey2 = [(NRExtensiblePair *)self oobKey];
          v61 = [(EPOOBKeyGenerator *)self->_generator key];
          v62 = [oobKey2 isEqual:v61];

          if (v62)
          {
LABEL_79:
            v64 = self->_unpairer;
            if (!v64)
            {
              v65 = [[EPMassUnpairer alloc] initWithDelegate:self UUIDs:0];
              v66 = self->_unpairer;
              self->_unpairer = v65;

              v64 = self->_unpairer;
            }

            if (![(EPMassUnpairer *)v64 finished]|| self->_pairingMode != 4 && [(EPResource *)self->_generator availability]!= 1)
            {
              goto LABEL_36;
            }

            if (!self->_advertiser)
            {
              advertisedName2 = [(NRExtensiblePair *)self advertisedName];
              factory4 = [(NRExtensiblePair *)self factory];
              [factory4 setAdvertisingName:advertisedName2];

              factory5 = [(NRExtensiblePair *)self factory];
              v70 = [CBUUID UUIDWithString:@"1F9636E6-CA97-4C30-BC5F-C477D6A6CF32"];
              [factory5 addAdvertisedCharacteristic:v70 encryptionRequired:0 withReadHandler:0 writeHandler:&stru_100179188];

              objc_initWeak(&buf, self);
              factory6 = [(NRExtensiblePair *)self factory];
              v72 = [CBUUID UUIDWithString:@"E168D473-8EFD-4485-A1FD-B25EDAD4DCE2"];
              v114[0] = _NSConcreteStackBlock;
              v114[1] = 3221225472;
              v114[2] = sub_1000BA630;
              v114[3] = &unk_1001791B0;
              objc_copyWeak(&v115, &buf);
              [factory6 addAdvertisedCharacteristic:v72 encryptionRequired:0 withReadHandler:v114 writeHandler:0];

              factory7 = [(NRExtensiblePair *)self factory];
              [factory7 setAdvertisingRate:3];

              v74 = sub_1000A98C0();
              LODWORD(v72) = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

              if (v72)
              {
                v75 = sub_1000A98C0();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *v113 = 0;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Set not available to pair to NO", v113, 2u);
                }
              }

              factory8 = [(NRExtensiblePair *)self factory];
              [factory8 setAdvertiserNotAvailableToPair:0];

              factory9 = [(NRExtensiblePair *)self factory];
              [factory9 setDontAdvertiseWithServiceUUID:0];

              factory10 = [(NRExtensiblePair *)self factory];
              v79 = [factory10 newAdvertiserWithDelegate:self];
              v80 = self->_advertiser;
              self->_advertiser = v79;

              objc_destroyWeak(&v115);
              objc_destroyWeak(&buf);
            }

            if (self->_pipeManager)
            {
              goto LABEL_36;
            }

            v81 = 0;
            goto LABEL_112;
          }

          v63 = [(EPOOBKeyGenerator *)self->_generator key];
          [(NRExtensiblePair *)self setOobKey:v63];

          oobKey = [(NRExtensiblePair *)self delegate];
          oobKey3 = [(NRExtensiblePair *)self oobKey];
          [oobKey sendXPCOOBKeyChanged:oobKey3];
        }

        goto LABEL_79;
      }

      factory11 = [(NRExtensiblePair *)self factory];
      v104 = [factory11 newKeyGeneratorWithDelegate:self];
      v105 = self->_generator;
      self->_generator = v104;
    }

    goto LABEL_75;
  }

LABEL_36:
  if (!self->_pairingIsSetUp && (self->_advertiser || self->_discoverer))
  {
    self->_pairingIsSetUp = 1;
    v37 = +[NRRepeatingAlertEngine sharedInstance];
    [v37 setEnabled:0 withName:@"WatchUnexpectedlyUnpaired"];

    v38 = +[NRRepeatingAlertEngine sharedInstance];
    [v38 setEnabled:0 withName:@"WatchUnexpectedlyUnpairedBridge"];

    delegate6 = [(NRExtensiblePair *)self delegate];
    [delegate6 deleteUnexpectedIDSPairedDevices];

    if (!self->_haveStartedCreatingPairingDevice)
    {
      self->_haveStartedCreatingPairingDevice = 1;
      delegate7 = [(NRExtensiblePair *)self delegate];
      advertisedName3 = [(NRExtensiblePair *)self advertisedName];
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_1000BA744;
      v112[3] = &unk_1001791D8;
      v112[4] = self;
      [delegate7 createDeviceFromPairingRequest:advertisedName3 discoveredBy:1 withBlock:v112];
    }
  }

LABEL_41:
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  devices = [(EPDiscoverer *)self->_discoverer devices];
  allValues = [devices allValues];

  v44 = [allValues countByEnumeratingWithState:&v108 objects:v119 count:16];
  if (v44)
  {
    v45 = *v109;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v109 != v45)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v108 + 1) + 8 * i) setEnableOOBPairing:{-[NRExtensiblePair pairingMode](self, "pairingMode") == 1}];
      }

      v44 = [allValues countByEnumeratingWithState:&v108 objects:v119 count:16];
    }

    while (v44);
  }

  advertisedName4 = [(NRExtensiblePair *)self advertisedName];
  factory12 = [(NRExtensiblePair *)self factory];
  [factory12 setAdvertisingName:advertisedName4];

  if (([(NRExtensiblePair *)self pairingMode]!= 3 || !self->_haveFinishedCreatingPairingDevice) && [(NRExtensiblePair *)self pairingMode]!= 1)
  {
    v50 = 0;
LABEL_56:
    pairingMode4 = [(NRExtensiblePair *)self pairingMode];
    if (pairingMode4 == 2)
    {
      discoverer = [(NRExtensiblePair *)self discoverer];
      if (discoverer)
      {
        failure = 1;
LABEL_93:

LABEL_94:
        if ((v50 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if ([(NRExtensiblePair *)self pairingMode]!= 4)
      {
        discoverer = 0;
        failure = self->_failure;
        goto LABEL_93;
      }
    }

    else if ([(NRExtensiblePair *)self pairingMode]!= 4)
    {
      failure = self->_failure;
      goto LABEL_94;
    }

    advertiser = [(NRExtensiblePair *)self advertiser];
    if (advertiser)
    {
      failure = 1;
    }

    else
    {
      failure = self->_failure;
    }

    if (pairingMode4 != 2)
    {
      if (!v50)
      {
LABEL_96:
        if (!failure)
        {
          return;
        }

        goto LABEL_97;
      }

LABEL_95:

      goto LABEL_96;
    }

    discoverer = 0;
    goto LABEL_93;
  }

  oobKey4 = [(NRExtensiblePair *)self oobKey];
  advertisedName4 = oobKey4;
  if (!oobKey4 || !self->_haveFinishedCreatingPairingDevice)
  {
    v50 = 1;
    goto LABEL_56;
  }

LABEL_97:
  v82 = nr_daemon_log();
  v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);

  if (v83)
  {
    v84 = nr_daemon_log();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Init complete", &buf, 2u);
    }
  }

  if ([(NSMutableArray *)self->_startupBlocks count])
  {
    v85 = nr_daemon_log();
    v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);

    if (v86)
    {
      v87 = nr_daemon_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Init complete calling pending blocks", &buf, 2u);
      }
    }

    v88 = [(NSMutableArray *)self->_startupBlocks copy];
    [(NSMutableArray *)self->_startupBlocks removeAllObjects];
    v89 = +[EPFactory queue];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_1000BA97C;
    v106[3] = &unk_100175660;
    v107 = v88;
    v90 = v88;
    dispatch_async(v89, v106);
  }
}

- (id)_getPairingExtendedMetadata
{
  v3 = objc_opt_new();
  v4 = MGCopyAnswer();
  sub_100101840(v3, v4);
  v5 = MGCopyAnswer();
  sub_100101750(v3, [v5 integerValue]);
  sub_100101778(v3, self->_postFailsafeObliteration);
  v6 = +[NRPairingCompatibilityVersionInfo systemVersions];
  sub_1001017A0(v3, [v6 maxPairingCompatibilityVersion]);

  sub_1001017C8(v3, 1);
  v7 = MGGetBoolAnswer();
  sub_1001017F0(v3, v7);
  v8 = MGCopyAnswer();
  v9 = NRWatchOSVersion();
  sub_100101818(v3, v9);

  data = [v3 data];

  return data;
}

- (void)timeout
{
  v3 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAC38;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setPairingError
{
  delegate = [(NRExtensiblePair *)self delegate];
  pairingReport = [delegate pairingReport];
  isErrorSet = [pairingReport isErrorSet];

  if (isErrorSet)
  {
    return;
  }

  if ([(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    if ([(NRExtensiblePair *)self IDSAccountAndDevicePresent]&& [(NRExtensiblePair *)self isInitialPropertiesReceived])
    {
      return;
    }
  }

  else
  {
    if (self->_timer)
    {
      return;
    }

    if (self->_lastBluetoothPairingError)
    {
      v8 = nrGetPairingError();
      userInfo = [v8 userInfo];
      delegate3 = [userInfo mutableCopy];

      v10 = [(NSError *)self->_lastBluetoothPairingError description];
      [delegate3 setObject:v10 forKeyedSubscript:@"underlyingBluetoothError"];

      domain = [v8 domain];
      v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v8 code], delegate3);

      delegate2 = [(NRExtensiblePair *)self delegate];
      pairingReport2 = [delegate2 pairingReport];
      [pairingReport2 setOriginalError:v13];

      goto LABEL_11;
    }

    if (!self->_discoverer)
    {
      return;
    }
  }

  v13 = nrGetPairingError();
  delegate3 = [(NRExtensiblePair *)self delegate];
  delegate2 = [delegate3 pairingReport];
  [delegate2 setOriginalError:v13];
LABEL_11:
}

- (void)accountAndDeviceReady
{
  if (![(NRExtensiblePair *)self IDSAccountAndDevicePresent])
  {
    [(NRExtensiblePair *)self setIDSAccountAndDevicePresent:1];
    isReady = [(NRExtensiblePair *)self isReady];
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (isReady)
    {
      if (v5)
      {
        v6 = sub_1000034AC();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: accountAndDeviceReady- ready, finalizing BT/IDS pairing", buf, 2u);
        }
      }

      [(NRExtensiblePair *)self setPairingMode:5];
    }

    else if (v5)
    {
      v7 = sub_1000034AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: accountAndDeviceReady- not ready yet", v8, 2u);
      }
    }
  }
}

- (void)propertiesReceived
{
  if (![(NRExtensiblePair *)self isInitialPropertiesReceived])
  {
    [(NRExtensiblePair *)self setIsInitialPropertiesReceived:1];
    isReady = [(NRExtensiblePair *)self isReady];
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (isReady)
    {
      if (v5)
      {
        v6 = sub_1000034AC();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: propertiesReceived- ready, finalizing BT/IDS pairing", buf, 2u);
        }
      }

      [(NRExtensiblePair *)self setPairingMode:5];
    }

    else if (v5)
    {
      v7 = sub_1000034AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: propertiesReceived- not ready yet", v8, 2u);
      }
    }
  }
}

- (void)bluetoothPaired:(id)paired
{
  pairedCopy = paired;
  if (![(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    [(NRExtensiblePair *)self setIsBluetoothPairComplete:1];
    objc_storeStrong(&self->_pairedBTDeviceUUID, paired);
    discoverer = self->_discoverer;
    if (discoverer)
    {
      self->_discoverer = 0;

      pairedBTDeviceUUID = self->_pairedBTDeviceUUID;
      v7 = [NSArray arrayWithObjects:&pairedBTDeviceUUID count:1];
      v8 = +[EPFactory sharedFactory];
      [v8 setDiscovererDeviceUUIDs:v7];
    }

    isReady = [(NRExtensiblePair *)self isReady];
    v10 = sub_1000034AC();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (isReady)
    {
      if (v11)
      {
        v12 = sub_1000034AC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: propertiesReceived- ready, finalizing BT/IDS pairing", v14, 2u);
        }
      }

      [(NRExtensiblePair *)self setPairingMode:5];
    }

    else if (v11)
    {
      v13 = sub_1000034AC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: propertiesReceived- not ready yet", v14, 2u);
      }
    }
  }
}

- (void)respondWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_pairers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = CBPairingAgentPairingDataPasskeyKey;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v17 = v9;
        v18 = passcodeCopy;
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1, v13];
        [v11 respondWithType:2 accept:1 data:v12];

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (BOOL)isReady
{
  v3 = sub_1000034AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000034AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([(NRExtensiblePair *)self isBluetoothPairComplete])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      if ([(NRExtensiblePair *)self IDSAccountAndDevicePresent])
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *v11 = 138412802;
      if ([(NRExtensiblePair *)self isInitialPropertiesReceived])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *&v11[4] = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: BT:%@ IDS:%@ IPE:%@", v11, 0x20u);
    }
  }

  iDSAccountAndDevicePresent = [(NRExtensiblePair *)self IDSAccountAndDevicePresent];
  if (iDSAccountAndDevicePresent)
  {
    iDSAccountAndDevicePresent = [(NRExtensiblePair *)self isBluetoothPairComplete];
    if (iDSAccountAndDevicePresent)
    {
      LOBYTE(iDSAccountAndDevicePresent) = [(NRExtensiblePair *)self isInitialPropertiesReceived];
    }
  }

  return iDSAccountAndDevicePresent;
}

- (BOOL)hasStartedPairing
{
  if ([(NRExtensiblePair *)self IDSAccountAndDevicePresent]|| [(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    return 1;
  }

  return [(NRExtensiblePair *)self isInitialPropertiesReceived];
}

- (id)dataFromPairingStrategy:(unint64_t)strategy andStyle:(unint64_t)style
{
  v6 = 1330528590;
  strategyCopy = strategy;
  styleCopy = style;
  v4 = [NSData dataWithBytes:&v6 length:6];

  return v4;
}

- (unint64_t)pairingStrategyFromData:(id)data andStyle:(unint64_t *)style
{
  dataCopy = data;
  if ([dataCopy length] == 6 && (v6 = objc_msgSend(dataCopy, "bytes"), *v6 == 78) && v6[1] == 65 && v6[2] == 78 && v6[3] == 79)
  {
    v7 = v6[4];
    if (style)
    {
      v8 = v6[5];
      if (((v8 - 1) & 0xFE) != 0)
      {
        v8 = 0;
      }

      *style = v8;
    }

    if ((v7 - 4) < 0xFDu)
    {
      v7 = 0;
    }

    v9 = v7;
  }

  else
  {
    v9 = 0;
    if (style)
    {
      *style = 0;
    }
  }

  return v9;
}

- (void)setPairingTimer
{
  if (!self->_timer)
  {
    v8[9] = v2;
    v8[10] = v3;
    v5 = +[EPFactory queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BB81C;
    v8[3] = &unk_100175660;
    v8[4] = self;
    v6 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.ExtensiblePair" delay:1 gracePeriod:v5 waking:v8 handlerQueue:90.0 handlerBlock:0.0];
    timer = self->_timer;
    self->_timer = v6;
  }
}

- (void)discoverAndPairWithAdvertisedName:(id)name andOOBKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  if (![(NSMutableArray *)self->_pairers count])
  {
    [(NRExtensiblePair *)self _invalidateIDSChannel];
    [(NRExtensiblePair *)self setPairingTimer];
    [(NRExtensiblePair *)self setPairingStrategy:[NRExtensiblePair andStyle:"_pairingStrategyFromAdvertisedName:" _pairingStrategyFromAdvertisedName:nameCopy], 1];
    [(NRExtensiblePair *)self setAdvertisedName:nameCopy];
    [(NRExtensiblePair *)self setPairingMode:1];
    [(NRExtensiblePair *)self setOobKey:keyCopy];
    delegate = [(NRExtensiblePair *)self delegate];
    [delegate sendXPCOOBKeyChanged:keyCopy];
  }

  [(NRExtensiblePair *)self update];
}

- (void)discoverAndPairWithAdvertisedName:(id)name andDeviceID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (![(NSMutableArray *)self->_pairers count])
  {
    [(NRExtensiblePair *)self _invalidateIDSChannel];
    [(NRExtensiblePair *)self setPairingTimer];
    [(NRExtensiblePair *)self setPairingStrategy:[NRExtensiblePair andStyle:"_pairingStrategyFromAdvertisedName:" _pairingStrategyFromAdvertisedName:nameCopy], 2];
    [(NRExtensiblePair *)self setAdvertisedName:nameCopy];
    [(NRExtensiblePair *)self setPairingMode:2];
    [(NRExtensiblePair *)self setNrDeviceUUID:dCopy];
  }

  [(NRExtensiblePair *)self update];
}

- (void)_invalidateIDSChannel
{
  if (![(NRExtensiblePair *)self IDSAccountAndDevicePresent])
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
        delegate = [(NRExtensiblePair *)self delegate];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v12 = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Asking %@ to invalidate IDS channels.", &v12, 0x16u);
      }
    }

    delegate2 = [(NRExtensiblePair *)self delegate];
    [delegate2 invalidateIDSChannels];
  }
}

+ (unint64_t)_pairingStrategyFromAdvertisedName:(id)name
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
  integerValue = [v4 integerValue];

  v6 = sub_100052C60(integerValue);
  return v6;
}

- (void)setNrDeviceUUID:(id)d
{
  objc_storeStrong(&self->_nrDeviceUUID, d);
  dCopy = d;
  delegate = [(NRExtensiblePair *)self delegate];
  [delegate setPairingID:dCopy];
}

- (void)advertiseAndPairWithAdvertisedName:(id)name andPairingMode:(unint64_t)mode withGetStartedBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v10 = blockCopy;
  if (blockCopy)
  {
    startupBlocks = self->_startupBlocks;
    v12 = [blockCopy copy];
    v13 = objc_retainBlock(v12);
    [(NSMutableArray *)startupBlocks addObject:v13];
  }

  if (![(NSMutableArray *)self->_pairers count])
  {
    if (![(NRExtensiblePair *)self IDSAccountAndDevicePresent])
    {
      v14 = nr_daemon_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v16 = nr_daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100102E88(v16);
        }
      }

      delegate = [(NRExtensiblePair *)self delegate];
      [delegate invalidateIDSChannels];
    }

    if (mode == 3)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    [(NRExtensiblePair *)self setPairingStrategy:1 andStyle:v18];
    [(NRExtensiblePair *)self setAdvertisedName:nameCopy];
    [(NRExtensiblePair *)self setPairingMode:mode];
  }

  [(NRExtensiblePair *)self update];
}

- (NRExtensiblePair)pairWithDevice:(id)device
{
  deviceCopy = device;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "pairWithDevice:", buf, 2u);
    }
  }

  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    [deviceCopy setEnableOOBPairing:self->_pairingMode == 1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000BC0A8;
    v26[3] = &unk_100175598;
    v26[4] = self;
    v8 = deviceCopy;
    v27 = v8;
    v9 = objc_retainBlock(v26);
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_100052C70([(NRExtensiblePair *)self pairingStrategy]);
        *buf = 138412290;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Beginning pairing strategy %@", buf, 0xCu);
      }
    }

    if ([(NRExtensiblePair *)self pairingStrategy]== 1)
    {
      (v9[2])(v9);
    }

    else
    {
      uuid = [v8 uuid];
      v15 = [NSNumber numberWithUnsignedInteger:[(NRExtensiblePair *)self pairingStrategy]];
      v16 = [(NSMutableDictionary *)self->_didSetPairingStrategy objectForKeyedSubscript:uuid];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        (v9[2])(v9);
      }

      else
      {
        v18 = [(NRExtensiblePair *)self dataFromPairingStrategy:[(NRExtensiblePair *)self pairingStrategy] andStyle:[(NRExtensiblePair *)self pairingStyle]];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000BC1B8;
        v25[3] = &unk_100175660;
        v25[4] = self;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000BC208;
        v20[3] = &unk_100179200;
        v21 = v8;
        selfCopy = self;
        v23 = uuid;
        v24 = v9;
        [v21 writeData:v18 begin:v25 completion:v20];
      }
    }
  }

  return result;
}

- (void)unpairer:(id)unpairer didFinishUnpairingDevices:(id)devices
{
  unpairerCopy = unpairer;
  devicesCopy = devices;
  self->_failure = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [devicesCopy countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = sub_1000034AC();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

        if (v13)
        {
          v14 = sub_1000034AC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString = [v11 UUIDString];
            *buf = 138412290;
            v43 = uUIDString;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Unpaired %@", buf, 0xCu);
          }
        }

        uUIDString2 = [v11 UUIDString];
        printf("NRExtensiblePair: Unpaired %s\n", [uUIDString2 UTF8String]);

        devices = [(EPDiscoverer *)self->_discoverer devices];
        v18 = [devices objectForKeyedSubscript:v11];
        [v18 reset];
      }

      v8 = [devicesCopy countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v8);
  }

  if (self->_discoverer)
  {
    requestedUUIDs = [unpairerCopy requestedUUIDs];
    v20 = [NSMutableSet setWithSet:requestedUUIDs];

    [v20 minusSet:devicesCopy];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v33 + 1) + 8 * j);
          devices2 = [(EPDiscoverer *)self->_discoverer devices];
          v28 = [devices2 objectForKeyedSubscript:v26];

          if (v28)
          {
            [(NRExtensiblePair *)self pairWithDevice:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v23);
    }

    [v21 removeAllObjects];
  }

  v29 = sub_1000034AC();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v31 = sub_1000034AC();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Unpair complete", buf, 2u);
    }
  }

  puts("NRExtensiblePair: Unpair complete");
  [(NRExtensiblePair *)self update];
}

- (void)discoverer:(id)discoverer deviceDidBecomeDisplayable:(id)displayable
{
  displayableCopy = displayable;
  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    nrDeviceUUID = [(NRExtensiblePair *)self nrDeviceUUID];

    if (nrDeviceUUID)
    {
      name = [displayableCopy name];
      advertisedName = [(NRExtensiblePair *)self advertisedName];
      v9 = [name isEqual:advertisedName];

      if (v9)
      {
        if ([displayableCopy isPeripheral])
        {
          v10 = sub_1000034AC();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

          if (v11)
          {
            v12 = sub_1000034AC();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [displayableCopy description];
              *buf = 136315138;
              uTF8String = [v13 UTF8String];
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Discovered device %s, unpairing", buf, 0xCu);
            }
          }

          v14 = [displayableCopy description];
          printf("NRExtensiblePair: Discovered device %s, unpairing\n", [v14 UTF8String]);

          v15 = [EPMassUnpairer alloc];
          uuid = [displayableCopy uuid];
          v17 = [NSSet setWithObject:uuid];
          v18 = [(EPMassUnpairer *)v15 initWithDelegate:self UUIDs:v17];
        }
      }
    }
  }
}

- (void)discovererBluetoothMayHaveFailed:(id)failed
{
  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    self->_failure = 1;

    [(NRExtensiblePair *)self update];
  }
}

- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device
{
  deviceCopy = device;
  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_100052C70([(NRExtensiblePair *)self pairingStrategy]);
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Beginning pairing strategy %@", &v11, 0xCu);
      }
    }

    v10 = [deviceCopy newPairerWithDelegate:self];
    if (v10)
    {
      [(NSMutableArray *)self->_pairers addObject:v10];
      [(NSMutableArray *)self->_pairingDevices addObject:deviceCopy];
      [(NRExtensiblePair *)self update];
    }
  }
}

- (void)advertiser:(id)advertiser receivedData:(id)data
{
  dataCopy = data;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = dataCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received pairing switch modes data via Bluetooth characteristic: %@", buf, 0xCu);
    }
  }

  if (![(NSMutableArray *)self->_pairers count])
  {
    *buf = 0;
    v9 = [(NRExtensiblePair *)self pairingStrategyFromData:dataCopy andStyle:buf];
    if (*buf != 2)
    {
      [(NRExtensiblePair *)self sendBeginningToPairNotification];
    }

    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67109120;
        v13[1] = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting pairing strategy to %d", v13, 8u);
      }
    }

    [(NRExtensiblePair *)self setPairingStrategy:v9 andStyle:*buf];
  }
}

- (void)pairerDidBeginToPair:(id)pair
{
  if ([(NRExtensiblePair *)self pairingStyle]!= 2)
  {

    [(NRExtensiblePair *)self sendBeginningToPairNotification];
  }
}

- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey
{
  pairerCopy = pairer;
  passkeyCopy = passkey;
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pairer:requestWithType:passkey:", buf, 2u);
    }
  }

  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    nrDeviceUUID = [(NRExtensiblePair *)self nrDeviceUUID];

    if (nrDeviceUUID)
    {
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1000BCE68;
      v22 = &unk_100175598;
      selfCopy = self;
      v14 = pairerCopy;
      v24 = v14;
      v15 = objc_retainBlock(&v19);
      if (type == 1 || type == 2)
      {
        [(NRExtensiblePair *)self setPairingStrategy:[(NRExtensiblePair *)self pairingStrategy:v19] andStyle:2];
        (v15[2])(v15);
        delegate = [(NRExtensiblePair *)self delegate];
        nrDeviceUUID2 = [(NRExtensiblePair *)self nrDeviceUUID];
        [delegate sendXPCDeviceNeedsPasscodeMessage:nrDeviceUUID2 passcode:passkeyCopy];
      }

      else
      {
        if (type != 5)
        {
          goto LABEL_15;
        }

        v16 = [(NRExtensiblePair *)self oobKey:v19];

        if (!v16)
        {
          goto LABEL_15;
        }

        [(NRExtensiblePair *)self setPairingStrategy:[(NRExtensiblePair *)self pairingStrategy] andStyle:1];
        (v15[2])(v15);
        v26 = CBPairingAgentPairingDataOOBTKKey;
        delegate = [(NRExtensiblePair *)self oobKey];
        v27 = delegate;
        nrDeviceUUID2 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v14 respondWithType:5 accept:1 data:nrDeviceUUID2];
      }

LABEL_15:
      goto LABEL_16;
    }
  }

  [pairerCopy respondWithType:type accept:0 data:0];
LABEL_16:
}

- (void)pairer:(id)pairer completedWithError:(id)error
{
  pairerCopy = pairer;
  errorCopy = error;
  if ([(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    [(NSMutableArray *)self->_pairers removeObject:pairerCopy];
    pairingDevices = self->_pairingDevices;
    device = [pairerCopy device];
    [(NSMutableArray *)pairingDevices removeObject:device];
LABEL_3:

    goto LABEL_30;
  }

  if (!errorCopy)
  {
    if ([(NRExtensiblePair *)self hasStartedPairing])
    {
      goto LABEL_30;
    }

    device2 = [pairerCopy device];
    uuid = [device2 uuid];
    [(NRExtensiblePair *)self bluetoothPaired:uuid];

    [(NRExtensiblePair *)self sendBeginningToPairNotification];
    v29 = sub_1000034AC();
    LODWORD(uuid) = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (uuid)
    {
      v30 = sub_1000034AC();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [(NSUUID *)self->_pairedBTDeviceUUID UUIDString];
        *buf = 138412290;
        v75 = uUIDString;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: Paired to BT device %@", buf, 0xCu);
      }
    }

    [(AbstractTimer *)self->_timer invalidate];
    v32 = +[EPFactory queue];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1000BD964;
    v70[3] = &unk_100175660;
    v70[4] = self;
    v33 = [TimerFactory timerWithIdentifier:@"com.apple.NanoRegistry.ExtensiblePair" delay:1 gracePeriod:v32 waking:v70 handlerQueue:120.0 handlerBlock:0.0];
    timer = self->_timer;
    self->_timer = v33;

    [(NSMutableArray *)self->_pairers removeAllObjects];
    [(NSMutableArray *)self->_pairers addObject:pairerCopy];
    [(NSMutableArray *)self->_pairingDevices removeAllObjects];
    v35 = self->_pairingDevices;
    device3 = [pairerCopy device];
    [(NSMutableArray *)v35 addObject:device3];

    unpairer = self->_unpairer;
    self->_unpairer = 0;

    discoverer = self->_discoverer;
    self->_discoverer = 0;

    device = [(EPAdvertiser *)self->_advertiser manager];
    advertiser = self->_advertiser;
    self->_advertiser = 0;

    factory = [(NRExtensiblePair *)self factory];
    [factory setAdvertisingRate:1];

    v41 = sub_1000A98C0();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

    if (v42)
    {
      v43 = sub_1000A98C0();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Set not available to pair to YES", buf, 2u);
      }
    }

    factory2 = [(NRExtensiblePair *)self factory];
    [factory2 setAdvertiserNotAvailableToPair:1];

    [device setName:0];
    delegate = [(NRExtensiblePair *)self delegate];
    nrDeviceUUID = [(NRExtensiblePair *)self nrDeviceUUID];
    [delegate activateDevice:nrDeviceUUID withCompletion:0];

    [(NRExtensiblePair *)self update];
    delegate2 = [(NRExtensiblePair *)self delegate];
    device4 = [pairerCopy device];
    nrDeviceUUID2 = [(NRExtensiblePair *)self nrDeviceUUID];
    [delegate2 updateNRMutableDeviceFromEPDevice:device4 withNRUUID:nrDeviceUUID2 withBlock:0];

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1000BD96C;
    v69[3] = &unk_100175A10;
    v69[4] = self;
    v50 = objc_retainBlock(v69);
    if ([(NRExtensiblePair *)self pairingStrategy]== 1)
    {
      (v50[2])(v50, 0);
    }

    else
    {
      v51 = self->_pairedBTDeviceUUID;
      oobKey = [(NRExtensiblePair *)self oobKey];
      v53 = oobKey;
      v62 = device;
      if (oobKey)
      {
        v54 = oobKey;
      }

      else
      {
        v54 = objc_opt_new();
      }

      v55 = v54;
      v56 = [[IDSLocalPairingAddPairedDeviceInfo alloc] initWithCBUUID:v51 pairingProtocolVersion:0 BTOutOfBandKey:v54];
      [v56 setPairingType:self->_isTinkerPairing];
      [v56 setShouldPairDirectlyOverIPsec:{-[NRExtensiblePair pairingStrategy](self, "pairingStrategy") == 3}];
      delegate3 = [(NRExtensiblePair *)self delegate];
      nrDeviceUUID3 = [(NRExtensiblePair *)self nrDeviceUUID];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1000BDD38;
      v63[3] = &unk_100179228;
      v64 = v51;
      v65 = v53;
      v66 = v56;
      selfCopy = self;
      v68 = v50;
      v59 = v56;
      v60 = v53;
      v61 = v51;
      [delegate3 createLocalPairingStore:nrDeviceUUID3 andNotifyPairingBeginning:1 withBlock:v63];

      device = v62;
    }

    goto LABEL_3;
  }

  objc_storeStrong(&self->_lastBluetoothPairingError, error);
  [(NSMutableArray *)self->_pairers removeObject:pairerCopy];
  v10 = self->_pairingDevices;
  device5 = [pairerCopy device];
  [(NSMutableArray *)v10 removeObject:device5];

  [(EPDiscoverer *)self->_discoverer clear];
  domain = [errorCopy domain];
  if ([domain isEqualToString:CBInternalErrorDomain])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      device6 = [pairerCopy device];
      uuid2 = [device6 uuid];

      userInfo = [errorCopy userInfo];
      v17 = [userInfo objectForKeyedSubscript:CBOriginalPeerIdentifierErrorKey];

      v18 = sub_1000034AC();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = sub_1000034AC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          uUIDString2 = [uuid2 UUIDString];
          uUIDString3 = [v17 UUIDString];
          *buf = 138412546;
          v75 = uUIDString2;
          v76 = 2112;
          v77 = uUIDString3;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: BT returned already paired error for device %@. Ghost device UUID is: %@", buf, 0x16u);
        }
      }

      if (v17)
      {
        v23 = [EPMassUnpairer alloc];
        v24 = [NSSet setWithObject:v17];
        v25 = [(EPMassUnpairer *)v23 initWithDelegate:self UUIDs:v24];

        delegate4 = [(NRExtensiblePair *)self delegate];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_1000BD83C;
        v71[3] = &unk_100178828;
        v72 = v17;
        selfCopy2 = self;
        [delegate4 getPairedPairingIDForBluetoothID:v72 completion:v71];
      }

      pairerCopy = 0;
    }
  }

  else
  {
  }

  if (self->_pairingMode == 2)
  {
    [(NSMutableArray *)self->_pairers removeAllObjects];
    [(NRExtensiblePair *)self timeout];
  }

  else if (!self->_timer)
  {
    [(NRExtensiblePair *)self setPairingError];
    [(NRExtensiblePair *)self setPairingMode:5];
  }

LABEL_30:
}

- (void)sendBeginningToPairNotification
{
  if (!self->_beginningToPairNotificationSent)
  {
    self->_beginningToPairNotificationSent = 1;
    v2 = sub_1000034AC();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = sub_1000034AC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending com.apple.nanoregistry.isbeginningtopair darwin notification", v5, 2u);
      }
    }

    notify_post("com.apple.nanoregistry.isbeginningtopair");
  }
}

- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate
{
  pairerCopy = pairer;
  delegateCopy = delegate;
  if ([(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    goto LABEL_2;
  }

  pairingStrategy = [(NRExtensiblePair *)self pairingStrategy];
  if (pairingStrategy - 2 < 2)
  {
    pairingPipeFactory = self->_pairingPipeFactory;
    if (!pairingPipeFactory)
    {
      v22 = [EPNullResourceManager alloc];
      v23 = +[EPFactory queue];
      v24 = [(EPResourceManager *)v22 initWithQueue:v23];
      v25 = self->_pairingPipeFactory;
      self->_pairingPipeFactory = v24;

      pairingPipeFactory = self->_pairingPipeFactory;
    }

    v18 = [(EPResourceManagerProtocol *)pairingPipeFactory newResourceWithDelegate:delegateCopy];
LABEL_14:
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_2;
  }

  if (pairingStrategy != 1)
  {
    v36 = sub_1000034AC();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

    if (v37)
    {
      v38 = sub_1000034AC();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100102FD0(v38, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    goto LABEL_2;
  }

  if (!self->_concurrentPipeFactory)
  {
    v26 = [NRConcurrentPipeManager alloc];
    v27 = +[EPFactory queue];
    v28 = [(EPResourceManager *)v26 initWithQueue:v27];
    concurrentPipeFactory = self->_concurrentPipeFactory;
    self->_concurrentPipeFactory = v28;

    v30 = self->_concurrentPipeFactory;
    device = [pairerCopy device];
    uuid = [device uuid];
    nrDeviceUUID = [(NRExtensiblePair *)self nrDeviceUUID];
    oobKey = [(NRExtensiblePair *)self oobKey];
    delegate = [(NRExtensiblePair *)self delegate];
    v18 = [(NRConcurrentPipeManager *)v30 newIDSPairingToUUID:uuid pairingUUID:nrDeviceUUID oobKey:oobKey withExtensiblePairingDelegate:delegate withDelegate:delegateCopy];

    goto LABEL_14;
  }

LABEL_2:
  v8 = sub_1000034AC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = sub_1000034AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100103008(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (NRExtensiblePairingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end