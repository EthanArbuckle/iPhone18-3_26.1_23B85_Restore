@interface NRExtensiblePair
+ (id)newService:(id)a3;
+ (unint64_t)_pairingStrategyFromAdvertisedName:(id)a3;
- (BOOL)hasStartedPairing;
- (BOOL)isReady;
- (EPFactory)factory;
- (NRExtensiblePair)initWithServiceRegistry:(id)a3;
- (NRExtensiblePair)pairWithDevice:(id)a3;
- (NRExtensiblePairingDelegate)delegate;
- (id)_getPairingExtendedMetadata;
- (id)dataFromPairingStrategy:(unint64_t)a3 andStyle:(unint64_t)a4;
- (id)pairer:(id)a3 newEndpointWithDelegate:(id)a4;
- (unint64_t)pairingStrategyFromData:(id)a3 andStyle:(unint64_t *)a4;
- (void)_invalidateIDSChannel;
- (void)accountAndDeviceReady;
- (void)advertiseAndPairWithAdvertisedName:(id)a3 andPairingMode:(unint64_t)a4 withGetStartedBlock:(id)a5;
- (void)advertiser:(id)a3 receivedData:(id)a4;
- (void)advertiser:(id)a3 receivedPairingRequestForDevice:(id)a4;
- (void)bluetoothPaired:(id)a3;
- (void)discoverAndPairWithAdvertisedName:(id)a3 andDeviceID:(id)a4;
- (void)discoverAndPairWithAdvertisedName:(id)a3 andOOBKey:(id)a4;
- (void)discoverer:(id)a3 deviceDidBecomeDisplayable:(id)a4;
- (void)discovererBluetoothMayHaveFailed:(id)a3;
- (void)pairer:(id)a3 completedWithError:(id)a4;
- (void)pairer:(id)a3 requestWithType:(int64_t)a4 passkey:(id)a5;
- (void)pairerDidBeginToPair:(id)a3;
- (void)propertiesReceived;
- (void)reset:(BOOL)a3;
- (void)respondWithPasscode:(id)a3;
- (void)sendBeginningToPairNotification;
- (void)setNrDeviceUUID:(id)a3;
- (void)setPairingError;
- (void)setPairingStrategy:(unint64_t)a3 andStyle:(unint64_t)a4;
- (void)setPairingTimer;
- (void)timeout;
- (void)unpairer:(id)a3 didFinishUnpairingDevices:(id)a4;
- (void)update;
@end

@implementation NRExtensiblePair

+ (id)newService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithServiceRegistry:v4];

  return v5;
}

- (EPFactory)factory
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (NRExtensiblePair)initWithServiceRegistry:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_serviceRegistry, a3);
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

- (void)reset:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  [(NRExtensiblePair *)self setPairingMode:v8];
}

- (void)setPairingStrategy:(unint64_t)a3 andStyle:(unint64_t)a4
{
  if (self->_pairingStrategy != a3)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_100052C70(a3);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Switching to pairing strategy %@", &v11, 0xCu);
      }
    }

    self->_pairingStrategy = a3;
  }

  self->_pairingStyle = a4;
  [(NRExtensiblePair *)self update];
}

- (void)update
{
  v3 = [(NRExtensiblePair *)self pairingMode];
  nextPairingMode = self->_nextPairingMode;
  if (v3 != nextPairingMode)
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

    v9 = [(NRExtensiblePair *)self pairingMode];
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        goto LABEL_19;
      }

      if (v9 == 4)
      {
        goto LABEL_10;
      }

      if (v9 != 5)
      {
LABEL_31:
        v34 = [(NRExtensiblePair *)self delegate];
        [v34 savePairingReport];

        goto LABEL_32;
      }
    }

    else if (v9)
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
LABEL_10:
          v10 = [(NRExtensiblePair *)self delegate];
          v11 = [v10 pairingReport];
          [v11 setPairingType:2];
LABEL_30:

          goto LABEL_31;
        }

        goto LABEL_31;
      }

