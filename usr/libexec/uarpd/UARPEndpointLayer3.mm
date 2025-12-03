@interface UARPEndpointLayer3
- (BOOL)assetSetData:(id)data offset:(unint64_t)offset asset:(id)asset;
- (BOOL)craftTatsuRequests:(id)requests;
- (BOOL)layer2CallbackSendMessage:(char *)message length:(unsigned int)length;
- (BOOL)needsDigest:(id)digest algorithm:(int64_t)algorithm componentTag:(id)tag objectDictionary:(id)dictionary ftabSubfile:(id)subfile digestKeyName:(id)name;
- (BOOL)startUARPLayer2:(id)layer2 configuration:(id)configuration infoProperties:(id)properties appleProperties:(id)appleProperties endpointID:(unsigned __int16)d upstreamEndpoint:(id)endpoint pcapDelegate:(id)delegate;
- (BOOL)startUARPLayer2Internal;
- (UARPEndpointLayer3)initWithUUID:(id)d transportTxDelegate:(id)delegate layer3Delegate:(id)layer3Delegate tmpFolderPath:(id)path;
- (id)assetGetBytes:(unint64_t)bytes offset:(unint64_t)offset asset:(id)asset;
- (id)description;
- (id)directConfiguration;
- (id)findComponentConfiguration:(id)configuration endpointConfig:(id)config;
- (id)findConfigurationForEndpointID:(unint64_t)d;
- (id)findMatchingAsset:(id)asset;
- (id)tlvNameForAppleProperty:(id)property;
- (unint64_t)hash;
- (unsigned)layer2CallbackApplyStagedAssets;
- (void)acceptLayer3Asset:(id)asset;
- (void)acceptLayer3Payload:(id)payload;
- (void)addBoardID:(unint64_t)d componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addChipID:(unint64_t)d componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addECID:(unint64_t)d componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addECIDData:(unint64_t)data componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addFTABGeneration:(unint64_t)generation payload:(id)payload componentTag:(id)tag defaultFTABGeneration:(id)bGeneration;
- (void)addNonce:(unint64_t)nonce componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addNonceSeed:(unint64_t)seed payload:(id)payload componentTag:(id)tag defaultNonceSeed:(id)nonceSeed;
- (void)addProductionMode:(unint64_t)mode componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addRealHdcpKeyPresent:(unint64_t)present componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addSecurityDomain:(unint64_t)domain componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addSecurityMode:(unint64_t)mode componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addSoCLiveNonce:(unint64_t)nonce componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)addUIDMode:(unint64_t)mode componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name;
- (void)applyStagedAssets;
- (void)assetCorrupt:(id)corrupt;
- (void)assetFullyStaged:(id)staged status:(unint64_t)status;
- (void)assetMetaDataComplete:(id)complete;
- (void)assetMetaDataProcessingError:(unint64_t)error asset:(id)asset;
- (void)assetMetaDataTLV:(id)v asset:(id)asset;
- (void)assetOrphan:(id)orphan;
- (void)assetPayloadData:(id)data offset:(unint64_t)offset asset:(id)asset;
- (void)assetPayloadDataComplete:(id)complete hash:(id)hash;
- (void)assetPayloadMetaDataComplete:(id)complete;
- (void)assetPayloadMetaDataProcessingError:(unint64_t)error asset:(id)asset;
- (void)assetPayloadMetaDataTLV:(id)v asset:(id)asset;
- (void)assetPayloadReady:(id)ready;
- (void)assetPreProcessing:(unint64_t)processing flagsDescription:(id)description asset:(id)asset;
- (void)assetPreProcessingAck:(id)ack;
- (void)assetProcessingCompleted:(unint64_t)completed flagsDescription:(id)description asset:(id)asset;
- (void)assetProcessingCompletedAck:(id)ack;
- (void)assetReady:(id)ready;
- (void)assetRelease:(id)release;
- (void)assetRescind:(id)rescind;
- (void)assetRescinded:(id)rescinded;
- (void)checkPropertyQueryComplete;
- (void)dealloc;
- (void)denyAsset:(id)asset denyReason:(unint64_t)reason;
- (void)discoverEndpointIDs;
- (void)downstreamEndpointAdd:(id)add;
- (void)downstreamEndpointReachable:(id)reachable downstreamEndpointID:(unsigned __int16)d;
- (void)downstreamEndpointRemove:(id)remove;
- (void)downstreamEndpointUnreachable:(id)unreachable downstreamEndpointID:(unsigned __int16)d;
- (void)firstLayer3Payload:(id)payload;
- (void)layer2CallbackActiveFirmwareVersionResponse:(id)response;
- (void)layer2CallbackApBoardIDResponse:(id)response;
- (void)layer2CallbackApChipIDResponse:(id)response;
- (void)layer2CallbackApProductionModeResponse:(id)response;
- (void)layer2CallbackApSecurityModeResponse:(id)response;
- (void)layer2CallbackAppleModelNumberResponse:(id)response;
- (void)layer2CallbackApplyStagedAssetsResponse:(unsigned __int16)response layer3Flags:(int64_t)flags;
- (void)layer2CallbackAssetSolicitation:(id)solicitation;
- (void)layer2CallbackBoardID32Response:(id)response;
- (void)layer2CallbackBoardID64Response:(id)response;
- (void)layer2CallbackBulkInfoQuery:(unsigned __int16)query componentTag:(id)tag infoProperties:(id)properties;
- (void)layer2CallbackBulkInfoResponse:(unsigned __int16)response componentTag:(id)tag tlvs:(id)tlvs;
- (void)layer2CallbackChipEpochResponse:(id)response;
- (void)layer2CallbackChipIDResponse:(id)response;
- (void)layer2CallbackChipRevisionResponse:(id)response;
- (void)layer2CallbackDiscoveredEndpointID:(unsigned __int16)d components:(id)components;
- (void)layer2CallbackDiscoveredEndpointIDs:(id)ds;
- (void)layer2CallbackDownstreamReachable:(unsigned __int16)reachable;
- (void)layer2CallbackDownstreamRecvMessage:(id)message uarpMsg:(id)msg;
- (void)layer2CallbackDownstreamUnreachable:(unsigned __int16)unreachable;
- (void)layer2CallbackEcidDataResponse:(id)response;
- (void)layer2CallbackEcidResponse:(id)response;
- (void)layer2CallbackEnableMixMatchResponse:(id)response;
- (void)layer2CallbackFriendlyNameResponse:(id)response;
- (void)layer2CallbackHardwareSpecificResponse:(id)response;
- (void)layer2CallbackHardwareVersionResponse:(id)response;
- (void)layer2CallbackHwFusingTypeResponse:(id)response;
- (void)layer2CallbackLifeResponse:(id)response;
- (void)layer2CallbackLogDebug:(int)debug logMsg:(id)msg;
- (void)layer2CallbackLogError:(int)error logMsg:(id)msg;
- (void)layer2CallbackLogFault:(int)fault logMsg:(id)msg;
- (void)layer2CallbackLogInfo:(int)info logMsg:(id)msg;
- (void)layer2CallbackLogicalUnitNumberResponse:(id)response;
- (void)layer2CallbackManifestEpochResponse:(id)response;
- (void)layer2CallbackManifestPrefixResponse:(id)response;
- (void)layer2CallbackManifestSuffixResponse:(id)response;
- (void)layer2CallbackManufacturerNameResponse:(id)response;
- (void)layer2CallbackModelNameResponse:(id)response;
- (void)layer2CallbackNonceResponse:(id)response;
- (void)layer2CallbackNonceSeedResponse:(id)response;
- (void)layer2CallbackPrefixNeedsLogicalUnitNumberResponse:(id)response;
- (void)layer2CallbackProductionModeResponse:(id)response;
- (void)layer2CallbackProtocolVersionSelected:(unint64_t)selected;
- (void)layer2CallbackProvisioningResponse:(id)response;
- (void)layer2CallbackRealHdcpKeyPresentResponse:(id)response;
- (void)layer2CallbackRequiresPersonalizationResponse:(id)response;
- (void)layer2CallbackRescindAllAssets;
- (void)layer2CallbackRescindedAllAssets;
- (void)layer2CallbackSecurityDomainResponse:(id)response;
- (void)layer2CallbackSecurityModeResponse:(id)response;
- (void)layer2CallbackSerialNumberResponse:(id)response;
- (void)layer2CallbackSocLiveNonceResponse:(id)response;
- (void)layer2CallbackSolicitedDynamicAssetOffered:(void *)offered asset:(id)asset;
- (void)layer2CallbackStagedFirmwareVersionResponse:(id)response;
- (void)layer2CallbackSuffixNeedsLogicalUnitNumberResponse:(id)response;
- (void)layer2CallbackSuperBinaryOffered:(void *)offered;
- (void)layer2CallbackTicketLongNameResponse:(id)response;
- (void)layer2CallbackUnsolicitedDynamicAssetOffered:(void *)offered assetTag:(id)tag;
- (void)layer2CallbackWatchdogSet:(unint64_t)set;
- (void)nextLayer3Payload:(id)payload;
- (void)notifyApplyStagedAssets;
- (void)notifyAssetOffered:(id)offered;
- (void)notifyAssetPersonalizationComplete:(id)complete status:(int64_t)status;
- (void)notifyAssetPersonalizationNeeded:(id)needed;
- (void)notifyAssetSolicited:(id)solicited;
- (void)notifyAssetStagingProgress:(id)progress bytesTransferred:(unint64_t)transferred assetLength:(unint64_t)length;
- (void)notifyEndpointAppliedStagedAssets:(int64_t)assets;
- (void)notifyEndpointAssetMetaDataComplete:(id)complete;
- (void)notifyEndpointPayloadData:(id)data payload:(id)payload offset:(unint64_t)offset payloadData:(id)payloadData;
- (void)notifyEndpointPayloadDataComplete:(id)complete payload:(id)payload;
- (void)notifyEndpointPayloadMetaDataComplete:(id)complete payload:(id)payload;
- (void)notifyEndpointReachable;
- (void)notifyEndpointRescindedStagedAssets;
- (void)notifyLayer2RxFirmwareFullyStaged:(id)staged;
- (void)notifyPayloadReady:(id)ready payload:(id)payload;
- (void)notifyRxDynamicAssetFullyStaged:(id)staged;
- (void)notifyRxFirmwareFullyStaged:(id)staged;
- (void)notifyTxDynamicAssetFullyStaged:(id)staged;
- (void)notifyTxFirmwareFullyStaged:(id)staged;
- (void)offerDynamicAsset:(id)asset fourCC:(id)c;
- (void)packetTracking:(id)tracking inFunction:(const char *)function;
- (void)personalizeFirmwareAssetComplete:(id)complete;
- (void)personalizeFirmwareSuperBinary:(id)binary tssServerURL:(id)l;
- (void)personalizeFirmwareSuperBinaryInternal:(id)internal tssServerURL:(id)l;
- (void)prepareBulkQueriesForPersonalization:(id)personalization;
- (void)prepareComponentBulkQueriesForPersonalization:(id)personalization component:(id)component;
- (void)prepareEndpointBulkQueriesForPersonalization:(id)personalization config:(id)config;
- (void)prepareQueriesForPersonalization:(id)personalization;
- (void)processOutstandingComponentInfoQueries:(id)queries infoProperties:(id)properties;
- (void)processOutstandingEndpointInfoQueries:(id)queries infoProperties:(id)properties;
- (void)processRespondedComponentInfoQueries:(id)queries tlvs:(id)tlvs;
- (void)processRespondedEndpointInfoQueries:(id)queries tlvs:(id)tlvs;
- (void)queryAppleProperty:(unsigned int)property;
- (void)queryInfoProperty:(unsigned int)property;
- (void)queryOutstandingEndpointIDComponentProperties:(id)properties;
- (void)queryOutstandingEndpointIDProperties:(id)properties;
- (void)rescindAssets;
- (void)selectLayer3Payload:(id)payload payloadIndex:(unint64_t)index;
- (void)sendMessageUpstream:(id)upstream fromDownstreamID:(unsigned __int16)d;
- (void)setupDefaultPropertyQueries;
- (void)setupPendingInfoQueries;
- (void)solicitDynamicAsset:(id)asset assetTag:(id)tag;
- (void)stageFirmwareSuperBinary:(id)binary tssServerURL:(id)l;
- (void)stopUARPLayer2;
- (void)uarpMessageRecvFromTransport:(id)transport;
- (void)uarpRouteRecvMessageToDownstreamEndpoint:(id)endpoint downstreamEndpointID:(unsigned __int16)d;
- (void)watchdogCancelOnQueue;
- (void)watchdogExpire;
@end

@implementation UARPEndpointLayer3

- (UARPEndpointLayer3)initWithUUID:(id)d transportTxDelegate:(id)delegate layer3Delegate:(id)layer3Delegate tmpFolderPath:(id)path
{
  dCopy = d;
  delegateCopy = delegate;
  layer3DelegateCopy = layer3Delegate;
  pathCopy = path;
  v43.receiver = self;
  v43.super_class = UARPEndpointLayer3;
  v15 = [(UARPEndpointLayer3 *)&v43 init];
  if (v15)
  {
    v16 = os_log_create("com.apple.uarp.layer3", "endpoint");
    log = v15->_log;
    v15->_log = v16;

    v15->_layer2LocalEndpoint = calloc(1uLL, 0x2C8uLL);
    v15->_layer2VendorExtension = calloc(1uLL, 0x218uLL);
    v15->_layer2RemoteEndpoint = calloc(1uLL, 0xA8uLL);
    objc_storeStrong(&v15->_transportTxDelegate, delegate);
    objc_storeStrong(&v15->_layer3Delegate, layer3Delegate);
    v18 = [pathCopy copy];
    tmpFolderPath = v15->_tmpFolderPath;
    v15->_tmpFolderPath = v18;

    objc_storeStrong(&v15->_uuid, d);
    v20 = dispatch_queue_create("com.apple.uarp.endpoint.layer3", 0);
    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v20;

    v22 = dispatch_queue_create("com.apple.uarp.endpoint.layer3.tss", 0);
    personalizationQueue = v15->_personalizationQueue;
    v15->_personalizationQueue = v22;

    v15->_uarpRole = 2;
    v24 = objc_opt_new();
    firmwareAssets = v15->_firmwareAssets;
    v15->_firmwareAssets = v24;

    v26 = objc_opt_new();
    personalizedAssets = v15->_personalizedAssets;
    v15->_personalizedAssets = v26;

    v28 = objc_opt_new();
    personalizingAssets = v15->_personalizingAssets;
    v15->_personalizingAssets = v28;

    v30 = objc_opt_new();
    rxDynamicAssets = v15->_rxDynamicAssets;
    v15->_rxDynamicAssets = v30;

    v32 = objc_opt_new();
    txDynamicAssets = v15->_txDynamicAssets;
    v15->_txDynamicAssets = v32;

    v34 = objc_opt_new();
    completedAssets = v15->_completedAssets;
    v15->_completedAssets = v34;

    v36 = objc_opt_new();
    downstreamEndpoints = v15->_downstreamEndpoints;
    v15->_downstreamEndpoints = v36;

    v38 = objc_opt_new();
    configurations = v15->_configurations;
    v15->_configurations = v38;

    v40 = objc_opt_new();
    pendingConfigurations = v15->_pendingConfigurations;
    v15->_pendingConfigurations = v40;

    *&v15->_debugDownstream = 0;
  }

  return v15;
}

- (void)dealloc
{
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  if (layer2WatchdogTimer)
  {
    dispatch_source_cancel(layer2WatchdogTimer);
    v4 = self->_layer2WatchdogTimer;
    self->_layer2WatchdogTimer = 0;
  }

  free(self->_layer2RemoteEndpoint);
  free(self->_layer2VendorExtension);
  free(self->_layer2LocalEndpoint);
  v5.receiver = self;
  v5.super_class = UARPEndpointLayer3;
  [(UARPEndpointLayer3 *)&v5 dealloc];
}

- (unint64_t)hash
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [uUIDString hash];

  return v3;
}

- (id)description
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [NSString stringWithFormat:@"UARPEndpointLayer3: %@", uUIDString];

  return v3;
}

