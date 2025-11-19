@interface HAPAccessoryServer
- (BOOL)hasAdvertisement;
- (BOOL)hasPairings;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)isSecuritySessionOpen;
- (BOOL)isSessionRestoreActive;
- (BOOL)matchesSetupID:(id)a3;
- (BOOL)matchesSetupID:(id)a3 serverIdentifier:(id)a4;
- (BOOL)notifyClients:(unint64_t)a3 withDictionary:(id)a4;
- (BOOL)reachabilityPingEnabled;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (BOOL)requiresTimedWrite:(id)a3;
- (BOOL)shouldDisconnectOnIdle;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)a3;
- (BOOL)stopPairingWithError:(id *)a3;
- (BOOL)tryPairingPassword:(id)a3 error:(id *)a4;
- (HAPAccessoryServer)init;
- (HAPAccessoryServer)initWithKeystore:(id)a3;
- (HAPAccessoryServerDelegate)delegate;
- (HAPDeviceID)deviceID;
- (HAPKeyStore)keyStore;
- (HMFActivity)pairingActivity;
- (HMFVersion)version;
- (NSArray)accessories;
- (NSData)setupHash;
- (NSDate)connectionStartTime;
- (NSNumber)category;
- (NSString)identifier;
- (NSString)name;
- (NSString)productData;
- (NSString)reachabilityChangedReason;
- (OS_dispatch_queue)delegateQueue;
- (id)getControllerUserName;
- (id)shortDescription;
- (unint64_t)authMethod;
- (unint64_t)compatibilityFeatures;
- (unint64_t)configNumber;
- (unint64_t)pairSetupType;
- (unint64_t)pendingRemovePairing;
- (unint64_t)stateNumber;
- (unint64_t)wakeNumber;
- (void)addInternalDelegate:(id)a3;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)associateAccessoryWithControllerKey:(id)a3 usingAccessoryPublicKey:(id)a4;
- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3;
- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)a3;
- (void)authenticateAccessory;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3;
- (void)disconnect;
- (void)disconnectWithError:(id)a3;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)enumerateInternalDelegatesUsingBlock:(id)a3;
- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)incrementFailedPing;
- (void)incrementSuccessfulPing;
- (void)initializeKeyBagIfNecessary;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)provisionToken:(id)a3;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)refreshKeyBag;
- (void)registerForNotifications:(id)a3;
- (void)removeInternalDelegate:(id)a3;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)removePairingIdentifier:(id)a3 pairingPublicKey:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)securitySessionWillCloseWithResponseData:(id)a3 error:(id *)a4;
- (void)setAccessories:(id)a3;
- (void)setAuthMethod:(unint64_t)a3;
- (void)setCategory:(id)a3;
- (void)setCompatibilityFeatures:(unint64_t)a3;
- (void)setConfigNumber:(unint64_t)a3;
- (void)setConnectionStartTime:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setHasAdvertisement:(BOOL)a3;
- (void)setHasPairings:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setPairSetupType:(unint64_t)a3;
- (void)setPendingRemovePairing:(unint64_t)a3;
- (void)setProductData:(id)a3;
- (void)setReachabilityChangedReason:(id)a3;
- (void)setReachabilityPingEnabled:(BOOL)a3;
- (void)setSecuritySessionOpen:(BOOL)a3;
- (void)setSessionRestoreActive:(BOOL)a3;
- (void)setSetupHash:(id)a3;
- (void)setShouldDisconnectOnIdle:(BOOL)a3;
- (void)setStateNumber:(unint64_t)a3;
- (void)setVersion:(id)a3;
- (void)setWakeNumber:(unint64_t)a3;
- (void)startPairingWithConsentRequired:(BOOL)a3 config:(id)a4 ownershipToken:(id)a5;
- (void)startPing;
- (void)stopPing;
- (void)submitPairVerifyMetricWithError:(id)a3;
- (void)tearDownSessionOnAuthCompletion;
- (void)tryEstablishSecuritySession;
- (void)unregisterForNotifications:(id)a3;
- (void)updateAccessoryInfoDictionary:(id)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)writeRawWithResponse:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5;
- (void)writeWithoutResponse:(id)a3 toCharacteristic:(id)a4;
@end

