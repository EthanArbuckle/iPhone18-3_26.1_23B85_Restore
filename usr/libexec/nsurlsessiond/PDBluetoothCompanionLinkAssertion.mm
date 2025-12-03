@interface PDBluetoothCompanionLinkAssertion
- (PDBluetoothCompanionLinkAssertion)init;
- (void)_updateState;
- (void)acquire;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PDBluetoothCompanionLinkAssertion

- (void)_updateState
{
  dispatch_assert_queue_V2(self->_bluetoothSerialQueue);
  if (self->_isActive)
  {
    if (!self->_hasLoadedCompanionPeerIdentifier)
    {
      self->_hasLoadedCompanionPeerIdentifier = 1;
      v3 = +[NRPairedDeviceRegistry sharedInstance];
      getActivePairedDevice = [v3 getActivePairedDevice];
      v5 = [v3 deviceIDForNRDevice:getActivePairedDevice];
      companionPeerIdentifier = self->_companionPeerIdentifier;
      self->_companionPeerIdentifier = v5;
    }

    if (self->_companionPeerIdentifier)
    {
      if (!self->_pipeManager)
      {
        v7 = [[CBScalablePipeManager alloc] initWithDelegate:self queue:self->_bluetoothSerialQueue];
        pipeManager = self->_pipeManager;
        self->_pipeManager = v7;
      }

      if (!self->_hasSetLinkRequirements && [(CBScalablePipeManager *)self->_pipeManager state]== 5)
      {
        self->_hasSetLinkRequirements = 1;
        v9 = self->_pipeManager;
        v10 = self->_companionPeerIdentifier;

        [(CBScalablePipeManager *)v9 setLinkRequirementsForPeer:v10 packetsPerSecond:200 inputBytesPerSecond:0 outputBytesPerSecond:0];
      }
    }
  }

  else
  {
    v11 = self->_pipeManager;
    if (v11)
    {
      [(CBScalablePipeManager *)v11 setDelegate:0];
      if (self->_companionPeerIdentifier && self->_hasSetLinkRequirements)
      {
        [CBScalablePipeManager setLinkRequirementsForPeer:"setLinkRequirementsForPeer:packetsPerSecond:inputBytesPerSecond:outputBytesPerSecond:" packetsPerSecond:? inputBytesPerSecond:? outputBytesPerSecond:?];
      }

      v12 = self->_pipeManager;
      self->_pipeManager = 0;
    }

    v13 = self->_companionPeerIdentifier;
    self->_companionPeerIdentifier = 0;

    self->_hasLoadedCompanionPeerIdentifier = 0;
  }
}

- (void)invalidate
{
  bluetoothSerialQueue = self->_bluetoothSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F004;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(bluetoothSerialQueue, block);
}

- (void)acquire
{
  bluetoothSerialQueue = self->_bluetoothSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F138;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(bluetoothSerialQueue, block);
}

- (void)dealloc
{
  pipeManager = self->_pipeManager;
  if (pipeManager)
  {
    [(CBScalablePipeManager *)pipeManager setDelegate:0];
    companionPeerIdentifier = self->_companionPeerIdentifier;
    if (companionPeerIdentifier && self->_isActive && self->_hasSetLinkRequirements)
    {
      v5 = qword_1000EB1D8;
      if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v11 = 2112;
        v12 = companionPeerIdentifier;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Relinquishing link requirements for %@", buf, 0x16u);
        companionPeerIdentifier = self->_companionPeerIdentifier;
      }

      [(CBScalablePipeManager *)self->_pipeManager setLinkRequirementsForPeer:companionPeerIdentifier packetsPerSecond:0 inputBytesPerSecond:0 outputBytesPerSecond:0];
    }

    v6 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_pipeManager;
      *buf = 138543618;
      selfCopy2 = self;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Releasing %{public}@", buf, 0x16u);
    }
  }

  v8.receiver = self;
  v8.super_class = PDBluetoothCompanionLinkAssertion;
  [(PDBluetoothCompanionLinkAssertion *)&v8 dealloc];
}

- (PDBluetoothCompanionLinkAssertion)init
{
  v7.receiver = self;
  v7.super_class = PDBluetoothCompanionLinkAssertion;
  v2 = [(PDBluetoothCompanionLinkAssertion *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nsurlsessiond.PDBluetoothCompanionLinkAssertion.bluetoothSerialQueue", v3);
    bluetoothSerialQueue = v2->_bluetoothSerialQueue;
    v2->_bluetoothSerialQueue = v4;
  }

  return v2;
}

@end