- (void)packetTracking:(id)tracking inFunction:(const char *)function
{
  trackingCopy = tracking;
  v6 = trackingCopy;
  if (self->_debugPackets)
  {
    bytes = [trackingCopy bytes];
    v8 = uarpNtohs(*bytes);
    v9 = uarpNtohs(bytes[1]);
    v10 = uarpNtohs(bytes[2]);
    if ((self->_debugDataPackets || (v8 & 0xFFFE) != 6) && (self->_debugDownstream || (v8 - 27) >= 2u))
    {
      v11 = [NSString stringWithFormat:@"%s", uarpMessageTypeToString(v8)];
      v12 = objc_opt_new();
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      [v12 setObject:uUIDString forKeyedSubscript:@"Endpoint UUID"];

      v14 = [NSNumber numberWithUnsignedShort:self->_endpointID];
      [v12 setObject:v14 forKeyedSubscript:@"Endpoint ID"];

      upstreamEndpoint = self->_upstreamEndpoint;
      if (upstreamEndpoint)
      {
        v16 = [NSNumber numberWithUnsignedShort:[(UARPEndpointLayer3 *)upstreamEndpoint endpointID]];
        [v12 setObject:v16 forKeyedSubscript:@"Upstream Endpoint ID"];

        uuid = [(UARPEndpointLayer3 *)self->_upstreamEndpoint uuid];
        uUIDString2 = [uuid UUIDString];
        [v12 setObject:uUIDString2 forKeyedSubscript:@"Upstream Endpoint UUID"];
      }

      [v12 setObject:v11 forKeyedSubscript:@"Msg Name"];
      v19 = [NSNumber numberWithUnsignedShort:v8];
      [v12 setObject:v19 forKeyedSubscript:@"Msg Type"];

      v20 = [NSNumber numberWithUnsignedShort:v9];
      [v12 setObject:v20 forKeyedSubscript:@"Msg Payload Length"];

      v21 = [NSNumber numberWithUnsignedShort:v10];
      [v12 setObject:v21 forKeyedSubscript:@"Msg msgID"];

      if (v8 == 27)
      {
        v22 = [NSNumber numberWithUnsignedShort:uarpNtohs(bytes[3])];
        [v12 setObject:v22 forKeyedSubscript:@"Msg Downstream ID"];

        v23 = uarpNtohs(bytes[4]);
        v24 = uarpNtohs(bytes[5]);
        v25 = uarpNtohs(bytes[6]);
        v26 = [NSString stringWithFormat:@"%s", uarpMessageTypeToString(v23)];
        [v12 setObject:v26 forKeyedSubscript:@"Downstream Msg Name"];
        v27 = [NSNumber numberWithUnsignedShort:v23];
        [v12 setObject:v27 forKeyedSubscript:@"Downstream Msg Type"];

        v28 = [NSNumber numberWithUnsignedShort:v24];
        [v12 setObject:v28 forKeyedSubscript:@"Downstream Msg Payload Length"];

        v29 = [NSNumber numberWithUnsignedShort:v25];
        [v12 setObject:v29 forKeyedSubscript:@"Downstream Msg msgID"];
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B14();
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B50();
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B14();
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B8C();
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B14();
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B50();
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100083B14();
      }
    }
  }
}

- (BOOL)startUARPLayer2:(id)layer2 configuration:(id)configuration infoProperties:(id)properties appleProperties:(id)appleProperties endpointID:(unsigned __int16)d upstreamEndpoint:(id)endpoint pcapDelegate:(id)delegate
{
  layer2Copy = layer2;
  configurationCopy = configuration;
  propertiesCopy = properties;
  applePropertiesCopy = appleProperties;
  endpointCopy = endpoint;
  delegateCopy = delegate;
  self->_endpointID = d;
  p_upstreamEndpoint = &self->_upstreamEndpoint;
  objc_storeStrong(&self->_upstreamEndpoint, endpoint);
  objc_storeStrong(&self->_pcapDelegate, delegate);
  memset(__src, 0, 512);
  uarpEndpointSetupLayer2Callbacks(__src);
  memcpy(&self->_uarpCallbacks, __src, sizeof(self->_uarpCallbacks));
  memset(v65, 0, 512);
  uarpEndpointSetupLayer2AppleCallbacks(v65);
  memcpy(&self->_layer2VendorExtension->var4, v65, sizeof(self->_layer2VendorExtension->var4));
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  uarpEndpointSetupLayer2AssetCallbacks(&v51);
  v21 = v62;
  *&self->_layer2AssetCallbacks.fAssetPreProcessingNotification = v61;
  *&self->_layer2AssetCallbacks.fAssetAllHeadersAndMetaDataComplete = v21;
  v22 = v64;
  *&self->_layer2AssetCallbacks.fAssetGetBytesAtOffset = v63;
  *&self->_layer2AssetCallbacks.fAssetReleased = v22;
  v23 = v58;
  *&self->_layer2AssetCallbacks.fAssetSetBytesAtOffset2 = v57;
  *&self->_layer2AssetCallbacks.fAssetRescindedAck = v23;
  v24 = v60;
  *&self->_layer2AssetCallbacks.fAssetOrphaned = v59;
  *&self->_layer2AssetCallbacks.fAssetProcessingNotification2 = v24;
  v25 = v54;
  *&self->_layer2AssetCallbacks.fPayloadReady = v53;
  *&self->_layer2AssetCallbacks.fPayloadMetaDataComplete = v25;
  v26 = v56;
  *&self->_layer2AssetCallbacks.fPayloadData = v55;
  *&self->_layer2AssetCallbacks.fPayloadDataComplete2 = v26;
  v27 = v52;
  *&self->_layer2AssetCallbacks.fAssetReady = v51;
  *&self->_layer2AssetCallbacks.fAssetMetaDataComplete = v27;
  v28 = [[UARPEndpointPacketCapture alloc] initWithUUID:self->_uuid tmpFolderPath:self->_tmpFolderPath delegate:self->_pcapDelegate];
  packetCapture = self->_packetCapture;
  self->_packetCapture = v28;

  *&self->_uarpOptions.upgradeOnly = 0;
  *&self->_uarpOptions.maxTxPayloadLength = 0u;
  *&self->_uarpOptions.responseTimeout = 0u;
  self->_uarpOptions.maxTxPayloadLength = [layer2Copy maxTxPayloadLength];
  self->_uarpOptions.maxRxPayloadLength = [layer2Copy maxRxPayloadLength];
  self->_uarpOptions.payloadWindowLength = [layer2Copy payloadWindowLength];
  self->_uarpOptions.protocolVersion = [layer2Copy protocolVersion];
  self->_uarpOptions.reofferFirmwareOnSync = [layer2Copy reofferFirmwareOnSync];
  self->_uarpOptions.responseTimeout = [layer2Copy responseTimeout];
  self->_uarpOptions.retryLimit = [layer2Copy retryLimit];
  self->_uarpOptions.maxTransmitsInFlight = [layer2Copy maxTransmitsInFlight];
  self->_uarpOptions.endpointType = [layer2Copy endpointType];
  self->_uarpOptions.solicitationQueueDepth = [layer2Copy solicitationQueueDepth];
  self->_uarpOptions.txBufferOverhead = [layer2Copy txBufferOverhead];
  self->_uarpOptions.upgradeOnly = [layer2Copy upgradeOnly];
  *&self->_uarpOptions.numPreallocatedBuffers = [layer2Copy numPreallocatedBuffers];
  if (self->_uarpOptions.protocolVersion >= 6u)
  {
    self->_uarpOptions.supportsBulkInfoQueries = [layer2Copy supportsBulkInfoQueries];
    self->_uarpOptions.useHostPushModel = [layer2Copy useHostPushModel];
  }

  if (([layer2Copy isHostRole] & 1) == 0)
  {
    self->_uarpRole = 0;
  }

  if (configurationCopy)
  {
    v30 = [NSNumber numberWithUnsignedShort:0];
    [configurationCopy setEndpointID:v30];

    [(NSMutableArray *)self->_configurations addObject:configurationCopy];
  }

  if (propertiesCopy)
  {
    v31 = [propertiesCopy copy];
    defaultInfoProperties = self->_defaultInfoProperties;
    self->_defaultInfoProperties = v31;
  }

  if (applePropertiesCopy)
  {
    v33 = [applePropertiesCopy copy];
    defaultAppleProperties = self->_defaultAppleProperties;
    self->_defaultAppleProperties = v33;
  }

  if (*p_upstreamEndpoint)
  {
    [(UARPEndpointLayer3 *)*p_upstreamEndpoint downstreamEndpointAdd:self];
  }

  self->_layer3Ready = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100061B90;
  v45 = sub_100061BA0;
  v46 = dispatch_semaphore_create(0);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061BA8;
  block[3] = &unk_1000B9660;
  block[4] = self;
  block[5] = &v47;
  block[6] = &v41;
  dispatch_sync(internalQueue, block);
  dispatch_semaphore_wait(v42[5], 0xFFFFFFFFFFFFFFFFLL);
  v36 = *(v48 + 24);
  if (!v36 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100083C08();
  }

  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  return v36;
}

- (BOOL)startUARPLayer2Internal
{
  if (uarpPlatformEndpointInit2(self->_layer2LocalEndpoint, self, self->_uarpRole, &self->_uarpOptions, &self->_uarpCallbacks, self->_layer2VendorExtension))
  {
    log = self->_log;
    v4 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100083C48(log);
    goto LABEL_7;
  }

  if (uarpPlatformRemoteEndpointAdd(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint, &self->_uarpOptions, self))
  {
    v5 = self->_log;
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100083CD0(v5);
    goto LABEL_7;
  }

  if (self->_uarpRole)
  {
LABEL_9:
    LOBYTE(v4) = 1;
    return v4;
  }

  v32 = 0;
  if (uarpPlatformConfigureEndpointIDs(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint, 1u, &v32))
  {
    v6 = self->_log;
    v4 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100083D58(v6);
  }

  else
  {
    v7 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
    components = [v7 components];
    v9 = [components count];

    v10 = calloc(v9, 4uLL);
    v11 = v10;
    if (v9)
    {
      v12 = 0;
      v13 = v10 + 3;
      do
      {
        v14 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        components2 = [v14 components];
        v16 = [components2 objectAtIndexedSubscript:v12];
        componentTag = [v16 componentTag];
        *(v13 - 3) = [componentTag char1];

        v18 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        components3 = [v18 components];
        v20 = [components3 objectAtIndexedSubscript:v12];
        componentTag2 = [v20 componentTag];
        *(v13 - 2) = [componentTag2 char2];

        v22 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        components4 = [v22 components];
        v24 = [components4 objectAtIndexedSubscript:v12];
        componentTag3 = [v24 componentTag];
        *(v13 - 1) = [componentTag3 char3];

        v26 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        components5 = [v26 components];
        v28 = [components5 objectAtIndexedSubscript:v12];
        componentTag4 = [v28 componentTag];
        *v13 = [componentTag4 char4];
        v13 += 4;

        ++v12;
      }

      while (v9 != v12);
    }

    if (!uarpPlatformConfigureEndpointTags(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint, 0, v9, v11))
    {
      goto LABEL_9;
    }

    v30 = self->_log;
    v4 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    sub_100083DEC(v30);
  }

LABEL_7:
  LOBYTE(v4) = 0;
  return v4;
}

- (void)stopUARPLayer2
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061F84;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (id)directConfiguration
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    configurations = self->_configurations;
    v5 = log;
    *buf = 136315394;
    v28 = "[UARPEndpointLayer3 directConfiguration]";
    v29 = 2048;
    v30 = [(NSMutableArray *)configurations count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %lu configurations", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_configurations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 136315394;
    v21 = v8;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = self->_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v13;
          endpointID = [v12 endpointID];
          unsignedShortValue = [endpointID unsignedShortValue];
          *buf = v21;
          v28 = "[UARPEndpointLayer3 directConfiguration]";
          v29 = 2048;
          v30 = unsignedShortValue;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: configuration id is %lu", buf, 0x16u);
        }

        endpointID2 = [v12 endpointID];
        unsignedShortValue2 = [endpointID2 unsignedShortValue];

        if (!unsignedShortValue2)
        {
          v19 = v12;
          goto LABEL_15;
        }
      }

      v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_15:

  return v19;
}

- (void)setupDefaultPropertyQueries
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_configurations;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        outstandingInfoProperties = [v7 outstandingInfoProperties];
        [outstandingInfoProperties removeAllObjects];

        outstandingInfoProperties2 = [v7 outstandingInfoProperties];
        [outstandingInfoProperties2 addObjectsFromArray:self->_defaultInfoProperties];

        outstandingAppleProperties = [v7 outstandingAppleProperties];
        [outstandingAppleProperties removeAllObjects];

        outstandingAppleProperties2 = [v7 outstandingAppleProperties];
        [outstandingAppleProperties2 addObjectsFromArray:self->_defaultAppleProperties];

        if (self->_protocolVersion <= 6u)
        {
          outstandingAppleProperties3 = [v7 outstandingAppleProperties];
          [outstandingAppleProperties3 removeObject:&off_1000BE7D0];

          if (self->_protocolVersion <= 1u)
          {
            outstandingAppleProperties4 = [v7 outstandingAppleProperties];
            [outstandingAppleProperties4 removeObject:&off_1000BE7E8];
          }
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        outstandingInfoProperties3 = [v7 outstandingInfoProperties];
        v15 = [outstandingInfoProperties3 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(outstandingInfoProperties3);
              }

              -[UARPEndpointLayer3 queryInfoProperty:](self, "queryInfoProperty:", [*(*(&v31 + 1) + 8 * j) unsignedLongValue]);
            }

            v16 = [outstandingInfoProperties3 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v16);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        outstandingAppleProperties5 = [v7 outstandingAppleProperties];
        v20 = [outstandingAppleProperties5 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v28;
          do
          {
            for (k = 0; k != v21; k = k + 1)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(outstandingAppleProperties5);
              }

              -[UARPEndpointLayer3 queryAppleProperty:](self, "queryAppleProperty:", [*(*(&v27 + 1) + 8 * k) unsignedLongValue]);
            }

            v21 = [outstandingAppleProperties5 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v21);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v4);
  }

  if (![(NSArray *)self->_defaultInfoProperties count]&& ![(NSArray *)self->_defaultAppleProperties count])
  {
    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000625B8;
    block[3] = &unk_1000B8D08;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }
}

- (void)queryInfoProperty:(unsigned int)property
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062638;
  v4[3] = &unk_1000B9688;
  v4[4] = self;
  propertyCopy = property;
  dispatch_async(internalQueue, v4);
}

- (void)queryAppleProperty:(unsigned int)property
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062728;
  v4[3] = &unk_1000B9688;
  propertyCopy = property;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

- (void)checkPropertyQueryComplete
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062840;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)stageFirmwareSuperBinary:(id)binary tssServerURL:(id)l
{
  binaryCopy = binary;
  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000632F0;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = binaryCopy;
  v7 = binaryCopy;
  dispatch_async(internalQueue, v8);
}

- (void)offerDynamicAsset:(id)asset fourCC:(id)c
{
  assetCopy = asset;
  cCopy = c;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063560;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = assetCopy;
  v13 = cCopy;
  v9 = cCopy;
  v10 = assetCopy;
  dispatch_async(internalQueue, block);
}

- (void)personalizeFirmwareSuperBinary:(id)binary tssServerURL:(id)l
{
  binaryCopy = binary;
  lCopy = l;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063804;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = binaryCopy;
  v13 = lCopy;
  v9 = lCopy;
  v10 = binaryCopy;
  dispatch_async(internalQueue, block);
}

- (void)personalizeFirmwareSuperBinaryInternal:(id)internal tssServerURL:(id)l
{
  internalCopy = internal;
  personalizingAssets = self->_personalizingAssets;
  lCopy = l;
  [(NSMutableArray *)personalizingAssets addObject:internalCopy];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = log;
    uuid = [internalCopy uuid];
    uUIDString = [uuid UUIDString];
    v13 = 136315394;
    v14 = "[UARPEndpointLayer3 personalizeFirmwareSuperBinaryInternal:tssServerURL:]";
    v15 = 2112;
    v16 = uUIDString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Added Personalizing Asset - %@", &v13, 0x16u);
  }

  [internalCopy personalizationStatePrepare:lCopy endpoint:self];

  if (self->_supportsBulkInfoQueries)
  {
    [(UARPEndpointLayer3 *)self prepareBulkQueriesForPersonalization:internalCopy];
  }

  else
  {
    [(UARPEndpointLayer3 *)self prepareQueriesForPersonalization:internalCopy];
  }
}

