@interface _HAPAccessoryServerBTLE200
+ (BOOL)isHAPDescriptor:(id)descriptor;
+ (BOOL)isHAPService:(id)service;
+ (BOOL)parseCharacteristicConfigurationResponse:(id)response error:(id *)error;
+ (BOOL)parseProtocolConfigurationResponse:(id)response key:(id *)key stateNumber:(id *)number error:(id *)error;
+ (BOOL)parseReadResponse:(id)response value:(id *)value notificationContext:(id *)context error:(id *)error;
+ (BOOL)parseWriteResponse:(id)response value:(id *)value error:(id *)error;
+ (id)configurationRequestForCharacteristic:(id)characteristic isBroadcasted:(BOOL)broadcasted interval:(unint64_t)interval error:(id *)error;
+ (id)configurationRequestForService:(id)service configRequestType:(unsigned __int8)type error:(id *)error;
+ (id)executeWriteRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error;
+ (id)extractNotificationContextFromBodyData:(id)data error:(id *)error;
+ (id)extractSerializedRequestValueFromBodyData:(id)data error:(id *)error;
+ (id)logCategory;
+ (id)parseServiceSignatureResponse:(id)response serviceInstanceID:(id)d serviceType:(id)type error:(id *)error;
+ (id)parseSignatureResponse:(id)response error:(id *)error;
+ (id)prepareWriteRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error;
+ (id)readRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error;
+ (id)writeRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error;
- (BOOL)_cancelDiscoveryWithError:(id)error;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_parsePairingFeaturesCharacteristic:(id)characteristic authMethod:(unint64_t *)method error:(id *)error;
- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)error;
- (BOOL)_shouldResumeConnectionIdletimer;
- (BOOL)_validateGeneratedBroadcastKey:(id)key;
- (BOOL)_validateProtocolInfo:(id)info;
- (BOOL)hasBeenDiscovered;
- (BOOL)hasValidCache;
- (BOOL)isHAPCharacteristic:(id)characteristic;
- (BOOL)isSecuritySessionOpen;
- (BOOL)pairSetupSession:(id)session didPairWithPeer:(id)peer error:(id *)error;
- (BOOL)pairSetupSession:(id)session didReceiveBackoffRequestWithTimeInterval:(double)interval;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion serverPairingCompletion:(id)pairingCompletion;
- (BOOL)shouldVerifyHAPCharacteristic:(id)characteristic;
- (BOOL)shouldVerifyHAPService:(id)service;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password error:(id *)error;
- (HAPCharacteristic)identifyCharacteristic;
- (HAPCharacteristic)pairSetupCharacteristic;
- (HAPCharacteristic)pairVerifyCharacteristic;
- (HAPCharacteristic)pairingFeaturesCharacteristic;
- (HAPCharacteristic)pairingsCharacteristic;
- (HAPPairSetupSession)pairSetupSession;
- (HAPSecuritySession)securitySession;
- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number enhancedEncryption:(BOOL)encryption connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6;
- (id)_characteristicForCBCharacteristic:(id)characteristic;
- (id)_decryptData:(id)data error:(id *)error;
- (id)_encryptDataAndGenerateAuthTag:(id)tag error:(id *)error;
- (id)_getCBCharacteristic:(id)characteristic instanceId:(id)id service:(id)service;
- (id)_getCBService:(id)service instanceOrder:(unint64_t)order;
- (id)_getCachedService:(id)service;
- (id)_getCharacteristicInstanceID:(id)d error:(id *)error;
- (id)_getProtocolInfoService;
- (id)_getServiceInstanceID:(id)d;
- (id)_hapServicesFromCache;
- (id)_parseCharacteristic:(id)characteristic error:(id *)error;
- (id)_parseService:(id)service error:(id *)error;
- (id)_pendingRequestForCharacteristic:(id)characteristic;
- (id)_pendingResponseForRequest:(id)request;
- (id)_serviceCacheFromHAPService:(id)service serviceOrder:(unint64_t)order;
- (id)_serviceForCBService:(id)service;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)getLocalPairingIdentityWithError:(id *)error;
- (id)pairSetupSession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (id)protocolInfoServiceSignatureCharacteristics;
- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error;
- (unint64_t)_getPairSetupType;
- (unint64_t)_maximumControlWriteLengthForRequest:(id)request;
- (unint64_t)_outstandingRequests;
- (void)_cacheServices:(id)services;
- (void)_cancelAllQueuedOperationsWithError:(id)error;
- (void)_cancelConnectionWithError:(id)error;
- (void)_checkForAuthPrompt:(BOOL)prompt;
- (void)_configureBroadcastKeyGeneration:(unsigned __int8)generation service:(id)service withCompletion:(id)completion;
- (void)_configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)_continuePairingAfterMFiCertValidation;
- (void)_createPrimaryAccessoryFromAdvertisementData;
- (void)_discoverCharacteristic:(id)characteristic;
- (void)_discoverCharacteristicsForService:(id)service;
- (void)_discoverServices;
- (void)_discoverWithType:(int64_t)type completionHandler:(id)handler;
- (void)_enqueueRequest:(id)request shouldPrioritize:(BOOL)prioritize;
- (void)_establishSecureSession;
- (void)_getPairingFeaturesWithCompletionHandler:(id)handler;
- (void)_handleCompletedDiscovery;
- (void)_handleConnectionIdleTimeout;
- (void)_handleConnectionWithError:(id)error;
- (void)_handleDiscoveredCharacteristicsForService:(id)service error:(id)error;
- (void)_handleDiscoveredCharactersitic:(id)charactersitic error:(id)error;
- (void)_handleDiscoveredDescriptors:(id)descriptors;
- (void)_handleDiscoveredServices:(id)services error:(id)error;
- (void)_handleEventIndicationForCharacteristic:(id)characteristic;
- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)characteristic error:(id)error;
- (void)_handlePairSetupSessionExchangeData:(id)data;
- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)handler;
- (void)_handleRawResponseData:(id)data fromCharacteristic:(id)characteristic error:(id)error;
- (void)_handleReadCharacteristicSignature:(id)signature error:(id)error;
- (void)_handleReadCharacteristicValue:(id)value error:(id)error;
- (void)_handleReadDescriptorValue:(id)value error:(id)error;
- (void)_handleReadServiceInstanceId:(id)id;
- (void)_handleReadServiceSignature:(id)signature error:(id)error;
- (void)_handleResponseData:(id)data fromCharacteristic:(id)characteristic error:(id)error;
- (void)_handleSecuritySessionSetupExchangeData:(id)data;
- (void)_handleUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)_handleWriteCompletionForCharacteristic:(id)characteristic error:(id)error;
- (void)_kickConnectionIdleTimer;
- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfReceivedPlaintextData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfSentPlaintextData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegatesPairingStopped:(id)stopped;
- (void)_pairingCompletedWithError:(id)error;
- (void)_performTimedWriteExecuteForCharacteristic:(id)characteristic value:(id)value options:(int64_t)options completionHandler:(id)handler;
- (void)_performTimedWritePrepareWithValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)_performTimedWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)_performWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)_readCharacteristicSignature:(id)signature;
- (void)_readCharacteristicSignatures;
- (void)_readCharacteristicValue:(id)value;
- (void)_readCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler;
- (void)_readDescriptorValue:(id)value;
- (void)_readPendingDiscoveredCharacteritiscTypesWithCompletion:(id)completion;
- (void)_readServiceSignature:(id)signature;
- (void)_readValueForCharacteristic:(id)characteristic options:(int64_t)options completionHandler:(id)handler;
- (void)_reallySendRequest:(id)request completionHandler:(id)handler;
- (void)_removePairingOfAccessoryServerCancelledMidPairing;
- (void)_requestResponseForRequest:(id)request;
- (void)_resetWithError:(id)error;
- (void)_restartConnectionIdleTimer:(double)timer;
- (void)_resumeAllOperations;
- (void)_resumeConnectionIdleTimer;
- (void)_retryDiscovery;
- (void)_sendControlPacket:(id)packet forRequest:(id)request completionHandler:(id)handler;
- (void)_sendData:(id)data toCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)_sendPairingRequestData:(id)data completionHandler:(id)handler;
- (void)_sendProtocolInfoServiceExchangeData:(id)data completion:(id)completion;
- (void)_suspendAllOperations;
- (void)_suspendConnectionIdleTimer;
- (void)_updateConnectionIdleTime:(unsigned __int8)time;
- (void)_updatePropertiesFromCharacteristic:(id)characteristic;
- (void)_writeValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)authSession:(id)session authComplete:(id)complete;
- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token;
- (void)authSession:(id)session confirmUUID:(id)d token:(id)token;
- (void)authSession:(id)session sendAuthExchangeData:(id)data;
- (void)authSession:(id)session validateUUID:(id)d token:(id)token;
- (void)authenticateAccessory;
- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)connectWithCompletionHandler:(id)handler;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)controlOutputStream:(id)stream didCloseWithError:(id)error;
- (void)controlOutputStream:(id)stream didReceiveRequestToSendControlPacket:(id)packet completionHandler:(id)handler;
- (void)controlOutputStreamDidComplete:(id)complete;
- (void)dealloc;
- (void)disconnect;
- (void)disconnectWithCompletionHandler:(id)handler disconnectionError:(id)error;
- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)types;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler;
- (void)getAccessoryInfo:(id)info;
- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error;
- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)characteristic;
- (void)pairSetupSession:(id)session didReceiveProductData:(id)data;
- (void)pairSetupSession:(id)session didReceiveSetupCodeRequestWithCompletionHandler:(id)handler;
- (void)pairSetupSession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)pairSetupSession:(id)session didStopWithError:(id)error;
- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)code;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)securitySession:(id)session didCloseWithError:(id)error;
- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)securitySessionDidOpen:(id)open;
- (void)securitySessionIsOpening:(id)opening;
- (void)setHasBeenDiscovered:(BOOL)discovered;
- (void)setHasValidCache:(BOOL)cache;
- (void)setSecuritySession:(id)session;
- (void)setSecuritySessionOpen:(BOOL)open;
- (void)startPairingWithRequest:(id)request;
- (void)submitPairVerifyMetricWithError:(id)error;
- (void)tearDownSessionOnAuthCompletion;
- (void)timerDidFire:(id)fire;
- (void)tryEstablishSecuritySession;
- (void)updateConnectionIdleTime:(unsigned __int8)time;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)writeRawWithResponse:(id)response toCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)writeWithoutResponse:(id)response toCharacteristic:(id)characteristic;
@end

@implementation _HAPAccessoryServerBTLE200

- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number enhancedEncryption:(BOOL)encryption connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6
{
  peripheralCopy = peripheral;
  nameCopy = name;
  usernameCopy = username;
  flagsCopy = flags;
  numberCopy = number;
  configNumberCopy = configNumber;
  v25 = usernameCopy;
  categoryCopy = category;
  hashCopy = hash;
  browserCopy = browser;
  storeCopy = store;
  v103.receiver = self;
  v103.super_class = _HAPAccessoryServerBTLE200;
  identifierCopy = identifier;
  v99 = peripheralCopy;
  v29 = peripheralCopy;
  v30 = v25;
  v31 = numberCopy;
  v32 = flagsCopy;
  v33 = [(HAPAccessoryServerBTLE *)&v103 initWithPeripheral:v29 name:nameCopy pairingUsername:v25 statusFlags:flagsCopy stateNumber:v31 enhancedEncryption:reason connectReason:configNumberCopy configNumber:categoryCopy category:hashCopy setupHash:time connectionIdleTime:browserCopy browser:storeCopy keyStore:identifierCopy whbStableIdentifier:?];
  if (!v33)
  {
    goto LABEL_13;
  }

  v87 = storeCopy;
  v88 = hashCopy;
  v90 = nameCopy;
  v34 = +[NSMutableArray array];
  pairingsCharacteristic = v33->_pairingsCharacteristic;
  v33->_pairingsCharacteristic = v34;

  v36 = +[NSMutableArray array];
  requestOperationQueue = v33->_requestOperationQueue;
  v33->_requestOperationQueue = v36;

  v38 = +[NSMapTable weakToStrongObjectsMapTable];
  pendingResponses = v33->_pendingResponses;
  v33->_pendingResponses = v38;

  v40 = +[NSMapTable weakToStrongObjectsMapTable];
  characteristicWriteCompletionHandlers = v33->_characteristicWriteCompletionHandlers;
  v33->_characteristicWriteCompletionHandlers = v40;

  v42 = +[NSMutableSet set];
  characteristicEnableEventCompletionHandlers = v33->_characteristicEnableEventCompletionHandlers;
  v33->_characteristicEnableEventCompletionHandlers = v42;

  v33->_badPairSetupCode = encryption;
  v33->_hasBeenDiscovered = 0;
  v33->_verified = 0;
  v44 = objc_alloc_init(NSOperationQueue);
  v96 = browserCopy;
  v45 = configNumberCopy;
  v46 = [NSString stringWithFormat:@"%s", sub_100014728(v33, @"requestOperationQueue")];
  [v44 setName:v46];

  [v44 setMaxConcurrentOperationCount:1];
  [v44 setQualityOfService:25];
  v86 = v44;
  objc_storeStrong(&v33->_pendingRequests, v44);
  v47 = objc_alloc_init(NSOperationQueue);
  v91 = v25;
  v48 = v31;
  v49 = [NSString stringWithFormat:@"%s", sub_100014728(v33, @"securitySessionOperationQueue")];
  [v47 setName:v49];

  [v47 setMaxConcurrentOperationCount:1];
  [v47 setQualityOfService:25];
  objc_storeStrong(&v33->_pairVerifyCharacteristic, v47);
  v50 = [[HMFTimer alloc] initWithTimeInterval:0 options:15.0];
  connectionCompletionHandler = v33->_connectionCompletionHandler;
  v33->_connectionCompletionHandler = v50;

  [v33->_connectionCompletionHandler setDelegate:v33];
  v52 = v33->_connectionCompletionHandler;
  clientQueue = [(HAPAccessoryServer *)v33 clientQueue];
  [v52 setDelegateQueue:clientQueue];

  cbPeripheral = [v99 cbPeripheral];
  [cbPeripheral setDelegate:v33];

  v55 = [HAPBLEPeripheralInfo alloc];
  uniqueBTIdentifier = [v99 uniqueBTIdentifier];
  Current = CFAbsoluteTimeGetCurrent();
  name = [v99 name];
  v94 = v45;
  v89 = v48;
  v59 = v48;
  v30 = v25;
  v60 = [(HAPBLEPeripheralInfo *)v55 initWithPeripheralInfo:uniqueBTIdentifier advertisedProtocolVersion:2 previousProtocolVersion:2 resumeSessionId:0 lastSeen:flagsCopy statusFlags:v59 stateNumber:Current configNumber:v45 categoryIdentifier:categoryCopy accessoryName:name];

  v61 = [v96 cachedAccessoryForIdentifier:v25];
  metadataVersion = [v61 metadataVersion];
  if (!metadataVersion)
  {
    goto LABEL_8;
  }

  v63 = metadataVersion;
  cachedServices = [v61 cachedServices];
  v65 = [cachedServices count];
  if (!v94 || !v65)
  {

    goto LABEL_8;
  }

  peripheralInfo = [v61 peripheralInfo];
  configNumber = [peripheralInfo configNumber];
  v68 = [configNumber isEqual:v94];

  v30 = v91;
  if ((v68 & 1) == 0)
  {
LABEL_8:
    objc_initWeak(&location, v33);
    v75 = [HAPBLEAccessoryCache alloc];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_10004AAEC;
    v100[3] = &unk_100273BB0;
    objc_copyWeak(&v101, &location);
    v76 = [(HAPBLEAccessoryCache *)v75 initWithPairingIdentifier:v30 saveBlock:v100];

    objc_destroyWeak(&v101);
    objc_destroyWeak(&location);
    v74 = 0;
    v61 = v76;
    goto LABEL_9;
  }

  peripheralInfo2 = [v61 peripheralInfo];
  broadcastKey = [peripheralInfo2 broadcastKey];
  peripheralInfo3 = [v61 peripheralInfo];
  keyUpdatedStateNumber = [peripheralInfo3 keyUpdatedStateNumber];
  peripheralInfo4 = [v61 peripheralInfo];
  [peripheralInfo4 keyUpdatedTime];
  [(HAPBLEPeripheralInfo *)v60 saveBroadcastKey:broadcastKey keyUpdatedStateNumber:keyUpdatedStateNumber updatedTime:?];

  v30 = v91;
  v74 = 1;
LABEL_9:
  [v61 updateWithPeripheralInfo:v60];
  BYTE4(v33->super._blePeripheral) = v74;
  connectionState = v33->_connectionState;
  v33->_connectionState = v61;
  v78 = v61;

  peripheralInfo5 = [v78 peripheralInfo];
  accessoryName = [peripheralInfo5 accessoryName];
  v81 = accessoryName;
  nameCopy = v90;
  if (accessoryName)
  {
    v82 = accessoryName;
  }

  else
  {
    v82 = v90;
  }

  objc_storeStrong(&v33->super.super._name, v82);

  v83 = [HMFVersion alloc];
  v84 = [v83 initWithMajorVersion:2 minorVersion:0 updateVersion:0];
  [(HAPAccessoryServer *)v33 setVersion:v84];

  [(_HAPAccessoryServerBTLE200 *)v33 _createPrimaryAccessoryFromAdvertisementData];
  v32 = flagsCopy;
  hashCopy = v88;
  v31 = v89;
  configNumberCopy = v94;
  browserCopy = v96;
  storeCopy = v87;
LABEL_13:

  return v33;
}

- (void)_resetWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v53 = v7;
    v54 = 2112;
    v55 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting server with error: %@", buf, 0x16u);
  }

  [(HAPAccessoryServerBTLE *)selfCopy setNotifyingCharacteristicUpdated:0];
  v8 = errorCopy;
  v9 = v8;
  if (!v8)
  {
    if ([(_HAPAccessoryServerBTLE200 *)selfCopy isPairing]&& ([(_HAPAccessoryServerBTLE200 *)selfCopy pairingDisconnectionError], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      pairingDisconnectionError = [(_HAPAccessoryServerBTLE200 *)selfCopy pairingDisconnectionError];
    }

    else
    {
      pairingDisconnectionError = [NSError hapErrorWithcode:2 description:@"Cancelled." reason:@"Resetting the server." suggestion:0 underlyingError:0];
    }

    v9 = pairingDisconnectionError;
  }

  v40 = v8;
  [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelAllQueuedOperationsWithError:v9];
  [(_HAPAccessoryServerBTLE200 *)selfCopy _resumeAllOperations];
  characteristicWriteCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicWriteCompletionHandlers];
  keyEnumerator = [characteristicWriteCompletionHandlers keyEnumerator];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = keyEnumerator;
  v14 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        characteristicWriteCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicWriteCompletionHandlers];
        v20 = [characteristicWriteCompletionHandlers2 objectForKey:v18];

        if (v9)
        {
          v21 = selfCopy;
          v22 = sub_10007FAA0();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = sub_10007FAFC(v21);
            *buf = 138543874;
            v53 = v23;
            v54 = 2112;
            v55 = v18;
            v56 = 2112;
            v57 = v9;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Calling write completion handler for %@ with error: %@", buf, 0x20u);
          }
        }

        (v20)[2](v20, v9);
      }

      v15 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v15);
  }

  characteristicWriteCompletionHandlers3 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicWriteCompletionHandlers];
  [characteristicWriteCompletionHandlers3 removeAllObjects];

  characteristicEnableEventCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicEnableEventCompletionHandlers];
  keyEnumerator2 = [characteristicEnableEventCompletionHandlers keyEnumerator];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obja = keyEnumerator2;
  v27 = [obja countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v44;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v43 + 1) + 8 * j);
        characteristicEnableEventCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicEnableEventCompletionHandlers];
        v33 = [characteristicEnableEventCompletionHandlers2 objectForKey:v31];

        if (v9)
        {
          v34 = selfCopy;
          v35 = sub_10007FAA0();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = sub_10007FAFC(v34);
            *buf = 138543874;
            v53 = v36;
            v54 = 2112;
            v55 = v31;
            v56 = 2112;
            v57 = v9;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Calling enable event completion handler for %@ with error: %@", buf, 0x20u);
          }
        }

        (v33)[2](v33, v9);
      }

      v28 = [obja countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v28);
  }

  characteristicEnableEventCompletionHandlers3 = [(_HAPAccessoryServerBTLE200 *)selfCopy characteristicEnableEventCompletionHandlers];
  [characteristicEnableEventCompletionHandlers3 removeAllObjects];

  [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:v40];
  if ([(_HAPAccessoryServerBTLE200 *)selfCopy isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _pairingCompletedWithError:v9];
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupSession:0];
  [pairSetupSession stop];
  securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setSecuritySession:0];
  [securitySession close];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setDiscoveryRetries:0];
}

- (void)dealloc
{
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  [peripheral setDelegate:0];

  v4.receiver = self;
  v4.super_class = _HAPAccessoryServerBTLE200;
  [(_HAPAccessoryServerBTLE200 *)&v4 dealloc];
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  shortDescription = [(HAPAccessoryServerBTLE *)self shortDescription];
  if (pointerCopy)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  [(HAPAccessoryServer *)self hasPairings];
  v7 = HMFBooleanToString();
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  v9 = [NSString stringWithFormat:@"<%@%@, hasPairings = %@, Peripheral = %@>", shortDescription, v6, v7, peripheral];

  if (pointerCopy)
  {
  }

  return v9;
}

- (BOOL)hasValidCache
{
  os_unfair_lock_lock_with_options();
  v3 = BYTE4(self->super._blePeripheral);
  os_unfair_lock_unlock(&self->super.super._lock);
  return v3;
}

- (void)setHasValidCache:(BOOL)cache
{
  os_unfair_lock_lock_with_options();
  BYTE4(self->super._blePeripheral) = cache;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)hasBeenDiscovered
{
  os_unfair_lock_lock_with_options();
  v3 = BYTE5(self->super._blePeripheral);
  os_unfair_lock_unlock(&self->super.super._lock);
  return v3;
}

- (void)setHasBeenDiscovered:(BOOL)discovered
{
  os_unfair_lock_lock_with_options();
  BYTE5(self->super._blePeripheral) = discovered;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)_createPrimaryAccessoryFromAdvertisementData
{
  v3 = [HAPAccessory alloc];
  v4 = [NSNumber numberWithUnsignedInteger:1];
  v5 = [(HAPAccessory *)v3 initWithServer:self instanceID:v4];

  name = [(HAPAccessoryServer *)self name];
  [(HAPAccessory *)v5 setName:name];

  identifier = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setIdentifier:identifier];

  identifier2 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setServerIdentifier:identifier2];

  [(HAPAccessoryServer *)self setPrimaryAccessory:v5];
  v10 = v5;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(HAPAccessoryServer *)self setAccessories:v9];
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPAccessoryServer *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_serviceForCBService:(id)service
{
  serviceCopy = service;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  accessories = [(HAPAccessoryServer *)self accessories];
  v20 = [accessories countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        services = [v8 services];
        v10 = [services countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(services);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              cbService = [v14 cbService];
              v16 = [cbService isEqual:serviceCopy];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [services countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v17 = 0;
      v20 = [accessories countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)_characteristicForCBCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  v6 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:service];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  characteristics = [v6 characteristics];
  v8 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(characteristics);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        cbCharacteristic = [v11 cbCharacteristic];
        v13 = [cbCharacteristic isEqual:characteristicCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_removePairingOfAccessoryServerCancelledMidPairing
{
  if ([(HAPAccessoryServer *)self pendingRemovePairing]== 1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004B9D0;
    v8[3] = &unk_1002739F0;
    v8[4] = self;
    v3 = objc_retainBlock(v8);
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004BB04;
    v6[3] = &unk_100273790;
    v7 = v3;
    v5 = v3;
    [(_HAPAccessoryServerBTLE200 *)self removePairingForCurrentControllerOnQueue:clientQueue completion:v6 serverPairingCompletion:v5];
  }
}

- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)types
{
  typesCopy = types;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004BBD8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_readPendingDiscoveredCharacteritiscTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteriticsPendingRead];
  v5 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v26 = @"FED3";
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [v9 isEqualToString:{@"00000023-0000-1000-8000-4D69736D6574", v26}];
        primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
        primaryAccessory2 = primaryAccessory;
        if (!v10)
        {
          v14 = [primaryAccessory characteristicsOfType:v9];
          firstObject = [v14 firstObject];

LABEL_10:
          if (!firstObject)
          {
            continue;
          }

          goto LABEL_11;
        }

        firstObject = [primaryAccessory characteristicOfType:v9 serviceType:@"0000003E-0000-1000-8000-4D69736D6574"];

        if (!firstObject)
        {
          primaryAccessory2 = [(HAPAccessoryServer *)self primaryAccessory];
          firstObject = [primaryAccessory2 characteristicOfType:v9 serviceType:v26];
          goto LABEL_10;
        }

LABEL_11:
        [v4 addObject:firstObject];
      }

      v6 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v6);
  }

  discoveredAccessoryCharacteriticsPendingRead = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteriticsPendingRead];
  [discoveredAccessoryCharacteriticsPendingRead removeAllObjects];

  if ([v4 count])
  {
    selfCopy = self;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v43 = v18;
      v44 = 2112;
      v45 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Reading pending discovered characteristics with types: %@", buf, 0x16u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [v4 copy];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10004C82C;
          v29[3] = &unk_100273C50;
          v30 = v4;
          v31 = v24;
          v32 = completionCopy;
          [(_HAPAccessoryServerBTLE200 *)selfCopy _readValueForCharacteristic:v24 options:1 completionHandler:v29];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    v25 = completionCopy;
  }

  else
  {
    v25 = completionCopy;
    completionCopy[2](completionCopy);
  }
}

