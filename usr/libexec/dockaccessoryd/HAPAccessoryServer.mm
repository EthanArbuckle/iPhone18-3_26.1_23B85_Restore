@interface HAPAccessoryServer
- (BOOL)hasAdvertisement;
- (BOOL)hasPairings;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)key;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)isSecuritySessionOpen;
- (BOOL)isSessionRestoreActive;
- (BOOL)matchesSetupID:(id)d;
- (BOOL)matchesSetupID:(id)d serverIdentifier:(id)identifier;
- (BOOL)notifyClients:(unint64_t)clients withDictionary:(id)dictionary;
- (BOOL)reachabilityPingEnabled;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (BOOL)requiresTimedWrite:(id)write;
- (BOOL)shouldDisconnectOnIdle;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password error:(id *)error;
- (HAPAccessoryServer)init;
- (HAPAccessoryServer)initWithKeystore:(id)keystore;
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
- (void)addInternalDelegate:(id)delegate;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)associateAccessoryWithControllerKey:(id)key usingAccessoryPublicKey:(id)publicKey;
- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier;
- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)key;
- (void)authenticateAccessory;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier;
- (void)disconnect;
- (void)disconnectWithError:(id)error;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)enumerateInternalDelegatesUsingBlock:(id)block;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)identifyWithCompletion:(id)completion;
- (void)incrementFailedPing;
- (void)incrementSuccessfulPing;
- (void)initializeKeyBagIfNecessary;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)refreshKeyBag;
- (void)registerForNotifications:(id)notifications;
- (void)removeInternalDelegate:(id)delegate;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairingIdentifier:(id)identifier pairingPublicKey:(id)key completionQueue:(id)queue completionHandler:(id)handler;
- (void)securitySessionWillCloseWithResponseData:(id)data error:(id *)error;
- (void)setAccessories:(id)accessories;
- (void)setAuthMethod:(unint64_t)method;
- (void)setCategory:(id)category;
- (void)setCompatibilityFeatures:(unint64_t)features;
- (void)setConfigNumber:(unint64_t)number;
- (void)setConnectionStartTime:(id)time;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setHasAdvertisement:(BOOL)advertisement;
- (void)setHasPairings:(BOOL)pairings;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setPairSetupType:(unint64_t)type;
- (void)setPendingRemovePairing:(unint64_t)pairing;
- (void)setProductData:(id)data;
- (void)setReachabilityChangedReason:(id)reason;
- (void)setReachabilityPingEnabled:(BOOL)enabled;
- (void)setSecuritySessionOpen:(BOOL)open;
- (void)setSessionRestoreActive:(BOOL)active;
- (void)setSetupHash:(id)hash;
- (void)setShouldDisconnectOnIdle:(BOOL)idle;
- (void)setStateNumber:(unint64_t)number;
- (void)setVersion:(id)version;
- (void)setWakeNumber:(unint64_t)number;
- (void)startPairingWithConsentRequired:(BOOL)required config:(id)config ownershipToken:(id)token;
- (void)startPing;
- (void)stopPing;
- (void)submitPairVerifyMetricWithError:(id)error;
- (void)tearDownSessionOnAuthCompletion;
- (void)tryEstablishSecuritySession;
- (void)unregisterForNotifications:(id)notifications;
- (void)updateAccessoryInfoDictionary:(id)dictionary;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)writeRawWithResponse:(id)response toCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)writeWithoutResponse:(id)response toCharacteristic:(id)characteristic;
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

