@interface _HAPAccessoryServerBTLE200
+ (BOOL)isHAPDescriptor:(id)a3;
+ (BOOL)isHAPService:(id)a3;
+ (BOOL)parseCharacteristicConfigurationResponse:(id)a3 error:(id *)a4;
+ (BOOL)parseProtocolConfigurationResponse:(id)a3 key:(id *)a4 stateNumber:(id *)a5 error:(id *)a6;
+ (BOOL)parseReadResponse:(id)a3 value:(id *)a4 notificationContext:(id *)a5 error:(id *)a6;
+ (BOOL)parseWriteResponse:(id)a3 value:(id *)a4 error:(id *)a5;
+ (id)configurationRequestForCharacteristic:(id)a3 isBroadcasted:(BOOL)a4 interval:(unint64_t)a5 error:(id *)a6;
+ (id)configurationRequestForService:(id)a3 configRequestType:(unsigned __int8)a4 error:(id *)a5;
+ (id)executeWriteRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5;
+ (id)extractNotificationContextFromBodyData:(id)a3 error:(id *)a4;
+ (id)extractSerializedRequestValueFromBodyData:(id)a3 error:(id *)a4;
+ (id)logCategory;
+ (id)parseServiceSignatureResponse:(id)a3 serviceInstanceID:(id)a4 serviceType:(id)a5 error:(id *)a6;
+ (id)parseSignatureResponse:(id)a3 error:(id *)a4;
+ (id)prepareWriteRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8;
+ (id)readRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5;
+ (id)writeRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8;
- (BOOL)_cancelDiscoveryWithError:(id)a3;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_parsePairingFeaturesCharacteristic:(id)a3 authMethod:(unint64_t *)a4 error:(id *)a5;
- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)a3;
- (BOOL)_shouldResumeConnectionIdletimer;
- (BOOL)_validateGeneratedBroadcastKey:(id)a3;
- (BOOL)_validateProtocolInfo:(id)a3;
- (BOOL)hasBeenDiscovered;
- (BOOL)hasValidCache;
- (BOOL)isHAPCharacteristic:(id)a3;
- (BOOL)isSecuritySessionOpen;
- (BOOL)pairSetupSession:(id)a3 didPairWithPeer:(id)a4 error:(id *)a5;
- (BOOL)pairSetupSession:(id)a3 didReceiveBackoffRequestWithTimeInterval:(double)a4;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4 serverPairingCompletion:(id)a5;
- (BOOL)shouldVerifyHAPCharacteristic:(id)a3;
- (BOOL)shouldVerifyHAPService:(id)a3;
- (BOOL)stopPairingWithError:(id *)a3;
- (BOOL)tryPairingPassword:(id)a3 error:(id *)a4;
- (HAPCharacteristic)identifyCharacteristic;
- (HAPCharacteristic)pairSetupCharacteristic;
- (HAPCharacteristic)pairVerifyCharacteristic;
- (HAPCharacteristic)pairingFeaturesCharacteristic;
- (HAPCharacteristic)pairingsCharacteristic;
- (HAPPairSetupSession)pairSetupSession;
- (HAPSecuritySession)securitySession;
- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 enhancedEncryption:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16;
- (id)_characteristicForCBCharacteristic:(id)a3;
- (id)_decryptData:(id)a3 error:(id *)a4;
- (id)_encryptDataAndGenerateAuthTag:(id)a3 error:(id *)a4;
- (id)_getCBCharacteristic:(id)a3 instanceId:(id)a4 service:(id)a5;
- (id)_getCBService:(id)a3 instanceOrder:(unint64_t)a4;
- (id)_getCachedService:(id)a3;
- (id)_getCharacteristicInstanceID:(id)a3 error:(id *)a4;
- (id)_getProtocolInfoService;
- (id)_getServiceInstanceID:(id)a3;
- (id)_hapServicesFromCache;
- (id)_parseCharacteristic:(id)a3 error:(id *)a4;
- (id)_parseService:(id)a3 error:(id *)a4;
- (id)_pendingRequestForCharacteristic:(id)a3;
- (id)_pendingResponseForRequest:(id)a3;
- (id)_serviceCacheFromHAPService:(id)a3 serviceOrder:(unint64_t)a4;
- (id)_serviceForCBService:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)getLocalPairingIdentityWithError:(id *)a3;
- (id)pairSetupSession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4;
- (id)protocolInfoServiceSignatureCharacteristics;
- (id)securitySession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4;
- (id)securitySession:(id)a3 didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)a4 error:(id *)a5;
- (unint64_t)_getPairSetupType;
- (unint64_t)_maximumControlWriteLengthForRequest:(id)a3;
- (unint64_t)_outstandingRequests;
- (void)_cacheServices:(id)a3;
- (void)_cancelAllQueuedOperationsWithError:(id)a3;
- (void)_cancelConnectionWithError:(id)a3;
- (void)_checkForAuthPrompt:(BOOL)a3;
- (void)_configureBroadcastKeyGeneration:(unsigned __int8)a3 service:(id)a4 withCompletion:(id)a5;
- (void)_configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)_continuePairingAfterMFiCertValidation;
- (void)_createPrimaryAccessoryFromAdvertisementData;
- (void)_discoverCharacteristic:(id)a3;
- (void)_discoverCharacteristicsForService:(id)a3;
- (void)_discoverServices;
- (void)_discoverWithType:(int64_t)a3 completionHandler:(id)a4;
- (void)_enqueueRequest:(id)a3 shouldPrioritize:(BOOL)a4;
- (void)_establishSecureSession;
- (void)_getPairingFeaturesWithCompletionHandler:(id)a3;
- (void)_handleCompletedDiscovery;
- (void)_handleConnectionIdleTimeout;
- (void)_handleConnectionWithError:(id)a3;
- (void)_handleDiscoveredCharacteristicsForService:(id)a3 error:(id)a4;
- (void)_handleDiscoveredCharactersitic:(id)a3 error:(id)a4;
- (void)_handleDiscoveredDescriptors:(id)a3;
- (void)_handleDiscoveredServices:(id)a3 error:(id)a4;
- (void)_handleEventIndicationForCharacteristic:(id)a3;
- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)a3 error:(id)a4;
- (void)_handlePairSetupSessionExchangeData:(id)a3;
- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)a3;
- (void)_handleRawResponseData:(id)a3 fromCharacteristic:(id)a4 error:(id)a5;
- (void)_handleReadCharacteristicSignature:(id)a3 error:(id)a4;
- (void)_handleReadCharacteristicValue:(id)a3 error:(id)a4;
- (void)_handleReadDescriptorValue:(id)a3 error:(id)a4;
- (void)_handleReadServiceInstanceId:(id)a3;
- (void)_handleReadServiceSignature:(id)a3 error:(id)a4;
- (void)_handleResponseData:(id)a3 fromCharacteristic:(id)a4 error:(id)a5;
- (void)_handleSecuritySessionSetupExchangeData:(id)a3;
- (void)_handleUpdateValueForCharacteristic:(id)a3 error:(id)a4;
- (void)_handleWriteCompletionForCharacteristic:(id)a3 error:(id)a4;
- (void)_kickConnectionIdleTimer;
- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfReceivedPlaintextData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegateOfSentPlaintextData:(id)a3 forCharacteristic:(id)a4;
- (void)_notifyDelegatesPairingStopped:(id)a3;
- (void)_pairingCompletedWithError:(id)a3;
- (void)_performTimedWriteExecuteForCharacteristic:(id)a3 value:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)_performTimedWritePrepareWithValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)_performTimedWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)_performWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)_readCharacteristicSignature:(id)a3;
- (void)_readCharacteristicSignatures;
- (void)_readCharacteristicValue:(id)a3;
- (void)_readCharacteristicValues:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_readDescriptorValue:(id)a3;
- (void)_readPendingDiscoveredCharacteritiscTypesWithCompletion:(id)a3;
- (void)_readServiceSignature:(id)a3;
- (void)_readValueForCharacteristic:(id)a3 options:(int64_t)a4 completionHandler:(id)a5;
- (void)_reallySendRequest:(id)a3 completionHandler:(id)a4;
- (void)_removePairingOfAccessoryServerCancelledMidPairing;
- (void)_requestResponseForRequest:(id)a3;
- (void)_resetWithError:(id)a3;
- (void)_restartConnectionIdleTimer:(double)a3;
- (void)_resumeAllOperations;
- (void)_resumeConnectionIdleTimer;
- (void)_retryDiscovery;
- (void)_sendControlPacket:(id)a3 forRequest:(id)a4 completionHandler:(id)a5;
- (void)_sendData:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5;
- (void)_sendPairingRequestData:(id)a3 completionHandler:(id)a4;
- (void)_sendProtocolInfoServiceExchangeData:(id)a3 completion:(id)a4;
- (void)_suspendAllOperations;
- (void)_suspendConnectionIdleTimer;
- (void)_updateConnectionIdleTime:(unsigned __int8)a3;
- (void)_updatePropertiesFromCharacteristic:(id)a3;
- (void)_writeValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)authSession:(id)a3 authComplete:(id)a4;
- (void)authSession:(id)a3 authenticateUUID:(id)a4 token:(id)a5;
- (void)authSession:(id)a3 confirmUUID:(id)a4 token:(id)a5;
- (void)authSession:(id)a3 sendAuthExchangeData:(id)a4;
- (void)authSession:(id)a3 validateUUID:(id)a4 token:(id)a5;
- (void)authenticateAccessory;
- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)connectWithCompletionHandler:(id)a3;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)controlOutputStream:(id)a3 didCloseWithError:(id)a4;
- (void)controlOutputStream:(id)a3 didReceiveRequestToSendControlPacket:(id)a4 completionHandler:(id)a5;
- (void)controlOutputStreamDidComplete:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)disconnectWithCompletionHandler:(id)a3 disconnectionError:(id)a4;
- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)a3;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)getAccessoryInfo:(id)a3;
- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4;
- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)a3;
- (void)pairSetupSession:(id)a3 didReceiveProductData:(id)a4;
- (void)pairSetupSession:(id)a3 didReceiveSetupCodeRequestWithCompletionHandler:(id)a4;
- (void)pairSetupSession:(id)a3 didReceiveSetupExchangeData:(id)a4;
- (void)pairSetupSession:(id)a3 didStopWithError:(id)a4;
- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)provisionToken:(id)a3;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)securitySession:(id)a3 didCloseWithError:(id)a4;
- (void)securitySession:(id)a3 didReceiveSetupExchangeData:(id)a4;
- (void)securitySessionDidOpen:(id)a3;
- (void)securitySessionIsOpening:(id)a3;
- (void)setHasBeenDiscovered:(BOOL)a3;
- (void)setHasValidCache:(BOOL)a3;
- (void)setSecuritySession:(id)a3;
- (void)setSecuritySessionOpen:(BOOL)a3;
- (void)startPairingWithRequest:(id)a3;
- (void)submitPairVerifyMetricWithError:(id)a3;
- (void)tearDownSessionOnAuthCompletion;
- (void)timerDidFire:(id)a3;
- (void)tryEstablishSecuritySession;
- (void)updateConnectionIdleTime:(unsigned __int8)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)writeRawWithResponse:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5;
- (void)writeWithoutResponse:(id)a3 toCharacteristic:(id)a4;
@end

@implementation _HAPAccessoryServerBTLE200

- (_HAPAccessoryServerBTLE200)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 enhancedEncryption:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v98 = a6;
  v23 = a7;
  v24 = a10;
  v25 = v22;
  v97 = a11;
  v26 = a12;
  v27 = a14;
  v28 = a15;
  v103.receiver = self;
  v103.super_class = _HAPAccessoryServerBTLE200;
  v93 = a16;
  v99 = v20;
  v29 = v20;
  v30 = v25;
  v31 = v23;
  v32 = v98;
  v33 = [(HAPAccessoryServerBTLE *)&v103 initWithPeripheral:v29 name:v21 pairingUsername:v25 statusFlags:v98 stateNumber:v31 enhancedEncryption:a9 connectReason:v24 configNumber:v97 category:v26 setupHash:a13 connectionIdleTime:v27 browser:v28 keyStore:v93 whbStableIdentifier:?];
  if (!v33)
  {
    goto LABEL_13;
  }

  v87 = v28;
  v88 = v26;
  v90 = v21;
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

  v33->_badPairSetupCode = a8;
  v33->_hasBeenDiscovered = 0;
  v33->_verified = 0;
  v44 = objc_alloc_init(NSOperationQueue);
  v96 = v27;
  v45 = v24;
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
  v53 = [(HAPAccessoryServer *)v33 clientQueue];
  [v52 setDelegateQueue:v53];

  v54 = [v99 cbPeripheral];
  [v54 setDelegate:v33];

  v55 = [HAPBLEPeripheralInfo alloc];
  v56 = [v99 uniqueBTIdentifier];
  Current = CFAbsoluteTimeGetCurrent();
  v58 = [v99 name];
  v94 = v45;
  v89 = v48;
  v59 = v48;
  v30 = v25;
  v60 = [(HAPBLEPeripheralInfo *)v55 initWithPeripheralInfo:v56 advertisedProtocolVersion:2 previousProtocolVersion:2 resumeSessionId:0 lastSeen:v98 statusFlags:v59 stateNumber:Current configNumber:v45 categoryIdentifier:v97 accessoryName:v58];

  v61 = [v96 cachedAccessoryForIdentifier:v25];
  v62 = [v61 metadataVersion];
  if (!v62)
  {
    goto LABEL_8;
  }

  v63 = v62;
  v64 = [v61 cachedServices];
  v65 = [v64 count];
  if (!v94 || !v65)
  {

    goto LABEL_8;
  }

  v66 = [v61 peripheralInfo];
  v67 = [v66 configNumber];
  v68 = [v67 isEqual:v94];

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

  v69 = [v61 peripheralInfo];
  v70 = [v69 broadcastKey];
  v71 = [v61 peripheralInfo];
  v72 = [v71 keyUpdatedStateNumber];
  v73 = [v61 peripheralInfo];
  [v73 keyUpdatedTime];
  [(HAPBLEPeripheralInfo *)v60 saveBroadcastKey:v70 keyUpdatedStateNumber:v72 updatedTime:?];

  v30 = v91;
  v74 = 1;
LABEL_9:
  [v61 updateWithPeripheralInfo:v60];
  BYTE4(v33->super._blePeripheral) = v74;
  connectionState = v33->_connectionState;
  v33->_connectionState = v61;
  v78 = v61;

  v79 = [v78 peripheralInfo];
  v80 = [v79 accessoryName];
  v81 = v80;
  v21 = v90;
  if (v80)
  {
    v82 = v80;
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
  v32 = v98;
  v26 = v88;
  v31 = v89;
  v24 = v94;
  v27 = v96;
  v28 = v87;
LABEL_13:

  return v33;
}

- (void)_resetWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    *buf = 138543618;
    v53 = v7;
    v54 = 2112;
    v55 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting server with error: %@", buf, 0x16u);
  }

  [(HAPAccessoryServerBTLE *)v5 setNotifyingCharacteristicUpdated:0];
  v8 = v4;
  v9 = v8;
  if (!v8)
  {
    if ([(_HAPAccessoryServerBTLE200 *)v5 isPairing]&& ([(_HAPAccessoryServerBTLE200 *)v5 pairingDisconnectionError], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [(_HAPAccessoryServerBTLE200 *)v5 pairingDisconnectionError];
    }

    else
    {
      v11 = [NSError hapErrorWithcode:2 description:@"Cancelled." reason:@"Resetting the server." suggestion:0 underlyingError:0];
    }

    v9 = v11;
  }

  v40 = v8;
  [(_HAPAccessoryServerBTLE200 *)v5 _cancelAllQueuedOperationsWithError:v9];
  [(_HAPAccessoryServerBTLE200 *)v5 _resumeAllOperations];
  v12 = [(_HAPAccessoryServerBTLE200 *)v5 characteristicWriteCompletionHandlers];
  v13 = [v12 keyEnumerator];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v13;
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
        v19 = [(_HAPAccessoryServerBTLE200 *)v5 characteristicWriteCompletionHandlers];
        v20 = [v19 objectForKey:v18];

        if (v9)
        {
          v21 = v5;
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

  v24 = [(_HAPAccessoryServerBTLE200 *)v5 characteristicWriteCompletionHandlers];
  [v24 removeAllObjects];

  v25 = [(_HAPAccessoryServerBTLE200 *)v5 characteristicEnableEventCompletionHandlers];
  v26 = [v25 keyEnumerator];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obja = v26;
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
        v32 = [(_HAPAccessoryServerBTLE200 *)v5 characteristicEnableEventCompletionHandlers];
        v33 = [v32 objectForKey:v31];

        if (v9)
        {
          v34 = v5;
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

  v37 = [(_HAPAccessoryServerBTLE200 *)v5 characteristicEnableEventCompletionHandlers];
  [v37 removeAllObjects];

  [(_HAPAccessoryServerBTLE200 *)v5 _cancelDiscoveryWithError:v40];
  if ([(_HAPAccessoryServerBTLE200 *)v5 isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)v5 _pairingCompletedWithError:v9];
  }

  v38 = [(_HAPAccessoryServerBTLE200 *)v5 pairSetupSession];
  [(_HAPAccessoryServerBTLE200 *)v5 setPairSetupSession:0];
  [v38 stop];
  v39 = [(_HAPAccessoryServerBTLE200 *)v5 securitySession];
  [(_HAPAccessoryServerBTLE200 *)v5 setSecuritySession:0];
  [v39 close];
  [(_HAPAccessoryServerBTLE200 *)v5 setDiscoveryRetries:0];
}

- (void)dealloc
{
  v3 = [(HAPAccessoryServerBTLE *)self peripheral];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = _HAPAccessoryServerBTLE200;
  [(_HAPAccessoryServerBTLE200 *)&v4 dealloc];
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = [(HAPAccessoryServerBTLE *)self shortDescription];
  if (v3)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  [(HAPAccessoryServer *)self hasPairings];
  v7 = HMFBooleanToString();
  v8 = [(HAPAccessoryServerBTLE *)self peripheral];
  v9 = [NSString stringWithFormat:@"<%@%@, hasPairings = %@, Peripheral = %@>", v5, v6, v7, v8];

  if (v3)
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

- (void)setHasValidCache:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  BYTE4(self->super._blePeripheral) = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)hasBeenDiscovered
{
  os_unfair_lock_lock_with_options();
  v3 = BYTE5(self->super._blePeripheral);
  os_unfair_lock_unlock(&self->super.super._lock);
  return v3;
}

- (void)setHasBeenDiscovered:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  BYTE5(self->super._blePeripheral) = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)_createPrimaryAccessoryFromAdvertisementData
{
  v3 = [HAPAccessory alloc];
  v4 = [NSNumber numberWithUnsignedInteger:1];
  v5 = [(HAPAccessory *)v3 initWithServer:self instanceID:v4];

  v6 = [(HAPAccessoryServer *)self name];
  [(HAPAccessory *)v5 setName:v6];

  v7 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setIdentifier:v7];

  v8 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setServerIdentifier:v8];

  [(HAPAccessoryServer *)self setPrimaryAccessory:v5];
  v10 = v5;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(HAPAccessoryServer *)self setAccessories:v9];
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HAPAccessoryServer *)self delegate];
  if (v4)
  {
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    if (v5)
    {
      v6 = [(HAPAccessoryServer *)self delegate];
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

- (id)_serviceForCBService:(id)a3
{
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(HAPAccessoryServer *)self accessories];
  v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 services];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              v15 = [v14 cbService];
              v16 = [v15 isEqual:v4];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
      v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (id)_characteristicForCBCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 characteristics];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 cbCharacteristic];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v4 = [(HAPAccessoryServer *)self clientQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004BB04;
    v6[3] = &unk_100273790;
    v7 = v3;
    v5 = v3;
    [(_HAPAccessoryServerBTLE200 *)self removePairingForCurrentControllerOnQueue:v4 completion:v6 serverPairingCompletion:v5];
  }
}