- (void)_discoverWithType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSDate date];
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004CBB4;
  v23[3] = &unk_100273CA0;
  objc_copyWeak(v26, &location);
  v8 = v7;
  v24 = v8;
  v26[1] = type;
  v9 = handlerCopy;
  v25 = v9;
  v10 = objc_retainBlock(v23);
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isDiscovering = [discoveryContext isDiscovering];

  if (isDiscovering)
  {
    selfCopy = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy);
      discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [discoveryContext2 discoveryType]);
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The server already has a discovery in progress for type: %@", buf, 0x16u);
    }

    v18 = [NSError hapErrorWithcode:4];
    (v10[2])(v10, v18);
  }

  else
  {
    v19 = [[_HAPBTLEDiscoveryContext alloc] initWithDiscoveryType:type];
    [(_HAPBTLEDiscoveryContext *)v19 setCompletionHandler:v10];
    [(_HAPBTLEDiscoveryContext *)v19 setDiscovering:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004CEC0;
    v20[3] = &unk_100273CC8;
    v20[4] = self;
    typeCopy = type;
    v18 = v19;
    v21 = v18;
    [(_HAPAccessoryServerBTLE200 *)self connectWithCompletionHandler:v20];
  }

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (BOOL)_cancelDiscoveryWithError:(id)error
{
  errorCopy = error;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!discoveryContext)
  {
LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

  accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  lastKeyBagIdentityIndexFailingPV = [accessoryCache lastKeyBagIdentityIndexFailingPV];
  if (lastKeyBagIdentityIndexFailingPV)
  {
    keyBag = [(HAPAccessoryServer *)self keyBag];
    accessoryCache2 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    lastKeyBagIdentityIndexFailingPV2 = [accessoryCache2 lastKeyBagIdentityIndexFailingPV];
    v11 = [keyBag isValidIndex:{objc_msgSend(lastKeyBagIdentityIndexFailingPV2, "integerValue") + 1}];
  }

  else
  {
    v11 = 0;
  }

  v12 = ([(_HAPAccessoryServerBTLE200 *)self discoveryRetries]< 2) | v11;
  v13 = [(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:errorCopy];
  selfCopy = self;
  v15 = sub_10007FAA0();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v13 && (v12 & 1) != 0)
  {
    if (v16)
    {
      v17 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v42 = v17;
      v43 = 2112;
      discoveryType = errorCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring cancel discovery request due to BTLE sudden disconnection: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  if (v16)
  {
    v18 = sub_10007FAFC(selfCopy);
    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    *buf = 138543874;
    v42 = v18;
    v43 = 2048;
    discoveryType = [discoveryContext2 discoveryType];
    v45 = 2112;
    v46 = errorCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %tu cancelled with error: %@", buf, 0x20u);
  }

  if (!errorCopy)
  {
    v29 = [NSError hapErrorWithcode:2 description:@"Discovery failed." reason:@"Cancelled." suggestion:0 underlyingError:0];
LABEL_19:
    v30 = v29;
    discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    completionHandler = [discoveryContext3 completionHandler];

    if (completionHandler)
    {
      clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_10004D648;
      v38 = &unk_100273720;
      v40 = completionHandler;
      v39 = v30;
      dispatch_async(clientQueue, &v35);
    }

    [(_HAPAccessoryServerBTLE200 *)selfCopy setDiscoveryContext:0, v35, v36, v37, v38];

    goto LABEL_22;
  }

  domain = [errorCopy domain];
  v21 = [domain isEqualToString:CBErrorDomain] & v12;

  if (v21 != 1)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setHasValidCache:0];
    v29 = errorCopy;
    goto LABEL_19;
  }

  v22 = selfCopy;
  v23 = sub_10007FAA0();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = sub_10007FAFC(v22);
    discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)v22 discoveryContext];
    discoveryType2 = [discoveryContext4 discoveryType];
    discoveryRetries = [(_HAPAccessoryServerBTLE200 *)v22 discoveryRetries];
    *buf = 138544130;
    v42 = v24;
    v43 = 2048;
    discoveryType = discoveryType2;
    v45 = 2048;
    v46 = discoveryRetries;
    v47 = 1024;
    v48 = 2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}@Reconnecting and restarting attribute database discovery type: %tu due to a connection error. Current retries, %tu, max retries, %d.", buf, 0x26u);
  }

  [(_HAPAccessoryServerBTLE200 *)v22 _retryDiscovery];
  v28 = 1;
LABEL_23:

  return v28;
}

- (void)_retryDiscovery
{
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (discoveryContext)
  {
    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    [discoveryContext2 reset];

    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryRetries:[(_HAPAccessoryServerBTLE200 *)self discoveryRetries]+ 1];
    pairVerifyOperationQueue = [(_HAPAccessoryServerBTLE200 *)self pairVerifyOperationQueue];
    v6 = [NSError hapErrorWithcode:27];
    [pairVerifyOperationQueue cancelAllOperationsWithError:v6];

    v7 = [NSError hapErrorWithcode:27];
    [(_HAPAccessoryServerBTLE200 *)self _cancelAllQueuedOperationsWithError:v7];

    [(_HAPAccessoryServerBTLE200 *)self _resumeAllOperations];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004D79C;
    v8[3] = &unk_100273348;
    v8[4] = self;
    sub_10004D79C(v8);
    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryContext:0];
    [(_HAPAccessoryServerBTLE200 *)self discoverAccessoriesAndReadCharacteristicTypes:0];
  }
}

- (void)_handleCompletedDiscovery
{
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!discoveryContext)
  {
    return;
  }

  selfCopy = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(selfCopy);
    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    *buf = 138543618;
    v99 = v6;
    v100 = 2048;
    discoveryType = [discoveryContext2 discoveryType];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %tu completed.", buf, 0x16u);
  }

  hasValidCache = [(_HAPAccessoryServerBTLE200 *)selfCopy hasValidCache];
  v9 = selfCopy;
  v10 = sub_10007FAA0();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (hasValidCache)
  {
    if (v11)
    {
      v12 = sub_10007FAFC(v9);
      accessoryCache = [(_HAPAccessoryServerBTLE200 *)v9 accessoryCache];
      peripheralInfo = [accessoryCache peripheralInfo];
      *buf = 138543618;
      v99 = v12;
      v100 = 2112;
      discoveryType = peripheralInfo;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Constructing attribute database from cache %@", buf, 0x16u);
    }

    _hapServicesFromCache = [(_HAPAccessoryServerBTLE200 *)v9 _hapServicesFromCache];
    v16 = v9;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543618;
      v99 = v18;
      v100 = 2112;
      discoveryType = _hapServicesFromCache;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database with cached services: %@", buf, 0x16u);
    }

    if (_hapServicesFromCache && [(_HAPAccessoryServerBTLE200 *)_hapServicesFromCache count])
    {
      v19 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
      accessoryCache2 = [(_HAPAccessoryServerBTLE200 *)v16 accessoryCache];
      [accessoryCache2 setDiscoveryVersion:v19];

      browser = [(HAPAccessoryServerBTLE *)v16 browser];
      accessoryCache3 = [(_HAPAccessoryServerBTLE200 *)v16 accessoryCache];
      [browser saveCacheToDisk:accessoryCache3];
    }

    else
    {
      v96[0] = NSLocalizedDescriptionKey;
      v67 = [NSString stringWithFormat:@"Failed att-db construction from cache"];
      v97[0] = v67;
      v96[1] = NSLocalizedFailureReasonErrorKey;
      v68 = +[NSBundle mainBundle];
      v69 = [v68 localizedStringForKey:@"Unable to find matching CB service / characteristic" value:&stru_10027BDA0 table:0];
      v97[1] = v69;
      browser = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];

      accessoryCache3 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6727 userInfo:browser];
      [(_HAPAccessoryServerBTLE200 *)v16 _cancelDiscoveryWithError:accessoryCache3];
      browser2 = [(HAPAccessoryServerBTLE *)v16 browser];
      accessoryCache4 = [(_HAPAccessoryServerBTLE200 *)v16 accessoryCache];
      pairingIdentifier = [accessoryCache4 pairingIdentifier];
      [browser2 removeCachedAccessoryWithIdentifier:pairingIdentifier];

      [(_HAPAccessoryServerBTLE200 *)v16 setHasValidCache:0];
      v73 = v16;
      v74 = sub_10007FAA0();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v75 = sub_10007FAFC(v73);
        [(_HAPAccessoryServerBTLE200 *)v73 accessoryCache];
        v77 = v76 = v9;
        *buf = 138543618;
        v99 = v75;
        v100 = 2112;
        discoveryType = v77;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Att-db mismatch removing the cached accessory: %@", buf, 0x16u);

        v9 = v76;
      }
    }

    primaryAccessory = [(HAPAccessoryServer *)v16 primaryAccessory];
    v78 = [(_HAPAccessoryServerBTLE200 *)_hapServicesFromCache copy];
    [primaryAccessory setServices:v78];

    goto LABEL_52;
  }

  if (v11)
  {
    v23 = sub_10007FAFC(v9);
    *buf = 138543362;
    v99 = v23;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Starting attribute database parsing", buf, 0xCu);
  }

  peripheral = [(HAPAccessoryServerBTLE *)v9 peripheral];
  services = [peripheral services];
  v26 = [services copy];

  v86 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v26 count]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  _hapServicesFromCache = v26;
  v27 = [(_HAPAccessoryServerBTLE200 *)_hapServicesFromCache countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v93;
    v85 = _hapServicesFromCache;
    v87 = *v93;
    do
    {
      v30 = 0;
      do
      {
        if (*v93 != v29)
        {
          objc_enumerationMutation(_hapServicesFromCache);
        }

        v31 = *(*(&v92 + 1) + 8 * v30);
        if ([objc_opt_class() isHAPService:v31])
        {
          discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
          discoveryType2 = [discoveryContext3 discoveryType];

          if (discoveryType2 == 1)
          {
            uUID = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
            v35 = [CBUUID UUIDWithString:@"FED3"];
            if (([uUID isEqual:v35] & 1) == 0)
            {
              uUID2 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
              v37 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
              v38 = [uUID2 isEqual:v37];

              _hapServicesFromCache = v85;
              if ((v38 & 1) == 0)
              {
                v39 = v9;
                v40 = sub_10007FAA0();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = sub_10007FAFC(v39);
                  *buf = 138543618;
                  v99 = v41;
                  v100 = 2112;
                  discoveryType = v31;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@Skipping parsing service during Identify discovery: %@", buf, 0x16u);
                }

                goto LABEL_36;
              }

LABEL_30:
              v91 = 0;
              v40 = [(_HAPAccessoryServerBTLE200 *)v9 _parseService:v31 error:&v91];
              v39 = v91;
              if (v40)
              {
                primaryAccessory2 = [(HAPAccessoryServer *)v9 primaryAccessory];
                [v40 setAccessory:primaryAccessory2];

                [(_HAPAccessoryServerBTLE200 *)v86 addObject:v40];
              }

              else
              {
                v47 = v9;
                v48 = sub_10007FAA0();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = sub_10007FAFC(v47);
                  *buf = 138543618;
                  v99 = v49;
                  v100 = 2112;
                  discoveryType = v39;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse service with error: %@", buf, 0x16u);
                }
              }

LABEL_35:
              v29 = v87;
              goto LABEL_36;
            }
          }

          else
          {
            discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
            discoveryType3 = [discoveryContext4 discoveryType];

            if (discoveryType3 != 2)
            {
              goto LABEL_30;
            }

            uUID = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
            v35 = [CBUUID UUIDWithString:@"FED4"];
            if (([uUID isEqual:v35] & 1) == 0)
            {
              uUID3 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
              v45 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
              if (([uUID3 isEqual:v45] & 1) == 0)
              {
                uUID4 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
                [CBUUID UUIDWithString:@"000000A2-0000-1000-8000-4D69736D6574"];
                v52 = v51 = v9;
                v84 = [uUID4 isEqual:v52];

                v9 = v51;
                v29 = v87;

                _hapServicesFromCache = v85;
                if (v84)
                {
                  goto LABEL_30;
                }

                v39 = v9;
                v40 = sub_10007FAA0();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v53 = sub_10007FAFC(v39);
                  *buf = 138543618;
                  v99 = v53;
                  v100 = 2112;
                  discoveryType = v31;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@Skipping parsing service during Pairing discovery: %@", buf, 0x16u);

                  goto LABEL_35;
                }

LABEL_36:

                goto LABEL_37;
              }

              _hapServicesFromCache = v85;
            }
          }

          goto LABEL_30;
        }

LABEL_37:
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v54 = [(_HAPAccessoryServerBTLE200 *)_hapServicesFromCache countByEnumeratingWithState:&v92 objects:v104 count:16];
      v28 = v54;
    }

    while (v54);
  }

  primaryAccessory = v86;
  v56 = [(_HAPAccessoryServerBTLE200 *)v86 count];
  v57 = v9;
  v58 = sub_10007FAA0();
  v59 = v58;
  if (!v56)
  {
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v83 = sub_10007FAFC(v57);
      *buf = 138543362;
      v99 = v83;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}@Attribute database parsing failed due to missing compatible services", buf, 0xCu);
    }

    v79 = [NSError hapErrorWithcode:3 description:@"Peripheral missing services" reason:0 suggestion:0 underlyingError:0];
    goto LABEL_53;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v60 = sub_10007FAFC(v57);
    discoveryContext5 = [(_HAPAccessoryServerBTLE200 *)v57 discoveryContext];
    discoveryType4 = [discoveryContext5 discoveryType];
    *buf = 138543874;
    v99 = v60;
    v100 = 2112;
    discoveryType = v86;
    v102 = 2048;
    v103 = discoveryType4;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database parsing with parsed services: %@, type: %tu", buf, 0x20u);
  }

  primaryAccessory3 = [(HAPAccessoryServer *)v57 primaryAccessory];
  v64 = [(_HAPAccessoryServerBTLE200 *)v86 copy];
  [primaryAccessory3 setServices:v64];

  discoveryContext6 = [(_HAPAccessoryServerBTLE200 *)v57 discoveryContext];
  discoveryType5 = [discoveryContext6 discoveryType];

  if (!discoveryType5)
  {
    [(_HAPAccessoryServerBTLE200 *)v57 setVerified:1];
    [(_HAPAccessoryServerBTLE200 *)v57 _cacheServices:v86];
  }

LABEL_52:
  v79 = 0;
LABEL_53:

  discoveryContext7 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
  completionHandler = [discoveryContext7 completionHandler];

  if (completionHandler)
  {
    clientQueue = [(HAPAccessoryServer *)v9 clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E524;
    block[3] = &unk_100273720;
    v90 = completionHandler;
    v89 = v79;
    dispatch_async(clientQueue, block);
  }

  [(_HAPAccessoryServerBTLE200 *)v9 setDiscoveryContext:0];
}

- (id)_getCBCharacteristic:(id)characteristic instanceId:(id)id service:(id)service
{
  selfCopy = self;
  characteristicCopy = characteristic;
  idCopy = id;
  serviceCopy = service;
  v9 = [CBUUID UUIDWithNSUUID:characteristicCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  characteristics = [serviceCopy characteristics];
  v11 = [(_HAPAccessoryServerBTLE200 *)characteristics countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(characteristics);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        uUID = [v15 UUID];
        v17 = [uUID isEqual:v9];

        if (v17)
        {
          v21 = v15;
          v19 = idCopy;
          goto LABEL_13;
        }
      }

      v12 = [(_HAPAccessoryServerBTLE200 *)characteristics countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  characteristics = selfCopy;
  v18 = sub_10007FAA0();
  v19 = idCopy;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = sub_10007FAFC(characteristics);
    *buf = 138543874;
    v30 = v20;
    v31 = 2112;
    v32 = characteristicCopy;
    v33 = 2112;
    v34 = idCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: NO CB Characteristic for : %@/%@", buf, 0x20u);
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (id)_getCBService:(id)service instanceOrder:(unint64_t)order
{
  serviceCopy = service;
  v5 = [CBUUID UUIDWithNSUUID:?];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  services = [peripheral services];
  v8 = [services copy];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v34;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [objc_opt_class() isHAPService:v15];
        uUID = [v15 UUID];
        v18 = [uUID isEqual:v5];

        if (v18)
        {
          v19 = v15;

          v11 = v19;
        }

        v12 += v16;
        uUID2 = [v15 UUID];
        v21 = [uUID2 isEqual:v5];

        if (v21)
        {
          v22 = v12 == order;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v15;

          v24 = serviceCopy;
          goto LABEL_20;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v25 = selfCopy;
  v26 = sub_10007FAA0();
  v24 = serviceCopy;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = sub_10007FAFC(v25);
    *buf = 138544130;
    v38 = v27;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = serviceCopy;
    v43 = 2048;
    orderCopy = order;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: Returning first instance %@ Service for : %@/%tu", buf, 0x2Au);
  }

  v11 = v11;
  v23 = v11;
LABEL_20:

  return v23;
}

- (id)_getCachedService:(id)service
{
  serviceCopy = service;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accessoryCache = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  cachedServices = [accessoryCache cachedServices];

  v7 = [cachedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(cachedServices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        serviceUUID = [v10 serviceUUID];
        v12 = [serviceUUID isEqual:serviceCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [cachedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_hapServicesFromCache
{
  v3 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  selfCopy = self;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  discoveryType = [discoveryContext discoveryType];

  if (discoveryType == 2)
  {
    v10 = [NSUUID alloc];
    v11 = &off_1002748B8;
  }

  else
  {
    if (discoveryType != 1)
    {
      if (discoveryType)
      {
        goto LABEL_10;
      }

      accessoryCache = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
      cachedServices = [accessoryCache cachedServices];
      [v4 addObjectsFromArray:cachedServices];

      goto LABEL_9;
    }

    v10 = [NSUUID alloc];
    v11 = &off_1002748B0;
  }

  v12 = [v10 initWithUUIDString:*v11];
  accessoryCache = [(_HAPAccessoryServerBTLE200 *)selfCopy _getCachedService:v12];

  if (!accessoryCache)
  {
    goto LABEL_10;
  }

  [v4 addObject:accessoryCache];
LABEL_9:

LABEL_10:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v69;
    v56 = v13;
    v57 = v5;
    v52 = *v69;
    while (2)
    {
      v17 = 0;
      v53 = v15;
      do
      {
        if (*v69 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v68 + 1) + 8 * v17);
        serviceUUID = [v18 serviceUUID];
        v20 = -[_HAPAccessoryServerBTLE200 _getCBService:instanceOrder:](selfCopy, "_getCBService:instanceOrder:", serviceUUID, [v18 serviceInstanceOrder]);

        if (!v20)
        {
          v20 = selfCopy;
          v47 = sub_10007FAA0();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v50 = sub_10007FAFC(v20);
            *buf = 138543618;
            v74 = v50;
            v75 = 2112;
            v76 = v18;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: No matching cb service for %@", buf, 0x16u);
          }

LABEL_32:

          v44 = 0;
          goto LABEL_33;
        }

        v55 = v17;
        array = [v3[116] array];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v54 = v18;
        obj = [v18 cachedCharacteristics];
        v62 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v62)
        {
          v59 = *v65;
          v60 = array;
          v61 = v20;
          while (2)
          {
            for (i = 0; i != v62; i = i + 1)
            {
              if (*v65 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v64 + 1) + 8 * i);
              v24 = [HAPCharacteristic alloc];
              characteristicUUID = [v23 characteristicUUID];
              uUIDString = [characteristicUUID UUIDString];
              characteristicInstanceId = [v23 characteristicInstanceId];
              stateNumber = [(HAPAccessoryServerBTLE *)selfCopy stateNumber];
              characteristicProperties = [v23 characteristicProperties];
              characteristicMetadata = [v23 characteristicMetadata];
              LOBYTE(v51) = 1;
              v31 = [(HAPCharacteristic *)v24 initWithType:uUIDString instanceID:characteristicInstanceId value:0 stateNumber:stateNumber properties:characteristicProperties eventNotificationsEnabled:0 implicitWriteWithResponse:v51 metadata:characteristicMetadata];

              characteristicUUID2 = [v23 characteristicUUID];
              characteristicInstanceId2 = [v23 characteristicInstanceId];
              v20 = v61;
              v34 = [(_HAPAccessoryServerBTLE200 *)selfCopy _getCBCharacteristic:characteristicUUID2 instanceId:characteristicInstanceId2 service:v61];

              if (!v31)
              {
                v45 = selfCopy;
                v46 = sub_10007FAA0();
                v47 = v60;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  v48 = sub_10007FAFC(v45);
                  *buf = 138543618;
                  v74 = v48;
                  v75 = 2112;
                  v76 = v23;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: No matching cb characteristic for %@", buf, 0x16u);
                }

                v13 = v56;
                v5 = v57;
                goto LABEL_32;
              }

              v35 = +[NSDate distantPast];
              [(HAPCharacteristic *)v31 setValueUpdatedTime:v35];

              [(HAPCharacteristic *)v31 setCBCharacteristic:v34];
              array = v60;
              [v60 addObject:v31];
            }

            v62 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
            if (v62)
            {
              continue;
            }

            break;
          }
        }

        v36 = [HAPService alloc];
        serviceUUID2 = [v54 serviceUUID];
        uUIDString2 = [serviceUUID2 UUIDString];
        serviceInstanceId = [v54 serviceInstanceId];
        serviceProperties = [v54 serviceProperties];
        linkedServices = [v54 linkedServices];
        v42 = [(HAPService *)v36 initWithType:uUIDString2 instanceID:serviceInstanceId parsedCharacteristics:array serviceProperties:serviceProperties linkedServices:linkedServices];

        v5 = v57;
        if (v42)
        {
          primaryAccessory = [(HAPAccessoryServer *)selfCopy primaryAccessory];
          [(HAPService *)v42 setAccessory:primaryAccessory];

          [(HAPService *)v42 setCBService:v20];
          [v57 addObject:v42];
        }

        v13 = v56;
        v17 = v55 + 1;
        v16 = v52;
        v3 = &_s11DockKitCore6ErrorsO11AlreadyDoneyACSS_tcACmFWC_ptr;
      }

      while ((v55 + 1) != v53);
      v15 = [v56 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v44 = v5;
LABEL_33:

  return v44;
}

- (id)_serviceCacheFromHAPService:(id)service serviceOrder:(unint64_t)order
{
  serviceCopy = service;
  v6 = [HAPBLEServiceCache alloc];
  v7 = [NSUUID alloc];
  type = [serviceCopy type];
  v9 = [v7 initWithUUIDString:type];
  instanceID = [serviceCopy instanceID];
  serviceProperties = [serviceCopy serviceProperties];
  linkedServices = [serviceCopy linkedServices];
  v13 = [(HAPBLEServiceCache *)v6 initWithServiceUUID:v9 instanceId:instanceID instanceOrder:order serviceProperties:serviceProperties linkedServices:linkedServices];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = serviceCopy;
  obj = [serviceCopy characteristics];
  v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [HAPBLECharacteristicCache alloc];
        v20 = [NSUUID alloc];
        type2 = [v18 type];
        v22 = [v20 initWithUUIDString:type2];
        instanceID2 = [v18 instanceID];
        properties = [v18 properties];
        accessoryMetadata = [v18 accessoryMetadata];
        v26 = [(HAPBLECharacteristicCache *)v19 initWithCharacteristicUUID:v22 instanceId:instanceID2 characteristicProperties:properties characteristicMetadata:accessoryMetadata];

        [(HAPBLEServiceCache *)v13 updateWithCharacteristic:v26];
      }

      v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  return v13;
}

- (void)_cacheServices:(id)services
{
  servicesCopy = services;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    accessoryCache = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
    *buf = 138543618;
    v31 = v7;
    v32 = 2112;
    v33 = accessoryCache;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: current Cache : %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = servicesCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = 1;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(_HAPAccessoryServerBTLE200 *)selfCopy _serviceCacheFromHAPService:*(*(&v25 + 1) + 8 * v14) serviceOrder:v13, v25];
        ++v13;
        accessoryCache2 = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
        [accessoryCache2 updateWithService:v15];

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
  accessoryCache3 = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
  [accessoryCache3 setDiscoveryVersion:v17];

  browser = [(HAPAccessoryServerBTLE *)selfCopy browser];
  accessoryCache4 = [(_HAPAccessoryServerBTLE200 *)selfCopy accessoryCache];
  [browser saveCacheToDisk:accessoryCache4];

  [(_HAPAccessoryServerBTLE200 *)selfCopy setHasValidCache:1];
  v21 = selfCopy;
  v22 = sub_10007FAA0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = sub_10007FAFC(v21);
    accessoryCache5 = [(_HAPAccessoryServerBTLE200 *)v21 accessoryCache];
    *buf = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = accessoryCache5;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Saved Valid Cache : %@", buf, 0x16u);
  }
}

- (void)_discoverServices
{
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  [peripheral discoverServices:0];
}

- (void)_handleDiscoveredServices:(id)services error:(id)error
{
  servicesCopy = services;
  if (!error)
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = servicesCopy;
    obj = servicesCopy;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v7)
    {
      goto LABEL_27;
    }

    v8 = v7;
    v9 = *v33;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        if ([objc_opt_class() isHAPService:v11])
        {
          discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          discoveryType = [discoveryContext discoveryType];

          if (discoveryType == 1)
          {
            uUID = [v11 UUID];
            v15 = [CBUUID UUIDWithString:@"FED3"];
            if ([uUID isEqual:v15])
            {

LABEL_26:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11];
              goto LABEL_27;
            }

            uUID2 = [v11 UUID];
            v17 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
            v18 = [uUID2 isEqual:v17];

            if (v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
            discoveryType2 = [discoveryContext2 discoveryType];

            if (discoveryType2 != 2)
            {
              goto LABEL_18;
            }

            uUID3 = [v11 UUID];
            v22 = [CBUUID UUIDWithString:@"FED4"];
            if ([uUID3 isEqual:v22])
            {
              goto LABEL_17;
            }

            uUID4 = [v11 UUID];
            v24 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
            if ([uUID4 isEqual:v24])
            {

LABEL_17:
LABEL_18:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11];
              goto LABEL_19;
            }

            [v11 UUID];
            v25 = v29 = uUID4;
            v26 = [CBUUID UUIDWithString:@"000000A2-0000-1000-8000-4D69736D6574"];
            v30 = [v25 isEqual:v26];

            if (v30)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_19:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v8 = v27;
      if (!v27)
      {
LABEL_27:

        servicesCopy = v28;
        goto LABEL_28;
      }
    }
  }

  [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:error];
LABEL_28:
}