- (void)personalizeFirmwareAssetComplete:(id)complete
{
  completeCopy = complete;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100063C04;
  v7[3] = &unk_1000B8A88;
  v8 = completeCopy;
  selfCopy = self;
  v6 = completeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetFullyStaged:(id)staged status:(unint64_t)status
{
  stagedCopy = staged;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063F0C;
  block[3] = &unk_1000B8BC8;
  selfCopy = self;
  statusCopy = status;
  v10 = stagedCopy;
  v8 = stagedCopy;
  dispatch_async(internalQueue, block);
}

- (void)applyStagedAssets
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064130;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)rescindAssets
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006425C;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)acceptLayer3Asset:(id)asset
{
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000643AC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(internalQueue, v7);
}

- (void)denyAsset:(id)asset denyReason:(unint64_t)reason
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064534;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)acceptLayer3Payload:(id)payload
{
  payloadCopy = payload;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064670;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(internalQueue, v7);
}

- (void)nextLayer3Payload:(id)payload
{
  payloadCopy = payload;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064820;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(internalQueue, v7);
}

- (void)firstLayer3Payload:(id)payload
{
  payloadCopy = payload;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006497C;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(internalQueue, v7);
}

- (void)selectLayer3Payload:(id)payload payloadIndex:(unint64_t)index
{
  payloadCopy = payload;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064A34;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = payloadCopy;
  indexCopy = index;
  v8 = payloadCopy;
  dispatch_async(internalQueue, block);
}

- (void)solicitDynamicAsset:(id)asset assetTag:(id)tag
{
  assetCopy = asset;
  tagCopy = tag;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064CB8;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = tagCopy;
  v13 = assetCopy;
  v9 = assetCopy;
  v10 = tagCopy;
  dispatch_async(internalQueue, block);
}

- (void)downstreamEndpointAdd:(id)add
{
  addCopy = add;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064F04;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = addCopy;
  v6 = addCopy;
  dispatch_async(internalQueue, v7);
}

- (void)downstreamEndpointRemove:(id)remove
{
  removeCopy = remove;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100065110;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = removeCopy;
  v6 = removeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)downstreamEndpointReachable:(id)reachable downstreamEndpointID:(unsigned __int16)d
{
  reachableCopy = reachable;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000651C4;
  block[3] = &unk_1000B8BA0;
  dCopy = d;
  block[4] = self;
  v10 = reachableCopy;
  v8 = reachableCopy;
  dispatch_async(internalQueue, block);
}

- (void)downstreamEndpointUnreachable:(id)unreachable downstreamEndpointID:(unsigned __int16)d
{
  unreachableCopy = unreachable;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006539C;
  block[3] = &unk_1000B8BA0;
  block[4] = self;
  v10 = unreachableCopy;
  dCopy = d;
  v8 = unreachableCopy;
  dispatch_async(internalQueue, block);
}

- (void)sendMessageUpstream:(id)upstream fromDownstreamID:(unsigned __int16)d
{
  upstreamCopy = upstream;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065540;
  block[3] = &unk_1000B8BA0;
  dCopy = d;
  block[4] = self;
  v10 = upstreamCopy;
  v8 = upstreamCopy;
  dispatch_async(internalQueue, block);
}

- (id)findMatchingAsset:(id)asset
{
  assetCopy = asset;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100061B90;
  v16 = sub_100061BA0;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000657B0;
  block[3] = &unk_1000B8AB0;
  block[4] = self;
  v10 = assetCopy;
  v11 = &v12;
  v6 = assetCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)discoverEndpointIDs
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065C80;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)uarpRouteRecvMessageToDownstreamEndpoint:(id)endpoint downstreamEndpointID:(unsigned __int16)d
{
  endpointCopy = endpoint;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065D8C;
  block[3] = &unk_1000B8BA0;
  block[4] = self;
  v10 = endpointCopy;
  dCopy = d;
  v8 = endpointCopy;
  dispatch_async(internalQueue, block);
}

- (void)queryOutstandingEndpointIDProperties:(id)properties
{
  propertiesCopy = properties;
  outstandingInfoProperties = [propertiesCopy outstandingInfoProperties];
  v6 = [outstandingInfoProperties count];

  v7 = calloc(v6, 4uLL);
  if (v6)
  {
    v8 = v7;
    for (i = 0; i != v6; ++i)
    {
      outstandingInfoProperties2 = [propertiesCopy outstandingInfoProperties];
      v11 = [outstandingInfoProperties2 objectAtIndexedSubscript:i];
      v8[i] = [v11 unsignedLongValue];
    }

    v25 = v8;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = propertiesCopy;
    outstandingInfoProperties3 = [propertiesCopy outstandingInfoProperties];
    v13 = [outstandingInfoProperties3 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(outstandingInfoProperties3);
          }

          v17 = *(*(&v27 + 1) + 8 * j);
          v18 = [UARPMetaData tlvNameForType:v17];
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v32 = "[UARPEndpointLayer3 queryOutstandingEndpointIDProperties:]";
            v33 = 2112;
            v34 = v18;
            v35 = 2112;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Query Bulk Info Property for endpoint configuration: %@ (%@)", buf, 0x20u);
          }
        }

        v14 = [outstandingInfoProperties3 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v14);
    }

    *buf = 0;
    layer2LocalEndpoint = self->_layer2LocalEndpoint;
    layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
    propertiesCopy = v26;
    endpointID = [v26 endpointID];
    LODWORD(layer2LocalEndpoint) = uarpPlatformEndpointBulkInfoQuery(layer2LocalEndpoint, layer2RemoteEndpoint, [endpointID unsignedShortValue], buf, v6, v25);

    free(v25);
    if (layer2LocalEndpoint)
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10008477C(v23);
      }
    }
  }

  else
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[UARPEndpointLayer3 queryOutstandingEndpointIDProperties:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: endpoint base has zero outstanding info properties", buf, 0xCu);
    }
  }
}

- (void)queryOutstandingEndpointIDComponentProperties:(id)properties
{
  propertiesCopy = properties;
  componentTag = [propertiesCopy componentTag];
  char1 = [componentTag char1];
  LOBYTE(v26) = char1;
  componentTag2 = [propertiesCopy componentTag];
  char2 = [componentTag2 char2];
  BYTE1(v26) = char2;
  componentTag3 = [propertiesCopy componentTag];
  char3 = [componentTag3 char3];
  BYTE2(v26) = char3;
  componentTag4 = [propertiesCopy componentTag];
  char4 = [componentTag4 char4];
  HIBYTE(v26) = char4;

  outstandingInfoProperties = [propertiesCopy outstandingInfoProperties];
  v14 = [outstandingInfoProperties count];

  log = self->_log;
  v16 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      *buf = 136316418;
      v28 = "[UARPEndpointLayer3 queryOutstandingEndpointIDComponentProperties:]";
      v29 = 1024;
      v30 = char1;
      v31 = 1024;
      v32 = char2;
      v33 = 1024;
      v34 = char3;
      v35 = 1024;
      v36 = char4;
      v37 = 1024;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %c%c%c%c has %d outstanding info properties", buf, 0x2Au);
    }

    v17 = calloc(v14, 4uLL);
    for (i = 0; i != v14; ++i)
    {
      outstandingInfoProperties2 = [propertiesCopy outstandingInfoProperties];
      v20 = [outstandingInfoProperties2 objectAtIndexedSubscript:i];
      v17[i] = [v20 unsignedLongValue];
    }

    layer2LocalEndpoint = self->_layer2LocalEndpoint;
    layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
    endpointID = [propertiesCopy endpointID];
    v24 = uarpPlatformEndpointBulkInfoQuery(layer2LocalEndpoint, layer2RemoteEndpoint, [endpointID unsignedShortValue], &v26, v14, v17);

    free(v17);
    if (v24)
    {
      v25 = self->_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100084810(v25);
      }
    }
  }

  else if (v16)
  {
    *buf = 136316162;
    v28 = "[UARPEndpointLayer3 queryOutstandingEndpointIDComponentProperties:]";
    v29 = 1024;
    v30 = char1;
    v31 = 1024;
    v32 = char2;
    v33 = 1024;
    v34 = char3;
    v35 = 1024;
    v36 = char4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %c%c%c%c has zero outstanding info properties", buf, 0x24u);
  }
}

- (void)setupPendingInfoQueries
{
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_configurations;
  v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v34)
  {
    v33 = *v44;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v43 + 1) + 8 * i);
        outstandingInfoProperties = [v4 outstandingInfoProperties];
        [outstandingInfoProperties removeAllObjects];

        outstandingInfoProperties2 = [v4 outstandingInfoProperties];
        [outstandingInfoProperties2 addObjectsFromArray:self->_defaultInfoProperties];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v7 = self->_defaultAppleProperties;
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v40;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v40 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v39 + 1) + 8 * j);
              if ([v12 unsignedLongValue] == 1)
              {
                v13 = 11;
              }

              else if ([v12 unsignedLongValue] == 2)
              {
                v13 = 10;
              }

              else
              {
                if ([v12 unsignedLongValue] != 34)
                {
                  continue;
                }

                v13 = 13;
              }

              outstandingInfoProperties3 = [v4 outstandingInfoProperties];
              v15 = [NSNumber numberWithUnsignedLong:v13];
              [outstandingInfoProperties3 addObject:v15];
            }

            v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v9);
        }

        if (self->_protocolVersion <= 6u)
        {
          outstandingInfoProperties4 = [v4 outstandingInfoProperties];
          [outstandingInfoProperties4 removeObject:&off_1000BE800];

          outstandingInfoProperties5 = [v4 outstandingInfoProperties];
          [outstandingInfoProperties5 removeObject:&off_1000BE818];

          if (self->_protocolVersion <= 5u)
          {
            outstandingInfoProperties6 = [v4 outstandingInfoProperties];
            [outstandingInfoProperties6 removeObject:&off_1000BE830];

            outstandingInfoProperties7 = [v4 outstandingInfoProperties];
            [outstandingInfoProperties7 removeObject:&off_1000BE848];

            if (self->_protocolVersion <= 2u)
            {
              outstandingInfoProperties8 = [v4 outstandingInfoProperties];
              [outstandingInfoProperties8 removeObject:&off_1000BE860];
            }
          }
        }

        [(UARPEndpointLayer3 *)self queryOutstandingEndpointIDProperties:v4];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        components = [v4 components];
        v22 = [components countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          do
          {
            for (k = 0; k != v23; k = k + 1)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(components);
              }

              v26 = *(*(&v35 + 1) + 8 * k);
              preflightInfoProperties = [v26 preflightInfoProperties];
              [preflightInfoProperties removeAllObjects];

              preflightInfoProperties2 = [v26 preflightInfoProperties];
              v29 = [NSNumber numberWithUnsignedLong:5];
              [preflightInfoProperties2 addObject:v29];

              preflightInfoProperties3 = [v26 preflightInfoProperties];
              v31 = [NSNumber numberWithUnsignedLong:6];
              [preflightInfoProperties3 addObject:v31];
            }

            v23 = [components countByEnumeratingWithState:&v35 objects:v47 count:16];
          }

          while (v23);
        }

        [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
      }

      v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v34);
  }
}

- (void)processOutstandingEndpointInfoQueries:(id)queries infoProperties:(id)properties
{
  queriesCopy = queries;
  propertiesCopy = properties;
  v83 = 0;
  v78 = calloc(0x1000uLL, 1uLL);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = propertiesCopy;
  v8 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (!v8)
  {
    goto LABEL_59;
  }

  v10 = v8;
  v11 = *v80;
  *&v9 = 136315394;
  v76 = v9;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v80 != v11)
      {
        objc_enumerationMutation(obj);
      }

      unsignedLongValue = [*(*(&v79 + 1) + 8 * v12) unsignedLongValue];
      v14 = unsignedLongValue;
      if (unsignedLongValue > 1)
      {
        if (unsignedLongValue > 5)
        {
          if (unsignedLongValue > 9)
          {
            switch(unsignedLongValue)
            {
              case 10:
                layer2LocalEndpoint = self->_layer2LocalEndpoint;
                layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
                hwFusingType = [queriesCopy hwFusingType];
                v18 = [hwFusingType length];
                hwFusingType2 = [queriesCopy hwFusingType];
                uTF8String = [hwFusingType2 UTF8String];
                v21 = layer2LocalEndpoint;
                v22 = layer2RemoteEndpoint;
                v23 = v78;
                v24 = 10;
                break;
              case 11:
                v50 = self->_layer2LocalEndpoint;
                v51 = self->_layer2RemoteEndpoint;
                hwFusingType = [queriesCopy appleModelNumber];
                v18 = [hwFusingType length];
                hwFusingType2 = [queriesCopy appleModelNumber];
                uTF8String = [hwFusingType2 UTF8String];
                v21 = v50;
                v22 = v51;
                v23 = v78;
                v24 = 11;
                break;
              case 13:
                v15 = self->_layer2LocalEndpoint;
                v16 = self->_layer2RemoteEndpoint;
                hwFusingType = [queriesCopy assetIdentifier];
                v18 = [hwFusingType length];
                hwFusingType2 = [queriesCopy assetIdentifier];
                uTF8String = [hwFusingType2 UTF8String];
                v21 = v15;
                v22 = v16;
                v23 = v78;
                v24 = 13;
                break;
              default:
                goto LABEL_53;
            }

            goto LABEL_46;
          }

          if (unsignedLongValue != 6)
          {
            if (unsignedLongValue != 9)
            {
LABEL_53:
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = v76;
                *&buf[4] = "[UARPEndpointLayer3 processOutstandingEndpointInfoQueries:infoProperties:]";
                *&buf[12] = 1024;
                *&buf[14] = v14;
                _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: unknown 0x%08x", buf, 0x12u);
              }

              goto LABEL_51;
            }

            v46 = self->_layer2LocalEndpoint;
            v47 = self->_layer2RemoteEndpoint;
            hwFusingType = [queriesCopy friendlyName];
            v18 = [hwFusingType length];
            hwFusingType2 = [queriesCopy friendlyName];
            uTF8String = [hwFusingType2 UTF8String];
            v21 = v46;
            v22 = v47;
            v23 = v78;
            v24 = 9;
            goto LABEL_46;
          }

          *buf = 0;
          *&buf[8] = 0;
          stagedFirmwareVersion = [queriesCopy stagedFirmwareVersion];
          *buf = [stagedFirmwareVersion majorVersion];

          stagedFirmwareVersion2 = [queriesCopy stagedFirmwareVersion];
          *&buf[4] = [stagedFirmwareVersion2 minorVersion];

          stagedFirmwareVersion3 = [queriesCopy stagedFirmwareVersion];
          *&buf[8] = [stagedFirmwareVersion3 releaseVersion];

          stagedFirmwareVersion4 = [queriesCopy stagedFirmwareVersion];
          *&buf[12] = [stagedFirmwareVersion4 buildVersion];

          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v38 = v78;
          v29 = 6;
          goto LABEL_49;
        }

        if (unsignedLongValue > 3)
        {
          if (unsignedLongValue != 4)
          {
            *buf = 0;
            *&buf[8] = 0;
            firmwareVersion = [queriesCopy firmwareVersion];
            *buf = [firmwareVersion majorVersion];

            firmwareVersion2 = [queriesCopy firmwareVersion];
            *&buf[4] = [firmwareVersion2 minorVersion];

            firmwareVersion3 = [queriesCopy firmwareVersion];
            *&buf[8] = [firmwareVersion3 releaseVersion];

            firmwareVersion4 = [queriesCopy firmwareVersion];
            *&buf[12] = [firmwareVersion4 buildVersion];

            v27 = self->_layer2LocalEndpoint;
            v28 = self->_layer2RemoteEndpoint;
            v38 = v78;
            v29 = 5;
LABEL_49:
            v58 = 16;
LABEL_50:
            if (uarpPlatformEndpointBulkInfoResponseAddTLV(v27, v28, v38, 4096, &v83, v29, v58, buf))
            {
LABEL_57:
              v70 = self->_log;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                sub_1000848A4(v70);
              }

              goto LABEL_59;
            }

            goto LABEL_51;
          }

          v48 = self->_layer2LocalEndpoint;
          v49 = self->_layer2RemoteEndpoint;
          hwFusingType = [queriesCopy hardwareVersion];
          v18 = [hwFusingType length];
          hwFusingType2 = [queriesCopy hardwareVersion];
          uTF8String = [hwFusingType2 UTF8String];
          v21 = v48;
          v22 = v49;
          v23 = v78;
          v24 = 4;
        }

        else
        {
          v30 = self->_layer2LocalEndpoint;
          v31 = self->_layer2RemoteEndpoint;
          if (unsignedLongValue == 2)
          {
            hwFusingType = [queriesCopy modelName];
            v18 = [hwFusingType length];
            hwFusingType2 = [queriesCopy modelName];
            uTF8String = [hwFusingType2 UTF8String];
            v21 = v30;
            v22 = v31;
            v23 = v78;
            v24 = 2;
          }

          else
          {
            hwFusingType = [queriesCopy serialNumber];
            v18 = [hwFusingType length];
            hwFusingType2 = [queriesCopy serialNumber];
            uTF8String = [hwFusingType2 UTF8String];
            v21 = v30;
            v22 = v31;
            v23 = v78;
            v24 = 3;
          }
        }