- (void)discoverAccessoriesAndReadCharacteristicTypes:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004BBD8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_readPendingDiscoveredCharacteritiscTypesWithCompletion:(id)a3
{
  v28 = a3;
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
        v11 = [(HAPAccessoryServer *)self primaryAccessory];
        v12 = v11;
        if (!v10)
        {
          v14 = [v11 characteristicsOfType:v9];
          v13 = [v14 firstObject];

LABEL_10:
          if (!v13)
          {
            continue;
          }

          goto LABEL_11;
        }

        v13 = [v11 characteristicOfType:v9 serviceType:@"0000003E-0000-1000-8000-4D69736D6574"];

        if (!v13)
        {
          v12 = [(HAPAccessoryServer *)self primaryAccessory];
          v13 = [v12 characteristicOfType:v9 serviceType:v26];
          goto LABEL_10;
        }

LABEL_11:
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v6);
  }

  v15 = [(_HAPAccessoryServerBTLE200 *)self discoveredAccessoryCharacteriticsPendingRead];
  [v15 removeAllObjects];

  if ([v4 count])
  {
    v16 = self;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(v16);
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
          v32 = v28;
          [(_HAPAccessoryServerBTLE200 *)v16 _readValueForCharacteristic:v24 options:1 completionHandler:v29];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    v25 = v28;
  }

  else
  {
    v25 = v28;
    v28[2](v28);
  }
}

- (void)_discoverWithType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSDate date];
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004CBB4;
  v23[3] = &unk_100273CA0;
  objc_copyWeak(v26, &location);
  v8 = v7;
  v24 = v8;
  v26[1] = a3;
  v9 = v6;
  v25 = v9;
  v10 = objc_retainBlock(v23);
  v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v12 = [v11 isDiscovering];

  if (v12)
  {
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      v16 = [(_HAPAccessoryServerBTLE200 *)v13 discoveryContext];
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 discoveryType]);
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
    v19 = [[_HAPBTLEDiscoveryContext alloc] initWithDiscoveryType:a3];
    [(_HAPBTLEDiscoveryContext *)v19 setCompletionHandler:v10];
    [(_HAPBTLEDiscoveryContext *)v19 setDiscovering:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004CEC0;
    v20[3] = &unk_100273CC8;
    v20[4] = self;
    v22 = a3;
    v18 = v19;
    v21 = v18;
    [(_HAPAccessoryServerBTLE200 *)self connectWithCompletionHandler:v20];
  }

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (BOOL)_cancelDiscoveryWithError:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!v5)
  {
LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

  v6 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  v7 = [v6 lastKeyBagIdentityIndexFailingPV];
  if (v7)
  {
    v8 = [(HAPAccessoryServer *)self keyBag];
    v9 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
    v10 = [v9 lastKeyBagIdentityIndexFailingPV];
    v11 = [v8 isValidIndex:{objc_msgSend(v10, "integerValue") + 1}];
  }

  else
  {
    v11 = 0;
  }

  v12 = ([(_HAPAccessoryServerBTLE200 *)self discoveryRetries]< 2) | v11;
  v13 = [(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:v4];
  v14 = self;
  v15 = sub_10007FAA0();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v13 && (v12 & 1) != 0)
  {
    if (v16)
    {
      v17 = sub_10007FAFC(v14);
      *buf = 138543618;
      v42 = v17;
      v43 = 2112;
      v44 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring cancel discovery request due to BTLE sudden disconnection: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  if (v16)
  {
    v18 = sub_10007FAFC(v14);
    v19 = [(_HAPAccessoryServerBTLE200 *)v14 discoveryContext];
    *buf = 138543874;
    v42 = v18;
    v43 = 2048;
    v44 = [v19 discoveryType];
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %tu cancelled with error: %@", buf, 0x20u);
  }

  if (!v4)
  {
    v29 = [NSError hapErrorWithcode:2 description:@"Discovery failed." reason:@"Cancelled." suggestion:0 underlyingError:0];
LABEL_19:
    v30 = v29;
    v31 = [(_HAPAccessoryServerBTLE200 *)v14 discoveryContext];
    v32 = [v31 completionHandler];

    if (v32)
    {
      v33 = [(HAPAccessoryServer *)v14 clientQueue];
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_10004D648;
      v38 = &unk_100273720;
      v40 = v32;
      v39 = v30;
      dispatch_async(v33, &v35);
    }

    [(_HAPAccessoryServerBTLE200 *)v14 setDiscoveryContext:0, v35, v36, v37, v38];

    goto LABEL_22;
  }

  v20 = [v4 domain];
  v21 = [v20 isEqualToString:CBErrorDomain] & v12;

  if (v21 != 1)
  {
    [(_HAPAccessoryServerBTLE200 *)v14 setHasValidCache:0];
    v29 = v4;
    goto LABEL_19;
  }

  v22 = v14;
  v23 = sub_10007FAA0();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = sub_10007FAFC(v22);
    v25 = [(_HAPAccessoryServerBTLE200 *)v22 discoveryContext];
    v26 = [v25 discoveryType];
    v27 = [(_HAPAccessoryServerBTLE200 *)v22 discoveryRetries];
    *buf = 138544130;
    v42 = v24;
    v43 = 2048;
    v44 = v26;
    v45 = 2048;
    v46 = v27;
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
  v3 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (v3)
  {
    v4 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    [v4 reset];

    [(_HAPAccessoryServerBTLE200 *)self setDiscoveryRetries:[(_HAPAccessoryServerBTLE200 *)self discoveryRetries]+ 1];
    v5 = [(_HAPAccessoryServerBTLE200 *)self pairVerifyOperationQueue];
    v6 = [NSError hapErrorWithcode:27];
    [v5 cancelAllOperationsWithError:v6];

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
  v3 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];

  if (!v3)
  {
    return;
  }

  v4 = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(v4);
    v7 = [(_HAPAccessoryServerBTLE200 *)v4 discoveryContext];
    *buf = 138543618;
    v99 = v6;
    v100 = 2048;
    v101 = [v7 discoveryType];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Attribute database discovery type: %tu completed.", buf, 0x16u);
  }

  v8 = [(_HAPAccessoryServerBTLE200 *)v4 hasValidCache];
  v9 = v4;
  v10 = sub_10007FAA0();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v11)
    {
      v12 = sub_10007FAFC(v9);
      v13 = [(_HAPAccessoryServerBTLE200 *)v9 accessoryCache];
      v14 = [v13 peripheralInfo];
      *buf = 138543618;
      v99 = v12;
      v100 = 2112;
      v101 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Constructing attribute database from cache %@", buf, 0x16u);
    }

    v15 = [(_HAPAccessoryServerBTLE200 *)v9 _hapServicesFromCache];
    v16 = v9;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543618;
      v99 = v18;
      v100 = 2112;
      v101 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database with cached services: %@", buf, 0x16u);
    }

    if (v15 && [(_HAPAccessoryServerBTLE200 *)v15 count])
    {
      v19 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
      v20 = [(_HAPAccessoryServerBTLE200 *)v16 accessoryCache];
      [v20 setDiscoveryVersion:v19];

      v21 = [(HAPAccessoryServerBTLE *)v16 browser];
      v22 = [(_HAPAccessoryServerBTLE200 *)v16 accessoryCache];
      [v21 saveCacheToDisk:v22];
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
      v21 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];

      v22 = [NSError errorWithDomain:@"HAPErrorDomain" code:-6727 userInfo:v21];
      [(_HAPAccessoryServerBTLE200 *)v16 _cancelDiscoveryWithError:v22];
      v70 = [(HAPAccessoryServerBTLE *)v16 browser];
      v71 = [(_HAPAccessoryServerBTLE200 *)v16 accessoryCache];
      v72 = [v71 pairingIdentifier];
      [v70 removeCachedAccessoryWithIdentifier:v72];

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
        v101 = v77;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Att-db mismatch removing the cached accessory: %@", buf, 0x16u);

        v9 = v76;
      }
    }

    v55 = [(HAPAccessoryServer *)v16 primaryAccessory];
    v78 = [(_HAPAccessoryServerBTLE200 *)v15 copy];
    [v55 setServices:v78];

    goto LABEL_52;
  }

  if (v11)
  {
    v23 = sub_10007FAFC(v9);
    *buf = 138543362;
    v99 = v23;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Starting attribute database parsing", buf, 0xCu);
  }

  v24 = [(HAPAccessoryServerBTLE *)v9 peripheral];
  v25 = [v24 services];
  v26 = [v25 copy];

  v86 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v26 count]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v15 = v26;
  v27 = [(_HAPAccessoryServerBTLE200 *)v15 countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v93;
    v85 = v15;
    v87 = *v93;
    do
    {
      v30 = 0;
      do
      {
        if (*v93 != v29)
        {
          objc_enumerationMutation(v15);
        }

        v31 = *(*(&v92 + 1) + 8 * v30);
        if ([objc_opt_class() isHAPService:v31])
        {
          v32 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
          v33 = [v32 discoveryType];

          if (v33 == 1)
          {
            v34 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
            v35 = [CBUUID UUIDWithString:@"FED3"];
            if (([v34 isEqual:v35] & 1) == 0)
            {
              v36 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
              v37 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
              v38 = [v36 isEqual:v37];

              v15 = v85;
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
                  v101 = v31;
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
                v46 = [(HAPAccessoryServer *)v9 primaryAccessory];
                [v40 setAccessory:v46];

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
                  v101 = v39;
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
            v42 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
            v43 = [v42 discoveryType];

            if (v43 != 2)
            {
              goto LABEL_30;
            }

            v34 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
            v35 = [CBUUID UUIDWithString:@"FED4"];
            if (([v34 isEqual:v35] & 1) == 0)
            {
              v44 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
              v45 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
              if (([v44 isEqual:v45] & 1) == 0)
              {
                v50 = [(_HAPAccessoryServerBTLE200 *)v31 UUID];
                [CBUUID UUIDWithString:@"000000A2-0000-1000-8000-4D69736D6574"];
                v52 = v51 = v9;
                v84 = [v50 isEqual:v52];

                v9 = v51;
                v29 = v87;

                v15 = v85;
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
                  v101 = v31;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@Skipping parsing service during Pairing discovery: %@", buf, 0x16u);

                  goto LABEL_35;
                }

LABEL_36:

                goto LABEL_37;
              }

              v15 = v85;
            }
          }

          goto LABEL_30;
        }

LABEL_37:
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v54 = [(_HAPAccessoryServerBTLE200 *)v15 countByEnumeratingWithState:&v92 objects:v104 count:16];
      v28 = v54;
    }

    while (v54);
  }

  v55 = v86;
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
    v61 = [(_HAPAccessoryServerBTLE200 *)v57 discoveryContext];
    v62 = [v61 discoveryType];
    *buf = 138543874;
    v99 = v60;
    v100 = 2112;
    v101 = v86;
    v102 = 2048;
    v103 = v62;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%{public}@Completed attribute database parsing with parsed services: %@, type: %tu", buf, 0x20u);
  }

  v63 = [(HAPAccessoryServer *)v57 primaryAccessory];
  v64 = [(_HAPAccessoryServerBTLE200 *)v86 copy];
  [v63 setServices:v64];

  v65 = [(_HAPAccessoryServerBTLE200 *)v57 discoveryContext];
  v66 = [v65 discoveryType];

  if (!v66)
  {
    [(_HAPAccessoryServerBTLE200 *)v57 setVerified:1];
    [(_HAPAccessoryServerBTLE200 *)v57 _cacheServices:v86];
  }

LABEL_52:
  v79 = 0;
LABEL_53:

  v80 = [(_HAPAccessoryServerBTLE200 *)v9 discoveryContext];
  v81 = [v80 completionHandler];

  if (v81)
  {
    v82 = [(HAPAccessoryServer *)v9 clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E524;
    block[3] = &unk_100273720;
    v90 = v81;
    v89 = v79;
    dispatch_async(v82, block);
  }

  [(_HAPAccessoryServerBTLE200 *)v9 setDiscoveryContext:0];
}

- (id)_getCBCharacteristic:(id)a3 instanceId:(id)a4 service:(id)a5
{
  v23 = self;
  v7 = a3;
  v24 = a4;
  v8 = a5;
  v9 = [CBUUID UUIDWithNSUUID:v7];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v8 characteristics];
  v11 = [(_HAPAccessoryServerBTLE200 *)v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 UUID];
        v17 = [v16 isEqual:v9];

        if (v17)
        {
          v21 = v15;
          v19 = v24;
          goto LABEL_13;
        }
      }

      v12 = [(_HAPAccessoryServerBTLE200 *)v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v10 = v23;
  v18 = sub_10007FAA0();
  v19 = v24;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = sub_10007FAFC(v10);
    *buf = 138543874;
    v30 = v20;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: NO CB Characteristic for : %@/%@", buf, 0x20u);
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (id)_getCBService:(id)a3 instanceOrder:(unint64_t)a4
{
  v29 = a3;
  v5 = [CBUUID UUIDWithNSUUID:?];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = self;
  v6 = [(HAPAccessoryServerBTLE *)self peripheral];
  v7 = [v6 services];
  v8 = [v7 copy];

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
        v17 = [v15 UUID];
        v18 = [v17 isEqual:v5];

        if (v18)
        {
          v19 = v15;

          v11 = v19;
        }

        v12 += v16;
        v20 = [v15 UUID];
        v21 = [v20 isEqual:v5];

        if (v21)
        {
          v22 = v12 == a4;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v15;

          v24 = v29;
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

  v25 = v32;
  v26 = sub_10007FAA0();
  v24 = v29;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = sub_10007FAFC(v25);
    *buf = 138544130;
    v38 = v27;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v29;
    v43 = 2048;
    v44 = a4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@HAPBLECache: Returning first instance %@ Service for : %@/%tu", buf, 0x2Au);
  }

  v11 = v11;
  v23 = v11;
LABEL_20:

  return v23;
}

- (id)_getCachedService:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self accessoryCache];
  v6 = [v5 cachedServices];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 serviceUUID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v63 = self;
  v6 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v7 = [v6 discoveryType];

  if (v7 == 2)
  {
    v10 = [NSUUID alloc];
    v11 = &off_1002748B8;
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_10;
      }

      v8 = [(_HAPAccessoryServerBTLE200 *)v63 accessoryCache];
      v9 = [v8 cachedServices];
      [v4 addObjectsFromArray:v9];

      goto LABEL_9;
    }

    v10 = [NSUUID alloc];
    v11 = &off_1002748B0;
  }

  v12 = [v10 initWithUUIDString:*v11];
  v8 = [(_HAPAccessoryServerBTLE200 *)v63 _getCachedService:v12];

  if (!v8)
  {
    goto LABEL_10;
  }

  [v4 addObject:v8];
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
        v19 = [v18 serviceUUID];
        v20 = -[_HAPAccessoryServerBTLE200 _getCBService:instanceOrder:](v63, "_getCBService:instanceOrder:", v19, [v18 serviceInstanceOrder]);

        if (!v20)
        {
          v20 = v63;
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
        v21 = [v3[116] array];
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
          v60 = v21;
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
              v25 = [v23 characteristicUUID];
              v26 = [v25 UUIDString];
              v27 = [v23 characteristicInstanceId];
              v28 = [(HAPAccessoryServerBTLE *)v63 stateNumber];
              v29 = [v23 characteristicProperties];
              v30 = [v23 characteristicMetadata];
              LOBYTE(v51) = 1;
              v31 = [(HAPCharacteristic *)v24 initWithType:v26 instanceID:v27 value:0 stateNumber:v28 properties:v29 eventNotificationsEnabled:0 implicitWriteWithResponse:v51 metadata:v30];

              v32 = [v23 characteristicUUID];
              v33 = [v23 characteristicInstanceId];
              v20 = v61;
              v34 = [(_HAPAccessoryServerBTLE200 *)v63 _getCBCharacteristic:v32 instanceId:v33 service:v61];

              if (!v31)
              {
                v45 = v63;
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
              v21 = v60;
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
        v37 = [v54 serviceUUID];
        v38 = [v37 UUIDString];
        v39 = [v54 serviceInstanceId];
        v40 = [v54 serviceProperties];
        v41 = [v54 linkedServices];
        v42 = [(HAPService *)v36 initWithType:v38 instanceID:v39 parsedCharacteristics:v21 serviceProperties:v40 linkedServices:v41];

        v5 = v57;
        if (v42)
        {
          v43 = [(HAPAccessoryServer *)v63 primaryAccessory];
          [(HAPService *)v42 setAccessory:v43];

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

- (id)_serviceCacheFromHAPService:(id)a3 serviceOrder:(unint64_t)a4
{
  v5 = a3;
  v6 = [HAPBLEServiceCache alloc];
  v7 = [NSUUID alloc];
  v8 = [v5 type];
  v9 = [v7 initWithUUIDString:v8];
  v10 = [v5 instanceID];
  v11 = [v5 serviceProperties];
  v12 = [v5 linkedServices];
  v13 = [(HAPBLEServiceCache *)v6 initWithServiceUUID:v9 instanceId:v10 instanceOrder:a4 serviceProperties:v11 linkedServices:v12];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = v5;
  obj = [v5 characteristics];
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
        v21 = [v18 type];
        v22 = [v20 initWithUUIDString:v21];
        v23 = [v18 instanceID];
        v24 = [v18 properties];
        v25 = [v18 accessoryMetadata];
        v26 = [(HAPBLECharacteristicCache *)v19 initWithCharacteristicUUID:v22 instanceId:v23 characteristicProperties:v24 characteristicMetadata:v25];

        [(HAPBLEServiceCache *)v13 updateWithCharacteristic:v26];
      }

      v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  return v13;
}

- (void)_cacheServices:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    v8 = [(_HAPAccessoryServerBTLE200 *)v5 accessoryCache];
    *buf = 138543618;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: current Cache : %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v4;
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

        v15 = [(_HAPAccessoryServerBTLE200 *)v5 _serviceCacheFromHAPService:*(*(&v25 + 1) + 8 * v14) serviceOrder:v13, v25];
        ++v13;
        v16 = [(_HAPAccessoryServerBTLE200 *)v5 accessoryCache];
        [v16 updateWithService:v15];

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
  v18 = [(_HAPAccessoryServerBTLE200 *)v5 accessoryCache];
  [v18 setDiscoveryVersion:v17];

  v19 = [(HAPAccessoryServerBTLE *)v5 browser];
  v20 = [(_HAPAccessoryServerBTLE200 *)v5 accessoryCache];
  [v19 saveCacheToDisk:v20];

  [(_HAPAccessoryServerBTLE200 *)v5 setHasValidCache:1];
  v21 = v5;
  v22 = sub_10007FAA0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = sub_10007FAFC(v21);
    v24 = [(_HAPAccessoryServerBTLE200 *)v21 accessoryCache];
    *buf = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@HAPBLECache: Saved Valid Cache : %@", buf, 0x16u);
  }
}

- (void)_discoverServices
{
  v2 = [(HAPAccessoryServerBTLE *)self peripheral];
  [v2 discoverServices:0];
}

- (void)_handleDiscoveredServices:(id)a3 error:(id)a4
{
  v6 = a3;
  if (!a4)
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v6;
    obj = v6;
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
          v12 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          v13 = [v12 discoveryType];

          if (v13 == 1)
          {
            v14 = [v11 UUID];
            v15 = [CBUUID UUIDWithString:@"FED3"];
            if ([v14 isEqual:v15])
            {

LABEL_26:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11];
              goto LABEL_27;
            }

            v16 = [v11 UUID];
            v17 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v19 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
            v20 = [v19 discoveryType];

            if (v20 != 2)
            {
              goto LABEL_18;
            }

            v21 = [v11 UUID];
            v22 = [CBUUID UUIDWithString:@"FED4"];
            if ([v21 isEqual:v22])
            {
              goto LABEL_17;
            }

            v23 = [v11 UUID];
            v24 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
            if ([v23 isEqual:v24])
            {

LABEL_17:
LABEL_18:
              [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristicsForService:v11];
              goto LABEL_19;
            }

            [v11 UUID];
            v25 = v29 = v23;
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

        v6 = v28;
        goto LABEL_28;
      }
    }
  }

  [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:a4];
LABEL_28:
}

- (void)_discoverCharacteristicsForService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(v5);
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Discovering service: %@", &v11, 0x16u);
  }

  v8 = [(_HAPAccessoryServerBTLE200 *)v5 discoveryContext];
  v9 = [v8 discoveringServices];
  [v9 addObject:v4];

  v10 = [(HAPAccessoryServerBTLE *)v5 peripheral];
  [v10 discoverCharacteristics:0 forService:v4];
}

- (void)_handleDiscoveredCharacteristicsForService:(id)a3 error:(id)a4
{
  v6 = a3;
  if (a4)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:a4];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    if ([objc_opt_class() isHAPService:v6] && !-[_HAPAccessoryServerBTLE200 hasValidCache](self, "hasValidCache"))
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v6 characteristics];
      v16 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
              objc_enumerationMutation(v10);
            }

            v20 = *(*(&v21 + 1) + 8 * i);
            if (sub_10004FE54(v20))
            {
              [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicValue:v20];
              goto LABEL_8;
            }
          }

          v17 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
      v7 = self;
      v8 = sub_10007FAA0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = sub_10007FAFC(v7);
        *buf = 138543618;
        v26 = v9;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Removing Service: %@ from discovery context", buf, 0x16u);
      }

      v10 = [(_HAPAccessoryServerBTLE200 *)v7 discoveryContext];
      v11 = [v10 discoveringServices];
      [v11 removeObject:v6];
    }