- (void)_discoverCharacteristicsForService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy);
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Discovering service: %@", &v11, 0x16u);
  }

  discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
  discoveringServices = [discoveryContext discoveringServices];
  [discoveringServices addObject:serviceCopy];

  peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
  [peripheral discoverCharacteristics:0 forService:serviceCopy];
}

- (void)_handleDiscoveredCharacteristicsForService:(id)service error:(id)error
{
  serviceCopy = service;
  if (error)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:error];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    if ([objc_opt_class() isHAPService:serviceCopy] && !-[_HAPAccessoryServerBTLE200 hasValidCache](self, "hasValidCache"))
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      characteristics = [serviceCopy characteristics];
      v16 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(characteristics);
            }

            v20 = *(*(&v21 + 1) + 8 * i);
            if (sub_10004FE54(v20))
            {
              [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicValue:v20];
              goto LABEL_8;
            }
          }

          v17 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      selfCopy = self;
      v8 = sub_10007FAA0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v26 = v9;
        v27 = 2112;
        v28 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Removing Service: %@ from discovery context", buf, 0x16u);
      }

      characteristics = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
      discoveringServices = [characteristics discoveringServices];
      [discoveringServices removeObject:serviceCopy];
    }

LABEL_8:

    if (![(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      isComplete = [discoveryContext isComplete];

      if (isComplete)
      {
        [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
      }
    }

    if ([(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      isComplete2 = [discoveryContext2 isComplete];

      if (isComplete2)
      {
        [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
      }
    }
  }
}

- (void)_handleReadServiceInstanceId:(id)id
{
  idCopy = id;
  if ([objc_opt_class() isHAPService:idCopy])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    characteristics = [idCopy characteristics];
    v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(characteristics);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ((sub_10004FE54(v10) & 1) == 0 && [(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v10])
          {
            [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristic:v10];
          }
        }

        v7 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  discoveringServices = [discoveryContext discoveringServices];
  [discoveringServices removeObject:idCopy];

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  LODWORD(discoveringServices) = [discoveryContext2 isComplete];

  if (discoveringServices)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }
}

- (void)_discoverCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  discoveringCharacteristics = [discoveryContext discoveringCharacteristics];
  [discoveringCharacteristics addObject:characteristicCopy];

  selfCopy = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(selfCopy);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = characteristicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Discovering characteristic: %@", &v11, 0x16u);
  }

  peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
  [peripheral discoverDescriptorsForCharacteristic:characteristicCopy];
}

- (void)_handleDiscoveredCharactersitic:(id)charactersitic error:(id)error
{
  charactersiticCopy = charactersitic;
  errorCopy = error;
  selfCopy = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_10007FAFC(selfCopy);
    descriptors = [charactersiticCopy descriptors];
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = descriptors;
    v20 = 2112;
    v21 = charactersiticCopy;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Discovered descriptors: %@ for characteristic: %@ with error: %@", &v16, 0x2Au);
  }

  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:errorCopy];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    if ([(_HAPAccessoryServerBTLE200 *)selfCopy isHAPCharacteristic:charactersiticCopy])
    {
      descriptors2 = [charactersiticCopy descriptors];
      [(_HAPAccessoryServerBTLE200 *)selfCopy _handleDiscoveredDescriptors:descriptors2];
    }

    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    discoveringCharacteristics = [discoveryContext discoveringCharacteristics];
    [discoveringCharacteristics removeObject:charactersiticCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    LODWORD(discoveringCharacteristics) = [discoveryContext2 isComplete];

    if (discoveringCharacteristics)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _readCharacteristicSignatures];
    }
  }
}

- (void)_handleDiscoveredDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [descriptorsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_opt_class() isHAPDescriptor:v9])
        {
          [(_HAPAccessoryServerBTLE200 *)self _readDescriptorValue:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [descriptorsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_readCharacteristicValue:(id)value
{
  valueCopy = value;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  readingCharacteristics = [discoveryContext readingCharacteristics];
  [readingCharacteristics addObject:valueCopy];

  value = [valueCopy value];

  if (value)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:valueCopy error:0];
  }

  else
  {
    selfCopy = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_10007FAFC(selfCopy);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = valueCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of characteristic: %@", &v14, 0x16u);
    }

    peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
    [peripheral readValueForCharacteristic:valueCopy];
  }

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isComplete = [discoveryContext2 isComplete];

  if (isComplete)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }
}

- (void)_handleReadCharacteristicValue:(id)value error:(id)error
{
  valueCopy = value;
  if (error)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:error];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    readingCharacteristics = [discoveryContext readingCharacteristics];
    [readingCharacteristics removeObject:valueCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(readingCharacteristics) = [discoveryContext2 isComplete];

    if (readingCharacteristics)
    {
      [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
    }

    if (sub_10004FE54(valueCopy))
    {
      service = [valueCopy service];
      [(_HAPAccessoryServerBTLE200 *)self _handleReadServiceInstanceId:service];
    }
  }
}

- (void)_readDescriptorValue:(id)value
{
  valueCopy = value;
  value = [valueCopy value];

  if (!value)
  {
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_10007FAFC(selfCopy);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = valueCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of descriptor: %@", &v14, 0x16u);
    }

    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    readingDescriptors = [discoveryContext readingDescriptors];
    [readingDescriptors addObject:valueCopy];

    peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
    [peripheral readValueForDescriptor:valueCopy];
  }

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isComplete = [discoveryContext2 isComplete];

  if (isComplete)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }
}

- (void)_handleReadDescriptorValue:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  selfCopy = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = sub_10007FAFC(selfCopy);
    characteristic = [valueCopy characteristic];
    value = [valueCopy value];
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = valueCopy;
    v20 = 2112;
    v21 = characteristic;
    v22 = 2112;
    v23 = value;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Read value of descriptor: %@ for characteristic: %@ value: %@", &v16, 0x2Au);
  }

  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:errorCopy];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    readingDescriptors = [discoveryContext readingDescriptors];
    [readingDescriptors removeObject:valueCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
    LODWORD(readingDescriptors) = [discoveryContext2 isComplete];

    if (readingDescriptors)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _readCharacteristicSignatures];
    }
  }
}

- (void)_handleUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  readingCharacteristics = [discoveryContext readingCharacteristics];
  v10 = [readingCharacteristics containsObject:characteristicCopy];

  if (!v10)
  {
    value = [characteristicCopy value];
    if ([value length])
    {
      pendingRequests = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
      v13 = [pendingRequests count];

      if (v13)
      {
        v32 = value;
        v33 = errorCopy;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        pendingRequests2 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
        v15 = [pendingRequests2 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(pendingRequests2);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              characteristic = [v19 characteristic];
              cbCharacteristic = [characteristic cbCharacteristic];
              v22 = [cbCharacteristic isEqual:characteristicCopy];

              if (v22)
              {
                characteristic2 = [v19 characteristic];
                value = v32;
                errorCopy = v33;
                [(_HAPAccessoryServerBTLE200 *)self _handleResponseData:v32 fromCharacteristic:characteristic2 error:v33];

                goto LABEL_25;
              }
            }

            v16 = [pendingRequests2 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        selfCopy = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = sub_10007FAFC(selfCopy);
          *buf = 138543618;
          v40 = v25;
          v41 = 2112;
          v42 = characteristicCopy;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@Received unexpected response from characteristic: %@", buf, 0x16u);
        }

        value = v32;
        errorCopy = v33;
        goto LABEL_26;
      }

      pendingRequests2 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:characteristicCopy];
      [(_HAPAccessoryServerBTLE200 *)self _handleRawResponseData:value fromCharacteristic:pendingRequests2 error:errorCopy];
    }

    else
    {
      pendingRequests2 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:characteristicCopy];
      selfCopy2 = self;
      v27 = sub_10007FAA0();
      v28 = v27;
      if (pendingRequests2)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v29 = sub_10007FAFC(selfCopy2);
          *buf = 138543618;
          v40 = v29;
          v41 = 2112;
          v42 = characteristicCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}@Received zero-length value for characteristic: %@", buf, 0x16u);
        }

        [(_HAPAccessoryServerBTLE200 *)selfCopy2 _handleEventIndicationForCharacteristic:pendingRequests2];
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v31 = sub_10007FAFC(selfCopy2);
          *buf = 138543618;
          v40 = v31;
          v41 = 2112;
          v42 = characteristicCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@Received characteristic indication from unmapped characteristic: %@", buf, 0x16u);
        }
      }
    }

LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:characteristicCopy error:errorCopy];
LABEL_27:
}

- (void)_readCharacteristicSignatures
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  services = [peripheral services];

  v5 = [services countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if ([objc_opt_class() isHAPService:v9])
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          characteristics = [v9 characteristics];
          v11 = [characteristics countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(characteristics);
                }

                v15 = *(*(&v18 + 1) + 8 * j);
                if (sub_100051018(v15))
                {
                  [(_HAPAccessoryServerBTLE200 *)self _readServiceSignature:v15];
                }

                if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v15])
                {
                  [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignature:v15];
                }
              }

              v12 = [characteristics countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [services countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  isComplete = [discoveryContext isComplete];

  if (isComplete)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
  }
}

- (id)_getCharacteristicInstanceID:(id)d error:(id *)error
{
  [d descriptors];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
        v12 = [uUID isEqual:v11];

        if (v12)
        {
          v13 = sub_100051250(v9, error);

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    [NSError hapErrorWithcode:1 description:@"Characteristic missing the characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (id)_getServiceInstanceID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [dCopy characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (sub_10004FE54(v9))
        {
          v6 = sub_100051504(v9, 0);
          if (!v6)
          {
            selfCopy = self;
            v11 = sub_10007FAA0();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = sub_10007FAFC(selfCopy);
              *buf = 138543874;
              v19 = v12;
              v20 = 2112;
              v21 = dCopy;
              v22 = 2112;
              v23 = v9;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get Service Instance ID for Service: %@, Characteristic: %@", buf, 0x20u);
            }

            v6 = 0;
          }

          goto LABEL_14;
        }
      }

      v6 = [characteristics countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (id)_getProtocolInfoService
{
  [(_HAPAccessoryServerBTLE200 *)self _hapServicesFromCache];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        type = [v7 type];
        v9 = [type isEqualToString:@"000000A2-0000-1000-8000-4D69736D6574"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_readCharacteristicSignature:(id)signature
{
  signatureCopy = signature;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:signatureCopy])
  {
    v5 = objc_opt_class();
    uUID = [(__CFString *)signatureCopy UUID];
    v7 = [v5 hapUUIDFromBTLEUUID:uUID];

    if (v7)
    {
      v90 = 0;
      v8 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:signatureCopy error:&v90];
      v9 = v90;
      if (v8)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v10 = 0;
        }

        else
        {
          discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([discoveryContext discoveryType])
          {
            v10 = 0;
          }

          else
          {
            v10 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPCharacteristic:signatureCopy];
          }
        }

        v25 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:signatureCopy];
        v26 = v25;
        if ((v10 & 1) == 0 && v25)
        {
          v78 = v7;
          v83 = v8;
          v85 = v9;
          selfCopy = self;
          v28 = sub_10007FAA0();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = sub_10007FAFC(selfCopy);
            *buf = 138543618;
            v92 = v29;
            v93 = 2112;
            v94 = signatureCopy;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}@Found cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
          }

          v77 = [HAPBTLECharacteristicSignature alloc];
          v81 = selfCopy;
          v30 = [NSUUID alloc];
          type = [v26 type];
          v31 = [v30 initWithUUIDString:type];
          service = [v26 service];
          instanceID = [service instanceID];
          v34 = [NSUUID alloc];
          service2 = [v26 service];
          type2 = [service2 type];
          v37 = [v34 initWithUUIDString:type2];
          properties = [v26 properties];
          metadata = [v26 metadata];
          v40 = [(HAPBTLECharacteristicSignature *)v77 initWithCharacteristicType:v31 serviceInstanceID:instanceID serviceType:v37 characteristicProperties:properties characteristicMetadata:metadata authenticated:0];

          discoveryContext3 = v40;
          discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)v81 discoveryContext];
          characteristicSignatures = [discoveryContext2 characteristicSignatures];
          [characteristicSignatures setObject:discoveryContext3 forKey:signatureCopy];

          v8 = v83;
          v9 = v85;
          v7 = v78;
          goto LABEL_46;
        }

        if (v10 && [0 isAuthenticated])
        {
          selfCopy2 = self;
          v45 = sub_10007FAA0();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v46 = sub_10007FAFC(selfCopy2);
            *buf = 138543618;
            v92 = v46;
            v93 = 2112;
            v94 = signatureCopy;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%{public}@Found authenitcated cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
          }

          discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
          discoveryContext2 = [discoveryContext3 characteristicSignatures];
          [discoveryContext2 setObject:0 forKey:signatureCopy];
          goto LABEL_46;
        }

        selfCopy3 = self;
        v48 = sub_10007FAA0();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = sub_10007FAFC(selfCopy3);
          *buf = 138543618;
          v92 = v49;
          v93 = 2112;
          v94 = signatureCopy;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for characteristic: %@", buf, 0x16u);
        }

        v50 = +[HAPMetadata getSharedInstance];
        uUIDString = [v7 UUIDString];
        discoveryContext2 = [v50 getDefaultCharacteristicProperties:uUIDString];

        v86 = v9;
        v76 = v26;
        v82 = v50;
        if (discoveryContext2)
        {
          unsignedLongLongValue = [discoveryContext2 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue = 2;
        }

        v53 = [HAPCharacteristic alloc];
        uUIDString2 = [v7 UUIDString];
        stateNumber = [(HAPAccessoryServerBTLE *)selfCopy3 stateNumber];
        LOBYTE(v75) = 1;
        v56 = [(HAPCharacteristic *)v53 initWithType:uUIDString2 instanceID:v8 value:0 stateNumber:stateNumber properties:unsignedLongLongValue eventNotificationsEnabled:0 implicitWriteWithResponse:v75 metadata:0];

        v84 = v8;
        if (v56)
        {
          [(HAPCharacteristic *)v56 setCBCharacteristic:signatureCopy];
          discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 discoveryContext];
          v58 = [discoveryContext4 discoveryType] == 0;

          v89 = 0;
          v59 = [objc_opt_class() signatureRequestForCharacteristic:v56 requiresAuthentication:v58 error:&v89];
          v80 = v89;
          if (v59)
          {
            v87[0] = _NSConcreteStackBlock;
            v87[1] = 3221225472;
            v87[2] = sub_10005217C;
            v87[3] = &unk_100273CF0;
            v87[4] = selfCopy3;
            v60 = signatureCopy;
            v88 = v60;
            v61 = objc_retainBlock(v87);
            [(_HAPAccessoryServerBTLE200 *)selfCopy3 _sendRequest:v59 shouldPrioritize:0 responseHandler:v61];
            discoveryContext5 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 discoveryContext];
            readingSignatureCharacteristics = [discoveryContext5 readingSignatureCharacteristics];
            [readingSignatureCharacteristics addObject:v60];

            v26 = v76;
            v64 = v80;
LABEL_45:

            v8 = v84;
            v9 = v86;
            discoveryContext3 = v82;
LABEL_46:

            goto LABEL_47;
          }

          v72 = selfCopy3;
          v73 = sub_10007FAA0();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v74 = sub_10007FAFC(v72);
            *buf = 138543874;
            v92 = v74;
            v93 = 2112;
            v94 = signatureCopy;
            v95 = 2112;
            v96 = v80;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to create signature request for characteristic, %@, with error: %@", buf, 0x20u);
          }

          v69 = v72;
          v70 = signatureCopy;
          v64 = v80;
          v71 = v80;
        }

        else
        {
          uUIDString3 = [v7 UUIDString];
          v64 = [NSString stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %tu", uUIDString3, v8, unsignedLongLongValue];

          v66 = selfCopy3;
          v67 = sub_10007FAA0();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = sub_10007FAFC(v66);
            *buf = 138543618;
            v92 = v68;
            v93 = 2112;
            v94 = v64;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
          }

          v59 = [NSError hapErrorWithcode:3 description:v64 reason:0 suggestion:0 underlyingError:0];
          v69 = v66;
          v70 = signatureCopy;
          v71 = v59;
        }

        [(_HAPAccessoryServerBTLE200 *)v69 _handleReadCharacteristicSignature:v70 error:v71];
        v26 = v76;
        goto LABEL_45;
      }

      selfCopy4 = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(selfCopy4);
        *buf = 138543874;
        v92 = v23;
        v93 = 2112;
        v94 = signatureCopy;
        v95 = 2112;
        v96 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get characteristic, %@, instance ID with error: %@", buf, 0x20u);
      }

      v18 = selfCopy4;
      v19 = signatureCopy;
      v20 = v9;
    }

    else
    {
      uUID2 = [(__CFString *)signatureCopy UUID];
      v9 = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID2];

      selfCopy5 = self;
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_10007FAFC(selfCopy5);
        *buf = 138543618;
        v92 = v17;
        v93 = 2112;
        v94 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      v8 = [NSError hapErrorWithcode:3 description:v9 reason:0 suggestion:0 underlyingError:0];
      v18 = selfCopy5;
      v19 = signatureCopy;
      v20 = v8;
    }

    [(_HAPAccessoryServerBTLE200 *)v18 _handleReadCharacteristicSignature:v19 error:v20];
LABEL_47:

    goto LABEL_48;
  }

  selfCopy6 = self;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sub_10007FAFC(selfCopy6);
    *buf = 138543618;
    v92 = v13;
    v93 = 2112;
    v94 = @"Characteristic does not support HAP";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
  }

  v7 = [NSError hapErrorWithcode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0];
  [(_HAPAccessoryServerBTLE200 *)selfCopy6 _handleReadCharacteristicSignature:signatureCopy error:v7];
LABEL_48:
}

- (void)_readServiceSignature:(id)signature
{
  signatureCopy = signature;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:signatureCopy])
  {
    v5 = objc_opt_class();
    service = [signatureCopy service];
    uUID = [service UUID];
    v8 = [v5 hapUUIDFromBTLEUUID:uUID];

    if (v8)
    {
      service2 = [signatureCopy service];
      v10 = [(_HAPAccessoryServerBTLE200 *)self _getServiceInstanceID:service2];

      v105 = 0;
      service16 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:signatureCopy error:&v105];
      service17 = v105;
      if (v10 | service16)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v13 = 0;
        }

        else
        {
          discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([discoveryContext discoveryType])
          {
            v13 = 0;
          }

          else
          {
            service3 = [signatureCopy service];
            v13 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPService:service3];
          }
        }

        service4 = [signatureCopy service];
        service14 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:service4];

        v98 = v10;
        if ((v13 & 1) != 0 || !service14)
        {
          if (v13 && [0 isAuthenticated])
          {
            selfCopy = self;
            v46 = sub_10007FAA0();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              sub_10007FAFC(selfCopy);
              v47 = service14;
              v49 = v48 = service16;
              service5 = [signatureCopy service];
              *buf = 138543618;
              v107 = v49;
              v108 = 2112;
              v109 = service5;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}@Found authenticated cached signature, skipping reading service signature for service: %@", buf, 0x16u);

              service16 = v48;
              service14 = v47;
            }

            discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];
            serviceSignatures = [(HAPBTLEServiceSignature *)discoveryContext2 serviceSignatures];
            service6 = [signatureCopy service];
            [serviceSignatures setObject:0 forKey:service6];
          }

          else
          {
            v97 = service16;
            selfCopy2 = self;
            v52 = sub_10007FAA0();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = sub_10007FAFC(selfCopy2);
              service7 = [signatureCopy service];
              *buf = 138543618;
              v107 = v53;
              v108 = 2112;
              v109 = service7;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for service: %@", buf, 0x16u);
            }

            v55 = +[HAPMetadata getSharedInstance];
            uUIDString = [v8 UUIDString];
            serviceSignatures = [(HAPBTLEServiceSignature *)v55 getDefaultServiceProperties:uUIDString];

            v93 = service14;
            v95 = v55;
            if (serviceSignatures)
            {
              unsignedLongLongValue = [serviceSignatures unsignedLongLongValue];
            }

            else
            {
              unsignedLongLongValue = 0;
            }

            v58 = [HAPService alloc];
            uUIDString2 = [v8 UUIDString];
            v60 = [(HAPService *)v58 initWithType:uUIDString2 instanceID:v98 parsedCharacteristics:0 serviceProperties:unsignedLongLongValue linkedServices:0];

            v92 = v60;
            if (v60)
            {
              v90 = serviceSignatures;
              service8 = [signatureCopy service];
              [(HAPService *)v60 setCBService:service8];

              v62 = [HAPCharacteristic alloc];
              uUID2 = [signatureCopy UUID];
              uUIDString3 = [uUID2 UUIDString];
              stateNumber = [(HAPAccessoryServerBTLE *)selfCopy2 stateNumber];
              LOBYTE(v88) = 1;
              v66 = [(HAPCharacteristic *)v62 initWithType:uUIDString3 instanceID:v97 value:0 stateNumber:stateNumber properties:2 eventNotificationsEnabled:0 implicitWriteWithResponse:v88 metadata:0];

              [(HAPCharacteristic *)v66 setCBCharacteristic:signatureCopy];
              [(HAPCharacteristic *)v66 setService:v60];
              discoveryContext3 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
              v68 = [discoveryContext3 discoveryType] == 0;

              v104 = 0;
              v91 = v66;
              v69 = [objc_opt_class() signatureRequestForService:v60 characteristic:v66 requiresAuthentication:v68 error:&v104];
              v70 = v104;
              v89 = v70;
              if (v69)
              {
                [signatureCopy service];
                v99[0] = _NSConcreteStackBlock;
                v99[1] = 3221225472;
                v99[2] = sub_100052FB0;
                v100 = v99[3] = &unk_100273D18;
                v101 = selfCopy2;
                v102 = v98;
                v103 = v8;
                service10 = v100;
                v72 = objc_retainBlock(v99);
                [(_HAPAccessoryServerBTLE200 *)selfCopy2 _sendRequest:v69 shouldPrioritize:0 responseHandler:v72];
                discoveryContext4 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 discoveryContext];
                [discoveryContext4 readingSignatureServices];
                v75 = v74 = v69;
                service9 = [signatureCopy service];
                [v75 addObject:service9];

                service14 = v93;
                discoveryContext2 = v95;
                serviceSignatures = v90;
              }

              else
              {
                v84 = v70;
                v85 = selfCopy2;
                v86 = sub_10007FAA0();
                service14 = v93;
                if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  v87 = sub_10007FAFC(v85);
                  *buf = 138543874;
                  v107 = v87;
                  v108 = 2112;
                  v109 = v93;
                  v110 = 2112;
                  v111 = v84;
                  _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%{public}@Failed to create signature request for service, %@, with error: %@", buf, 0x20u);
                }

                service10 = [signatureCopy service];
                [(_HAPAccessoryServerBTLE200 *)v85 _handleReadServiceSignature:service10 error:v84];
                discoveryContext2 = v95;
                serviceSignatures = v90;
                v74 = 0;
              }

              service16 = v97;
              v10 = v98;
              v83 = v91;
              v82 = v89;
            }

            else
            {
              uUIDString4 = [v8 UUIDString];
              v78 = [NSString stringWithFormat:@"Failed to create service with type, %@, instance ID, %@, properties, %tu", uUIDString4, v98, unsignedLongLongValue];

              v79 = selfCopy2;
              v80 = sub_10007FAA0();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                v81 = sub_10007FAFC(v79);
                *buf = 138543618;
                v107 = v81;
                v108 = 2112;
                v109 = v78;
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              v82 = [NSError hapErrorWithcode:3 description:v78 reason:0 suggestion:0 underlyingError:0];
              [(_HAPAccessoryServerBTLE200 *)v79 _handleReadCharacteristicSignature:signatureCopy error:v82];
              service16 = v97;
              v10 = v98;
              v83 = v78;
              service14 = v93;
              discoveryContext2 = v95;
            }

            service6 = v92;
          }
        }

        else
        {
          v94 = v8;
          v96 = service16;
          selfCopy3 = self;
          v31 = sub_10007FAA0();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = sub_10007FAFC(selfCopy3);
            service11 = [signatureCopy service];
            *buf = 138543618;
            v107 = v32;
            v108 = 2112;
            v109 = service11;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@Found cached service signature, skipping reading service signature for service: %@", buf, 0x16u);
          }

          v34 = [HAPBTLEServiceSignature alloc];
          v35 = [NSUUID alloc];
          type = [(__CFString *)service14 type];
          v37 = [v35 initWithUUIDString:type];
          instanceID = [(__CFString *)service14 instanceID];
          serviceProperties = [(__CFString *)service14 serviceProperties];
          linkedServices = [(__CFString *)service14 linkedServices];
          discoveryContext2 = [(HAPBTLEServiceSignature *)v34 initWithServiceType:v37 serviceInstanceID:instanceID serviceProperties:serviceProperties linkedServices:linkedServices authenticated:0];

          serviceSignatures = [(_HAPAccessoryServerBTLE200 *)selfCopy3 discoveryContext];
          service6 = [serviceSignatures serviceSignatures];
          service12 = [signatureCopy service];
          [service6 setObject:discoveryContext2 forKey:service12];

          service16 = v96;
          v10 = v98;
          v8 = v94;
        }
      }

      else
      {
        selfCopy4 = self;
        v23 = sub_10007FAA0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = sub_10007FAFC(selfCopy4);
          service13 = [signatureCopy service];
          *buf = 138544130;
          v107 = v24;
          v108 = 2112;
          v109 = service13;
          v110 = 2112;
          v111 = signatureCopy;
          v112 = 2112;
          v113 = service17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get service/characteristic, %@/%@, instance ID with error: %@", buf, 0x2Au);
        }

        service14 = [signatureCopy service];
        [(_HAPAccessoryServerBTLE200 *)selfCopy4 _handleReadServiceSignature:service14 error:service17];
      }
    }

    else
    {
      service15 = [signatureCopy service];
      uUID3 = [service15 UUID];
      service17 = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID3];

      selfCopy5 = self;
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_10007FAFC(selfCopy5);
        *buf = 138543618;
        v107 = v21;
        v108 = 2112;
        v109 = service17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      v10 = [NSError hapErrorWithcode:3 description:service17 reason:0 suggestion:0 underlyingError:0];
      service16 = [signatureCopy service];
      [(_HAPAccessoryServerBTLE200 *)selfCopy5 _handleReadServiceSignature:service16 error:v10];
    }
  }

  else
  {
    selfCopy6 = self;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(selfCopy6);
      *buf = 138543618;
      v107 = v16;
      v108 = 2112;
      v109 = @"Service Properties Characteristic does not support HAP";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    v8 = [NSError hapErrorWithcode:3 description:@"Service Properties Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0];
    service17 = [signatureCopy service];
    [(_HAPAccessoryServerBTLE200 *)selfCopy6 _handleReadServiceSignature:service17 error:v8];
  }
}