LABEL_46:
        v63 = uarpPlatformEndpointBulkInfoResponseAddTLV(v21, v22, v23, 4096, &v83, v24, v18, uTF8String);

        if (v63)
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

      if (unsignedLongValue <= -2001563384)
      {
        if (unsignedLongValue > -2001563387)
        {
          if (unsignedLongValue != -2001563386)
          {
            if (unsignedLongValue != -2001563385)
            {
              goto LABEL_53;
            }

            v39 = self->_layer2LocalEndpoint;
            v40 = self->_layer2RemoteEndpoint;
            hwFusingType = [queriesCopy nonce];
            v18 = [hwFusingType length];
            hwFusingType2 = [queriesCopy nonce];
            uTF8String = [hwFusingType2 bytes];
            v24 = -2001563385;
            v21 = v39;
            v22 = v40;
            v23 = v78;
            goto LABEL_46;
          }

          eCID = [queriesCopy ECID];
          unsignedLongLongValue = [eCID unsignedLongLongValue];

          *buf = unsignedLongLongValue;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v29 = -2001563386;
          v38 = v78;
          v58 = 8;
          goto LABEL_50;
        }

        if (unsignedLongValue == -2001563388)
        {
          boardID32 = [queriesCopy boardID32];
          unsignedLongValue2 = [boardID32 unsignedLongValue];

          *buf = unsignedLongValue2;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v38 = v78;
          v29 = -2001563388;
LABEL_44:
          v58 = 4;
          goto LABEL_50;
        }

        if (unsignedLongValue != -2001563387)
        {
          goto LABEL_53;
        }

        chipID = [queriesCopy chipID];
        unsignedLongValue3 = [chipID unsignedLongValue];

        *buf = unsignedLongValue3;
        v27 = self->_layer2LocalEndpoint;
        v28 = self->_layer2RemoteEndpoint;
        v29 = -2001563387;
LABEL_43:
        v38 = v78;
        goto LABEL_44;
      }

      if (unsignedLongValue <= -2001563382)
      {
        if (unsignedLongValue == -2001563383)
        {
          securityDomain = [queriesCopy securityDomain];
          unsignedLongValue4 = [securityDomain unsignedLongValue];

          *buf = unsignedLongValue4;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v29 = -2001563383;
        }

        else
        {
          securityMode = [queriesCopy securityMode];
          unsignedLongValue5 = [securityMode unsignedLongValue];

          *buf = unsignedLongValue5;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v29 = -2001563382;
        }

        goto LABEL_43;
      }

      if (unsignedLongValue == -2001563381)
      {
        productionMode = [queriesCopy productionMode];
        unsignedLongValue6 = [productionMode unsignedLongValue];

        *buf = unsignedLongValue6;
        v27 = self->_layer2LocalEndpoint;
        v28 = self->_layer2RemoteEndpoint;
        v29 = -2001563381;
        goto LABEL_43;
      }

      if (unsignedLongValue != 1)
      {
        goto LABEL_53;
      }

      v41 = self->_layer2LocalEndpoint;
      v42 = self->_layer2RemoteEndpoint;
      manufacturerName = [queriesCopy manufacturerName];
      v44 = [manufacturerName length];
      manufacturerName2 = [queriesCopy manufacturerName];
      LODWORD(v41) = uarpPlatformEndpointBulkInfoResponseAddTLV(v41, v42, v78, 4096, &v83, 1u, v44, [manufacturerName2 UTF8String]);

      if (v41)
      {
        goto LABEL_57;
      }

LABEL_51:
      v12 = v12 + 1;
    }

    while (v10 != v12);
    v69 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
    v10 = v69;
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_59:

  *buf = 0;
  v71 = self->_layer2LocalEndpoint;
  v72 = self->_layer2RemoteEndpoint;
  endpointID = [queriesCopy endpointID];
  unsignedShortValue = [endpointID unsignedShortValue];
  LODWORD(v71) = uarpPlatformEndpointBulkInfoResponse(v71, v72, unsignedShortValue, buf, v78, v83);

  if (v71)
  {
    v75 = self->_log;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_100084938(v75);
    }
  }

  free(v78);
}

- (void)processOutstandingComponentInfoQueries:(id)queries infoProperties:(id)properties
{
  queriesCopy = queries;
  propertiesCopy = properties;
  v76 = 0;
  v8 = calloc(0x1000uLL, 1uLL);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = propertiesCopy;
  v9 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (!v9)
  {
    goto LABEL_50;
  }

  v11 = v9;
  v12 = *v73;
  *&v10 = 136315394;
  v69 = v10;
  v70 = v8;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v73 != v12)
      {
        objc_enumerationMutation(obj);
      }

      unsignedLongValue = [*(*(&v72 + 1) + 8 * v13) unsignedLongValue];
      v15 = unsignedLongValue;
      if (unsignedLongValue > -2001563382)
      {
        if (unsignedLongValue <= -2001563338)
        {
          if (unsignedLongValue != -2001563381)
          {
            if (unsignedLongValue == -2001563379)
            {
              enableMixMatch = [queriesCopy enableMixMatch];
              unsignedLongLongValue = [enableMixMatch unsignedLongLongValue];

              buf[0] = unsignedLongLongValue;
              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v20 = -2001563379;
            }

            else
            {
              if (unsignedLongValue != -2001563368)
              {
                goto LABEL_44;
              }

              liveNonce = [queriesCopy liveNonce];
              unsignedLongLongValue2 = [liveNonce unsignedLongLongValue];

              buf[0] = unsignedLongLongValue2;
              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v20 = -2001563368;
            }

            v23 = v8;
            v24 = 1;
            goto LABEL_40;
          }

          productionMode = [queriesCopy productionMode];
          unsignedLongValue2 = [productionMode unsignedLongValue];

          *buf = unsignedLongValue2;
          layer2LocalEndpoint = self->_layer2LocalEndpoint;
          layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
          v20 = -2001563381;
        }

        else
        {
          if (unsignedLongValue > 4)
          {
            if (unsignedLongValue == 6)
            {
              *buf = 0;
              *&buf[8] = 0;
              stagedFirmwareVersion = [queriesCopy stagedFirmwareVersion];
              *buf = [stagedFirmwareVersion majorVersion];

              stagedFirmwareVersion2 = [queriesCopy stagedFirmwareVersion];
              *&buf[4] = [stagedFirmwareVersion2 minorVersion];

              stagedFirmwareVersion3 = [queriesCopy stagedFirmwareVersion];
              *&buf[8] = [stagedFirmwareVersion3 releaseVersion];

              stagedFirmwareVersion4 = [queriesCopy stagedFirmwareVersion];
              *&buf[12] = [stagedFirmwareVersion4 buildVersion];

              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v23 = v8;
              v20 = 6;
            }

            else
            {
              if (unsignedLongValue != 5)
              {
LABEL_44:
                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  *buf = v69;
                  *&buf[4] = "[UARPEndpointLayer3 processOutstandingComponentInfoQueries:infoProperties:]";
                  *&buf[12] = 1024;
                  *&buf[14] = v15;
                  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: unknown 0x%08x", buf, 0x12u);
                }

                goto LABEL_42;
              }

              *buf = 0;
              *&buf[8] = 0;
              firmwareVersion = [queriesCopy firmwareVersion];
              *buf = [firmwareVersion majorVersion];

              firmwareVersion2 = [queriesCopy firmwareVersion];
              *&buf[4] = [firmwareVersion2 minorVersion];

              firmwareVersion3 = [queriesCopy firmwareVersion];
              *&buf[8] = [firmwareVersion3 releaseVersion];

              firmwareVersion4 = [queriesCopy firmwareVersion];
              *&buf[12] = [firmwareVersion4 buildVersion];

              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v23 = v8;
              v20 = 5;
            }

            v24 = 16;
            goto LABEL_40;
          }

          if (unsignedLongValue == -2001563337)
          {
            v33 = self->_layer2LocalEndpoint;
            v34 = self->_layer2RemoteEndpoint;
            nonceSeed = [queriesCopy nonceSeed];
            v36 = [nonceSeed length];
            nonceSeed2 = [queriesCopy nonceSeed];
            v38 = uarpPlatformEndpointBulkInfoResponseAddTLV(v33, v34, v70, 4096, &v76, 0x88B29137, v36, [nonceSeed2 bytes]);

            v8 = v70;
            goto LABEL_41;
          }

          if (unsignedLongValue != -2001563335)
          {
            goto LABEL_44;
          }

          ftabGeneration = [queriesCopy ftabGeneration];
          unsignedLongLongValue3 = [ftabGeneration unsignedLongLongValue];

          *buf = unsignedLongLongValue3;
          layer2LocalEndpoint = self->_layer2LocalEndpoint;
          layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
          v20 = -2001563335;
        }

        goto LABEL_38;
      }

      if (unsignedLongValue > -2001563386)
      {
        switch(unsignedLongValue)
        {
          case -2001563385:
            v49 = self->_layer2LocalEndpoint;
            v50 = self->_layer2RemoteEndpoint;
            nonce = [queriesCopy nonce];
            v52 = [nonce length];
            nonce2 = [queriesCopy nonce];
            v38 = uarpPlatformEndpointBulkInfoResponseAddTLV(v49, v50, v70, 4096, &v76, 0x88B29107, v52, [nonce2 bytes]);

            v8 = v70;
            goto LABEL_41;
          case -2001563383:
            securityDomain = [queriesCopy securityDomain];
            unsignedLongValue3 = [securityDomain unsignedLongValue];

            *buf = unsignedLongValue3;
            layer2LocalEndpoint = self->_layer2LocalEndpoint;
            layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
            v20 = -2001563383;
            break;
          case -2001563382:
            securityMode = [queriesCopy securityMode];
            unsignedLongValue4 = [securityMode unsignedLongValue];

            *buf = unsignedLongValue4;
            layer2LocalEndpoint = self->_layer2LocalEndpoint;
            layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
            v20 = -2001563382;
            break;
          default:
            goto LABEL_44;
        }

LABEL_38:
        v23 = v8;
        goto LABEL_39;
      }

      if (unsignedLongValue != -2001563388)
      {
        if (unsignedLongValue != -2001563387)
        {
          if (unsignedLongValue != -2001563386)
          {
            goto LABEL_44;
          }

          eCID = [queriesCopy ECID];
          unsignedLongLongValue4 = [eCID unsignedLongLongValue];

          *buf = unsignedLongLongValue4;
          layer2LocalEndpoint = self->_layer2LocalEndpoint;
          layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
          v20 = -2001563386;
          v23 = v8;
          v24 = 8;
          goto LABEL_40;
        }

        chipID = [queriesCopy chipID];
        unsignedLongValue5 = [chipID unsignedLongValue];

        *buf = unsignedLongValue5;
        layer2LocalEndpoint = self->_layer2LocalEndpoint;
        layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
        v20 = -2001563387;
        goto LABEL_38;
      }

      boardID32 = [queriesCopy boardID32];
      unsignedLongValue6 = [boardID32 unsignedLongValue];

      *buf = unsignedLongValue6;
      layer2LocalEndpoint = self->_layer2LocalEndpoint;
      layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
      v23 = v8;
      v20 = -2001563388;
LABEL_39:
      v24 = 4;
LABEL_40:
      v38 = uarpPlatformEndpointBulkInfoResponseAddTLV(layer2LocalEndpoint, layer2RemoteEndpoint, v23, 4096, &v76, v20, v24, buf);
LABEL_41:
      if (v38)
      {
        v60 = self->_log;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_1000849CC(v60);
        }

        goto LABEL_50;
      }

LABEL_42:
      v13 = v13 + 1;
    }

    while (v11 != v13);
    v59 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
    v11 = v59;
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_50:

  componentTag = [queriesCopy componentTag];
  buf[0] = [componentTag char1];
  componentTag2 = [queriesCopy componentTag];
  buf[1] = [componentTag2 char2];
  componentTag3 = [queriesCopy componentTag];
  buf[2] = [componentTag3 char3];
  componentTag4 = [queriesCopy componentTag];
  buf[3] = [componentTag4 char4];

  v65 = self->_layer2LocalEndpoint;
  v66 = self->_layer2RemoteEndpoint;
  endpointID = [queriesCopy endpointID];
  unsignedShortValue = [endpointID unsignedShortValue];
  uarpPlatformEndpointBulkInfoResponse(v65, v66, unsignedShortValue, buf, v8, v76);

  free(v8);
}

- (void)processRespondedEndpointInfoQueries:(id)queries tlvs:(id)tlvs
{
  queriesCopy = queries;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = tlvs;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 136315650;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 tlvType]);
        v14 = [UARPMetaData tlvNameForType:v13];
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = v22;
          v29 = "[UARPEndpointLayer3 processRespondedEndpointInfoQueries:tlvs:]";
          v30 = 2112;
          v31 = v14;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Responded Bulk Info Property for endpoint configuration: %@ (%@)", buf, 0x20u);
        }

        outstandingInfoProperties = [queriesCopy outstandingInfoProperties];
        v17 = [outstandingInfoProperties containsObject:v13];

        if (v17)
        {
          outstandingInfoProperties2 = [queriesCopy outstandingInfoProperties];
          [outstandingInfoProperties2 removeObject:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            manufacturerName = [v12 manufacturerName];
            [queriesCopy setManufacturerName:manufacturerName];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              manufacturerName = [v12 modelName];
              [queriesCopy setModelName:manufacturerName];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                manufacturerName = [v12 serialNumber];
                [queriesCopy setSerialNumber:manufacturerName];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  manufacturerName = [v12 hardwareVersion];
                  [queriesCopy setHardwareVersion:manufacturerName];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    manufacturerName = [v12 firmwareVersion];
                    [queriesCopy setFirmwareVersion:manufacturerName];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      manufacturerName = [v12 firmwareVersion];
                      [queriesCopy setStagedFirmwareVersion:manufacturerName];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        manufacturerName = [v12 friendlyName];
                        [queriesCopy setFriendlyName:manufacturerName];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          manufacturerName = [v12 hardwareFusing];
                          [queriesCopy setHwFusingType:manufacturerName];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            manufacturerName = [v12 appleModelNumber];
                            [queriesCopy setAppleModelNumber:manufacturerName];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              manufacturerName = [v12 assetIdentifier];
                              [queriesCopy setAssetIdentifier:manufacturerName];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 boardID]);
                                [queriesCopy setBoardID32:manufacturerName];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipEpoch]);
                                  [queriesCopy setChipEpoch:manufacturerName];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipID]);
                                    [queriesCopy setChipID:manufacturerName];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipRevision]);
                                      [queriesCopy setChipRevision:manufacturerName];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        manufacturerName = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 ecID]);
                                        [queriesCopy setECID:manufacturerName];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          manufacturerName = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 enableMixMatch]);
                                          [queriesCopy setEnableMixMatch:manufacturerName];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            manufacturerName = [v12 nonce];
                                            v21 = [manufacturerName copy];
                                            [queriesCopy setNonce:v21];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 productionMode]);
                                              [queriesCopy setProductionMode:manufacturerName];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 realHdcpKeyPresent]);
                                                [queriesCopy setRealHdcpKeyPresent:manufacturerName];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityDomain]);
                                                  [queriesCopy setSecurityDomain:manufacturerName];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    manufacturerName = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityMode]);
                                                    [queriesCopy setSecurityMode:manufacturerName];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      goto LABEL_56;
                                                    }

                                                    manufacturerName = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 liveNonce]);
                                                    [queriesCopy setLiveNonce:manufacturerName];
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v20 = self->_log;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v29 = "[UARPEndpointLayer3 processRespondedEndpointInfoQueries:tlvs:]";
            v30 = 2112;
            v31 = v14;
            v32 = 2112;
            v33 = v13;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: outstandingInfoProperties does not contain %@ (%@), ignoring", buf, 0x20u);
          }
        }

