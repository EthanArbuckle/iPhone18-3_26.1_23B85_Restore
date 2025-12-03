@interface UARPEndpointControllerInternal
- (BOOL)prepareConnection;
- (UARPEndpointControllerInternal)initWithNewConnection:(id)connection hostManager:(id)manager;
- (id)description;
- (unint64_t)hash;
- (void)endpointControllerApplyStagedAssets:(id)assets;
- (void)endpointControllerCacheAsset:(id)asset assetUUID:(id)d appendData:(id)data reply:(id)reply;
- (void)endpointControllerCacheAssetFinish:(id)finish assetUUID:(id)d hashData:(id)data reply:(id)reply;
- (void)endpointControllerCacheAssetStart:(id)start assetUUID:(id)d reply:(id)reply;
- (void)endpointControllerCheckAssetManager:(id)manager;
- (void)endpointControllerClearAssets;
- (void)endpointControllerClearDatabase;
- (void)endpointControllerClearPacketCaptures;
- (void)endpointControllerExportDynamicAsset:(id)asset endpointUUID:(id)d dynamicAssetURL:(id)l reply:(id)reply;
- (void)endpointControllerExportPersonalizedAsset:(id)asset endpointUUID:(id)d personalizedAssetURL:(id)l reply:(id)reply;
- (void)endpointControllerMonitorForDevices;
- (void)endpointControllerPauseAssetManagerNotifications:(id)notifications reply:(id)reply;
- (void)endpointControllerPersonalizeFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tatsuRequest:(id)request tssServerURL:(id)l;
- (void)endpointControllerPersonalizeFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tssServerURL:(id)l;
- (void)endpointControllerPullDynamicAsset:(id)asset assetUUID:(id)d range:(_NSRange)range reply:(id)reply;
- (void)endpointControllerPullDynamicAssetFinish:(id)finish assetUUID:(id)d hashData:(id)data reply:(id)reply;
- (void)endpointControllerPullDynamicAssetStart:(id)start assetUUID:(id)d reply:(id)reply;
- (void)endpointControllerQueryAppleModelNumber:(id)number endpointNumber:(id)endpointNumber componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryAssetIdentifier:(id)identifier endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryBoardID:(id)d endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryChipID:(id)d endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryChipRevision:(id)revision endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryComponentTag:(id)tag endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryECID:(id)d endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryECIDData:(id)data endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryEncodedMappingDatabase:(id)database;
- (void)endpointControllerQueryFTABGeneration:(id)generation endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryFirmwareVersion:(id)version endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryFriendlyName:(id)name endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryHardwareFusingType:(id)type endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryHardwareVersion:(id)version endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryManufacturerName:(id)name endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryModelName:(id)name endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryNonce:(id)nonce endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryNonceSeed:(id)seed endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryNumberOfComponents:(id)components endpointNumber:(id)number reply:(id)reply;
- (void)endpointControllerQueryNumberOfEndpoints:(id)endpoints reply:(id)reply;
- (void)endpointControllerQueryProductionMode:(id)mode endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryRealHdcpKeyPresent:(id)present endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQuerySecurityDomain:(id)domain endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQuerySecurityMode:(id)mode endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQuerySerialNumber:(id)number endpointNumber:(id)endpointNumber componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerQueryStagedFirmwareVersion:(id)version endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply;
- (void)endpointControllerRescindStagedAssets:(id)assets;
- (void)endpointControllerResumeAssetManagerNotifications:(id)notifications reply:(id)reply;
- (void)endpointControllerSolicitAsset:(id)asset assetTag:(id)tag assetURL:(id)l assetUUID:(id)d;
- (void)endpointControllerStageAndApplyFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tssServerURL:(id)l;
- (void)endpointControllerStageFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tssServerURL:(id)l;
- (void)endpointControllerTssRequestsForPersonalizedAsset:(id)asset endpointUUID:(id)d reply:(id)reply;
- (void)endpointControllerTssResponsesForPersonalizedAsset:(id)asset endpointUUID:(id)d reply:(id)reply;
@end

@implementation UARPEndpointControllerInternal

- (UARPEndpointControllerInternal)initWithNewConnection:(id)connection hostManager:(id)manager
{
  connectionCopy = connection;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = UARPEndpointControllerInternal;
  v9 = [(UARPEndpointControllerInternal *)&v19 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.uarp.uarpd.controller", 0);
    internalQueue = v9->_internalQueue;
    v9->_internalQueue = v10;

    v12 = os_log_create("com.apple.uarp", "hostcontroller");
    log = v9->_log;
    v9->_log = v12;

    v14 = +[NSUUID UUID];
    uuid = v9->_uuid;
    v9->_uuid = v14;

    objc_storeStrong(&v9->_xpcConnection, connection);
    objc_storeWeak(&v9->_hostManager, managerCopy);
    v9->_processIdentifier = [(NSXPCConnection *)v9->_xpcConnection processIdentifier];
    v16 = v9->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      processIdentifier = v9->_processIdentifier;
      *buf = 67109120;
      v21 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Storing connection from PID %d", buf, 8u);
    }
  }

  return v9;
}