+ (id)parseSignatureResponse:(id)response error:(id *)error
{
  responseCopy = response;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  request = [responseCopy request];
  type = [request type];

  if (type == 1)
  {
    TLV8GetOrCopyCoalesced();
  }

  v10 = [NSError errorWithOSStatus:?];
  v11 = [NSError hapErrorWithcode:12 description:@"Signature request failed." reason:@"Failed to parse signature response body." suggestion:0 underlyingError:v10];

  if (v11)
  {
    if (error)
    {
      v12 = v11;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = -[HAPBTLECharacteristicSignature initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:]([HAPBTLECharacteristicSignature alloc], "initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:", 0, 0, 0, 0, 0, [responseCopy isEncrypted]);
  }

  return v13;
}

+ (id)parseServiceSignatureResponse:(id)response serviceInstanceID:(id)d serviceType:(id)type error:(id *)error
{
  responseCopy = response;
  dCopy = d;
  typeCopy = type;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v14 = +[NSMutableArray array];
  request = [responseCopy request];
  type = [request type];

  if (type != 6)
  {
    v17 = 0;
    v21 = 4294960591;
    goto LABEL_21;
  }

  v17 = 0;
  if (!TLV8GetOrCopyCoalesced())
  {
    v18 = [NSData dataWithBytes:v32 length:v31];
    if (!v18)
    {
      v17 = 0;
LABEL_17:
      v21 = 4294960559;
LABEL_20:

LABEL_21:
      if (v17 || !v21)
      {
        goto LABEL_25;
      }

      v18 = [NSError errorWithOSStatus:v21];
      v22 = [NSError hapErrorWithcode:12 description:@"Service Signature response failed." reason:@"Failed to parse service signature response body." suggestion:0 underlyingError:v18];
      goto LABEL_24;
    }

    v28 = 0;
    v19 = sub_100055360(v18, &v29, &v28);
    v17 = v28;
    if (!v19)
    {
      v21 = 0;
      goto LABEL_20;
    }
  }

  v20 = TLV8GetOrCopyCoalesced();
  if (v20 == -6727)
  {
    goto LABEL_25;
  }

  v21 = v20;
  if (v20)
  {
    goto LABEL_21;
  }

  v18 = [NSData dataWithBytes:v32 length:v31];
  if (v30)
  {
    free(v30);
    v30 = 0;
  }

  if (!v18)
  {
    goto LABEL_17;
  }

  if (![v18 length])
  {
    v22 = v17;
    goto LABEL_24;
  }

  v27 = v17;
  v21 = sub_100055418(v18, v14, &v27);
  v22 = v27;

  if (!v21)
  {
    v17 = v22;
    goto LABEL_20;
  }

  [v14 removeObject:dCopy];
LABEL_24:

  v17 = v22;
LABEL_25:
  if (v17)
  {
    if (error)
    {
      v23 = v17;
      v24 = 0;
      *error = v17;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v25 = [HAPBTLEServiceSignature alloc];
    v24 = -[HAPBTLEServiceSignature initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:](v25, "initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:", typeCopy, dCopy, v29, v14, [responseCopy isEncrypted]);
  }

  return v24;
}

- (void)_handleReadCharacteristicSignature:(id)signature error:(id)error
{
  signatureCopy = signature;
  errorCopy = error;
  if (errorCopy)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:errorCopy])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100055694;
      v12[3] = &unk_100273748;
      v12[4] = self;
      v13 = signatureCopy;
      v8 = errorCopy;
      v14 = v8;
      sub_100055694(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    readingSignatureCharacteristics = [discoveryContext readingSignatureCharacteristics];
    [readingSignatureCharacteristics removeObject:signatureCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(readingSignatureCharacteristics) = [discoveryContext2 isComplete];

    if (readingSignatureCharacteristics)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

- (void)_handleReadServiceSignature:(id)signature error:(id)error
{
  signatureCopy = signature;
  errorCopy = error;
  if (errorCopy)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:errorCopy])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100055924;
      v12[3] = &unk_100273748;
      v12[4] = self;
      v13 = signatureCopy;
      v8 = errorCopy;
      v14 = v8;
      sub_100055924(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    readingSignatureServices = [discoveryContext readingSignatureServices];
    [readingSignatureServices removeObject:signatureCopy];

    discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(readingSignatureServices) = [discoveryContext2 isComplete];

    if (readingSignatureServices)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

+ (BOOL)isHAPService:(id)service
{
  serviceCopy = service;
  uUID = [serviceCopy UUID];
  v5 = [CBUUID UUIDWithString:CBUUIDGenericAccessProfileString];
  if ([uUID isEqual:v5])
  {
    goto LABEL_10;
  }

  uUID2 = [serviceCopy UUID];
  v7 = [CBUUID UUIDWithString:CBUUIDGenericAttributeProfileString];
  if ([uUID2 isEqual:v7])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  uUID3 = [serviceCopy UUID];
  v9 = [CBUUID UUIDWithString:CBUUIDContinuityServiceString];
  if ([uUID3 isEqual:v9])
  {
LABEL_8:

    goto LABEL_9;
  }

  uUID4 = [serviceCopy UUID];
  v11 = [CBUUID UUIDWithString:CBUUIDAppleNotificationCenterServiceString];
  if ([uUID4 isEqual:v11])
  {

    goto LABEL_8;
  }

  v33 = v11;
  v34 = uUID4;
  uUID5 = [serviceCopy UUID];
  v13 = [CBUUID UUIDWithString:CBUUIDAppleMediaServiceString];
  if ([uUID5 isEqual:v13])
  {

    goto LABEL_8;
  }

  v32 = v13;
  uUID6 = [serviceCopy UUID];
  v30 = [CBUUID UUIDWithString:CBUUIDAppleAccessoryReconnectServiceString];
  v31 = uUID6;
  if ([uUID6 isEqual:?])
  {
    v17 = 1;
    v18 = v32;
  }

  else
  {
    uUID7 = [serviceCopy UUID];
    v28 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v29 = uUID7;
    if ([uUID7 isEqual:?])
    {
      v17 = 1;
    }

    else
    {
      uUID8 = [serviceCopy UUID];
      v20 = [CBUUID UUIDWithString:CBUUIDBatteryServiceString];
      v17 = [uUID8 isEqual:?];
    }

    v18 = v32;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  characteristics = [serviceCopy characteristics];
  v22 = [characteristics count];

  if (!v22)
  {
LABEL_32:
    v14 = 1;
    goto LABEL_13;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  uUID = [serviceCopy characteristics];
  v23 = [uUID countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    while (2)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(uUID);
        }

        if (sub_10004FE54(*(*(&v35 + 1) + 8 * i)))
        {

          goto LABEL_32;
        }
      }

      v24 = [uUID countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

- (BOOL)isHAPCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if (sub_10004FE54(characteristicCopy))
  {
    v4 = 0;
  }

  else
  {
    descriptors = [characteristicCopy descriptors];
    if ([descriptors count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = descriptors;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v15 = descriptors;
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            uUID = [*(*(&v16 + 1) + 8 * i) UUID];
            v12 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v13 = [uUID isEqual:v12];

            if (v13)
            {
              v4 = 1;
              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v4 = 0;
LABEL_14:
        descriptors = v15;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)shouldVerifyHAPCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  uUID = [service UUID];
  v7 = [CBUUID UUIDWithString:@"FED4"];
  if ([uUID isEqual:v7])
  {
  }

  else
  {
    service2 = [characteristicCopy service];
    uUID2 = [service2 UUID];
    v10 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
    v11 = [uUID2 isEqual:v10];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  uUID3 = [characteristicCopy UUID];
  v13 = [CBUUID UUIDWithString:@"00000011-0000-1000-8000-4D69736D6574"];
  if (![uUID3 isEqual:v13])
  {
    uUID4 = [characteristicCopy UUID];
    uUID2 = [CBUUID UUIDWithString:@"00000012-0000-1000-8000-4D69736D6574"];
    if ([uUID4 isEqual:uUID2])
    {

      goto LABEL_7;
    }

    uUID5 = [characteristicCopy UUID];
    v17 = [CBUUID UUIDWithString:@"00000013-0000-1000-8000-4D69736D6574"];
    v18 = [uUID5 isEqual:v17];

    if (v18)
    {
      goto LABEL_8;
    }

LABEL_10:
    service3 = [characteristicCopy service];
    uUID6 = [service3 UUID];
    v21 = [CBUUID UUIDWithString:@"FED3"];
    v22 = [uUID6 isEqual:v21];
    if ((v22 & 1) == 0)
    {
      service4 = [characteristicCopy service];
      uUID7 = [service4 UUID];
      uUID2 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
      if (![uUID7 isEqual:uUID2])
      {
        LOBYTE(v28) = 0;
LABEL_19:

LABEL_20:
        v15 = v28 ^ 1;
        goto LABEL_21;
      }

      v30 = uUID7;
      v32 = service4;
    }

    selfCopy = self;
    uUID8 = [characteristicCopy UUID];
    v27 = [CBUUID UUIDWithString:@"00000014-0000-1000-8000-4D69736D6574"];
    if ([uUID8 isEqual:v27])
    {
      v28 = ![(HAPAccessoryServerBTLE *)selfCopy isPaired];
    }

    else
    {
      LOBYTE(v28) = 0;
    }

    uUID7 = v31;

    service4 = v32;
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_7:

LABEL_8:
  v15 = 0;
LABEL_21:

  return v15;
}

- (BOOL)shouldVerifyHAPService:(id)service
{
  serviceCopy = service;
  uUID = [serviceCopy UUID];
  v6 = [CBUUID UUIDWithString:@"FED4"];
  if ([uUID isEqual:v6])
  {
    isPaired = 0;
  }

  else
  {
    uUID2 = [serviceCopy UUID];
    v9 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
    v10 = [uUID2 isEqual:v9];

    if (v10)
    {
      isPaired = 0;
      goto LABEL_6;
    }

    uUID = [serviceCopy UUID];
    v6 = [CBUUID UUIDWithString:@"FED3"];
    if ([uUID isEqual:v6])
    {
      isPaired = [(HAPAccessoryServerBTLE *)self isPaired];
    }

    else
    {
      uUID3 = [serviceCopy UUID];
      v13 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
      if ([uUID3 isEqual:v13])
      {
        isPaired = [(HAPAccessoryServerBTLE *)self isPaired];
      }

      else
      {
        isPaired = 1;
      }
    }
  }

LABEL_6:
  return isPaired;
}

+ (BOOL)isHAPDescriptor:(id)descriptor
{
  uUID = [descriptor UUID];
  v4 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
  v5 = [uUID isEqual:v4];

  return v5;
}

- (id)_parseService:(id)service error:(id *)error
{
  serviceCopy = service;
  errorCopy = error;
  if (([objc_opt_class() isHAPService:serviceCopy] & 1) == 0)
  {
    selfCopy = self;
    v24 = sub_10007FAA0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v108 = v25;
      v109 = 2112;
      v110 = @"Service does not support HAP";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      error = errorCopy;
    }

    if (error)
    {
      [NSError hapErrorWithcode:3 description:@"Service does not support HAP" reason:0 suggestion:0 underlyingError:0];
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_80;
  }

  uUID = [serviceCopy UUID];
  v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:uUID];

  if (!v8)
  {
    uUID2 = [serviceCopy UUID];
    v13 = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID2];

    selfCopy2 = self;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_10007FAFC(selfCopy2);
      *buf = 138543618;
      v108 = v30;
      v109 = 2112;
      v110 = v13;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      error = errorCopy;
    }

    if (error)
    {
      [NSError hapErrorWithcode:3 description:v13 reason:0 suggestion:0 underlyingError:0];
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_79;
  }

  v91 = v8;
  characteristics = [serviceCopy characteristics];
  v96 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [characteristics count]);

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v87 = serviceCopy;
  characteristics2 = [serviceCopy characteristics];
  v11 = [characteristics2 countByEnumeratingWithState:&v102 objects:v113 count:16];
  selfCopy3 = self;
  if (!v11)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v103;
  v92 = characteristics2;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      v16 = v13;
      if (*v103 != v14)
      {
        objc_enumerationMutation(characteristics2);
      }

      v17 = *(*(&v102 + 1) + 8 * i);
      if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v17])
      {
        v101 = 0;
        v18 = [(_HAPAccessoryServerBTLE200 *)self _parseCharacteristic:v17 error:&v101];
        v19 = v101;
        if (v18)
        {
          [v96 addObject:v18];
        }

        else
        {
          selfCopy4 = self;
          v21 = sub_10007FAA0();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_10007FAFC(selfCopy4);
            *buf = 138543874;
            v108 = v22;
            v109 = 2112;
            v110 = v17;
            v111 = 2112;
            v112 = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse characteristic, %@, with error: %@", buf, 0x20u);

            error = errorCopy;
          }

          characteristics2 = v92;
          self = selfCopy3;
        }
      }

      else if (sub_10004FE54(v17))
      {
        if (v16)
        {
          selfCopy5 = self;
          v59 = sub_10007FAA0();
          serviceCopy = v87;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = sub_10007FAFC(selfCopy5);
            *buf = 138543618;
            v108 = v60;
            v109 = 2112;
            v110 = @"Invalid service, multiple Service Instance ID characteristics.";
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

            error = errorCopy;
          }

          if (error)
          {
            [NSError hapErrorWithcode:9 description:@"Invalid service reason:multiple Service Instance ID characteristics." suggestion:0 underlyingError:0, 0];
            *error = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          v13 = v16;
        }

        else
        {
          v13 = sub_100051504(v17, error);
          if (v13)
          {
            continue;
          }

          selfCopy6 = self;
          v62 = sub_10007FAA0();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v64 = sub_10007FAFC(selfCopy6);
            *buf = 138543362;
            v108 = v64;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Service Instance ID", buf, 0xCu);
          }

          v26 = 0;
          v13 = 0;
          serviceCopy = v87;
        }

        v8 = v91;
        goto LABEL_78;
      }

      v13 = v16;
    }

    v12 = [characteristics2 countByEnumeratingWithState:&v102 objects:v113 count:16];
  }

  while (v12);
LABEL_33:

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v31 = v96;
  v32 = [v31 countByEnumeratingWithState:&v97 objects:v106 count:16];
  if (!v32)
  {
    goto LABEL_45;
  }

  v33 = v32;
  v88 = *v98;
  while (2)
  {
    v34 = 0;
    while (2)
    {
      if (*v98 != v88)
      {
        objc_enumerationMutation(v31);
      }

      v35 = *(*(&v97 + 1) + 8 * v34);
      discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      characteristicSignatures = [discoveryContext characteristicSignatures];
      cbCharacteristic = [v35 cbCharacteristic];
      v39 = [characteristicSignatures objectForKey:cbCharacteristic];

      if (!v39)
      {
        v65 = [NSString stringWithFormat:@"Missing characteristic signature for characteristic: %@", v35];
        v66 = selfCopy3;
        v67 = sub_10007FAA0();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v68 = sub_10007FAFC(v66);
          *buf = 138543618;
          v108 = v68;
          v109 = 2112;
          v110 = v65;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
        }

        v8 = v91;
        characteristics2 = v31;
        if (errorCopy)
        {
          *errorCopy = [NSError hapErrorWithcode:9 description:v65 reason:0 suggestion:0 underlyingError:0];
        }

        v26 = 0;
        serviceCopy = v87;
        goto LABEL_78;
      }

      serviceType = [v39 serviceType];
      uUIDString = [serviceType UUIDString];
      v42 = [CBUUID UUIDWithString:uUIDString];

      v43 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v42];
      serviceType2 = [v39 serviceType];
      if ([serviceType2 isEqual:v91])
      {

        goto LABEL_42;
      }

      v45 = [v43 isEqual:v91];

      if ((v45 & 1) == 0)
      {
        serviceType3 = [v39 serviceType];
        uUIDString2 = [serviceType3 UUIDString];
        v8 = v91;
        uUIDString3 = [v91 UUIDString];
        uUIDString4 = [v42 UUIDString];
        v90 = [NSString stringWithFormat:@"The authenticated service type, %@, does not match the service type, %@ or %@, for characteristic: %@", uUIDString2, uUIDString3, uUIDString4, v35];

        v82 = selfCopy3;
        v83 = sub_10007FAA0();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          v84 = sub_10007FAFC(v82);
          *buf = 138543618;
          v108 = v84;
          v109 = 2112;
          v110 = v90;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
        }

        serviceCopy = v87;
        v70 = v90;
        goto LABEL_75;
      }

LABEL_42:
      serviceInstanceID = [v39 serviceInstanceID];
      v47 = [serviceInstanceID isEqualToNumber:v13];

      if ((v47 & 1) == 0)
      {
        serviceInstanceID2 = [v39 serviceInstanceID];
        v70 = [NSString stringWithFormat:@"The authenticated service instance ID, %@, does not match the service instance ID, %@, for characteristic: %@", serviceInstanceID2, v13, v35];

        v71 = selfCopy3;
        v72 = sub_10007FAA0();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = sub_10007FAFC(v71);
          *buf = 138543618;
          v108 = v73;
          v109 = 2112;
          v110 = v70;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
        }

        serviceCopy = v87;
        v8 = v91;
LABEL_75:
        if (errorCopy)
        {
          *errorCopy = [NSError hapErrorWithcode:9 description:v70 reason:0 suggestion:0 underlyingError:0];
        }

        v26 = 0;
        characteristics2 = v31;
        goto LABEL_78;
      }

      v34 = v34 + 1;
      self = selfCopy3;
      if (v33 != v34)
      {
        continue;
      }

      break;
    }

    v33 = [v31 countByEnumeratingWithState:&v97 objects:v106 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_45:
  v93 = v31;

  discoveryContext2 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  serviceSignatures = [discoveryContext2 serviceSignatures];
  serviceCopy = v87;
  v50 = [serviceSignatures objectForKey:v87];

  v51 = [HAPService alloc];
  v8 = v91;
  uUIDString5 = [v91 UUIDString];
  v53 = [v31 copy];
  serviceProperties = [v50 serviceProperties];
  v89 = v50;
  linkedServices = [v50 linkedServices];
  v56 = [linkedServices copy];
  v26 = [(HAPService *)v51 initWithType:uUIDString5 instanceID:v13 parsedCharacteristics:v53 serviceProperties:serviceProperties linkedServices:v56];

  if (v26)
  {
    [(HAPService *)v26 setCBService:v87];
    v57 = v26;
  }

  else
  {
    uUIDString6 = [v91 UUIDString];
    v75 = [NSString stringWithFormat:@"Failed to create service with type, %@, service instance ID, %@, characteristics, %@", uUIDString6, v13, v93];

    v76 = selfCopy3;
    v77 = sub_10007FAA0();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = sub_10007FAFC(v76);
      *buf = 138543618;
      v108 = v78;
      v109 = 2112;
      v110 = v75;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    if (errorCopy)
    {
      *errorCopy = [NSError hapErrorWithcode:3 description:v75 reason:0 suggestion:0 underlyingError:0];
    }

    v8 = v91;
  }

  characteristics2 = v89;
LABEL_78:

LABEL_79:
LABEL_80:

  return v26;
}

- (id)_parseCharacteristic:(id)characteristic error:(id *)error
{
  characteristicCopy = characteristic;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:characteristicCopy])
  {
    uUID = [characteristicCopy UUID];
    v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:uUID];

    if (v8)
    {
      errorCopy = error;
      v74 = characteristicCopy;
      [characteristicCopy descriptors];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v79 = 0u;
      v9 = [(__CFString *)obj countByEnumeratingWithState:&v76 objects:v80 count:16];
      if (v9)
      {
        v10 = v9;
        selfCopy = self;
        v72 = v8;
        v11 = 0;
        v12 = *v77;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v77 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v76 + 1) + 8 * i);
            uUID2 = [v14 UUID];
            v16 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v17 = [uUID2 isEqual:v16];

            if (v17)
            {
              v18 = v14;

              v11 = v18;
            }
          }

          v10 = [(__CFString *)obj countByEnumeratingWithState:&v76 objects:v80 count:16];
        }

        while (v10);
        v8 = v72;
        if (v11)
        {
          v19 = sub_100051250(v11, errorCopy);
          if (v19)
          {
            discoveryContext = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
            characteristicSignatures = [discoveryContext characteristicSignatures];
            selfCopy3 = [characteristicSignatures objectForKey:v74];

            if (!selfCopy3)
            {
              v30 = [NSString stringWithFormat:@"Missing characteristic signature for characteristic: %@", v74];
              selfCopy2 = self;
              v54 = sub_10007FAA0();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = sub_10007FAFC(selfCopy2);
                *buf = 138543618;
                v82 = v55;
                v83 = 2112;
                v84 = v30;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              if (errorCopy)
              {
                [NSError hapErrorWithcode:9 description:v30 reason:0 suggestion:0 underlyingError:0];
                *errorCopy = v43 = 0;
              }

              else
              {
                v43 = 0;
              }

              v8 = v72;
              goto LABEL_57;
            }

            characteristicType = [(_HAPAccessoryServerBTLE200 *)selfCopy3 characteristicType];
            v8 = v72;
            v24 = [characteristicType isEqual:v72];

            if (v24)
            {
              v25 = [HAPCharacteristic alloc];
              uUIDString = [v72 UUIDString];
              stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
              characteristicProperties = [(_HAPAccessoryServerBTLE200 *)selfCopy3 characteristicProperties];
              characteristicMetadata = [(_HAPAccessoryServerBTLE200 *)selfCopy3 characteristicMetadata];
              LOBYTE(v70) = 1;
              v30 = [(HAPCharacteristic *)v25 initWithType:uUIDString instanceID:v19 value:0 stateNumber:stateNumber properties:characteristicProperties eventNotificationsEnabled:0 implicitWriteWithResponse:v70 metadata:characteristicMetadata];

              if (v30)
              {
                v31 = +[NSDate distantPast];
                [v30 setValueUpdatedTime:v31];

                [v30 setCBCharacteristic:v74];
                v32 = [(_HAPAccessoryServerBTLE200 *)selfCopy _characteristicForCBCharacteristic:v74];
                if (-[__CFString isEqualToCharacteristic:](v32, "isEqualToCharacteristic:", v30) && (-[__CFString metadata](v32, "metadata"), v33 = objc_claimAutoreleasedReturnValue(), -[NSObject metadata](v30, "metadata"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v33 isEqualToCharacteristicMetadata:v34], v34, v33, v35))
                {
                  v36 = selfCopy;
                  v37 = sub_10007FAA0();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                  {
                    v38 = sub_10007FAFC(v36);
                    *buf = 138543618;
                    v82 = v38;
                    v83 = 2112;
                    v84 = v32;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}@Using existing characteristic: %@", buf, 0x16u);
                  }

                  v39 = v32;
                  v32 = v39;
                }

                else
                {
                  v39 = v30;
                }

                v43 = v39;
                v8 = v72;
              }

              else
              {
                uUIDString2 = [v72 UUIDString];
                characteristicProperties2 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 characteristicProperties];
                characteristicMetadata2 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 characteristicMetadata];
                v65 = [NSString stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %tu, metadata, %@", uUIDString2, v19, characteristicProperties2, characteristicMetadata2];

                v66 = selfCopy;
                v67 = sub_10007FAA0();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v68 = sub_10007FAFC(v66);
                  *buf = 138543618;
                  v82 = v68;
                  v83 = 2112;
                  v84 = v65;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
                }

                if (errorCopy)
                {
                  v32 = v65;
                  [NSError hapErrorWithcode:3 description:v65 reason:0 suggestion:0 underlyingError:0];
                  *errorCopy = v43 = 0;
                }

                else
                {
                  v43 = 0;
                  v32 = v65;
                }
              }

              goto LABEL_57;
            }

            characteristicType2 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 characteristicType];
            uUIDString3 = [characteristicType2 UUIDString];
            uUIDString4 = [v72 UUIDString];
            v30 = [NSString stringWithFormat:@"The authenticated characteristic type, %@, does not match the characteristic type, %@", uUIDString3, uUIDString4];

            v59 = selfCopy;
            v60 = sub_10007FAA0();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v61 = sub_10007FAFC(v59);
              *buf = 138543618;
              v82 = v61;
              v83 = 2112;
              v84 = v30;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
            }

            if (errorCopy)
            {
              [NSError hapErrorWithcode:9 description:v30 reason:0 suggestion:0 underlyingError:0];
              *errorCopy = v43 = 0;
LABEL_57:

              characteristicCopy = v74;
              goto LABEL_58;
            }
          }

          else
          {
            selfCopy3 = self;
            v30 = sub_10007FAA0();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v52 = sub_10007FAFC(selfCopy3);
              *buf = 138543362;
              v82 = v52;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Characteristic Instance ID", buf, 0xCu);
            }
          }

          v43 = 0;
          goto LABEL_57;
        }
      }

      selfCopy4 = self;
      v45 = sub_10007FAA0();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = sub_10007FAFC(selfCopy4);
        *buf = 138543618;
        v82 = v46;
        v83 = 2112;
        v84 = @"Characteristic missing characteristic instance ID descriptor";
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      characteristicCopy = v74;
      if (errorCopy)
      {
        [NSError hapErrorWithcode:9 description:@"Characteristic missing characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
        *errorCopy = v43 = 0;
LABEL_58:

        goto LABEL_59;
      }
    }

    else
    {
      uUID3 = [characteristicCopy UUID];
      obj = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", uUID3];

      selfCopy5 = self;
      v49 = sub_10007FAA0();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10007FAFC(selfCopy5);
        v51 = v50 = error;
        *buf = 138543618;
        v82 = v51;
        v83 = 2112;
        v84 = obj;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

        error = v50;
      }

      if (error)
      {
        [NSError hapErrorWithcode:3 description:obj reason:0 suggestion:0 underlyingError:0];
        *error = v43 = 0;
        goto LABEL_58;
      }
    }

    v43 = 0;
    goto LABEL_58;
  }

  selfCopy6 = self;
  v41 = sub_10007FAA0();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = sub_10007FAFC(selfCopy6);
    *buf = 138543618;
    v82 = v42;
    v83 = 2112;
    v84 = @"Characteristic does not support HAP";
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
  }

  if (error)
  {
    [NSError hapErrorWithcode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0];
    *error = v43 = 0;
  }

  else
  {
    v43 = 0;
  }