@implementation HAPAccessoryServer

- (HAPAccessoryServer)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPAccessoryServer)initWithKeystore:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HAPAccessoryServer;
  v5 = [(HAPAccessoryServer *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v7 = sub_100014728(v5, @"clientQueue");
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v9;

    v11 = sub_100014728(v6, @"delegateQueue");
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    internalDelegateQueue = v6->_internalDelegateQueue;
    v6->_internalDelegateQueue = v13;

    objc_storeWeak(&v6->_keyStore, v4);
    v15 = +[NSHashTable weakObjectsHashTable];
    internalDelegates = v6->_internalDelegates;
    v6->_internalDelegates = v15;

    *&v6->_reachable = 1;
    v6->_authMethod = 5;
    v6->_reachabilityPingEnabled = 0;
    v6->_sessionRestoreActive = 0;
    v17 = [NSHashTable hashTableWithOptions:0];
    notificationClients = v6->_notificationClients;
    v6->_notificationClients = v17;

    v6->_shouldDisconnectOnIdle = 0;
    v6->_successfulPingCount = 0;
    v6->_failedPingCount = 0;
    v6->_hasAdvertisement = 1;
    reachabilityChangedReason = v6->_reachabilityChangedReason;
    v6->_reachabilityChangedReason = @"Unknown";

    v6->_supportsUnreachablePing = 0;
  }

  return v6;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  obj = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if (obj && v6)
  {
    objc_storeWeak(&self->_delegate, obj);
    v7 = v6;
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = v7;
  }

  else
  {
    objc_storeWeak(&self->_delegate, 0);
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPAccessoryServerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQueue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_delegateQueue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setShouldDisconnectOnIdle:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_shouldDisconnectOnIdle == v3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_shouldDisconnectOnIdle = v3;
    os_unfair_lock_unlock(&self->_lock);

    [(HAPAccessoryServer *)self disconnectOnIdleUpdated];
  }
}

- (BOOL)shouldDisconnectOnIdle
{
  os_unfair_lock_lock_with_options();
  shouldDisconnectOnIdle = self->_shouldDisconnectOnIdle;
  os_unfair_lock_unlock(&self->_lock);
  return shouldDisconnectOnIdle;
}

- (void)setAccessories:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  accessories = self->_accessories;
  self->_accessories = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)accessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_accessories copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)reachabilityPingEnabled
{
  os_unfair_lock_lock_with_options();
  reachabilityPingEnabled = self->_reachabilityPingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return reachabilityPingEnabled;
}

- (void)setReachabilityPingEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_reachabilityPingEnabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSessionRestoreActive
{
  os_unfair_lock_lock_with_options();
  sessionRestoreActive = self->_sessionRestoreActive;
  os_unfair_lock_unlock(&self->_lock);
  return sessionRestoreActive;
}

- (void)setSessionRestoreActive:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_sessionRestoreActive = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSecuritySessionOpen
{
  os_unfair_lock_lock_with_options();
  securitySessionOpen = self->_securitySessionOpen;
  os_unfair_lock_unlock(&self->_lock);
  return securitySessionOpen;
}

- (void)setSecuritySessionOpen:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_securitySessionOpen = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)pendingRemovePairing
{
  os_unfair_lock_lock_with_options();
  pendingRemovePairing = self->_pendingRemovePairing;
  os_unfair_lock_unlock(&self->_lock);
  return pendingRemovePairing;
}

- (void)setPendingRemovePairing:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_pendingRemovePairing = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasPairings
{
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  os_unfair_lock_unlock(&self->_lock);
  return hasPairings;
}

- (void)setHasPairings:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  if (hasPairings != v3)
  {
    self->_hasPairings = v3;
  }

  if (self->_pendingRemovePairing)
  {
    self->_pendingRemovePairing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (hasPairings == v3)
    {
      return;
    }
  }

  v6 = [(HAPAccessoryServer *)self delegate];
  if (v6)
  {
    v7 = [(HAPAccessoryServer *)self delegateQueue];

    if (v7)
    {
      v8 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100086414;
      block[3] = &unk_100273480;
      v10 = v6;
      v11 = self;
      v12 = v3;
      dispatch_async(v8, block);
    }
  }
}