- (BOOL)prepareConnection
{
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPEndpointControllerProtocol];
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v3];

  exportedInterface = [(NSXPCConnection *)self->_xpcConnection exportedInterface];
  UARPEndpointControllerProtocolSetupInterface();

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPEndpointControllerDelegateProtocol];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];

  remoteObjectInterface = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
  UARPEndpointControllerDelegateProtocolSetupInterface();

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DB9C;
  v10[3] = &unk_1000B8CE0;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DC28;
  v8[3] = &unk_1000B8CE0;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v8];
  [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_internalQueue];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return 1;
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
  v3 = [NSString stringWithFormat:@"UARPEndpointControllerInternal <%@>", uUIDString];

  return v3;
}

- (void)endpointControllerMonitorForDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained monitorForDevices:self];
}

- (void)endpointControllerQueryNumberOfEndpoints:(id)endpoints reply:(id)reply
{
  endpointsCopy = endpoints;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    uUIDString = [endpointsCopy UUIDString];
    v17 = 136315394;
    v18 = "[UARPEndpointControllerInternal endpointControllerQueryNumberOfEndpoints:reply:]";
    v19 = 2112;
    v20 = uUIDString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v17, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v12 = [WeakRetained findHostEndpointByUUID:endpointsCopy];

  if (v12)
  {
    layer3Endpoint = [v12 layer3Endpoint];
    configuration = [layer3Endpoint configuration];

    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [configuration count]);
    replyCopy[2](replyCopy, v15);
  }

  else
  {
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10007FB64(v16);
    }
  }
}

- (void)endpointControllerQueryNumberOfComponents:(id)components endpointNumber:(id)number reply:(id)reply
{
  componentsCopy = components;
  numberCopy = number;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    uUIDString = [componentsCopy UUIDString];
    v27 = 136315394;
    v28 = "[UARPEndpointControllerInternal endpointControllerQueryNumberOfComponents:endpointNumber:reply:]";
    v29 = 2112;
    v30 = uUIDString;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v27, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:componentsCopy];

  if (v15)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v15 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v19 = [configuration count];

    if (unsignedIntegerValue <= v19)
    {
      layer3Endpoint2 = [v15 layer3Endpoint];
      configuration2 = [layer3Endpoint2 configuration];
      v23 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
      components = [v23 components];
      v25 = [components count];

      v26 = [NSNumber numberWithUnsignedInteger:v25];
      replyCopy[2](replyCopy, v26);
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10007FC00(v20);
    }
  }
}

- (void)endpointControllerQueryComponentTag:(id)tag endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  tagCopy = tag;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [tagCopy UUIDString];
    *buf = 136315906;
    v39 = "[UARPEndpointControllerInternal endpointControllerQueryComponentTag:endpointNumber:componentNumber:reply:]";
    v40 = 2112;
    v41 = uUIDString;
    v42 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v44 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:tagCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22 && componentNumberCopy)
    {
      v37 = componentNumberCopy;
      unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
      layer3Endpoint2 = [v18 layer3Endpoint];
      configuration2 = [layer3Endpoint2 configuration];
      v25 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
      components = [v25 components];
      v27 = [components count];

      if (unsignedIntegerValue2 <= v27)
      {
        layer3Endpoint3 = [v18 layer3Endpoint];
        configuration3 = [layer3Endpoint3 configuration];
        v31 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];

        components2 = [v31 components];
        v33 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];

        componentTag = [v33 componentTag];
        tagString = [componentTag tagString];
        replyCopy[2](replyCopy, tagString);
      }

      else
      {
        replyCopy[2](replyCopy, 0);
      }

      componentNumberCopy = v37;
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v28 = self->_log;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10007FC9C(v28);
    }
  }
}

- (void)endpointControllerQueryManufacturerName:(id)name endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  nameCopy = name;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [nameCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryManufacturerName:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:nameCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          manufacturerName = [v36 manufacturerName];
          replyCopy[2](replyCopy, manufacturerName);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        manufacturerName2 = [v31 manufacturerName];
        replyCopy[2](replyCopy, manufacturerName2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007FD38(v23);
    }
  }
}

- (void)endpointControllerQueryModelName:(id)name endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  nameCopy = name;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [nameCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryModelName:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:nameCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          modelName = [v36 modelName];
          replyCopy[2](replyCopy, modelName);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        modelName2 = [v31 modelName];
        replyCopy[2](replyCopy, modelName2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007FDD4(v23);
    }
  }
}