LABEL_19:
      v10 = [(NRExtensiblePair *)self delegate];
      v11 = [v10 pairingReport];
      [v11 setPairingType:1];
      goto LABEL_30;
    }

    if (self->_pairingMode == 5)
    {
      v12 = [(NRExtensiblePair *)self nrDeviceUUID];
      if (v12 && [(NRExtensiblePair *)self isReady])
      {
        v13 = [(NRExtensiblePair *)self delegate];
        v14 = [v13 pairingReport];
        v15 = [v14 isErrorSet];

        if ((v15 & 1) == 0)
        {
          v16 = [(NRExtensiblePair *)self delegate];
          v17 = [(NRExtensiblePair *)self nrDeviceUUID];
          v118[0] = _NSConcreteStackBlock;
          v118[1] = 3221225472;
          v118[2] = sub_1000BA304;
          v118[3] = &unk_100175660;
          v118[4] = self;
          [v16 activateDevice:v17 withCompletion:v118];

          goto LABEL_24;
        }
      }

      else
      {
      }

      v18 = [(NRExtensiblePair *)self delegate];
      [v18 pairingCompleted];
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
      v10 = v32;
      dispatch_async(v33, block);

      v11 = v117;
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

  v35 = [(NRExtensiblePair *)self advertisedName];
  v36 = v35 == 0;

  if (v36)
  {
    goto LABEL_41;
  }

  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    v55 = [(NRExtensiblePair *)self pairingMode];
    if (v55 - 1 < 2)
    {
      v91 = self->_generator;
      self->_generator = 0;

      v92 = self->_unpairer;
      self->_unpairer = 0;

      v93 = self->_advertiser;
      self->_advertiser = 0;

      if (!self->_discoverer)
      {
        v94 = [(NRExtensiblePair *)self factory];
        [v94 setDiscovererDeviceUUIDs:0];

        v95 = [(NRExtensiblePair *)self factory];
        [v95 setDiscovererShouldScanForProximity:0];

        v96 = [(NRExtensiblePair *)self factory];
        v97 = [v96 newDiscovererWithDelegate:self];
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

    if (v55 - 3 > 1)
    {
      goto LABEL_36;
    }

    v56 = self->_discoverer;
    self->_discoverer = 0;

    if ([(NRExtensiblePair *)self pairingMode]== 4 || [(NRExtensiblePair *)self pairingStyle]== 2)
    {
      v57 = self->_generator;
      self->_generator = 0;
    }

    else
    {
      if (self->_generator)
      {
LABEL_75:
        v58 = [(NRExtensiblePair *)self oobKey];
        v59 = [(EPOOBKeyGenerator *)self->_generator key];
        if (v58 != v59)
        {
          v60 = [(NRExtensiblePair *)self oobKey];
          v61 = [(EPOOBKeyGenerator *)self->_generator key];
          v62 = [v60 isEqual:v61];

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
              v67 = [(NRExtensiblePair *)self advertisedName];
              v68 = [(NRExtensiblePair *)self factory];
              [v68 setAdvertisingName:v67];

              v69 = [(NRExtensiblePair *)self factory];
              v70 = [CBUUID UUIDWithString:@"1F9636E6-CA97-4C30-BC5F-C477D6A6CF32"];
              [v69 addAdvertisedCharacteristic:v70 encryptionRequired:0 withReadHandler:0 writeHandler:&stru_100179188];

              objc_initWeak(&buf, self);
              v71 = [(NRExtensiblePair *)self factory];
              v72 = [CBUUID UUIDWithString:@"E168D473-8EFD-4485-A1FD-B25EDAD4DCE2"];
              v114[0] = _NSConcreteStackBlock;
              v114[1] = 3221225472;
              v114[2] = sub_1000BA630;
              v114[3] = &unk_1001791B0;
              objc_copyWeak(&v115, &buf);
              [v71 addAdvertisedCharacteristic:v72 encryptionRequired:0 withReadHandler:v114 writeHandler:0];

              v73 = [(NRExtensiblePair *)self factory];
              [v73 setAdvertisingRate:3];

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

              v76 = [(NRExtensiblePair *)self factory];
              [v76 setAdvertiserNotAvailableToPair:0];

              v77 = [(NRExtensiblePair *)self factory];
              [v77 setDontAdvertiseWithServiceUUID:0];

              v78 = [(NRExtensiblePair *)self factory];
              v79 = [v78 newAdvertiserWithDelegate:self];
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

          v58 = [(NRExtensiblePair *)self delegate];
          v59 = [(NRExtensiblePair *)self oobKey];
          [v58 sendXPCOOBKeyChanged:v59];
        }

        goto LABEL_79;
      }

      v57 = [(NRExtensiblePair *)self factory];
      v104 = [v57 newKeyGeneratorWithDelegate:self];
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

    v39 = [(NRExtensiblePair *)self delegate];
    [v39 deleteUnexpectedIDSPairedDevices];

    if (!self->_haveStartedCreatingPairingDevice)
    {
      self->_haveStartedCreatingPairingDevice = 1;
      v40 = [(NRExtensiblePair *)self delegate];
      v41 = [(NRExtensiblePair *)self advertisedName];
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_1000BA744;
      v112[3] = &unk_1001791D8;
      v112[4] = self;
      [v40 createDeviceFromPairingRequest:v41 discoveredBy:1 withBlock:v112];
    }
  }

LABEL_41:
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v42 = [(EPDiscoverer *)self->_discoverer devices];
  v43 = [v42 allValues];

  v44 = [v43 countByEnumeratingWithState:&v108 objects:v119 count:16];
  if (v44)
  {
    v45 = *v109;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v109 != v45)
        {
          objc_enumerationMutation(v43);
        }

        [*(*(&v108 + 1) + 8 * i) setEnableOOBPairing:{-[NRExtensiblePair pairingMode](self, "pairingMode") == 1}];
      }

      v44 = [v43 countByEnumeratingWithState:&v108 objects:v119 count:16];
    }

    while (v44);
  }

  v47 = [(NRExtensiblePair *)self advertisedName];
  v48 = [(NRExtensiblePair *)self factory];
  [v48 setAdvertisingName:v47];

  if (([(NRExtensiblePair *)self pairingMode]!= 3 || !self->_haveFinishedCreatingPairingDevice) && [(NRExtensiblePair *)self pairingMode]!= 1)
  {
    v50 = 0;
LABEL_56:
    v51 = [(NRExtensiblePair *)self pairingMode];
    if (v51 == 2)
    {
      v52 = [(NRExtensiblePair *)self discoverer];
      if (v52)
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
        v52 = 0;
        failure = self->_failure;
        goto LABEL_93;
      }
    }

    else if ([(NRExtensiblePair *)self pairingMode]!= 4)
    {
      failure = self->_failure;
      goto LABEL_94;
    }

    v54 = [(NRExtensiblePair *)self advertiser];
    if (v54)
    {
      failure = 1;
    }

    else
    {
      failure = self->_failure;
    }

    if (v51 != 2)
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

    v52 = 0;
    goto LABEL_93;
  }

  v49 = [(NRExtensiblePair *)self oobKey];
  v47 = v49;
  if (!v49 || !self->_haveFinishedCreatingPairingDevice)
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

  v10 = [v3 data];

  return v10;
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
  v3 = [(NRExtensiblePair *)self delegate];
  v4 = [v3 pairingReport];
  v5 = [v4 isErrorSet];

  if (v5)
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
      v9 = [v8 userInfo];
      v6 = [v9 mutableCopy];

      v10 = [(NSError *)self->_lastBluetoothPairingError description];
      [v6 setObject:v10 forKeyedSubscript:@"underlyingBluetoothError"];

      v11 = [v8 domain];
      v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v11, [v8 code], v6);

      v7 = [(NRExtensiblePair *)self delegate];
      v12 = [v7 pairingReport];
      [v12 setOriginalError:v13];

      goto LABEL_11;
    }

    if (!self->_discoverer)
    {
      return;
    }
  }

  v13 = nrGetPairingError();
  v6 = [(NRExtensiblePair *)self delegate];
  v7 = [v6 pairingReport];
  [v7 setOriginalError:v13];
