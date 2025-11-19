@interface UARPEndpointLayer3
- (BOOL)assetSetData:(id)a3 offset:(unint64_t)a4 asset:(id)a5;
- (BOOL)craftTatsuRequests:(id)a3;
- (BOOL)layer2CallbackSendMessage:(char *)a3 length:(unsigned int)a4;
- (BOOL)needsDigest:(id)a3 algorithm:(int64_t)a4 componentTag:(id)a5 objectDictionary:(id)a6 ftabSubfile:(id)a7 digestKeyName:(id)a8;
- (BOOL)startUARPLayer2:(id)a3 configuration:(id)a4 infoProperties:(id)a5 appleProperties:(id)a6 endpointID:(unsigned __int16)a7 upstreamEndpoint:(id)a8 pcapDelegate:(id)a9;
- (BOOL)startUARPLayer2Internal;
- (UARPEndpointLayer3)initWithUUID:(id)a3 transportTxDelegate:(id)a4 layer3Delegate:(id)a5 tmpFolderPath:(id)a6;
- (id)assetGetBytes:(unint64_t)a3 offset:(unint64_t)a4 asset:(id)a5;
- (id)description;
- (id)directConfiguration;
- (id)findComponentConfiguration:(id)a3 endpointConfig:(id)a4;
- (id)findConfigurationForEndpointID:(unint64_t)a3;
- (id)findMatchingAsset:(id)a3;
- (id)tlvNameForAppleProperty:(id)a3;
- (unint64_t)hash;
- (unsigned)layer2CallbackApplyStagedAssets;
- (void)acceptLayer3Asset:(id)a3;
- (void)acceptLayer3Payload:(id)a3;
- (void)addBoardID:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addChipID:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addECID:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addECIDData:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addFTABGeneration:(unint64_t)a3 payload:(id)a4 componentTag:(id)a5 defaultFTABGeneration:(id)a6;
- (void)addNonce:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addNonceSeed:(unint64_t)a3 payload:(id)a4 componentTag:(id)a5 defaultNonceSeed:(id)a6;
- (void)addProductionMode:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addRealHdcpKeyPresent:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addSecurityDomain:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addSecurityMode:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addSoCLiveNonce:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)addUIDMode:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6;
- (void)applyStagedAssets;
- (void)assetCorrupt:(id)a3;
- (void)assetFullyStaged:(id)a3 status:(unint64_t)a4;
- (void)assetMetaDataComplete:(id)a3;
- (void)assetMetaDataProcessingError:(unint64_t)a3 asset:(id)a4;
- (void)assetMetaDataTLV:(id)a3 asset:(id)a4;
- (void)assetOrphan:(id)a3;
- (void)assetPayloadData:(id)a3 offset:(unint64_t)a4 asset:(id)a5;
- (void)assetPayloadDataComplete:(id)a3 hash:(id)a4;
- (void)assetPayloadMetaDataComplete:(id)a3;
- (void)assetPayloadMetaDataProcessingError:(unint64_t)a3 asset:(id)a4;
- (void)assetPayloadMetaDataTLV:(id)a3 asset:(id)a4;
- (void)assetPayloadReady:(id)a3;
- (void)assetPreProcessing:(unint64_t)a3 flagsDescription:(id)a4 asset:(id)a5;
- (void)assetPreProcessingAck:(id)a3;
- (void)assetProcessingCompleted:(unint64_t)a3 flagsDescription:(id)a4 asset:(id)a5;
- (void)assetProcessingCompletedAck:(id)a3;
- (void)assetReady:(id)a3;
- (void)assetRelease:(id)a3;
- (void)assetRescind:(id)a3;
- (void)assetRescinded:(id)a3;
- (void)checkPropertyQueryComplete;
- (void)dealloc;
- (void)denyAsset:(id)a3 denyReason:(unint64_t)a4;
- (void)discoverEndpointIDs;
- (void)downstreamEndpointAdd:(id)a3;
- (void)downstreamEndpointReachable:(id)a3 downstreamEndpointID:(unsigned __int16)a4;
- (void)downstreamEndpointRemove:(id)a3;
- (void)downstreamEndpointUnreachable:(id)a3 downstreamEndpointID:(unsigned __int16)a4;
- (void)firstLayer3Payload:(id)a3;
- (void)layer2CallbackActiveFirmwareVersionResponse:(id)a3;
- (void)layer2CallbackApBoardIDResponse:(id)a3;
- (void)layer2CallbackApChipIDResponse:(id)a3;
- (void)layer2CallbackApProductionModeResponse:(id)a3;
- (void)layer2CallbackApSecurityModeResponse:(id)a3;
- (void)layer2CallbackAppleModelNumberResponse:(id)a3;
- (void)layer2CallbackApplyStagedAssetsResponse:(unsigned __int16)a3 layer3Flags:(int64_t)a4;
- (void)layer2CallbackAssetSolicitation:(id)a3;
- (void)layer2CallbackBoardID32Response:(id)a3;
- (void)layer2CallbackBoardID64Response:(id)a3;
- (void)layer2CallbackBulkInfoQuery:(unsigned __int16)a3 componentTag:(id)a4 infoProperties:(id)a5;
- (void)layer2CallbackBulkInfoResponse:(unsigned __int16)a3 componentTag:(id)a4 tlvs:(id)a5;
- (void)layer2CallbackChipEpochResponse:(id)a3;
- (void)layer2CallbackChipIDResponse:(id)a3;
- (void)layer2CallbackChipRevisionResponse:(id)a3;
- (void)layer2CallbackDiscoveredEndpointID:(unsigned __int16)a3 components:(id)a4;
- (void)layer2CallbackDiscoveredEndpointIDs:(id)a3;
- (void)layer2CallbackDownstreamReachable:(unsigned __int16)a3;
- (void)layer2CallbackDownstreamRecvMessage:(id)a3 uarpMsg:(id)a4;
- (void)layer2CallbackDownstreamUnreachable:(unsigned __int16)a3;
- (void)layer2CallbackEcidDataResponse:(id)a3;
- (void)layer2CallbackEcidResponse:(id)a3;
- (void)layer2CallbackEnableMixMatchResponse:(id)a3;
- (void)layer2CallbackFriendlyNameResponse:(id)a3;
- (void)layer2CallbackHardwareSpecificResponse:(id)a3;
- (void)layer2CallbackHardwareVersionResponse:(id)a3;
- (void)layer2CallbackHwFusingTypeResponse:(id)a3;
- (void)layer2CallbackLifeResponse:(id)a3;
- (void)layer2CallbackLogDebug:(int)a3 logMsg:(id)a4;
- (void)layer2CallbackLogError:(int)a3 logMsg:(id)a4;
- (void)layer2CallbackLogFault:(int)a3 logMsg:(id)a4;
- (void)layer2CallbackLogInfo:(int)a3 logMsg:(id)a4;
- (void)layer2CallbackLogicalUnitNumberResponse:(id)a3;
- (void)layer2CallbackManifestEpochResponse:(id)a3;
- (void)layer2CallbackManifestPrefixResponse:(id)a3;
- (void)layer2CallbackManifestSuffixResponse:(id)a3;
- (void)layer2CallbackManufacturerNameResponse:(id)a3;
- (void)layer2CallbackModelNameResponse:(id)a3;
- (void)layer2CallbackNonceResponse:(id)a3;
- (void)layer2CallbackNonceSeedResponse:(id)a3;
- (void)layer2CallbackPrefixNeedsLogicalUnitNumberResponse:(id)a3;
- (void)layer2CallbackProductionModeResponse:(id)a3;
- (void)layer2CallbackProtocolVersionSelected:(unint64_t)a3;
- (void)layer2CallbackProvisioningResponse:(id)a3;
- (void)layer2CallbackRealHdcpKeyPresentResponse:(id)a3;
- (void)layer2CallbackRequiresPersonalizationResponse:(id)a3;
- (void)layer2CallbackRescindAllAssets;
- (void)layer2CallbackRescindedAllAssets;
- (void)layer2CallbackSecurityDomainResponse:(id)a3;
- (void)layer2CallbackSecurityModeResponse:(id)a3;
- (void)layer2CallbackSerialNumberResponse:(id)a3;
- (void)layer2CallbackSocLiveNonceResponse:(id)a3;
- (void)layer2CallbackSolicitedDynamicAssetOffered:(void *)a3 asset:(id)a4;
- (void)layer2CallbackStagedFirmwareVersionResponse:(id)a3;
- (void)layer2CallbackSuffixNeedsLogicalUnitNumberResponse:(id)a3;
- (void)layer2CallbackSuperBinaryOffered:(void *)a3;
- (void)layer2CallbackTicketLongNameResponse:(id)a3;
- (void)layer2CallbackUnsolicitedDynamicAssetOffered:(void *)a3 assetTag:(id)a4;
- (void)layer2CallbackWatchdogSet:(unint64_t)a3;
- (void)nextLayer3Payload:(id)a3;
- (void)notifyApplyStagedAssets;
- (void)notifyAssetOffered:(id)a3;
- (void)notifyAssetPersonalizationComplete:(id)a3 status:(int64_t)a4;
- (void)notifyAssetPersonalizationNeeded:(id)a3;
- (void)notifyAssetSolicited:(id)a3;
- (void)notifyAssetStagingProgress:(id)a3 bytesTransferred:(unint64_t)a4 assetLength:(unint64_t)a5;
- (void)notifyEndpointAppliedStagedAssets:(int64_t)a3;
- (void)notifyEndpointAssetMetaDataComplete:(id)a3;
- (void)notifyEndpointPayloadData:(id)a3 payload:(id)a4 offset:(unint64_t)a5 payloadData:(id)a6;
- (void)notifyEndpointPayloadDataComplete:(id)a3 payload:(id)a4;
- (void)notifyEndpointPayloadMetaDataComplete:(id)a3 payload:(id)a4;
- (void)notifyEndpointReachable;
- (void)notifyEndpointRescindedStagedAssets;
- (void)notifyLayer2RxFirmwareFullyStaged:(id)a3;
- (void)notifyPayloadReady:(id)a3 payload:(id)a4;
- (void)notifyRxDynamicAssetFullyStaged:(id)a3;
- (void)notifyRxFirmwareFullyStaged:(id)a3;
- (void)notifyTxDynamicAssetFullyStaged:(id)a3;
- (void)notifyTxFirmwareFullyStaged:(id)a3;
- (void)offerDynamicAsset:(id)a3 fourCC:(id)a4;
- (void)packetTracking:(id)a3 inFunction:(const char *)a4;
- (void)personalizeFirmwareAssetComplete:(id)a3;
- (void)personalizeFirmwareSuperBinary:(id)a3 tssServerURL:(id)a4;
- (void)personalizeFirmwareSuperBinaryInternal:(id)a3 tssServerURL:(id)a4;
- (void)prepareBulkQueriesForPersonalization:(id)a3;
- (void)prepareComponentBulkQueriesForPersonalization:(id)a3 component:(id)a4;
- (void)prepareEndpointBulkQueriesForPersonalization:(id)a3 config:(id)a4;
- (void)prepareQueriesForPersonalization:(id)a3;
- (void)processOutstandingComponentInfoQueries:(id)a3 infoProperties:(id)a4;
- (void)processOutstandingEndpointInfoQueries:(id)a3 infoProperties:(id)a4;
- (void)processRespondedComponentInfoQueries:(id)a3 tlvs:(id)a4;
- (void)processRespondedEndpointInfoQueries:(id)a3 tlvs:(id)a4;
- (void)queryAppleProperty:(unsigned int)a3;
- (void)queryInfoProperty:(unsigned int)a3;
- (void)queryOutstandingEndpointIDComponentProperties:(id)a3;
- (void)queryOutstandingEndpointIDProperties:(id)a3;
- (void)rescindAssets;
- (void)selectLayer3Payload:(id)a3 payloadIndex:(unint64_t)a4;
- (void)sendMessageUpstream:(id)a3 fromDownstreamID:(unsigned __int16)a4;
- (void)setupDefaultPropertyQueries;
- (void)setupPendingInfoQueries;
- (void)solicitDynamicAsset:(id)a3 assetTag:(id)a4;
- (void)stageFirmwareSuperBinary:(id)a3 tssServerURL:(id)a4;
- (void)stopUARPLayer2;
- (void)uarpMessageRecvFromTransport:(id)a3;
- (void)uarpRouteRecvMessageToDownstreamEndpoint:(id)a3 downstreamEndpointID:(unsigned __int16)a4;
- (void)watchdogCancelOnQueue;
- (void)watchdogExpire;
@end