- (void)endpointControllerQueryAppleModelNumber:(id)number endpointNumber:(id)endpointNumber componentNumber:(id)componentNumber reply:(id)reply
{
  numberCopy = number;
  endpointNumberCopy = endpointNumber;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [numberCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryAppleModelNumber:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [endpointNumberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:numberCopy];

  if (v18)
  {
    unsignedIntegerValue = [endpointNumberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          appleModelNumber = [v36 appleModelNumber];
          replyCopy[2](replyCopy, appleModelNumber);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        appleModelNumber2 = [v31 appleModelNumber];
        replyCopy[2](replyCopy, appleModelNumber2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007FE70(v23);
    }
  }
}

- (void)endpointControllerQueryAssetIdentifier:(id)identifier endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  identifierCopy = identifier;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [identifierCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryAssetIdentifier:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:identifierCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          assetIdentifier = [v36 assetIdentifier];
          replyCopy[2](replyCopy, assetIdentifier);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        assetIdentifier2 = [v31 assetIdentifier];
        replyCopy[2](replyCopy, assetIdentifier2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007FF0C(v23);
    }
  }
}

- (void)endpointControllerQueryHardwareFusingType:(id)type endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  typeCopy = type;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [typeCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryHardwareFusingType:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:typeCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          hwFusingType = [v36 hwFusingType];
          replyCopy[2](replyCopy, hwFusingType);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        hwFusingType2 = [v31 hwFusingType];
        replyCopy[2](replyCopy, hwFusingType2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007FFA8(v23);
    }
  }
}

- (void)endpointControllerQuerySerialNumber:(id)number endpointNumber:(id)endpointNumber componentNumber:(id)componentNumber reply:(id)reply
{
  numberCopy = number;
  endpointNumberCopy = endpointNumber;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [numberCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQuerySerialNumber:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [endpointNumberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:numberCopy];

  if (v18)
  {
    unsignedIntegerValue = [endpointNumberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          serialNumber = [v36 serialNumber];
          replyCopy[2](replyCopy, serialNumber);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        serialNumber2 = [v31 serialNumber];
        replyCopy[2](replyCopy, serialNumber2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080044(v23);
    }
  }
}

- (void)endpointControllerQueryHardwareVersion:(id)version endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  versionCopy = version;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [versionCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryHardwareVersion:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:versionCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          hardwareVersion = [v36 hardwareVersion];
          replyCopy[2](replyCopy, hardwareVersion);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        hardwareVersion2 = [v31 hardwareVersion];
        replyCopy[2](replyCopy, hardwareVersion2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000800E0(v23);
    }
  }
}

- (void)endpointControllerQueryFirmwareVersion:(id)version endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  versionCopy = version;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [versionCopy UUIDString];
    *buf = 136315906;
    v44 = "[UARPEndpointControllerInternal endpointControllerQueryFirmwareVersion:endpointNumber:componentNumber:reply:]";
    v45 = 2112;
    v46 = uUIDString;
    v47 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v49 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:versionCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v42 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          firmwareVersion = [v36 firmwareVersion];
          versionString = [firmwareVersion versionString];
          replyCopy[2](replyCopy, versionString);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v42;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        firmwareVersion2 = [v31 firmwareVersion];
        versionString2 = [firmwareVersion2 versionString];
        replyCopy[2](replyCopy, versionString2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10008017C(v23);
    }
  }
}

- (void)endpointControllerQueryStagedFirmwareVersion:(id)version endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  versionCopy = version;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [versionCopy UUIDString];
    *buf = 136315906;
    v44 = "[UARPEndpointControllerInternal endpointControllerQueryStagedFirmwareVersion:endpointNumber:componentNumber:reply:]";
    v45 = 2112;
    v46 = uUIDString;
    v47 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v49 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:versionCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v42 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          stagedFirmwareVersion = [v36 stagedFirmwareVersion];
          versionString = [stagedFirmwareVersion versionString];
          replyCopy[2](replyCopy, versionString);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v42;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        stagedFirmwareVersion2 = [v31 stagedFirmwareVersion];
        versionString2 = [stagedFirmwareVersion2 versionString];
        replyCopy[2](replyCopy, versionString2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080218(v23);
    }
  }
}

- (void)endpointControllerQueryFriendlyName:(id)name endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  nameCopy = name;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [nameCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryFriendlyName:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:nameCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          friendlyName = [v36 friendlyName];
          replyCopy[2](replyCopy, friendlyName);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        friendlyName2 = [v31 friendlyName];
        replyCopy[2](replyCopy, friendlyName2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000802B4(v23);
    }
  }
}