LABEL_11:
}

- (void)accountAndDeviceReady
{
  if (![(NRExtensiblePair *)self IDSAccountAndDevicePresent])
  {
    [(NRExtensiblePair *)self setIDSAccountAndDevicePresent:1];
    v3 = [(NRExtensiblePair *)self isReady];
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v3)
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
    v3 = [(NRExtensiblePair *)self isReady];
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v3)
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

- (void)bluetoothPaired:(id)a3
{
  v5 = a3;
  if (![(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    [(NRExtensiblePair *)self setIsBluetoothPairComplete:1];
    objc_storeStrong(&self->_pairedBTDeviceUUID, a3);
    discoverer = self->_discoverer;
    if (discoverer)
    {
      self->_discoverer = 0;

      pairedBTDeviceUUID = self->_pairedBTDeviceUUID;
      v7 = [NSArray arrayWithObjects:&pairedBTDeviceUUID count:1];
      v8 = +[EPFactory sharedFactory];
      [v8 setDiscovererDeviceUUIDs:v7];
    }

    v9 = [(NRExtensiblePair *)self isReady];
    v10 = sub_1000034AC();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v9)
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

- (void)respondWithPasscode:(id)a3
{
  v4 = a3;
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
        v18 = v4;
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

  v9 = [(NRExtensiblePair *)self IDSAccountAndDevicePresent];
  if (v9)
  {
    v9 = [(NRExtensiblePair *)self isBluetoothPairComplete];
    if (v9)
    {
      LOBYTE(v9) = [(NRExtensiblePair *)self isInitialPropertiesReceived];
    }
  }

  return v9;
}

- (BOOL)hasStartedPairing
{
  if ([(NRExtensiblePair *)self IDSAccountAndDevicePresent]|| [(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    return 1;
  }

  return [(NRExtensiblePair *)self isInitialPropertiesReceived];
}

- (id)dataFromPairingStrategy:(unint64_t)a3 andStyle:(unint64_t)a4
{
  v6 = 1330528590;
  v7 = a3;
  v8 = a4;
  v4 = [NSData dataWithBytes:&v6 length:6];

  return v4;
}

- (unint64_t)pairingStrategyFromData:(id)a3 andStyle:(unint64_t *)a4
{
  v5 = a3;
  if ([v5 length] == 6 && (v6 = objc_msgSend(v5, "bytes"), *v6 == 78) && v6[1] == 65 && v6[2] == 78 && v6[3] == 79)
  {
    v7 = v6[4];
    if (a4)
    {
      v8 = v6[5];
      if (((v8 - 1) & 0xFE) != 0)
      {
        v8 = 0;
      }

      *a4 = v8;
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
    if (a4)
    {
      *a4 = 0;
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

- (void)discoverAndPairWithAdvertisedName:(id)a3 andOOBKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(NSMutableArray *)self->_pairers count])
  {
    [(NRExtensiblePair *)self _invalidateIDSChannel];
    [(NRExtensiblePair *)self setPairingTimer];
    [(NRExtensiblePair *)self setPairingStrategy:[NRExtensiblePair andStyle:"_pairingStrategyFromAdvertisedName:" _pairingStrategyFromAdvertisedName:v8], 1];
    [(NRExtensiblePair *)self setAdvertisedName:v8];
    [(NRExtensiblePair *)self setPairingMode:1];
    [(NRExtensiblePair *)self setOobKey:v6];
    v7 = [(NRExtensiblePair *)self delegate];
    [v7 sendXPCOOBKeyChanged:v6];
  }

  [(NRExtensiblePair *)self update];
}

- (void)discoverAndPairWithAdvertisedName:(id)a3 andDeviceID:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (![(NSMutableArray *)self->_pairers count])
  {
    [(NRExtensiblePair *)self _invalidateIDSChannel];
    [(NRExtensiblePair *)self setPairingTimer];
    [(NRExtensiblePair *)self setPairingStrategy:[NRExtensiblePair andStyle:"_pairingStrategyFromAdvertisedName:" _pairingStrategyFromAdvertisedName:v7], 2];
    [(NRExtensiblePair *)self setAdvertisedName:v7];
    [(NRExtensiblePair *)self setPairingMode:2];
    [(NRExtensiblePair *)self setNrDeviceUUID:v6];
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
        v8 = [(NRExtensiblePair *)self delegate];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v12 = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Asking %@ to invalidate IDS channels.", &v12, 0x16u);
      }
    }

    v11 = [(NRExtensiblePair *)self delegate];
    [v11 invalidateIDSChannels];
  }
}

+ (unint64_t)_pairingStrategyFromAdvertisedName:(id)a3
{
  v3 = NRAdvertisingInfoFromPayload();
  v4 = [v3 objectForKeyedSubscript:NRBridgeAdvertisingVersionKey];
  v5 = [v4 integerValue];

  v6 = sub_100052C60(v5);
  return v6;
}

- (void)setNrDeviceUUID:(id)a3
{
  objc_storeStrong(&self->_nrDeviceUUID, a3);
  v5 = a3;
  v6 = [(NRExtensiblePair *)self delegate];
  [v6 setPairingID:v5];
}

- (void)advertiseAndPairWithAdvertisedName:(id)a3 andPairingMode:(unint64_t)a4 withGetStartedBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    startupBlocks = self->_startupBlocks;
    v12 = [v9 copy];
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

      v17 = [(NRExtensiblePair *)self delegate];
      [v17 invalidateIDSChannels];
    }

    if (a4 == 3)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    [(NRExtensiblePair *)self setPairingStrategy:1 andStyle:v18];
    [(NRExtensiblePair *)self setAdvertisedName:v8];
    [(NRExtensiblePair *)self setPairingMode:a4];
  }

  [(NRExtensiblePair *)self update];
}