LABEL_59:

  return v43;
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v13 = [HMFActivity alloc];
  v14 = HMFMethodDescription();
  4214 = [NSString stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4214];
  v16 = [v13 initWithName:4214];

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057F40;
  block[3] = &unk_100273DA8;
  v23 = valuesCopy;
  selfCopy = self;
  v26 = queueCopy;
  v27 = handlerCopy;
  timeoutCopy = timeout;
  v25 = v16;
  v18 = queueCopy;
  v19 = handlerCopy;
  v20 = v16;
  v21 = valuesCopy;
  dispatch_async(clientQueue, block);
}

- (void)_readCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valuesCopy count]);
  v10 = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = valuesCopy;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v14 = v38;
    selfCopy = self;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        dispatch_group_enter(v10);
        v17 = sub_10007FAA0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = sub_10007FAFC(0);
          [v16 instanceID];
          v19 = v10;
          v20 = v12;
          v21 = v14;
          v22 = v13;
          v24 = v23 = v9;
          *buf = 138543618;
          v46 = v18;
          v47 = 2112;
          v48 = v24;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Sending read for characteristic %{key:characteristicId}@", buf, 0x16u);

          v9 = v23;
          v13 = v22;
          v14 = v21;
          v12 = v20;
          v10 = v19;
          self = selfCopy;
        }

        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v38[0] = sub_1000588CC;
        v38[1] = &unk_100273DD0;
        v38[2] = self;
        v39 = v9;
        v40 = v10;
        [(_HAPAccessoryServerBTLE200 *)self _readValueForCharacteristic:v16 options:1 completionHandler:v37];
      }

      v12 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v12);
  }

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058A44;
  block[3] = &unk_100273DF8;
  block[4] = self;
  v34 = queueCopy;
  v35 = v9;
  v36 = handlerCopy;
  v26 = v9;
  v27 = handlerCopy;
  v28 = queueCopy;
  dispatch_group_notify(v10, clientQueue, block);
}

- (void)_updatePropertiesFromCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
  if ([type isEqualToString:@"00000220-0000-1000-8000-4D69736D6574"])
  {
    value = [characteristicCopy value];
    v7 = [HAPAccessory productDataStringFromData:value];
    [(HAPAccessoryServer *)self setProductData:v7];

    productData = [(HAPAccessoryServer *)self productData];
    [primaryAccessory setProductData:productData];
  }
}

- (void)_readValueForCharacteristic:(id)characteristic options:(int64_t)options completionHandler:(id)handler
{
  characteristicCopy = characteristic;
  handlerCopy = handler;
  service = [characteristicCopy service];
  accessory = [service accessory];
  server = [accessory server];

  if (server == self)
  {
    v30 = 0;
    v17 = [objc_opt_class() readRequestForCharacteristic:characteristicCopy options:options error:&v30];
    v16 = v30;
    if (v17)
    {
      v18 = [HMFActivity alloc];
      v19 = HMFMethodDescription();
      4352 = [NSString stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4352];
      *buf = [v18 initWithName:4352];

      objc_initWeak(&location, self);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100059188;
      v25[3] = &unk_100273E20;
      objc_copyWeak(&v28, &location);
      v26 = characteristicCopy;
      v27 = handlerCopy;
      v21 = objc_retainBlock(v25);
      [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v17 shouldPrioritize:(options >> 1) & 1 responseHandler:v21];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      __HMFActivityScopeLeave();
    }

    else
    {
      selfCopy = self;
      v23 = sub_10007FAA0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_10007FAFC(selfCopy);
        *buf = 138543874;
        *&buf[4] = v24;
        v32 = 2112;
        v33 = characteristicCopy;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Read failed, failed to create request for characteristic, %@, with error: %@", buf, 0x20u);
      }

      sub_100059068(characteristicCopy, handlerCopy, 1, v16, @"Failed to create request.");
    }
  }

  else
  {
    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      *buf = 138543618;
      *&buf[4] = v15;
      v32 = 2112;
      v33 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Read failed, characteristic is not part of server: %@", buf, 0x16u);
    }

    v16 = [NSError hapErrorWithcode:11];
    sub_100059068(characteristicCopy, handlerCopy, 1, v16, @"Characteristic is not part of server.");
  }
}

+ (id)readRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error
{
  optionsCopy = options;
  characteristicCopy = characteristic;
  if (([characteristicCopy properties] & 2) != 0)
  {
    error = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:3 bodyData:0 shouldEncrypt:optionsCopy & 1 timeoutInterval:10.0];
  }

  else
  {
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(0);
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Read failed, characteristic does not support secured reads: %@", buf, 0x16u);
    }

    if (error)
    {
      characteristicCopy = [NSString stringWithFormat:@"Failed to read from characteristic %@.", characteristicCopy];
      *error = [NSError hapErrorWithcode:11 description:characteristicCopy reason:@"Characteristic does not support secured reads." suggestion:0 underlyingError:0];

      error = 0;
    }
  }

  return error;
}

+ (BOOL)parseReadResponse:(id)response value:(id *)value notificationContext:(id *)context error:(id *)error
{
  responseCopy = response;
  request = [responseCopy request];
  type = [request type];

  contextCopy = context;
  if (type != 3)
  {
    v36 = 4294960591;
LABEL_21:
    sub_1001F89CC(v36, &v42, buf);
    v13 = 0;
    v26 = 0;
    v21 = 0;
    selfCopy = v42;
    v14 = *buf;
    goto LABEL_9;
  }

  body = [responseCopy body];
  v41 = 0;
  v13 = [self extractSerializedRequestValueFromBodyData:body error:&v41];
  v14 = v41;

  if (!v13)
  {
    if (v14)
    {
      v21 = 0;
      v26 = 0;
      v13 = 0;
      goto LABEL_10;
    }

    v36 = 4294960559;
    goto LABEL_21;
  }

  request2 = [responseCopy request];
  characteristic = [request2 characteristic];
  metadata = [characteristic metadata];
  format = [metadata format];
  v19 = sub_1000768B4(format);

  v20 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v40 = v14;
  v21 = [v20 reverseTransformedValue:v13 format:v19 error:&v40];
  v22 = v40;

  if (v22)
  {
    v26 = 0;
    v14 = v22;
    goto LABEL_10;
  }

  request3 = [responseCopy request];
  characteristic2 = [request3 characteristic];
  properties = [characteristic2 properties];

  if ((properties & 0x100) != 0)
  {
    body2 = [responseCopy body];
    v39 = 0;
    v26 = [self extractNotificationContextFromBodyData:body2 error:&v39];
    v14 = v39;

    selfCopy = self;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = sub_10007FAFC(selfCopy);
      *buf = 138543874;
      *&buf[4] = v30;
      v44 = 2112;
      v45 = v26;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}@Parsed read response notification context: %@ with error: %@", buf, 0x20u);
    }

LABEL_9:
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (error)
    {
      v31 = v14;
      v32 = 0;
      *error = v14;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_18;
  }

  v26 = 0;
LABEL_12:
  if (value)
  {
    v33 = v21;
    *value = v21;
  }

  if (v26)
  {
    v34 = v26;
    v14 = 0;
    *contextCopy = v26;
  }

  else
  {
    v14 = 0;
  }

  v32 = 1;
LABEL_18:

  return v32;
}

+ (id)extractSerializedRequestValueFromBodyData:(id)data error:(id *)error
{
  dataCopy = data;
  [dataCopy bytes];
  [dataCopy length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    if (error)
    {
      v7 = [NSError errorWithOSStatus:v6];
      *error = [NSError hapErrorWithcode:12 description:@"Parse failed." reason:@"Failed to parse request body." suggestion:0 underlyingError:v7];

      error = 0;
    }
  }

  else
  {
    error = [NSData dataWithBytes:0 length:0];
  }

  return error;
}

+ (id)extractNotificationContextFromBodyData:(id)data error:(id *)error
{
  dataCopy = data;
  [dataCopy bytes];
  [dataCopy length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    v7 = 0;
    if (error && v6 != -6727)
    {
      v8 = [NSError errorWithOSStatus:v6];
      *error = [NSError hapErrorWithcode:12 description:@"Parse failed." reason:@"Failed to parse notification context." suggestion:0 underlyingError:v8];

      v7 = 0;
    }
  }

  else
  {
    v7 = [NSData dataWithBytes:0 length:0];
  }

  return v7;
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  v13 = [HMFActivity alloc];
  v14 = HMFMethodDescription();
  4574 = [NSString stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4574];
  v16 = [v13 initWithName:4574];

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059EE0;
  block[3] = &unk_100273E70;
  timeoutCopy = timeout;
  block[4] = self;
  v23 = valuesCopy;
  v24 = v16;
  v25 = queueCopy;
  v26 = handlerCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = v16;
  v21 = valuesCopy;
  dispatch_async(clientQueue, block);
}

- (void)_writeValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  contextDataCopy = contextData;
  handlerCopy = handler;
  service = [characteristicCopy service];
  accessory = [service accessory];
  server = [accessory server];

  if (server == self)
  {
    if ((options & 4) != 0 || ([characteristicCopy properties] & 0x20) != 0)
    {
      selfCopy = self;
      v31 = sub_10007FAA0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v34 = v32;
        v35 = 2112;
        v36 = characteristicCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%{public}@Performing timed write for characteristic %@", buf, 0x16u);
      }

      [(_HAPAccessoryServerBTLE200 *)selfCopy _performTimedWriteValue:valueCopy toCharacteristic:characteristicCopy authorizationData:dataCopy contextData:contextDataCopy options:options completionHandler:handlerCopy];
    }

    else
    {
      selfCopy2 = self;
      v28 = sub_10007FAA0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = sub_10007FAFC(selfCopy2);
        *buf = 138543618;
        v34 = v29;
        v35 = 2112;
        v36 = characteristicCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}@Performing write for characteristic %@", buf, 0x16u);
      }

      [(_HAPAccessoryServerBTLE200 *)selfCopy2 _performWriteValue:valueCopy toCharacteristic:characteristicCopy authorizationData:dataCopy contextData:contextDataCopy options:options completionHandler:handlerCopy];
    }
  }

  else
  {
    selfCopy3 = self;
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(selfCopy3);
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Write failed, characteristic is not part of server: %@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      characteristicCopy = [NSString stringWithFormat:@"Failed to write to characteristic %@.", characteristicCopy];
      v26 = [NSError hapErrorWithcode:10 description:characteristicCopy reason:@"Characteristic is not part of server." suggestion:0 underlyingError:0];

      handlerCopy[2](handlerCopy, characteristicCopy, v26);
    }
  }
}

- (void)_performWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  contextDataCopy = contextData;
  handlerCopy = handler;
  v17 = [HMFActivity alloc];
  v18 = HMFMethodDescription();
  4711 = [NSString stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4711];
  v38 = [v17 initWithName:4711];

  objc_initWeak(&location, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10005ADA4;
  v32[3] = &unk_100273E98;
  objc_copyWeak(v36, &location);
  v20 = characteristicCopy;
  v33 = v20;
  v21 = handlerCopy;
  v35 = v21;
  v22 = valueCopy;
  v34 = v22;
  v36[1] = options;
  v23 = objc_retainBlock(v32);
  v31 = 0;
  v24 = [objc_opt_class() writeRequestForCharacteristic:v20 value:v22 authorizationData:dataCopy contextData:contextDataCopy options:options error:&v31];
  v25 = v31;
  if (v24)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v24 shouldPrioritize:(options >> 4) & 1 responseHandler:v23];
  }

  else
  {
    selfCopy = self;
    v27 = sub_10007FAA0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = sub_10007FAFC(selfCopy);
      *buf = 138543874;
      v40 = v28;
      v41 = 2112;
      v42 = v20;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@Write failed, failed to create request for characteristic, %@, with error: %@", buf, 0x20u);
    }

    sub_100059068(v20, v21, 2, v25, @"Failed to create request.");
  }

  objc_destroyWeak(v36);
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
}

- (void)_performTimedWriteValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  valueCopy = value;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005B35C;
  v21[3] = &unk_100273EC0;
  v21[4] = self;
  characteristicCopy = characteristic;
  v23 = valueCopy;
  handlerCopy = handler;
  optionsCopy = options;
  v15 = valueCopy;
  v16 = characteristicCopy;
  v17 = handlerCopy;
  contextDataCopy = contextData;
  dataCopy = data;
  v20 = objc_retainBlock(v21);
  [(_HAPAccessoryServerBTLE200 *)self _performTimedWritePrepareWithValue:v15 toCharacteristic:v16 authorizationData:dataCopy contextData:contextDataCopy options:options completionHandler:v20];
}

- (void)_performTimedWritePrepareWithValue:(id)value toCharacteristic:(id)characteristic authorizationData:(id)data contextData:(id)contextData options:(int64_t)options completionHandler:(id)handler
{
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  contextDataCopy = contextData;
  handlerCopy = handler;
  v39 = 0;
  v32 = valueCopy;
  v33 = dataCopy;
  v19 = [objc_opt_class() prepareWriteRequestForCharacteristic:characteristicCopy value:valueCopy authorizationData:dataCopy contextData:contextDataCopy options:options error:&v39];
  v34 = v39;
  if (v19)
  {
    v20 = [HMFActivity alloc];
    v21 = HMFMethodDescription();
    4850 = [NSString stringWithFormat:@"%@, %s:%ld", v21, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4850];
    v38 = [v20 initWithName:4850];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10005B7E8;
    v35[3] = &unk_100273EE8;
    v35[4] = self;
    v23 = characteristicCopy;
    v36 = v23;
    v37 = handlerCopy;
    v24 = objc_retainBlock(v35);
    v25 = sub_10007FAA0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_10007FAFC(0);
      instanceID = [v23 instanceID];
      *buf = 138543618;
      v41 = v26;
      v42 = 2112;
      v43 = instanceID;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Sending timed write for characteristic %{key:characteristicId}@", buf, 0x16u);
    }

    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v19 shouldPrioritize:(options >> 4) & 1 responseHandler:v24];
    __HMFActivityScopeLeave();
  }

  else
  {
    selfCopy = self;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_10007FAFC(selfCopy);
      *buf = 138543874;
      v41 = v30;
      v42 = 2112;
      v43 = characteristicCopy;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@Timed write prepare failed, failed to create request for characteristic, %@, with error: %@", buf, 0x20u);
    }

    v31 = [NSError hapErrorWithcode:10];
    sub_100059068(characteristicCopy, handlerCopy, 2, v31, @"Failed to create prepare-write request.");
  }
}

- (void)_performTimedWriteExecuteForCharacteristic:(id)characteristic value:(id)value options:(int64_t)options completionHandler:(id)handler
{
  characteristicCopy = characteristic;
  valueCopy = value;
  handlerCopy = handler;
  v28 = 0;
  v13 = [objc_opt_class() executeWriteRequestForCharacteristic:characteristicCopy options:options error:&v28];
  v14 = v28;
  if (v13)
  {
    objc_initWeak(location, self);
    v15 = [HMFActivity alloc];
    v16 = HMFMethodDescription();
    4916 = [NSString stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4916];
    v27 = [v15 initWithName:4916];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005BE64;
    v22[3] = &unk_100273E98;
    objc_copyWeak(v26, location);
    v23 = characteristicCopy;
    v25 = handlerCopy;
    v24 = valueCopy;
    v26[1] = options;
    v18 = objc_retainBlock(v22);
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v13 shouldPrioritize:1 responseHandler:v18];

    objc_destroyWeak(v26);
    __HMFActivityScopeLeave();

    objc_destroyWeak(location);
  }

  else
  {
    selfCopy = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_10007FAFC(selfCopy);
      *location = 138543874;
      *&location[4] = v21;
      v30 = 2112;
      v31 = characteristicCopy;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Timed write execute failed, failed to create request for characteristic, %@, with error: %@", location, 0x20u);
    }

    sub_100059068(characteristicCopy, handlerCopy, 2, v14, @"Failed to create execute-write request.");
  }
}

+ (id)writeRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error
{
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  contextDataCopy = contextData;
  if (([characteristicCopy properties] & 4) != 0)
  {
    metadata = [characteristicCopy metadata];
    format = [metadata format];
    v26 = sub_1000768B4(format);

    v27 = sub_1001F7EE4(valueCopy, v26, dataCopy, (options >> 1) & 1, contextDataCopy, error, 0.0);
    if (v27)
    {
      if ((options & 8) != 0)
      {
        v28 = 60.0;
      }

      else
      {
        v28 = 10.0;
      }

      v22 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:2 bodyData:v27 shouldEncrypt:options & 1 timeoutInterval:v28];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    selfCopy = self;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %@", buf, 0x16u);
    }

    if (error)
    {
      characteristicCopy = [NSString stringWithFormat:@"Failed to write to characteristic %@.", characteristicCopy];
      *error = [NSError hapErrorWithcode:10 description:characteristicCopy reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];
    }

    v22 = 0;
  }

  return v22;
}

+ (id)prepareWriteRequestForCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data contextData:(id)contextData options:(int64_t)options error:(id *)error
{
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  contextDataCopy = contextData;
  if (([characteristicCopy properties] & 4) != 0)
  {
    metadata = [characteristicCopy metadata];
    format = [metadata format];
    v25 = sub_1000768B4(format);

    v26 = sub_1001F7EE4(valueCopy, v25, dataCopy, (options >> 1) & 1, contextDataCopy, error, 2.5);
    if (v26)
    {
      error = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:4 bodyData:v26 shouldEncrypt:options & 1 timeoutInterval:2.5];
    }

    else
    {
      error = 0;
    }
  }

  else
  {
    selfCopy = self;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %@", buf, 0x16u);
    }

    if (error)
    {
      characteristicCopy = [NSString stringWithFormat:@"Failed to write to characteristic %@.", characteristicCopy];
      *error = [NSError hapErrorWithcode:10 description:characteristicCopy reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];

      error = 0;
    }
  }

  return error;
}

+ (id)executeWriteRequestForCharacteristic:(id)characteristic options:(int64_t)options error:(id *)error
{
  optionsCopy = options;
  characteristicCopy = characteristic;
  if (([characteristicCopy properties] & 4) != 0)
  {
    error = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:5 bodyData:0 shouldEncrypt:optionsCopy & 1 timeoutInterval:10.0];
  }

  else
  {
    selfCopy = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %@", buf, 0x16u);
    }

    if (error)
    {
      characteristicCopy = [NSString stringWithFormat:@"Failed to write to characteristic %@.", characteristicCopy];
      *error = [NSError hapErrorWithcode:11 description:characteristicCopy reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];

      error = 0;
    }
  }

  return error;
}

+ (BOOL)parseWriteResponse:(id)response value:(id *)value error:(id *)error
{
  responseCopy = response;
  request = [responseCopy request];
  type = [request type];

  if (type == 5 || type == 2)
  {
    body = [responseCopy body];
    v29 = 0;
    v13 = [self extractSerializedRequestValueFromBodyData:body error:&v29];
    v14 = v29;

    if (v13)
    {
      request2 = [responseCopy request];
      characteristic = [request2 characteristic];
      metadata = [characteristic metadata];
      format = [metadata format];
      v19 = sub_1000768B4(format);

      v20 = +[HAPDataValueTransformer defaultDataValueTransformer];
      v28 = v14;
      v21 = [v20 reverseTransformedValue:v13 format:v19 error:&v28];
      v22 = v28;

      v14 = v22;
      goto LABEL_9;
    }

    if (v14)
    {
      v13 = 0;
      v21 = 0;
      if (error)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    v23 = 4294960559;
  }

  else
  {
    v23 = 4294960591;
  }

  v20 = [NSError errorWithOSStatus:v23];
  v14 = [NSError hapErrorWithcode:12 description:@"Write failed." reason:@"Failed to parse write request body." suggestion:0 underlyingError:v20];
  v21 = 0;
  v13 = 0;
LABEL_9:

  if (v14)
  {
    if (error)
    {
LABEL_11:
      v24 = v14;
      v25 = 0;
      *error = v14;
      goto LABEL_19;
    }

LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  if (value)
  {
    v26 = v21;
    v14 = 0;
    *value = v21;
  }

  else
  {
    v14 = 0;
  }

  v25 = 1;
LABEL_19:

  return v25;
}

- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy properties])
  {
    browser = [(HAPAccessoryServerBTLE *)self browser];
    identifier = [(HAPAccessoryServer *)self identifier];
    [browser markNotifyingCharacteristicUpdatedForIdentifier:identifier];

    if (![(HAPAccessoryServerBTLE *)self notifyingCharacteristicUpdated])
    {
      [(HAPAccessoryServerBTLE *)self setNotifyingCharacteristicUpdated:1];
      stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
      unsignedShortValue = [stateNumber unsignedShortValue];

      v8 = [NSNumber numberWithUnsignedShort:(unsignedShortValue + 1)];
      [(HAPAccessoryServerBTLE *)self setStateNumber:v8];
    }

    stateNumber2 = [(HAPAccessoryServerBTLE *)self stateNumber];
    [characteristicCopy setStateNumber:stateNumber2];
  }
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  if ([(HAPAccessoryServerBTLE *)self stateChanged])
  {
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005CF98;
    block[3] = &unk_100273F10;
    eventsCopy = events;
    v14 = &v33;
    block[4] = self;
    v33 = characteristicsCopy;
    v15 = &v35;
    v16 = &v34;
    v34 = queueCopy;
    v35 = handlerCopy;
    v17 = queueCopy;
    v18 = handlerCopy;
    v19 = characteristicsCopy;
    dispatch_async(clientQueue, block);
  }

  else
  {
    selfCopy = self;
    v21 = sub_10007FAA0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@Deferring enable events to prioritize local commands", buf, 0xCu);
    }

    v23 = dispatch_time(0, 1000000000);
    clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005CFAC;
    v27[3] = &unk_100273F10;
    eventsCopy2 = events;
    v14 = &v28;
    v27[4] = selfCopy;
    v28 = characteristicsCopy;
    v15 = &v30;
    v16 = &v29;
    v29 = queueCopy;
    v30 = handlerCopy;
    v24 = queueCopy;
    v25 = handlerCopy;
    v26 = characteristicsCopy;
    dispatch_after(v23, clientQueue, v27);
  }
}

- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  characteristicEnableEventCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
  v9 = [characteristicEnableEventCompletionHandlers objectForKey:characteristicCopy];

  if (v9)
  {
    characteristicEnableEventCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
    [characteristicEnableEventCompletionHandlers2 removeObjectForKey:characteristicCopy];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, errorCopy);
  }

  else
  {
    selfCopy = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10007FAFC(selfCopy);
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Received unexpected notification updated completion from characteristic, %@, dropping", &v14, 0x16u);
    }
  }
}

- (void)_handleEventIndicationForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy properties])
  {
    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Reading value on Indication for characteristic %@", buf, 0x16u);
    }

    [(_HAPAccessoryServerBTLE200 *)selfCopy markNotifyingCharacteristicUpdatedforCharacteristic:characteristicCopy];
    v8 = [NSArray arrayWithObject:characteristicCopy];
    clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005F094;
    v10[3] = &unk_1002736F8;
    v10[4] = selfCopy;
    [(_HAPAccessoryServerBTLE200 *)selfCopy _readCharacteristicValues:v8 queue:clientQueue completionHandler:v10];
  }
}