- (void)endpointControllerQueryBoardID:(id)d endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  dCopy = d;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    *buf = 136315906;
    v52 = "[UARPEndpointControllerInternal endpointControllerQueryBoardID:endpointNumber:componentNumber:reply:]";
    v53 = 2112;
    v54 = uUIDString;
    v55 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v57 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v49 = numberCopy;
        v50 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v27 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v27 components];
        v29 = [components count];

        v48 = unsignedIntegerValue2;
        if (unsignedIntegerValue2 <= v29)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v39 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v39 components];
          v41 = [components2 objectAtIndexedSubscript:v48];
          boardID32 = [v41 boardID32];

          numberCopy = v49;
          if (!boardID32)
          {
            layer3Endpoint4 = [v18 layer3Endpoint];
            configuration4 = [layer3Endpoint4 configuration];
            v45 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
            components3 = [v45 components];
            v47 = [components3 objectAtIndexedSubscript:v48];
            boardID32 = [v47 boardID64];
          }

          replyCopy[2](replyCopy, boardID32);

          componentNumberCopy = v50;
        }

        else
        {
          replyCopy[2](replyCopy, 0);
          numberCopy = v49;
          componentNumberCopy = v50;
        }
      }

      else
      {
        layer3Endpoint5 = [v18 layer3Endpoint];
        configuration5 = [layer3Endpoint5 configuration];
        v32 = [configuration5 objectAtIndexedSubscript:unsignedIntegerValue];
        boardID322 = [v32 boardID32];

        if (!boardID322)
        {
          layer3Endpoint6 = [v18 layer3Endpoint];
          configuration6 = [layer3Endpoint6 configuration];
          v36 = [configuration6 objectAtIndexedSubscript:unsignedIntegerValue];
          boardID322 = [v36 boardID64];
        }

        replyCopy[2](replyCopy, boardID322);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080350(v23);
    }
  }
}

- (void)endpointControllerQueryChipID:(id)d endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  dCopy = d;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryChipID:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          chipID = [v36 chipID];
          replyCopy[2](replyCopy, chipID);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        chipID2 = [v31 chipID];
        replyCopy[2](replyCopy, chipID2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000803EC(v23);
    }
  }
}

- (void)endpointControllerQueryChipRevision:(id)revision endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  revisionCopy = revision;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [revisionCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryChipRevision:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:revisionCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          chipRevision = [v36 chipRevision];
          replyCopy[2](replyCopy, chipRevision);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        chipRevision2 = [v31 chipRevision];
        replyCopy[2](replyCopy, chipRevision2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080488(v23);
    }
  }
}

- (void)endpointControllerQueryECID:(id)d endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  dCopy = d;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryECID:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          eCID = [v36 ECID];
          replyCopy[2](replyCopy, eCID);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        eCID2 = [v31 ECID];
        replyCopy[2](replyCopy, eCID2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080524(v23);
    }
  }
}

- (void)endpointControllerQueryECIDData:(id)data endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  dataCopy = data;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dataCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryECIDData:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:dataCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          ecidData = [v36 ecidData];
          replyCopy[2](replyCopy, ecidData);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        ecidData2 = [v31 ecidData];
        replyCopy[2](replyCopy, ecidData2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000805C0(v23);
    }
  }
}

- (void)endpointControllerQueryFTABGeneration:(id)generation endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  generationCopy = generation;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [generationCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryFTABGeneration:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:generationCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          ftabGeneration = [v36 ftabGeneration];
          replyCopy[2](replyCopy, ftabGeneration);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        ftabGeneration2 = [v31 ftabGeneration];
        replyCopy[2](replyCopy, ftabGeneration2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10008065C(v23);
    }
  }
}

- (void)endpointControllerQueryNonce:(id)nonce endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  nonceCopy = nonce;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [nonceCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryNonce:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:nonceCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          nonce = [v36 nonce];
          replyCopy[2](replyCopy, nonce);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        nonce2 = [v31 nonce];
        replyCopy[2](replyCopy, nonce2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000806F8(v23);
    }
  }
}

- (void)endpointControllerQueryNonceSeed:(id)seed endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  seedCopy = seed;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [seedCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryNonceSeed:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:seedCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          nonceSeed = [v36 nonceSeed];
          replyCopy[2](replyCopy, nonceSeed);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        nonceSeed2 = [v31 nonceSeed];
        replyCopy[2](replyCopy, nonceSeed2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080794(v23);
    }
  }
}

- (void)endpointControllerQueryProductionMode:(id)mode endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  modeCopy = mode;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [modeCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryProductionMode:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:modeCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          productionMode = [v36 productionMode];
          replyCopy[2](replyCopy, productionMode);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        productionMode2 = [v31 productionMode];
        replyCopy[2](replyCopy, productionMode2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080830(v23);
    }
  }
}

- (void)endpointControllerQueryRealHdcpKeyPresent:(id)present endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  presentCopy = present;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [presentCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryRealHdcpKeyPresent:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:presentCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          realHdcpKeyPresent = [v36 realHdcpKeyPresent];
          replyCopy[2](replyCopy, realHdcpKeyPresent);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        realHdcpKeyPresent2 = [v31 realHdcpKeyPresent];
        replyCopy[2](replyCopy, realHdcpKeyPresent2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000808CC(v23);
    }
  }
}