- (HAPDeviceID)deviceID
{
  v3 = [HAPDeviceID alloc];
  v4 = [(HAPAccessoryServer *)self identifier];
  v5 = [(HAPDeviceID *)v3 initWithDeviceIDString:v4];

  return v5;
}

- (NSString)identifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)setupHash
{
  os_unfair_lock_lock_with_options();
  v3 = self->_setupHash;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSetupHash:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  setupHash = self->_setupHash;
  self->_setupHash = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)authMethod
{
  os_unfair_lock_lock_with_options();
  authMethod = self->_authMethod;
  os_unfair_lock_unlock(&self->_lock);
  return authMethod;
}

- (void)setAuthMethod:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_authMethod = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  os_unfair_lock_lock_with_options();
  if ([(NSString *)self->_name isEqualToString:v4])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_name, v5);
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(HAPAccessoryServer *)self delegate];
    if (v6)
    {
      v7 = [(HAPAccessoryServer *)self delegateQueue];

      if (v7)
      {
        v8 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100086910;
        block[3] = &unk_100273748;
        v10 = v6;
        v11 = self;
        v12 = v5;
        dispatch_async(v8, block);
      }
    }
  }
}

- (NSNumber)category
{
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCategory:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (([(NSNumber *)self->_category isEqual:v5]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_category, a3);
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(HAPAccessoryServer *)self delegate];
    if (v6)
    {
      v7 = [(HAPAccessoryServer *)self delegateQueue];

      if (v7)
      {
        v8 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100086AE8;
        block[3] = &unk_100273748;
        v10 = v6;
        v11 = self;
        v12 = v5;
        dispatch_async(v8, block);
      }
    }
  }
}

- (void)setProductData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  productData = self->_productData;
  self->_productData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)productData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConfigNumber:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_configNumber = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)configNumber
{
  os_unfair_lock_lock_with_options();
  configNumber = self->_configNumber;
  os_unfair_lock_unlock(&self->_lock);
  return configNumber;
}

- (void)setWakeNumber:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_wakeNumber = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)wakeNumber
{
  os_unfair_lock_lock_with_options();
  wakeNumber = self->_wakeNumber;
  os_unfair_lock_unlock(&self->_lock);
  return wakeNumber;
}

- (void)setStateNumber:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_stateNumber = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)stateNumber
{
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);
  return stateNumber;
}

- (void)setCompatibilityFeatures:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_compatibilityFeatures = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)compatibilityFeatures
{
  os_unfair_lock_lock_with_options();
  compatibilityFeatures = self->_compatibilityFeatures;
  os_unfair_lock_unlock(&self->_lock);
  return compatibilityFeatures;
}

- (void)setVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  version = self->_version;
  self->_version = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFVersion)version
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMFVersion *)self->_version copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPairSetupType:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_pairSetupType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)pairSetupType
{
  os_unfair_lock_lock_with_options();
  pairSetupType = self->_pairSetupType;
  os_unfair_lock_unlock(&self->_lock);
  return pairSetupType;
}

- (BOOL)hasAdvertisement
{
  os_unfair_lock_lock_with_options();
  hasAdvertisement = self->_hasAdvertisement;
  os_unfair_lock_unlock(&self->_lock);
  return hasAdvertisement;
}