- (HAPAccessoryServer)initWithKeystore:(id)keystore
{
  keystoreCopy = keystore;
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

    objc_storeWeak(&v6->_keyStore, keystoreCopy);
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

- (void)setDelegate:(id)delegate queue:(id)queue
{
  obj = delegate;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (obj && queueCopy)
  {
    objc_storeWeak(&self->_delegate, obj);
    v7 = queueCopy;
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

- (void)setShouldDisconnectOnIdle:(BOOL)idle
{
  idleCopy = idle;
  os_unfair_lock_lock_with_options();
  if (self->_shouldDisconnectOnIdle == idleCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_shouldDisconnectOnIdle = idleCopy;
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

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  os_unfair_lock_lock_with_options();
  accessories = self->_accessories;
  self->_accessories = accessoriesCopy;

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

- (void)setReachabilityPingEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_reachabilityPingEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSessionRestoreActive
{
  os_unfair_lock_lock_with_options();
  sessionRestoreActive = self->_sessionRestoreActive;
  os_unfair_lock_unlock(&self->_lock);
  return sessionRestoreActive;
}

- (void)setSessionRestoreActive:(BOOL)active
{
  os_unfair_lock_lock_with_options();
  self->_sessionRestoreActive = active;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSecuritySessionOpen
{
  os_unfair_lock_lock_with_options();
  securitySessionOpen = self->_securitySessionOpen;
  os_unfair_lock_unlock(&self->_lock);
  return securitySessionOpen;
}

- (void)setSecuritySessionOpen:(BOOL)open
{
  os_unfair_lock_lock_with_options();
  self->_securitySessionOpen = open;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)pendingRemovePairing
{
  os_unfair_lock_lock_with_options();
  pendingRemovePairing = self->_pendingRemovePairing;
  os_unfair_lock_unlock(&self->_lock);
  return pendingRemovePairing;
}

- (void)setPendingRemovePairing:(unint64_t)pairing
{
  os_unfair_lock_lock_with_options();
  self->_pendingRemovePairing = pairing;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasPairings
{
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  os_unfair_lock_unlock(&self->_lock);
  return hasPairings;
}

- (void)setHasPairings:(BOOL)pairings
{
  pairingsCopy = pairings;
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  if (hasPairings != pairingsCopy)
  {
    self->_hasPairings = pairingsCopy;
  }

  if (self->_pendingRemovePairing)
  {
    self->_pendingRemovePairing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (hasPairings == pairingsCopy)
    {
      return;
    }
  }

  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100086414;
      block[3] = &unk_100273480;
      v10 = delegate;
      selfCopy = self;
      v12 = pairingsCopy;
      dispatch_async(delegateQueue2, block);
    }
  }
}

- (HAPDeviceID)deviceID
{
  v3 = [HAPDeviceID alloc];
  identifier = [(HAPAccessoryServer *)self identifier];
  v5 = [(HAPDeviceID *)v3 initWithDeviceIDString:identifier];

  return v5;
}

- (NSString)identifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [identifierCopy copy];
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

- (void)setSetupHash:(id)hash
{
  hashCopy = hash;
  os_unfair_lock_lock_with_options();
  v4 = [hashCopy copy];
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

- (void)setAuthMethod:(unint64_t)method
{
  os_unfair_lock_lock_with_options();
  self->_authMethod = method;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy copy];
  os_unfair_lock_lock_with_options();
  if ([(NSString *)self->_name isEqualToString:nameCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_name, v5);
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HAPAccessoryServer *)self delegate];
    if (delegate)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

      if (delegateQueue)
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100086910;
        block[3] = &unk_100273748;
        v10 = delegate;
        selfCopy = self;
        v12 = v5;
        dispatch_async(delegateQueue2, block);
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

- (void)setCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock_with_options();
  if (([(NSNumber *)self->_category isEqual:categoryCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_category, category);
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HAPAccessoryServer *)self delegate];
    if (delegate)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

      if (delegateQueue)
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100086AE8;
        block[3] = &unk_100273748;
        v10 = delegate;
        selfCopy = self;
        v12 = categoryCopy;
        dispatch_async(delegateQueue2, block);
      }
    }
  }
}

- (void)setProductData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  productData = self->_productData;
  self->_productData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)productData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConfigNumber:(unint64_t)number
{
  os_unfair_lock_lock_with_options();
  self->_configNumber = number;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)configNumber
{
  os_unfair_lock_lock_with_options();
  configNumber = self->_configNumber;
  os_unfair_lock_unlock(&self->_lock);
  return configNumber;
}

- (void)setWakeNumber:(unint64_t)number
{
  os_unfair_lock_lock_with_options();
  self->_wakeNumber = number;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)wakeNumber
{
  os_unfair_lock_lock_with_options();
  wakeNumber = self->_wakeNumber;
  os_unfair_lock_unlock(&self->_lock);
  return wakeNumber;
}