- (NRExtensiblePair)pairWithDevice:(id)a3
{
  v4 = a3;
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
    [v4 setEnableOOBPairing:self->_pairingMode == 1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000BC0A8;
    v26[3] = &unk_100175598;
    v26[4] = self;
    v8 = v4;
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
      v14 = [v8 uuid];
      v15 = [NSNumber numberWithUnsignedInteger:[(NRExtensiblePair *)self pairingStrategy]];
      v16 = [(NSMutableDictionary *)self->_didSetPairingStrategy objectForKeyedSubscript:v14];
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
        v22 = self;
        v23 = v14;
        v24 = v9;
        [v21 writeData:v18 begin:v25 completion:v20];
      }
    }
  }

  return result;
}

- (void)unpairer:(id)a3 didFinishUnpairingDevices:(id)a4
{
  v32 = a3;
  v6 = a4;
  self->_failure = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v44 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = sub_1000034AC();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

        if (v13)
        {
          v14 = sub_1000034AC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v11 UUIDString];
            *buf = 138412290;
            v43 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Unpaired %@", buf, 0xCu);
          }
        }

        v16 = [v11 UUIDString];
        printf("NRExtensiblePair: Unpaired %s\n", [v16 UTF8String]);

        v17 = [(EPDiscoverer *)self->_discoverer devices];
        v18 = [v17 objectForKeyedSubscript:v11];
        [v18 reset];
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v8);
  }

  if (self->_discoverer)
  {
    v19 = [v32 requestedUUIDs];
    v20 = [NSMutableSet setWithSet:v19];

    [v20 minusSet:v6];
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
          v27 = [(EPDiscoverer *)self->_discoverer devices];
          v28 = [v27 objectForKeyedSubscript:v26];

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

- (void)discoverer:(id)a3 deviceDidBecomeDisplayable:(id)a4
{
  v5 = a4;
  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    v6 = [(NRExtensiblePair *)self nrDeviceUUID];

    if (v6)
    {
      v7 = [v5 name];
      v8 = [(NRExtensiblePair *)self advertisedName];
      v9 = [v7 isEqual:v8];

      if (v9)
      {
        if ([v5 isPeripheral])
        {
          v10 = sub_1000034AC();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

          if (v11)
          {
            v12 = sub_1000034AC();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v5 description];
              *buf = 136315138;
              v20 = [v13 UTF8String];
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NRExtensiblePair: Discovered device %s, unpairing", buf, 0xCu);
            }
          }

          v14 = [v5 description];
          printf("NRExtensiblePair: Discovered device %s, unpairing\n", [v14 UTF8String]);

          v15 = [EPMassUnpairer alloc];
          v16 = [v5 uuid];
          v17 = [NSSet setWithObject:v16];
          v18 = [(EPMassUnpairer *)v15 initWithDelegate:self UUIDs:v17];
        }
      }
    }
  }
}