- (void)setHasAdvertisement:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasAdvertisement = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)reachabilityChangedReason
{
  os_unfair_lock_lock_with_options();
  v3 = self->_reachabilityChangedReason;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReachabilityChangedReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  reachabilityChangedReason = self->_reachabilityChangedReason;
  self->_reachabilityChangedReason = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConnectionStartTime:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  connectionStartTime = self->_connectionStartTime;
  self->_connectionStartTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)connectionStartTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_connectionStartTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)tryEstablishSecuritySession
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)writeWithoutResponse:(id)a3 toCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)writeRawWithResponse:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)shortDescription
{
  v3 = sub_100014954();
  v4 = objc_opt_class();
  v5 = [(HAPAccessoryServer *)self identifier];
  v6 = v5;
  if (v3)
  {
    v7 = [(HAPAccessoryServer *)self name];
    v8 = [NSString stringWithFormat:@"%@ %@ %@", v4, v6, v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%@ %@", v4, v5];
  }

  return v8;
}

- (void)authenticateAccessory
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)provisionToken:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)tearDownSessionOnAuthCompletion
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (BOOL)isPaired
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (BOOL)matchesSetupID:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self setupHash];
  v6 = [(HAPAccessoryServer *)self identifier];
  v7 = sub_100014808(v5, v6, v4);

  return v7;
}

- (BOOL)matchesSetupID:(id)a3 serverIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(HAPAccessoryServer *)self matchesSetupID:v6])
  {
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_6:
    v10 = [(HAPAccessoryServer *)self identifier];
    v9 = HMFEqualObjects();

    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (void)continuePairingAfterAuthPrompt
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)continuePairingUsingWAC
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)startPairingWithConsentRequired:(BOOL)a3 config:(id)a4 ownershipToken:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)tryPairingPassword:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)stopPairingWithError:(id *)a3
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)removePairingIdentifier:(id)a3 pairingPublicKey:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(HAPAccessoryServer *)self keyBag];
  v15 = [v14 currentIdentity];
  v16 = [v15 identifier];
  v17 = [v16 isEqualToString:v13];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100088068;
  v27 = &unk_1002749C0;
  v29 = self;
  v30 = v11;
  v31 = v17;
  v28 = v10;
  v18 = v11;
  v19 = v10;
  v20 = objc_retainBlock(&v24);
  v21 = [HMFPairingKey alloc];
  v22 = [v21 initWithPairingKeyData:{v12, v24, v25, v26, v27}];

  v23 = [[HAPPairingIdentity alloc] initWithIdentifier:v13 publicKey:v22 privateKey:0 permissions:0];
  [(HAPAccessoryServer *)self removePairing:v23 completionQueue:v19 completionHandler:v20];
}

- (void)discoverAccessories
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)requiresTimedWrite:(id)a3
{
  v4 = a3;
  if ([(HAPAccessoryServer *)self supportsTimedWrite])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = v4;
      v7 = 0;
      v8 = 0;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      v11 = v7;
      v12 = v8;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v10);
        v8 = [v13 characteristic];

        v14 = [v8 service];
        v15 = [v14 accessory];
        v7 = [v15 instanceID];

        if (!v8 || v7 == 0)
        {
          break;
        }

        if (([v13 timedWrite] & 1) != 0 || (objc_msgSend(v8, "properties") & 0x20) != 0)
        {
          v17 = 1;
LABEL_18:
          v4 = v22;
          goto LABEL_23;
        }

        v10 = v10 + 1;
        v11 = v7;
        v12 = v8;
        if (v6 == v10)
        {
          v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          v17 = 0;
          goto LABEL_18;
        }
      }

      v18 = self;
      v19 = sub_10007FAA0();
      v4 = v22;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_10007FAFC(v18);
        *buf = 138543874;
        v29 = v20;
        v30 = 2112;
        v31 = v8;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to check prepare characteristic write requests for characteristic '%@' with an accessory instance ID of '%@'", buf, 0x20u);
      }

      v17 = 0;
LABEL_23:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)addInternalDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000887BC;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeInternalDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000888C4;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)enumerateInternalDelegatesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000889CC;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)startPing
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Ping called -- NOP", &v5, 0xCu);
  }
}

- (void)stopPing
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Stop ping called -- NOP", &v5, 0xCu);
  }
}

- (void)registerForNotifications:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients addObject:v4];
    os_unfair_lock_unlock(&self->_lock);
    v6 = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(v6);
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Registering client for accessory server notification %@", &v9, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unregisterForNotifications:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_10007FAFC(v6);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Removing client from accessory server notification %@", &v9, 0x16u);
  }
}