LABEL_56:
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v9);
  }
}

- (void)processRespondedComponentInfoQueries:(id)queries tlvs:(id)tlvs
{
  queriesCopy = queries;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = tlvs;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v28;
    *&v8 = 136315906;
    v25 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 tlvType]);
        v14 = [UARPMetaData tlvNameForType:v13];
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v16 = log;
          componentTag = [queriesCopy componentTag];
          *buf = v25;
          v32 = "[UARPEndpointLayer3 processRespondedComponentInfoQueries:tlvs:]";
          v33 = 2112;
          v34 = v14;
          v35 = 2112;
          v36 = v13;
          v37 = 2112;
          v38 = componentTag;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Responded Bulk Info Property %@ (%@) for endpoint configuration %@", buf, 0x2Au);
        }

        outstandingInfoProperties = [queriesCopy outstandingInfoProperties];
        v19 = [outstandingInfoProperties containsObject:v13];

        if ((v19 & 1) == 0)
        {
          v22 = self->_log;
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          firmwareVersion = v22;
          componentTag2 = [queriesCopy componentTag];
          *buf = v25;
          v32 = "[UARPEndpointLayer3 processRespondedComponentInfoQueries:tlvs:]";
          v33 = 2112;
          v34 = componentTag2;
          v35 = 2112;
          v36 = v14;
          v37 = 2112;
          v38 = v13;
          _os_log_error_impl(&_mh_execute_header, firmwareVersion, OS_LOG_TYPE_ERROR, "%s: component %@ outstandingInfoProperties does not contain %@ (%@), ignoring", buf, 0x2Au);
LABEL_13:

LABEL_30:
          goto LABEL_31;
        }

        outstandingInfoProperties2 = [queriesCopy outstandingInfoProperties];
        [outstandingInfoProperties2 removeObject:v13];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = [v12 firmwareVersion];
          [queriesCopy setFirmwareVersion:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = [v12 firmwareVersion];
          [queriesCopy setStagedFirmwareVersion:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 boardID]);
          [queriesCopy setBoardID32:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipEpoch]);
          [queriesCopy setChipEpoch:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipID]);
          [queriesCopy setChipID:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipRevision]);
          [queriesCopy setChipRevision:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 ecID]);
          [queriesCopy setECID:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 enableMixMatch]);
          [queriesCopy setEnableMixMatch:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 ftabGeneration]);
          [queriesCopy setFtabGeneration:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = [v12 nonce];
          componentTag2 = [firmwareVersion copy];
          [queriesCopy setNonce:componentTag2];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = [v12 nonceSeed];
          componentTag2 = [firmwareVersion copy];
          [queriesCopy setNonceSeed:componentTag2];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 productionMode]);
          [queriesCopy setProductionMode:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 realHdcpKeyPresent]);
          [queriesCopy setRealHdcpKeyPresent:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityDomain]);
          [queriesCopy setSecurityDomain:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityMode]);
          [queriesCopy setSecurityMode:firmwareVersion];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firmwareVersion = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 liveNonce]);
          [queriesCopy setLiveNonce:firmwareVersion];
          goto LABEL_30;
        }

LABEL_31:

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v24 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      v9 = v24;
    }

    while (v24);
  }
}

- (void)prepareBulkQueriesForPersonalization:(id)personalization
{
  personalizationCopy = personalization;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UARPEndpointLayer3 *)self prepareEndpointBulkQueriesForPersonalization:personalizationCopy config:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)prepareEndpointBulkQueriesForPersonalization:(id)personalization config:(id)config
{
  personalizationCopy = personalization;
  configCopy = config;
  outstandingInfoProperties = [configCopy outstandingInfoProperties];
  [outstandingInfoProperties removeAllObjects];

  requiredPersonalizationOptions = [personalizationCopy requiredPersonalizationOptions];
  outstandingInfoProperties2 = [configCopy outstandingInfoProperties];
  [outstandingInfoProperties2 addObjectsFromArray:requiredPersonalizationOptions];

  [(UARPEndpointLayer3 *)self queryOutstandingEndpointIDProperties:configCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  components = [configCopy components];
  v12 = [components countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(components);
        }

        [(UARPEndpointLayer3 *)self prepareComponentBulkQueriesForPersonalization:personalizationCopy component:*(*(&v16 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [components countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)prepareComponentBulkQueriesForPersonalization:(id)personalization component:(id)component
{
  componentCopy = component;
  personalizationCopy = personalization;
  preflightInfoProperties = [componentCopy preflightInfoProperties];
  [preflightInfoProperties removeAllObjects];

  outstandingInfoProperties = [componentCopy outstandingInfoProperties];
  [outstandingInfoProperties removeAllObjects];

  componentTag = [componentCopy componentTag];
  v11 = [personalizationCopy requiredPersonalizationOptions:componentTag];

  preflightInfoProperties2 = [componentCopy preflightInfoProperties];

  [preflightInfoProperties2 addObjectsFromArray:v11];
}

- (void)prepareQueriesForPersonalization:(id)personalization
{
  personalizationCopy = personalization;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (!v6)
  {
    v13 = v5;
    goto LABEL_84;
  }

  v7 = v6;
  selfCopy = self;
  v52 = personalizationCopy;
  v8 = *v76;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v76 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v75 + 1) + 8 * v9);
    endpointID = [v10 endpointID];
    unsignedShortValue = [endpointID unsignedShortValue];

    if (!unsignedShortValue)
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (!v7)
      {
        v13 = v5;
        goto LABEL_82;
      }

      goto LABEL_3;
    }
  }

  v13 = v10;

  personalizationCopy = v52;
  if (!v13)
  {
    goto LABEL_85;
  }

  [v52 tatsuTickets];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v74 = 0u;
  v55 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (!v55)
  {
    goto LABEL_72;
  }

  v54 = *v72;
  do
  {
    v14 = 0;
    do
    {
      if (*v72 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v71 + 1) + 8 * v14);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v56 = v15;
      v57 = v14;
      manifestProperties = [v15 manifestProperties];
      v17 = [manifestProperties countByEnumeratingWithState:&v67 objects:v81 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v68;
        do
        {
          v20 = 0;
          do
          {
            if (*v68 != v19)
            {
              objc_enumerationMutation(manifestProperties);
            }

            v21 = *(*(&v67 + 1) + 8 * v20);
            if ([v21 infoProperty] == -2001563388)
            {
              outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
              propertyValue2 = outstandingAppleProperties;
              v24 = &off_1000BE878;
LABEL_29:
              [outstandingAppleProperties addObject:v24];
              goto LABEL_30;
            }

            if ([v21 infoProperty] == -2001563387)
            {
              outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
              propertyValue2 = outstandingAppleProperties;
              v24 = &off_1000BE890;
              goto LABEL_29;
            }

            if ([v21 infoProperty] == -2001563386)
            {
              outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
              propertyValue2 = outstandingAppleProperties;
              v24 = &off_1000BE8A8;
              goto LABEL_29;
            }

            if ([v21 infoProperty] == -2001563339)
            {
              outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
              propertyValue2 = outstandingAppleProperties;
              v24 = &off_1000BE8C0;
              goto LABEL_29;
            }

            if ([v21 infoProperty] == -2001563333)
            {
              propertyValue = [v21 propertyValue];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                propertyValue2 = [v21 propertyValue];
                v27 = [propertyValue2 copy];
                [(NSMutableArray *)v13 setEnableFutureFWVersion:v27];
                goto LABEL_39;
              }
            }

            else
            {
              if ([v21 infoProperty] == -2001563385)
              {
                propertyValue3 = [v21 propertyValue];
                objc_opt_class();
                v29 = objc_opt_isKindOfClass();

                if (v29)
                {
                  propertyValue2 = [v21 propertyValue];
                  v27 = [propertyValue2 copy];
                  [(NSMutableArray *)v13 setNonce:v27];
                  goto LABEL_39;
                }

                outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
                propertyValue2 = outstandingAppleProperties;
                v24 = &off_1000BE8D8;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563381)
              {
                outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
                propertyValue2 = outstandingAppleProperties;
                v24 = &off_1000BE830;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563336)
              {
                outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
                propertyValue2 = outstandingAppleProperties;
                v24 = &off_1000BE8F0;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563383)
              {
                outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
                propertyValue2 = outstandingAppleProperties;
                v24 = &off_1000BE908;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563382)
              {
                outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
                propertyValue2 = outstandingAppleProperties;
                v24 = &off_1000BE860;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563368)
              {
                outstandingAppleProperties = [(NSMutableArray *)v13 outstandingAppleProperties];
                propertyValue2 = outstandingAppleProperties;
                v24 = &off_1000BE818;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563334)
              {
                propertyValue4 = [v21 propertyValue];
                objc_opt_class();
                v31 = objc_opt_isKindOfClass();

                if (v31)
                {
                  propertyValue2 = [v21 propertyValue];
                  v27 = [propertyValue2 copy];
                  [(NSMutableArray *)v13 setUidMode:v27];
LABEL_39:

LABEL_30:
                }
              }
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v32 = [manifestProperties countByEnumeratingWithState:&v67 objects:v81 count:16];
          v18 = v32;
        }

        while (v32);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      ftabProperties = [v56 ftabProperties];
      v34 = [ftabProperties countByEnumeratingWithState:&v63 objects:v80 count:16];
      if (!v34)
      {
        goto LABEL_70;
      }

      v35 = v34;
      v36 = *v64;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v64 != v36)
          {
            objc_enumerationMutation(ftabProperties);
          }

          v38 = *(*(&v63 + 1) + 8 * i);
          if ([v38 infoProperty] != -2001563337)
          {
            if ([v38 infoProperty] != -2001563335)
            {
              continue;
            }

            outstandingAppleProperties2 = [(NSMutableArray *)v13 outstandingAppleProperties];
            propertyValue6 = outstandingAppleProperties2;
            v44 = &off_1000BE938;
            goto LABEL_66;
          }

          propertyValue5 = [v38 propertyValue];
          objc_opt_class();
          v40 = objc_opt_isKindOfClass();

          if ((v40 & 1) == 0)
          {
            outstandingAppleProperties2 = [(NSMutableArray *)v13 outstandingAppleProperties];
            propertyValue6 = outstandingAppleProperties2;
            v44 = &off_1000BE920;
LABEL_66:
            [outstandingAppleProperties2 addObject:v44];
            goto LABEL_67;
          }

          propertyValue6 = [v38 propertyValue];
          v42 = [propertyValue6 copy];
          [(NSMutableArray *)v13 setNonceSeed:v42];

LABEL_67:
        }

        v35 = [ftabProperties countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v35);
LABEL_70:

      v14 = v57 + 1;
    }

    while ((v57 + 1) != v55);
    v55 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
  }

  while (v55);
LABEL_72:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  outstandingAppleProperties3 = [(NSMutableArray *)v13 outstandingAppleProperties];
  v46 = [outstandingAppleProperties3 countByEnumeratingWithState:&v59 objects:v79 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v60;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(outstandingAppleProperties3);
        }

        -[UARPEndpointLayer3 queryAppleProperty:](selfCopy, "queryAppleProperty:", [*(*(&v59 + 1) + 8 * j) unsignedLongValue]);
      }

      v47 = [outstandingAppleProperties3 countByEnumeratingWithState:&v59 objects:v79 count:16];
    }

    while (v47);
  }

  if ([(NSArray *)selfCopy->_defaultAppleProperties count])
  {
    internalQueue = selfCopy->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006965C;
    block[3] = &unk_1000B8D08;
    block[4] = selfCopy;
    dispatch_async(internalQueue, block);
  }

LABEL_82:
  personalizationCopy = v52;
LABEL_84:

LABEL_85:
}

- (BOOL)craftTatsuRequests:(id)requests
{
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  requestsCopy = requests;
  tatsuTickets = [requestsCopy tatsuTickets];
  v5 = [tatsuTickets countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (!v5)
  {
    v86 = 1;
    goto LABEL_116;
  }

  v6 = v5;
  v7 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
  v8 = *v113;
  v90 = tatsuTickets;
  v88 = *v113;
LABEL_3:
  v9 = 0;
  v89 = v6;
  while (1)
  {
    if (*v113 != v8)
    {
      objc_enumerationMutation(tatsuTickets);
    }

    v92 = v9;
    v10 = *(*(&v112 + 1) + 8 * v9);
    v98 = objc_opt_new();
    manifestLocation = [(UARPEndpointLayer3 *)v10 manifestLocation];
    componentTag = [manifestLocation componentTag];

    if (!componentTag)
    {
      break;
    }

    v13 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:0];
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      manifestLocation2 = [(UARPEndpointLayer3 *)v10 manifestLocation];
      componentTag2 = [manifestLocation2 componentTag];
      v18 = [(UARPEndpointLayer3 *)self findComponentConfiguration:componentTag2 endpointConfig:v14];

      if (v18)
      {

        v10 = v15;
        v7 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
        break;
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v83 = log;
        manifestLocation3 = [(UARPEndpointLayer3 *)v15 manifestLocation];
        componentTag3 = [manifestLocation3 componentTag];
        *buf = 136315650;
        v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
        v121 = 2112;
        selfCopy2 = self;
        v123 = 2112;
        v124 = componentTag3;
        _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%s: cannot find component %@ for tatsu ticket; %@", buf, 0x20u);
      }

      v41 = v92;
      v42 = v98;
      v7 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
    }

    else
    {
      v40 = self->_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
        v121 = 2112;
        selfCopy2 = self;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s: cannot find endpoint for tatsu ticket; %@", buf, 0x16u);
      }

      v41 = v92;
      v42 = v98;
    }

LABEL_109:

    v9 = v41 + 1;
    if (v9 == v6)
    {
      v6 = [tatsuTickets countByEnumeratingWithState:&v112 objects:v125 count:16];
      v86 = 1;
      if (!v6)
      {
        goto LABEL_116;
      }

      goto LABEL_3;
    }
  }

  v19 = v7[271];
  ticketName = [(UARPEndpointLayer3 *)v10 ticketName];
  v21 = [v19 stringWithFormat:@"@%@", ticketName];

  v22 = v98;
  v91 = v21;
  [v98 setObject:&__kCFBooleanTrue forKeyedSubscript:v21];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v93 = v10;
  manifestProperties = [(UARPEndpointLayer3 *)v10 manifestProperties];
  v24 = [manifestProperties countByEnumeratingWithState:&v108 objects:v118 count:16];
  if (!v24)
  {
    v95 = 0;
    v97 = 0;
    goto LABEL_54;
  }

  v25 = v24;
  v95 = 0;
  v97 = 0;
  v26 = *v109;
  do
  {
    v27 = 0;
    do
    {
      if (*v109 != v26)
      {
        objc_enumerationMutation(manifestProperties);
      }

      v28 = *(*(&v108 + 1) + 8 * v27);
      componentTag4 = [v28 componentTag];
      v30 = componentTag4;
      if (!self->_supportsBulkInfoQueries)
      {

        v30 = 0;
      }

      if ([v28 infoProperty] == -2001563388)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addBoardID:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563387)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addChipID:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563386)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addECID:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563333)
      {
        goto LABEL_24;
      }

      if ([v28 infoProperty] == -2001563385)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addNonce:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563381)
      {
        keyName2 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addProductionMode:0 componentTag:v30 tatsuTicket:v22 keyName:keyName2];

        keyName = [v28 keyName];
        v36 = [v22 objectForKeyedSubscript:keyName];

        v97 = v36;
        goto LABEL_33;
      }

      if ([v28 infoProperty] == -2001563336)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addRealHdcpKeyPresent:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563383)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addSecurityDomain:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563382)
      {
        keyName3 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addSecurityMode:0 componentTag:v30 tatsuTicket:v22 keyName:keyName3];

        keyName = [v28 keyName];
        v38 = [v22 objectForKeyedSubscript:keyName];

        v95 = v38;
LABEL_33:
        v22 = v98;
LABEL_38:

        goto LABEL_39;
      }

      if ([v28 infoProperty] == -2001563368)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addSoCLiveNonce:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563334)
      {
LABEL_24:
        keyName = [v28 propertyValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([keyName BOOLValue])
          {
            v32 = &__kCFBooleanTrue;
          }

          else
          {
            v32 = &__kCFBooleanFalse;
          }

          keyName4 = [v28 keyName];
          v34 = v32;
          v22 = v98;
          [v98 setObject:v34 forKeyedSubscript:keyName4];
        }

        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563339)
      {
        keyName = [v28 keyName];
        [(UARPEndpointLayer3 *)self addECIDData:0 componentTag:v30 tatsuTicket:v22 keyName:keyName];
        goto LABEL_38;
      }