- (void)setStateNumber:(unint64_t)number
{
  os_unfair_lock_lock_with_options();
  self->_stateNumber = number;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)stateNumber
{
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);
  return stateNumber;
}

- (void)setCompatibilityFeatures:(unint64_t)features
{
  os_unfair_lock_lock_with_options();
  self->_compatibilityFeatures = features;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)compatibilityFeatures
{
  os_unfair_lock_lock_with_options();
  compatibilityFeatures = self->_compatibilityFeatures;
  os_unfair_lock_unlock(&self->_lock);
  return compatibilityFeatures;
}

- (void)setVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  version = self->_version;
  self->_version = versionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFVersion)version
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMFVersion *)self->_version copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPairSetupType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_pairSetupType = type;

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

- (void)setHasAdvertisement:(BOOL)advertisement
{
  os_unfair_lock_lock_with_options();
  self->_hasAdvertisement = advertisement;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)reachabilityChangedReason
{
  os_unfair_lock_lock_with_options();
  v3 = self->_reachabilityChangedReason;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReachabilityChangedReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock_with_options();
  reachabilityChangedReason = self->_reachabilityChangedReason;
  self->_reachabilityChangedReason = reasonCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConnectionStartTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  connectionStartTime = self->_connectionStartTime;
  self->_connectionStartTime = timeCopy;

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

- (void)writeWithoutResponse:(id)response toCharacteristic:(id)characteristic
{
  responseCopy = response;
  characteristicCopy = characteristic;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)writeRawWithResponse:(id)response toCharacteristic:(id)characteristic completionHandler:(id)handler
{
  responseCopy = response;
  characteristicCopy = characteristic;
  handlerCopy = handler;
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
  identifier = [(HAPAccessoryServer *)self identifier];
  v6 = identifier;
  if (v3)
  {
    name = [(HAPAccessoryServer *)self name];
    v8 = [NSString stringWithFormat:@"%@ %@ %@", v4, v6, name];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%@ %@", v4, identifier];
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

- (void)continueAuthAfterValidation:(BOOL)validation
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)provisionToken:(id)token
{
  tokenCopy = token;
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

- (BOOL)matchesSetupID:(id)d
{
  dCopy = d;
  setupHash = [(HAPAccessoryServer *)self setupHash];
  identifier = [(HAPAccessoryServer *)self identifier];
  v7 = sub_100014808(setupHash, identifier, dCopy);

  return v7;
}

- (BOOL)matchesSetupID:(id)d serverIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!dCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(HAPAccessoryServer *)self matchesSetupID:dCopy])
  {
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_6:
    identifier = [(HAPAccessoryServer *)self identifier];
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

- (void)startPairingWithConsentRequired:(BOOL)required config:(id)config ownershipToken:(id)token
{
  configCopy = config;
  tokenCopy = token;
  v9 = NSStringFromSelector(a2);
  v10 = [NSString stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)tryPairingPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)stopPairingWithError:(id *)error
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSString stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)removePairingIdentifier:(id)identifier pairingPublicKey:(id)key completionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  keyCopy = key;
  identifierCopy = identifier;
  keyBag = [(HAPAccessoryServer *)self keyBag];
  currentIdentity = [keyBag currentIdentity];
  identifier = [currentIdentity identifier];
  v17 = [identifier isEqualToString:identifierCopy];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100088068;
  v27 = &unk_1002749C0;
  selfCopy = self;
  v30 = handlerCopy;
  v31 = v17;
  v28 = queueCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = objc_retainBlock(&v24);
  v21 = [HMFPairingKey alloc];
  v22 = [v21 initWithPairingKeyData:{keyCopy, v24, v25, v26, v27}];

  v23 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v22 privateKey:0 permissions:0];
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