- (BOOL)notifyClients:(unint64_t)a3 withDictionary:(id)a4
{
  v28 = a4;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    v6 = [(NSHashTable *)notificationClients copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v29 = self;
      v7 = sub_10007FAA0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = sub_10007FAFC(v29);
        v9 = [v6 count];
        v10 = [HAPNotification typeToString:a3];
        *buf = 138543874;
        v36 = v8;
        v37 = 2048;
        v38 = v9;
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying %ld clients for %@", buf, 0x20u);
      }

      if (v28)
      {
        v11 = [v28 hmf_numberForKey:@"HAPAccessoryInstanceID"];
      }

      else
      {
        v11 = 0;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v6;
      v13 = [(HAPAccessoryServer *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v13)
      {
        v27 = 0;
        v15 = *v31;
        *&v14 = 138543874;
        v24 = v14;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v18 = [v17 hapInstanceId];
            }

            else
            {
              v18 = 0;
            }

            v19 = v29;
            v20 = sub_10007FAA0();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = sub_10007FAFC(v19);
              *buf = v24;
              v36 = v21;
              v37 = 2112;
              v38 = v11;
              v39 = 2112;
              v40 = v18;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Attempt to notify client dictionary instanceID %@ clientInstanceId %@", buf, 0x20u);
            }

            if (v18 == 0 || v11 == 0 || (v22 = [v18 intValue], v22 == -[NSObject intValue](v11, "intValue")))
            {
              [v17 indicateNotificationFromServer:v19 notifyType:a3 withDictionary:{v28, v24}];
              v27 = 1;
            }
          }

          v13 = [(HAPAccessoryServer *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v13);
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_30;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  obj = self;
  v11 = sub_10007FAA0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = sub_10007FAFC(obj);
    *buf = 138543362;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notification client does not exist", buf, 0xCu);
  }

  v27 = 0;
LABEL_30:

  return v27 & 1;
}

- (void)incrementSuccessfulPing
{
  os_unfair_lock_lock_with_options();
  ++self->_successfulPingCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementFailedPing
{
  os_unfair_lock_lock_with_options();
  ++self->_failedPingCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAccessoryInfoDictionary:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock_with_options();
  if ([(NSArray *)self->_accessories count])
  {
    v4 = [(NSArray *)self->_accessories objectAtIndexedSubscript:0];
    v5 = [v4 manufacturer];
    v6 = [v4 productData];
    v7 = self->_category;
    v8 = [v4 firmwareVersion];

    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      [v10 setObject:v5 forKey:@"manufacturer"];
    }

    v9 = v10;
    if (v6)
    {
      [v10 setObject:v6 forKey:@"product"];
      v9 = v10;
    }

    if (v8)
    {
      [v10 setObject:v8 forKey:@"firmwareVersion"];
      v9 = v10;
    }

    if (v7)
    {
      [v9 setObject:v7 forKey:@"category"];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v5 = 0;
  }
}

- (void)submitPairVerifyMetricWithError:(id)a3
{
  v11 = a3;
  if ([(HAPAccessoryServer *)self metric_pairVerifyDurationInMS])
  {
    v4 = [(HAPAccessoryServer *)self metric_pairVerifyReason];

    if (v4)
    {
      v5 = [HAPMetricsPairVerifyEvent alloc];
      v6 = [NSNumber numberWithInteger:[(HAPAccessoryServer *)self linkType]];
      v7 = [(HAPAccessoryServer *)self metric_pairVerifyDurationInMS];
      v8 = [(HAPAccessoryServer *)self metric_pairVerifyReason];
      v9 = [(HAPMetricsPairVerifyEvent *)v5 initWithAccessory:self forLinkType:v6 durationInMS:v7 reason:v8 pvError:v11];

      v10 = +[HAPMetricsDispatcher sharedInstance];
      [v10 submitLogEvent:v9];
    }
  }

  [(HAPAccessoryServer *)self setMetric_pairVerifyDurationInMS:0];
  [(HAPAccessoryServer *)self setMetric_pairVerifyReason:0];
}

- (void)disconnectWithError:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)disconnect
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (id)getControllerUserName
{
  v3 = [(HAPAccessoryServer *)self keyBag];

  if (v3 && (-[HAPAccessoryServer keyBag](self, "keyBag"), v4 = objc_claimAutoreleasedReturnValue(), [v4 currentIdentity], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(v6);
      v9 = [v5 identifier];
      *buf = 138543618;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Using controller username : %@", buf, 0x16u);
    }

    v10 = [v5 identifier];
  }

  else
  {
    v11 = [(HAPAccessoryServer *)self keyStore];
    v20 = 0;
    v12 = [(HAPAccessoryServer *)self identifier];
    v19 = 0;
    [v11 getControllerPublicKey:0 secretKey:0 username:&v20 allowCreation:0 forAccessory:v12 error:&v19];
    v13 = v20;
    v5 = v19;

    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v10 = v14;

    v15 = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = sub_10007FAFC(v15);
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Using default controller username : %@", buf, 0x16u);
    }
  }

  return v10;
}