- (void)endpointControllerQuerySecurityDomain:(id)domain endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  domainCopy = domain;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [domainCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQuerySecurityDomain:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:domainCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          securityDomain = [v36 securityDomain];
          replyCopy[2](replyCopy, securityDomain);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        securityDomain2 = [v31 securityDomain];
        replyCopy[2](replyCopy, securityDomain2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080968(v23);
    }
  }
}

- (void)endpointControllerQuerySecurityMode:(id)mode endpointNumber:(id)number componentNumber:(id)componentNumber reply:(id)reply
{
  modeCopy = mode;
  numberCopy = number;
  componentNumberCopy = componentNumber;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [modeCopy UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQuerySecurityMode:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2048;
    unsignedLongValue = [numberCopy unsignedLongValue];
    v47 = 2048;
    unsignedLongValue2 = [componentNumberCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:modeCopy];

  if (v18)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    layer3Endpoint = [v18 layer3Endpoint];
    configuration = [layer3Endpoint configuration];
    v22 = [configuration count];

    if (unsignedIntegerValue <= v22)
    {
      if (componentNumberCopy)
      {
        v40 = componentNumberCopy;
        unsignedIntegerValue2 = [componentNumberCopy unsignedIntegerValue];
        layer3Endpoint2 = [v18 layer3Endpoint];
        configuration2 = [layer3Endpoint2 configuration];
        v26 = [configuration2 objectAtIndexedSubscript:unsignedIntegerValue];
        components = [v26 components];
        v28 = [components count];

        if (unsignedIntegerValue2 <= v28)
        {
          layer3Endpoint3 = [v18 layer3Endpoint];
          configuration3 = [layer3Endpoint3 configuration];
          v34 = [configuration3 objectAtIndexedSubscript:unsignedIntegerValue];
          components2 = [v34 components];
          v36 = [components2 objectAtIndexedSubscript:unsignedIntegerValue2];
          securityMode = [v36 securityMode];
          replyCopy[2](replyCopy, securityMode);
        }

        else
        {
          replyCopy[2](replyCopy, 0);
        }

        componentNumberCopy = v40;
      }

      else
      {
        layer3Endpoint4 = [v18 layer3Endpoint];
        configuration4 = [layer3Endpoint4 configuration];
        v31 = [configuration4 objectAtIndexedSubscript:unsignedIntegerValue];
        securityMode2 = [v31 securityMode];
        replyCopy[2](replyCopy, securityMode2);
      }
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080A04(v23);
    }
  }
}

- (void)endpointControllerPersonalizeFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tssServerURL:(id)l
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [iDCopy UUIDString];
    path = [assetCopy path];
    path2 = [lCopy path];
    v20 = 136316162;
    v21 = "[UARPEndpointControllerInternal endpointControllerPersonalizeFirmwareAsset:endpointUUID:assetUUID:tssServerURL:]";
    v22 = 2112;
    v23 = uUIDString;
    v24 = 2112;
    v25 = uUIDString2;
    v26 = 2112;
    v27 = path;
    v28 = 2112;
    v29 = path2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@, tssServerURL is %@", &v20, 0x34u);
  }

  [(UARPEndpointControllerInternal *)self endpointControllerPersonalizeFirmwareAsset:assetCopy endpointUUID:dCopy assetUUID:iDCopy tatsuRequest:0 tssServerURL:lCopy];
}

- (void)endpointControllerPersonalizeFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tatsuRequest:(id)request tssServerURL:(id)l
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  requestCopy = request;
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [iDCopy UUIDString];
    [assetCopy path];
    v21 = v27 = assetCopy;
    path = [lCopy path];
    *buf = 136316418;
    v29 = "[UARPEndpointControllerInternal endpointControllerPersonalizeFirmwareAsset:endpointUUID:assetUUID:tatsuRequest:tssServerURL:]";
    v30 = 2112;
    v31 = uUIDString;
    v32 = 2112;
    v33 = uUIDString2;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = requestCopy;
    v38 = 2112;
    v39 = path;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@, tssRequest is %@, tssServerURL is %@", buf, 0x3Eu);

    assetCopy = v27;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v24 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v24)
  {
    v25 = objc_loadWeakRetained(&self->_hostManager);
    [v25 personalizeFirmwareAsset:assetCopy assetUUID:iDCopy hostEndpoint:v24 tssServerURL:lCopy];
  }

  else
  {
    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100080AA0(v26);
    }
  }
}