LABEL_8:

    if (![(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      v12 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      v13 = [v12 isComplete];

      if (v13)
      {
        [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
      }
    }

    if ([(_HAPAccessoryServerBTLE200 *)self hasValidCache])
    {
      v14 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      v15 = [v14 isComplete];

      if (v15)
      {
        [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
      }
    }
  }
}

- (void)_handleReadServiceInstanceId:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isHAPService:v4])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 characteristics];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ((sub_10004FE54(v10) & 1) == 0 && [(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v10])
          {
            [(_HAPAccessoryServerBTLE200 *)self _discoverCharacteristic:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v12 = [v11 discoveringServices];
  [v12 removeObject:v4];

  v13 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  LODWORD(v12) = [v13 isComplete];

  if (v12)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }
}

- (void)_discoverCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v6 = [v5 discoveringCharacteristics];
  [v6 addObject:v4];

  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(v7);
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Discovering characteristic: %@", &v11, 0x16u);
  }

  v10 = [(HAPAccessoryServerBTLE *)v7 peripheral];
  [v10 discoverDescriptorsForCharacteristic:v4];
}

- (void)_handleDiscoveredCharactersitic:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_10007FAFC(v8);
    v11 = [v6 descriptors];
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Discovered descriptors: %@ for characteristic: %@ with error: %@", &v16, 0x2Au);
  }

  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)v8 _cancelDiscoveryWithError:v7];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)v8 _kickConnectionIdleTimer];
    if ([(_HAPAccessoryServerBTLE200 *)v8 isHAPCharacteristic:v6])
    {
      v12 = [v6 descriptors];
      [(_HAPAccessoryServerBTLE200 *)v8 _handleDiscoveredDescriptors:v12];
    }

    v13 = [(_HAPAccessoryServerBTLE200 *)v8 discoveryContext];
    v14 = [v13 discoveringCharacteristics];
    [v14 removeObject:v6];

    v15 = [(_HAPAccessoryServerBTLE200 *)v8 discoveryContext];
    LODWORD(v14) = [v15 isComplete];

    if (v14)
    {
      [(_HAPAccessoryServerBTLE200 *)v8 _readCharacteristicSignatures];
    }
  }
}

- (void)_handleDiscoveredDescriptors:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_opt_class() isHAPDescriptor:v9])
        {
          [(_HAPAccessoryServerBTLE200 *)self _readDescriptorValue:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_readCharacteristicValue:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v6 = [v5 readingCharacteristics];
  [v6 addObject:v4];

  v7 = [v4 value];

  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:v4 error:0];
  }

  else
  {
    v8 = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_10007FAFC(v8);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of characteristic: %@", &v14, 0x16u);
    }

    v11 = [(HAPAccessoryServerBTLE *)v8 peripheral];
    [v11 readValueForCharacteristic:v4];
  }

  v12 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v13 = [v12 isComplete];

  if (v13)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }
}

- (void)_handleReadCharacteristicValue:(id)a3 error:(id)a4
{
  v10 = a3;
  if (a4)
  {
    [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:a4];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v6 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    v7 = [v6 readingCharacteristics];
    [v7 removeObject:v10];

    v8 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(v7) = [v8 isComplete];

    if (v7)
    {
      [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
    }

    if (sub_10004FE54(v10))
    {
      v9 = [v10 service];
      [(_HAPAccessoryServerBTLE200 *)self _handleReadServiceInstanceId:v9];
    }
  }
}

- (void)_readDescriptorValue:(id)a3
{
  v4 = a3;
  v5 = [v4 value];

  if (!v5)
  {
    v6 = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_10007FAFC(v6);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@Reading value of descriptor: %@", &v14, 0x16u);
    }

    v9 = [(_HAPAccessoryServerBTLE200 *)v6 discoveryContext];
    v10 = [v9 readingDescriptors];
    [v10 addObject:v4];

    v11 = [(HAPAccessoryServerBTLE *)v6 peripheral];
    [v11 readValueForDescriptor:v4];
  }

  v12 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v13 = [v12 isComplete];

  if (v13)
  {
    [(_HAPAccessoryServerBTLE200 *)self _readCharacteristicSignatures];
  }
}

- (void)_handleReadDescriptorValue:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = sub_10007FAFC(v8);
    v11 = [v6 characteristic];
    v12 = [v6 value];
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Read value of descriptor: %@ for characteristic: %@ value: %@", &v16, 0x2Au);
  }

  if (v7)
  {
    [(_HAPAccessoryServerBTLE200 *)v8 _cancelDiscoveryWithError:v7];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)v8 _kickConnectionIdleTimer];
    v13 = [(_HAPAccessoryServerBTLE200 *)v8 discoveryContext];
    v14 = [v13 readingDescriptors];
    [v14 removeObject:v6];

    v15 = [(_HAPAccessoryServerBTLE200 *)v8 discoveryContext];
    LODWORD(v14) = [v15 isComplete];

    if (v14)
    {
      [(_HAPAccessoryServerBTLE200 *)v8 _readCharacteristicSignatures];
    }
  }
}

- (void)_handleUpdateValueForCharacteristic:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v9 = [v8 readingCharacteristics];
  v10 = [v9 containsObject:v6];

  if (!v10)
  {
    v11 = [v6 value];
    if ([v11 length])
    {
      v12 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
      v13 = [v12 count];

      if (v13)
      {
        v32 = v11;
        v33 = v7;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
        v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              v20 = [v19 characteristic];
              v21 = [v20 cbCharacteristic];
              v22 = [v21 isEqual:v6];

              if (v22)
              {
                v30 = [v19 characteristic];
                v11 = v32;
                v7 = v33;
                [(_HAPAccessoryServerBTLE200 *)self _handleResponseData:v32 fromCharacteristic:v30 error:v33];

                goto LABEL_25;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v23 = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = sub_10007FAFC(v23);
          *buf = 138543618;
          v40 = v25;
          v41 = 2112;
          v42 = v6;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@Received unexpected response from characteristic: %@", buf, 0x16u);
        }

        v11 = v32;
        v7 = v33;
        goto LABEL_26;
      }

      v14 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:v6];
      [(_HAPAccessoryServerBTLE200 *)self _handleRawResponseData:v11 fromCharacteristic:v14 error:v7];
    }

    else
    {
      v14 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:v6];
      v26 = self;
      v27 = sub_10007FAA0();
      v28 = v27;
      if (v14)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v29 = sub_10007FAFC(v26);
          *buf = 138543618;
          v40 = v29;
          v41 = 2112;
          v42 = v6;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}@Received zero-length value for characteristic: %@", buf, 0x16u);
        }

        [(_HAPAccessoryServerBTLE200 *)v26 _handleEventIndicationForCharacteristic:v14];
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v31 = sub_10007FAFC(v26);
          *buf = 138543618;
          v40 = v31;
          v41 = 2112;
          v42 = v6;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@Received characteristic indication from unmapped characteristic: %@", buf, 0x16u);
        }
      }
    }

LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  [(_HAPAccessoryServerBTLE200 *)self _handleReadCharacteristicValue:v6 error:v7];
LABEL_27:
}

- (void)_readCharacteristicSignatures
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(HAPAccessoryServerBTLE *)self peripheral];
  v4 = [v3 services];

  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if ([objc_opt_class() isHAPService:v9])
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = [v9 characteristics];
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                  objc_enumerationMutation(v10);
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

              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v17 = [v16 isComplete];

  if (v17)
  {
    [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
  }
}

- (id)_getCharacteristicInstanceID:(id)a3 error:(id *)a4
{
  [a3 descriptors];
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
        v10 = [v9 UUID];
        v11 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v13 = sub_100051250(v9, a4);

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

  if (a4)
  {
    [NSError hapErrorWithcode:1 description:@"Characteristic missing the characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (id)_getServiceInstanceID:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 characteristics];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (sub_10004FE54(v9))
        {
          v6 = sub_100051504(v9, 0);
          if (!v6)
          {
            v10 = self;
            v11 = sub_10007FAA0();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = sub_10007FAFC(v10);
              *buf = 138543874;
              v19 = v12;
              v20 = 2112;
              v21 = v4;
              v22 = 2112;
              v23 = v9;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get Service Instance ID for Service: %@, Characteristic: %@", buf, 0x20u);
            }

            v6 = 0;
          }

          goto LABEL_14;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
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
        v8 = [v7 type];
        v9 = [v8 isEqualToString:@"000000A2-0000-1000-8000-4D69736D6574"];

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

- (void)_readCharacteristicSignature:(id)a3
{
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v4])
  {
    v5 = objc_opt_class();
    v6 = [(__CFString *)v4 UUID];
    v7 = [v5 hapUUIDFromBTLEUUID:v6];

    if (v7)
    {
      v90 = 0;
      v8 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:v4 error:&v90];
      v9 = v90;
      if (v8)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v10 = 0;
        }

        else
        {
          v24 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([v24 discoveryType])
          {
            v10 = 0;
          }

          else
          {
            v10 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPCharacteristic:v4];
          }
        }

        v25 = [(_HAPAccessoryServerBTLE200 *)self _characteristicForCBCharacteristic:v4];
        v26 = v25;
        if ((v10 & 1) == 0 && v25)
        {
          v78 = v7;
          v83 = v8;
          v85 = v9;
          v27 = self;
          v28 = sub_10007FAA0();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = sub_10007FAFC(v27);
            *buf = 138543618;
            v92 = v29;
            v93 = 2112;
            v94 = v4;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%{public}@Found cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
          }

          v77 = [HAPBTLECharacteristicSignature alloc];
          v81 = v27;
          v30 = [NSUUID alloc];
          v79 = [v26 type];
          v31 = [v30 initWithUUIDString:v79];
          v32 = [v26 service];
          v33 = [v32 instanceID];
          v34 = [NSUUID alloc];
          v35 = [v26 service];
          v36 = [v35 type];
          v37 = [v34 initWithUUIDString:v36];
          v38 = [v26 properties];
          v39 = [v26 metadata];
          v40 = [(HAPBTLECharacteristicSignature *)v77 initWithCharacteristicType:v31 serviceInstanceID:v33 serviceType:v37 characteristicProperties:v38 characteristicMetadata:v39 authenticated:0];

          v41 = v40;
          v42 = [(_HAPAccessoryServerBTLE200 *)v81 discoveryContext];
          v43 = [v42 characteristicSignatures];
          [v43 setObject:v41 forKey:v4];

          v8 = v83;
          v9 = v85;
          v7 = v78;
          goto LABEL_46;
        }

        if (v10 && [0 isAuthenticated])
        {
          v44 = self;
          v45 = sub_10007FAA0();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v46 = sub_10007FAFC(v44);
            *buf = 138543618;
            v92 = v46;
            v93 = 2112;
            v94 = v4;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%{public}@Found authenitcated cached signature, skipping reading characteristic signature for characteristic: %@", buf, 0x16u);
          }

          v41 = [(_HAPAccessoryServerBTLE200 *)v44 discoveryContext];
          v42 = [v41 characteristicSignatures];
          [v42 setObject:0 forKey:v4];
          goto LABEL_46;
        }

        v47 = self;
        v48 = sub_10007FAA0();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = sub_10007FAFC(v47);
          *buf = 138543618;
          v92 = v49;
          v93 = 2112;
          v94 = v4;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for characteristic: %@", buf, 0x16u);
        }

        v50 = +[HAPMetadata getSharedInstance];
        v51 = [v7 UUIDString];
        v42 = [v50 getDefaultCharacteristicProperties:v51];

        v86 = v9;
        v76 = v26;
        v82 = v50;
        if (v42)
        {
          v52 = [v42 unsignedLongLongValue];
        }

        else
        {
          v52 = 2;
        }

        v53 = [HAPCharacteristic alloc];
        v54 = [v7 UUIDString];
        v55 = [(HAPAccessoryServerBTLE *)v47 stateNumber];
        LOBYTE(v75) = 1;
        v56 = [(HAPCharacteristic *)v53 initWithType:v54 instanceID:v8 value:0 stateNumber:v55 properties:v52 eventNotificationsEnabled:0 implicitWriteWithResponse:v75 metadata:0];

        v84 = v8;
        if (v56)
        {
          [(HAPCharacteristic *)v56 setCBCharacteristic:v4];
          v57 = [(_HAPAccessoryServerBTLE200 *)v47 discoveryContext];
          v58 = [v57 discoveryType] == 0;

          v89 = 0;
          v59 = [objc_opt_class() signatureRequestForCharacteristic:v56 requiresAuthentication:v58 error:&v89];
          v80 = v89;
          if (v59)
          {
            v87[0] = _NSConcreteStackBlock;
            v87[1] = 3221225472;
            v87[2] = sub_10005217C;
            v87[3] = &unk_100273CF0;
            v87[4] = v47;
            v60 = v4;
            v88 = v60;
            v61 = objc_retainBlock(v87);
            [(_HAPAccessoryServerBTLE200 *)v47 _sendRequest:v59 shouldPrioritize:0 responseHandler:v61];
            v62 = [(_HAPAccessoryServerBTLE200 *)v47 discoveryContext];
            v63 = [v62 readingSignatureCharacteristics];
            [v63 addObject:v60];

            v26 = v76;
            v64 = v80;
LABEL_45:

            v8 = v84;
            v9 = v86;
            v41 = v82;
LABEL_46:

            goto LABEL_47;
          }

          v72 = v47;
          v73 = sub_10007FAA0();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v74 = sub_10007FAFC(v72);
            *buf = 138543874;
            v92 = v74;
            v93 = 2112;
            v94 = v4;
            v95 = 2112;
            v96 = v80;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to create signature request for characteristic, %@, with error: %@", buf, 0x20u);
          }

          v69 = v72;
          v70 = v4;
          v64 = v80;
          v71 = v80;
        }

        else
        {
          v65 = [v7 UUIDString];
          v64 = [NSString stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %tu", v65, v8, v52];

          v66 = v47;
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
          v70 = v4;
          v71 = v59;
        }

        [(_HAPAccessoryServerBTLE200 *)v69 _handleReadCharacteristicSignature:v70 error:v71];
        v26 = v76;
        goto LABEL_45;
      }

      v21 = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(v21);
        *buf = 138543874;
        v92 = v23;
        v93 = 2112;
        v94 = v4;
        v95 = 2112;
        v96 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get characteristic, %@, instance ID with error: %@", buf, 0x20u);
      }

      v18 = v21;
      v19 = v4;
      v20 = v9;
    }

    else
    {
      v14 = [(__CFString *)v4 UUID];
      v9 = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v14];

      v15 = self;
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_10007FAFC(v15);
        *buf = 138543618;
        v92 = v17;
        v93 = 2112;
        v94 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      v8 = [NSError hapErrorWithcode:3 description:v9 reason:0 suggestion:0 underlyingError:0];
      v18 = v15;
      v19 = v4;
      v20 = v8;
    }

    [(_HAPAccessoryServerBTLE200 *)v18 _handleReadCharacteristicSignature:v19 error:v20];
LABEL_47:

    goto LABEL_48;
  }

  v11 = self;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sub_10007FAFC(v11);
    *buf = 138543618;
    v92 = v13;
    v93 = 2112;
    v94 = @"Characteristic does not support HAP";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
  }

  v7 = [NSError hapErrorWithcode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0];
  [(_HAPAccessoryServerBTLE200 *)v11 _handleReadCharacteristicSignature:v4 error:v7];
LABEL_48:
}

- (void)_readServiceSignature:(id)a3
{
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v4])
  {
    v5 = objc_opt_class();
    v6 = [v4 service];
    v7 = [v6 UUID];
    v8 = [v5 hapUUIDFromBTLEUUID:v7];

    if (v8)
    {
      v9 = [v4 service];
      v10 = [(_HAPAccessoryServerBTLE200 *)self _getServiceInstanceID:v9];

      v105 = 0;
      v11 = [(_HAPAccessoryServerBTLE200 *)self _getCharacteristicInstanceID:v4 error:&v105];
      v12 = v105;
      if (v10 | v11)
      {
        if ([(_HAPAccessoryServerBTLE200 *)self isVerified])
        {
          v13 = 0;
        }

        else
        {
          v27 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
          if ([v27 discoveryType])
          {
            v13 = 0;
          }

          else
          {
            v28 = [v4 service];
            v13 = [(_HAPAccessoryServerBTLE200 *)self shouldVerifyHAPService:v28];
          }
        }

        v29 = [v4 service];
        v26 = [(_HAPAccessoryServerBTLE200 *)self _serviceForCBService:v29];

        v98 = v10;
        if ((v13 & 1) != 0 || !v26)
        {
          if (v13 && [0 isAuthenticated])
          {
            v45 = self;
            v46 = sub_10007FAA0();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              sub_10007FAFC(v45);
              v47 = v26;
              v49 = v48 = v11;
              v50 = [v4 service];
              *buf = 138543618;
              v107 = v49;
              v108 = 2112;
              v109 = v50;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}@Found authenticated cached signature, skipping reading service signature for service: %@", buf, 0x16u);

              v11 = v48;
              v26 = v47;
            }

            v41 = [(_HAPAccessoryServerBTLE200 *)v45 discoveryContext];
            v42 = [(HAPBTLEServiceSignature *)v41 serviceSignatures];
            v43 = [v4 service];
            [v42 setObject:0 forKey:v43];
          }

          else
          {
            v97 = v11;
            v51 = self;
            v52 = sub_10007FAA0();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = sub_10007FAFC(v51);
              v54 = [v4 service];
              *buf = 138543618;
              v107 = v53;
              v108 = 2112;
              v109 = v54;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%{public}@Reading signature for service: %@", buf, 0x16u);
            }

            v55 = +[HAPMetadata getSharedInstance];
            v56 = [v8 UUIDString];
            v42 = [(HAPBTLEServiceSignature *)v55 getDefaultServiceProperties:v56];

            v93 = v26;
            v95 = v55;
            if (v42)
            {
              v57 = [v42 unsignedLongLongValue];
            }

            else
            {
              v57 = 0;
            }

            v58 = [HAPService alloc];
            v59 = [v8 UUIDString];
            v60 = [(HAPService *)v58 initWithType:v59 instanceID:v98 parsedCharacteristics:0 serviceProperties:v57 linkedServices:0];

            v92 = v60;
            if (v60)
            {
              v90 = v42;
              v61 = [v4 service];
              [(HAPService *)v60 setCBService:v61];

              v62 = [HAPCharacteristic alloc];
              v63 = [v4 UUID];
              v64 = [v63 UUIDString];
              v65 = [(HAPAccessoryServerBTLE *)v51 stateNumber];
              LOBYTE(v88) = 1;
              v66 = [(HAPCharacteristic *)v62 initWithType:v64 instanceID:v97 value:0 stateNumber:v65 properties:2 eventNotificationsEnabled:0 implicitWriteWithResponse:v88 metadata:0];

              [(HAPCharacteristic *)v66 setCBCharacteristic:v4];
              [(HAPCharacteristic *)v66 setService:v60];
              v67 = [(_HAPAccessoryServerBTLE200 *)v51 discoveryContext];
              v68 = [v67 discoveryType] == 0;

              v104 = 0;
              v91 = v66;
              v69 = [objc_opt_class() signatureRequestForService:v60 characteristic:v66 requiresAuthentication:v68 error:&v104];
              v70 = v104;
              v89 = v70;
              if (v69)
              {
                [v4 service];
                v99[0] = _NSConcreteStackBlock;
                v99[1] = 3221225472;
                v99[2] = sub_100052FB0;
                v100 = v99[3] = &unk_100273D18;
                v101 = v51;
                v102 = v98;
                v103 = v8;
                v71 = v100;
                v72 = objc_retainBlock(v99);
                [(_HAPAccessoryServerBTLE200 *)v51 _sendRequest:v69 shouldPrioritize:0 responseHandler:v72];
                v73 = [(_HAPAccessoryServerBTLE200 *)v51 discoveryContext];
                [v73 readingSignatureServices];
                v75 = v74 = v69;
                v76 = [v4 service];
                [v75 addObject:v76];

                v26 = v93;
                v41 = v95;
                v42 = v90;
              }

              else
              {
                v84 = v70;
                v85 = v51;
                v86 = sub_10007FAA0();
                v26 = v93;
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

                v71 = [v4 service];
                [(_HAPAccessoryServerBTLE200 *)v85 _handleReadServiceSignature:v71 error:v84];
                v41 = v95;
                v42 = v90;
                v74 = 0;
              }

              v11 = v97;
              v10 = v98;
              v83 = v91;
              v82 = v89;
            }

            else
            {
              v77 = [v8 UUIDString];
              v78 = [NSString stringWithFormat:@"Failed to create service with type, %@, instance ID, %@, properties, %tu", v77, v98, v57];

              v79 = v51;
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
              [(_HAPAccessoryServerBTLE200 *)v79 _handleReadCharacteristicSignature:v4 error:v82];
              v11 = v97;
              v10 = v98;
              v83 = v78;
              v26 = v93;
              v41 = v95;
            }

            v43 = v92;
          }
        }

        else
        {
          v94 = v8;
          v96 = v11;
          v30 = self;
          v31 = sub_10007FAA0();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = sub_10007FAFC(v30);
            v33 = [v4 service];
            *buf = 138543618;
            v107 = v32;
            v108 = 2112;
            v109 = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@Found cached service signature, skipping reading service signature for service: %@", buf, 0x16u);
          }

          v34 = [HAPBTLEServiceSignature alloc];
          v35 = [NSUUID alloc];
          v36 = [(__CFString *)v26 type];
          v37 = [v35 initWithUUIDString:v36];
          v38 = [(__CFString *)v26 instanceID];
          v39 = [(__CFString *)v26 serviceProperties];
          v40 = [(__CFString *)v26 linkedServices];
          v41 = [(HAPBTLEServiceSignature *)v34 initWithServiceType:v37 serviceInstanceID:v38 serviceProperties:v39 linkedServices:v40 authenticated:0];

          v42 = [(_HAPAccessoryServerBTLE200 *)v30 discoveryContext];
          v43 = [v42 serviceSignatures];
          v44 = [v4 service];
          [v43 setObject:v41 forKey:v44];

          v11 = v96;
          v10 = v98;
          v8 = v94;
        }
      }

      else
      {
        v22 = self;
        v23 = sub_10007FAA0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = sub_10007FAFC(v22);
          v25 = [v4 service];
          *buf = 138544130;
          v107 = v24;
          v108 = 2112;
          v109 = v25;
          v110 = 2112;
          v111 = v4;
          v112 = 2112;
          v113 = v12;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get service/characteristic, %@/%@, instance ID with error: %@", buf, 0x2Au);
        }

        v26 = [v4 service];
        [(_HAPAccessoryServerBTLE200 *)v22 _handleReadServiceSignature:v26 error:v12];
      }
    }

    else
    {
      v17 = [v4 service];
      v18 = [v17 UUID];
      v12 = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v18];

      v19 = self;
      v20 = sub_10007FAA0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sub_10007FAFC(v19);
        *buf = 138543618;
        v107 = v21;
        v108 = 2112;
        v109 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      v10 = [NSError hapErrorWithcode:3 description:v12 reason:0 suggestion:0 underlyingError:0];
      v11 = [v4 service];
      [(_HAPAccessoryServerBTLE200 *)v19 _handleReadServiceSignature:v11 error:v10];
    }
  }

  else
  {
    v14 = self;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(v14);
      *buf = 138543618;
      v107 = v16;
      v108 = 2112;
      v109 = @"Service Properties Characteristic does not support HAP";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    v8 = [NSError hapErrorWithcode:3 description:@"Service Properties Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0];
    v12 = [v4 service];
    [(_HAPAccessoryServerBTLE200 *)v14 _handleReadServiceSignature:v12 error:v8];
  }
}