+ (id)configurationRequestForService:(id)service configRequestType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  serviceCopy = service;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  TLV8BufferInit();
  if (typeCopy != 2 && (v8 = TLV8BufferAppend(), v8) || (v8 = TLV8BufferAppend(), v8))
  {
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v10 = [NSData dataWithBytes:v28 length:?];
    if (v10)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4294960568;
    }
  }

  TLV8BufferFree();
  if (error && v9)
  {
    v11 = [NSError errorWithOSStatus:v9];
    *error = [NSError hapErrorWithcode:12 description:@"Protocol configuration failed" reason:@"Failed to create protocol configuration body" suggestion:0 underlyingError:v11];
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  characteristics = [serviceCopy characteristics];
  v13 = [characteristics countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v13)
  {
LABEL_21:

    goto LABEL_24;
  }

  v14 = v13;
  v15 = *v24;
LABEL_12:
  v16 = 0;
  while (1)
  {
    if (*v24 != v15)
    {
      objc_enumerationMutation(characteristics);
    }

    v17 = *(*(&v23 + 1) + 8 * v16);
    cbCharacteristic = [v17 cbCharacteristic];
    if (!sub_100051018(cbCharacteristic))
    {

      goto LABEL_19;
    }

    serviceProperties = [serviceCopy serviceProperties];

    if ((serviceProperties & 4) != 0)
    {
      break;
    }

LABEL_19:
    if (v14 == ++v16)
    {
      v14 = [characteristics countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  v20 = v17;

  if (v20)
  {
    v21 = [[HAPBTLERequest alloc] initWithCharacteristic:v20 requestType:8 bodyData:v10 shouldEncrypt:1 timeoutInterval:10.0];

    goto LABEL_27;
  }

LABEL_24:
  if (error)
  {
    [NSError hapErrorWithcode:3 description:@"Protocol configuration request create failed" reason:@"Service is missing service signature charactersitic or support for configuration" suggestion:0 underlyingError:0];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_27:

  return v21;
}

- (void)_configureBroadcastKeyGeneration:(unsigned __int8)generation service:(id)service withCompletion:(id)completion
{
  generationCopy = generation;
  serviceCopy = service;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005F8C4;
  v23[3] = &unk_100274000;
  objc_copyWeak(&v26, &location);
  v27 = generationCopy;
  v10 = completionCopy;
  v25 = v10;
  v11 = serviceCopy;
  v24 = v11;
  v12 = objc_retainBlock(v23);
  v13 = objc_opt_class();
  v22 = 0;
  if (generationCopy == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [v13 configurationRequestForService:v11 configRequestType:v14 error:&v22];
  v16 = v22;
  if (v15)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v15 shouldPrioritize:0 responseHandler:v12];
  }

  else
  {
    selfCopy = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy);
      *buf = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create configuration request for service, %@, with error: %@", buf, 0x20u);
    }

    v20 = [NSString stringWithFormat:@"Failed to configure service %@.", v11];
    v21 = [NSError hapErrorWithcode:1 description:v20 reason:@"Failed to create request." suggestion:0 underlyingError:v16];

    (*(v10 + 2))(v10, 0, 0, 0, v21, 0.0);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

+ (id)configurationRequestForCharacteristic:(id)characteristic isBroadcasted:(BOOL)broadcasted interval:(unint64_t)interval error:(id *)error
{
  broadcastedCopy = broadcasted;
  characteristicCopy = characteristic;
  TLV8BufferInit();
  v9 = TLV8BufferAppend();
  if (v9 || broadcastedCopy && (v9 = TLV8BufferAppend(), v9))
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = [NSData dataWithBytes:0 length:0];
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = 4294960568;
    }
  }

  TLV8BufferFree();
  if (error && v10)
  {
    v13 = [NSError errorWithOSStatus:v10];
    *error = [NSError hapErrorWithcode:1 description:@"Characteristic configuration failed." reason:@"Failed to create characteristic configuration request body." suggestion:0 underlyingError:v13];
  }

  v14 = [[HAPBTLERequest alloc] initWithCharacteristic:characteristicCopy requestType:7 bodyData:v11 shouldEncrypt:1 timeoutInterval:10.0];

  return v14;
}

- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  characteristicsCopy = characteristics;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005FFE4;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = characteristicsCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = characteristicsCopy;
  dispatch_async(clientQueue, v15);
}

- (void)_configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  characteristicsCopy = characteristics;
  queueCopy = queue;
  handlerCopy = handler;
  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [characteristicsCopy count]);
  v9 = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = characteristicsCopy;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v10)
  {
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        characteristic = [v13 characteristic];
        properties = [characteristic properties];

        if ((properties & 8) != 0)
        {
          dispatch_group_enter(v9);
          broadcastEnable = [v13 broadcastEnable];
          broadcastInterval = [v13 broadcastInterval];
          characteristic2 = [v13 characteristic];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1000606A4;
          v36[3] = &unk_100273DD0;
          v36[4] = self;
          v37 = v29;
          v38 = v9;
          [(_HAPAccessoryServerBTLE200 *)self _enableBroadcastEvent:broadcastEnable interval:broadcastInterval forCharacteristic:characteristic2 completionHandler:v36];
        }

        else
        {
          selfCopy = self;
          v17 = sub_10007FAA0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = sub_10007FAFC(selfCopy);
            characteristic3 = [v13 characteristic];
            *buf = 138543618;
            v44 = v18;
            v45 = 2112;
            v46 = characteristic3;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic %@ does not support broadcast notification", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v10);
  }

  objc_initWeak(buf, self);
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006081C;
  block[3] = &unk_100274050;
  objc_copyWeak(&v35, buf);
  v32 = queueCopy;
  v33 = v29;
  v34 = handlerCopy;
  v24 = v29;
  v25 = handlerCopy;
  v26 = queueCopy;
  dispatch_group_notify(v9, clientQueue, block);

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

- (void)startPairingWithRequest:(id)request
{
  requestCopy = request;
  v5 = [HMFActivity alloc];
  v6 = HMFMethodDescription();
  6214 = [NSString stringWithFormat:@"%@, %s:%ld", v6, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 6214];
  v8 = [v5 initWithName:6214];

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061154;
  block[3] = &unk_100273748;
  block[4] = self;
  v13 = v8;
  v14 = requestCopy;
  v10 = requestCopy;
  v11 = v8;
  dispatch_async(clientQueue, block);
}

- (void)_checkForAuthPrompt:(BOOL)prompt
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100061568;
  v3[3] = &unk_1002740C8;
  v3[4] = self;
  promptCopy = prompt;
  [(_HAPAccessoryServerBTLE200 *)self _discoverWithType:2 completionHandler:v3];
}

- (void)_getPairingFeaturesWithCompletionHandler:(id)handler
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000620B0;
  v19[3] = &unk_1002740F0;
  v19[4] = self;
  handlerCopy = handler;
  v20 = handlerCopy;
  v5 = objc_retainBlock(v19);
  pairingFeaturesCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairingFeaturesCharacteristic];
  v7 = pairingFeaturesCharacteristic;
  if (pairingFeaturesCharacteristic)
  {
    value = [pairingFeaturesCharacteristic value];

    if (!value)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000622F0;
      v16[3] = &unk_100274118;
      v16[4] = self;
      v18 = v5;
      v13 = v7;
      v17 = v13;
      v14 = objc_retainBlock(v16);
      [(_HAPAccessoryServerBTLE200 *)self _readValueForCharacteristic:v13 options:2 completionHandler:v14];

      goto LABEL_9;
    }

    *buf = 0;
    v15 = 0;
    [(_HAPAccessoryServerBTLE200 *)self _parsePairingFeaturesCharacteristic:v7 authMethod:buf error:&v15];
    v9 = v15;
    (v5[2])(v5, *buf, v9);
  }

  else
  {
    selfCopy = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, missing the Pairing Features characteristic", buf, 0xCu);
    }

    v9 = [NSError hapErrorWithcode:7 description:@"Pairing Failed." reason:@"Missing Pairing Features characteristic." suggestion:0 underlyingError:0];
    (v5[2])(v5, 0, v9);
  }

LABEL_9:
}

- (BOOL)_parsePairingFeaturesCharacteristic:(id)characteristic authMethod:(unint64_t *)method error:(id *)error
{
  value = [characteristic value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    -[_HAPAccessoryServerBTLE200 setFeatureFlags:](self, "setFeatureFlags:", [value unsignedCharValue]);
    [(HAPAccessoryServer *)self setAuthMethod:sub_10001F99C([(_HAPAccessoryServerBTLE200 *)self featureFlags])];
    if ([(HAPAccessoryServer *)self authMethod]== 6)
    {
      [(HAPAccessoryServer *)self setAuthMethod:4];
    }

    if (method)
    {
      *method = [(HAPAccessoryServer *)self authMethod];
    }
  }

  else
  {
    selfCopy = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(selfCopy);
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the Pairing Features characteristic value is invalid", &v14, 0xCu);
    }

    if (error)
    {
      *error = [NSError hapErrorWithcode:12 description:@"Pairing Failed." reason:@"The Pairing Features characteristic value is missing" suggestion:0 underlyingError:0];
    }
  }

  return isKindOfClass & 1;
}

- (void)continuePairingAfterAuthPrompt
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062688;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (BOOL)stopPairingWithError:(id *)error
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062B1C;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);

  return 1;
}

- (void)_handlePairSetupSessionExchangeData:(id)data
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100062F04;
  v15[3] = &unk_100274140;
  dataCopy = data;
  v16 = dataCopy;
  selfCopy = self;
  v5 = objc_retainBlock(v15);
  pairSetupCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairSetupCharacteristic];
  if (pairSetupCharacteristic)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100063134;
    v12[3] = &unk_100274118;
    v12[4] = self;
    v14 = v5;
    v13 = pairSetupCharacteristic;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:dataCopy toCharacteristic:v13 authorizationData:0 contextData:0 options:26 completionHandler:v12];
  }

  else
  {
    selfCopy2 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, missing the Pair Setup characteristic", buf, 0xCu);
    }

    v10 = [NSError hapErrorWithcode:7 description:@"Pairing Failed." reason:@"Missing Pair Setup characteristic." suggestion:0 underlyingError:0];
    (v5[2])(v5, v10);
    pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy2 pairSetupSession];
    [pairSetupSession receivedSetupExchangeData:0 error:v10];
  }
}

- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(_HAPAccessoryServerBTLE200 *)self isBadSetupCode]&& [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServer:didReceiveBadPasswordThrottleAttemptsWithDelay:"])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:handlerCopy];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6 = delegateQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000635B8;
    v12[3] = &unk_100273348;
    v12[4] = self;
    v7 = v12;
LABEL_6:
    dispatch_async(delegateQueue, v7);
    goto LABEL_10;
  }

  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServer:promptUserForPasswordWithType:"])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:handlerCopy];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6 = delegateQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100063620;
    v11[3] = &unk_100273348;
    v11[4] = self;
    v7 = v11;
    goto LABEL_6;
  }

  selfCopy = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@The delegate does not support prompting the user for a passcode", buf, 0xCu);
  }

  v6 = [NSError hapErrorWithcode:9 description:@"Pairing Failed." reason:@"The delegate is missing." suggestion:0 underlyingError:0];
  handlerCopy[2](handlerCopy, 0, v6);
  [(_HAPAccessoryServerBTLE200 *)selfCopy setSetupCodeCompletionHandler:0];
LABEL_10:
}

- (BOOL)tryPairingPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063730;
  v9[3] = &unk_100273370;
  v9[4] = self;
  v10 = passwordCopy;
  v7 = passwordCopy;
  dispatch_async(clientQueue, v9);

  return 0;
}

- (void)_pairingCompletedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Pair Setup completed with error: %@", buf, 0x16u);
  }

  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairingDisconnectionError:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupSession:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy disconnectWithCompletionHandler:0 disconnectionError:errorCopy];
  }

  [(_HAPAccessoryServerBTLE200 *)selfCopy setWaitingForAuth:0];
  _getPairSetupType = [(_HAPAccessoryServerBTLE200 *)selfCopy _getPairSetupType];
  if (_getPairSetupType == 5)
  {
    if ([(_HAPAccessoryServerBTLE200 *)selfCopy _delegateRespondsToSelector:"accessoryServer:validateCert:model:"])
    {
      pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
      getCertificate = [pairSetupSession getCertificate];

      delegateQueue = [(HAPAccessoryServer *)selfCopy delegateQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100063DFC;
      v19[3] = &unk_100273370;
      v19[4] = selfCopy;
      v20 = getCertificate;
      v18 = getCertificate;
      dispatch_async(delegateQueue, v19);
    }
  }

  else if (_getPairSetupType == 3)
  {
    pairSetupSession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
    [pairSetupSession2 generateSessionKeys];

    v10 = [HAPAuthSession alloc];
    protocolInfoServiceSignatureCharacteristics = [(_HAPAccessoryServerBTLE200 *)selfCopy protocolInfoServiceSignatureCharacteristics];
    instanceID = [protocolInfoServiceSignatureCharacteristics instanceID];
    v13 = [(HAPAuthSession *)v10 initWithRole:0 instanceId:instanceID delegate:selfCopy];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setAuthSession:v13];

    +[NSDate date];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100063B3C;
    v22 = v21[3] = &unk_100274140;
    v23 = selfCopy;
    v14 = v22;
    [(_HAPAccessoryServerBTLE200 *)selfCopy getAccessoryInfo:v21];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy setPairSetupSession:0];
    [(HAPAccessoryServer *)selfCopy setPairingRequest:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _notifyDelegatesPairingStopped:errorCopy];
  }
}

- (HAPCharacteristic)pairingFeaturesCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticatedProtocolInfo);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000013-0000-1000-8000-4D69736D6574"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_authenticatedProtocolInfo, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_authenticatedProtocolInfo);

  return v9;
}

- (HAPCharacteristic)pairSetupCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000011-0000-1000-8000-4D69736D6574"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairingFeaturesCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  return v9;
}

- (HAPCharacteristic)pairingsCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairVerifyOperationQueue);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000014-0000-1000-8000-4D69736D6574"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairVerifyOperationQueue, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairVerifyOperationQueue);

  return v9;
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006422C;
  v15[3] = &unk_100273AA8;
  v16 = pairingCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064A34;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = pairingCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion serverPairingCompletion:(id)pairingCompletion
{
  queueCopy = queue;
  completionCopy = completion;
  pairingCompletionCopy = pairingCompletion;
  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v30 = 0;
  v13 = [keyStore readControllerPairingKeyForAccessory:identifier error:&v30];
  v14 = v30;

  selfCopy = self;
  v16 = sub_10007FAA0();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Received request to remove pairing for the current controller", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000654EC;
    v22[3] = &unk_1002741B8;
    objc_copyWeak(&v26, buf);
    v23 = queueCopy;
    v24 = completionCopy;
    v25 = pairingCompletionCopy;
    [(_HAPAccessoryServerBTLE200 *)selfCopy removePairing:v13 completionQueue:clientQueue completionHandler:v22];

    [(_HAPAccessoryServerBTLE200 *)selfCopy setHasValidCache:0];
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Remove current pairing failed, failed to get the current controller with error: %@", buf, 0x16u);
    }

    if (queueCopy && completionCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000654D8;
      block[3] = &unk_100273720;
      v29 = completionCopy;
      v28 = v14;
      dispatch_async(queueCopy, block);
    }
  }

  return v13 != 0;
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065A8C;
  block[3] = &unk_100273438;
  block[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  dispatch_async(clientQueue, block);
}

- (void)_sendPairingRequestData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  pairingsCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairingsCharacteristic];
  if (pairingsCharacteristic)
  {
    objc_initWeak(location, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000662CC;
    v17 = &unk_100274208;
    objc_copyWeak(&v19, location);
    v18 = handlerCopy;
    v9 = objc_retainBlock(&v14);
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:dataCopy toCharacteristic:pairingsCharacteristic authorizationData:0 contextData:0 options:7 completionHandler:v9, v14, v15, v16, v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    selfCopy = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(selfCopy);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, missing the Pairings characteristic", location, 0xCu);
    }

    if (handlerCopy)
    {
      v13 = [NSError hapErrorWithcode:12 description:@"Pairing operation failed." reason:@"Missing Pairings characteristic." suggestion:0 underlyingError:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v13);
    }
  }
}

- (id)getLocalPairingIdentityWithError:(id *)error
{
  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v7 = [keyStore readControllerPairingKeyForAccessory:identifier error:error];

  return v7;
}

- (unint64_t)_getPairSetupType
{
  result = [(HAPAccessoryServer *)self authMethod];
  if (result != 1)
  {
    if ([(HAPAccessoryServer *)self authMethod]== 2)
    {
      if ([(_HAPAccessoryServerBTLE200 *)self authenticated])
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if ([(HAPAccessoryServer *)self authMethod]== 4)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066714;
  v6[3] = &unk_100273C28;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(_HAPAccessoryServerBTLE200 *)self _discoverWithType:1 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (HAPCharacteristic)identifyCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveryRetries);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"0000003E-0000-1000-8000-4D69736D6574"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000014-0000-1000-8000-4D69736D6574"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_discoveryRetries, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_discoveryRetries);

  return v9;
}

- (id)_pendingRequestForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pendingRequests = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
  v6 = [pendingRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(pendingRequests);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        characteristic = [v9 characteristic];
        v11 = [characteristic isEqual:characteristicCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pendingRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_pendingResponseForRequest:(id)request
{
  requestCopy = request;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pendingResponses = [(_HAPAccessoryServerBTLE200 *)self pendingResponses];
  v6 = [pendingResponses countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(pendingResponses);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        request = [v9 request];
        v11 = [request isEqual:requestCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pendingResponses countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_reallySendRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067938;
  block[3] = &unk_100273438;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(clientQueue, block);
}

- (unint64_t)_maximumControlWriteLengthForRequest:(id)request
{
  requestCopy = request;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  v6 = [peripheral maximumWriteValueLengthForType:0];

  peripheral2 = [(HAPAccessoryServerBTLE *)self peripheral];
  v8 = [peripheral2 maximumWriteValueLengthForType:1];

  if (!v6)
  {
    selfCopy = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_10007FAFC(selfCopy);
      v24 = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@Overriding the maximum write length to 512", &v24, 0xCu);
    }

    v6 = 512;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v8 != -3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  selfCopy2 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = sub_10007FAFC(selfCopy2);
    v24 = 138543362;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Overriding the peripheral's mtu length to 23", &v24, 0xCu);
  }

  v8 = 23;
LABEL_11:
  isEncrypted = [requestCopy isEncrypted];
  v16 = 25;
  if (!isEncrypted)
  {
    v16 = 1;
  }

  if (v8 / v16 >= 4)
  {
    selfCopy3 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(selfCopy3);
      v24 = 138543618;
      v25 = v19;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@Electing to write as reduced size payload of length %tu", &v24, 0x16u);
    }

    v6 = v8;
  }

  if ([requestCopy isEncrypted])
  {
    if (v6 > 0x17)
    {
      v6 -= 24;
    }

    else
    {
      selfCopy4 = self;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(selfCopy4);
        v24 = 138543874;
        v25 = v22;
        v26 = 2048;
        v27 = v6;
        v28 = 1024;
        v29 = 24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@The maximum write length, %tu, is less than the nonce and auth tag length, %d", &v24, 0x1Cu);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)writeWithoutResponse:(id)response toCharacteristic:(id)characteristic
{
  responseCopy = response;
  characteristicCopy = characteristic;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000681D4;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = responseCopy;
  v13 = characteristicCopy;
  v9 = characteristicCopy;
  v10 = responseCopy;
  dispatch_async(clientQueue, block);
}

- (void)writeRawWithResponse:(id)response toCharacteristic:(id)characteristic completionHandler:(id)handler
{
  characteristicCopy = characteristic;
  handlerCopy = handler;
  v15 = 0;
  v10 = [(_HAPAccessoryServerBTLE200 *)self _encryptDataAndGenerateAuthTag:response error:&v15];
  v11 = v15;
  if (v10)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendData:v10 toCharacteristic:characteristicCopy completionHandler:handlerCopy];
  }

  else
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
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt raw write payload with error: %@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v11);
    }
  }
}

- (void)_sendControlPacket:(id)packet forRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  serialize = [packet serialize];
  if (![requestCopy isEncrypted])
  {
    v12 = 0;
    goto LABEL_5;
  }

  v24 = 0;
  v11 = [(_HAPAccessoryServerBTLE200 *)self _encryptDataAndGenerateAuthTag:serialize error:&v24];
  v12 = v24;

  if (v11)
  {
    serialize = v11;
LABEL_5:
    selfCopy = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_10007FAFC(selfCopy);
      v16 = [serialize length];
      *buf = 138543874;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      v29 = 2112;
      v30 = requestCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@Sending %tu bytes of control payload for request: %@", buf, 0x20u);
    }

    v17 = selfCopy;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543874;
      v26 = v19;
      v27 = 2112;
      v28 = requestCopy;
      v29 = 2112;
      v30 = serialize;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@Sending control payload for request, %@, to accessory: %@", buf, 0x20u);
    }

    characteristic = [requestCopy characteristic];
    [(_HAPAccessoryServerBTLE200 *)v17 _sendData:serialize toCharacteristic:characteristic completionHandler:handlerCopy];

    goto LABEL_10;
  }

  selfCopy2 = self;
  v22 = sub_10007FAA0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = sub_10007FAFC(selfCopy2);
    *buf = 138543618;
    v26 = v23;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt control payload with error: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v12);
  }

LABEL_10:
}

- (void)_sendData:(id)data toCharacteristic:(id)characteristic completionHandler:(id)handler
{
  dataCopy = data;
  characteristicCopy = characteristic;
  handlerCopy = handler;
  characteristicWriteCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v12 = [characteristicWriteCompletionHandlers objectForKey:characteristicCopy];

  if (!v12)
  {
    cbCharacteristic = [characteristicCopy cbCharacteristic];
    if (cbCharacteristic)
    {
      characteristicWriteCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
      v18 = [handlerCopy copy];
      v19 = objc_retainBlock(v18);
      [characteristicWriteCompletionHandlers2 setObject:v19 forKey:characteristicCopy];

      peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
      [peripheral writeValue:dataCopy forCharacteristic:cbCharacteristic type:0];

      [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    }

    else
    {
      selfCopy = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(selfCopy);
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = characteristicCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for characteristic: %@", &v25, 0x16u);
      }

      if (handlerCopy)
      {
        v24 = [NSError hapErrorWithcode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
        (*(handlerCopy + 2))(handlerCopy, v24);
      }
    }

    goto LABEL_12;
  }

  selfCopy2 = self;
  v14 = sub_10007FAA0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_10007FAFC(selfCopy2);
    v25 = 138543618;
    v26 = v15;
    v27 = 2112;
    v28 = characteristicCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@A write operation for '%@' is already is progress.", &v25, 0x16u);
  }

  if (handlerCopy)
  {
    cbCharacteristic = [NSError hapErrorWithcode:4 description:@"Operation in progress." reason:@"A write operation is already in progress." suggestion:0 underlyingError:0];
    (*(handlerCopy + 2))(handlerCopy, cbCharacteristic);
LABEL_12:
  }
}

- (void)_handleWriteCompletionForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  characteristicWriteCompletionHandlers = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v9 = [characteristicWriteCompletionHandlers objectForKey:characteristicCopy];

  if (v9)
  {
    characteristicWriteCompletionHandlers2 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
    [characteristicWriteCompletionHandlers2 removeObjectForKey:characteristicCopy];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, errorCopy);
  }

  else
  {
    selfCopy = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(selfCopy);
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected write completion from characteristic, %@, dropping", &v14, 0x16u);
    }
  }
}

- (void)_requestResponseForRequest:(id)request
{
  requestCopy = request;
  characteristic = [requestCopy characteristic];
  cbCharacteristic = [characteristic cbCharacteristic];

  if (cbCharacteristic)
  {
    responseTimer = [requestCopy responseTimer];
    [responseTimer resume];

    peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
    [peripheral readValueForCharacteristic:cbCharacteristic];
  }

  else
  {
    selfCopy = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(selfCopy);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = requestCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for request: %@", &v12, 0x16u);
    }

    peripheral = [NSError hapErrorWithcode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
    [requestCopy cancelWithError:peripheral];
  }
}

- (void)_handleRawResponseData:(id)data fromCharacteristic:(id)characteristic error:(id)error
{
  dataCopy = data;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (!errorCopy)
  {
    v60 = 0;
    selfCopy2 = [(_HAPAccessoryServerBTLE200 *)self _decryptData:dataCopy error:&v60];
    v12 = v60;
    selfCopy = self;
    v14 = sub_10007FAA0();
    v15 = v14;
    if (selfCopy2)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v62 = v16;
        v63 = 2112;
        v64 = selfCopy2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@Decrypted Response: %@", buf, 0x16u);
      }

      if (!characteristicCopy)
      {
        goto LABEL_24;
      }

      cbCharacteristic = [characteristicCopy cbCharacteristic];

      if (!cbCharacteristic)
      {
        goto LABEL_24;
      }

      cbCharacteristic2 = [characteristicCopy cbCharacteristic];
      uUID = [cbCharacteristic2 UUID];
      v20 = [CBUUID UUIDWithString:@"00000104-0000-1000-8000-4D69736D6574"];
      if ([uUID isEqual:v20])
      {
        goto LABEL_14;
      }

      v55 = uUID;
      v56 = cbCharacteristic2;
      cbCharacteristic3 = [characteristicCopy cbCharacteristic];
      uUID2 = [cbCharacteristic3 UUID];
      v23 = [CBUUID UUIDWithString:@"00000105-0000-1000-8000-4D69736D6574"];
      if ([uUID2 isEqual:v23])
      {
LABEL_13:

        uUID = v55;
        cbCharacteristic2 = v56;
LABEL_14:

        goto LABEL_15;
      }

      v53 = uUID2;
      v54 = v20;
      v52 = v23;
      cbCharacteristic4 = [characteristicCopy cbCharacteristic];
      uUID3 = [cbCharacteristic4 UUID];
      v26 = [CBUUID UUIDWithString:@"00000108-0000-1000-8000-4D69736D6574"];
      if ([uUID3 isEqual:v26])
      {

        v23 = v52;
        uUID2 = v53;
        v20 = v54;
        goto LABEL_13;
      }

      v49 = v26;
      v50 = uUID3;
      v51 = cbCharacteristic4;
      cbCharacteristic5 = [characteristicCopy cbCharacteristic];
      uUID4 = [cbCharacteristic5 UUID];
      v36 = [CBUUID UUIDWithString:@"00000110-0000-1000-8000-4D69736D6574"];
      v47 = uUID4;
      v37 = uUID4;
      v38 = v36;
      if ([v37 isEqual:v36])
      {
        v39 = 1;
      }

      else
      {
        cbCharacteristic6 = [characteristicCopy cbCharacteristic];
        uUID5 = [cbCharacteristic6 UUID];
        v44 = [CBUUID UUIDWithString:@"00000109-0000-1000-8000-4D69736D6574"];
        v45 = uUID5;
        if ([uUID5 isEqual:?])
        {
          v39 = 1;
        }

        else
        {
          cbCharacteristic7 = [characteristicCopy cbCharacteristic];
          uUID6 = [cbCharacteristic7 UUID];
          v41 = [CBUUID UUIDWithString:@"0000010A-0000-1000-8000-4D69736D6574"];
          v39 = [uUID6 isEqual:v41];
        }
      }

      if (v39)
      {
LABEL_15:
        v27 = selfCopy;
        v28 = sub_10007FAA0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = sub_10007FAFC(v27);
          *buf = 138543362;
          v62 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}@RAW notify received!", buf, 0xCu);
        }

        if ([(_HAPAccessoryServerBTLE200 *)v27 _delegateRespondsToSelector:"accessoryServer:didUpdateValuesForCharacteristic:value:"])
        {
          delegateQueue = [(HAPAccessoryServer *)v27 delegateQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100069404;
          block[3] = &unk_100273748;
          block[4] = v27;
          v58 = characteristicCopy;
          selfCopy2 = selfCopy2;
          v59 = selfCopy2;
          dispatch_async(delegateQueue, block);
        }

        goto LABEL_24;
      }

      selfCopy = selfCopy;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v31 = sub_10007FAFC(selfCopy);
        *buf = 138543362;
        v62 = v31;
        v32 = "%{public}@RAW read data not allowed on this characteristic!";
        v33 = v15;
        v34 = 12;
        goto LABEL_21;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v31 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v62 = v31;
      v63 = 2112;
      v64 = v12;
      v32 = "%{public}@Failed to decrypt read data with error: %@";
      v33 = v15;
      v34 = 22;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    }

    goto LABEL_23;
  }

  selfCopy2 = self;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    selfCopy = sub_10007FAFC(selfCopy2);
    *buf = 138543618;
    v62 = selfCopy;
    v63 = 2112;
    v64 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get read data with error: %@", buf, 0x16u);