- (void)discovererBluetoothMayHaveFailed:(id)a3
{
  if (![(NRExtensiblePair *)self hasStartedPairing])
  {
    self->_failure = 1;

    [(NRExtensiblePair *)self update];
  }
}

- (void)advertiser:(id)a3 receivedPairingRequestForDevice:(id)a4
{
  v5 = a4;
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

    v10 = [v5 newPairerWithDelegate:self];
    if (v10)
    {
      [(NSMutableArray *)self->_pairers addObject:v10];
      [(NSMutableArray *)self->_pairingDevices addObject:v5];
      [(NRExtensiblePair *)self update];
    }
  }
}

- (void)advertiser:(id)a3 receivedData:(id)a4
{
  v5 = a4;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received pairing switch modes data via Bluetooth characteristic: %@", buf, 0xCu);
    }
  }

  if (![(NSMutableArray *)self->_pairers count])
  {
    *buf = 0;
    v9 = [(NRExtensiblePair *)self pairingStrategyFromData:v5 andStyle:buf];
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

- (void)pairerDidBeginToPair:(id)a3
{
  if ([(NRExtensiblePair *)self pairingStyle]!= 2)
  {

    [(NRExtensiblePair *)self sendBeginningToPairNotification];
  }
}

- (void)pairer:(id)a3 requestWithType:(int64_t)a4 passkey:(id)a5
{
  v8 = a3;
  v9 = a5;
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
    v13 = [(NRExtensiblePair *)self nrDeviceUUID];

    if (v13)
    {
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1000BCE68;
      v22 = &unk_100175598;
      v23 = self;
      v14 = v8;
      v24 = v14;
      v15 = objc_retainBlock(&v19);
      if (a4 == 1 || a4 == 2)
      {
        [(NRExtensiblePair *)self setPairingStrategy:[(NRExtensiblePair *)self pairingStrategy:v19] andStyle:2];
        (v15[2])(v15);
        v17 = [(NRExtensiblePair *)self delegate];
        v18 = [(NRExtensiblePair *)self nrDeviceUUID];
        [v17 sendXPCDeviceNeedsPasscodeMessage:v18 passcode:v9];
      }

      else
      {
        if (a4 != 5)
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
        v17 = [(NRExtensiblePair *)self oobKey];
        v27 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v14 respondWithType:5 accept:1 data:v18];
      }

LABEL_15:
      goto LABEL_16;
    }
  }

  [v8 respondWithType:a4 accept:0 data:0];