- (void)readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  characteristicsCopy = characteristics;
  numberCopy = number;
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)requiresTimedWrite:(id)write
{
  writeCopy = write;
  if ([(HAPAccessoryServer *)self supportsTimedWrite])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = writeCopy;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = writeCopy;
      instanceID = 0;
      characteristic = 0;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      v11 = instanceID;
      v12 = characteristic;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v10);
        characteristic = [v13 characteristic];

        service = [characteristic service];
        accessory = [service accessory];
        instanceID = [accessory instanceID];

        if (!characteristic || instanceID == 0)
        {
          break;
        }

        if (([v13 timedWrite] & 1) != 0 || (objc_msgSend(characteristic, "properties") & 0x20) != 0)
        {
          v17 = 1;
LABEL_18:
          writeCopy = v22;
          goto LABEL_23;
        }

        v10 = v10 + 1;
        v11 = instanceID;
        v12 = characteristic;
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

      selfCopy = self;
      v19 = sub_10007FAA0();
      writeCopy = v22;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_10007FAFC(selfCopy);
        *buf = 138543874;
        v29 = v20;
        v30 = 2112;
        v31 = characteristic;
        v32 = 2112;
        v33 = instanceID;
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

- (void)addInternalDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalDelegateQueue = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000887BC;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(internalDelegateQueue, v7);
}

- (void)removeInternalDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalDelegateQueue = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000888C4;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(internalDelegateQueue, v7);
}

- (void)enumerateInternalDelegatesUsingBlock:(id)block
{
  blockCopy = block;
  internalDelegateQueue = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000889CC;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(internalDelegateQueue, v7);
}

- (void)startPing
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Ping called -- NOP", &v5, 0xCu);
  }
}

- (void)stopPing
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Stop ping called -- NOP", &v5, 0xCu);
  }
}

- (void)registerForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients addObject:notificationsCopy];
    os_unfair_lock_unlock(&self->_lock);
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(selfCopy);
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = notificationsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Registering client for accessory server notification %@", &v9, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unregisterForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients removeObject:notificationsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  selfCopy = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_10007FAFC(selfCopy);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = notificationsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Removing client from accessory server notification %@", &v9, 0x16u);
  }
}