+ (id)parseSignatureResponse:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 body];
  [v6 bytes];

  v7 = [v5 body];
  [v7 length];

  v8 = [v5 request];
  v9 = [v8 type];

  if (v9 == 1)
  {
    TLV8GetOrCopyCoalesced();
  }

  v10 = [NSError errorWithOSStatus:?];
  v11 = [NSError hapErrorWithcode:12 description:@"Signature request failed." reason:@"Failed to parse signature response body." suggestion:0 underlyingError:v10];

  if (v11)
  {
    if (a4)
    {
      v12 = v11;
      v13 = 0;
      *a4 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = -[HAPBTLECharacteristicSignature initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:]([HAPBTLECharacteristicSignature alloc], "initWithCharacteristicType:serviceInstanceID:serviceType:characteristicProperties:characteristicMetadata:authenticated:", 0, 0, 0, 0, 0, [v5 isEncrypted]);
  }

  return v13;
}

+ (id)parseServiceSignatureResponse:(id)a3 serviceInstanceID:(id)a4 serviceType:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 body];
  [v12 bytes];

  v13 = [v9 body];
  [v13 length];

  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v14 = +[NSMutableArray array];
  v15 = [v9 request];
  v16 = [v15 type];

  if (v16 != 6)
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

  [v14 removeObject:v10];
LABEL_24:

  v17 = v22;
LABEL_25:
  if (v17)
  {
    if (a6)
    {
      v23 = v17;
      v24 = 0;
      *a6 = v17;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v25 = [HAPBTLEServiceSignature alloc];
    v24 = -[HAPBTLEServiceSignature initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:](v25, "initWithServiceType:serviceInstanceID:serviceProperties:linkedServices:authenticated:", v11, v10, v29, v14, [v9 isEncrypted]);
  }

  return v24;
}

- (void)_handleReadCharacteristicSignature:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:v7])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100055694;
      v12[3] = &unk_100273748;
      v12[4] = self;
      v13 = v6;
      v8 = v7;
      v14 = v8;
      sub_100055694(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    v10 = [v9 readingSignatureCharacteristics];
    [v10 removeObject:v6];

    v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(v10) = [v11 isComplete];

    if (v10)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

- (void)_handleReadServiceSignature:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (![(_HAPAccessoryServerBTLE200 *)self _shouldIgnoreRetryDiscoveryError:v7])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100055924;
      v12[3] = &unk_100273748;
      v12[4] = self;
      v13 = v6;
      v8 = v7;
      v14 = v8;
      sub_100055924(v12);
      [(_HAPAccessoryServerBTLE200 *)self _cancelDiscoveryWithError:v8];
    }
  }

  else
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    v10 = [v9 readingSignatureServices];
    [v10 removeObject:v6];

    v11 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
    LODWORD(v10) = [v11 isComplete];

    if (v10)
    {
      [(_HAPAccessoryServerBTLE200 *)self _handleCompletedDiscovery];
    }
  }
}

+ (BOOL)isHAPService:(id)a3
{
  v3 = a3;
  v4 = [v3 UUID];
  v5 = [CBUUID UUIDWithString:CBUUIDGenericAccessProfileString];
  if ([v4 isEqual:v5])
  {
    goto LABEL_10;
  }

  v6 = [v3 UUID];
  v7 = [CBUUID UUIDWithString:CBUUIDGenericAttributeProfileString];
  if ([v6 isEqual:v7])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v8 = [v3 UUID];
  v9 = [CBUUID UUIDWithString:CBUUIDContinuityServiceString];
  if ([v8 isEqual:v9])
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = [v3 UUID];
  v11 = [CBUUID UUIDWithString:CBUUIDAppleNotificationCenterServiceString];
  if ([v10 isEqual:v11])
  {

    goto LABEL_8;
  }

  v33 = v11;
  v34 = v10;
  v12 = [v3 UUID];
  v13 = [CBUUID UUIDWithString:CBUUIDAppleMediaServiceString];
  if ([v12 isEqual:v13])
  {

    goto LABEL_8;
  }

  v32 = v13;
  v16 = [v3 UUID];
  v30 = [CBUUID UUIDWithString:CBUUIDAppleAccessoryReconnectServiceString];
  v31 = v16;
  if ([v16 isEqual:?])
  {
    v17 = 1;
    v18 = v32;
  }

  else
  {
    v19 = [v3 UUID];
    v28 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v29 = v19;
    if ([v19 isEqual:?])
    {
      v17 = 1;
    }

    else
    {
      v27 = [v3 UUID];
      v20 = [CBUUID UUIDWithString:CBUUIDBatteryServiceString];
      v17 = [v27 isEqual:?];
    }

    v18 = v32;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  v21 = [v3 characteristics];
  v22 = [v21 count];

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
  v4 = [v3 characteristics];
  v23 = [v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (sub_10004FE54(*(*(&v35 + 1) + 8 * i)))
        {

          goto LABEL_32;
        }
      }

      v24 = [v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
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

- (BOOL)isHAPCharacteristic:(id)a3
{
  v3 = a3;
  if (sub_10004FE54(v3))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 descriptors];
    if ([v5 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v15 = v5;
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v16 + 1) + 8 * i) UUID];
            v12 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v13 = [v11 isEqual:v12];

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
        v5 = v15;
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

- (BOOL)shouldVerifyHAPCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [v5 UUID];
  v7 = [CBUUID UUIDWithString:@"FED4"];
  if ([v6 isEqual:v7])
  {
  }

  else
  {
    v8 = [v4 service];
    v9 = [v8 UUID];
    v10 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [v4 UUID];
  v13 = [CBUUID UUIDWithString:@"00000011-0000-1000-8000-4D69736D6574"];
  if (![v12 isEqual:v13])
  {
    v14 = [v4 UUID];
    v9 = [CBUUID UUIDWithString:@"00000012-0000-1000-8000-4D69736D6574"];
    if ([v14 isEqual:v9])
    {

      goto LABEL_7;
    }

    v16 = [v4 UUID];
    v17 = [CBUUID UUIDWithString:@"00000013-0000-1000-8000-4D69736D6574"];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_8;
    }

LABEL_10:
    v19 = [v4 service];
    v20 = [v19 UUID];
    v21 = [CBUUID UUIDWithString:@"FED3"];
    v22 = [v20 isEqual:v21];
    if ((v22 & 1) == 0)
    {
      v23 = [v4 service];
      v24 = [v23 UUID];
      v9 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
      if (![v24 isEqual:v9])
      {
        LOBYTE(v28) = 0;
LABEL_19:

LABEL_20:
        v15 = v28 ^ 1;
        goto LABEL_21;
      }

      v30 = v24;
      v32 = v23;
    }

    v25 = self;
    v26 = [v4 UUID];
    v27 = [CBUUID UUIDWithString:@"00000014-0000-1000-8000-4D69736D6574"];
    if ([v26 isEqual:v27])
    {
      v28 = ![(HAPAccessoryServerBTLE *)v25 isPaired];
    }

    else
    {
      LOBYTE(v28) = 0;
    }

    v24 = v31;

    v23 = v32;
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

- (BOOL)shouldVerifyHAPService:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [CBUUID UUIDWithString:@"FED4"];
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 UUID];
    v9 = [CBUUID UUIDWithString:@"00000010-0000-1000-8000-4D69736D6574"];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = [v4 UUID];
    v6 = [CBUUID UUIDWithString:@"FED3"];
    if ([v5 isEqual:v6])
    {
      v7 = [(HAPAccessoryServerBTLE *)self isPaired];
    }

    else
    {
      v12 = [v4 UUID];
      v13 = [CBUUID UUIDWithString:@"0000003E-0000-1000-8000-4D69736D6574"];
      if ([v12 isEqual:v13])
      {
        v7 = [(HAPAccessoryServerBTLE *)self isPaired];
      }

      else
      {
        v7 = 1;
      }
    }
  }

LABEL_6:
  return v7;
}

+ (BOOL)isHAPDescriptor:(id)a3
{
  v3 = [a3 UUID];
  v4 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_parseService:(id)a3 error:(id *)a4
{
  v6 = a3;
  v94 = a4;
  if (([objc_opt_class() isHAPService:v6] & 1) == 0)
  {
    v23 = self;
    v24 = sub_10007FAA0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_10007FAFC(v23);
      *buf = 138543618;
      v108 = v25;
      v109 = 2112;
      v110 = @"Service does not support HAP";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      a4 = v94;
    }

    if (a4)
    {
      [NSError hapErrorWithcode:3 description:@"Service does not support HAP" reason:0 suggestion:0 underlyingError:0];
      *a4 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_80;
  }

  v7 = [v6 UUID];
  v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v7];

  if (!v8)
  {
    v27 = [v6 UUID];
    v13 = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v27];

    v28 = self;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_10007FAFC(v28);
      *buf = 138543618;
      v108 = v30;
      v109 = 2112;
      v110 = v13;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

      a4 = v94;
    }

    if (a4)
    {
      [NSError hapErrorWithcode:3 description:v13 reason:0 suggestion:0 underlyingError:0];
      *a4 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_79;
  }

  v91 = v8;
  v9 = [v6 characteristics];
  v96 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v87 = v6;
  v10 = [v6 characteristics];
  v11 = [v10 countByEnumeratingWithState:&v102 objects:v113 count:16];
  v95 = self;
  if (!v11)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v103;
  v92 = v10;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      v16 = v13;
      if (*v103 != v14)
      {
        objc_enumerationMutation(v10);
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
          v20 = self;
          v21 = sub_10007FAA0();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_10007FAFC(v20);
            *buf = 138543874;
            v108 = v22;
            v109 = 2112;
            v110 = v17;
            v111 = 2112;
            v112 = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse characteristic, %@, with error: %@", buf, 0x20u);

            a4 = v94;
          }

          v10 = v92;
          self = v95;
        }
      }

      else if (sub_10004FE54(v17))
      {
        if (v16)
        {
          v58 = self;
          v59 = sub_10007FAA0();
          v6 = v87;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = sub_10007FAFC(v58);
            *buf = 138543618;
            v108 = v60;
            v109 = 2112;
            v110 = @"Invalid service, multiple Service Instance ID characteristics.";
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

            a4 = v94;
          }

          if (a4)
          {
            [NSError hapErrorWithcode:9 description:@"Invalid service reason:multiple Service Instance ID characteristics." suggestion:0 underlyingError:0, 0];
            *a4 = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          v13 = v16;
        }

        else
        {
          v13 = sub_100051504(v17, a4);
          if (v13)
          {
            continue;
          }

          v61 = self;
          v62 = sub_10007FAA0();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v64 = sub_10007FAFC(v61);
            *buf = 138543362;
            v108 = v64;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Service Instance ID", buf, 0xCu);
          }

          v26 = 0;
          v13 = 0;
          v6 = v87;
        }

        v8 = v91;
        goto LABEL_78;
      }

      v13 = v16;
    }

    v12 = [v10 countByEnumeratingWithState:&v102 objects:v113 count:16];
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
      v36 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
      v37 = [v36 characteristicSignatures];
      v38 = [v35 cbCharacteristic];
      v39 = [v37 objectForKey:v38];

      if (!v39)
      {
        v65 = [NSString stringWithFormat:@"Missing characteristic signature for characteristic: %@", v35];
        v66 = v95;
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
        v10 = v31;
        if (v94)
        {
          *v94 = [NSError hapErrorWithcode:9 description:v65 reason:0 suggestion:0 underlyingError:0];
        }

        v26 = 0;
        v6 = v87;
        goto LABEL_78;
      }

      v40 = [v39 serviceType];
      v41 = [v40 UUIDString];
      v42 = [CBUUID UUIDWithString:v41];

      v43 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v42];
      v44 = [v39 serviceType];
      if ([v44 isEqual:v91])
      {

        goto LABEL_42;
      }

      v45 = [v43 isEqual:v91];

      if ((v45 & 1) == 0)
      {
        v86 = [v39 serviceType];
        v79 = [v86 UUIDString];
        v8 = v91;
        v80 = [v91 UUIDString];
        v81 = [v42 UUIDString];
        v90 = [NSString stringWithFormat:@"The authenticated service type, %@, does not match the service type, %@ or %@, for characteristic: %@", v79, v80, v81, v35];

        v82 = v95;
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

        v6 = v87;
        v70 = v90;
        goto LABEL_75;
      }

LABEL_42:
      v46 = [v39 serviceInstanceID];
      v47 = [v46 isEqualToNumber:v13];

      if ((v47 & 1) == 0)
      {
        v69 = [v39 serviceInstanceID];
        v70 = [NSString stringWithFormat:@"The authenticated service instance ID, %@, does not match the service instance ID, %@, for characteristic: %@", v69, v13, v35];

        v71 = v95;
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

        v6 = v87;
        v8 = v91;
LABEL_75:
        if (v94)
        {
          *v94 = [NSError hapErrorWithcode:9 description:v70 reason:0 suggestion:0 underlyingError:0];
        }

        v26 = 0;
        v10 = v31;
        goto LABEL_78;
      }

      v34 = v34 + 1;
      self = v95;
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

  v48 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
  v49 = [v48 serviceSignatures];
  v6 = v87;
  v50 = [v49 objectForKey:v87];

  v51 = [HAPService alloc];
  v8 = v91;
  v52 = [v91 UUIDString];
  v53 = [v31 copy];
  v54 = [v50 serviceProperties];
  v89 = v50;
  v55 = [v50 linkedServices];
  v56 = [v55 copy];
  v26 = [(HAPService *)v51 initWithType:v52 instanceID:v13 parsedCharacteristics:v53 serviceProperties:v54 linkedServices:v56];

  if (v26)
  {
    [(HAPService *)v26 setCBService:v87];
    v57 = v26;
  }

  else
  {
    v74 = [v91 UUIDString];
    v75 = [NSString stringWithFormat:@"Failed to create service with type, %@, service instance ID, %@, characteristics, %@", v74, v13, v93];

    v76 = v95;
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

    if (v94)
    {
      *v94 = [NSError hapErrorWithcode:3 description:v75 reason:0 suggestion:0 underlyingError:0];
    }

    v8 = v91;
  }

  v10 = v89;
LABEL_78:

LABEL_79:
LABEL_80:

  return v26;
}

- (id)_parseCharacteristic:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isHAPCharacteristic:v6])
  {
    v7 = [v6 UUID];
    v8 = [HAPAccessoryServerBTLE hapUUIDFromBTLEUUID:v7];

    if (v8)
    {
      v73 = a4;
      v74 = v6;
      [v6 descriptors];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v79 = 0u;
      v9 = [(__CFString *)obj countByEnumeratingWithState:&v76 objects:v80 count:16];
      if (v9)
      {
        v10 = v9;
        v71 = self;
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
            v15 = [v14 UUID];
            v16 = [CBUUID UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
            v17 = [v15 isEqual:v16];

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
          v19 = sub_100051250(v11, v73);
          if (v19)
          {
            v20 = [(_HAPAccessoryServerBTLE200 *)self discoveryContext];
            v21 = [v20 characteristicSignatures];
            v22 = [v21 objectForKey:v74];

            if (!v22)
            {
              v30 = [NSString stringWithFormat:@"Missing characteristic signature for characteristic: %@", v74];
              v53 = self;
              v54 = sub_10007FAA0();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = sub_10007FAFC(v53);
                *buf = 138543618;
                v82 = v55;
                v83 = 2112;
                v84 = v30;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              if (v73)
              {
                [NSError hapErrorWithcode:9 description:v30 reason:0 suggestion:0 underlyingError:0];
                *v73 = v43 = 0;
              }

              else
              {
                v43 = 0;
              }

              v8 = v72;
              goto LABEL_57;
            }

            v23 = [(_HAPAccessoryServerBTLE200 *)v22 characteristicType];
            v8 = v72;
            v24 = [v23 isEqual:v72];

            if (v24)
            {
              v25 = [HAPCharacteristic alloc];
              v26 = [v72 UUIDString];
              v27 = [(HAPAccessoryServerBTLE *)self stateNumber];
              v28 = [(_HAPAccessoryServerBTLE200 *)v22 characteristicProperties];
              v29 = [(_HAPAccessoryServerBTLE200 *)v22 characteristicMetadata];
              LOBYTE(v70) = 1;
              v30 = [(HAPCharacteristic *)v25 initWithType:v26 instanceID:v19 value:0 stateNumber:v27 properties:v28 eventNotificationsEnabled:0 implicitWriteWithResponse:v70 metadata:v29];

              if (v30)
              {
                v31 = +[NSDate distantPast];
                [v30 setValueUpdatedTime:v31];

                [v30 setCBCharacteristic:v74];
                v32 = [(_HAPAccessoryServerBTLE200 *)v71 _characteristicForCBCharacteristic:v74];
                if (-[__CFString isEqualToCharacteristic:](v32, "isEqualToCharacteristic:", v30) && (-[__CFString metadata](v32, "metadata"), v33 = objc_claimAutoreleasedReturnValue(), -[NSObject metadata](v30, "metadata"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v33 isEqualToCharacteristicMetadata:v34], v34, v33, v35))
                {
                  v36 = v71;
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
                v62 = [v72 UUIDString];
                v63 = [(_HAPAccessoryServerBTLE200 *)v22 characteristicProperties];
                v64 = [(_HAPAccessoryServerBTLE200 *)v22 characteristicMetadata];
                v65 = [NSString stringWithFormat:@"Failed to create characteristic with type, %@, characteristic instance ID, %@, properties, %tu, metadata, %@", v62, v19, v63, v64];

                v66 = v71;
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

                if (v73)
                {
                  v32 = v65;
                  [NSError hapErrorWithcode:3 description:v65 reason:0 suggestion:0 underlyingError:0];
                  *v73 = v43 = 0;
                }

                else
                {
                  v43 = 0;
                  v32 = v65;
                }
              }

              goto LABEL_57;
            }

            v56 = [(_HAPAccessoryServerBTLE200 *)v22 characteristicType];
            v57 = [v56 UUIDString];
            v58 = [v72 UUIDString];
            v30 = [NSString stringWithFormat:@"The authenticated characteristic type, %@, does not match the characteristic type, %@", v57, v58];

            v59 = v71;
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

            if (v73)
            {
              [NSError hapErrorWithcode:9 description:v30 reason:0 suggestion:0 underlyingError:0];
              *v73 = v43 = 0;
LABEL_57:

              v6 = v74;
              goto LABEL_58;
            }
          }

          else
          {
            v22 = self;
            v30 = sub_10007FAA0();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v52 = sub_10007FAFC(v22);
              *buf = 138543362;
              v82 = v52;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Characteristic Instance ID", buf, 0xCu);
            }
          }

          v43 = 0;
          goto LABEL_57;
        }
      }

      v44 = self;
      v45 = sub_10007FAA0();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = sub_10007FAFC(v44);
        *buf = 138543618;
        v82 = v46;
        v83 = 2112;
        v84 = @"Characteristic missing characteristic instance ID descriptor";
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      v6 = v74;
      if (v73)
      {
        [NSError hapErrorWithcode:9 description:@"Characteristic missing characteristic instance ID descriptor" reason:0 suggestion:0 underlyingError:0];
        *v73 = v43 = 0;
LABEL_58:

        goto LABEL_59;
      }
    }

    else
    {
      v47 = [v6 UUID];
      obj = [NSString stringWithFormat:@"Failed to convert UUID '%@' to HAP UUID", v47];

      v48 = self;
      v49 = sub_10007FAA0();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10007FAFC(v48);
        v51 = v50 = a4;
        *buf = 138543618;
        v82 = v51;
        v83 = 2112;
        v84 = obj;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

        a4 = v50;
      }

      if (a4)
      {
        [NSError hapErrorWithcode:3 description:obj reason:0 suggestion:0 underlyingError:0];
        *a4 = v43 = 0;
        goto LABEL_58;
      }
    }

    v43 = 0;
    goto LABEL_58;
  }

  v40 = self;
  v41 = sub_10007FAA0();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = sub_10007FAFC(v40);
    *buf = 138543618;
    v82 = v42;
    v83 = 2112;
    v84 = @"Characteristic does not support HAP";
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
  }

  if (a4)
  {
    [NSError hapErrorWithcode:3 description:@"Characteristic does not support HAP" reason:0 suggestion:0 underlyingError:0];
    *a4 = v43 = 0;
  }

  else
  {
    v43 = 0;
  }