LABEL_16:
}

- (void)pairer:(id)a3 completedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    [(NSMutableArray *)self->_pairers removeObject:v6];
    pairingDevices = self->_pairingDevices;
    v9 = [v6 device];
    [(NSMutableArray *)pairingDevices removeObject:v9];
LABEL_3:

    goto LABEL_30;
  }

  if (!v7)
  {
    if ([(NRExtensiblePair *)self hasStartedPairing])
    {
      goto LABEL_30;
    }

    v27 = [v6 device];
    v28 = [v27 uuid];
    [(NRExtensiblePair *)self bluetoothPaired:v28];

    [(NRExtensiblePair *)self sendBeginningToPairNotification];
    v29 = sub_1000034AC();
    LODWORD(v28) = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v30 = sub_1000034AC();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(NSUUID *)self->_pairedBTDeviceUUID UUIDString];
        *buf = 138412290;
        v75 = v31;
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
    [(NSMutableArray *)self->_pairers addObject:v6];
    [(NSMutableArray *)self->_pairingDevices removeAllObjects];
    v35 = self->_pairingDevices;
    v36 = [v6 device];
    [(NSMutableArray *)v35 addObject:v36];

    unpairer = self->_unpairer;
    self->_unpairer = 0;

    discoverer = self->_discoverer;
    self->_discoverer = 0;

    v9 = [(EPAdvertiser *)self->_advertiser manager];
    advertiser = self->_advertiser;
    self->_advertiser = 0;

    v40 = [(NRExtensiblePair *)self factory];
    [v40 setAdvertisingRate:1];

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

    v44 = [(NRExtensiblePair *)self factory];
    [v44 setAdvertiserNotAvailableToPair:1];

    [v9 setName:0];
    v45 = [(NRExtensiblePair *)self delegate];
    v46 = [(NRExtensiblePair *)self nrDeviceUUID];
    [v45 activateDevice:v46 withCompletion:0];

    [(NRExtensiblePair *)self update];
    v47 = [(NRExtensiblePair *)self delegate];
    v48 = [v6 device];
    v49 = [(NRExtensiblePair *)self nrDeviceUUID];
    [v47 updateNRMutableDeviceFromEPDevice:v48 withNRUUID:v49 withBlock:0];

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
      v52 = [(NRExtensiblePair *)self oobKey];
      v53 = v52;
      v62 = v9;
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = objc_opt_new();
      }

      v55 = v54;
      v56 = [[IDSLocalPairingAddPairedDeviceInfo alloc] initWithCBUUID:v51 pairingProtocolVersion:0 BTOutOfBandKey:v54];
      [v56 setPairingType:self->_isTinkerPairing];
      [v56 setShouldPairDirectlyOverIPsec:{-[NRExtensiblePair pairingStrategy](self, "pairingStrategy") == 3}];
      v57 = [(NRExtensiblePair *)self delegate];
      v58 = [(NRExtensiblePair *)self nrDeviceUUID];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1000BDD38;
      v63[3] = &unk_100179228;
      v64 = v51;
      v65 = v53;
      v66 = v56;
      v67 = self;
      v68 = v50;
      v59 = v56;
      v60 = v53;
      v61 = v51;
      [v57 createLocalPairingStore:v58 andNotifyPairingBeginning:1 withBlock:v63];

      v9 = v62;
    }

    goto LABEL_3;
  }

  objc_storeStrong(&self->_lastBluetoothPairingError, a4);
  [(NSMutableArray *)self->_pairers removeObject:v6];
  v10 = self->_pairingDevices;
  v11 = [v6 device];
  [(NSMutableArray *)v10 removeObject:v11];

  [(EPDiscoverer *)self->_discoverer clear];
  v12 = [v7 domain];
  if ([v12 isEqualToString:CBInternalErrorDomain])
  {
    v13 = [v7 code];

    if (v13 == 1)
    {
      v14 = [v6 device];
      v15 = [v14 uuid];

      v16 = [v7 userInfo];
      v17 = [v16 objectForKeyedSubscript:CBOriginalPeerIdentifierErrorKey];

      v18 = sub_1000034AC();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = sub_1000034AC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v15 UUIDString];
          v22 = [v17 UUIDString];
          *buf = 138412546;
          v75 = v21;
          v76 = 2112;
          v77 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ExtensiblePair: BT returned already paired error for device %@. Ghost device UUID is: %@", buf, 0x16u);
        }
      }

      if (v17)
      {
        v23 = [EPMassUnpairer alloc];
        v24 = [NSSet setWithObject:v17];
        v25 = [(EPMassUnpairer *)v23 initWithDelegate:self UUIDs:v24];

        v26 = [(NRExtensiblePair *)self delegate];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_1000BD83C;
        v71[3] = &unk_100178828;
        v72 = v17;
        v73 = self;
        [v26 getPairedPairingIDForBluetoothID:v72 completion:v71];
      }

      v6 = 0;
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

- (id)pairer:(id)a3 newEndpointWithDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NRExtensiblePair *)self isBluetoothPairComplete])
  {
    goto LABEL_2;
  }

  v20 = [(NRExtensiblePair *)self pairingStrategy];
  if (v20 - 2 < 2)
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

    v18 = [(EPResourceManagerProtocol *)pairingPipeFactory newResourceWithDelegate:v7];
LABEL_14:
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_2;
  }

  if (v20 != 1)
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
    v31 = [v6 device];
    v32 = [v31 uuid];
    v33 = [(NRExtensiblePair *)self nrDeviceUUID];
    v34 = [(NRExtensiblePair *)self oobKey];
    v35 = [(NRExtensiblePair *)self delegate];
    v18 = [(NRConcurrentPipeManager *)v30 newIDSPairingToUUID:v32 pairingUUID:v33 oobKey:v34 withExtensiblePairingDelegate:v35 withDelegate:v7];

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