LABEL_23:
  }

LABEL_24:
}

- (void)_handleResponseData:(id)data fromCharacteristic:(id)characteristic error:(id)error
{
  dataCopy = data;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = [(_HAPAccessoryServerBTLE200 *)self _pendingRequestForCharacteristic:characteristicCopy];
  v12 = v11;
  if (!v11)
  {
    selfCopy = self;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v81 = v18;
      v82 = 2112;
      v83 = characteristicCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected response from characteristic, %@, dropping", buf, 0x16u);
    }

    goto LABEL_64;
  }

  if (!errorCopy)
  {
    responseTimer = [(_HAPAccessoryServerBTLE200 *)v11 responseTimer];
    [responseTimer suspend];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v20 = dataCopy;
    if ([(_HAPAccessoryServerBTLE200 *)v12 isEncrypted])
    {
      v79 = 0;
      v21 = [(_HAPAccessoryServerBTLE200 *)self _decryptData:v20 error:&v79];
      selfCopy = v79;

      if (!v21)
      {
        selfCopy2 = self;
        v44 = sub_10007FAA0();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = sub_10007FAFC(selfCopy2);
          *buf = 138543874;
          v81 = v45;
          v82 = 2112;
          v83 = v12;
          v84 = 2112;
          v85 = selfCopy;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to decrypt response to request %@ with error: %@", buf, 0x20u);
        }

        [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:selfCopy];
        goto LABEL_64;
      }

      selfCopy = v21;
    }

    else
    {
      selfCopy = v20;
    }

    selfCopy3 = self;
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = sub_10007FAFC(selfCopy3);
      *buf = 138543618;
      v81 = v24;
      v82 = 2112;
      v83 = selfCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}@Decrypted Response: %@", buf, 0x16u);
    }

    v78 = 0;
    v25 = [HAPBTLEControlPacket packetWithSerializedData:selfCopy error:&v78];
    v26 = v78;
    if (!v25)
    {
      v36 = selfCopy3;
      v37 = sub_10007FAA0();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = sub_10007FAFC(v36);
        *buf = 138543618;
        v81 = v38;
        v82 = 2112;
        v83 = v26;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse control field with error: %@", buf, 0x16u);
      }

      [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v26];
      goto LABEL_63;
    }

    if ([v25 type] != 1)
    {
      v39 = selfCopy3;
      v40 = sub_10007FAA0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = sub_10007FAFC(v39);
        type = [v25 type];
        *buf = 138543618;
        v81 = v41;
        v82 = 1024;
        LODWORD(v83) = type;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@Invalid response type control type: %u", buf, 0x12u);
      }

      v35 = [NSError hapErrorWithcode:3 description:@"Request failed." reason:@"Invalid response control type." suggestion:0 underlyingError:0];
      [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v35];
      goto LABEL_62;
    }

    v76 = v26;
    if ([v25 isContinuationPacket])
    {
      identifier = [(HAPAccessoryServer *)v12 identifier];
      transactionIdentifier = [v25 transactionIdentifier];
      v29 = [identifier isEqual:transactionIdentifier];

      if ((v29 & 1) == 0)
      {
        v55 = selfCopy3;
        v56 = sub_10007FAA0();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v75 = sub_10007FAFC(v55);
          transactionIdentifier2 = [v25 transactionIdentifier];
          identifier2 = [(HAPAccessoryServer *)v12 identifier];
          *buf = 138543874;
          v81 = v75;
          v82 = 2112;
          v83 = transactionIdentifier2;
          v84 = 2112;
          v85 = identifier2;
          v59 = identifier2;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@The continuation response payload transaction identifier, %@, does not match the request's transaction identifier, %@.", buf, 0x20u);
        }

        [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:0];
        v26 = v76;
        goto LABEL_63;
      }
    }

    if ([v25 isContinuationPacket])
    {
      v30 = [(_HAPAccessoryServerBTLE200 *)selfCopy3 _pendingResponseForRequest:v12];
      v31 = selfCopy3;
      v32 = sub_10007FAA0();
      v33 = v32;
      v73 = v30;
      if (!v30)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v69 = sub_10007FAFC(v31);
          *buf = 138543618;
          v81 = v69;
          v82 = 2112;
          v83 = v12;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve the response for the continued request: %@", buf, 0x16u);
        }

        v35 = [NSError hapErrorWithcode:3 description:@"Request failed." reason:@"Failed to handle continued response." suggestion:0 underlyingError:0];
        [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v35];
        v26 = v76;
        goto LABEL_62;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = sub_10007FAFC(v31);
        *buf = 138543618;
        v81 = v34;
        v82 = 2112;
        v83 = v73;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%{public}@Received data for continued response: %@", buf, 0x16u);
      }

      v35 = v73;
    }

    else
    {
      v35 = [[HAPBTLEResponse alloc] initWithRequest:v12];
      pendingResponses = [(_HAPAccessoryServerBTLE200 *)selfCopy3 pendingResponses];
      [pendingResponses addObject:v35];

      v31 = [[HMFTimer alloc] initWithTimeInterval:1 options:4.0];
      [(_HAPAccessoryServerBTLE200 *)v31 setDelegate:selfCopy3];
      clientQueue = [(HAPAccessoryServer *)selfCopy3 clientQueue];
      [(_HAPAccessoryServerBTLE200 *)v31 setDelegateQueue:clientQueue];

      [(_HAPAccessoryServerBTLE200 *)v12 setResponseTimer:v31];
    }

    payload = [v25 payload];
    v77 = 0;
    v49 = [(HAPBTLEResponse *)v35 appendData:payload error:&v77];
    v74 = v77;

    if (v49)
    {
      if (![(HAPBTLEResponse *)v35 isComplete])
      {
        v50 = v35;
        v66 = selfCopy3;
        v67 = sub_10007FAA0();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          v68 = sub_10007FAFC(v66);
          *buf = 138543618;
          v81 = v68;
          v82 = 2112;
          v83 = v50;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "%{public}@Requesting additional data for response: %@", buf, 0x16u);
        }

        [(_HAPAccessoryServerBTLE200 *)v66 _requestResponseForRequest:v12];
        goto LABEL_60;
      }

      v26 = v76;
      if ([(HAPBTLEResponse *)v35 isValid])
      {
        if (([(_HAPAccessoryServerBTLE200 *)v12 isFinished]& 1) != 0)
        {
LABEL_61:

LABEL_62:
LABEL_63:

LABEL_64:
          goto LABEL_65;
        }

        v50 = v35;
        v51 = selfCopy3;
        v52 = sub_10007FAA0();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = sub_10007FAFC(v51);
          *buf = 138543618;
          v81 = v53;
          v82 = 2112;
          v83 = v50;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%{public}@Handling completed response: %@", buf, 0x16u);
        }

        if ([(_HAPAccessoryServerBTLE200 *)v12 type]== 4)
        {
          [(_HAPAccessoryServerBTLE200 *)v51 _suspendAllOperations];
        }

        operation = [(_HAPAccessoryServerBTLE200 *)v12 operation];
        [operation finish];
        goto LABEL_59;
      }

      v50 = v35;
      v70 = selfCopy3;
      v71 = sub_10007FAA0();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = sub_10007FAFC(v70);
        *buf = 138543874;
        v81 = v72;
        v82 = 2112;
        v83 = v50;
        v84 = 2112;
        v85 = v12;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}@Received invalid response, %@, to request: %@", buf, 0x20u);
      }

      v63 = @"Invalid response.";
      v64 = @"The response could not be validated against the reuqest.";
      v65 = 0;
    }

    else
    {
      v50 = v35;
      v60 = selfCopy3;
      v61 = sub_10007FAA0();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = sub_10007FAFC(v60);
        *buf = 138543618;
        v81 = v62;
        v82 = 2112;
        v83 = v50;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize the response data for response: %@", buf, 0x16u);
      }

      v63 = @"Failed to deserialize response.";
      v64 = 0;
      v65 = v74;
    }

    operation = [NSError hapErrorWithcode:15 description:v63 reason:v64 suggestion:0 underlyingError:v65];
    [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:operation];
LABEL_59:

LABEL_60:
    v26 = v76;
    v35 = v50;
    goto LABEL_61;
  }

  selfCopy4 = self;
  v14 = sub_10007FAA0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_10007FAFC(selfCopy4);
    *buf = 138543874;
    v81 = v15;
    v82 = 2112;
    v83 = v12;
    v84 = 2112;
    v85 = errorCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response for request, %@, with error: %@", buf, 0x20u);
  }

  [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:errorCopy];
LABEL_65:
}

- (void)_sendProtocolInfoServiceExchangeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy length] >= 2)
  {
    v8 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];

    dataCopy = v8;
  }

  selfCopy = self;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = dataCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@Sending Protocol Exchange for data: %@", buf, 0x16u);
  }

  protocolInfoServiceSignatureCharacteristics = [(_HAPAccessoryServerBTLE200 *)selfCopy protocolInfoServiceSignatureCharacteristics];
  if (protocolInfoServiceSignatureCharacteristics)
  {
    objc_initWeak(&location, selfCopy);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10006A33C;
    v24[3] = &unk_1002742F8;
    objc_copyWeak(&v26, &location);
    v13 = completionCopy;
    v25 = v13;
    v14 = objc_retainBlock(v24);
    v15 = [[HAPBTLERequest alloc] initWithCharacteristic:protocolInfoServiceSignatureCharacteristics requestType:255 bodyData:dataCopy shouldEncrypt:1 timeoutInterval:10.0];
    if (v15)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _sendRequest:v15 shouldPrioritize:0 responseHandler:v14];
      [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    }

    else
    {
      v20 = selfCopy;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(v20);
        *buf = 138543618;
        v29 = v22;
        v30 = 2112;
        v31 = protocolInfoServiceSignatureCharacteristics;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create exchange request for characteristic, %@", buf, 0x16u);
      }

      v23 = [NSError hapErrorWithcode:9];
      (*(v13 + 2))(v13, v23, 0);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = selfCopy;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed, missing the Service Signature Characteristic for Protocol Info Service", buf, 0xCu);
    }

    v19 = [NSError errorWithDomain:@"HAPErrorDomain" code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v19, 0);
  }
}

- (void)tryEstablishSecuritySession
{
  [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
  [(HAPAccessoryServerBTLE *)self enterTrackingMode];
  securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  if ([securitySession isOpen])
  {
LABEL_4:

    return;
  }

  securitySession2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  if ([securitySession2 isOpening])
  {

    goto LABEL_4;
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)self pairSetupSession];
  isSecureSession = [pairSetupSession isSecureSession];

  if ((isSecureSession & 1) == 0)
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendAllOperations];
    [(HAPAccessoryServer *)self setMetric_pairVerifyReason:@"noSession.tracking"];

    [(_HAPAccessoryServerBTLE200 *)self _establishSecureSession];
  }
}

- (void)_enqueueRequest:(id)request shouldPrioritize:(BOOL)prioritize
{
  prioritizeCopy = prioritize;
  requestCopy = request;
  selfCopy = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(selfCopy);
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Queueing request: %@", &v21, 0x16u);
  }

  characteristic = [requestCopy characteristic];
  pairVerifyCharacteristic = [(_HAPAccessoryServerBTLE200 *)selfCopy pairVerifyCharacteristic];
  if ([characteristic isEqual:pairVerifyCharacteristic])
  {
    type = [requestCopy type];

    if (type != 1)
    {
      pairVerifyOperationQueue = [(_HAPAccessoryServerBTLE200 *)selfCopy pairVerifyOperationQueue];
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([requestCopy isEncrypted])
  {
    securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
    if (![securitySession isOpen])
    {
      securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
      if (![securitySession2 isOpening])
      {
        pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
        isSecureSession = [pairSetupSession isSecureSession];

        if ((isSecureSession & 1) == 0)
        {
          [(_HAPAccessoryServerBTLE200 *)selfCopy _suspendAllOperations];
          [(HAPAccessoryServer *)selfCopy setMetric_pairVerifyReason:@"noSession.request"];
          [(_HAPAccessoryServerBTLE200 *)selfCopy _establishSecureSession];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  pairVerifyOperationQueue = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
LABEL_13:
  v16 = pairVerifyOperationQueue;
  if (prioritizeCopy)
  {
    operation = [requestCopy operation];
    [operation setQueuePriority:4];
  }

  operation2 = [requestCopy operation];
  [v16 addOperation:operation2];
}

- (unint64_t)_outstandingRequests
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  operations = [requestOperationQueue operations];

  v4 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(operations);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) isFinished] ^ 1;
      }

      v5 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_suspendAllOperations
{
  requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  isSuspended = [requestOperationQueue isSuspended];

  if ((isSuspended & 1) == 0)
  {
    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_10007FAFC(selfCopy);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Suspending all request operations", &v9, 0xCu);
    }

    requestOperationQueue2 = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
    [requestOperationQueue2 setSuspended:1];
  }
}

- (void)_resumeAllOperations
{
  requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  isSuspended = [requestOperationQueue isSuspended];

  if (isSuspended)
  {
    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_10007FAFC(selfCopy);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Resuming all request operations", &v9, 0xCu);
    }

    requestOperationQueue2 = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
    [requestOperationQueue2 setSuspended:0];
  }
}

- (void)_cancelAllQueuedOperationsWithError:(id)error
{
  if (error)
  {
    errorCopy = error;
    requestOperationQueue = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    operations = [requestOperationQueue operations];
    v7 = [operations count];

    if (v7)
    {
      selfCopy = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = sub_10007FAFC(selfCopy);
        requestOperationQueue2 = [(_HAPAccessoryServerBTLE200 *)selfCopy requestOperationQueue];
        operations2 = [requestOperationQueue2 operations];
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = operations2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Cancelling all queued operations: %@", &v14, 0x16u);
      }
    }

    requestOperationQueue3 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    [requestOperationQueue3 cancelAllOperationsWithError:errorCopy];
  }
}

- (HAPSecuritySession)securitySession
{
  os_unfair_lock_lock_with_options();
  v3 = *&self->_featureFlags;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)setSecuritySession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  v5 = *&self->_featureFlags;
  *&self->_featureFlags = sessionCopy;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)isSecuritySessionOpen
{
  securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  isOpen = [securitySession isOpen];

  return isOpen;
}

- (void)setSecuritySessionOpen:(BOOL)open
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"%@ is unavailable", v3];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)_establishSecureSession
{
  if ([(HAPAccessoryServerBTLE *)self isPaired])
  {
    securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    if ([securitySession isOpen])
    {

LABEL_9:
      selfCopy = self;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = sub_10007FAFC(selfCopy);
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@A security session is already established.", buf, 0xCu);
      }

      return;
    }

    securitySession2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    isOpening = [securitySession2 isOpening];

    if (isOpening)
    {
      goto LABEL_9;
    }

    v14 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:[(HAPAccessoryServerBTLE *)self resumeSessionID] enhancedEncryption:self->_badPairSetupCode delegate:self];
    [(_HAPAccessoryServerBTLE200 *)self setSecuritySession:v14];
    [(HAPSecuritySession *)v14 open];
  }

  else
  {
    selfCopy2 = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(selfCopy2);
      *buf = 138543618;
      v16 = v6;
      v17 = 2112;
      v18 = @"Unable to establish a secure session because the accessory isn't paired.";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    v7 = [NSError hapErrorWithcode:3 description:@"Unable to establish a secure session because the accessory isn't paired." reason:0 suggestion:0 underlyingError:0];
    if (v7)
    {
      v8 = v7;
      [(_HAPAccessoryServerBTLE200 *)selfCopy2 disconnectWithCompletionHandler:0 disconnectionError:v7];
    }
  }
}

- (void)_handleSecuritySessionSetupExchangeData:(id)data
{
  dataCopy = data;
  pairVerifyCharacteristic = [(_HAPAccessoryServerBTLE200 *)self pairVerifyCharacteristic];
  if (pairVerifyCharacteristic)
  {
    objc_initWeak(location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006B36C;
    v11[3] = &unk_100274320;
    objc_copyWeak(&v13, location);
    v12 = pairVerifyCharacteristic;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:dataCopy toCharacteristic:v12 authorizationData:0 contextData:0 options:18 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(selfCopy);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Security session setup exchange failed, missing the Pair Verify characteristic", location, 0xCu);
    }

    v9 = [NSError hapErrorWithcode:9 description:@"Security session setup exchange failed." reason:@"Missing Pair Verify characteristic." suggestion:0 underlyingError:0];
    securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
    [securitySession receivedSetupExchangeData:0 error:v9];
  }
}

- (HAPCharacteristic)pairVerifyCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  if (!WeakRetained)
  {
    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [primaryAccessory servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    firstObject = [v5 firstObject];

    v7 = [firstObject characteristicsOfType:@"00000012-0000-1000-8000-4D69736D6574"];
    firstObject2 = [v7 firstObject];
    objc_storeWeak(&self->_pairSetupCharacteristic, firstObject2);
  }

  v9 = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  return v9;
}

- (id)protocolInfoServiceSignatureCharacteristics
{
  primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
  v3 = [primaryAccessory servicesOfType:@"000000A2-0000-1000-8000-4D69736D6574"];
  firstObject = [v3 firstObject];

  v5 = [firstObject characteristicsOfType:@"000000A5-0000-1000-8000-4D69736D6574"];
  firstObject2 = [v5 firstObject];

  return firstObject2;
}

- (id)_encryptDataAndGenerateAuthTag:(id)tag error:(id *)error
{
  tagCopy = tag;
  selfCopy = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(selfCopy);
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = tagCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Encrypting plaintext data: %@", &v17, 0x16u);
  }

  securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];

  if (securitySession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
LABEL_7:
    v14 = securitySession2;
    v15 = [securitySession2 encryptData:tagCopy additionalAuthenticatedData:0 error:error];

    goto LABEL_8;
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
  isSecureSession = [pairSetupSession isSecureSession];

  if (isSecureSession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
    goto LABEL_7;
  }

  if (error)
  {
    [NSError hapErrorWithcode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_8:

  return v15;
}

- (id)_decryptData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(selfCopy);
    v17 = 138543618;
    v18 = v9;
    v19 = 2048;
    v20 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Decrypting data with length %lu", &v17, 0x16u);
  }

  securitySession = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];

  if (securitySession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy securitySession];
LABEL_7:
    v14 = securitySession2;
    v15 = [securitySession2 decryptData:dataCopy additionalAuthenticatedData:0 error:error];

    goto LABEL_8;
  }

  pairSetupSession = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
  isSecureSession = [pairSetupSession isSecureSession];

  if (isSecureSession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy pairSetupSession];
    goto LABEL_7;
  }

  if (error)
  {
    [NSError hapErrorWithcode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_8:

  return v15;
}

- (void)connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006BB54;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_cancelConnectionWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if ([(_HAPAccessoryServerBTLE200 *)self connectionState]== 1)
  {
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v23 = v8;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling connection with error: %@", buf, 0x16u);
    }

    v5 = errorCopy;
    if (!errorCopy)
    {
      v5 = [NSError hapErrorWithcode:2 description:@"Connection failed." reason:@"Connection was cancelled." suggestion:0 underlyingError:0];
    }

    connectionCompletionHandler = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionCompletionHandler];
    v10 = connectionCompletionHandler;
    if (connectionCompletionHandler)
    {
      (*(connectionCompletionHandler + 16))(connectionCompletionHandler, v5);
    }

    [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionCompletionHandler:0];
    discoveryContext = [(_HAPAccessoryServerBTLE200 *)selfCopy discoveryContext];

    if (discoveryContext)
    {
      [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelDiscoveryWithError:v5];
    }

    if ([(_HAPAccessoryServerBTLE200 *)selfCopy isPairing])
    {
      userInfo = [v5 userInfo];
      v13 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!v13)
      {
        v13 = v5;
      }

      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10006C310;
      v19 = &unk_100273370;
      v20 = selfCopy;
      v21 = v13;
      v14 = v13;
      sub_10006C310(&v16);
    }

    v15 = [(HAPAccessoryServerBTLE *)selfCopy browser:v16];
    [v15 disconnectFromBTLEAccessoryServer:selfCopy];
  }
}

- (void)disconnectWithCompletionHandler:(id)handler disconnectionError:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C508;
  block[3] = &unk_100274370;
  v12 = errorCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = errorCopy;
  v10 = handlerCopy;
  dispatch_async(clientQueue, block);
}

- (void)updateConnectionIdleTime:(unsigned __int8)time
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C95C;
  v6[3] = &unk_1002734A8;
  v6[4] = self;
  timeCopy = time;
  dispatch_async(clientQueue, v6);
}

- (void)_updateConnectionIdleTime:(unsigned __int8)time
{
  timeCopy = time;
  [(HAPAccessoryServerBTLE *)self setConnectionIdleTime:?];
  v5 = 5.0;
  if (timeCopy == 1)
  {
    v5 = 2.0;
  }

  if (timeCopy == 2)
  {
    v5 = 15.0;
  }

  [(_HAPAccessoryServerBTLE200 *)self _restartConnectionIdleTimer:v5];
}

- (void)_restartConnectionIdleTimer:(double)timer
{
  [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy);
    v13 = 138543618;
    v14 = v7;
    v15 = 2048;
    timerCopy = timer;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Updating connectionIdle time to: %f", &v13, 0x16u);
  }

  v8 = [[HMFTimer alloc] initWithTimeInterval:0 options:timer];
  [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionIdleTimer:v8];

  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer setDelegate:selfCopy];

  connectionIdleTimer2 = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  [connectionIdleTimer2 setDelegateQueue:clientQueue];

  connectionIdleTimer3 = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer3 resume];
}

- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CC18;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = peripheralCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = peripheralCopy;
  dispatch_async(clientQueue, block);
}

- (void)_handleConnectionWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Connection completed with error: %@", &v12, 0x16u);
  }

  if (errorCopy)
  {
    [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionState:0];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _suspendConnectionIdleTimer];
  }

  else
  {
    browser = [(HAPAccessoryServerBTLE *)selfCopy browser];
    peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
    [browser setConnectionLatency:1 forPeripheral:peripheral];

    [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionState:2];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _updateConnectionIdleTime:[(HAPAccessoryServerBTLE *)selfCopy connectionIdleTime]];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _kickConnectionIdleTimer];
    [(HAPAccessoryServerBTLE *)selfCopy incrementHAPBTLEMetricsConnectionCount];
  }

  connectionCompletionHandler = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionCompletionHandler];
  v11 = connectionCompletionHandler;
  if (connectionCompletionHandler)
  {
    (*(connectionCompletionHandler + 16))(connectionCompletionHandler, errorCopy);
  }

  [(_HAPAccessoryServerBTLE200 *)selfCopy setConnectionCompletionHandler:0];
}

- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  connectionStartTime = [(HAPAccessoryServer *)self connectionStartTime];
  if (connectionStartTime)
  {
    v9 = +[NSDate date];
    connectionStartTime2 = [(HAPAccessoryServer *)self connectionStartTime];
    [v9 timeIntervalSinceDate:connectionStartTime2];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(HAPAccessoryServer *)self setConnectionStartTime:0];
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006CF80;
  v16[3] = &unk_100274398;
  v17 = errorCopy;
  selfCopy = self;
  v20 = v12;
  v19 = handlerCopy;
  v14 = handlerCopy;
  v15 = errorCopy;
  dispatch_async(clientQueue, v16);
}

- (BOOL)_shouldResumeConnectionIdletimer
{
  if ([(HAPAccessoryServerBTLE *)self connectReason]== 8)
  {
    return 0;
  }

  else
  {
    return ![(_HAPAccessoryServerBTLE200 *)self waitingForAuth];
  }
}

- (void)_kickConnectionIdleTimer
{
  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];
  [connectionIdleTimer kick];
}