LABEL_59:

  return v43;
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [HMFActivity alloc];
  v14 = HMFMethodDescription();
  v15 = [NSString stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4214];
  v16 = [v13 initWithName:v15];

  v17 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057F40;
  block[3] = &unk_100273DA8;
  v23 = v10;
  v24 = self;
  v26 = v11;
  v27 = v12;
  v28 = a4;
  v25 = v16;
  v18 = v11;
  v19 = v12;
  v20 = v16;
  v21 = v10;
  dispatch_async(v17, block);
}

- (void)_readCharacteristicValues:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v30 = a4;
  v29 = a5;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v10 = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v14 = v38;
    v31 = self;
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
          self = v31;
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

  v25 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058A44;
  block[3] = &unk_100273DF8;
  block[4] = self;
  v34 = v30;
  v35 = v9;
  v36 = v29;
  v26 = v9;
  v27 = v29;
  v28 = v30;
  dispatch_group_notify(v10, v25, block);
}

- (void)_updatePropertiesFromCharacteristic:(id)a3
{
  v9 = a3;
  v4 = [v9 type];
  v5 = [(HAPAccessoryServer *)self primaryAccessory];
  if ([v4 isEqualToString:@"00000220-0000-1000-8000-4D69736D6574"])
  {
    v6 = [v9 value];
    v7 = [HAPAccessory productDataStringFromData:v6];
    [(HAPAccessoryServer *)self setProductData:v7];

    v8 = [(HAPAccessoryServer *)self productData];
    [v5 setProductData:v8];
  }
}

- (void)_readValueForCharacteristic:(id)a3 options:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 service];
  v11 = [v10 accessory];
  v12 = [v11 server];

  if (v12 == self)
  {
    v30 = 0;
    v17 = [objc_opt_class() readRequestForCharacteristic:v8 options:a4 error:&v30];
    v16 = v30;
    if (v17)
    {
      v18 = [HMFActivity alloc];
      v19 = HMFMethodDescription();
      v20 = [NSString stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4352];
      *buf = [v18 initWithName:v20];

      objc_initWeak(&location, self);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100059188;
      v25[3] = &unk_100273E20;
      objc_copyWeak(&v28, &location);
      v26 = v8;
      v27 = v9;
      v21 = objc_retainBlock(v25);
      [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v17 shouldPrioritize:(a4 >> 1) & 1 responseHandler:v21];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      __HMFActivityScopeLeave();
    }

    else
    {
      v22 = self;
      v23 = sub_10007FAA0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_10007FAFC(v22);
        *buf = 138543874;
        *&buf[4] = v24;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Read failed, failed to create request for characteristic, %@, with error: %@", buf, 0x20u);
      }

      sub_100059068(v8, v9, 1, v16, @"Failed to create request.");
    }
  }

  else
  {
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      *buf = 138543618;
      *&buf[4] = v15;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Read failed, characteristic is not part of server: %@", buf, 0x16u);
    }

    v16 = [NSError hapErrorWithcode:11];
    sub_100059068(v8, v9, 1, v16, @"Characteristic is not part of server.");
  }
}

+ (id)readRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  if (([v7 properties] & 2) != 0)
  {
    a5 = [[HAPBTLERequest alloc] initWithCharacteristic:v7 requestType:3 bodyData:0 shouldEncrypt:v6 & 1 timeoutInterval:10.0];
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
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Read failed, characteristic does not support secured reads: %@", buf, 0x16u);
    }

    if (a5)
    {
      v10 = [NSString stringWithFormat:@"Failed to read from characteristic %@.", v7];
      *a5 = [NSError hapErrorWithcode:11 description:v10 reason:@"Characteristic does not support secured reads." suggestion:0 underlyingError:0];

      a5 = 0;
    }
  }

  return a5;
}

+ (BOOL)parseReadResponse:(id)a3 value:(id *)a4 notificationContext:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 request];
  v11 = [v10 type];

  v38 = a5;
  if (v11 != 3)
  {
    v36 = 4294960591;
LABEL_21:
    sub_1001F89CC(v36, &v42, buf);
    v13 = 0;
    v26 = 0;
    v21 = 0;
    v28 = v42;
    v14 = *buf;
    goto LABEL_9;
  }

  v12 = [v9 body];
  v41 = 0;
  v13 = [a1 extractSerializedRequestValueFromBodyData:v12 error:&v41];
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

  v15 = [v9 request];
  v16 = [v15 characteristic];
  v17 = [v16 metadata];
  v18 = [v17 format];
  v19 = sub_1000768B4(v18);

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

  v23 = [v9 request];
  v24 = [v23 characteristic];
  v25 = [v24 properties];

  if ((v25 & 0x100) != 0)
  {
    v27 = [v9 body];
    v39 = 0;
    v26 = [a1 extractNotificationContextFromBodyData:v27 error:&v39];
    v14 = v39;

    v28 = a1;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = sub_10007FAFC(v28);
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
    if (a6)
    {
      v31 = v14;
      v32 = 0;
      *a6 = v14;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_18;
  }

  v26 = 0;
LABEL_12:
  if (a4)
  {
    v33 = v21;
    *a4 = v21;
  }

  if (v26)
  {
    v34 = v26;
    v14 = 0;
    *v38 = v26;
  }

  else
  {
    v14 = 0;
  }

  v32 = 1;
LABEL_18:

  return v32;
}

+ (id)extractSerializedRequestValueFromBodyData:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 bytes];
  [v5 length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    if (a4)
    {
      v7 = [NSError errorWithOSStatus:v6];
      *a4 = [NSError hapErrorWithcode:12 description:@"Parse failed." reason:@"Failed to parse request body." suggestion:0 underlyingError:v7];

      a4 = 0;
    }
  }

  else
  {
    a4 = [NSData dataWithBytes:0 length:0];
  }

  return a4;
}

+ (id)extractNotificationContextFromBodyData:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 bytes];
  [v5 length];

  v6 = TLV8GetOrCopyCoalesced();
  if (v6)
  {
    v7 = 0;
    if (a4 && v6 != -6727)
    {
      v8 = [NSError errorWithOSStatus:v6];
      *a4 = [NSError hapErrorWithcode:12 description:@"Parse failed." reason:@"Failed to parse notification context." suggestion:0 underlyingError:v8];

      v7 = 0;
    }
  }

  else
  {
    v7 = [NSData dataWithBytes:0 length:0];
  }

  return v7;
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [HMFActivity alloc];
  v14 = HMFMethodDescription();
  v15 = [NSString stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4574];
  v16 = [v13 initWithName:v15];

  v17 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059EE0;
  block[3] = &unk_100273E70;
  v27 = a4;
  block[4] = self;
  v23 = v10;
  v24 = v16;
  v25 = v11;
  v26 = v12;
  v18 = v12;
  v19 = v11;
  v20 = v16;
  v21 = v10;
  dispatch_async(v17, block);
}

- (void)_writeValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [v15 service];
  v20 = [v19 accessory];
  v21 = [v20 server];

  if (v21 == self)
  {
    if ((a7 & 4) != 0 || ([v15 properties] & 0x20) != 0)
    {
      v30 = self;
      v31 = sub_10007FAA0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = sub_10007FAFC(v30);
        *buf = 138543618;
        v34 = v32;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%{public}@Performing timed write for characteristic %@", buf, 0x16u);
      }

      [(_HAPAccessoryServerBTLE200 *)v30 _performTimedWriteValue:v14 toCharacteristic:v15 authorizationData:v16 contextData:v17 options:a7 completionHandler:v18];
    }

    else
    {
      v27 = self;
      v28 = sub_10007FAA0();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = sub_10007FAFC(v27);
        *buf = 138543618;
        v34 = v29;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}@Performing write for characteristic %@", buf, 0x16u);
      }

      [(_HAPAccessoryServerBTLE200 *)v27 _performWriteValue:v14 toCharacteristic:v15 authorizationData:v16 contextData:v17 options:a7 completionHandler:v18];
    }
  }

  else
  {
    v22 = self;
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(v22);
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Write failed, characteristic is not part of server: %@", buf, 0x16u);
    }

    if (v18)
    {
      v25 = [NSString stringWithFormat:@"Failed to write to characteristic %@.", v15];
      v26 = [NSError hapErrorWithcode:10 description:v25 reason:@"Characteristic is not part of server." suggestion:0 underlyingError:0];

      v18[2](v18, v15, v26);
    }
  }
}

- (void)_performWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v29 = a5;
  v30 = a6;
  v16 = a8;
  v17 = [HMFActivity alloc];
  v18 = HMFMethodDescription();
  v19 = [NSString stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4711];
  v38 = [v17 initWithName:v19];

  objc_initWeak(&location, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10005ADA4;
  v32[3] = &unk_100273E98;
  objc_copyWeak(v36, &location);
  v20 = v15;
  v33 = v20;
  v21 = v16;
  v35 = v21;
  v22 = v14;
  v34 = v22;
  v36[1] = a7;
  v23 = objc_retainBlock(v32);
  v31 = 0;
  v24 = [objc_opt_class() writeRequestForCharacteristic:v20 value:v22 authorizationData:v29 contextData:v30 options:a7 error:&v31];
  v25 = v31;
  if (v24)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v24 shouldPrioritize:(a7 >> 4) & 1 responseHandler:v23];
  }

  else
  {
    v26 = self;
    v27 = sub_10007FAA0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = sub_10007FAFC(v26);
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

- (void)_performTimedWriteValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005B35C;
  v21[3] = &unk_100273EC0;
  v21[4] = self;
  v22 = a4;
  v23 = v14;
  v24 = a8;
  v25 = a7;
  v15 = v14;
  v16 = v22;
  v17 = v24;
  v18 = a6;
  v19 = a5;
  v20 = objc_retainBlock(v21);
  [(_HAPAccessoryServerBTLE200 *)self _performTimedWritePrepareWithValue:v15 toCharacteristic:v16 authorizationData:v19 contextData:v18 options:a7 completionHandler:v20];
}

- (void)_performTimedWritePrepareWithValue:(id)a3 toCharacteristic:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v39 = 0;
  v32 = v14;
  v33 = v16;
  v19 = [objc_opt_class() prepareWriteRequestForCharacteristic:v15 value:v14 authorizationData:v16 contextData:v17 options:a7 error:&v39];
  v34 = v39;
  if (v19)
  {
    v20 = [HMFActivity alloc];
    v21 = HMFMethodDescription();
    v22 = [NSString stringWithFormat:@"%@, %s:%ld", v21, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4850];
    v38 = [v20 initWithName:v22];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10005B7E8;
    v35[3] = &unk_100273EE8;
    v35[4] = self;
    v23 = v15;
    v36 = v23;
    v37 = v18;
    v24 = objc_retainBlock(v35);
    v25 = sub_10007FAA0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_10007FAFC(0);
      v27 = [v23 instanceID];
      *buf = 138543618;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Sending timed write for characteristic %{key:characteristicId}@", buf, 0x16u);
    }

    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v19 shouldPrioritize:(a7 >> 4) & 1 responseHandler:v24];
    __HMFActivityScopeLeave();
  }

  else
  {
    v28 = self;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_10007FAFC(v28);
      *buf = 138543874;
      v41 = v30;
      v42 = 2112;
      v43 = v15;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@Timed write prepare failed, failed to create request for characteristic, %@, with error: %@", buf, 0x20u);
    }

    v31 = [NSError hapErrorWithcode:10];
    sub_100059068(v15, v18, 2, v31, @"Failed to create prepare-write request.");
  }
}

- (void)_performTimedWriteExecuteForCharacteristic:(id)a3 value:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v28 = 0;
  v13 = [objc_opt_class() executeWriteRequestForCharacteristic:v10 options:a5 error:&v28];
  v14 = v28;
  if (v13)
  {
    objc_initWeak(location, self);
    v15 = [HMFActivity alloc];
    v16 = HMFMethodDescription();
    v17 = [NSString stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 4916];
    v27 = [v15 initWithName:v17];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005BE64;
    v22[3] = &unk_100273E98;
    objc_copyWeak(v26, location);
    v23 = v10;
    v25 = v12;
    v24 = v11;
    v26[1] = a5;
    v18 = objc_retainBlock(v22);
    [(_HAPAccessoryServerBTLE200 *)self _sendRequest:v13 shouldPrioritize:1 responseHandler:v18];

    objc_destroyWeak(v26);
    __HMFActivityScopeLeave();

    objc_destroyWeak(location);
  }

  else
  {
    v19 = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_10007FAFC(v19);
      *location = 138543874;
      *&location[4] = v21;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Timed write execute failed, failed to create request for characteristic, %@, with error: %@", location, 0x20u);
    }

    sub_100059068(v10, v12, 2, v14, @"Failed to create execute-write request.");
  }
}

+ (id)writeRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (([v14 properties] & 4) != 0)
  {
    v24 = [v14 metadata];
    v25 = [v24 format];
    v26 = sub_1000768B4(v25);

    v27 = sub_1001F7EE4(v15, v26, v16, (a7 >> 1) & 1, v17, a8, 0.0);
    if (v27)
    {
      if ((a7 & 8) != 0)
      {
        v28 = 60.0;
      }

      else
      {
        v28 = 10.0;
      }

      v22 = [[HAPBTLERequest alloc] initWithCharacteristic:v14 requestType:2 bodyData:v27 shouldEncrypt:a7 & 1 timeoutInterval:v28];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v18 = a1;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(v18);
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %@", buf, 0x16u);
    }

    if (a8)
    {
      v21 = [NSString stringWithFormat:@"Failed to write to characteristic %@.", v14];
      *a8 = [NSError hapErrorWithcode:10 description:v21 reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];
    }

    v22 = 0;
  }

  return v22;
}

+ (id)prepareWriteRequestForCharacteristic:(id)a3 value:(id)a4 authorizationData:(id)a5 contextData:(id)a6 options:(int64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (([v14 properties] & 4) != 0)
  {
    v23 = [v14 metadata];
    v24 = [v23 format];
    v25 = sub_1000768B4(v24);

    v26 = sub_1001F7EE4(v15, v25, v16, (a7 >> 1) & 1, v17, a8, 2.5);
    if (v26)
    {
      a8 = [[HAPBTLERequest alloc] initWithCharacteristic:v14 requestType:4 bodyData:v26 shouldEncrypt:a7 & 1 timeoutInterval:2.5];
    }

    else
    {
      a8 = 0;
    }
  }

  else
  {
    v18 = a1;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(v18);
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %@", buf, 0x16u);
    }

    if (a8)
    {
      v21 = [NSString stringWithFormat:@"Failed to write to characteristic %@.", v14];
      *a8 = [NSError hapErrorWithcode:10 description:v21 reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];

      a8 = 0;
    }
  }

  return a8;
}

+ (id)executeWriteRequestForCharacteristic:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (([v8 properties] & 4) != 0)
  {
    a5 = [[HAPBTLERequest alloc] initWithCharacteristic:v8 requestType:5 bodyData:0 shouldEncrypt:v6 & 1 timeoutInterval:10.0];
  }

  else
  {
    v9 = a1;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@[HAPBTLERequest] Write failed, characteristic does not support secured writes: %@", buf, 0x16u);
    }

    if (a5)
    {
      v12 = [NSString stringWithFormat:@"Failed to write to characteristic %@.", v8];
      *a5 = [NSError hapErrorWithcode:11 description:v12 reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];

      a5 = 0;
    }
  }

  return a5;
}

+ (BOOL)parseWriteResponse:(id)a3 value:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 request];
  v10 = [v9 type];

  if (v10 == 5 || v10 == 2)
  {
    v12 = [v8 body];
    v29 = 0;
    v13 = [a1 extractSerializedRequestValueFromBodyData:v12 error:&v29];
    v14 = v29;

    if (v13)
    {
      v15 = [v8 request];
      v16 = [v15 characteristic];
      v17 = [v16 metadata];
      v18 = [v17 format];
      v19 = sub_1000768B4(v18);

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
      if (a5)
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
    if (a5)
    {
LABEL_11:
      v24 = v14;
      v25 = 0;
      *a5 = v14;
      goto LABEL_19;
    }

LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  if (a4)
  {
    v26 = v21;
    v14 = 0;
    *a4 = v21;
  }

  else
  {
    v14 = 0;
  }

  v25 = 1;
LABEL_19:

  return v25;
}

- (void)markNotifyingCharacteristicUpdatedforCharacteristic:(id)a3
{
  v10 = a3;
  if ([v10 properties])
  {
    v4 = [(HAPAccessoryServerBTLE *)self browser];
    v5 = [(HAPAccessoryServer *)self identifier];
    [v4 markNotifyingCharacteristicUpdatedForIdentifier:v5];

    if (![(HAPAccessoryServerBTLE *)self notifyingCharacteristicUpdated])
    {
      [(HAPAccessoryServerBTLE *)self setNotifyingCharacteristicUpdated:1];
      v6 = [(HAPAccessoryServerBTLE *)self stateNumber];
      v7 = [v6 unsignedShortValue];

      v8 = [NSNumber numberWithUnsignedShort:(v7 + 1)];
      [(HAPAccessoryServerBTLE *)self setStateNumber:v8];
    }

    v9 = [(HAPAccessoryServerBTLE *)self stateNumber];
    [v10 setStateNumber:v9];
  }
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(HAPAccessoryServerBTLE *)self stateChanged])
  {
    v13 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005CF98;
    block[3] = &unk_100273F10;
    v36 = a3;
    v14 = &v33;
    block[4] = self;
    v33 = v10;
    v15 = &v35;
    v16 = &v34;
    v34 = v12;
    v35 = v11;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    dispatch_async(v13, block);
  }

  else
  {
    v20 = self;
    v21 = sub_10007FAA0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = sub_10007FAFC(v20);
      *buf = 138543362;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@Deferring enable events to prioritize local commands", buf, 0xCu);
    }

    v23 = dispatch_time(0, 1000000000);
    v13 = [(HAPAccessoryServer *)v20 clientQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005CFAC;
    v27[3] = &unk_100273F10;
    v31 = a3;
    v14 = &v28;
    v27[4] = v20;
    v28 = v10;
    v15 = &v30;
    v16 = &v29;
    v29 = v12;
    v30 = v11;
    v24 = v12;
    v25 = v11;
    v26 = v10;
    dispatch_after(v23, v13, v27);
  }
}

- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [(_HAPAccessoryServerBTLE200 *)self characteristicEnableEventCompletionHandlers];
    [v10 removeObjectForKey:v6];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, v7);
  }

  else
  {
    v11 = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10007FAFC(v11);
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Received unexpected notification updated completion from characteristic, %@, dropping", &v14, 0x16u);
    }
  }
}

- (void)_handleEventIndicationForCharacteristic:(id)a3
{
  v4 = a3;
  if ([v4 properties])
  {
    v5 = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(v5);
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Reading value on Indication for characteristic %@", buf, 0x16u);
    }

    [(_HAPAccessoryServerBTLE200 *)v5 markNotifyingCharacteristicUpdatedforCharacteristic:v4];
    v8 = [NSArray arrayWithObject:v4];
    v9 = [(HAPAccessoryServer *)v5 clientQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005F094;
    v10[3] = &unk_1002736F8;
    v10[4] = v5;
    [(_HAPAccessoryServerBTLE200 *)v5 _readCharacteristicValues:v8 queue:v9 completionHandler:v10];
  }
}

+ (id)configurationRequestForService:(id)a3 configRequestType:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
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
  if (v6 != 2 && (v8 = TLV8BufferAppend(), v8) || (v8 = TLV8BufferAppend(), v8))
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
  if (a5 && v9)
  {
    v11 = [NSError errorWithOSStatus:v9];
    *a5 = [NSError hapErrorWithcode:12 description:@"Protocol configuration failed" reason:@"Failed to create protocol configuration body" suggestion:0 underlyingError:v11];
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v7 characteristics];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
      objc_enumerationMutation(v12);
    }

    v17 = *(*(&v23 + 1) + 8 * v16);
    v18 = [v17 cbCharacteristic];
    if (!sub_100051018(v18))
    {

      goto LABEL_19;
    }

    v19 = [v7 serviceProperties];

    if ((v19 & 4) != 0)
    {
      break;
    }

LABEL_19:
    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  if (a5)
  {
    [NSError hapErrorWithcode:3 description:@"Protocol configuration request create failed" reason:@"Service is missing service signature charactersitic or support for configuration" suggestion:0 underlyingError:0];
    *a5 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_27:

  return v21;
}

- (void)_configureBroadcastKeyGeneration:(unsigned __int8)a3 service:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005F8C4;
  v23[3] = &unk_100274000;
  objc_copyWeak(&v26, &location);
  v27 = v6;
  v10 = v9;
  v25 = v10;
  v11 = v8;
  v24 = v11;
  v12 = objc_retainBlock(v23);
  v13 = objc_opt_class();
  v22 = 0;
  if (v6 == 2)
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
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
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

+ (id)configurationRequestForCharacteristic:(id)a3 isBroadcasted:(BOOL)a4 interval:(unint64_t)a5 error:(id *)a6
{
  v7 = a4;
  v8 = a3;
  TLV8BufferInit();
  v9 = TLV8BufferAppend();
  if (v9 || v7 && (v9 = TLV8BufferAppend(), v9))
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
  if (a6 && v10)
  {
    v13 = [NSError errorWithOSStatus:v10];
    *a6 = [NSError hapErrorWithcode:1 description:@"Characteristic configuration failed." reason:@"Failed to create characteristic configuration request body." suggestion:0 underlyingError:v13];
  }

  v14 = [[HAPBTLERequest alloc] initWithCharacteristic:v8 requestType:7 bodyData:v11 shouldEncrypt:1 timeoutInterval:10.0];

  return v14;
}

- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005FFE4;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v28 = a4;
  v27 = a5;
  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v9 = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
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
        v14 = [v13 characteristic];
        v15 = [v14 properties];

        if ((v15 & 8) != 0)
        {
          dispatch_group_enter(v9);
          v20 = [v13 broadcastEnable];
          v21 = [v13 broadcastInterval];
          v22 = [v13 characteristic];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1000606A4;
          v36[3] = &unk_100273DD0;
          v36[4] = self;
          v37 = v29;
          v38 = v9;
          [(_HAPAccessoryServerBTLE200 *)self _enableBroadcastEvent:v20 interval:v21 forCharacteristic:v22 completionHandler:v36];
        }

        else
        {
          v16 = self;
          v17 = sub_10007FAA0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = sub_10007FAFC(v16);
            v19 = [v13 characteristic];
            *buf = 138543618;
            v44 = v18;
            v45 = 2112;
            v46 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic %@ does not support broadcast notification", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v10);
  }

  objc_initWeak(buf, self);
  v23 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006081C;
  block[3] = &unk_100274050;
  objc_copyWeak(&v35, buf);
  v32 = v28;
  v33 = v29;
  v34 = v27;
  v24 = v29;
  v25 = v27;
  v26 = v28;
  dispatch_group_notify(v9, v23, block);

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

- (void)startPairingWithRequest:(id)a3
{
  v4 = a3;
  v5 = [HMFActivity alloc];
  v6 = HMFMethodDescription();
  v7 = [NSString stringWithFormat:@"%@, %s:%ld", v6, "/Library/Caches/com.apple.xbs/Sources/DockKit/dockaccessoryd/dockaccessoryd/HAP/CoreHAP/Servers/_HAPAccessoryServerBTLE200.m", 6214];
  v8 = [v5 initWithName:v7];

  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061154;
  block[3] = &unk_100273748;
  block[4] = self;
  v13 = v8;
  v14 = v4;
  v10 = v4;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)_checkForAuthPrompt:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100061568;
  v3[3] = &unk_1002740C8;
  v3[4] = self;
  v4 = a3;
  [(_HAPAccessoryServerBTLE200 *)self _discoverWithType:2 completionHandler:v3];
}

- (void)_getPairingFeaturesWithCompletionHandler:(id)a3
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000620B0;
  v19[3] = &unk_1002740F0;
  v19[4] = self;
  v4 = a3;
  v20 = v4;
  v5 = objc_retainBlock(v19);
  v6 = [(_HAPAccessoryServerBTLE200 *)self pairingFeaturesCharacteristic];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 value];

    if (!v8)
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
    v10 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(v10);
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, missing the Pairing Features characteristic", buf, 0xCu);
    }

    v9 = [NSError hapErrorWithcode:7 description:@"Pairing Failed." reason:@"Missing Pairing Features characteristic." suggestion:0 underlyingError:0];
    (v5[2])(v5, 0, v9);
  }

LABEL_9:
}

- (BOOL)_parsePairingFeaturesCharacteristic:(id)a3 authMethod:(unint64_t *)a4 error:(id *)a5
{
  v8 = [a3 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    -[_HAPAccessoryServerBTLE200 setFeatureFlags:](self, "setFeatureFlags:", [v8 unsignedCharValue]);
    [(HAPAccessoryServer *)self setAuthMethod:sub_10001F99C([(_HAPAccessoryServerBTLE200 *)self featureFlags])];
    if ([(HAPAccessoryServer *)self authMethod]== 6)
    {
      [(HAPAccessoryServer *)self setAuthMethod:4];
    }

    if (a4)
    {
      *a4 = [(HAPAccessoryServer *)self authMethod];
    }
  }

  else
  {
    v10 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(v10);
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the Pairing Features characteristic value is invalid", &v14, 0xCu);
    }

    if (a5)
    {
      *a5 = [NSError hapErrorWithcode:12 description:@"Pairing Failed." reason:@"The Pairing Features characteristic value is missing" suggestion:0 underlyingError:0];
    }
  }

  return isKindOfClass & 1;
}

- (void)continuePairingAfterAuthPrompt
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062688;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)stopPairingWithError:(id *)a3
{
  v4 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062B1C;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v4, block);

  return 1;
}

- (void)_handlePairSetupSessionExchangeData:(id)a3
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100062F04;
  v15[3] = &unk_100274140;
  v4 = a3;
  v16 = v4;
  v17 = self;
  v5 = objc_retainBlock(v15);
  v6 = [(_HAPAccessoryServerBTLE200 *)self pairSetupCharacteristic];
  if (v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100063134;
    v12[3] = &unk_100274118;
    v12[4] = self;
    v14 = v5;
    v13 = v6;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v4 toCharacteristic:v13 authorizationData:0 contextData:0 options:26 completionHandler:v12];
  }

  else
  {
    v7 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, missing the Pair Setup characteristic", buf, 0xCu);
    }

    v10 = [NSError hapErrorWithcode:7 description:@"Pairing Failed." reason:@"Missing Pair Setup characteristic." suggestion:0 underlyingError:0];
    (v5[2])(v5, v10);
    v11 = [(_HAPAccessoryServerBTLE200 *)v7 pairSetupSession];
    [v11 receivedSetupExchangeData:0 error:v10];
  }
}

- (void)_handlePairingSetupCodeRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self isBadSetupCode]&& [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServer:didReceiveBadPasswordThrottleAttemptsWithDelay:"])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:v4];
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6 = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000635B8;
    v12[3] = &unk_100273348;
    v12[4] = self;
    v7 = v12;
LABEL_6:
    dispatch_async(v5, v7);
    goto LABEL_10;
  }

  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServer:promptUserForPasswordWithType:"])
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
    [(_HAPAccessoryServerBTLE200 *)self setSetupCodeCompletionHandler:v4];
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6 = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100063620;
    v11[3] = &unk_100273348;
    v11[4] = self;
    v7 = v11;
    goto LABEL_6;
  }

  v8 = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = sub_10007FAFC(v8);
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@The delegate does not support prompting the user for a passcode", buf, 0xCu);
  }

  v6 = [NSError hapErrorWithcode:9 description:@"Pairing Failed." reason:@"The delegate is missing." suggestion:0 underlyingError:0];
  v4[2](v4, 0, v6);
  [(_HAPAccessoryServerBTLE200 *)v8 setSetupCodeCompletionHandler:0];
LABEL_10:
}

- (BOOL)tryPairingPassword:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063730;
  v9[3] = &unk_100273370;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, v9);

  return 0;
}

- (void)_pairingCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Pair Setup completed with error: %@", buf, 0x16u);
  }

  if (v4)
  {
    [(_HAPAccessoryServerBTLE200 *)v5 setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)v5 setPairingDisconnectionError:0];
    [(_HAPAccessoryServerBTLE200 *)v5 setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)v5 setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)v5 setPairSetupSession:0];
    [(_HAPAccessoryServerBTLE200 *)v5 disconnectWithCompletionHandler:0 disconnectionError:v4];
  }

  [(_HAPAccessoryServerBTLE200 *)v5 setWaitingForAuth:0];
  v8 = [(_HAPAccessoryServerBTLE200 *)v5 _getPairSetupType];
  if (v8 == 5)
  {
    if ([(_HAPAccessoryServerBTLE200 *)v5 _delegateRespondsToSelector:"accessoryServer:validateCert:model:"])
    {
      v15 = [(_HAPAccessoryServerBTLE200 *)v5 pairSetupSession];
      v16 = [v15 getCertificate];

      v17 = [(HAPAccessoryServer *)v5 delegateQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100063DFC;
      v19[3] = &unk_100273370;
      v19[4] = v5;
      v20 = v16;
      v18 = v16;
      dispatch_async(v17, v19);
    }
  }

  else if (v8 == 3)
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)v5 pairSetupSession];
    [v9 generateSessionKeys];

    v10 = [HAPAuthSession alloc];
    v11 = [(_HAPAccessoryServerBTLE200 *)v5 protocolInfoServiceSignatureCharacteristics];
    v12 = [v11 instanceID];
    v13 = [(HAPAuthSession *)v10 initWithRole:0 instanceId:v12 delegate:v5];
    [(_HAPAccessoryServerBTLE200 *)v5 setAuthSession:v13];

    +[NSDate date];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100063B3C;
    v22 = v21[3] = &unk_100274140;
    v23 = v5;
    v14 = v22;
    [(_HAPAccessoryServerBTLE200 *)v5 getAccessoryInfo:v21];
  }

  else
  {
    [(_HAPAccessoryServerBTLE200 *)v5 setPairing:0];
    [(_HAPAccessoryServerBTLE200 *)v5 setBadPairSetupCode:0];
    [(_HAPAccessoryServerBTLE200 *)v5 setPairSetupBackoffTimeInterval:0.0];
    [(_HAPAccessoryServerBTLE200 *)v5 setPairSetupSession:0];
    [(HAPAccessoryServer *)v5 setPairingRequest:0];
    [(_HAPAccessoryServerBTLE200 *)v5 _notifyDelegatesPairingStopped:v4];
  }
}

- (HAPCharacteristic)pairingFeaturesCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticatedProtocolInfo);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000013-0000-1000-8000-4D69736D6574"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_authenticatedProtocolInfo, v8);
  }

  v9 = objc_loadWeakRetained(&self->_authenticatedProtocolInfo);

  return v9;
}

- (HAPCharacteristic)pairSetupCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000011-0000-1000-8000-4D69736D6574"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairingFeaturesCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairingFeaturesCharacteristic);

  return v9;
}

- (HAPCharacteristic)pairingsCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairVerifyOperationQueue);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000014-0000-1000-8000-4D69736D6574"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairVerifyOperationQueue, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairVerifyOperationQueue);

  return v9;
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006422C;
  v15[3] = &unk_100273AA8;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064A34;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4 serverPairingCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self keyStore];
  v12 = [(HAPAccessoryServer *)self identifier];
  v30 = 0;
  v13 = [v11 readControllerPairingKeyForAccessory:v12 error:&v30];
  v14 = v30;

  v15 = self;
  v16 = sub_10007FAA0();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10007FAFC(v15);
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Received request to remove pairing for the current controller", buf, 0xCu);
    }

    objc_initWeak(buf, v15);
    v19 = [(HAPAccessoryServer *)v15 clientQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000654EC;
    v22[3] = &unk_1002741B8;
    objc_copyWeak(&v26, buf);
    v23 = v8;
    v24 = v9;
    v25 = v10;
    [(_HAPAccessoryServerBTLE200 *)v15 removePairing:v13 completionQueue:v19 completionHandler:v22];

    [(_HAPAccessoryServerBTLE200 *)v15 setHasValidCache:0];
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_10007FAFC(v15);
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Remove current pairing failed, failed to get the current controller with error: %@", buf, 0x16u);
    }

    if (v8 && v9)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000654D8;
      block[3] = &unk_100273720;
      v29 = v9;
      v28 = v14;
      dispatch_async(v8, block);
    }
  }

  return v13 != 0;
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065A8C;
  block[3] = &unk_100273438;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_sendPairingRequestData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self pairingsCharacteristic];
  if (v8)
  {
    objc_initWeak(location, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000662CC;
    v17 = &unk_100274208;
    objc_copyWeak(&v19, location);
    v18 = v7;
    v9 = objc_retainBlock(&v14);
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v6 toCharacteristic:v8 authorizationData:0 contextData:0 options:7 completionHandler:v9, v14, v15, v16, v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_10007FAFC(v10);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, missing the Pairings characteristic", location, 0xCu);
    }

    if (v7)
    {
      v13 = [NSError hapErrorWithcode:12 description:@"Pairing operation failed." reason:@"Missing Pairings characteristic." suggestion:0 underlyingError:0];
      (*(v7 + 2))(v7, 0, v13);
    }
  }
}

- (id)getLocalPairingIdentityWithError:(id *)a3
{
  v5 = [(HAPAccessoryServer *)self keyStore];
  v6 = [(HAPAccessoryServer *)self identifier];
  v7 = [v5 readControllerPairingKeyForAccessory:v6 error:a3];

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

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066714;
  v6[3] = &unk_100273C28;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"0000003E-0000-1000-8000-4D69736D6574"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000014-0000-1000-8000-4D69736D6574"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_discoveryRetries, v8);
  }

  v9 = objc_loadWeakRetained(&self->_discoveryRetries);

  return v9;
}

- (id)_pendingRequestForCharacteristic:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 characteristic];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_pendingResponseForRequest:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_HAPAccessoryServerBTLE200 *)self pendingResponses];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 request];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_reallySendRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067938;
  block[3] = &unk_100273438;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (unint64_t)_maximumControlWriteLengthForRequest:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBTLE *)self peripheral];
  v6 = [v5 maximumWriteValueLengthForType:0];

  v7 = [(HAPAccessoryServerBTLE *)self peripheral];
  v8 = [v7 maximumWriteValueLengthForType:1];

  if (!v6)
  {
    v9 = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_10007FAFC(v9);
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
  v12 = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = sub_10007FAFC(v12);
    v24 = 138543362;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Overriding the peripheral's mtu length to 23", &v24, 0xCu);
  }

  v8 = 23;
LABEL_11:
  v15 = [v4 isEncrypted];
  v16 = 25;
  if (!v15)
  {
    v16 = 1;
  }

  if (v8 / v16 >= 4)
  {
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(v17);
      v24 = 138543618;
      v25 = v19;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@Electing to write as reduced size payload of length %tu", &v24, 0x16u);
    }

    v6 = v8;
  }

  if ([v4 isEncrypted])
  {
    if (v6 > 0x17)
    {
      v6 -= 24;
    }

    else
    {
      v20 = self;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(v20);
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

- (void)writeWithoutResponse:(id)a3 toCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000681D4;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)writeRawWithResponse:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15 = 0;
  v10 = [(_HAPAccessoryServerBTLE200 *)self _encryptDataAndGenerateAuthTag:a3 error:&v15];
  v11 = v15;
  if (v10)
  {
    [(_HAPAccessoryServerBTLE200 *)self _sendData:v10 toCharacteristic:v8 completionHandler:v9];
  }

  else
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
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt raw write payload with error: %@", buf, 0x16u);
    }

    if (v9)
    {
      v9[2](v9, v11);
    }
  }
}

- (void)_sendControlPacket:(id)a3 forRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 serialize];
  if (![v8 isEncrypted])
  {
    v12 = 0;
    goto LABEL_5;
  }

  v24 = 0;
  v11 = [(_HAPAccessoryServerBTLE200 *)self _encryptDataAndGenerateAuthTag:v10 error:&v24];
  v12 = v24;

  if (v11)
  {
    v10 = v11;
LABEL_5:
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_10007FAFC(v13);
      v16 = [v10 length];
      *buf = 138543874;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@Sending %tu bytes of control payload for request: %@", buf, 0x20u);
    }

    v17 = v13;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543874;
      v26 = v19;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@Sending control payload for request, %@, to accessory: %@", buf, 0x20u);
    }

    v20 = [v8 characteristic];
    [(_HAPAccessoryServerBTLE200 *)v17 _sendData:v10 toCharacteristic:v20 completionHandler:v9];

    goto LABEL_10;
  }

  v21 = self;
  v22 = sub_10007FAA0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = sub_10007FAFC(v21);
    *buf = 138543618;
    v26 = v23;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt control payload with error: %@", buf, 0x16u);
  }

  if (v9)
  {
    v9[2](v9, v12);
  }

LABEL_10:
}

- (void)_sendData:(id)a3 toCharacteristic:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v12 = [v11 objectForKey:v9];

  if (!v12)
  {
    v16 = [v9 cbCharacteristic];
    if (v16)
    {
      v17 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
      v18 = [v10 copy];
      v19 = objc_retainBlock(v18);
      [v17 setObject:v19 forKey:v9];

      v20 = [(HAPAccessoryServerBTLE *)self peripheral];
      [v20 writeValue:v8 forCharacteristic:v16 type:0];

      [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    }

    else
    {
      v21 = self;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_10007FAFC(v21);
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for characteristic: %@", &v25, 0x16u);
      }

      if (v10)
      {
        v24 = [NSError hapErrorWithcode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
        (*(v10 + 2))(v10, v24);
      }
    }

    goto LABEL_12;
  }

  v13 = self;
  v14 = sub_10007FAA0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_10007FAFC(v13);
    v25 = 138543618;
    v26 = v15;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@A write operation for '%@' is already is progress.", &v25, 0x16u);
  }

  if (v10)
  {
    v16 = [NSError hapErrorWithcode:4 description:@"Operation in progress." reason:@"A write operation is already in progress." suggestion:0 underlyingError:0];
    (*(v10 + 2))(v10, v16);
LABEL_12:
  }
}