- (void)initializeKeyBagIfNecessary
{
  os_unfair_lock_lock_with_options();
  if (!self->_keyBag)
  {
    if (!self->_identifier)
    {
      _HMFPreconditionFailure();
      __break(1u);
      return;
    }

    v3 = [HAPKeyBag alloc];
    identifier = self->_identifier;
    WeakRetained = objc_loadWeakRetained(&self->_keyStore);
    v6 = [(HAPKeyBag *)v3 initWithAccessoryIdentifier:identifier keyStore:WeakRetained];
    keyBag = self->_keyBag;
    self->_keyBag = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)refreshKeyBag
{
  v2 = [(HAPAccessoryServer *)self keyBag];
  [v2 refreshKeys];
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self useHH2];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v27 = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@PV failed with error: %@", &v27, 0x16u);
    }

    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:NSUnderlyingErrorKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13 && ([v13 domain], v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v15) && objc_msgSend(v13, "code") == -6754)
    {
      v16 = [(HAPAccessoryServer *)v7 identifier];
      [(HAPAccessoryServer *)v7 disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:v16];

      v17 = [(HAPAccessoryServer *)v7 keyBag];
      v18 = [v17 nextIdentity];

      v6 = v18 != 0;
      v19 = v7;
      v20 = sub_10007FAA0();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (v18)
      {
        if (v21)
        {
          v22 = sub_10007FAFC(v19);
          v23 = [(HAPAccessoryServer *)v19 keyBag];
          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 getCurrentIndexInBag]);
          v27 = 138543874;
          v28 = v22;
          v29 = 2112;
          v30 = v24;
          v31 = 2112;
          v32 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Going to retry PV with next pairing Identity [%@]: %@", &v27, 0x20u);
        }
      }

      else
      {
        if (v21)
        {
          v26 = sub_10007FAFC(v19);
          v27 = 138543362;
          v28 = v26;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Not retrying PV as exhausted all the keys from the key bag.", &v27, 0xCu);
        }

        [(HAPAccessoryServer *)v19 refreshKeyBag];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self keyStore];
  v6 = [(HAPAccessoryServer *)self identifier];
  v11 = 0;
  v7 = [v5 isAccessoryAssociatedWithControllerKey:v6 controllerID:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [v4 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)associateAccessoryWithControllerKey:(id)a3 usingAccessoryPublicKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v8 = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v8);
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Establishing relationship with controller key: [%@]", buf, 0x16u);
    }

    v11 = [HAPPairingIdentity alloc];
    v12 = [(HAPAccessoryServer *)v8 identifier];
    v13 = [[HMFPairingKey alloc] initWithPairingKeyData:v7];
    v14 = [(HAPPairingIdentity *)v11 initWithIdentifier:v12 controllerKeyIdentifier:v6 publicKey:v13 privateKey:0 permissions:0];

    v15 = [(HAPAccessoryServer *)v8 keyStore];
    v22 = 0;
    v16 = [v15 establishRelationshipBetweenAccessoryAndControllerKey:v14 error:&v22];
    v17 = v22;

    if (!v16 || v17)
    {
      v19 = v8;
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_10007FAFC(v19);
        *buf = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the accessory public key inside KeyChain: %@", buf, 0x16u);
      }
    }

    else
    {
      v18 = [(HAPAccessoryServer *)v8 pairingRequest];

      if (v18)
      {
        [(HAPAccessoryServer *)v8 refreshKeyBag];
      }
    }
  }
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)a3
{
  v9 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v4 = [(HAPAccessoryServer *)self pairingRequest];
    v5 = [v4 pairingIdentity];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [(HAPAccessoryServer *)self keyBag];
      v6 = [v7 currentIdentity];

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = [v6 identifier];
    [(HAPAccessoryServer *)self associateAccessoryWithControllerKey:v8 usingAccessoryPublicKey:v9];
  }