@implementation UARPEndpointLayer3

- (UARPEndpointLayer3)initWithUUID:(id)a3 transportTxDelegate:(id)a4 layer3Delegate:(id)a5 tmpFolderPath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
    objc_storeStrong(&v15->_transportTxDelegate, a4);
    objc_storeStrong(&v15->_layer3Delegate, a5);
    v18 = [v14 copy];
    tmpFolderPath = v15->_tmpFolderPath;
    v15->_tmpFolderPath = v18;

    objc_storeStrong(&v15->_uuid, a3);
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
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [NSString stringWithFormat:@"UARPEndpointLayer3: %@", v2];

  return v3;
}

- (void)packetTracking:(id)a3 inFunction:(const char *)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_debugPackets)
  {
    v7 = [v5 bytes];
    v8 = uarpNtohs(*v7);
    v9 = uarpNtohs(v7[1]);
    v10 = uarpNtohs(v7[2]);
    if ((self->_debugDataPackets || (v8 & 0xFFFE) != 6) && (self->_debugDownstream || (v8 - 27) >= 2u))
    {
      v11 = [NSString stringWithFormat:@"%s", uarpMessageTypeToString(v8)];
      v12 = objc_opt_new();
      v13 = [(NSUUID *)self->_uuid UUIDString];
      [v12 setObject:v13 forKeyedSubscript:@"Endpoint UUID"];

      v14 = [NSNumber numberWithUnsignedShort:self->_endpointID];
      [v12 setObject:v14 forKeyedSubscript:@"Endpoint ID"];

      upstreamEndpoint = self->_upstreamEndpoint;
      if (upstreamEndpoint)
      {
        v16 = [NSNumber numberWithUnsignedShort:[(UARPEndpointLayer3 *)upstreamEndpoint endpointID]];
        [v12 setObject:v16 forKeyedSubscript:@"Upstream Endpoint ID"];

        v17 = [(UARPEndpointLayer3 *)self->_upstreamEndpoint uuid];
        v18 = [v17 UUIDString];
        [v12 setObject:v18 forKeyedSubscript:@"Upstream Endpoint UUID"];
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
        v22 = [NSNumber numberWithUnsignedShort:uarpNtohs(v7[3])];
        [v12 setObject:v22 forKeyedSubscript:@"Msg Downstream ID"];

        v23 = uarpNtohs(v7[4]);
        v24 = uarpNtohs(v7[5]);
        v25 = uarpNtohs(v7[6]);
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

- (BOOL)startUARPLayer2:(id)a3 configuration:(id)a4 infoProperties:(id)a5 appleProperties:(id)a6 endpointID:(unsigned __int16)a7 upstreamEndpoint:(id)a8 pcapDelegate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v38 = a8;
  v19 = a9;
  self->_endpointID = a7;
  p_upstreamEndpoint = &self->_upstreamEndpoint;
  objc_storeStrong(&self->_upstreamEndpoint, a8);
  objc_storeStrong(&self->_pcapDelegate, a9);
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
  self->_uarpOptions.maxTxPayloadLength = [v15 maxTxPayloadLength];
  self->_uarpOptions.maxRxPayloadLength = [v15 maxRxPayloadLength];
  self->_uarpOptions.payloadWindowLength = [v15 payloadWindowLength];
  self->_uarpOptions.protocolVersion = [v15 protocolVersion];
  self->_uarpOptions.reofferFirmwareOnSync = [v15 reofferFirmwareOnSync];
  self->_uarpOptions.responseTimeout = [v15 responseTimeout];
  self->_uarpOptions.retryLimit = [v15 retryLimit];
  self->_uarpOptions.maxTransmitsInFlight = [v15 maxTransmitsInFlight];
  self->_uarpOptions.endpointType = [v15 endpointType];
  self->_uarpOptions.solicitationQueueDepth = [v15 solicitationQueueDepth];
  self->_uarpOptions.txBufferOverhead = [v15 txBufferOverhead];
  self->_uarpOptions.upgradeOnly = [v15 upgradeOnly];
  *&self->_uarpOptions.numPreallocatedBuffers = [v15 numPreallocatedBuffers];
  if (self->_uarpOptions.protocolVersion >= 6u)
  {
    self->_uarpOptions.supportsBulkInfoQueries = [v15 supportsBulkInfoQueries];
    self->_uarpOptions.useHostPushModel = [v15 useHostPushModel];
  }

  if (([v15 isHostRole] & 1) == 0)
  {
    self->_uarpRole = 0;
  }

  if (v16)
  {
    v30 = [NSNumber numberWithUnsignedShort:0];
    [v16 setEndpointID:v30];

    [(NSMutableArray *)self->_configurations addObject:v16];
  }

  if (v17)
  {
    v31 = [v17 copy];
    defaultInfoProperties = self->_defaultInfoProperties;
    self->_defaultInfoProperties = v31;
  }

  if (v18)
  {
    v33 = [v18 copy];
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
    v8 = [v7 components];
    v9 = [v8 count];

    v10 = calloc(v9, 4uLL);
    v11 = v10;
    if (v9)
    {
      v12 = 0;
      v13 = v10 + 3;
      do
      {
        v14 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        v15 = [v14 components];
        v16 = [v15 objectAtIndexedSubscript:v12];
        v17 = [v16 componentTag];
        *(v13 - 3) = [v17 char1];

        v18 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        v19 = [v18 components];
        v20 = [v19 objectAtIndexedSubscript:v12];
        v21 = [v20 componentTag];
        *(v13 - 2) = [v21 char2];

        v22 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        v23 = [v22 components];
        v24 = [v23 objectAtIndexedSubscript:v12];
        v25 = [v24 componentTag];
        *(v13 - 1) = [v25 char3];

        v26 = [(NSMutableArray *)self->_configurations objectAtIndexedSubscript:0];
        v27 = [v26 components];
        v28 = [v27 objectAtIndexedSubscript:v12];
        v29 = [v28 componentTag];
        *v13 = [v29 char4];
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
          v15 = [v12 endpointID];
          v16 = [v15 unsignedShortValue];
          *buf = v21;
          v28 = "[UARPEndpointLayer3 directConfiguration]";
          v29 = 2048;
          v30 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: configuration id is %lu", buf, 0x16u);
        }

        v17 = [v12 endpointID];
        v18 = [v17 unsignedShortValue];

        if (!v18)
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
        v8 = [v7 outstandingInfoProperties];
        [v8 removeAllObjects];

        v9 = [v7 outstandingInfoProperties];
        [v9 addObjectsFromArray:self->_defaultInfoProperties];

        v10 = [v7 outstandingAppleProperties];
        [v10 removeAllObjects];

        v11 = [v7 outstandingAppleProperties];
        [v11 addObjectsFromArray:self->_defaultAppleProperties];

        if (self->_protocolVersion <= 6u)
        {
          v12 = [v7 outstandingAppleProperties];
          [v12 removeObject:&off_1000BE7D0];

          if (self->_protocolVersion <= 1u)
          {
            v13 = [v7 outstandingAppleProperties];
            [v13 removeObject:&off_1000BE7E8];
          }
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = [v7 outstandingInfoProperties];
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
                objc_enumerationMutation(v14);
              }

              -[UARPEndpointLayer3 queryInfoProperty:](self, "queryInfoProperty:", [*(*(&v31 + 1) + 8 * j) unsignedLongValue]);
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v16);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v19 = [v7 outstandingAppleProperties];
        v20 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
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
                objc_enumerationMutation(v19);
              }

              -[UARPEndpointLayer3 queryAppleProperty:](self, "queryAppleProperty:", [*(*(&v27 + 1) + 8 * k) unsignedLongValue]);
            }

            v21 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
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

- (void)queryInfoProperty:(unsigned int)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062638;
  v4[3] = &unk_1000B9688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)queryAppleProperty:(unsigned int)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062728;
  v4[3] = &unk_1000B9688;
  v5 = a3;
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

- (void)stageFirmwareSuperBinary:(id)a3 tssServerURL:(id)a4
{
  v5 = a3;
  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000632F0;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

- (void)offerDynamicAsset:(id)a3 fourCC:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063560;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)personalizeFirmwareSuperBinary:(id)a3 tssServerURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063804;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)personalizeFirmwareSuperBinaryInternal:(id)a3 tssServerURL:(id)a4
{
  v6 = a3;
  personalizingAssets = self->_personalizingAssets;
  v8 = a4;
  [(NSMutableArray *)personalizingAssets addObject:v6];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = log;
    v11 = [v6 uuid];
    v12 = [v11 UUIDString];
    v13 = 136315394;
    v14 = "[UARPEndpointLayer3 personalizeFirmwareSuperBinaryInternal:tssServerURL:]";
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Added Personalizing Asset - %@", &v13, 0x16u);
  }

  [v6 personalizationStatePrepare:v8 endpoint:self];

  if (self->_supportsBulkInfoQueries)
  {
    [(UARPEndpointLayer3 *)self prepareBulkQueriesForPersonalization:v6];
  }

  else
  {
    [(UARPEndpointLayer3 *)self prepareQueriesForPersonalization:v6];
  }
}