LABEL_39:

      v27 = v27 + 1;
    }

    while (v25 != v27);
    v39 = [manifestProperties countByEnumeratingWithState:&v108 objects:v118 count:16];
    v25 = v39;
  }

  while (v39);
LABEL_54:

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = [(UARPEndpointLayer3 *)v93 objectProperties];
  v43 = [obj countByEnumeratingWithState:&v104 objects:v117 count:16];
  if (!v43)
  {
    goto LABEL_87;
  }

  v44 = v43;
  v96 = *v105;
LABEL_56:
  v45 = 0;
  while (1)
  {
    if (*v105 != v96)
    {
      objc_enumerationMutation(obj);
    }

    v46 = *(*(&v104 + 1) + 8 * v45);
    v47 = objc_opt_new();
    if ([v46 needsEPRO])
    {
      if ([v97 BOOLValue])
      {
        v48 = &__kCFBooleanTrue;
      }

      else
      {
        v48 = &__kCFBooleanFalse;
      }

      [v47 setObject:v48 forKeyedSubscript:@"EPRO"];
    }

    if ([v46 needsESEC])
    {
      if ([v95 BOOLValue])
      {
        v49 = &__kCFBooleanTrue;
      }

      else
      {
        v49 = &__kCFBooleanFalse;
      }

      [v47 setObject:v49 forKeyedSubscript:@"ESEC"];
    }

    if ([v46 needsTrusted])
    {
      [v47 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Trusted"];
    }

    if ([v46 needsSHA256])
    {
      v50 = 1;
      goto LABEL_77;
    }

    if ([v46 needsSHA384])
    {
      v50 = 2;
      goto LABEL_77;
    }

    if ([v46 needsSHA512])
    {
      break;
    }

LABEL_78:
    keyName5 = [v46 keyName];
    v56 = [v22 objectForKeyedSubscript:keyName5];

    if (v56)
    {
      [v56 addEntriesFromDictionary:v47];
      keyName6 = [v46 keyName];
      v58 = v22;
      v59 = v56;
    }

    else
    {
      keyName6 = [v46 keyName];
      v58 = v22;
      v59 = v47;
    }

    [v58 setObject:v59 forKeyedSubscript:keyName6];

LABEL_85:
    if (v44 == ++v45)
    {
      v44 = [obj countByEnumeratingWithState:&v104 objects:v117 count:16];
      if (v44)
      {
        goto LABEL_56;
      }

LABEL_87:

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      ftabProperties = [(UARPEndpointLayer3 *)v93 ftabProperties];
      v68 = [ftabProperties countByEnumeratingWithState:&v100 objects:v116 count:16];
      if (!v68)
      {
        goto LABEL_101;
      }

      v69 = v68;
      v70 = *v101;
      while (2)
      {
        v71 = 0;
LABEL_90:
        if (*v101 != v70)
        {
          objc_enumerationMutation(ftabProperties);
        }

        v72 = *(*(&v100 + 1) + 8 * v71);
        componentTag5 = [v72 componentTag];
        v74 = [requestsCopy payloadWith4cc:componentTag5];

        componentTag6 = [v72 componentTag];
        v76 = componentTag6;
        if (!self->_supportsBulkInfoQueries)
        {

          v76 = 0;
        }

        if ([v72 infoProperty] == -2001563337)
        {
          propertyValue = [v72 propertyValue];
          [(UARPEndpointLayer3 *)self addNonceSeed:0 payload:v74 componentTag:v76 defaultNonceSeed:propertyValue];
          goto LABEL_98;
        }

        if ([v72 infoProperty] == -2001563335)
        {
          propertyValue = [v72 propertyValue];
          [(UARPEndpointLayer3 *)self addFTABGeneration:0 payload:v74 componentTag:v76 defaultFTABGeneration:propertyValue];
LABEL_98:
        }

        if (v69 == ++v71)
        {
          v69 = [ftabProperties countByEnumeratingWithState:&v100 objects:v116 count:16];
          if (!v69)
          {
LABEL_101:

            [(UARPEndpointLayer3 *)v93 setTatsuRequest:v98];
            v78 = self->_log;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
              v121 = 2112;
              selfCopy2 = v93;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s: Tatsu Ticket %@", buf, 0x16u);
            }

            v79 = self->_log;
            v6 = v89;
            tatsuTickets = v90;
            v7 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
            v8 = v88;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v80 = v79;
              tatsuRequest = [(UARPEndpointLayer3 *)v93 tatsuRequest];
              *buf = 136315394;
              v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
              v121 = 2112;
              selfCopy2 = tatsuRequest;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "%s: Tatsu Request for ticket %@", buf, 0x16u);
            }

            v42 = v97;
            v41 = v92;
            goto LABEL_109;
          }

          continue;
        }

        goto LABEL_90;
      }
    }
  }

  v50 = 3;
LABEL_77:
  componentTag7 = [v46 componentTag];
  ftabSubfile = [v46 ftabSubfile];
  digestKeyName = [v46 digestKeyName];
  v54 = [(UARPEndpointLayer3 *)self needsDigest:requestsCopy algorithm:v50 componentTag:componentTag7 objectDictionary:v47 ftabSubfile:ftabSubfile digestKeyName:digestKeyName];

  v22 = v98;
  if (v54)
  {
    goto LABEL_78;
  }

  ftabSubfile2 = [v46 ftabSubfile];

  v61 = self->_log;
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
  if (ftabSubfile2)
  {
    if (v62)
    {
      v63 = v61;
      ftabSubfile3 = [v46 ftabSubfile];
      componentTag8 = [v46 componentTag];
      tagString = [componentTag8 tagString];
      *buf = 136315650;
      v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
      v121 = 2112;
      selfCopy2 = ftabSubfile3;
      v123 = 2112;
      v124 = tagString;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%s: Could not find subfile %@ in %@ to take measurement; let tatsu fail this", buf, 0x20u);

      v22 = v98;
    }

    goto LABEL_85;
  }

  if (v62)
  {
    sub_100084A60(v61);
  }

  v86 = 0;
  tatsuTickets = v90;
LABEL_116:

  return v86;
}

- (id)findConfigurationForEndpointID:(unint64_t)d
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_configurations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v9 endpointID];
        unsignedIntegerValue = [endpointID unsignedIntegerValue];

        if (unsignedIntegerValue == d)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)findComponentConfiguration:(id)configuration endpointConfig:(id)config
{
  configurationCopy = configuration;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  components = [config components];
  v7 = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(components);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        componentTag = [v10 componentTag];
        v12 = [componentTag isEqual:configurationCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)addBoardID:(unint64_t)d componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:d];
  v13 = v12;
  if (v12)
  {
    if (!tagCopy)
    {
      boardID32 = [v12 boardID32];

      if (boardID32)
      {
        boardID322 = [v13 boardID32];
      }

      else
      {
        boardID64 = [v13 boardID64];

        if (!boardID64)
        {
          goto LABEL_14;
        }

        boardID322 = [v13 boardID64];
      }

      v14 = boardID322;
      [ticketCopy setObject:boardID322 forKeyedSubscript:nameCopy];
      goto LABEL_13;
    }

    v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
    boardID323 = [v14 boardID32];

    if (boardID323)
    {
      boardID324 = [v14 boardID32];
    }

    else
    {
      boardID642 = [v14 boardID64];

      if (!boardID642)
      {
LABEL_13:

        goto LABEL_14;
      }

      boardID324 = [v14 boardID64];
    }

    v20 = boardID324;
    [ticketCopy setObject:boardID324 forKeyedSubscript:nameCopy];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)addChipID:(unint64_t)d componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:d];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      chipID4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      chipID = [chipID4 chipID];

      if (chipID)
      {
        chipID2 = [chipID4 chipID];
        [ticketCopy setObject:chipID2 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      chipID3 = [v12 chipID];

      if (!chipID3)
      {
        goto LABEL_8;
      }

      chipID4 = [v13 chipID];
      [ticketCopy setObject:chipID4 forKeyedSubscript:nameCopy];
    }
  }

LABEL_8:
}

- (void)addECID:(unint64_t)d componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:d];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      eCID4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      eCID = [eCID4 ECID];

      if (eCID)
      {
        eCID2 = [eCID4 ECID];
        [ticketCopy setObject:eCID2 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      eCID3 = [v12 ECID];

      if (!eCID3)
      {
        goto LABEL_8;
      }

      eCID4 = [v13 ECID];
      [ticketCopy setObject:eCID4 forKeyedSubscript:nameCopy];
    }
  }

LABEL_8:
}

- (void)addNonce:(unint64_t)nonce componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:nonce];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      nonce4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      nonce = [nonce4 nonce];

      if (nonce)
      {
        nonce2 = [nonce4 nonce];
        [ticketCopy setObject:nonce2 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      nonce3 = [v12 nonce];

      if (!nonce3)
      {
        goto LABEL_8;
      }

      nonce4 = [v13 nonce];
      [ticketCopy setObject:nonce4 forKeyedSubscript:nameCopy];
    }
  }

LABEL_8:
}

- (void)addProductionMode:(unint64_t)mode componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:mode];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      productionMode4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      productionMode = [productionMode4 productionMode];

      if (productionMode)
      {
        productionMode2 = [productionMode4 productionMode];
        if ([productionMode2 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [ticketCopy setObject:v17 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      productionMode3 = [v12 productionMode];

      if (!productionMode3)
      {
        goto LABEL_14;
      }

      productionMode4 = [v13 productionMode];
      if ([productionMode4 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [ticketCopy setObject:v19 forKeyedSubscript:nameCopy];
    }
  }

LABEL_14:
}

- (void)addRealHdcpKeyPresent:(unint64_t)present componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:present];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      realHdcpKeyPresent4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      realHdcpKeyPresent = [realHdcpKeyPresent4 realHdcpKeyPresent];

      if (realHdcpKeyPresent)
      {
        realHdcpKeyPresent2 = [realHdcpKeyPresent4 realHdcpKeyPresent];
        if ([realHdcpKeyPresent2 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [ticketCopy setObject:v17 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      realHdcpKeyPresent3 = [v12 realHdcpKeyPresent];

      if (!realHdcpKeyPresent3)
      {
        goto LABEL_14;
      }

      realHdcpKeyPresent4 = [v13 realHdcpKeyPresent];
      if ([realHdcpKeyPresent4 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [ticketCopy setObject:v19 forKeyedSubscript:nameCopy];
    }
  }

LABEL_14:
}

- (void)addSecurityDomain:(unint64_t)domain componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:domain];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      securityDomain4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      securityDomain = [securityDomain4 securityDomain];

      if (securityDomain)
      {
        securityDomain2 = [securityDomain4 securityDomain];
        [ticketCopy setObject:securityDomain2 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      securityDomain3 = [v12 securityDomain];

      if (!securityDomain3)
      {
        goto LABEL_8;
      }

      securityDomain4 = [v13 securityDomain];
      [ticketCopy setObject:securityDomain4 forKeyedSubscript:nameCopy];
    }
  }

LABEL_8:
}

- (void)addSecurityMode:(unint64_t)mode componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:mode];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      securityMode4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      securityMode = [securityMode4 securityMode];

      if (securityMode)
      {
        securityMode2 = [securityMode4 securityMode];
        if ([securityMode2 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [ticketCopy setObject:v17 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      securityMode3 = [v12 securityMode];

      if (!securityMode3)
      {
        goto LABEL_14;
      }

      securityMode4 = [v13 securityMode];
      if ([securityMode4 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [ticketCopy setObject:v19 forKeyedSubscript:nameCopy];
    }
  }

LABEL_14:
}

- (void)addSoCLiveNonce:(unint64_t)nonce componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:nonce];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      liveNonce4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      liveNonce = [liveNonce4 liveNonce];

      if (liveNonce)
      {
        liveNonce2 = [liveNonce4 liveNonce];
        if ([liveNonce2 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [ticketCopy setObject:v17 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      liveNonce3 = [v12 liveNonce];

      if (!liveNonce3)
      {
        goto LABEL_14;
      }

      liveNonce4 = [v13 liveNonce];
      if ([liveNonce4 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [ticketCopy setObject:v19 forKeyedSubscript:nameCopy];
    }
  }

LABEL_14:
}

- (void)addUIDMode:(unint64_t)mode componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  ticketCopy = ticket;
  nameCopy = name;
  v11 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:mode];
  v12 = v11;
  if (!tag)
  {
    if (v11)
    {
      uidMode = [v11 uidMode];

      if (uidMode)
      {
        uidMode2 = [v12 uidMode];
        if ([uidMode2 BOOLValue])
        {
          v15 = &__kCFBooleanTrue;
        }

        else
        {
          v15 = &__kCFBooleanFalse;
        }

        [ticketCopy setObject:v15 forKeyedSubscript:nameCopy];
      }
    }
  }
}

- (void)addECIDData:(unint64_t)data componentTag:(id)tag tatsuTicket:(id)ticket keyName:(id)name
{
  tagCopy = tag;
  ticketCopy = ticket;
  nameCopy = name;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:data];
  v13 = v12;
  if (v12)
  {
    if (tagCopy)
    {
      ecidData4 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
      ecidData = [ecidData4 ecidData];

      if (ecidData)
      {
        ecidData2 = [ecidData4 ecidData];
        [ticketCopy setObject:ecidData2 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      ecidData3 = [v12 ecidData];

      if (!ecidData3)
      {
        goto LABEL_8;
      }

      ecidData4 = [v13 ecidData];
      [ticketCopy setObject:ecidData4 forKeyedSubscript:nameCopy];
    }
  }

LABEL_8:
}

- (void)addNonceSeed:(unint64_t)seed payload:(id)payload componentTag:(id)tag defaultNonceSeed:(id)nonceSeed
{
  payloadCopy = payload;
  tagCopy = tag;
  nonceSeedCopy = nonceSeed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [nonceSeedCopy copy];
    [payloadCopy setNonceSeed:v12];
  }

  else
  {
    v13 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:seed];
    v12 = v13;
    if (v13)
    {
      if (tagCopy || ([v13 nonceSeed], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
      {
        nonceSeed3 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
        nonceSeed = [nonceSeed3 nonceSeed];

        if (nonceSeed)
        {
          nonceSeed2 = [nonceSeed3 nonceSeed];
          [payloadCopy setNonceSeed:nonceSeed2];
        }
      }

      else
      {
        nonceSeed3 = [v12 nonceSeed];
        [payloadCopy setNonceSeed:nonceSeed3];
      }
    }
  }
}

- (void)addFTABGeneration:(unint64_t)generation payload:(id)payload componentTag:(id)tag defaultFTABGeneration:(id)bGeneration
{
  payloadCopy = payload;
  tagCopy = tag;
  bGenerationCopy = bGeneration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [bGenerationCopy copy];
    [payloadCopy setFtabGeneration:v12];
  }

  else
  {
    v13 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:generation];
    v12 = v13;
    if (v13)
    {
      if (tagCopy || ([v13 ftabGeneration], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
      {
        ftabGeneration3 = [(UARPEndpointLayer3 *)self findComponentConfiguration:tagCopy endpointConfig:v12];
        ftabGeneration = [ftabGeneration3 ftabGeneration];

        if (ftabGeneration)
        {
          ftabGeneration2 = [ftabGeneration3 ftabGeneration];
          [payloadCopy setFtabGeneration:ftabGeneration2];
        }
      }

      else
      {
        ftabGeneration3 = [v12 ftabGeneration];
        [payloadCopy setFtabGeneration:ftabGeneration3];
      }
    }
  }
}

- (BOOL)needsDigest:(id)digest algorithm:(int64_t)algorithm componentTag:(id)tag objectDictionary:(id)dictionary ftabSubfile:(id)subfile digestKeyName:(id)name
{
  dictionaryCopy = dictionary;
  subfileCopy = subfile;
  nameCopy = name;
  v16 = [digest payloadWith4cc:tag];
  v17 = v16;
  if (v16)
  {
    if (subfileCopy)
    {
      [v16 generateHash:algorithm ftabSubfile:subfileCopy];
    }

    else
    {
      [v16 generatePayloadHash:algorithm];
    }
    v19 = ;
    v18 = v19 != 0;
    if (v19)
    {
      [dictionaryCopy setObject:v19 forKeyedSubscript:nameCopy];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)notifyEndpointReachable
{
  layer3Delegate = self->_layer3Delegate;
  v4 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v6 = @"IS NOT";
      v7 = 136315650;
      v8 = "[UARPEndpointLayer3 notifyEndpointReachable]";
      v9 = 2112;
      selfCopy = self;
      if (v4)
      {
        v6 = @"IS";
      }

      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v7, 0x20u);
    }
  }

  if (v4)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointReachable:self];
  }
}

- (void)notifyAssetStagingProgress:(id)progress bytesTransferred:(unint64_t)transferred assetLength:(unint64_t)length
{
  progressCopy = progress;
  layer3Delegate = self->_layer3Delegate;
  v10 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v12 = @"IS NOT";
      v13 = 136315650;
      v14 = "[UARPEndpointLayer3 notifyAssetStagingProgress:bytesTransferred:assetLength:]";
      v15 = 2112;
      selfCopy = self;
      if (v10)
      {
        v12 = @"IS";
      }

      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v13, 0x20u);
    }
  }

  if (((transferred <= length) & v10) == 1)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetStagingProgress:self asset:progressCopy bytesTransferred:transferred assetLength:length];
  }
}