- (void)_resumeConnectionIdleTimer
{
  if ([(_HAPAccessoryServerBTLE200 *)self _shouldResumeConnectionIdletimer])
  {
    selfCopy = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10007FAFC(selfCopy);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@Resuming the connection idle timer...", &v7, 0xCu);
    }

    connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
    [connectionIdleTimer resume];
  }
}

- (void)_suspendConnectionIdleTimer
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@Suspending the connection idle timer...", &v6, 0xCu);
  }

  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)selfCopy connectionIdleTimer];
  [connectionIdleTimer suspend];
}

- (void)_handleConnectionIdleTimeout
{
  v3 = [NSError errorWithDomain:@"HAPErrorDomain" code:24 userInfo:0];
  if ([(_HAPAccessoryServerBTLE200 *)self isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)self setPairingDisconnectionError:v3];
  }

  connectionState = [(_HAPAccessoryServerBTLE200 *)self connectionState];
  selfCopy = self;
  v6 = sub_10007FAA0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (connectionState == 1)
  {
    if (v7)
    {
      v8 = sub_10007FAFC(selfCopy);
      peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = peripheral;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, cancelling connection to the peripheral: %@", &v12, 0x16u);
    }

    v10 = [NSError hapErrorWithcode:8 description:@"Connection Failed" reason:@"Connection request timed out" suggestion:0 underlyingError:v3];
    [(_HAPAccessoryServerBTLE200 *)selfCopy _cancelConnectionWithError:v10];
  }

  else
  {
    if (v7)
    {
      v11 = sub_10007FAFC(selfCopy);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, disconnecting from peripheral", &v12, 0xCu);
    }

    [(_HAPAccessoryServerBTLE200 *)selfCopy disconnectWithCompletionHandler:0 disconnectionError:v3];
  }
}

- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006D954;
  v13[3] = &unk_1002743E8;
  v13[4] = self;
  v14 = queueCopy;
  v15 = handlerCopy;
  keyCopy = key;
  v11 = handlerCopy;
  v12 = queueCopy;
  dispatch_async(clientQueue, v13);
}

- (BOOL)_validateGeneratedBroadcastKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    v27 = 0;
    v28 = 0;
    v26 = 0;
    identifier = [(HAPAccessoryServer *)self identifier];
    v25 = 0;
    v7 = [keyStore getControllerPublicKey:&v28 secretKey:&v27 username:&v26 allowCreation:0 forAccessory:identifier error:&v25];
    v8 = v28;
    v9 = v27;
    v10 = v26;
    v11 = v25;

    if (v7)
    {
      securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      broadcastKey = [securitySession broadcastKey];
      v14 = [broadcastKey isEqualToData:keyCopy];

      if (v14)
      {
        v15 = 1;
LABEL_12:

        goto LABEL_13;
      }

      selfCopy = self;
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_10007FAFC(selfCopy);
        *buf = 138543362;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Generated Broadcast key does not match", buf, 0xCu);
      }
    }

    selfCopy2 = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = sub_10007FAFC(selfCopy2);
      securitySession2 = [(_HAPAccessoryServerBTLE200 *)selfCopy2 securitySession];
      broadcastKey2 = [securitySession2 broadcastKey];
      *buf = 138544642;
      v30 = v21;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = broadcastKey2;
      v37 = 2112;
      v38 = keyCopy;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@Controller Public Key: %@, Controller Identifier: %@, \n\tGenerated Broadcast Key: %@, \n\tAccessory Broadcast Key: %@. Error: %@", buf, 0x3Eu);
    }

    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    delegate2 = [(HAPAccessoryServer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006E7B4;
      block[3] = &unk_100273748;
      block[4] = self;
      v13 = dataCopy;
      v14 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedPlaintextData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServerBTLE:didReceivePlaintextPayload:forCharacteristic:"];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006E92C;
      block[3] = &unk_100273748;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServerBTLE:willSendEncryptedAndAuthenticatedPayload:forCharacteristic:"];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006EAA4;
      block[3] = &unk_100273748;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentPlaintextData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServerBTLE:willSendPlaintextPayload:forCharacteristic:"];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006EC1C;
      block[3] = &unk_100273748;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  services = [peripheralCopy services];
  v9 = [services copy];

  selfCopy = self;
  v11 = sub_10007FAA0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v23 = v12;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@Discovered CB services: %@", buf, 0x16u);
  }

  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006EE2C;
  v17[3] = &unk_100274460;
  v18 = peripheralCopy;
  v19 = selfCopy;
  v20 = v9;
  v21 = servicesCopy;
  v14 = servicesCopy;
  v15 = v9;
  v16 = peripheralCopy;
  dispatch_async(clientQueue, v17);
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EF58;
  block[3] = &unk_100273748;
  v12 = peripheralCopy;
  v13 = servicesCopy;
  selfCopy = self;
  v9 = servicesCopy;
  v10 = peripheralCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F324;
  v15[3] = &unk_100274460;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = serviceCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = serviceCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F478;
  v15[3] = &unk_100274460;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  peripheralCopy = peripheral;
  descriptorCopy = descriptor;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F5CC;
  v15[3] = &unk_100274460;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = descriptorCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = descriptorCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F720;
  v15[3] = &unk_100274460;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F874;
  v15[3] = &unk_100274460;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006FBB8;
  v15[3] = &unk_100274460;
  v16 = peripheralCopy;
  selfCopy = self;
  v18 = characteristicCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = characteristicCopy;
  v14 = peripheralCopy;
  dispatch_async(clientQueue, v15);
}

- (void)controlOutputStream:(id)stream didReceiveRequestToSendControlPacket:(id)packet completionHandler:(id)handler
{
  streamCopy = stream;
  packetCopy = packet;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006FE5C;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = streamCopy;
  v17 = packetCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = packetCopy;
  v14 = streamCopy;
  dispatch_async(clientQueue, v15);
}

- (void)controlOutputStream:(id)stream didCloseWithError:(id)error
{
  streamCopy = stream;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007013C;
  v11[3] = &unk_100273370;
  v12 = streamCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = streamCopy;
  dispatch_async(clientQueue, v11);
}

- (void)controlOutputStreamDidComplete:(id)complete
{
  completeCopy = complete;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070254;
  block[3] = &unk_100273348;
  v8 = completeCopy;
  v6 = completeCopy;
  dispatch_async(clientQueue, block);
}

- (void)pairSetupSession:(id)session didReceiveSetupExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070398;
  block[3] = &unk_100273748;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (id)pairSetupSession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Request for local pairing identity", &v14, 0xCu);
  }

  pairingRequest = [(HAPAccessoryServer *)selfCopy pairingRequest];
  pairingIdentity = [pairingRequest pairingIdentity];
  if (pairingIdentity)
  {
    currentIdentity = pairingIdentity;
LABEL_5:

    goto LABEL_7;
  }

  keyBag = [(HAPAccessoryServer *)selfCopy keyBag];
  currentIdentity = [keyBag currentIdentity];

  if (!currentIdentity)
  {
    pairingRequest = [(HAPAccessoryServer *)selfCopy keyStore];
    identifier = [(HAPAccessoryServer *)selfCopy identifier];
    currentIdentity = [pairingRequest readControllerPairingKeyForAccessory:identifier error:error];

    goto LABEL_5;
  }

LABEL_7:

  return currentIdentity;
}

- (BOOL)pairSetupSession:(id)session didPairWithPeer:(id)peer error:(id *)error
{
  peerCopy = peer;
  selfCopy = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v39 = v10;
    v40 = 2112;
    v41 = peerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Request to save pairing peer: %@", buf, 0x16u);
  }

  identifier = [peerCopy identifier];
  identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
  v13 = [identifier isEqualToString:identifier2];

  if (v13)
  {
    publicKey = [peerCopy publicKey];
    data = [publicKey data];

    keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
    identifier3 = [peerCopy identifier];
    v37 = 0;
    v18 = [keyStore savePublicKey:data forAccessoryName:identifier3 error:&v37];
    v19 = v37;

    if (v18)
    {
      [(HAPAccessoryServer *)selfCopy associateAccessoryWithControllerKeyUsingAccessoryPublicKey:data];
      v36 = 0;
      v20 = [(HAPAccessoryServerBTLE *)selfCopy updatePeripheralIdentifier:&v36 isPairing:1];
      v21 = v36;
      if ((v20 & 1) == 0)
      {
        v22 = selfCopy;
        v23 = sub_10007FAA0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = sub_10007FAFC(v22);
          *buf = 138543618;
          v39 = v24;
          v40 = 2112;
          v41 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the accessory's peripheral identifier with error: %@", buf, 0x16u);
        }

        if (error)
        {
          v25 = v21;
          *error = v21;
        }
      }
    }

    else
    {
      v31 = selfCopy;
      v32 = sub_10007FAA0();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = sub_10007FAFC(v31);
        *buf = 138543618;
        v39 = v33;
        v40 = 2112;
        v41 = v19;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to save accessory's identifier and public key to the keystore with error: %@", buf, 0x16u);
      }

      if (error)
      {
        v34 = v19;
        v20 = 0;
        *error = v19;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v26 = selfCopy;
    v27 = sub_10007FAA0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = sub_10007FAFC(v26);
      identifier4 = [peerCopy identifier];
      identifier5 = [(HAPAccessoryServer *)v26 identifier];
      *buf = 138543874;
      v39 = v28;
      v40 = 2112;
      v41 = identifier4;
      v42 = 2112;
      v43 = identifier5;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@The peer's identifier exchanged during Pair Setup, %@, does not match the identifier from the accessory's advertisement, %@", buf, 0x20u);
    }

    if (error)
    {
      [NSError hapErrorWithcode:7 description:@"Pairing failed." reason:@"The peer's identifier does not match it's advertised identifier" suggestion:0 underlyingError:0];
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (void)pairSetupSession:(id)session didStopWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070AEC;
  block[3] = &unk_100273748;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)pairSetupSession:(id)session didReceiveProductData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070C2C;
  block[3] = &unk_100273748;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)pairSetupSession:(id)session didReceiveSetupCodeRequestWithCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070D6C;
  block[3] = &unk_100273438;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)code
{
  codeCopy = code;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100070F14;
  v7[3] = &unk_100273370;
  v8 = codeCopy;
  selfCopy = self;
  v6 = codeCopy;
  dispatch_async(clientQueue, v7);
}

- (BOOL)pairSetupSession:(id)session didReceiveBackoffRequestWithTimeInterval:(double)interval
{
  sessionCopy = session;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000710E0;
  block[3] = &unk_100274078;
  v11 = sessionCopy;
  selfCopy = self;
  intervalCopy = interval;
  v8 = sessionCopy;
  dispatch_async(clientQueue, block);

  return 0;
}

- (void)getAccessoryInfo:(id)info
{
  infoCopy = info;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000712E8;
  block[3] = &unk_1002744B0;
  v8 = infoCopy;
  v9 = v10;
  block[4] = self;
  v6 = infoCopy;
  dispatch_async(clientQueue, block);

  _Block_object_dispose(v10, 8);
}

- (BOOL)_validateProtocolInfo:(id)info
{
  infoCopy = info;
  deviceIdentifer = [infoCopy deviceIdentifer];
  identifier = [(HAPAccessoryServer *)self identifier];
  if (![deviceIdentifer isEqualToString:identifier])
  {
    goto LABEL_7;
  }

  categoryIdentifier = [infoCopy categoryIdentifier];
  category = [(HAPAccessoryServer *)self category];
  if (categoryIdentifier != [category unsignedShortValue] || (v9 = objc_msgSend(infoCopy, "featureFlags"), v9 != -[_HAPAccessoryServerBTLE200 featureFlags](self, "featureFlags")))
  {

LABEL_7:
    goto LABEL_8;
  }

  protocolVersion = [infoCopy protocolVersion];
  majorVersion = [protocolVersion majorVersion];
  version = [(HAPAccessoryServer *)self version];
  majorVersion2 = [version majorVersion];

  if (majorVersion == majorVersion2)
  {
    v14 = 1;
    goto LABEL_11;
  }

LABEL_8:
  selfCopy = self;
  v16 = sub_10007FAA0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = sub_10007FAFC(selfCopy);
    identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
    category2 = [(HAPAccessoryServer *)selfCopy category];
    authMethod = [(HAPAccessoryServer *)selfCopy authMethod];
    version2 = [(HAPAccessoryServer *)selfCopy version];
    v23 = 138544642;
    v24 = v17;
    v25 = 2112;
    v26 = infoCopy;
    v27 = 2112;
    v28 = identifier2;
    v29 = 2112;
    v30 = category2;
    v31 = 2048;
    v32 = authMethod;
    v33 = 2112;
    v34 = version2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated Info %@ does not match: identifier: %@, category: %@, authMethods: %tu version: %@", &v23, 0x3Eu);
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)authenticateAccessory
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071934;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  selfCopy = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10007FAFC(selfCopy);
    v7 = sub_10001F978([(HAPAccessoryServer *)selfCopy authMethod]);
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current Auth Method %@", buf, 0x16u);
  }

  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100071AE0;
  v9[3] = &unk_1002734A8;
  v9[4] = selfCopy;
  validationCopy = validation;
  dispatch_async(clientQueue, v9);
}

- (void)provisionToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy);
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Provisioning Tokens T1: %@", buf, 0x16u);
  }

  clientQueue = [(HAPAccessoryServer *)selfCopy clientQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100071EF8;
  v10[3] = &unk_100273370;
  v10[4] = selfCopy;
  v11 = tokenCopy;
  v9 = tokenCopy;
  dispatch_async(clientQueue, v10);
}

- (void)tearDownSessionOnAuthCompletion
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071FD4;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_continuePairingAfterMFiCertValidation
{
  [(_HAPAccessoryServerBTLE200 *)self tearDownSessionOnAuthCompletion];
  [(_HAPAccessoryServerBTLE200 *)self setPairing:0];
  [(_HAPAccessoryServerBTLE200 *)self setBadPairSetupCode:0];
  [(_HAPAccessoryServerBTLE200 *)self setPairSetupBackoffTimeInterval:0.0];
  [(_HAPAccessoryServerBTLE200 *)self setPairSetupSession:0];

  [(_HAPAccessoryServerBTLE200 *)self _notifyDelegatesPairingStopped:0];
}

- (void)_notifyDelegatesPairingStopped:(id)stopped
{
  stoppedCopy = stopped;
  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServer:didStopPairingWithError:"])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000721CC;
    v6[3] = &unk_100273370;
    v7 = stoppedCopy;
    selfCopy = self;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)authSession:(id)session sendAuthExchangeData:(id)data
{
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000723AC;
  v8[3] = &unk_100273370;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(clientQueue, v8);
}

- (void)authSession:(id)session validateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072930;
  v15[3] = &unk_100274460;
  v15[4] = self;
  v16 = dCopy;
  v17 = tokenCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072CB0;
  v15[3] = &unk_100274460;
  v15[4] = self;
  v16 = dCopy;
  v17 = tokenCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

- (void)authSession:(id)session confirmUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072FD4;
  v15[3] = &unk_100274460;
  v15[4] = self;
  v16 = dCopy;
  v17 = tokenCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

- (void)authSession:(id)session authComplete:(id)complete
{
  completeCopy = complete;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000732AC;
  v8[3] = &unk_100273370;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(clientQueue, v8);
}

- (void)submitPairVerifyMetricWithError:(id)error
{
  errorCopy = error;
  metric_pairVerifyReason = [(HAPAccessoryServer *)self metric_pairVerifyReason];
  if (metric_pairVerifyReason)
  {
    v6 = metric_pairVerifyReason;
    securitySession = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    sessionStartTime = [securitySession sessionStartTime];

    if (sessionStartTime)
    {
      mach_absolute_time();
      v9 = UpTicksToMilliseconds();
      securitySession2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      -[HAPAccessoryServer setMetric_pairVerifyDurationInMS:](self, "setMetric_pairVerifyDurationInMS:", v9 - [securitySession2 sessionStartTime]);

      v11.receiver = self;
      v11.super_class = _HAPAccessoryServerBTLE200;
      [(HAPAccessoryServer *)&v11 submitPairVerifyMetricWithError:errorCopy];
    }
  }
}

- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Request for local pairing identity", &v10, 0xCu);
  }

  v8 = [(_HAPAccessoryServerBTLE200 *)selfCopy getLocalPairingIdentityWithError:error];

  return v8;
}

- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  identifier = [(HAPAccessoryServer *)self identifier];
  v9 = [identifier isEqualToString:identifierCopy];

  if (v9)
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    v24 = 0;
    v11 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v24];
    v12 = v24;

    if (v11)
    {
      selfCopy2 = [[HMFPairingKey alloc] initWithPairingKeyData:v11];
      v14 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:selfCopy2 privateKey:0 permissions:0];
      if (!v14)
      {
        selfCopy = self;
        v16 = sub_10007FAA0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = sub_10007FAFC(selfCopy);
          *buf = 138543874;
          v26 = v17;
          v27 = 2112;
          v28 = identifierCopy;
          v29 = 2112;
          v30 = v11;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@Failed to create pairing identity with identififer, %@, public key, %@", buf, 0x20u);
        }

        if (error)
        {
          *error = [NSError hapErrorWithcode:1 description:@"Failed to retrieve peer pairing identity." reason:@"Failed to create pairing identity" suggestion:0 underlyingError:0];
        }
      }
    }

    else
    {
      selfCopy2 = self;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(selfCopy2);
        *buf = 138543874;
        v26 = v22;
        v27 = 2112;
        v28 = identifierCopy;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrived public key for accessory with identifier '%@' with error: %@", buf, 0x20u);
      }

      v14 = 0;
    }
  }

  else
  {
    selfCopy3 = self;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = sub_10007FAFC(selfCopy3);
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}@Unexpected pairing peer identifier, %@", buf, 0x16u);
    }

    if (error)
    {
      [NSError hapErrorWithcode:16 description:@"Insufficient Authorization." reason:@"Unexpected pairing peer identifier." suggestion:0 underlyingError:0];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073C9C;
  block[3] = &unk_100273748;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)securitySessionIsOpening:(id)opening
{
  openingCopy = opening;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073E44;
  v7[3] = &unk_100273370;
  v8 = openingCopy;
  selfCopy = self;
  v6 = openingCopy;
  dispatch_async(clientQueue, v7);
}

- (void)securitySessionDidOpen:(id)open
{
  openCopy = open;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073FE4;
  v7[3] = &unk_100273370;
  v8 = openCopy;
  selfCopy = self;
  v6 = openCopy;
  dispatch_async(clientQueue, v7);
}

- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)error
{
  errorCopy = error;
  underlyingErrors = [errorCopy underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  v6 = (([errorCopy isHAPError] & 1) != 0 || objc_msgSend(firstObject, "isHAPError")) && (objc_msgSend(errorCopy, "code") == 27 || objc_msgSend(firstObject, "code") == 27);
  return v6;
}

- (void)securitySession:(id)session didCloseWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000742BC;
  block[3] = &unk_100273748;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  connectionIdleTimer = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];

  if (connectionIdleTimer == fireCopy)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100074758;
    v22[3] = &unk_100273348;
    v22[4] = self;
    sub_100074758(v22);
    [(_HAPAccessoryServerBTLE200 *)self _handleConnectionIdleTimeout];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    pendingRequests = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
    v8 = [pendingRequests countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(pendingRequests);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          responseTimer = [v12 responseTimer];

          if (responseTimer == fireCopy)
          {
            selfCopy = self;
            v15 = sub_10007FAA0();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = sub_10007FAFC(selfCopy);
              *buf = 138543618;
              v24 = v16;
              v25 = 2112;
              v26 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Cancelling the timed out request: %@", buf, 0x16u);
            }

            v17 = [NSError hapErrorWithcode:24 description:@"Request failed." reason:@"Request timed out waiting for response." suggestion:0 underlyingError:0];
            [v12 cancelWithError:v17];

            goto LABEL_14;
          }
        }

        v9 = [pendingRequests countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)disconnect
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Disconnecting as a result of direct disconnect call", &v5, 0xCu);
  }

  [(_HAPAccessoryServerBTLE200 *)selfCopy disconnectWithCompletionHandler:0];
}

+ (id)logCategory
{
  if (qword_1002ACC00 != -1)
  {
    sub_1001F8A40();
  }

  v3 = qword_1002ACC08;

  return v3;
}

- (HAPPairSetupSession)pairSetupSession
{
  WeakRetained = objc_loadWeakRetained(&self->_identifyCharacteristic);

  return WeakRetained;
}

+ (BOOL)parseProtocolConfigurationResponse:(id)response key:(id *)key stateNumber:(id *)number error:(id *)error
{
  responseCopy = response;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  __s = 0;
  request = [responseCopy request];

  LODWORD(responseCopy) = [request type];
  if (responseCopy == 8)
  {
    sub_100074F10();
    v13 = 0;
    if (!TLV8GetOrCopyCoalesced())
    {
      v13 = [sub_100074F48() dataWithBytes:? length:?];
    }

    sub_100074F10();
    if (TLV8GetOrCopyCoalesced())
    {
      v14 = v13;
    }

    else
    {
      v14 = [sub_100074F48() dataWithBytes:? length:?];

      if (v38)
      {
        free(v38);
        v38 = 0;
      }

      if (v39 == 1)
      {
        [v14 getBytes:&v36 range:{0, 1}];
      }
    }

    sub_100074F10();
    if (TLV8GetOrCopyCoalesced())
    {
      v15 = v14;
    }

    else
    {
      v15 = [sub_100074F48() dataWithBytes:? length:?];

      if (v38)
      {
        free(v38);
        v38 = 0;
      }

      memset_s(&__s, 6uLL, 0, 6uLL);
      if (v39 == 6)
      {
        [v15 getBytes:&__s range:{0, 6}];
      }
    }

    sub_100074F10();
    if (TLV8GetOrCopyCoalesced())
    {
      goto LABEL_17;
    }

    v18 = [sub_100074F48() dataWithBytes:? length:?];

    if (v38)
    {
      free(v38);
      v38 = 0;
    }

    if (v18)
    {
      memset_s(v57, 0x20uLL, 0, 0x20uLL);
      v19 = v39;
      if (v39 == 32)
      {
        [v18 getBytes:v57 range:{0, 32}];
        [NSData dataWithBytes:v57 length:32];
        *key = v20 = 0;
      }

      else
      {
        v20 = 4294960591;
      }

      selfCopy = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = sub_10007FAFC(selfCopy);
        *buf = 138545410;
        v42 = v23;
        v43 = 1024;
        *v44 = v37;
        *&v44[4] = 1024;
        *&v44[6] = v36;
        v45 = 1024;
        v46 = __s;
        v47 = 1024;
        v48 = BYTE1(__s);
        v49 = 1024;
        v50 = BYTE2(__s);
        v51 = 1024;
        v52 = HIBYTE(__s);
        v53 = 1024;
        v54 = v35;
        v55 = 1024;
        v56 = HIBYTE(v35);
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@Parsed protocol configuration response GSN: %d, C#: %d, advId: %02X:%02X:%02X:%02X:%02X:%02X", buf, 0x3Cu);
      }

      v24 = selfCopy;
      v25 = sub_10007FAA0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = sub_10007FAFC(v24);
        v27 = [NSData dataWithBytes:v57 length:32];
        *buf = 138543618;
        v42 = v26;
        v43 = 2112;
        *v44 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@Broadcast Key: %@", buf, 0x16u);
      }

      if (v19 == 32)
      {
        v16 = 0;
      }

      else
      {
        v28 = [NSError errorWithOSStatus:v20];
        v16 = [NSError hapErrorWithcode:12 description:@"Configuration response failed." reason:@"Failed to parse configuraton response body." suggestion:0 underlyingError:v28];

        if (v16)
        {
          v29 = v24;
          v30 = sub_10007FAA0();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = sub_10007FAFC(v29);
            *buf = 138543618;
            v42 = v31;
            v43 = 2112;
            *v44 = v16;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}@Failed parsing protocol configuration response with error: %@", buf, 0x16u);
          }

          if (error)
          {
            v32 = v16;
            v17 = 0;
            *error = v16;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_36;
        }
      }

      v17 = 1;
LABEL_36:
      v15 = v18;
      goto LABEL_37;
    }
  }

  v15 = 0;
LABEL_17:
  v16 = 0;
  v17 = 1;
LABEL_37:

  return v17;
}

+ (BOOL)parseCharacteristicConfigurationResponse:(id)response error:(id *)error
{
  responseCopy = response;
  body = [responseCopy body];
  [body bytes];

  body2 = [responseCopy body];
  [body2 length];

  v23 = 0;
  v24 = 0;
  v22 = 0;
  request = [responseCopy request];

  LODWORD(responseCopy) = [request type];
  if (responseCopy != 7)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v10 = 1;
  sub_100074F2C();
  if (TLV8GetOrCopyCoalesced() || ([NSData dataWithBytes:v24 length:v23], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  v21 = 0;
  sub_100074F2C();
  if (TLV8GetOrCopyCoalesced())
  {
    v11 = v13;
  }

  else
  {
    v11 = [NSData dataWithBytes:v24 length:v23];

    if (v11)
    {
      v20 = 0;
      selfCopy = self;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = sub_10007FAFC(selfCopy);
        *buf = 138543874;
        v26 = v16;
        v27 = 1024;
        v28 = v21;
        v29 = 1024;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@Parsed configuration response properties: %0xX, Interval: %d", buf, 0x18u);
      }
    }
  }

  v17 = [NSError errorWithOSStatus:4294960591];
  v12 = [NSError hapErrorWithcode:12 description:@"Configuration response failed." reason:@"Failed to parse configuraton response body." suggestion:0 underlyingError:v17];

  if (!v12)
  {
LABEL_16:
    v10 = 1;
    goto LABEL_17;
  }

  if (error)
  {
    v18 = v12;
    v10 = 0;
    *error = v12;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:

  return v10;
}

@end