LABEL_6:
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3
{
  v4 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v5 = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(v5);
      v8 = [(HAPAccessoryServer *)v5 keyBag];
      v9 = [v8 currentIdentity];
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@PV Succeeded using [%@]", buf, 0x16u);
    }

    v10 = [(HAPAccessoryServer *)v5 keyBag];
    v11 = [v10 currentIdentity];
    v12 = [v11 identifier];
    v13 = [(HAPAccessoryServer *)v5 isAccessoryAssociatedWithControllerKey:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [(HAPAccessoryServer *)v5 keyStore];
      v20 = 0;
      v15 = [v14 readPublicKeyForAccessoryName:v4 registeredWithHomeKit:0 error:&v20];
      v16 = v20;

      if (!v15 || v16)
      {
        v17 = v5;
        v18 = sub_10007FAA0();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = sub_10007FAFC(v17);
          *buf = 138543618;
          v22 = v19;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch accessory public key for accessory with error: %@", buf, 0x16u);
        }
      }

      else
      {
        [(HAPAccessoryServer *)v5 associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v15];
      }
    }
  }
}

- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3
{
  v4 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v5 = [(HAPAccessoryServer *)self keyBag];
    v6 = [v5 currentIdentity];
    v7 = [v6 identifier];
    v8 = [(HAPAccessoryServer *)self isAccessoryAssociatedWithControllerKey:v7];

    if (v8)
    {
      v9 = [(HAPAccessoryServer *)self keyStore];
      v15 = 0;
      v10 = [v9 readPublicKeyForAccessoryName:v4 registeredWithHomeKit:0 error:&v15];
      v11 = v15;

      if (!v10 || v11)
      {
        v12 = self;
        v13 = sub_10007FAA0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sub_10007FAFC(v12);
          *buf = 138543618;
          v17 = v14;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch accessory public key for accessory with error: %@", buf, 0x16u);
        }
      }

      else
      {
        [(HAPAccessoryServer *)self associateAccessoryWithControllerKey:0 usingAccessoryPublicKey:v10];
        [(HAPAccessoryServer *)self refreshKeyBag];
      }
    }
  }
}

- (void)securitySessionWillCloseWithResponseData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 && [v6 length])
  {
    v8 = [*a4 domain];
    if (![v8 isEqualToString:NSOSStatusErrorDomain])
    {
LABEL_13:

      goto LABEL_14;
    }

    v9 = [*a4 code];

    if (v9 == -6727)
    {
      v8 = [HAPTLVParser parserWithData:v7];
      v10 = [v8 parseResponseForNumber:6];
      v11 = [v8 parseResponseForNumber:7];
      if ((!v10 || [v10 unsignedIntValue] == 4) && (objc_msgSend(v11, "unsignedIntValue") == 2 || objc_msgSend(v11, "unsignedIntValue") == 1))
      {
        *a4 = [NSError errorWithOSStatus:4294960542];
        v12 = self;
        v13 = sub_10007FAA0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = sub_10007FAFC(v12);
          v15 = *a4;
          v16 = 138543618;
          v17 = v14;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Overwriting the security session error code: %@", &v16, 0x16u);
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (HAPKeyStore)keyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_keyStore);

  return WeakRetained;
}

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

@end