- (void)personalizeFirmwareAssetComplete:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100063C04;
  v7[3] = &unk_1000B8A88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetFullyStaged:(id)a3 status:(unint64_t)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063F0C;
  block[3] = &unk_1000B8BC8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
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

- (void)acceptLayer3Asset:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000643AC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)denyAsset:(id)a3 denyReason:(unint64_t)a4
{
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064534;
  block[3] = &unk_1000B8D08;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)acceptLayer3Payload:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064670;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)nextLayer3Payload:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064820;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)firstLayer3Payload:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006497C;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)selectLayer3Payload:(id)a3 payloadIndex:(unint64_t)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064A34;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)solicitDynamicAsset:(id)a3 assetTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064CB8;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

- (void)downstreamEndpointAdd:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064F04;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)downstreamEndpointRemove:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100065110;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)downstreamEndpointReachable:(id)a3 downstreamEndpointID:(unsigned __int16)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000651C4;
  block[3] = &unk_1000B8BA0;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)downstreamEndpointUnreachable:(id)a3 downstreamEndpointID:(unsigned __int16)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006539C;
  block[3] = &unk_1000B8BA0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)sendMessageUpstream:(id)a3 fromDownstreamID:(unsigned __int16)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065540;
  block[3] = &unk_1000B8BA0;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (id)findMatchingAsset:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
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

- (void)uarpRouteRecvMessageToDownstreamEndpoint:(id)a3 downstreamEndpointID:(unsigned __int16)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065D8C;
  block[3] = &unk_1000B8BA0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)queryOutstandingEndpointIDProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 outstandingInfoProperties];
  v6 = [v5 count];

  v7 = calloc(v6, 4uLL);
  if (v6)
  {
    v8 = v7;
    for (i = 0; i != v6; ++i)
    {
      v10 = [v4 outstandingInfoProperties];
      v11 = [v10 objectAtIndexedSubscript:i];
      v8[i] = [v11 unsignedLongValue];
    }

    v25 = v8;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v4;
    v12 = [v4 outstandingInfoProperties];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
            objc_enumerationMutation(v12);
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

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v14);
    }

    *buf = 0;
    layer2LocalEndpoint = self->_layer2LocalEndpoint;
    layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
    v4 = v26;
    v22 = [v26 endpointID];
    LODWORD(layer2LocalEndpoint) = uarpPlatformEndpointBulkInfoQuery(layer2LocalEndpoint, layer2RemoteEndpoint, [v22 unsignedShortValue], buf, v6, v25);

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

- (void)queryOutstandingEndpointIDComponentProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 componentTag];
  v6 = [v5 char1];
  LOBYTE(v26) = v6;
  v7 = [v4 componentTag];
  v8 = [v7 char2];
  BYTE1(v26) = v8;
  v9 = [v4 componentTag];
  v10 = [v9 char3];
  BYTE2(v26) = v10;
  v11 = [v4 componentTag];
  v12 = [v11 char4];
  HIBYTE(v26) = v12;

  v13 = [v4 outstandingInfoProperties];
  v14 = [v13 count];

  log = self->_log;
  v16 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      *buf = 136316418;
      v28 = "[UARPEndpointLayer3 queryOutstandingEndpointIDComponentProperties:]";
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v8;
      v33 = 1024;
      v34 = v10;
      v35 = 1024;
      v36 = v12;
      v37 = 1024;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %c%c%c%c has %d outstanding info properties", buf, 0x2Au);
    }

    v17 = calloc(v14, 4uLL);
    for (i = 0; i != v14; ++i)
    {
      v19 = [v4 outstandingInfoProperties];
      v20 = [v19 objectAtIndexedSubscript:i];
      v17[i] = [v20 unsignedLongValue];
    }

    layer2LocalEndpoint = self->_layer2LocalEndpoint;
    layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
    v23 = [v4 endpointID];
    v24 = uarpPlatformEndpointBulkInfoQuery(layer2LocalEndpoint, layer2RemoteEndpoint, [v23 unsignedShortValue], &v26, v14, v17);

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
    v30 = v6;
    v31 = 1024;
    v32 = v8;
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = v12;
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
        v5 = [v4 outstandingInfoProperties];
        [v5 removeAllObjects];

        v6 = [v4 outstandingInfoProperties];
        [v6 addObjectsFromArray:self->_defaultInfoProperties];

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

              v14 = [v4 outstandingInfoProperties];
              v15 = [NSNumber numberWithUnsignedLong:v13];
              [v14 addObject:v15];
            }

            v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v9);
        }

        if (self->_protocolVersion <= 6u)
        {
          v16 = [v4 outstandingInfoProperties];
          [v16 removeObject:&off_1000BE800];

          v17 = [v4 outstandingInfoProperties];
          [v17 removeObject:&off_1000BE818];

          if (self->_protocolVersion <= 5u)
          {
            v18 = [v4 outstandingInfoProperties];
            [v18 removeObject:&off_1000BE830];

            v19 = [v4 outstandingInfoProperties];
            [v19 removeObject:&off_1000BE848];

            if (self->_protocolVersion <= 2u)
            {
              v20 = [v4 outstandingInfoProperties];
              [v20 removeObject:&off_1000BE860];
            }
          }
        }

        [(UARPEndpointLayer3 *)self queryOutstandingEndpointIDProperties:v4];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = [v4 components];
        v22 = [v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v35 + 1) + 8 * k);
              v27 = [v26 preflightInfoProperties];
              [v27 removeAllObjects];

              v28 = [v26 preflightInfoProperties];
              v29 = [NSNumber numberWithUnsignedLong:5];
              [v28 addObject:v29];

              v30 = [v26 preflightInfoProperties];
              v31 = [NSNumber numberWithUnsignedLong:6];
              [v30 addObject:v31];
            }

            v23 = [v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
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

- (void)processOutstandingEndpointInfoQueries:(id)a3 infoProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v83 = 0;
  v78 = calloc(0x1000uLL, 1uLL);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v7;
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

      v13 = [*(*(&v79 + 1) + 8 * v12) unsignedLongValue];
      v14 = v13;
      if (v13 > 1)
      {
        if (v13 > 5)
        {
          if (v13 > 9)
          {
            switch(v13)
            {
              case 10:
                layer2LocalEndpoint = self->_layer2LocalEndpoint;
                layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
                v17 = [v6 hwFusingType];
                v18 = [v17 length];
                v19 = [v6 hwFusingType];
                v20 = [v19 UTF8String];
                v21 = layer2LocalEndpoint;
                v22 = layer2RemoteEndpoint;
                v23 = v78;
                v24 = 10;
                break;
              case 11:
                v50 = self->_layer2LocalEndpoint;
                v51 = self->_layer2RemoteEndpoint;
                v17 = [v6 appleModelNumber];
                v18 = [v17 length];
                v19 = [v6 appleModelNumber];
                v20 = [v19 UTF8String];
                v21 = v50;
                v22 = v51;
                v23 = v78;
                v24 = 11;
                break;
              case 13:
                v15 = self->_layer2LocalEndpoint;
                v16 = self->_layer2RemoteEndpoint;
                v17 = [v6 assetIdentifier];
                v18 = [v17 length];
                v19 = [v6 assetIdentifier];
                v20 = [v19 UTF8String];
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

          if (v13 != 6)
          {
            if (v13 != 9)
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
            v17 = [v6 friendlyName];
            v18 = [v17 length];
            v19 = [v6 friendlyName];
            v20 = [v19 UTF8String];
            v21 = v46;
            v22 = v47;
            v23 = v78;
            v24 = 9;
            goto LABEL_46;
          }

          *buf = 0;
          *&buf[8] = 0;
          v64 = [v6 stagedFirmwareVersion];
          *buf = [v64 majorVersion];

          v65 = [v6 stagedFirmwareVersion];
          *&buf[4] = [v65 minorVersion];

          v66 = [v6 stagedFirmwareVersion];
          *&buf[8] = [v66 releaseVersion];

          v67 = [v6 stagedFirmwareVersion];
          *&buf[12] = [v67 buildVersion];

          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v38 = v78;
          v29 = 6;
          goto LABEL_49;
        }

        if (v13 > 3)
        {
          if (v13 != 4)
          {
            *buf = 0;
            *&buf[8] = 0;
            v34 = [v6 firmwareVersion];
            *buf = [v34 majorVersion];

            v35 = [v6 firmwareVersion];
            *&buf[4] = [v35 minorVersion];

            v36 = [v6 firmwareVersion];
            *&buf[8] = [v36 releaseVersion];

            v37 = [v6 firmwareVersion];
            *&buf[12] = [v37 buildVersion];

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
          v17 = [v6 hardwareVersion];
          v18 = [v17 length];
          v19 = [v6 hardwareVersion];
          v20 = [v19 UTF8String];
          v21 = v48;
          v22 = v49;
          v23 = v78;
          v24 = 4;
        }

        else
        {
          v30 = self->_layer2LocalEndpoint;
          v31 = self->_layer2RemoteEndpoint;
          if (v13 == 2)
          {
            v17 = [v6 modelName];
            v18 = [v17 length];
            v19 = [v6 modelName];
            v20 = [v19 UTF8String];
            v21 = v30;
            v22 = v31;
            v23 = v78;
            v24 = 2;
          }

          else
          {
            v17 = [v6 serialNumber];
            v18 = [v17 length];
            v19 = [v6 serialNumber];
            v20 = [v19 UTF8String];
            v21 = v30;
            v22 = v31;
            v23 = v78;
            v24 = 3;
          }
        }

LABEL_46:
        v63 = uarpPlatformEndpointBulkInfoResponseAddTLV(v21, v22, v23, 4096, &v83, v24, v18, v20);

        if (v63)
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

      if (v13 <= -2001563384)
      {
        if (v13 > -2001563387)
        {
          if (v13 != -2001563386)
          {
            if (v13 != -2001563385)
            {
              goto LABEL_53;
            }

            v39 = self->_layer2LocalEndpoint;
            v40 = self->_layer2RemoteEndpoint;
            v17 = [v6 nonce];
            v18 = [v17 length];
            v19 = [v6 nonce];
            v20 = [v19 bytes];
            v24 = -2001563385;
            v21 = v39;
            v22 = v40;
            v23 = v78;
            goto LABEL_46;
          }

          v56 = [v6 ECID];
          v57 = [v56 unsignedLongLongValue];

          *buf = v57;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v29 = -2001563386;
          v38 = v78;
          v58 = 8;
          goto LABEL_50;
        }

        if (v13 == -2001563388)
        {
          v52 = [v6 boardID32];
          v53 = [v52 unsignedLongValue];

          *buf = v53;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v38 = v78;
          v29 = -2001563388;
LABEL_44:
          v58 = 4;
          goto LABEL_50;
        }

        if (v13 != -2001563387)
        {
          goto LABEL_53;
        }

        v25 = [v6 chipID];
        v26 = [v25 unsignedLongValue];

        *buf = v26;
        v27 = self->_layer2LocalEndpoint;
        v28 = self->_layer2RemoteEndpoint;
        v29 = -2001563387;
LABEL_43:
        v38 = v78;
        goto LABEL_44;
      }

      if (v13 <= -2001563382)
      {
        if (v13 == -2001563383)
        {
          v54 = [v6 securityDomain];
          v55 = [v54 unsignedLongValue];

          *buf = v55;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v29 = -2001563383;
        }

        else
        {
          v32 = [v6 securityMode];
          v33 = [v32 unsignedLongValue];

          *buf = v33;
          v27 = self->_layer2LocalEndpoint;
          v28 = self->_layer2RemoteEndpoint;
          v29 = -2001563382;
        }

        goto LABEL_43;
      }

      if (v13 == -2001563381)
      {
        v59 = [v6 productionMode];
        v60 = [v59 unsignedLongValue];

        *buf = v60;
        v27 = self->_layer2LocalEndpoint;
        v28 = self->_layer2RemoteEndpoint;
        v29 = -2001563381;
        goto LABEL_43;
      }

      if (v13 != 1)
      {
        goto LABEL_53;
      }

      v41 = self->_layer2LocalEndpoint;
      v42 = self->_layer2RemoteEndpoint;
      v43 = [v6 manufacturerName];
      v44 = [v43 length];
      v45 = [v6 manufacturerName];
      LODWORD(v41) = uarpPlatformEndpointBulkInfoResponseAddTLV(v41, v42, v78, 4096, &v83, 1u, v44, [v45 UTF8String]);

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
  v73 = [v6 endpointID];
  v74 = [v73 unsignedShortValue];
  LODWORD(v71) = uarpPlatformEndpointBulkInfoResponse(v71, v72, v74, buf, v78, v83);

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

- (void)processOutstandingComponentInfoQueries:(id)a3 infoProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v76 = 0;
  v8 = calloc(0x1000uLL, 1uLL);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v7;
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

      v14 = [*(*(&v72 + 1) + 8 * v13) unsignedLongValue];
      v15 = v14;
      if (v14 > -2001563382)
      {
        if (v14 <= -2001563338)
        {
          if (v14 != -2001563381)
          {
            if (v14 == -2001563379)
            {
              v45 = [v6 enableMixMatch];
              v46 = [v45 unsignedLongLongValue];

              buf[0] = v46;
              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v20 = -2001563379;
            }

            else
            {
              if (v14 != -2001563368)
              {
                goto LABEL_44;
              }

              v25 = [v6 liveNonce];
              v26 = [v25 unsignedLongLongValue];

              buf[0] = v26;
              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v20 = -2001563368;
            }

            v23 = v8;
            v24 = 1;
            goto LABEL_40;
          }

          v43 = [v6 productionMode];
          v44 = [v43 unsignedLongValue];

          *buf = v44;
          layer2LocalEndpoint = self->_layer2LocalEndpoint;
          layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
          v20 = -2001563381;
        }

        else
        {
          if (v14 > 4)
          {
            if (v14 == 6)
            {
              *buf = 0;
              *&buf[8] = 0;
              v39 = [v6 stagedFirmwareVersion];
              *buf = [v39 majorVersion];

              v40 = [v6 stagedFirmwareVersion];
              *&buf[4] = [v40 minorVersion];

              v41 = [v6 stagedFirmwareVersion];
              *&buf[8] = [v41 releaseVersion];

              v42 = [v6 stagedFirmwareVersion];
              *&buf[12] = [v42 buildVersion];

              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v23 = v8;
              v20 = 6;
            }

            else
            {
              if (v14 != 5)
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
              v29 = [v6 firmwareVersion];
              *buf = [v29 majorVersion];

              v30 = [v6 firmwareVersion];
              *&buf[4] = [v30 minorVersion];

              v31 = [v6 firmwareVersion];
              *&buf[8] = [v31 releaseVersion];

              v32 = [v6 firmwareVersion];
              *&buf[12] = [v32 buildVersion];

              layer2LocalEndpoint = self->_layer2LocalEndpoint;
              layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
              v23 = v8;
              v20 = 5;
            }

            v24 = 16;
            goto LABEL_40;
          }

          if (v14 == -2001563337)
          {
            v33 = self->_layer2LocalEndpoint;
            v34 = self->_layer2RemoteEndpoint;
            v35 = [v6 nonceSeed];
            v36 = [v35 length];
            v37 = [v6 nonceSeed];
            v38 = uarpPlatformEndpointBulkInfoResponseAddTLV(v33, v34, v70, 4096, &v76, 0x88B29137, v36, [v37 bytes]);

            v8 = v70;
            goto LABEL_41;
          }

          if (v14 != -2001563335)
          {
            goto LABEL_44;
          }

          v16 = [v6 ftabGeneration];
          v17 = [v16 unsignedLongLongValue];

          *buf = v17;
          layer2LocalEndpoint = self->_layer2LocalEndpoint;
          layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
          v20 = -2001563335;
        }

        goto LABEL_38;
      }

      if (v14 > -2001563386)
      {
        switch(v14)
        {
          case -2001563385:
            v49 = self->_layer2LocalEndpoint;
            v50 = self->_layer2RemoteEndpoint;
            v51 = [v6 nonce];
            v52 = [v51 length];
            v53 = [v6 nonce];
            v38 = uarpPlatformEndpointBulkInfoResponseAddTLV(v49, v50, v70, 4096, &v76, 0x88B29107, v52, [v53 bytes]);

            v8 = v70;
            goto LABEL_41;
          case -2001563383:
            v56 = [v6 securityDomain];
            v57 = [v56 unsignedLongValue];

            *buf = v57;
            layer2LocalEndpoint = self->_layer2LocalEndpoint;
            layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
            v20 = -2001563383;
            break;
          case -2001563382:
            v27 = [v6 securityMode];
            v28 = [v27 unsignedLongValue];

            *buf = v28;
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

      if (v14 != -2001563388)
      {
        if (v14 != -2001563387)
        {
          if (v14 != -2001563386)
          {
            goto LABEL_44;
          }

          v21 = [v6 ECID];
          v22 = [v21 unsignedLongLongValue];

          *buf = v22;
          layer2LocalEndpoint = self->_layer2LocalEndpoint;
          layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
          v20 = -2001563386;
          v23 = v8;
          v24 = 8;
          goto LABEL_40;
        }

        v54 = [v6 chipID];
        v55 = [v54 unsignedLongValue];

        *buf = v55;
        layer2LocalEndpoint = self->_layer2LocalEndpoint;
        layer2RemoteEndpoint = self->_layer2RemoteEndpoint;
        v20 = -2001563387;
        goto LABEL_38;
      }

      v47 = [v6 boardID32];
      v48 = [v47 unsignedLongValue];

      *buf = v48;
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

  v61 = [v6 componentTag];
  buf[0] = [v61 char1];
  v62 = [v6 componentTag];
  buf[1] = [v62 char2];
  v63 = [v6 componentTag];
  buf[2] = [v63 char3];
  v64 = [v6 componentTag];
  buf[3] = [v64 char4];

  v65 = self->_layer2LocalEndpoint;
  v66 = self->_layer2RemoteEndpoint;
  v67 = [v6 endpointID];
  v68 = [v67 unsignedShortValue];
  uarpPlatformEndpointBulkInfoResponse(v65, v66, v68, buf, v8, v76);

  free(v8);
}

- (void)processRespondedEndpointInfoQueries:(id)a3 tlvs:(id)a4
{
  v6 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a4;
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

        v16 = [v6 outstandingInfoProperties];
        v17 = [v16 containsObject:v13];

        if (v17)
        {
          v18 = [v6 outstandingInfoProperties];
          [v18 removeObject:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v12 manufacturerName];
            [v6 setManufacturerName:v19];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v12 modelName];
              [v6 setModelName:v19];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = [v12 serialNumber];
                [v6 setSerialNumber:v19];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = [v12 hardwareVersion];
                  [v6 setHardwareVersion:v19];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [v12 firmwareVersion];
                    [v6 setFirmwareVersion:v19];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v19 = [v12 firmwareVersion];
                      [v6 setStagedFirmwareVersion:v19];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v19 = [v12 friendlyName];
                        [v6 setFriendlyName:v19];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v19 = [v12 hardwareFusing];
                          [v6 setHwFusingType:v19];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v19 = [v12 appleModelNumber];
                            [v6 setAppleModelNumber:v19];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v19 = [v12 assetIdentifier];
                              [v6 setAssetIdentifier:v19];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 boardID]);
                                [v6 setBoardID32:v19];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipEpoch]);
                                  [v6 setChipEpoch:v19];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipID]);
                                    [v6 setChipID:v19];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipRevision]);
                                      [v6 setChipRevision:v19];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 ecID]);
                                        [v6 setECID:v19];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v19 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 enableMixMatch]);
                                          [v6 setEnableMixMatch:v19];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v19 = [v12 nonce];
                                            v21 = [v19 copy];
                                            [v6 setNonce:v21];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 productionMode]);
                                              [v6 setProductionMode:v19];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 realHdcpKeyPresent]);
                                                [v6 setRealHdcpKeyPresent:v19];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityDomain]);
                                                  [v6 setSecurityDomain:v19];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v19 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityMode]);
                                                    [v6 setSecurityMode:v19];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      goto LABEL_56;
                                                    }

                                                    v19 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 liveNonce]);
                                                    [v6 setLiveNonce:v19];
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