- (void)_handleWriteCompletionForCharacteristic:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [(_HAPAccessoryServerBTLE200 *)self characteristicWriteCompletionHandlers];
    [v10 removeObjectForKey:v6];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    (v9)[2](v9, v7);
  }

  else
  {
    v11 = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(v11);
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected write completion from characteristic, %@, dropping", &v14, 0x16u);
    }
  }
}

- (void)_requestResponseForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 characteristic];
  v6 = [v5 cbCharacteristic];

  if (v6)
  {
    v7 = [v4 responseTimer];
    [v7 resume];

    v8 = [(HAPAccessoryServerBTLE *)self peripheral];
    [v8 readValueForCharacteristic:v6];
  }

  else
  {
    v9 = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v9);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Missing mapped characteristic for request: %@", &v12, 0x16u);
    }

    v8 = [NSError hapErrorWithcode:1 description:@"Missing mapped characteristic" reason:0 suggestion:0 underlyingError:0];
    [v4 cancelWithError:v8];
  }
}

- (void)_handleRawResponseData:(id)a3 fromCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v60 = 0;
    v11 = [(_HAPAccessoryServerBTLE200 *)self _decryptData:v8 error:&v60];
    v12 = v60;
    v13 = self;
    v14 = sub_10007FAA0();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = sub_10007FAFC(v13);
        *buf = 138543618;
        v62 = v16;
        v63 = 2112;
        v64 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@Decrypted Response: %@", buf, 0x16u);
      }

      if (!v9)
      {
        goto LABEL_24;
      }

      v17 = [v9 cbCharacteristic];

      if (!v17)
      {
        goto LABEL_24;
      }

      v18 = [v9 cbCharacteristic];
      v19 = [v18 UUID];
      v20 = [CBUUID UUIDWithString:@"00000104-0000-1000-8000-4D69736D6574"];
      if ([v19 isEqual:v20])
      {
        goto LABEL_14;
      }

      v55 = v19;
      v56 = v18;
      v21 = [v9 cbCharacteristic];
      v22 = [v21 UUID];
      v23 = [CBUUID UUIDWithString:@"00000105-0000-1000-8000-4D69736D6574"];
      if ([v22 isEqual:v23])
      {
LABEL_13:

        v19 = v55;
        v18 = v56;
LABEL_14:

        goto LABEL_15;
      }

      v53 = v22;
      v54 = v20;
      v52 = v23;
      v24 = [v9 cbCharacteristic];
      v25 = [v24 UUID];
      v26 = [CBUUID UUIDWithString:@"00000108-0000-1000-8000-4D69736D6574"];
      if ([v25 isEqual:v26])
      {

        v23 = v52;
        v22 = v53;
        v20 = v54;
        goto LABEL_13;
      }

      v49 = v26;
      v50 = v25;
      v51 = v24;
      v48 = [v9 cbCharacteristic];
      v35 = [v48 UUID];
      v36 = [CBUUID UUIDWithString:@"00000110-0000-1000-8000-4D69736D6574"];
      v47 = v35;
      v37 = v35;
      v38 = v36;
      if ([v37 isEqual:v36])
      {
        v39 = 1;
      }

      else
      {
        v46 = [v9 cbCharacteristic];
        v40 = [v46 UUID];
        v44 = [CBUUID UUIDWithString:@"00000109-0000-1000-8000-4D69736D6574"];
        v45 = v40;
        if ([v40 isEqual:?])
        {
          v39 = 1;
        }

        else
        {
          v43 = [v9 cbCharacteristic];
          v42 = [v43 UUID];
          v41 = [CBUUID UUIDWithString:@"0000010A-0000-1000-8000-4D69736D6574"];
          v39 = [v42 isEqual:v41];
        }
      }

      if (v39)
      {
LABEL_15:
        v27 = v13;
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
          v30 = [(HAPAccessoryServer *)v27 delegateQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100069404;
          block[3] = &unk_100273748;
          block[4] = v27;
          v58 = v9;
          v11 = v11;
          v59 = v11;
          dispatch_async(v30, block);
        }

        goto LABEL_24;
      }

      v13 = v13;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v31 = sub_10007FAFC(v13);
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
      v31 = sub_10007FAFC(v13);
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

  v11 = self;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sub_10007FAFC(v11);
    *buf = 138543618;
    v62 = v13;
    v63 = 2112;
    v64 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get read data with error: %@", buf, 0x16u);
LABEL_23:
  }

LABEL_24:
}

- (void)_handleResponseData:(id)a3 fromCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HAPAccessoryServerBTLE200 *)self _pendingRequestForCharacteristic:v9];
  v12 = v11;
  if (!v11)
  {
    v16 = self;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543618;
      v81 = v18;
      v82 = 2112;
      v83 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected response from characteristic, %@, dropping", buf, 0x16u);
    }

    goto LABEL_64;
  }

  if (!v10)
  {
    v19 = [(_HAPAccessoryServerBTLE200 *)v11 responseTimer];
    [v19 suspend];

    [(_HAPAccessoryServerBTLE200 *)self _kickConnectionIdleTimer];
    v20 = v8;
    if ([(_HAPAccessoryServerBTLE200 *)v12 isEncrypted])
    {
      v79 = 0;
      v21 = [(_HAPAccessoryServerBTLE200 *)self _decryptData:v20 error:&v79];
      v16 = v79;

      if (!v21)
      {
        v43 = self;
        v44 = sub_10007FAA0();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = sub_10007FAFC(v43);
          *buf = 138543874;
          v81 = v45;
          v82 = 2112;
          v83 = v12;
          v84 = 2112;
          v85 = v16;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to decrypt response to request %@ with error: %@", buf, 0x20u);
        }

        [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v16];
        goto LABEL_64;
      }

      v16 = v21;
    }

    else
    {
      v16 = v20;
    }

    v22 = self;
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = sub_10007FAFC(v22);
      *buf = 138543618;
      v81 = v24;
      v82 = 2112;
      v83 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}@Decrypted Response: %@", buf, 0x16u);
    }

    v78 = 0;
    v25 = [HAPBTLEControlPacket packetWithSerializedData:v16 error:&v78];
    v26 = v78;
    if (!v25)
    {
      v36 = v22;
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
      v39 = v22;
      v40 = sub_10007FAA0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = sub_10007FAFC(v39);
        v42 = [v25 type];
        *buf = 138543618;
        v81 = v41;
        v82 = 1024;
        LODWORD(v83) = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@Invalid response type control type: %u", buf, 0x12u);
      }

      v35 = [NSError hapErrorWithcode:3 description:@"Request failed." reason:@"Invalid response control type." suggestion:0 underlyingError:0];
      [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v35];
      goto LABEL_62;
    }

    v76 = v26;
    if ([v25 isContinuationPacket])
    {
      v27 = [(HAPAccessoryServer *)v12 identifier];
      v28 = [v25 transactionIdentifier];
      v29 = [v27 isEqual:v28];

      if ((v29 & 1) == 0)
      {
        v55 = v22;
        v56 = sub_10007FAA0();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v75 = sub_10007FAFC(v55);
          v57 = [v25 transactionIdentifier];
          v58 = [(HAPAccessoryServer *)v12 identifier];
          *buf = 138543874;
          v81 = v75;
          v82 = 2112;
          v83 = v57;
          v84 = 2112;
          v85 = v58;
          v59 = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@The continuation response payload transaction identifier, %@, does not match the request's transaction identifier, %@.", buf, 0x20u);
        }

        [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:0];
        v26 = v76;
        goto LABEL_63;
      }
    }

    if ([v25 isContinuationPacket])
    {
      v30 = [(_HAPAccessoryServerBTLE200 *)v22 _pendingResponseForRequest:v12];
      v31 = v22;
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
      v46 = [(_HAPAccessoryServerBTLE200 *)v22 pendingResponses];
      [v46 addObject:v35];

      v31 = [[HMFTimer alloc] initWithTimeInterval:1 options:4.0];
      [(_HAPAccessoryServerBTLE200 *)v31 setDelegate:v22];
      v47 = [(HAPAccessoryServer *)v22 clientQueue];
      [(_HAPAccessoryServerBTLE200 *)v31 setDelegateQueue:v47];

      [(_HAPAccessoryServerBTLE200 *)v12 setResponseTimer:v31];
    }

    v48 = [v25 payload];
    v77 = 0;
    v49 = [(HAPBTLEResponse *)v35 appendData:v48 error:&v77];
    v74 = v77;

    if (v49)
    {
      if (![(HAPBTLEResponse *)v35 isComplete])
      {
        v50 = v35;
        v66 = v22;
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
        v51 = v22;
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

        v54 = [(_HAPAccessoryServerBTLE200 *)v12 operation];
        [v54 finish];
        goto LABEL_59;
      }

      v50 = v35;
      v70 = v22;
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
      v60 = v22;
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

    v54 = [NSError hapErrorWithcode:15 description:v63 reason:v64 suggestion:0 underlyingError:v65];
    [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v54];
LABEL_59:

LABEL_60:
    v26 = v76;
    v35 = v50;
    goto LABEL_61;
  }

  v13 = self;
  v14 = sub_10007FAA0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_10007FAFC(v13);
    *buf = 138543874;
    v81 = v15;
    v82 = 2112;
    v83 = v12;
    v84 = 2112;
    v85 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response for request, %@, with error: %@", buf, 0x20u);
  }

  [(_HAPAccessoryServerBTLE200 *)v12 cancelWithError:v10];
LABEL_65:
}

- (void)_sendProtocolInfoServiceExchangeData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] >= 2)
  {
    v8 = [v6 subdataWithRange:{1, objc_msgSend(v6, "length") - 1}];

    v6 = v8;
  }

  v9 = self;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = sub_10007FAFC(v9);
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@Sending Protocol Exchange for data: %@", buf, 0x16u);
  }

  v12 = [(_HAPAccessoryServerBTLE200 *)v9 protocolInfoServiceSignatureCharacteristics];
  if (v12)
  {
    objc_initWeak(&location, v9);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10006A33C;
    v24[3] = &unk_1002742F8;
    objc_copyWeak(&v26, &location);
    v13 = v7;
    v25 = v13;
    v14 = objc_retainBlock(v24);
    v15 = [[HAPBTLERequest alloc] initWithCharacteristic:v12 requestType:255 bodyData:v6 shouldEncrypt:1 timeoutInterval:10.0];
    if (v15)
    {
      [(_HAPAccessoryServerBTLE200 *)v9 _sendRequest:v15 shouldPrioritize:0 responseHandler:v14];
      [(_HAPAccessoryServerBTLE200 *)v9 _kickConnectionIdleTimer];
    }

    else
    {
      v20 = v9;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(v20);
        *buf = 138543618;
        v29 = v22;
        v30 = 2112;
        v31 = v12;
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
    v16 = v9;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(v16);
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed, missing the Service Signature Characteristic for Protocol Info Service", buf, 0xCu);
    }

    v19 = [NSError errorWithDomain:@"HAPErrorDomain" code:3 userInfo:0];
    (*(v7 + 2))(v7, v19, 0);
  }
}

- (void)tryEstablishSecuritySession
{
  [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
  [(HAPAccessoryServerBTLE *)self enterTrackingMode];
  v6 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  if ([v6 isOpen])
  {
LABEL_4:

    return;
  }

  v3 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  if ([v3 isOpening])
  {

    goto LABEL_4;
  }

  v4 = [(_HAPAccessoryServerBTLE200 *)self pairSetupSession];
  v5 = [v4 isSecureSession];

  if ((v5 & 1) == 0)
  {
    [(_HAPAccessoryServerBTLE200 *)self _suspendAllOperations];
    [(HAPAccessoryServer *)self setMetric_pairVerifyReason:@"noSession.tracking"];

    [(_HAPAccessoryServerBTLE200 *)self _establishSecureSession];
  }
}

- (void)_enqueueRequest:(id)a3 shouldPrioritize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(v7);
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Queueing request: %@", &v21, 0x16u);
  }

  v10 = [v6 characteristic];
  v11 = [(_HAPAccessoryServerBTLE200 *)v7 pairVerifyCharacteristic];
  if ([v10 isEqual:v11])
  {
    v12 = [v6 type];

    if (v12 != 1)
    {
      v13 = [(_HAPAccessoryServerBTLE200 *)v7 pairVerifyOperationQueue];
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v6 isEncrypted])
  {
    v14 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];
    if (![v14 isOpen])
    {
      v15 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];
      if (![v15 isOpening])
      {
        v19 = [(_HAPAccessoryServerBTLE200 *)v7 pairSetupSession];
        v20 = [v19 isSecureSession];

        if ((v20 & 1) == 0)
        {
          [(_HAPAccessoryServerBTLE200 *)v7 _suspendAllOperations];
          [(HAPAccessoryServer *)v7 setMetric_pairVerifyReason:@"noSession.request"];
          [(_HAPAccessoryServerBTLE200 *)v7 _establishSecureSession];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v13 = [(_HAPAccessoryServerBTLE200 *)v7 requestOperationQueue];
LABEL_13:
  v16 = v13;
  if (v4)
  {
    v17 = [v6 operation];
    [v17 setQueuePriority:4];
  }

  v18 = [v6 operation];
  [v16 addOperation:v18];
}

- (unint64_t)_outstandingRequests
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  v3 = [v2 operations];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) isFinished] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  v4 = [v3 isSuspended];

  if ((v4 & 1) == 0)
  {
    v5 = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_10007FAFC(v5);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Suspending all request operations", &v9, 0xCu);
    }

    v8 = [(_HAPAccessoryServerBTLE200 *)v5 requestOperationQueue];
    [v8 setSuspended:1];
  }
}

- (void)_resumeAllOperations
{
  v3 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
  v4 = [v3 isSuspended];

  if (v4)
  {
    v5 = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_10007FAFC(v5);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Resuming all request operations", &v9, 0xCu);
    }

    v8 = [(_HAPAccessoryServerBTLE200 *)v5 requestOperationQueue];
    [v8 setSuspended:0];
  }
}

- (void)_cancelAllQueuedOperationsWithError:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    v6 = [v5 operations];
    v7 = [v6 count];

    if (v7)
    {
      v8 = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = sub_10007FAFC(v8);
        v11 = [(_HAPAccessoryServerBTLE200 *)v8 requestOperationQueue];
        v12 = [v11 operations];
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Cancelling all queued operations: %@", &v14, 0x16u);
      }
    }

    v13 = [(_HAPAccessoryServerBTLE200 *)self requestOperationQueue];
    [v13 cancelAllOperationsWithError:v4];
  }
}

- (HAPSecuritySession)securitySession
{
  os_unfair_lock_lock_with_options();
  v3 = *&self->_featureFlags;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)setSecuritySession:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = *&self->_featureFlags;
  *&self->_featureFlags = v4;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (BOOL)isSecuritySessionOpen
{
  v2 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
  v3 = [v2 isOpen];

  return v3;
}

- (void)setSecuritySessionOpen:(BOOL)a3
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
    v3 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    if ([v3 isOpen])
    {

LABEL_9:
      v11 = self;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = sub_10007FAFC(v11);
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@A security session is already established.", buf, 0xCu);
      }

      return;
    }

    v9 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    v10 = [v9 isOpening];

    if (v10)
    {
      goto LABEL_9;
    }

    v14 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:[(HAPAccessoryServerBTLE *)self resumeSessionID] enhancedEncryption:self->_badPairSetupCode delegate:self];
    [(_HAPAccessoryServerBTLE200 *)self setSecuritySession:v14];
    [(HAPSecuritySession *)v14 open];
  }

  else
  {
    v4 = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(v4);
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
      [(_HAPAccessoryServerBTLE200 *)v4 disconnectWithCompletionHandler:0 disconnectionError:v7];
    }
  }
}

- (void)_handleSecuritySessionSetupExchangeData:(id)a3
{
  v4 = a3;
  v5 = [(_HAPAccessoryServerBTLE200 *)self pairVerifyCharacteristic];
  if (v5)
  {
    objc_initWeak(location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006B36C;
    v11[3] = &unk_100274320;
    objc_copyWeak(&v13, location);
    v12 = v5;
    [(_HAPAccessoryServerBTLE200 *)self _writeValue:v4 toCharacteristic:v12 authorizationData:0 contextData:0 options:18 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_10007FAFC(v6);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@Security session setup exchange failed, missing the Pair Verify characteristic", location, 0xCu);
    }

    v9 = [NSError hapErrorWithcode:9 description:@"Security session setup exchange failed." reason:@"Missing Pair Verify characteristic." suggestion:0 underlyingError:0];
    v10 = [(_HAPAccessoryServerBTLE200 *)v6 securitySession];
    [v10 receivedSetupExchangeData:0 error:v9];
  }
}

- (HAPCharacteristic)pairVerifyCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  if (!WeakRetained)
  {
    v4 = [(HAPAccessoryServer *)self primaryAccessory];
    v5 = [v4 servicesOfType:@"00000010-0000-1000-8000-4D69736D6574"];
    v6 = [v5 firstObject];

    v7 = [v6 characteristicsOfType:@"00000012-0000-1000-8000-4D69736D6574"];
    v8 = [v7 firstObject];
    objc_storeWeak(&self->_pairSetupCharacteristic, v8);
  }

  v9 = objc_loadWeakRetained(&self->_pairSetupCharacteristic);

  return v9;
}

- (id)protocolInfoServiceSignatureCharacteristics
{
  v2 = [(HAPAccessoryServer *)self primaryAccessory];
  v3 = [v2 servicesOfType:@"000000A2-0000-1000-8000-4D69736D6574"];
  v4 = [v3 firstObject];

  v5 = [v4 characteristicsOfType:@"000000A5-0000-1000-8000-4D69736D6574"];
  v6 = [v5 firstObject];

  return v6;
}

- (id)_encryptDataAndGenerateAuthTag:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(v7);
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Encrypting plaintext data: %@", &v17, 0x16u);
  }

  v10 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];

  if (v10)
  {
    v11 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];
LABEL_7:
    v14 = v11;
    v15 = [v11 encryptData:v6 additionalAuthenticatedData:0 error:a4];

    goto LABEL_8;
  }

  v12 = [(_HAPAccessoryServerBTLE200 *)v7 pairSetupSession];
  v13 = [v12 isSecureSession];

  if (v13)
  {
    v11 = [(_HAPAccessoryServerBTLE200 *)v7 pairSetupSession];
    goto LABEL_7;
  }

  if (a4)
  {
    [NSError hapErrorWithcode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_8:

  return v15;
}

- (id)_decryptData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(v7);
    v17 = 138543618;
    v18 = v9;
    v19 = 2048;
    v20 = [v6 length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Decrypting data with length %lu", &v17, 0x16u);
  }

  v10 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];

  if (v10)
  {
    v11 = [(_HAPAccessoryServerBTLE200 *)v7 securitySession];
LABEL_7:
    v14 = v11;
    v15 = [v11 decryptData:v6 additionalAuthenticatedData:0 error:a4];

    goto LABEL_8;
  }

  v12 = [(_HAPAccessoryServerBTLE200 *)v7 pairSetupSession];
  v13 = [v12 isSecureSession];

  if (v13)
  {
    v11 = [(_HAPAccessoryServerBTLE200 *)v7 pairSetupSession];
    goto LABEL_7;
  }

  if (a4)
  {
    [NSError hapErrorWithcode:3 description:@"Missing security session." reason:0 suggestion:0 underlyingError:0];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_8:

  return v15;
}

- (void)connectWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006BB54;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_cancelConnectionWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([(_HAPAccessoryServerBTLE200 *)self connectionState]== 1)
  {
    v6 = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(v6);
      *buf = 138543618;
      v23 = v8;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling connection with error: %@", buf, 0x16u);
    }

    v5 = v4;
    if (!v4)
    {
      v5 = [NSError hapErrorWithcode:2 description:@"Connection failed." reason:@"Connection was cancelled." suggestion:0 underlyingError:0];
    }

    v9 = [(_HAPAccessoryServerBTLE200 *)v6 connectionCompletionHandler];
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }

    [(_HAPAccessoryServerBTLE200 *)v6 setConnectionCompletionHandler:0];
    v11 = [(_HAPAccessoryServerBTLE200 *)v6 discoveryContext];

    if (v11)
    {
      [(_HAPAccessoryServerBTLE200 *)v6 _cancelDiscoveryWithError:v5];
    }

    if ([(_HAPAccessoryServerBTLE200 *)v6 isPairing])
    {
      v12 = [v5 userInfo];
      v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!v13)
      {
        v13 = v5;
      }

      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10006C310;
      v19 = &unk_100273370;
      v20 = v6;
      v21 = v13;
      v14 = v13;
      sub_10006C310(&v16);
    }

    v15 = [(HAPAccessoryServerBTLE *)v6 browser:v16];
    [v15 disconnectFromBTLEAccessoryServer:v6];
  }
}