- (void)endpointControllerTssRequestsForPersonalizedAsset:(id)asset endpointUUID:(id)d reply:(id)reply
{
  assetCopy = asset;
  dCopy = d;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [assetCopy UUIDString];
    *buf = 136315650;
    v43 = "[UARPEndpointControllerInternal endpointControllerTssRequestsForPersonalizedAsset:endpointUUID:reply:]";
    v44 = 2112;
    v45 = uUIDString;
    v46 = 2112;
    v47 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v16 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v16)
  {
    v35 = dCopy;
    v17 = [v16 findPersonalizedAssetByUUID:assetCopy];
    if (!v17)
    {
      v17 = [v16 findPersonalizingAssetByUUID:assetCopy];
    }

    v34 = v16;
    v36 = assetCopy;
    v18 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v17;
    tatsuTickets = [v17 tatsuTickets];
    v20 = [tatsuTickets countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(tatsuTickets);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          tatsuRequest = [v24 tatsuRequest];

          if (tatsuRequest)
          {
            manifestLocation = [v24 manifestLocation];
            componentTag = [manifestLocation componentTag];

            tatsuRequest2 = [v24 tatsuRequest];
            if (componentTag)
            {
              manifestLocation2 = [v24 manifestLocation];
              componentTag2 = [manifestLocation2 componentTag];
              tagString = [componentTag2 tagString];
              [v18 setObject:tatsuRequest2 forKeyedSubscript:tagString];
            }

            else
            {
              [v18 setObject:tatsuRequest2 forKeyedSubscript:@"ROOT"];
            }
          }
        }

        v21 = [tatsuTickets countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    replyCopy[2](replyCopy, v18);
    dCopy = v35;
    assetCopy = v36;
    v16 = v34;
  }

  else
  {
    v32 = self->_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100080B3C(v32);
    }
  }
}

- (void)endpointControllerTssResponsesForPersonalizedAsset:(id)asset endpointUUID:(id)d reply:(id)reply
{
  assetCopy = asset;
  dCopy = d;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [assetCopy UUIDString];
    *buf = 136315650;
    v43 = "[UARPEndpointControllerInternal endpointControllerTssResponsesForPersonalizedAsset:endpointUUID:reply:]";
    v44 = 2112;
    v45 = uUIDString;
    v46 = 2112;
    v47 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v16 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v16)
  {
    v35 = dCopy;
    v17 = [v16 findPersonalizedAssetByUUID:assetCopy];
    if (!v17)
    {
      v17 = [v16 findPersonalizingAssetByUUID:assetCopy];
    }

    v34 = v16;
    v36 = assetCopy;
    v18 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v17;
    tatsuTickets = [v17 tatsuTickets];
    v20 = [tatsuTickets countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(tatsuTickets);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          tatsuResponse = [v24 tatsuResponse];

          if (tatsuResponse)
          {
            manifestLocation = [v24 manifestLocation];
            componentTag = [manifestLocation componentTag];

            tatsuResponse2 = [v24 tatsuResponse];
            if (componentTag)
            {
              manifestLocation2 = [v24 manifestLocation];
              componentTag2 = [manifestLocation2 componentTag];
              tagString = [componentTag2 tagString];
              [v18 setObject:tatsuResponse2 forKeyedSubscript:tagString];
            }

            else
            {
              [v18 setObject:tatsuResponse2 forKeyedSubscript:@"ROOT"];
            }
          }
        }

        v21 = [tatsuTickets countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    replyCopy[2](replyCopy, v18);
    dCopy = v35;
    assetCopy = v36;
    v16 = v34;
  }

  else
  {
    v32 = self->_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100080BD8(v32);
    }
  }
}

- (void)endpointControllerExportPersonalizedAsset:(id)asset endpointUUID:(id)d personalizedAssetURL:(id)l reply:(id)reply
{
  assetCopy = asset;
  dCopy = d;
  lCopy = l;
  replyCopy = reply;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [assetCopy UUIDString];
    path = [lCopy path];
    v25 = 136315906;
    v26 = "[UARPEndpointControllerInternal endpointControllerExportPersonalizedAsset:endpointUUID:personalizedAssetURL:reply:]";
    v27 = 2112;
    v28 = uUIDString;
    v29 = 2112;
    v30 = uUIDString2;
    v31 = 2112;
    v32 = path;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, personalizedAssetURL is %@", &v25, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v20)
  {
    v21 = [v20 findPersonalizedAssetByUUID:assetCopy];
    v22 = [[UARPComponentTag alloc] initWithString:@"PMAP"];
    [v21 removePayloadsWithMatchingTag:v22];
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 writeToURL:lCopy error:0]);
    replyCopy[2](replyCopy, v23);
  }

  else
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100080C74(v24);
    }
  }
}

- (void)endpointControllerStageFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tssServerURL:(id)l
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [iDCopy UUIDString];
    path = [assetCopy path];
    v23 = 136315906;
    v24 = "[UARPEndpointControllerInternal endpointControllerStageFirmwareAsset:endpointUUID:assetUUID:tssServerURL:]";
    v25 = 2112;
    v26 = uUIDString;
    v27 = 2112;
    v28 = uUIDString2;
    v29 = 2112;
    v30 = path;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@", &v23, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_hostManager);
    [v21 stageFirmwareAsset:assetCopy assetUUID:iDCopy hostEndpoint:v20 tssServerURL:lCopy];
  }

  else
  {
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100080D10(v22);
    }
  }
}