- (void)notifyAssetPersonalizationNeeded:(id)needed
{
  neededCopy = needed;
  layer3Delegate = self->_layer3Delegate;
  v6 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = @"IS NOT";
      v9 = 136315650;
      v10 = "[UARPEndpointLayer3 notifyAssetPersonalizationNeeded:]";
      v11 = 2112;
      selfCopy = self;
      if (v6)
      {
        v8 = @"IS";
      }

      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v9, 0x20u);
    }
  }

  if (v6)
  {
    if ([(UARPEndpointLayer3 *)self craftTatsuRequests:neededCopy])
    {
      [neededCopy personalizationStateStarted];
      [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPersonalizationNeeded:self asset:neededCopy];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100084B20();
    }
  }
}

- (void)notifyAssetPersonalizationComplete:(id)complete status:(int64_t)status
{
  completeCopy = complete;
  layer3Delegate = self->_layer3Delegate;
  v8 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v10 = @"IS NOT";
      v11 = 136315650;
      v12 = "[UARPEndpointLayer3 notifyAssetPersonalizationComplete:status:]";
      v13 = 2112;
      selfCopy = self;
      if (v8)
      {
        v10 = @"IS";
      }

      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v11, 0x20u);
    }
  }

  if (v8)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetPersonalizationComplete:self asset:completeCopy status:status];
  }
}

- (void)notifyEndpointAppliedStagedAssets:(int64_t)assets
{
  layer3Delegate = self->_layer3Delegate;
  v6 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = @"IS NOT";
      v9 = 136315650;
      v10 = "[UARPEndpointLayer3 notifyEndpointAppliedStagedAssets:]";
      v11 = 2112;
      selfCopy = self;
      if (v6)
      {
        v8 = @"IS";
      }

      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v9, 0x20u);
    }
  }

  if (v6)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAppliedStagedAssets:self layer3Flags:assets];
  }
}

- (void)notifyEndpointRescindedStagedAssets
{
  layer3Delegate = self->_layer3Delegate;
  v4 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v6 = @"IS NOT";
      v7 = 136315650;
      v8 = "[UARPEndpointLayer3 notifyEndpointRescindedStagedAssets]";
      v9 = 2112;
      selfCopy = self;
      if (v4)
      {
        v6 = @"IS";
      }

      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v7, 0x20u);
    }
  }

  if (v4)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointRescindedAssets:self];
  }
}

- (void)notifyAssetOffered:(id)offered
{
  offeredCopy = offered;
  layer3Delegate = self->_layer3Delegate;
  v6 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = @"IS NOT";
      v9 = 136315650;
      v10 = "[UARPEndpointLayer3 notifyAssetOffered:]";
      v11 = 2112;
      selfCopy = self;
      if (v6)
      {
        v8 = @"IS";
      }

      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v9, 0x20u);
    }
  }

  if (v6)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetOffered:self asset:offeredCopy];
  }

  else
  {
    [(UARPEndpointLayer3 *)self acceptLayer3Asset:offeredCopy];
  }
}

- (void)notifyEndpointAssetMetaDataComplete:(id)complete
{
  completeCopy = complete;
  layer3Delegate = self->_layer3Delegate;
  v6 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = @"IS NOT";
      v9 = 136315650;
      v10 = "[UARPEndpointLayer3 notifyEndpointAssetMetaDataComplete:]";
      v11 = 2112;
      selfCopy = self;
      if (v6)
      {
        v8 = @"IS";
      }

      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v9, 0x20u);
    }
  }

  if (v6)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetMetaDataComplete:self asset:completeCopy];
  }
}

- (void)notifyEndpointPayloadMetaDataComplete:(id)complete payload:(id)payload
{
  completeCopy = complete;
  payloadCopy = payload;
  layer3Delegate = self->_layer3Delegate;
  v9 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = @"IS NOT";
      v12 = 136315650;
      v13 = "[UARPEndpointLayer3 notifyEndpointPayloadMetaDataComplete:payload:]";
      v14 = 2112;
      selfCopy = self;
      if (v9)
      {
        v11 = @"IS";
      }

      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v12, 0x20u);
    }
  }

  if (v9)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadMetaDataComplete:self asset:completeCopy payload:payloadCopy];
  }
}

- (void)notifyEndpointPayloadData:(id)data payload:(id)payload offset:(unint64_t)offset payloadData:(id)payloadData
{
  dataCopy = data;
  payloadCopy = payload;
  payloadDataCopy = payloadData;
  layer3Delegate = self->_layer3Delegate;
  v14 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v16 = @"IS NOT";
      v17 = 136315650;
      v18 = "[UARPEndpointLayer3 notifyEndpointPayloadData:payload:offset:payloadData:]";
      v19 = 2112;
      selfCopy = self;
      if (v14)
      {
        v16 = @"IS";
      }

      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v17, 0x20u);
    }
  }

  if (v14)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadData:self asset:dataCopy payload:payloadCopy offset:offset payloadData:payloadDataCopy];
  }
}

- (void)notifyEndpointPayloadDataComplete:(id)complete payload:(id)payload
{
  completeCopy = complete;
  payloadCopy = payload;
  layer3Delegate = self->_layer3Delegate;
  v9 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = @"IS NOT";
      v12 = 136315650;
      v13 = "[UARPEndpointLayer3 notifyEndpointPayloadDataComplete:payload:]";
      v14 = 2112;
      selfCopy = self;
      if (v9)
      {
        v11 = @"IS";
      }

      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v12, 0x20u);
    }
  }

  if (v9)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadDataComplete:self asset:completeCopy payload:payloadCopy];
  }
}

- (void)notifyAssetSolicited:(id)solicited
{
  solicitedCopy = solicited;
  layer3Delegate = self->_layer3Delegate;
  v6 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = @"IS NOT";
      v9 = 136315650;
      v10 = "[UARPEndpointLayer3 notifyAssetSolicited:]";
      v11 = 2112;
      selfCopy = self;
      if (v6)
      {
        v8 = @"IS";
      }

      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v9, 0x20u);
    }
  }

  if (v6)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetSolicited:self assetTag:solicitedCopy];
  }
}

- (void)notifyApplyStagedAssets
{
  layer3Delegate = self->_layer3Delegate;
  v4 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v6 = @"IS NOT";
      v7 = 136315650;
      v8 = "[UARPEndpointLayer3 notifyApplyStagedAssets]";
      v9 = 2112;
      selfCopy = self;
      if (v4)
      {
        v6 = @"IS";
      }

      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v7, 0x20u);
    }
  }

  if (v4)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointApplyStagedAssets:self];
  }
}

- (void)notifyPayloadReady:(id)ready payload:(id)payload
{
  readyCopy = ready;
  payloadCopy = payload;
  layer3Delegate = self->_layer3Delegate;
  v9 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = @"IS NOT";
      v12 = 136315650;
      v13 = "[UARPEndpointLayer3 notifyPayloadReady:payload:]";
      v14 = 2112;
      selfCopy = self;
      if (v9)
      {
        v11 = @"IS";
      }

      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v12, 0x20u);
    }
  }

  if (v9)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadReady:self asset:readyCopy payload:payloadCopy];
  }
}

- (void)watchdogCancelOnQueue
{
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  if (layer2WatchdogTimer)
  {
    dispatch_source_cancel(layer2WatchdogTimer);
    v4 = self->_layer2WatchdogTimer;
    self->_layer2WatchdogTimer = 0;
  }
}

- (void)watchdogExpire
{
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  self->_layer2WatchdogTimer = 0;

  if (uarpPlatformEndpointWatchDogExpired(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100084BA4(log);
    }
  }
}

- (void)uarpMessageRecvFromTransport:(id)transport
{
  transportCopy = transport;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CB28;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = transportCopy;
  v6 = transportCopy;
  dispatch_async(internalQueue, v7);
}

- (void)notifyTxFirmwareFullyStaged:(id)staged
{
  stagedCopy = staged;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    processingStatus = [stagedCopy processingStatus];
    uuid = [stagedCopy uuid];
    v9 = [uuid description];
    v14 = 136315650;
    v15 = "[UARPEndpointLayer3 notifyTxFirmwareFullyStaged:]";
    v16 = 2048;
    selfCopy = processingStatus;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: TX Firmware Asset Fully Staged, status is %lu. UUID of %@", &v14, 0x20u);
  }

  [(NSMutableArray *)self->_completedAssets addObject:stagedCopy];
  [(NSMutableArray *)self->_firmwareAssets removeObject:stagedCopy];
  layer3Delegate = self->_layer3Delegate;
  v11 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"IS NOT";
      v14 = 136315650;
      v15 = "[UARPEndpointLayer3 notifyTxFirmwareFullyStaged:]";
      v16 = 2112;
      selfCopy = self;
      if (v11)
      {
        v13 = @"IS";
      }

      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v14, 0x20u);
    }
  }

  if (v11)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetFullyStaged:self txFirmwareAsset:stagedCopy];
  }
}

- (void)notifyRxFirmwareFullyStaged:(id)staged
{
  stagedCopy = staged;
  if ([stagedCopy processingStatus] == 1)
  {
    assetVersion = [stagedCopy assetVersion];
    directConfiguration = [(UARPEndpointLayer3 *)self directConfiguration];
    [directConfiguration setStagedFirmwareVersion:assetVersion];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    processingStatus = [stagedCopy processingStatus];
    assetVersion2 = [stagedCopy assetVersion];
    directConfiguration2 = [(UARPEndpointLayer3 *)self directConfiguration];
    stagedFirmwareVersion = [directConfiguration2 stagedFirmwareVersion];
    uuid = [stagedCopy uuid];
    v14 = [uuid description];
    v19 = 136316162;
    v20 = "[UARPEndpointLayer3 notifyRxFirmwareFullyStaged:]";
    v21 = 2048;
    selfCopy = processingStatus;
    v23 = 2112;
    v24 = assetVersion2;
    v25 = 2112;
    v26 = stagedFirmwareVersion;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: RX Firmware Asset Fully Staged, status is %lu. Asset Verison is %@. Staged Version is %@. UUID of %@", &v19, 0x34u);
  }

  [(UARPEndpointLayer3 *)self notifyLayer2RxFirmwareFullyStaged:stagedCopy];
  layer3Delegate = self->_layer3Delegate;
  v16 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"IS NOT";
      v19 = 136315650;
      v20 = "[UARPEndpointLayer3 notifyRxFirmwareFullyStaged:]";
      v21 = 2112;
      selfCopy = self;
      if (v16)
      {
        v18 = @"IS";
      }

      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v19, 0x20u);
    }
  }

  if (v16)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetFullyStaged:self rxFirmwareAsset:stagedCopy];
  }
}

- (void)notifyLayer2RxFirmwareFullyStaged:(id)staged
{
  stagedCopy = staged;
  if ([stagedCopy processingStatus] == 36)
  {
    if (uarpPlatformEndpointAssetCorrupt(self->_layer2LocalEndpoint, [stagedCopy layer2Context]))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100084D3C(log);
      }
    }

    goto LABEL_18;
  }

  if ([stagedCopy processingStatus] == 1)
  {
    if (!uarpPlatformEndpointAssetFullyStaged(self->_layer2LocalEndpoint, [stagedCopy layer2Context]))
    {
      goto LABEL_18;
    }

    v6 = self->_log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if ([stagedCopy processingStatus] == 28)
  {
    if (!uarpPlatformEndpointAssetAbandon(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint, [stagedCopy layer2Context], 2304))
    {
      goto LABEL_18;
    }

    v6 = self->_log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

LABEL_8:
    sub_100084DD0(v6);
    goto LABEL_18;
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    processingStatus = [stagedCopy processingStatus];
    uuid = [stagedCopy uuid];
    v11 = [uuid description];
    v13 = 136315650;
    v14 = "[UARPEndpointLayer3 notifyLayer2RxFirmwareFullyStaged:]";
    v15 = 2048;
    v16 = processingStatus;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Unhandled processing status is %lu. UUID of %@; assume corrupt", &v13, 0x20u);
  }

  if (uarpPlatformEndpointAssetCorrupt(self->_layer2LocalEndpoint, [stagedCopy layer2Context]))
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100084D3C(v12);
    }
  }

LABEL_18:
}

- (void)notifyTxDynamicAssetFullyStaged:(id)staged
{
  stagedCopy = staged;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    processingStatus = [stagedCopy processingStatus];
    uuid = [stagedCopy uuid];
    v9 = [uuid description];
    v14 = 136315650;
    v15 = "[UARPEndpointLayer3 notifyTxDynamicAssetFullyStaged:]";
    v16 = 2048;
    selfCopy = processingStatus;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: TX Dynamic Asset Fully Staged, status is %lu. UUID of %@", &v14, 0x20u);
  }

  layer3Delegate = self->_layer3Delegate;
  v11 = objc_opt_respondsToSelector();
  if (self->_debugNotifications)
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"IS NOT";
      v14 = 136315650;
      v15 = "[UARPEndpointLayer3 notifyTxDynamicAssetFullyStaged:]";
      v16 = 2112;
      selfCopy = self;
      if (v11)
      {
        v13 = @"IS";
      }

      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v14, 0x20u);
    }
  }

  if (v11)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetFullyStaged:self txDynamicAsset:stagedCopy];
  }
}

- (void)notifyRxDynamicAssetFullyStaged:(id)staged
{
  stagedCopy = staged;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    asset4cc = [stagedCopy asset4cc];
    processingStatus = [stagedCopy processingStatus];
    uuid = [stagedCopy uuid];
    v10 = [uuid description];
    v13 = 136315906;
    v14 = "[UARPEndpointLayer3 notifyRxDynamicAssetFullyStaged:]";
    v15 = 2112;
    v16 = asset4cc;
    v17 = 2048;
    v18 = processingStatus;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: RX Dynamic Asset Fully Staged (%@), status is %lu. UUID of %@", &v13, 0x2Au);
  }

  if (uarpPlatformEndpointAssetFullyStaged(self->_layer2LocalEndpoint, [stagedCopy layer2Context]))
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100084E64(v11);
    }
  }

  superbinaryURL = [stagedCopy superbinaryURL];
  [stagedCopy writeToURL:superbinaryURL error:0];
}

- (id)tlvNameForAppleProperty:(id)property
{
  unsignedIntegerValue = [property unsignedIntegerValue];
  if ((unsignedIntegerValue - 1) > 0x21)
  {
    return 0;
  }

  else
  {
    return *(&off_1000B9720 + (unsignedIntegerValue - 1));
  }
}

- (BOOL)layer2CallbackSendMessage:(char *)message length:(unsigned int)length
{
  v5 = [NSData dataWithBytes:message length:length];
  internalQueue = self->_internalQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006DA60;
  v9[3] = &unk_1000B8A88;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v9);

  return 1;
}

- (void)layer2CallbackSuperBinaryOffered:(void *)offered
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006DB80;
  v4[3] = &unk_1000B96B0;
  v4[4] = self;
  v4[5] = offered;
  dispatch_async(internalQueue, v4);
}