- (void)processRespondedComponentInfoQueries:(id)a3 tlvs:(id)a4
{
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a4;
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
          v17 = [v6 componentTag];
          *buf = v25;
          v32 = "[UARPEndpointLayer3 processRespondedComponentInfoQueries:tlvs:]";
          v33 = 2112;
          v34 = v14;
          v35 = 2112;
          v36 = v13;
          v37 = 2112;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Responded Bulk Info Property %@ (%@) for endpoint configuration %@", buf, 0x2Au);
        }

        v18 = [v6 outstandingInfoProperties];
        v19 = [v18 containsObject:v13];

        if ((v19 & 1) == 0)
        {
          v22 = self->_log;
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          v21 = v22;
          v23 = [v6 componentTag];
          *buf = v25;
          v32 = "[UARPEndpointLayer3 processRespondedComponentInfoQueries:tlvs:]";
          v33 = 2112;
          v34 = v23;
          v35 = 2112;
          v36 = v14;
          v37 = 2112;
          v38 = v13;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: component %@ outstandingInfoProperties does not contain %@ (%@), ignoring", buf, 0x2Au);
LABEL_13:

LABEL_30:
          goto LABEL_31;
        }

        v20 = [v6 outstandingInfoProperties];
        [v20 removeObject:v13];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v12 firmwareVersion];
          [v6 setFirmwareVersion:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v12 firmwareVersion];
          [v6 setStagedFirmwareVersion:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 boardID]);
          [v6 setBoardID32:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipEpoch]);
          [v6 setChipEpoch:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipID]);
          [v6 setChipID:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 chipRevision]);
          [v6 setChipRevision:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 ecID]);
          [v6 setECID:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 enableMixMatch]);
          [v6 setEnableMixMatch:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 ftabGeneration]);
          [v6 setFtabGeneration:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v12 nonce];
          v23 = [v21 copy];
          [v6 setNonce:v23];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v12 nonceSeed];
          v23 = [v21 copy];
          [v6 setNonceSeed:v23];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 productionMode]);
          [v6 setProductionMode:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 realHdcpKeyPresent]);
          [v6 setRealHdcpKeyPresent:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityDomain]);
          [v6 setSecurityDomain:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v12 securityMode]);
          [v6 setSecurityMode:v21];
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v12 liveNonce]);
          [v6 setLiveNonce:v21];
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

- (void)prepareBulkQueriesForPersonalization:(id)a3
{
  v4 = a3;
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

        [(UARPEndpointLayer3 *)self prepareEndpointBulkQueriesForPersonalization:v4 config:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)prepareEndpointBulkQueriesForPersonalization:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 outstandingInfoProperties];
  [v8 removeAllObjects];

  v9 = [v6 requiredPersonalizationOptions];
  v10 = [v7 outstandingInfoProperties];
  [v10 addObjectsFromArray:v9];

  [(UARPEndpointLayer3 *)self queryOutstandingEndpointIDProperties:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [v7 components];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        [(UARPEndpointLayer3 *)self prepareComponentBulkQueriesForPersonalization:v6 component:*(*(&v16 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [(UARPEndpointLayer3 *)self checkPropertyQueryComplete];
}

- (void)prepareComponentBulkQueriesForPersonalization:(id)a3 component:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 preflightInfoProperties];
  [v7 removeAllObjects];

  v8 = [v5 outstandingInfoProperties];
  [v8 removeAllObjects];

  v9 = [v5 componentTag];
  v11 = [v6 requiredPersonalizationOptions:v9];

  v10 = [v5 preflightInfoProperties];

  [v10 addObjectsFromArray:v11];
}

- (void)prepareQueriesForPersonalization:(id)a3
{
  v4 = a3;
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
  v51 = self;
  v52 = v4;
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
    v11 = [v10 endpointID];
    v12 = [v11 unsignedShortValue];

    if (!v12)
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

  v4 = v52;
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
      v16 = [v15 manifestProperties];
      v17 = [v16 countByEnumeratingWithState:&v67 objects:v81 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v67 + 1) + 8 * v20);
            if ([v21 infoProperty] == -2001563388)
            {
              v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
              v23 = v22;
              v24 = &off_1000BE878;
LABEL_29:
              [v22 addObject:v24];
              goto LABEL_30;
            }

            if ([v21 infoProperty] == -2001563387)
            {
              v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
              v23 = v22;
              v24 = &off_1000BE890;
              goto LABEL_29;
            }

            if ([v21 infoProperty] == -2001563386)
            {
              v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
              v23 = v22;
              v24 = &off_1000BE8A8;
              goto LABEL_29;
            }

            if ([v21 infoProperty] == -2001563339)
            {
              v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
              v23 = v22;
              v24 = &off_1000BE8C0;
              goto LABEL_29;
            }

            if ([v21 infoProperty] == -2001563333)
            {
              v25 = [v21 propertyValue];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v23 = [v21 propertyValue];
                v27 = [v23 copy];
                [(NSMutableArray *)v13 setEnableFutureFWVersion:v27];
                goto LABEL_39;
              }
            }

            else
            {
              if ([v21 infoProperty] == -2001563385)
              {
                v28 = [v21 propertyValue];
                objc_opt_class();
                v29 = objc_opt_isKindOfClass();

                if (v29)
                {
                  v23 = [v21 propertyValue];
                  v27 = [v23 copy];
                  [(NSMutableArray *)v13 setNonce:v27];
                  goto LABEL_39;
                }

                v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
                v23 = v22;
                v24 = &off_1000BE8D8;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563381)
              {
                v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
                v23 = v22;
                v24 = &off_1000BE830;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563336)
              {
                v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
                v23 = v22;
                v24 = &off_1000BE8F0;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563383)
              {
                v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
                v23 = v22;
                v24 = &off_1000BE908;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563382)
              {
                v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
                v23 = v22;
                v24 = &off_1000BE860;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563368)
              {
                v22 = [(NSMutableArray *)v13 outstandingAppleProperties];
                v23 = v22;
                v24 = &off_1000BE818;
                goto LABEL_29;
              }

              if ([v21 infoProperty] == -2001563334)
              {
                v30 = [v21 propertyValue];
                objc_opt_class();
                v31 = objc_opt_isKindOfClass();

                if (v31)
                {
                  v23 = [v21 propertyValue];
                  v27 = [v23 copy];
                  [(NSMutableArray *)v13 setUidMode:v27];
LABEL_39:

LABEL_30:
                }
              }
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v32 = [v16 countByEnumeratingWithState:&v67 objects:v81 count:16];
          v18 = v32;
        }

        while (v32);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v33 = [v56 ftabProperties];
      v34 = [v33 countByEnumeratingWithState:&v63 objects:v80 count:16];
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
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v63 + 1) + 8 * i);
          if ([v38 infoProperty] != -2001563337)
          {
            if ([v38 infoProperty] != -2001563335)
            {
              continue;
            }

            v43 = [(NSMutableArray *)v13 outstandingAppleProperties];
            v41 = v43;
            v44 = &off_1000BE938;
            goto LABEL_66;
          }

          v39 = [v38 propertyValue];
          objc_opt_class();
          v40 = objc_opt_isKindOfClass();

          if ((v40 & 1) == 0)
          {
            v43 = [(NSMutableArray *)v13 outstandingAppleProperties];
            v41 = v43;
            v44 = &off_1000BE920;
LABEL_66:
            [v43 addObject:v44];
            goto LABEL_67;
          }

          v41 = [v38 propertyValue];
          v42 = [v41 copy];
          [(NSMutableArray *)v13 setNonceSeed:v42];

LABEL_67:
        }

        v35 = [v33 countByEnumeratingWithState:&v63 objects:v80 count:16];
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
  v45 = [(NSMutableArray *)v13 outstandingAppleProperties];
  v46 = [v45 countByEnumeratingWithState:&v59 objects:v79 count:16];
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
          objc_enumerationMutation(v45);
        }

        -[UARPEndpointLayer3 queryAppleProperty:](v51, "queryAppleProperty:", [*(*(&v59 + 1) + 8 * j) unsignedLongValue]);
      }

      v47 = [v45 countByEnumeratingWithState:&v59 objects:v79 count:16];
    }

    while (v47);
  }

  if ([(NSArray *)v51->_defaultAppleProperties count])
  {
    internalQueue = v51->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006965C;
    block[3] = &unk_1000B8D08;
    block[4] = v51;
    dispatch_async(internalQueue, block);
  }

LABEL_82:
  v4 = v52;
LABEL_84:

LABEL_85:
}

- (BOOL)craftTatsuRequests:(id)a3
{
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v99 = a3;
  v4 = [v99 tatsuTickets];
  v5 = [v4 countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (!v5)
  {
    v86 = 1;
    goto LABEL_116;
  }

  v6 = v5;
  v7 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
  v8 = *v113;
  v90 = v4;
  v88 = *v113;
LABEL_3:
  v9 = 0;
  v89 = v6;
  while (1)
  {
    if (*v113 != v8)
    {
      objc_enumerationMutation(v4);
    }

    v92 = v9;
    v10 = *(*(&v112 + 1) + 8 * v9);
    v98 = objc_opt_new();
    v11 = [(UARPEndpointLayer3 *)v10 manifestLocation];
    v12 = [v11 componentTag];

    if (!v12)
    {
      break;
    }

    v13 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:0];
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      v16 = [(UARPEndpointLayer3 *)v10 manifestLocation];
      v17 = [v16 componentTag];
      v18 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v17 endpointConfig:v14];

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
        v84 = [(UARPEndpointLayer3 *)v15 manifestLocation];
        v85 = [v84 componentTag];
        *buf = 136315650;
        v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
        v121 = 2112;
        v122 = self;
        v123 = 2112;
        v124 = v85;
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
        v122 = self;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s: cannot find endpoint for tatsu ticket; %@", buf, 0x16u);
      }

      v41 = v92;
      v42 = v98;
    }

LABEL_109:

    v9 = v41 + 1;
    if (v9 == v6)
    {
      v6 = [v4 countByEnumeratingWithState:&v112 objects:v125 count:16];
      v86 = 1;
      if (!v6)
      {
        goto LABEL_116;
      }

      goto LABEL_3;
    }
  }

  v19 = v7[271];
  v20 = [(UARPEndpointLayer3 *)v10 ticketName];
  v21 = [v19 stringWithFormat:@"@%@", v20];

  v22 = v98;
  v91 = v21;
  [v98 setObject:&__kCFBooleanTrue forKeyedSubscript:v21];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v93 = v10;
  v23 = [(UARPEndpointLayer3 *)v10 manifestProperties];
  v24 = [v23 countByEnumeratingWithState:&v108 objects:v118 count:16];
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
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v108 + 1) + 8 * v27);
      v29 = [v28 componentTag];
      v30 = v29;
      if (!self->_supportsBulkInfoQueries)
      {

        v30 = 0;
      }

      if ([v28 infoProperty] == -2001563388)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addBoardID:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563387)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addChipID:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563386)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addECID:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563333)
      {
        goto LABEL_24;
      }

      if ([v28 infoProperty] == -2001563385)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addNonce:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563381)
      {
        v35 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addProductionMode:0 componentTag:v30 tatsuTicket:v22 keyName:v35];

        v31 = [v28 keyName];
        v36 = [v22 objectForKeyedSubscript:v31];

        v97 = v36;
        goto LABEL_33;
      }

      if ([v28 infoProperty] == -2001563336)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addRealHdcpKeyPresent:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563383)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addSecurityDomain:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563382)
      {
        v37 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addSecurityMode:0 componentTag:v30 tatsuTicket:v22 keyName:v37];

        v31 = [v28 keyName];
        v38 = [v22 objectForKeyedSubscript:v31];

        v95 = v38;