- (void)endpointControllerStageAndApplyFirmwareAsset:(id)asset endpointUUID:(id)d assetUUID:(id)iD tssServerURL:(id)l
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [iDCopy UUIDString];
    path = [assetCopy path];
    v23 = 136315906;
    v24 = "[UARPEndpointControllerInternal endpointControllerStageAndApplyFirmwareAsset:endpointUUID:assetUUID:tssServerURL:]";
    v25 = 2112;
    v26 = uUIDString;
    v27 = 2112;
    v28 = uUIDString2;
    v29 = 2112;
    v30 = path;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@", &v23, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:dCopy];

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_hostManager);
    [v21 stageAndApplyFirmwareAsset:assetCopy assetUUID:iDCopy hostEndpoint:v20 tssServerURL:lCopy];
  }

  else
  {
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100080DAC(v22);
    }
  }
}

- (void)endpointControllerApplyStagedAssets:(id)assets
{
  assetsCopy = assets;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    uUIDString = [assetsCopy UUIDString];
    v12 = 136315394;
    v13 = "[UARPEndpointControllerInternal endpointControllerApplyStagedAssets:]";
    v14 = 2112;
    v15 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v9 = [WeakRetained findHostEndpointByUUID:assetsCopy];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_hostManager);
    [v10 applyStagedAssets:v9];
  }

  else
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100080E48(v11);
    }
  }
}

- (void)endpointControllerRescindStagedAssets:(id)assets
{
  assetsCopy = assets;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    uUIDString = [assetsCopy UUIDString];
    v12 = 136315394;
    v13 = "[UARPEndpointControllerInternal endpointControllerRescindStagedAssets:]";
    v14 = 2112;
    v15 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v9 = [WeakRetained findHostEndpointByUUID:assetsCopy];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_hostManager);
    [v10 rescindStagedAssets:v9];
  }

  else
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100080EE4(v11);
    }
  }
}

- (void)endpointControllerSolicitAsset:(id)asset assetTag:(id)tag assetURL:(id)l assetUUID:(id)d
{
  assetCopy = asset;
  tagCopy = tag;
  lCopy = l;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    uUIDString = [assetCopy UUIDString];
    uUIDString2 = [dCopy UUIDString];
    path = [lCopy path];
    v24 = 136316162;
    v25 = "[UARPEndpointControllerInternal endpointControllerSolicitAsset:assetTag:assetURL:assetUUID:]";
    v26 = 2112;
    v27 = uUIDString;
    v28 = 2112;
    v29 = tagCopy;
    v30 = 2112;
    v31 = uUIDString2;
    v32 = 2112;
    v33 = path;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetTag is %@, assetUUID is %@, assetURL is %@", &v24, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:assetCopy];

  if (v20)
  {
    v21 = [[UARPComponentTag alloc] initWithString:tagCopy];
    v22 = objc_loadWeakRetained(&self->_hostManager);
    [v22 solicitAssetByAssetTag:v21 hostEndpoint:v20 assetURL:lCopy assetUUID:dCopy];
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100080F80(v23);
    }
  }
}

- (void)endpointControllerCacheAssetStart:(id)start assetUUID:(id)d reply:(id)reply
{
  startCopy = start;
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v12 = [WeakRetained findHostEndpointByUUID:startCopy];

  log = self->_log;
  if (!v12)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100081154(log);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10008101C(log);
  }

  v14 = objc_loadWeakRetained(&self->_hostManager);
  v15 = [v14 prepareCachingAsset:dCopy];

  if ((v15 & 1) == 0)
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000810B8(v17);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:
  replyCopy[2](replyCopy, v16);
}

- (void)endpointControllerCacheAsset:(id)asset assetUUID:(id)d appendData:(id)data reply:(id)reply
{
  assetCopy = asset;
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:assetCopy];

  log = self->_log;
  if (!v15)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100081364(log);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000811F0(log, dCopy);
  }

  v17 = objc_loadWeakRetained(&self->_hostManager);
  v18 = [v17 appendDataToCachingAsset:dCopy data:dataCopy];

  if ((v18 & 1) == 0)
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000812C8(v20);
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 1;
LABEL_11:
  replyCopy[2](replyCopy, v19);
}

- (void)endpointControllerCacheAssetFinish:(id)finish assetUUID:(id)d hashData:(id)data reply:(id)reply
{
  finishCopy = finish;
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:finishCopy];

  log = self->_log;
  if (!v15)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000815D4(log);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100081400(log);
  }

  v17 = objc_loadWeakRetained(&self->_hostManager);
  v18 = [v17 finalizeTransferCachingAsset:dCopy hashData:dataCopy error:0];

  if ((v18 & 1) == 0)
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10008149C(v21);
    }