- (BOOL)notifyClients:(unint64_t)clients withDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    v6 = [(NSHashTable *)notificationClients copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      selfCopy = self;
      v7 = sub_10007FAA0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = sub_10007FAFC(selfCopy);
        v9 = [v6 count];
        v10 = [HAPNotification typeToString:clients];
        *buf = 138543874;
        v36 = v8;
        v37 = 2048;
        v38 = v9;
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying %ld clients for %@", buf, 0x20u);
      }

      if (dictionaryCopy)
      {
        v11 = [dictionaryCopy hmf_numberForKey:@"HAPAccessoryInstanceID"];
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
              hapInstanceId = [v17 hapInstanceId];
            }

            else
            {
              hapInstanceId = 0;
            }

            v19 = selfCopy;
            v20 = sub_10007FAA0();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = sub_10007FAFC(v19);
              *buf = v24;
              v36 = v21;
              v37 = 2112;
              v38 = v11;
              v39 = 2112;
              v40 = hapInstanceId;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Attempt to notify client dictionary instanceID %@ clientInstanceId %@", buf, 0x20u);
            }

            if (hapInstanceId == 0 || v11 == 0 || (v22 = [hapInstanceId intValue], v22 == -[NSObject intValue](v11, "intValue")))
            {
              [v17 indicateNotificationFromServer:v19 notifyType:clients withDictionary:{dictionaryCopy, v24}];
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

- (void)updateAccessoryInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  if ([(NSArray *)self->_accessories count])
  {
    v4 = [(NSArray *)self->_accessories objectAtIndexedSubscript:0];
    manufacturer = [v4 manufacturer];
    productData = [v4 productData];
    v7 = self->_category;
    firmwareVersion = [v4 firmwareVersion];

    os_unfair_lock_unlock(&self->_lock);
    if (manufacturer)
    {
      [dictionaryCopy setObject:manufacturer forKey:@"manufacturer"];
    }

    v9 = dictionaryCopy;
    if (productData)
    {
      [dictionaryCopy setObject:productData forKey:@"product"];
      v9 = dictionaryCopy;
    }

    if (firmwareVersion)
    {
      [dictionaryCopy setObject:firmwareVersion forKey:@"firmwareVersion"];
      v9 = dictionaryCopy;
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
    firmwareVersion = 0;
    productData = 0;
    manufacturer = 0;
  }
}

- (void)submitPairVerifyMetricWithError:(id)error
{
  errorCopy = error;
  if ([(HAPAccessoryServer *)self metric_pairVerifyDurationInMS])
  {
    metric_pairVerifyReason = [(HAPAccessoryServer *)self metric_pairVerifyReason];

    if (metric_pairVerifyReason)
    {
      v5 = [HAPMetricsPairVerifyEvent alloc];
      v6 = [NSNumber numberWithInteger:[(HAPAccessoryServer *)self linkType]];
      metric_pairVerifyDurationInMS = [(HAPAccessoryServer *)self metric_pairVerifyDurationInMS];
      metric_pairVerifyReason2 = [(HAPAccessoryServer *)self metric_pairVerifyReason];
      v9 = [(HAPMetricsPairVerifyEvent *)v5 initWithAccessory:self forLinkType:v6 durationInMS:metric_pairVerifyDurationInMS reason:metric_pairVerifyReason2 pvError:errorCopy];

      v10 = +[HAPMetricsDispatcher sharedInstance];
      [v10 submitLogEvent:v9];
    }
  }

  [(HAPAccessoryServer *)self setMetric_pairVerifyDurationInMS:0];
  [(HAPAccessoryServer *)self setMetric_pairVerifyReason:0];
}

- (void)disconnectWithError:(id)error
{
  errorCopy = error;
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
  keyBag = [(HAPAccessoryServer *)self keyBag];

  if (keyBag && (-[HAPAccessoryServer keyBag](self, "keyBag"), v4 = objc_claimAutoreleasedReturnValue(), [v4 currentIdentity], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(selfCopy);
      identifier = [v5 identifier];
      *buf = 138543618;
      v22 = v8;
      v23 = 2112;
      v24 = identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Using controller username : %@", buf, 0x16u);
    }

    identifier2 = [v5 identifier];
  }

  else
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    v20 = 0;
    identifier3 = [(HAPAccessoryServer *)self identifier];
    v19 = 0;
    [keyStore getControllerPublicKey:0 secretKey:0 username:&v20 allowCreation:0 forAccessory:identifier3 error:&v19];
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

    identifier2 = v14;

    selfCopy2 = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = sub_10007FAFC(selfCopy2);
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = identifier2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Using default controller username : %@", buf, 0x16u);
    }
  }

  return identifier2;
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
  keyBag = [(HAPAccessoryServer *)self keyBag];
  [keyBag refreshKeys];
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error
{
  errorCopy = error;
  useHH2 = [(HAPAccessoryServer *)self useHH2];
  v6 = 0;
  if (errorCopy && useHH2)
  {
    selfCopy = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(selfCopy);
      v27 = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@PV failed with error: %@", &v27, 0x16u);
    }

    userInfo = [errorCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

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
      identifier = [(HAPAccessoryServer *)selfCopy identifier];
      [(HAPAccessoryServer *)selfCopy disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:identifier];

      keyBag = [(HAPAccessoryServer *)selfCopy keyBag];
      nextIdentity = [keyBag nextIdentity];

      v6 = nextIdentity != 0;
      v19 = selfCopy;
      v20 = sub_10007FAA0();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (nextIdentity)
      {
        if (v21)
        {
          v22 = sub_10007FAFC(v19);
          keyBag2 = [(HAPAccessoryServer *)v19 keyBag];
          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [keyBag2 getCurrentIndexInBag]);
          v27 = 138543874;
          v28 = v22;
          v29 = 2112;
          v30 = v24;
          v31 = 2112;
          v32 = nextIdentity;
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

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)key
{
  keyCopy = key;
  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v11 = 0;
  v7 = [keyStore isAccessoryAssociatedWithControllerKey:identifier controllerID:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [keyCopy isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)associateAccessoryWithControllerKey:(id)key usingAccessoryPublicKey:(id)publicKey
{
  keyCopy = key;
  publicKeyCopy = publicKey;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    selfCopy = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = keyCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Establishing relationship with controller key: [%@]", buf, 0x16u);
    }

    v11 = [HAPPairingIdentity alloc];
    identifier = [(HAPAccessoryServer *)selfCopy identifier];
    v13 = [[HMFPairingKey alloc] initWithPairingKeyData:publicKeyCopy];
    v14 = [(HAPPairingIdentity *)v11 initWithIdentifier:identifier controllerKeyIdentifier:keyCopy publicKey:v13 privateKey:0 permissions:0];

    keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
    v22 = 0;
    v16 = [keyStore establishRelationshipBetweenAccessoryAndControllerKey:v14 error:&v22];
    v17 = v22;

    if (!v16 || v17)
    {
      v19 = selfCopy;
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
      pairingRequest = [(HAPAccessoryServer *)selfCopy pairingRequest];

      if (pairingRequest)
      {
        [(HAPAccessoryServer *)selfCopy refreshKeyBag];
      }
    }
  }
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)key
{
  keyCopy = key;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    pairingRequest = [(HAPAccessoryServer *)self pairingRequest];
    pairingIdentity = [pairingRequest pairingIdentity];
    if (pairingIdentity)
    {
      currentIdentity = pairingIdentity;
    }

    else
    {
      keyBag = [(HAPAccessoryServer *)self keyBag];
      currentIdentity = [keyBag currentIdentity];

      if (!currentIdentity)
      {
        goto LABEL_6;
      }
    }

    identifier = [currentIdentity identifier];
    [(HAPAccessoryServer *)self associateAccessoryWithControllerKey:identifier usingAccessoryPublicKey:keyCopy];
  }

LABEL_6:
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(selfCopy);
      keyBag = [(HAPAccessoryServer *)selfCopy keyBag];
      currentIdentity = [keyBag currentIdentity];
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = currentIdentity;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@PV Succeeded using [%@]", buf, 0x16u);
    }

    keyBag2 = [(HAPAccessoryServer *)selfCopy keyBag];
    currentIdentity2 = [keyBag2 currentIdentity];
    identifier = [currentIdentity2 identifier];
    v13 = [(HAPAccessoryServer *)selfCopy isAccessoryAssociatedWithControllerKey:identifier];

    if ((v13 & 1) == 0)
    {
      keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
      v20 = 0;
      v15 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v20];
      v16 = v20;

      if (!v15 || v16)
      {
        v17 = selfCopy;
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
        [(HAPAccessoryServer *)selfCopy associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v15];
      }
    }
  }
}

- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    keyBag = [(HAPAccessoryServer *)self keyBag];
    currentIdentity = [keyBag currentIdentity];
    identifier = [currentIdentity identifier];
    v8 = [(HAPAccessoryServer *)self isAccessoryAssociatedWithControllerKey:identifier];

    if (v8)
    {
      keyStore = [(HAPAccessoryServer *)self keyStore];
      v15 = 0;
      v10 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v15];
      v11 = v15;

      if (!v10 || v11)
      {
        selfCopy = self;
        v13 = sub_10007FAA0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sub_10007FAFC(selfCopy);
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

- (void)securitySessionWillCloseWithResponseData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (error && [dataCopy length])
  {
    domain = [*error domain];
    if (![domain isEqualToString:NSOSStatusErrorDomain])
    {
LABEL_13:

      goto LABEL_14;
    }

    code = [*error code];

    if (code == -6727)
    {
      domain = [HAPTLVParser parserWithData:v7];
      v10 = [domain parseResponseForNumber:6];
      v11 = [domain parseResponseForNumber:7];
      if ((!v10 || [v10 unsignedIntValue] == 4) && (objc_msgSend(v11, "unsignedIntValue") == 2 || objc_msgSend(v11, "unsignedIntValue") == 1))
      {
        *error = [NSError errorWithOSStatus:4294960542];
        selfCopy = self;
        v13 = sub_10007FAA0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = sub_10007FAFC(selfCopy);
          v15 = *error;
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