LABEL_33:
        v22 = v98;
LABEL_38:

        goto LABEL_39;
      }

      if ([v28 infoProperty] == -2001563368)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addSoCLiveNonce:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563334)
      {
LABEL_24:
        v31 = [v28 propertyValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v31 BOOLValue])
          {
            v32 = &__kCFBooleanTrue;
          }

          else
          {
            v32 = &__kCFBooleanFalse;
          }

          v33 = [v28 keyName];
          v34 = v32;
          v22 = v98;
          [v98 setObject:v34 forKeyedSubscript:v33];
        }

        goto LABEL_38;
      }

      if ([v28 infoProperty] == -2001563339)
      {
        v31 = [v28 keyName];
        [(UARPEndpointLayer3 *)self addECIDData:0 componentTag:v30 tatsuTicket:v22 keyName:v31];
        goto LABEL_38;
      }

LABEL_39:

      v27 = v27 + 1;
    }

    while (v25 != v27);
    v39 = [v23 countByEnumeratingWithState:&v108 objects:v118 count:16];
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
    v55 = [v46 keyName];
    v56 = [v22 objectForKeyedSubscript:v55];

    if (v56)
    {
      [v56 addEntriesFromDictionary:v47];
      v57 = [v46 keyName];
      v58 = v22;
      v59 = v56;
    }

    else
    {
      v57 = [v46 keyName];
      v58 = v22;
      v59 = v47;
    }

    [v58 setObject:v59 forKeyedSubscript:v57];

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
      v67 = [(UARPEndpointLayer3 *)v93 ftabProperties];
      v68 = [v67 countByEnumeratingWithState:&v100 objects:v116 count:16];
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
          objc_enumerationMutation(v67);
        }

        v72 = *(*(&v100 + 1) + 8 * v71);
        v73 = [v72 componentTag];
        v74 = [v99 payloadWith4cc:v73];

        v75 = [v72 componentTag];
        v76 = v75;
        if (!self->_supportsBulkInfoQueries)
        {

          v76 = 0;
        }

        if ([v72 infoProperty] == -2001563337)
        {
          v77 = [v72 propertyValue];
          [(UARPEndpointLayer3 *)self addNonceSeed:0 payload:v74 componentTag:v76 defaultNonceSeed:v77];
          goto LABEL_98;
        }

        if ([v72 infoProperty] == -2001563335)
        {
          v77 = [v72 propertyValue];
          [(UARPEndpointLayer3 *)self addFTABGeneration:0 payload:v74 componentTag:v76 defaultFTABGeneration:v77];
LABEL_98:
        }

        if (v69 == ++v71)
        {
          v69 = [v67 countByEnumeratingWithState:&v100 objects:v116 count:16];
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
              v122 = v93;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s: Tatsu Ticket %@", buf, 0x16u);
            }

            v79 = self->_log;
            v6 = v89;
            v4 = v90;
            v7 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
            v8 = v88;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v80 = v79;
              v81 = [(UARPEndpointLayer3 *)v93 tatsuRequest];
              *buf = 136315394;
              v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
              v121 = 2112;
              v122 = v81;
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
  v51 = [v46 componentTag];
  v52 = [v46 ftabSubfile];
  v53 = [v46 digestKeyName];
  v54 = [(UARPEndpointLayer3 *)self needsDigest:v99 algorithm:v50 componentTag:v51 objectDictionary:v47 ftabSubfile:v52 digestKeyName:v53];

  v22 = v98;
  if (v54)
  {
    goto LABEL_78;
  }

  v60 = [v46 ftabSubfile];

  v61 = self->_log;
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
  if (v60)
  {
    if (v62)
    {
      v63 = v61;
      v64 = [v46 ftabSubfile];
      v65 = [v46 componentTag];
      v66 = [v65 tagString];
      *buf = 136315650;
      v120 = "[UARPEndpointLayer3 craftTatsuRequests:]";
      v121 = 2112;
      v122 = v64;
      v123 = 2112;
      v124 = v66;
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
  v4 = v90;
LABEL_116:

  return v86;
}

- (id)findConfigurationForEndpointID:(unint64_t)a3
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
        v10 = [v9 endpointID];
        v11 = [v10 unsignedIntegerValue];

        if (v11 == a3)
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

- (id)findComponentConfiguration:(id)a3 endpointConfig:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 components];
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
        v11 = [v10 componentTag];
        v12 = [v11 isEqual:v5];

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

- (void)addBoardID:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v22 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (!v22)
    {
      v17 = [v12 boardID32];

      if (v17)
      {
        v18 = [v13 boardID32];
      }

      else
      {
        v21 = [v13 boardID64];

        if (!v21)
        {
          goto LABEL_14;
        }

        v18 = [v13 boardID64];
      }

      v14 = v18;
      [v10 setObject:v18 forKeyedSubscript:v11];
      goto LABEL_13;
    }

    v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v22 endpointConfig:v12];
    v15 = [v14 boardID32];

    if (v15)
    {
      v16 = [v14 boardID32];
    }

    else
    {
      v19 = [v14 boardID64];

      if (!v19)
      {
LABEL_13:

        goto LABEL_14;
      }

      v16 = [v14 boardID64];
    }

    v20 = v16;
    [v10 setObject:v16 forKeyedSubscript:v11];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)addChipID:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v18)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v18 endpointConfig:v12];
      v15 = [v14 chipID];

      if (v15)
      {
        v16 = [v14 chipID];
        [v10 setObject:v16 forKeyedSubscript:v11];
      }
    }

    else
    {
      v17 = [v12 chipID];

      if (!v17)
      {
        goto LABEL_8;
      }

      v14 = [v13 chipID];
      [v10 setObject:v14 forKeyedSubscript:v11];
    }
  }

LABEL_8:
}

- (void)addECID:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v18)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v18 endpointConfig:v12];
      v15 = [v14 ECID];

      if (v15)
      {
        v16 = [v14 ECID];
        [v10 setObject:v16 forKeyedSubscript:v11];
      }
    }

    else
    {
      v17 = [v12 ECID];

      if (!v17)
      {
        goto LABEL_8;
      }

      v14 = [v13 ECID];
      [v10 setObject:v14 forKeyedSubscript:v11];
    }
  }

LABEL_8:
}

- (void)addNonce:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v18)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v18 endpointConfig:v12];
      v15 = [v14 nonce];

      if (v15)
      {
        v16 = [v14 nonce];
        [v10 setObject:v16 forKeyedSubscript:v11];
      }
    }

    else
    {
      v17 = [v12 nonce];

      if (!v17)
      {
        goto LABEL_8;
      }

      v14 = [v13 nonce];
      [v10 setObject:v14 forKeyedSubscript:v11];
    }
  }

LABEL_8:
}

- (void)addProductionMode:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v20 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v20)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v20 endpointConfig:v12];
      v15 = [v14 productionMode];

      if (v15)
      {
        v16 = [v14 productionMode];
        if ([v16 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [v10 setObject:v17 forKeyedSubscript:v11];
      }
    }

    else
    {
      v18 = [v12 productionMode];

      if (!v18)
      {
        goto LABEL_14;
      }

      v14 = [v13 productionMode];
      if ([v14 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [v10 setObject:v19 forKeyedSubscript:v11];
    }
  }

LABEL_14:
}

- (void)addRealHdcpKeyPresent:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v20 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v20)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v20 endpointConfig:v12];
      v15 = [v14 realHdcpKeyPresent];

      if (v15)
      {
        v16 = [v14 realHdcpKeyPresent];
        if ([v16 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [v10 setObject:v17 forKeyedSubscript:v11];
      }
    }

    else
    {
      v18 = [v12 realHdcpKeyPresent];

      if (!v18)
      {
        goto LABEL_14;
      }

      v14 = [v13 realHdcpKeyPresent];
      if ([v14 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [v10 setObject:v19 forKeyedSubscript:v11];
    }
  }

LABEL_14:
}

- (void)addSecurityDomain:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v18)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v18 endpointConfig:v12];
      v15 = [v14 securityDomain];

      if (v15)
      {
        v16 = [v14 securityDomain];
        [v10 setObject:v16 forKeyedSubscript:v11];
      }
    }

    else
    {
      v17 = [v12 securityDomain];

      if (!v17)
      {
        goto LABEL_8;
      }

      v14 = [v13 securityDomain];
      [v10 setObject:v14 forKeyedSubscript:v11];
    }
  }

LABEL_8:
}

- (void)addSecurityMode:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v20 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v20)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v20 endpointConfig:v12];
      v15 = [v14 securityMode];

      if (v15)
      {
        v16 = [v14 securityMode];
        if ([v16 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [v10 setObject:v17 forKeyedSubscript:v11];
      }
    }

    else
    {
      v18 = [v12 securityMode];

      if (!v18)
      {
        goto LABEL_14;
      }

      v14 = [v13 securityMode];
      if ([v14 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [v10 setObject:v19 forKeyedSubscript:v11];
    }
  }

LABEL_14:
}

- (void)addSoCLiveNonce:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v20 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v20)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v20 endpointConfig:v12];
      v15 = [v14 liveNonce];

      if (v15)
      {
        v16 = [v14 liveNonce];
        if ([v16 BOOLValue])
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [v10 setObject:v17 forKeyedSubscript:v11];
      }
    }

    else
    {
      v18 = [v12 liveNonce];

      if (!v18)
      {
        goto LABEL_14;
      }

      v14 = [v13 liveNonce];
      if ([v14 BOOLValue])
      {
        v19 = &__kCFBooleanTrue;
      }

      else
      {
        v19 = &__kCFBooleanFalse;
      }

      [v10 setObject:v19 forKeyedSubscript:v11];
    }
  }

LABEL_14:
}

- (void)addUIDMode:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v16 = a5;
  v10 = a6;
  v11 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v12 = v11;
  if (!a4)
  {
    if (v11)
    {
      v13 = [v11 uidMode];

      if (v13)
      {
        v14 = [v12 uidMode];
        if ([v14 BOOLValue])
        {
          v15 = &__kCFBooleanTrue;
        }

        else
        {
          v15 = &__kCFBooleanFalse;
        }

        [v16 setObject:v15 forKeyedSubscript:v10];
      }
    }
  }
}