- (void)disconnectWithCompletionHandler:(id)a3 disconnectionError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C508;
  block[3] = &unk_100274370;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)updateConnectionIdleTime:(unsigned __int8)a3
{
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C95C;
  v6[3] = &unk_1002734A8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_updateConnectionIdleTime:(unsigned __int8)a3
{
  v3 = a3;
  [(HAPAccessoryServerBTLE *)self setConnectionIdleTime:?];
  v5 = 5.0;
  if (v3 == 1)
  {
    v5 = 2.0;
  }

  if (v3 == 2)
  {
    v5 = 15.0;
  }

  [(_HAPAccessoryServerBTLE200 *)self _restartConnectionIdleTimer:v5];
}

- (void)_restartConnectionIdleTimer:(double)a3
{
  [(_HAPAccessoryServerBTLE200 *)self _suspendConnectionIdleTimer];
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(v5);
    v13 = 138543618;
    v14 = v7;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Updating connectionIdle time to: %f", &v13, 0x16u);
  }

  v8 = [[HMFTimer alloc] initWithTimeInterval:0 options:a3];
  [(_HAPAccessoryServerBTLE200 *)v5 setConnectionIdleTimer:v8];

  v9 = [(_HAPAccessoryServerBTLE200 *)v5 connectionIdleTimer];
  [v9 setDelegate:v5];

  v10 = [(_HAPAccessoryServerBTLE200 *)v5 connectionIdleTimer];
  v11 = [(HAPAccessoryServer *)v5 clientQueue];
  [v10 setDelegateQueue:v11];

  v12 = [(_HAPAccessoryServerBTLE200 *)v5 connectionIdleTimer];
  [v12 resume];
}

- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CC18;
  block[3] = &unk_100273748;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_handleConnectionWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Connection completed with error: %@", &v12, 0x16u);
  }

  if (v4)
  {
    [(_HAPAccessoryServerBTLE200 *)v5 setConnectionState:0];
    [(_HAPAccessoryServerBTLE200 *)v5 _suspendConnectionIdleTimer];
  }

  else
  {
    v8 = [(HAPAccessoryServerBTLE *)v5 browser];
    v9 = [(HAPAccessoryServerBTLE *)v5 peripheral];
    [v8 setConnectionLatency:1 forPeripheral:v9];

    [(_HAPAccessoryServerBTLE200 *)v5 setConnectionState:2];
    [(_HAPAccessoryServerBTLE200 *)v5 _updateConnectionIdleTime:[(HAPAccessoryServerBTLE *)v5 connectionIdleTime]];
    [(_HAPAccessoryServerBTLE200 *)v5 _kickConnectionIdleTimer];
    [(HAPAccessoryServerBTLE *)v5 incrementHAPBTLEMetricsConnectionCount];
  }

  v10 = [(_HAPAccessoryServerBTLE200 *)v5 connectionCompletionHandler];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v4);
  }

  [(_HAPAccessoryServerBTLE200 *)v5 setConnectionCompletionHandler:0];
}

- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self connectionStartTime];
  if (v8)
  {
    v9 = +[NSDate date];
    v10 = [(HAPAccessoryServer *)self connectionStartTime];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(HAPAccessoryServer *)self setConnectionStartTime:0];
  v13 = [(HAPAccessoryServer *)self clientQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006CF80;
  v16[3] = &unk_100274398;
  v17 = v6;
  v18 = self;
  v20 = v12;
  v19 = v7;
  v14 = v7;
  v15 = v6;
  dispatch_async(v13, v16);
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
  v2 = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];
  [v2 kick];
}

- (void)_resumeConnectionIdleTimer
{
  if ([(_HAPAccessoryServerBTLE200 *)self _shouldResumeConnectionIdletimer])
  {
    v3 = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10007FAFC(v3);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@Resuming the connection idle timer...", &v7, 0xCu);
    }

    v6 = [(_HAPAccessoryServerBTLE200 *)v3 connectionIdleTimer];
    [v6 resume];
  }
}

- (void)_suspendConnectionIdleTimer
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = sub_10007FAFC(v2);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@Suspending the connection idle timer...", &v6, 0xCu);
  }

  v5 = [(_HAPAccessoryServerBTLE200 *)v2 connectionIdleTimer];
  [v5 suspend];
}

- (void)_handleConnectionIdleTimeout
{
  v3 = [NSError errorWithDomain:@"HAPErrorDomain" code:24 userInfo:0];
  if ([(_HAPAccessoryServerBTLE200 *)self isPairing])
  {
    [(_HAPAccessoryServerBTLE200 *)self setPairingDisconnectionError:v3];
  }

  v4 = [(_HAPAccessoryServerBTLE200 *)self connectionState];
  v5 = self;
  v6 = sub_10007FAA0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v4 == 1)
  {
    if (v7)
    {
      v8 = sub_10007FAFC(v5);
      v9 = [(HAPAccessoryServerBTLE *)v5 peripheral];
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, cancelling connection to the peripheral: %@", &v12, 0x16u);
    }

    v10 = [NSError hapErrorWithcode:8 description:@"Connection Failed" reason:@"Connection request timed out" suggestion:0 underlyingError:v3];
    [(_HAPAccessoryServerBTLE200 *)v5 _cancelConnectionWithError:v10];
  }

  else
  {
    if (v7)
    {
      v11 = sub_10007FAFC(v5);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@The connection idle timer fired, disconnecting from peripheral", &v12, 0xCu);
    }

    [(_HAPAccessoryServerBTLE200 *)v5 disconnectWithCompletionHandler:0 disconnectionError:v3];
  }
}

- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HAPAccessoryServer *)self clientQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006D954;
  v13[3] = &unk_1002743E8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (BOOL)_validateGeneratedBroadcastKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HAPAccessoryServer *)self keyStore];
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v6 = [(HAPAccessoryServer *)self identifier];
    v25 = 0;
    v7 = [v5 getControllerPublicKey:&v28 secretKey:&v27 username:&v26 allowCreation:0 forAccessory:v6 error:&v25];
    v8 = v28;
    v9 = v27;
    v10 = v26;
    v11 = v25;

    if (v7)
    {
      v12 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      v13 = [v12 broadcastKey];
      v14 = [v13 isEqualToData:v4];

      if (v14)
      {
        v15 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v16 = self;
      v17 = sub_10007FAA0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_10007FAFC(v16);
        *buf = 138543362;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@Generated Broadcast key does not match", buf, 0xCu);
      }
    }

    v19 = self;
    v20 = sub_10007FAA0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = sub_10007FAFC(v19);
      v22 = [(_HAPAccessoryServerBTLE200 *)v19 securitySession];
      v23 = [v22 broadcastKey];
      *buf = 138544642;
      v30 = v21;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v4;
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

- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(HAPAccessoryServer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006E7B4;
      block[3] = &unk_100273748;
      block[4] = self;
      v13 = v6;
      v14 = v7;
      dispatch_async(v11, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedPlaintextData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServerBTLE:didReceivePlaintextPayload:forCharacteristic:"];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006E92C;
      block[3] = &unk_100273748;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServerBTLE:willSendEncryptedAndAuthenticatedPayload:forCharacteristic:"];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006EAA4;
      block[3] = &unk_100273748;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentPlaintextData:(id)a3 forCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self delegate];
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___HAPAccessoryServerDelegatePrivate])
  {
    v9 = [(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServerBTLE:willSendPlaintextPayload:forCharacteristic:"];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006EC1C;
      block[3] = &unk_100273748;
      block[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else
  {
  }
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 services];
  v9 = [v8 copy];

  v10 = self;
  v11 = sub_10007FAA0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = sub_10007FAFC(v10);
    *buf = 138543618;
    v23 = v12;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@Discovered CB services: %@", buf, 0x16u);
  }

  v13 = [(HAPAccessoryServer *)v10 clientQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006EE2C;
  v17[3] = &unk_100274460;
  v18 = v6;
  v19 = v10;
  v20 = v9;
  v21 = v7;
  v14 = v7;
  v15 = v9;
  v16 = v6;
  dispatch_async(v13, v17);
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EF58;
  block[3] = &unk_100273748;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F324;
  v15[3] = &unk_100274460;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F478;
  v15[3] = &unk_100274460;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F5CC;
  v15[3] = &unk_100274460;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F720;
  v15[3] = &unk_100274460;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006F874;
  v15[3] = &unk_100274460;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006FBB8;
  v15[3] = &unk_100274460;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)controlOutputStream:(id)a3 didReceiveRequestToSendControlPacket:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006FE5C;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)controlOutputStream:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007013C;
  v11[3] = &unk_100273370;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)controlOutputStreamDidComplete:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070254;
  block[3] = &unk_100273348;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)pairSetupSession:(id)a3 didReceiveSetupExchangeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070398;
  block[3] = &unk_100273748;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)pairSetupSession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4
{
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Request for local pairing identity", &v14, 0xCu);
  }

  v8 = [(HAPAccessoryServer *)v5 pairingRequest];
  v9 = [v8 pairingIdentity];
  if (v9)
  {
    v10 = v9;
LABEL_5:

    goto LABEL_7;
  }

  v11 = [(HAPAccessoryServer *)v5 keyBag];
  v10 = [v11 currentIdentity];

  if (!v10)
  {
    v8 = [(HAPAccessoryServer *)v5 keyStore];
    v13 = [(HAPAccessoryServer *)v5 identifier];
    v10 = [v8 readControllerPairingKeyForAccessory:v13 error:a4];

    goto LABEL_5;
  }

LABEL_7:

  return v10;
}

- (BOOL)pairSetupSession:(id)a3 didPairWithPeer:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = self;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_10007FAFC(v8);
    *buf = 138543618;
    v39 = v10;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Request to save pairing peer: %@", buf, 0x16u);
  }

  v11 = [v7 identifier];
  v12 = [(HAPAccessoryServer *)v8 identifier];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v14 = [v7 publicKey];
    v15 = [v14 data];

    v16 = [(HAPAccessoryServer *)v8 keyStore];
    v17 = [v7 identifier];
    v37 = 0;
    v18 = [v16 savePublicKey:v15 forAccessoryName:v17 error:&v37];
    v19 = v37;

    if (v18)
    {
      [(HAPAccessoryServer *)v8 associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v15];
      v36 = 0;
      v20 = [(HAPAccessoryServerBTLE *)v8 updatePeripheralIdentifier:&v36 isPairing:1];
      v21 = v36;
      if ((v20 & 1) == 0)
      {
        v22 = v8;
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

        if (a5)
        {
          v25 = v21;
          *a5 = v21;
        }
      }
    }

    else
    {
      v31 = v8;
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

      if (a5)
      {
        v34 = v19;
        v20 = 0;
        *a5 = v19;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v26 = v8;
    v27 = sub_10007FAA0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = sub_10007FAFC(v26);
      v29 = [v7 identifier];
      v30 = [(HAPAccessoryServer *)v26 identifier];
      *buf = 138543874;
      v39 = v28;
      v40 = 2112;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@The peer's identifier exchanged during Pair Setup, %@, does not match the identifier from the accessory's advertisement, %@", buf, 0x20u);
    }

    if (a5)
    {
      [NSError hapErrorWithcode:7 description:@"Pairing failed." reason:@"The peer's identifier does not match it's advertised identifier" suggestion:0 underlyingError:0];
      *a5 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (void)pairSetupSession:(id)a3 didStopWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070AEC;
  block[3] = &unk_100273748;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)pairSetupSession:(id)a3 didReceiveProductData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070C2C;
  block[3] = &unk_100273748;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)pairSetupSession:(id)a3 didReceiveSetupCodeRequestWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070D6C;
  block[3] = &unk_100273438;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100070F14;
  v7[3] = &unk_100273370;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)pairSetupSession:(id)a3 didReceiveBackoffRequestWithTimeInterval:(double)a4
{
  v6 = a3;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000710E0;
  block[3] = &unk_100274078;
  v11 = v6;
  v12 = self;
  v13 = a4;
  v8 = v6;
  dispatch_async(v7, block);

  return 0;
}

- (void)getAccessoryInfo:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000712E8;
  block[3] = &unk_1002744B0;
  v8 = v4;
  v9 = v10;
  block[4] = self;
  v6 = v4;
  dispatch_async(v5, block);

  _Block_object_dispose(v10, 8);
}

- (BOOL)_validateProtocolInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceIdentifer];
  v6 = [(HAPAccessoryServer *)self identifier];
  if (![v5 isEqualToString:v6])
  {
    goto LABEL_7;
  }

  v7 = [v4 categoryIdentifier];
  v8 = [(HAPAccessoryServer *)self category];
  if (v7 != [v8 unsignedShortValue] || (v9 = objc_msgSend(v4, "featureFlags"), v9 != -[_HAPAccessoryServerBTLE200 featureFlags](self, "featureFlags")))
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v4 protocolVersion];
  v11 = [v10 majorVersion];
  v12 = [(HAPAccessoryServer *)self version];
  v13 = [v12 majorVersion];

  if (v11 == v13)
  {
    v14 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v15 = self;
  v16 = sub_10007FAA0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = sub_10007FAFC(v15);
    v18 = [(HAPAccessoryServer *)v15 identifier];
    v19 = [(HAPAccessoryServer *)v15 category];
    v20 = [(HAPAccessoryServer *)v15 authMethod];
    v21 = [(HAPAccessoryServer *)v15 version];
    v23 = 138544642;
    v24 = v17;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    v31 = 2048;
    v32 = v20;
    v33 = 2112;
    v34 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated Info %@ does not match: identifier: %@, category: %@, authMethods: %tu version: %@", &v23, 0x3Eu);
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)authenticateAccessory
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071934;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  v4 = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10007FAFC(v4);
    v7 = sub_10001F978([(HAPAccessoryServer *)v4 authMethod]);
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current Auth Method %@", buf, 0x16u);
  }

  v8 = [(HAPAccessoryServer *)v4 clientQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100071AE0;
  v9[3] = &unk_1002734A8;
  v9[4] = v4;
  v10 = a3;
  dispatch_async(v8, v9);
}

- (void)provisionToken:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(v5);
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Provisioning Tokens T1: %@", buf, 0x16u);
  }

  v8 = [(HAPAccessoryServer *)v5 clientQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100071EF8;
  v10[3] = &unk_100273370;
  v10[4] = v5;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (void)tearDownSessionOnAuthCompletion
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071FD4;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)_notifyDelegatesPairingStopped:(id)a3
{
  v4 = a3;
  if ([(_HAPAccessoryServerBTLE200 *)self _delegateRespondsToSelector:"accessoryServer:didStopPairingWithError:"])
  {
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000721CC;
    v6[3] = &unk_100273370;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

- (void)authSession:(id)a3 sendAuthExchangeData:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000723AC;
  v8[3] = &unk_100273370;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)authSession:(id)a3 validateUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072930;
  v15[3] = &unk_100274460;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)authSession:(id)a3 authenticateUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072CB0;
  v15[3] = &unk_100274460;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)authSession:(id)a3 confirmUUID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072FD4;
  v15[3] = &unk_100274460;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)authSession:(id)a3 authComplete:(id)a4
{
  v5 = a4;
  v6 = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000732AC;
  v8[3] = &unk_100273370;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)submitPairVerifyMetricWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self metric_pairVerifyReason];
  if (v5)
  {
    v6 = v5;
    v7 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
    v8 = [v7 sessionStartTime];

    if (v8)
    {
      mach_absolute_time();
      v9 = UpTicksToMilliseconds();
      v10 = [(_HAPAccessoryServerBTLE200 *)self securitySession];
      -[HAPAccessoryServer setMetric_pairVerifyDurationInMS:](self, "setMetric_pairVerifyDurationInMS:", v9 - [v10 sessionStartTime]);

      v11.receiver = self;
      v11.super_class = _HAPAccessoryServerBTLE200;
      [(HAPAccessoryServer *)&v11 submitPairVerifyMetricWithError:v4];
    }
  }
}

- (id)securitySession:(id)a3 didReceiveLocalPairingIdentityRequestWithError:(id *)a4
{
  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(v5);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Request for local pairing identity", &v10, 0xCu);
  }

  v8 = [(_HAPAccessoryServerBTLE200 *)v5 getLocalPairingIdentityWithError:a4];

  return v8;
}

- (id)securitySession:(id)a3 didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self identifier];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(HAPAccessoryServer *)self keyStore];
    v24 = 0;
    v11 = [v10 readPublicKeyForAccessoryName:v7 registeredWithHomeKit:0 error:&v24];
    v12 = v24;

    if (v11)
    {
      v13 = [[HMFPairingKey alloc] initWithPairingKeyData:v11];
      v14 = [[HAPPairingIdentity alloc] initWithIdentifier:v7 publicKey:v13 privateKey:0 permissions:0];
      if (!v14)
      {
        v15 = self;
        v16 = sub_10007FAA0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = sub_10007FAFC(v15);
          *buf = 138543874;
          v26 = v17;
          v27 = 2112;
          v28 = v7;
          v29 = 2112;
          v30 = v11;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@Failed to create pairing identity with identififer, %@, public key, %@", buf, 0x20u);
        }

        if (a5)
        {
          *a5 = [NSError hapErrorWithcode:1 description:@"Failed to retrieve peer pairing identity." reason:@"Failed to create pairing identity" suggestion:0 underlyingError:0];
        }
      }
    }

    else
    {
      v13 = self;
      v21 = sub_10007FAA0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_10007FAFC(v13);
        *buf = 138543874;
        v26 = v22;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrived public key for accessory with identifier '%@' with error: %@", buf, 0x20u);
      }

      v14 = 0;
    }
  }

  else
  {
    v18 = self;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = sub_10007FAFC(v18);
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}@Unexpected pairing peer identifier, %@", buf, 0x16u);
    }

    if (a5)
    {
      [NSError hapErrorWithcode:16 description:@"Insufficient Authorization." reason:@"Unexpected pairing peer identifier." suggestion:0 underlyingError:0];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)securitySession:(id)a3 didReceiveSetupExchangeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073C9C;
  block[3] = &unk_100273748;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)securitySessionIsOpening:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073E44;
  v7[3] = &unk_100273370;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)securitySessionDidOpen:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073FE4;
  v7[3] = &unk_100273370;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)_shouldIgnoreRetryDiscoveryError:(id)a3
{
  v3 = a3;
  v4 = [v3 underlyingErrors];
  v5 = [v4 firstObject];

  v6 = (([v3 isHAPError] & 1) != 0 || objc_msgSend(v5, "isHAPError")) && (objc_msgSend(v3, "code") == 27 || objc_msgSend(v5, "code") == 27);
  return v6;
}

- (void)securitySession:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000742BC;
  block[3] = &unk_100273748;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(_HAPAccessoryServerBTLE200 *)self connectionIdleTimer];

  if (v6 == v4)
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
    v7 = [(_HAPAccessoryServerBTLE200 *)self pendingRequests];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v27 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 responseTimer];

          if (v13 == v4)
          {
            v14 = self;
            v15 = sub_10007FAA0();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = sub_10007FAFC(v14);
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

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v27 count:16];
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
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Disconnecting as a result of direct disconnect call", &v5, 0xCu);
  }

  [(_HAPAccessoryServerBTLE200 *)v2 disconnectWithCompletionHandler:0];
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

+ (BOOL)parseProtocolConfigurationResponse:(id)a3 key:(id *)a4 stateNumber:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 body];
  [v10 bytes];

  v11 = [v9 body];
  [v11 length];

  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  __s = 0;
  v12 = [v9 request];

  LODWORD(v9) = [v12 type];
  if (v9 == 8)
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
        *a4 = v20 = 0;
      }

      else
      {
        v20 = 4294960591;
      }

      v21 = a1;
      v22 = sub_10007FAA0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = sub_10007FAFC(v21);
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

      v24 = v21;
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

          if (a6)
          {
            v32 = v16;
            v17 = 0;
            *a6 = v16;
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

+ (BOOL)parseCharacteristicConfigurationResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 body];
  [v7 bytes];

  v8 = [v6 body];
  [v8 length];

  v23 = 0;
  v24 = 0;
  v22 = 0;
  v9 = [v6 request];

  LODWORD(v6) = [v9 type];
  if (v6 != 7)
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
      v14 = a1;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = sub_10007FAFC(v14);
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

  if (a4)
  {
    v18 = v12;
    v10 = 0;
    *a4 = v12;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:

  return v10;
}

@end