LABEL_11:
    (*(replyCopy + 2))(replyCopy, 0, 0);
    goto LABEL_16;
  }

  v19 = objc_loadWeakRetained(&self->_hostManager);
  v20 = [v19 urlForCachingAsset:dCopy];

  if (v20)
  {
    (*(replyCopy + 2))(replyCopy, 1, v20);
  }

  else
  {
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100081538(v22);
    }

    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

LABEL_16:
}

- (void)endpointControllerPullDynamicAssetStart:(id)start assetUUID:(id)d reply:(id)reply
{
  startCopy = start;
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v12 = [WeakRetained findHostEndpointByUUID:startCopy];

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_hostManager);
    v14 = [v13 urlForDynamicAsset:dCopy];

    if (!v14)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100081670(log);
      }

      (*(replyCopy + 2))(replyCopy, 0, 0);
    }

    v16 = +[NSFileManager defaultManager];
    path = [v14 path];
    v18 = [v16 attributesOfItemAtPath:path error:0];

    if (v18)
    {
      fileSize = [v18 fileSize];
      if (fileSize)
      {
        (*(replyCopy + 2))(replyCopy, 1, fileSize);
LABEL_17:

        goto LABEL_18;
      }

      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10008170C(v22);
      }
    }

    else
    {
      v21 = self->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000817A8(v21);
      }
    }

    (*(replyCopy + 2))(replyCopy, 0, 0);
    goto LABEL_17;
  }

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100081844(v20);
  }

  (*(replyCopy + 2))(replyCopy, 0, 0);
LABEL_18:
}

- (void)endpointControllerPullDynamicAsset:(id)asset assetUUID:(id)d range:(_NSRange)range reply:(id)reply
{
  length = range.length;
  location = range.location;
  assetCopy = asset;
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:assetCopy];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_hostManager);
    v17 = [v16 urlForDynamicAsset:dCopy];

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_hostManager);
      v19 = [v18 dataRangeFromDynamicAsset:v17 range:{location, length}];

      replyCopy[2](replyCopy, 1, v19);
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_1000818E0(log);
      }

      replyCopy[2](replyCopy, 0, 0);
    }
  }

  else
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10008197C(v20);
    }

    replyCopy[2](replyCopy, 0, 0);
  }
}

- (void)endpointControllerPullDynamicAssetFinish:(id)finish assetUUID:(id)d hashData:(id)data reply:(id)reply
{
  finishCopy = finish;
  dCopy = d;
  replyCopy = reply;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:finishCopy];

  if (!v15)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100081A18(log);
    }

    replyCopy[2](replyCopy, 0);
  }

  v17 = objc_loadWeakRetained(&self->_hostManager);
  v18 = [v17 urlForDynamicAsset:dCopy];

  if (!v18)
  {
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100081AB4(v19);
    }

    replyCopy[2](replyCopy, 0);
  }

  v20 = objc_loadWeakRetained(&self->_hostManager);
  v21 = [v20 finalizeTransferDynamicAsset:v18 hashData:dataCopy error:0];

  if ((v21 & 1) == 0)
  {
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100081B50(v22);
    }
  }

  (replyCopy)[2](replyCopy, v21);
}

- (void)endpointControllerQueryEncodedMappingDatabase:(id)database
{
  databaseCopy = database;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  knownEndpoints = [WeakRetained knownEndpoints];

  if ([knownEndpoints count])
  {
    v9 = 0;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:knownEndpoints requiringSecureCoding:1 error:&v9];
    v8 = v9;
    if (!v7 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100081BEC();
    }
  }

  else
  {
    v7 = 0;
  }

  databaseCopy[2](databaseCopy, v7);
}

- (void)endpointControllerClearDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained clearDatabase];
}

- (void)endpointControllerClearAssets
{
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained clearAssetFolders];
}

- (void)endpointControllerClearPacketCaptures
{
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained clearPacketCaptures];
}

- (void)endpointControllerPauseAssetManagerNotifications:(id)notifications reply:(id)reply
{
  replyCopy = reply;
  notificationsCopy = notifications;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v8 = [WeakRetained pauseAssetManager:notificationsCopy];

  replyCopy[2](replyCopy, v8);
}

- (void)endpointControllerResumeAssetManagerNotifications:(id)notifications reply:(id)reply
{
  replyCopy = reply;
  notificationsCopy = notifications;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v8 = [WeakRetained resumeAssetManager:notificationsCopy];

  replyCopy[2](replyCopy, v8);
}

- (void)endpointControllerCheckAssetManager:(id)manager
{
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained checkAssetManager:managerCopy];
}

- (void)endpointControllerExportDynamicAsset:(id)asset endpointUUID:(id)d dynamicAssetURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSNumber numberWithBool:0];
  (*(reply + 2))(replyCopy, v8);
}

@end