- (void)addECIDData:(unint64_t)a3 componentTag:(id)a4 tatsuTicket:(id)a5 keyName:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
  v13 = v12;
  if (v12)
  {
    if (v18)
    {
      v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v18 endpointConfig:v12];
      v15 = [v14 ecidData];

      if (v15)
      {
        v16 = [v14 ecidData];
        [v10 setObject:v16 forKeyedSubscript:v11];
      }
    }

    else
    {
      v17 = [v12 ecidData];

      if (!v17)
      {
        goto LABEL_8;
      }

      v14 = [v13 ecidData];
      [v10 setObject:v14 forKeyedSubscript:v11];
    }
  }

LABEL_8:
}

- (void)addNonceSeed:(unint64_t)a3 payload:(id)a4 componentTag:(id)a5 defaultNonceSeed:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 copy];
    [v18 setNonceSeed:v12];
  }

  else
  {
    v13 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
    v12 = v13;
    if (v13)
    {
      if (v10 || ([v13 nonceSeed], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
      {
        v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v10 endpointConfig:v12];
        v15 = [v14 nonceSeed];

        if (v15)
        {
          v16 = [v14 nonceSeed];
          [v18 setNonceSeed:v16];
        }
      }

      else
      {
        v14 = [v12 nonceSeed];
        [v18 setNonceSeed:v14];
      }
    }
  }
}

- (void)addFTABGeneration:(unint64_t)a3 payload:(id)a4 componentTag:(id)a5 defaultFTABGeneration:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 copy];
    [v18 setFtabGeneration:v12];
  }

  else
  {
    v13 = [(UARPEndpointLayer3 *)self findConfigurationForEndpointID:a3];
    v12 = v13;
    if (v13)
    {
      if (v10 || ([v13 ftabGeneration], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
      {
        v14 = [(UARPEndpointLayer3 *)self findComponentConfiguration:v10 endpointConfig:v12];
        v15 = [v14 ftabGeneration];

        if (v15)
        {
          v16 = [v14 ftabGeneration];
          [v18 setFtabGeneration:v16];
        }
      }

      else
      {
        v14 = [v12 ftabGeneration];
        [v18 setFtabGeneration:v14];
      }
    }
  }
}

- (BOOL)needsDigest:(id)a3 algorithm:(int64_t)a4 componentTag:(id)a5 objectDictionary:(id)a6 ftabSubfile:(id)a7 digestKeyName:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = [a3 payloadWith4cc:a5];
  v17 = v16;
  if (v16)
  {
    if (v14)
    {
      [v16 generateHash:a4 ftabSubfile:v14];
    }

    else
    {
      [v16 generatePayloadHash:a4];
    }
    v19 = ;
    v18 = v19 != 0;
    if (v19)
    {
      [v13 setObject:v19 forKeyedSubscript:v15];
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
      v10 = self;
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

- (void)notifyAssetStagingProgress:(id)a3 bytesTransferred:(unint64_t)a4 assetLength:(unint64_t)a5
{
  v8 = a3;
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
      v16 = self;
      if (v10)
      {
        v12 = @"IS";
      }

      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v13, 0x20u);
    }
  }

  if (((a4 <= a5) & v10) == 1)
  {
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetStagingProgress:self asset:v8 bytesTransferred:a4 assetLength:a5];
  }
}

- (void)notifyAssetPersonalizationNeeded:(id)a3
{
  v4 = a3;
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
      v12 = self;
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
    if ([(UARPEndpointLayer3 *)self craftTatsuRequests:v4])
    {
      [v4 personalizationStateStarted];
      [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPersonalizationNeeded:self asset:v4];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100084B20();
    }
  }
}

- (void)notifyAssetPersonalizationComplete:(id)a3 status:(int64_t)a4
{
  v6 = a3;
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
      v14 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetPersonalizationComplete:self asset:v6 status:a4];
  }
}

- (void)notifyEndpointAppliedStagedAssets:(int64_t)a3
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
      v12 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAppliedStagedAssets:self layer3Flags:a3];
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
      v10 = self;
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

- (void)notifyAssetOffered:(id)a3
{
  v4 = a3;
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
      v12 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetOffered:self asset:v4];
  }

  else
  {
    [(UARPEndpointLayer3 *)self acceptLayer3Asset:v4];
  }
}

- (void)notifyEndpointAssetMetaDataComplete:(id)a3
{
  v4 = a3;
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
      v12 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetMetaDataComplete:self asset:v4];
  }
}

- (void)notifyEndpointPayloadMetaDataComplete:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v15 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadMetaDataComplete:self asset:v6 payload:v7];
  }
}

- (void)notifyEndpointPayloadData:(id)a3 payload:(id)a4 offset:(unint64_t)a5 payloadData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
      v20 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadData:self asset:v10 payload:v11 offset:a5 payloadData:v12];
  }
}

- (void)notifyEndpointPayloadDataComplete:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v15 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadDataComplete:self asset:v6 payload:v7];
  }
}

- (void)notifyAssetSolicited:(id)a3
{
  v4 = a3;
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
      v12 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetSolicited:self assetTag:v4];
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
      v10 = self;
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

- (void)notifyPayloadReady:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v15 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointPayloadReady:self asset:v6 payload:v7];
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

- (void)uarpMessageRecvFromTransport:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CB28;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)notifyTxFirmwareFullyStaged:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 processingStatus];
    v8 = [v4 uuid];
    v9 = [v8 description];
    v14 = 136315650;
    v15 = "[UARPEndpointLayer3 notifyTxFirmwareFullyStaged:]";
    v16 = 2048;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: TX Firmware Asset Fully Staged, status is %lu. UUID of %@", &v14, 0x20u);
  }

  [(NSMutableArray *)self->_completedAssets addObject:v4];
  [(NSMutableArray *)self->_firmwareAssets removeObject:v4];
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
      v17 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetFullyStaged:self txFirmwareAsset:v4];
  }
}

- (void)notifyRxFirmwareFullyStaged:(id)a3
{
  v4 = a3;
  if ([v4 processingStatus] == 1)
  {
    v5 = [v4 assetVersion];
    v6 = [(UARPEndpointLayer3 *)self directConfiguration];
    [v6 setStagedFirmwareVersion:v5];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    v9 = [v4 processingStatus];
    v10 = [v4 assetVersion];
    v11 = [(UARPEndpointLayer3 *)self directConfiguration];
    v12 = [v11 stagedFirmwareVersion];
    v13 = [v4 uuid];
    v14 = [v13 description];
    v19 = 136316162;
    v20 = "[UARPEndpointLayer3 notifyRxFirmwareFullyStaged:]";
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: RX Firmware Asset Fully Staged, status is %lu. Asset Verison is %@. Staged Version is %@. UUID of %@", &v19, 0x34u);
  }

  [(UARPEndpointLayer3 *)self notifyLayer2RxFirmwareFullyStaged:v4];
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
      v22 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetFullyStaged:self rxFirmwareAsset:v4];
  }
}

- (void)notifyLayer2RxFirmwareFullyStaged:(id)a3
{
  v4 = a3;
  if ([v4 processingStatus] == 36)
  {
    if (uarpPlatformEndpointAssetCorrupt(self->_layer2LocalEndpoint, [v4 layer2Context]))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100084D3C(log);
      }
    }

    goto LABEL_18;
  }

  if ([v4 processingStatus] == 1)
  {
    if (!uarpPlatformEndpointAssetFullyStaged(self->_layer2LocalEndpoint, [v4 layer2Context]))
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

  if ([v4 processingStatus] == 28)
  {
    if (!uarpPlatformEndpointAssetAbandon(self->_layer2LocalEndpoint, self->_layer2RemoteEndpoint, [v4 layer2Context], 2304))
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
    v9 = [v4 processingStatus];
    v10 = [v4 uuid];
    v11 = [v10 description];
    v13 = 136315650;
    v14 = "[UARPEndpointLayer3 notifyLayer2RxFirmwareFullyStaged:]";
    v15 = 2048;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Unhandled processing status is %lu. UUID of %@; assume corrupt", &v13, 0x20u);
  }

  if (uarpPlatformEndpointAssetCorrupt(self->_layer2LocalEndpoint, [v4 layer2Context]))
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100084D3C(v12);
    }
  }

LABEL_18:
}

- (void)notifyTxDynamicAssetFullyStaged:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 processingStatus];
    v8 = [v4 uuid];
    v9 = [v8 description];
    v14 = 136315650;
    v15 = "[UARPEndpointLayer3 notifyTxDynamicAssetFullyStaged:]";
    v16 = 2048;
    v17 = v7;
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
      v17 = self;
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
    [(UARPEndpointLayer3DelegateProtocol *)self->_layer3Delegate layer3EndpointAssetFullyStaged:self txDynamicAsset:v4];
  }
}

- (void)notifyRxDynamicAssetFullyStaged:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 asset4cc];
    v8 = [v4 processingStatus];
    v9 = [v4 uuid];
    v10 = [v9 description];
    v13 = 136315906;
    v14 = "[UARPEndpointLayer3 notifyRxDynamicAssetFullyStaged:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: RX Dynamic Asset Fully Staged (%@), status is %lu. UUID of %@", &v13, 0x2Au);
  }

  if (uarpPlatformEndpointAssetFullyStaged(self->_layer2LocalEndpoint, [v4 layer2Context]))
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100084E64(v11);
    }
  }

  v12 = [v4 superbinaryURL];
  [v4 writeToURL:v12 error:0];
}

- (id)tlvNameForAppleProperty:(id)a3
{
  v3 = [a3 unsignedIntegerValue];
  if ((v3 - 1) > 0x21)
  {
    return 0;
  }

  else
  {
    return *(&off_1000B9720 + (v3 - 1));
  }
}

- (BOOL)layer2CallbackSendMessage:(char *)a3 length:(unsigned int)a4
{
  v5 = [NSData dataWithBytes:a3 length:a4];
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

- (void)layer2CallbackSuperBinaryOffered:(void *)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006DB80;
  v4[3] = &unk_1000B96B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(internalQueue, v4);
}

- (void)layer2CallbackUnsolicitedDynamicAssetOffered:(void *)a3 assetTag:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DCEC;
  block[3] = &unk_1000B8BC8;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackSolicitedDynamicAssetOffered:(void *)a3 asset:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DE54;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (unsigned)layer2CallbackApplyStagedAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uuid = self->_uuid;
    v5 = log;
    v6 = [(NSUUID *)uuid UUIDString];
    v19 = 136315394;
    v20 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackApplyStagedAssets]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %@", &v19, 0x16u);
  }

  v7 = [(UARPEndpointLayer3 *)self directConfiguration];
  v8 = [v7 stagedFirmwareVersion];
  v9 = [v8 isValid];

  v10 = self->_log;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = v10;
      v13 = [(UARPEndpointLayer3 *)self directConfiguration];
      v14 = [v13 firmwareVersion];
      v15 = [(UARPEndpointLayer3 *)self directConfiguration];
      v16 = [v15 stagedFirmwareVersion];
      v17 = self->_uuid;
      v19 = 136315906;
      v20 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackApplyStagedAssets]";
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v16;
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