- (void)layer2CallbackUnsolicitedDynamicAssetOffered:(void *)offered assetTag:(id)tag
{
  tagCopy = tag;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DCEC;
  block[3] = &unk_1000B8BC8;
  selfCopy = self;
  offeredCopy = offered;
  v10 = tagCopy;
  v8 = tagCopy;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackSolicitedDynamicAssetOffered:(void *)offered asset:(id)asset
{
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DE54;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = assetCopy;
  offeredCopy = offered;
  v8 = assetCopy;
  dispatch_async(internalQueue, block);
}

- (unsigned)layer2CallbackApplyStagedAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uuid = self->_uuid;
    v5 = log;
    uUIDString = [(NSUUID *)uuid UUIDString];
    v19 = 136315394;
    v20 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackApplyStagedAssets]";
    v21 = 2112;
    v22 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %@", &v19, 0x16u);
  }

  directConfiguration = [(UARPEndpointLayer3 *)self directConfiguration];
  stagedFirmwareVersion = [directConfiguration stagedFirmwareVersion];
  isValid = [stagedFirmwareVersion isValid];

  v10 = self->_log;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (isValid)
  {
    if (v11)
    {
      v12 = v10;
      directConfiguration2 = [(UARPEndpointLayer3 *)self directConfiguration];
      firmwareVersion = [directConfiguration2 firmwareVersion];
      directConfiguration3 = [(UARPEndpointLayer3 *)self directConfiguration];
      stagedFirmwareVersion2 = [directConfiguration3 stagedFirmwareVersion];
      v17 = self->_uuid;
      v19 = 136315906;
      v20 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackApplyStagedAssets]";
      v21 = 2112;
      v22 = firmwareVersion;
      v23 = 2112;
      v24 = stagedFirmwareVersion2;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Active Firmware Verison is %@. Staged Firmware Version is %@. UUID of %@", &v19, 0x2Au);
    }

    [(UARPEndpointLayer3 *)self notifyApplyStagedAssets];
    return 1;
  }

  else
  {
    if (v11)
    {
      v19 = 136315138;
      v20 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackApplyStagedAssets]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Apply Staged Assets - Nothing Staged", &v19, 0xCu);
    }

    return 4;
  }
}

- (void)layer2CallbackApplyStagedAssetsResponse:(unsigned __int16)response layer3Flags:(int64_t)flags
{
  internalQueue = self->_internalQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006E184;
  v5[3] = &unk_1000B96B0;
  v5[4] = self;
  v5[5] = flags;
  dispatch_async(internalQueue, v5);
}

- (void)layer2CallbackManufacturerNameResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setManufacturerName:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE7E8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackModelNameResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setModelName:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE950];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackSerialNumberResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setSerialNumber:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE968];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackHardwareVersionResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setHardwareVersion:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE878];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackActiveFirmwareVersionResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setFirmwareVersion:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE890];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackStagedFirmwareVersionResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setStagedFirmwareVersion:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE980];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackAssetSolicitation:(id)solicitation
{
  solicitationCopy = solicitation;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EB24;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = solicitationCopy;
  v6 = solicitationCopy;
  dispatch_async(internalQueue, v7);
}

- (void)layer2CallbackRescindAllAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uuid = self->_uuid;
    v5 = log;
    uUIDString = [(NSUUID *)uuid UUIDString];
    *buf = 136315394;
    v10 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackRescindAllAssets]";
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006ECB4;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackRescindedAllAssets
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EDAC;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackWatchdogSet:(unint64_t)set
{
  [(UARPEndpointLayer3 *)self watchdogCancelOnQueue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  self->_layer2WatchdogTimer = v5;

  if (1000000 * set <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 1000000 * set;
  }

  v8 = dispatch_time(0, v7);
  dispatch_source_set_timer(self->_layer2WatchdogTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  objc_initWeak(&location, self);
  v9 = self->_layer2WatchdogTimer;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006EF10;
  v10[3] = &unk_1000B8CE0;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_layer2WatchdogTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)layer2CallbackProtocolVersionSelected:(unint64_t)selected
{
  self->_protocolVersion = selected;
  if (self->_uarpRole)
  {
    self->_supportsBulkInfoQueries = 0;
    v16 = 0;
    if (uarpPlatformGetSupportsBulkInfoQueries(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint, &v16))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        uarpRole = self->_uarpRole;
        v6 = log;
        v7 = uarpEndpointRoleToString(uarpRole);
        uUIDString = [(NSUUID *)self->_uuid UUIDString];
        *buf = 136315650;
        v18 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackProtocolVersionSelected:]";
        v19 = 2080;
        v20 = v7;
        v21 = 2112;
        v22 = uUIDString;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: uarpPlatformGetSupportsBulkInfoQueries() failed %s, %@", buf, 0x20u);
      }
    }

    else
    {
      self->_layer3Ready = 0;
      if (v16)
      {
        self->_supportsBulkInfoQueries = v16;
        [(UARPEndpointLayer3 *)self discoverEndpointIDs];
      }

      else
      {
        if (![(NSMutableArray *)self->_configurations count])
        {
          v14 = objc_opt_new();
          v15 = [NSNumber numberWithUnsignedShort:0];
          [v14 setEndpointID:v15];

          [(NSMutableArray *)self->_configurations addObject:v14];
        }

        [(UARPEndpointLayer3 *)self setupDefaultPropertyQueries];
      }
    }
  }

  else
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_uarpRole;
      v11 = v9;
      v12 = uarpEndpointRoleToString(v10);
      uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
      *buf = 136315650;
      v18 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackProtocolVersionSelected:]";
      v19 = 2080;
      v20 = v12;
      v21 = 2112;
      v22 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Notify Endpoint Reachable, Role %s, %@", buf, 0x20u);
    }

    [(UARPEndpointLayer3 *)self notifyEndpointReachable];
  }
}

- (void)layer2CallbackFriendlyNameResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setFriendlyName:v13];

          outstandingInfoProperties = [v10 outstandingInfoProperties];
          [outstandingInfoProperties removeObject:&off_1000BE860];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackLogError:(int)error logMsg:(id)msg
{
  msgCopy = msg;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000851D0();
  }
}

- (void)layer2CallbackLogInfo:(int)info logMsg:(id)msg
{
  msgCopy = msg;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    v9 = 136315650;
    v10 = uarpLoggingCategoryToString(info);
    v11 = 1024;
    v12 = getpid();
    v13 = 2112;
    v14 = msgCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: [pid=%d] %@\n", &v9, 0x1Cu);
  }
}

- (void)layer2CallbackLogDebug:(int)debug logMsg:(id)msg
{
  msgCopy = msg;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10008526C();
  }
}

- (void)layer2CallbackLogFault:(int)fault logMsg:(id)msg
{
  msgCopy = msg;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
  {
    sub_100085310();
  }
}

- (void)layer2CallbackDownstreamReachable:(unsigned __int16)reachable
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F590;
  v4[3] = &unk_1000B96D8;
  v4[4] = self;
  reachableCopy = reachable;
  dispatch_async(internalQueue, v4);
}

- (void)layer2CallbackDownstreamUnreachable:(unsigned __int16)unreachable
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F66C;
  v4[3] = &unk_1000B96D8;
  v4[4] = self;
  unreachableCopy = unreachable;
  dispatch_async(internalQueue, v4);
}

- (void)layer2CallbackDownstreamRecvMessage:(id)message uarpMsg:(id)msg
{
  messageCopy = message;
  msgCopy = msg;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F798;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = messageCopy;
  v13 = msgCopy;
  v9 = msgCopy;
  v10 = messageCopy;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackDiscoveredEndpointIDs:(id)ds
{
  dsCopy = ds;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F880;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(internalQueue, v7);
}

- (void)layer2CallbackDiscoveredEndpointID:(unsigned __int16)d components:(id)components
{
  componentsCopy = components;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FAF0;
  block[3] = &unk_1000B8BA0;
  dCopy = d;
  block[4] = self;
  v10 = componentsCopy;
  v8 = componentsCopy;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackBulkInfoQuery:(unsigned __int16)query componentTag:(id)tag infoProperties:(id)properties
{
  tagCopy = tag;
  propertiesCopy = properties;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006FD44;
  v13[3] = &unk_1000B9700;
  queryCopy = query;
  v13[4] = self;
  v14 = tagCopy;
  v15 = propertiesCopy;
  v11 = propertiesCopy;
  v12 = tagCopy;
  dispatch_async(internalQueue, v13);
}

- (void)layer2CallbackBulkInfoResponse:(unsigned __int16)response componentTag:(id)tag tlvs:(id)tlvs
{
  tagCopy = tag;
  tlvsCopy = tlvs;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100070030;
  v13[3] = &unk_1000B9700;
  responseCopy = response;
  v13[4] = self;
  v14 = tagCopy;
  v15 = tlvsCopy;
  v11 = tlvsCopy;
  v12 = tagCopy;
  dispatch_async(internalQueue, v13);
}

- (void)layer2CallbackAppleModelNumberResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setAppleModelNumber:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE7E8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackHwFusingTypeResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setHwFusingType:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE950];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackManifestPrefixResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setManifestPrefix:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE968];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackBoardID32Response:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setBoardID32:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE878];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackBoardID64Response:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setBoardID64:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE950];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackChipIDResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setChipID:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE890];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackChipRevisionResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setChipRevision:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE980];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackEcidResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setECID:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE8A8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackSecurityDomainResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setSecurityDomain:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE908];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackSecurityModeResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setSecurityMode:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE860];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackProductionModeResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setProductionMode:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE830];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackChipEpochResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setChipEpoch:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE848];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackEnableMixMatchResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setEnableMixMatch:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE800];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackSocLiveNonceResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setLiveNonce:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE818];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackPrefixNeedsLogicalUnitNumberResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setPrefixNeedsLUN:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE998];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackSuffixNeedsLogicalUnitNumberResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setSuffixNeedsLUN:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE9B0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackLogicalUnitNumberResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setLogicalUnitNumber:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE9C8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackTicketLongNameResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setTicketLongName:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE9E0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackRequiresPersonalizationResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setRequiresPersonalization:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE9F8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackApBoardIDResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setApBoardID:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEA10];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackApChipIDResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setApChipID:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEA28];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackApProductionModeResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setApProductionMode:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEA40];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackApSecurityModeResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setApSecurityMode:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEA58];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackHardwareSpecificResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setHardwareSpecific:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEA70];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackNonceResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setNonce:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE8D8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackLifeResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setLife:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEA88];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackProvisioningResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setProvisioning:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEAA0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackManifestEpochResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setManifestEpoch:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEAB8];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackManifestSuffixResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setManifestSuffix:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BEAD0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackEcidDataResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setEcidData:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE8C0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackNonceSeedResponse:(id)response
{
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          v13 = [responseCopy copy];
          [v10 setNonceSeed:v13];

          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE920];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)layer2CallbackRealHdcpKeyPresentResponse:(id)response
{
  responseCopy = response;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointID = [v10 endpointID];
        unsignedShortValue = [endpointID unsignedShortValue];

        if (!unsignedShortValue)
        {
          [v10 setRealHdcpKeyPresent:responseCopy];
          outstandingAppleProperties = [v10 outstandingAppleProperties];
          [outstandingAppleProperties removeObject:&off_1000BE8F0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)assetReady:(id)ready
{
  readyCopy = ready;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100072F80;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = readyCopy;
  v6 = readyCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetMetaDataTLV:(id)v asset:(id)asset
{
  vCopy = v;
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073174;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = vCopy;
  v13 = assetCopy;
  v9 = assetCopy;
  v10 = vCopy;
  dispatch_async(internalQueue, block);
}

- (void)assetMetaDataComplete:(id)complete
{
  completeCopy = complete;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000732D0;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = completeCopy;
  v6 = completeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetMetaDataProcessingError:(unint64_t)error asset:(id)asset
{
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073438;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = assetCopy;
  errorCopy = error;
  v8 = assetCopy;
  dispatch_async(internalQueue, block);
}

- (void)assetPayloadReady:(id)ready
{
  readyCopy = ready;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073544;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = readyCopy;
  v6 = readyCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetPayloadMetaDataTLV:(id)v asset:(id)asset
{
  vCopy = v;
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000737BC;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = assetCopy;
  v13 = vCopy;
  v9 = vCopy;
  v10 = assetCopy;
  dispatch_async(internalQueue, block);
}

- (void)assetPayloadMetaDataComplete:(id)complete
{
  completeCopy = complete;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073958;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = completeCopy;
  v6 = completeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetPayloadMetaDataProcessingError:(unint64_t)error asset:(id)asset
{
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073B50;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = assetCopy;
  errorCopy = error;
  v8 = assetCopy;
  dispatch_async(internalQueue, block);
}

- (void)assetPayloadData:(id)data offset:(unint64_t)offset asset:(id)asset
{
  dataCopy = data;
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100073C98;
  v13[3] = &unk_1000B8B78;
  v13[4] = self;
  v14 = assetCopy;
  v15 = dataCopy;
  offsetCopy = offset;
  v11 = dataCopy;
  v12 = assetCopy;
  dispatch_async(internalQueue, v13);
}

- (void)assetPayloadDataComplete:(id)complete hash:(id)hash
{
  completeCopy = complete;
  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073EA8;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(internalQueue, v8);
}

- (id)assetGetBytes:(unint64_t)bytes offset:(unint64_t)offset asset:(id)asset
{
  assetCopy = asset;
  v9 = [assetCopy getDataBlock:bytes offset:offset];
  [assetCopy setBytesTransferred:{objc_msgSend(assetCopy, "bytesTransferred") + objc_msgSend(v9, "length")}];
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100074260;
  v13[3] = &unk_1000B8A88;
  v13[4] = self;
  v14 = assetCopy;
  v11 = assetCopy;
  dispatch_async(internalQueue, v13);

  return v9;
}

- (BOOL)assetSetData:(id)data offset:(unint64_t)offset asset:(id)asset
{
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = assetCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Set Data for SuperBinary <%@> for Endpoint <%@>", &v9, 0x16u);
  }

  return 0;
}

- (void)assetRescind:(id)rescind
{
  directConfiguration = [(UARPEndpointLayer3 *)self directConfiguration];
  stagedFirmwareVersion = [directConfiguration stagedFirmwareVersion];
  [directConfiguration setFirmwareVersion:stagedFirmwareVersion];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    v19 = "[UARPEndpointLayer3(Layer2AssetCallbacks) assetRescind:]";
    v20 = 2112;
    v21 = uuid;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Rescind Staged Assets. UUID of %@", buf, 0x16u);
  }

  [directConfiguration setStagedFirmwareVersion:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  components = [directConfiguration components];
  v9 = [components countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(components);
        }

        [*(*(&v13 + 1) + 8 * i) setStagedFirmwareVersion:0];
      }

      v10 = [components countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)assetRescinded:(id)rescinded
{
  rescindedCopy = rescinded;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000745AC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = rescindedCopy;
  v6 = rescindedCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000746F4;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = corruptCopy;
  v6 = corruptCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetOrphan:(id)orphan
{
  orphanCopy = orphan;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074848;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = orphanCopy;
  v6 = orphanCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetRelease:(id)release
{
  releaseCopy = release;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074990;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = releaseCopy;
  v6 = releaseCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetProcessingCompleted:(unint64_t)completed flagsDescription:(id)description asset:(id)asset
{
  descriptionCopy = description;
  assetCopy = asset;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100074B14;
  v13[3] = &unk_1000B8B78;
  v13[4] = self;
  v14 = descriptionCopy;
  v15 = assetCopy;
  completedCopy = completed;
  v11 = assetCopy;
  v12 = descriptionCopy;
  dispatch_async(internalQueue, v13);
}

- (void)assetProcessingCompletedAck:(id)ack
{
  ackCopy = ack;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074D50;
  v7[3] = &unk_1000B8A88;
  v8 = ackCopy;
  selfCopy = self;
  v6 = ackCopy;
  dispatch_async(internalQueue, v7);
}

- (void)assetPreProcessing:(unint64_t)processing flagsDescription:(id)description asset:(id)asset
{
  assetCopy = asset;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = assetCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Pre Processing Notification for SuperBinary <%@> for Endpoint <%@>", &v8, 0x16u);
  }
}

- (void)assetPreProcessingAck:(id)ack
{
  ackCopy = ack;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = ackCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Pre Processing Notification Ack for SuperBinary <%@> for Endpoint <%@>", &v6, 0x16u);
  }
}

@end