- (void)layer2CallbackApplyStagedAssetsResponse:(unsigned __int16)a3 layer3Flags:(int64_t)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006E184;
  v5[3] = &unk_1000B96B0;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(internalQueue, v5);
}

- (void)layer2CallbackManufacturerNameResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setManufacturerName:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE7E8];

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

- (void)layer2CallbackModelNameResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setModelName:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE950];

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

- (void)layer2CallbackSerialNumberResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setSerialNumber:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE968];

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

- (void)layer2CallbackHardwareVersionResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setHardwareVersion:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE878];

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

- (void)layer2CallbackActiveFirmwareVersionResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setFirmwareVersion:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE890];

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

- (void)layer2CallbackStagedFirmwareVersionResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setStagedFirmwareVersion:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE980];

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

- (void)layer2CallbackAssetSolicitation:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EB24;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)layer2CallbackRescindAllAssets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uuid = self->_uuid;
    v5 = log;
    v6 = [(NSUUID *)uuid UUIDString];
    *buf = 136315394;
    v10 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackRescindAllAssets]";
    v11 = 2112;
    v12 = v6;
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

- (void)layer2CallbackWatchdogSet:(unint64_t)a3
{
  [(UARPEndpointLayer3 *)self watchdogCancelOnQueue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
  layer2WatchdogTimer = self->_layer2WatchdogTimer;
  self->_layer2WatchdogTimer = v5;

  if (1000000 * a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 1000000 * a3;
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

- (void)layer2CallbackProtocolVersionSelected:(unint64_t)a3
{
  self->_protocolVersion = a3;
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
        v8 = [(NSUUID *)self->_uuid UUIDString];
        *buf = 136315650;
        v18 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackProtocolVersionSelected:]";
        v19 = 2080;
        v20 = v7;
        v21 = 2112;
        v22 = v8;
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
      v13 = [(NSUUID *)self->_uuid UUIDString];
      *buf = 136315650;
      v18 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackProtocolVersionSelected:]";
      v19 = 2080;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Notify Endpoint Reachable, Role %s, %@", buf, 0x20u);
    }

    [(UARPEndpointLayer3 *)self notifyEndpointReachable];
  }
}

- (void)layer2CallbackFriendlyNameResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setFriendlyName:v13];

          v14 = [v10 outstandingInfoProperties];
          [v14 removeObject:&off_1000BE860];

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

- (void)layer2CallbackLogError:(int)a3 logMsg:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000851D0();
  }
}

- (void)layer2CallbackLogInfo:(int)a3 logMsg:(id)a4
{
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    v9 = 136315650;
    v10 = uarpLoggingCategoryToString(a3);
    v11 = 1024;
    v12 = getpid();
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: [pid=%d] %@\n", &v9, 0x1Cu);
  }
}

- (void)layer2CallbackLogDebug:(int)a3 logMsg:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10008526C();
  }
}

- (void)layer2CallbackLogFault:(int)a3 logMsg:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
  {
    sub_100085310();
  }
}

- (void)layer2CallbackDownstreamReachable:(unsigned __int16)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F590;
  v4[3] = &unk_1000B96D8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)layer2CallbackDownstreamUnreachable:(unsigned __int16)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F66C;
  v4[3] = &unk_1000B96D8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)layer2CallbackDownstreamRecvMessage:(id)a3 uarpMsg:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F798;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackDiscoveredEndpointIDs:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F880;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)layer2CallbackDiscoveredEndpointID:(unsigned __int16)a3 components:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FAF0;
  block[3] = &unk_1000B8BA0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)layer2CallbackBulkInfoQuery:(unsigned __int16)a3 componentTag:(id)a4 infoProperties:(id)a5
{
  v8 = a4;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006FD44;
  v13[3] = &unk_1000B9700;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

- (void)layer2CallbackBulkInfoResponse:(unsigned __int16)a3 componentTag:(id)a4 tlvs:(id)a5
{
  v8 = a4;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100070030;
  v13[3] = &unk_1000B9700;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

- (void)layer2CallbackAppleModelNumberResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setAppleModelNumber:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE7E8];

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

- (void)layer2CallbackHwFusingTypeResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setHwFusingType:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE950];

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

- (void)layer2CallbackManifestPrefixResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setManifestPrefix:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE968];

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

- (void)layer2CallbackBoardID32Response:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setBoardID32:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE878];

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

- (void)layer2CallbackBoardID64Response:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setBoardID64:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE950];

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

- (void)layer2CallbackChipIDResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setChipID:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE890];

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

- (void)layer2CallbackChipRevisionResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setChipRevision:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE980];

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

- (void)layer2CallbackEcidResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setECID:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE8A8];

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

- (void)layer2CallbackSecurityDomainResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setSecurityDomain:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE908];

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

- (void)layer2CallbackSecurityModeResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setSecurityMode:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE860];

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

- (void)layer2CallbackProductionModeResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setProductionMode:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE830];

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

- (void)layer2CallbackChipEpochResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setChipEpoch:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE848];

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

- (void)layer2CallbackEnableMixMatchResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setEnableMixMatch:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE800];

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

- (void)layer2CallbackSocLiveNonceResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setLiveNonce:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE818];

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

- (void)layer2CallbackPrefixNeedsLogicalUnitNumberResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setPrefixNeedsLUN:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE998];

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

- (void)layer2CallbackSuffixNeedsLogicalUnitNumberResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setSuffixNeedsLUN:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE9B0];

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

- (void)layer2CallbackLogicalUnitNumberResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setLogicalUnitNumber:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE9C8];

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

- (void)layer2CallbackTicketLongNameResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setTicketLongName:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE9E0];

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

- (void)layer2CallbackRequiresPersonalizationResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setRequiresPersonalization:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE9F8];

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

- (void)layer2CallbackApBoardIDResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setApBoardID:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEA10];

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

- (void)layer2CallbackApChipIDResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setApChipID:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEA28];

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

- (void)layer2CallbackApProductionModeResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setApProductionMode:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEA40];

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

- (void)layer2CallbackApSecurityModeResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setApSecurityMode:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEA58];

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

- (void)layer2CallbackHardwareSpecificResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setHardwareSpecific:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BEA70];

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

- (void)layer2CallbackNonceResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setNonce:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE8D8];

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

- (void)layer2CallbackLifeResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setLife:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEA88];

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

- (void)layer2CallbackProvisioningResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setProvisioning:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEAA0];

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

- (void)layer2CallbackManifestEpochResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setManifestEpoch:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BEAB8];

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

- (void)layer2CallbackManifestSuffixResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setManifestSuffix:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BEAD0];

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

- (void)layer2CallbackEcidDataResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setEcidData:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE8C0];

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

- (void)layer2CallbackNonceSeedResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          v13 = [v4 copy];
          [v10 setNonceSeed:v13];

          v14 = [v10 outstandingAppleProperties];
          [v14 removeObject:&off_1000BE920];

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

- (void)layer2CallbackRealHdcpKeyPresentResponse:(id)a3
{
  v4 = a3;
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
        v11 = [v10 endpointID];
        v12 = [v11 unsignedShortValue];

        if (!v12)
        {
          [v10 setRealHdcpKeyPresent:v4];
          v13 = [v10 outstandingAppleProperties];
          [v13 removeObject:&off_1000BE8F0];

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

- (void)assetReady:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100072F80;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetMetaDataTLV:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073174;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)assetMetaDataComplete:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000732D0;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetMetaDataProcessingError:(unint64_t)a3 asset:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073438;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)assetPayloadReady:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073544;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetPayloadMetaDataTLV:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000737BC;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

- (void)assetPayloadMetaDataComplete:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073958;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetPayloadMetaDataProcessingError:(unint64_t)a3 asset:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073B50;
  block[3] = &unk_1000B8BC8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)assetPayloadData:(id)a3 offset:(unint64_t)a4 asset:(id)a5
{
  v8 = a3;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100073C98;
  v13[3] = &unk_1000B8B78;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(internalQueue, v13);
}

- (void)assetPayloadDataComplete:(id)a3 hash:(id)a4
{
  v5 = a3;
  internalQueue = self->_internalQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073EA8;
  v8[3] = &unk_1000B8A88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, v8);
}

- (id)assetGetBytes:(unint64_t)a3 offset:(unint64_t)a4 asset:(id)a5
{
  v8 = a5;
  v9 = [v8 getDataBlock:a3 offset:a4];
  [v8 setBytesTransferred:{objc_msgSend(v8, "bytesTransferred") + objc_msgSend(v9, "length")}];
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100074260;
  v13[3] = &unk_1000B8A88;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  dispatch_async(internalQueue, v13);

  return v9;
}

- (BOOL)assetSetData:(id)a3 offset:(unint64_t)a4 asset:(id)a5
{
  v6 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Set Data for SuperBinary <%@> for Endpoint <%@>", &v9, 0x16u);
  }

  return 0;
}

- (void)assetRescind:(id)a3
{
  v4 = [(UARPEndpointLayer3 *)self directConfiguration];
  v5 = [v4 stagedFirmwareVersion];
  [v4 setFirmwareVersion:v5];

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

  [v4 setStagedFirmwareVersion:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v4 components];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * i) setStagedFirmwareVersion:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)assetRescinded:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000745AC;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetCorrupt:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000746F4;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetOrphan:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074848;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetRelease:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074990;
  v7[3] = &unk_1000B8A88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetProcessingCompleted:(unint64_t)a3 flagsDescription:(id)a4 asset:(id)a5
{
  v8 = a4;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100074B14;
  v13[3] = &unk_1000B8B78;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

- (void)assetProcessingCompletedAck:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074D50;
  v7[3] = &unk_1000B8A88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)assetPreProcessing:(unint64_t)a3 flagsDescription:(id)a4 asset:(id)a5
{
  v6 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Pre Processing Notification for SuperBinary <%@> for Endpoint <%@>", &v8, 0x16u);
  }
}

- (void)assetPreProcessingAck:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Pre Processing Notification Ack for SuperBinary <%@> for Endpoint <%@>", &v6, 0x16u);
  }
}

@end