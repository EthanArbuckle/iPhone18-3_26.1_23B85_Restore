@interface UARPEndpointControllerInternal
- (BOOL)prepareConnection;
- (UARPEndpointControllerInternal)initWithNewConnection:(id)a3 hostManager:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)endpointControllerApplyStagedAssets:(id)a3;
- (void)endpointControllerCacheAsset:(id)a3 assetUUID:(id)a4 appendData:(id)a5 reply:(id)a6;
- (void)endpointControllerCacheAssetFinish:(id)a3 assetUUID:(id)a4 hashData:(id)a5 reply:(id)a6;
- (void)endpointControllerCacheAssetStart:(id)a3 assetUUID:(id)a4 reply:(id)a5;
- (void)endpointControllerCheckAssetManager:(id)a3;
- (void)endpointControllerClearAssets;
- (void)endpointControllerClearDatabase;
- (void)endpointControllerClearPacketCaptures;
- (void)endpointControllerExportDynamicAsset:(id)a3 endpointUUID:(id)a4 dynamicAssetURL:(id)a5 reply:(id)a6;
- (void)endpointControllerExportPersonalizedAsset:(id)a3 endpointUUID:(id)a4 personalizedAssetURL:(id)a5 reply:(id)a6;
- (void)endpointControllerMonitorForDevices;
- (void)endpointControllerPauseAssetManagerNotifications:(id)a3 reply:(id)a4;
- (void)endpointControllerPersonalizeFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tatsuRequest:(id)a6 tssServerURL:(id)a7;
- (void)endpointControllerPersonalizeFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tssServerURL:(id)a6;
- (void)endpointControllerPullDynamicAsset:(id)a3 assetUUID:(id)a4 range:(_NSRange)a5 reply:(id)a6;
- (void)endpointControllerPullDynamicAssetFinish:(id)a3 assetUUID:(id)a4 hashData:(id)a5 reply:(id)a6;
- (void)endpointControllerPullDynamicAssetStart:(id)a3 assetUUID:(id)a4 reply:(id)a5;
- (void)endpointControllerQueryAppleModelNumber:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryAssetIdentifier:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryBoardID:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryChipID:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryChipRevision:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryComponentTag:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryECID:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryECIDData:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryEncodedMappingDatabase:(id)a3;
- (void)endpointControllerQueryFTABGeneration:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryFirmwareVersion:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryFriendlyName:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryHardwareFusingType:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryHardwareVersion:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryManufacturerName:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryModelName:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryNonce:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryNonceSeed:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryNumberOfComponents:(id)a3 endpointNumber:(id)a4 reply:(id)a5;
- (void)endpointControllerQueryNumberOfEndpoints:(id)a3 reply:(id)a4;
- (void)endpointControllerQueryProductionMode:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryRealHdcpKeyPresent:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQuerySecurityDomain:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQuerySecurityMode:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQuerySerialNumber:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerQueryStagedFirmwareVersion:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6;
- (void)endpointControllerRescindStagedAssets:(id)a3;
- (void)endpointControllerResumeAssetManagerNotifications:(id)a3 reply:(id)a4;
- (void)endpointControllerSolicitAsset:(id)a3 assetTag:(id)a4 assetURL:(id)a5 assetUUID:(id)a6;
- (void)endpointControllerStageAndApplyFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tssServerURL:(id)a6;
- (void)endpointControllerStageFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tssServerURL:(id)a6;
- (void)endpointControllerTssRequestsForPersonalizedAsset:(id)a3 endpointUUID:(id)a4 reply:(id)a5;
- (void)endpointControllerTssResponsesForPersonalizedAsset:(id)a3 endpointUUID:(id)a4 reply:(id)a5;
@end

@implementation UARPEndpointControllerInternal

- (UARPEndpointControllerInternal)initWithNewConnection:(id)a3 hostManager:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_xpcConnection, a3);
    objc_storeWeak(&v9->_hostManager, v8);
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

  v4 = [(NSXPCConnection *)self->_xpcConnection exportedInterface];
  UARPEndpointControllerProtocolSetupInterface();

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPEndpointControllerDelegateProtocol];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];

  v6 = [(NSXPCConnection *)self->_xpcConnection remoteObjectInterface];
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
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [NSString stringWithFormat:@"UARPEndpointControllerInternal <%@>", v2];

  return v3;
}

- (void)endpointControllerMonitorForDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained monitorForDevices:self];
}

- (void)endpointControllerQueryNumberOfEndpoints:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v10 = [v6 UUIDString];
    v17 = 136315394;
    v18 = "[UARPEndpointControllerInternal endpointControllerQueryNumberOfEndpoints:reply:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v17, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v12 = [WeakRetained findHostEndpointByUUID:v6];

  if (v12)
  {
    v13 = [v12 layer3Endpoint];
    v14 = [v13 configuration];

    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
    v7[2](v7, v15);
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

- (void)endpointControllerQueryNumberOfComponents:(id)a3 endpointNumber:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    v13 = [v8 UUIDString];
    v27 = 136315394;
    v28 = "[UARPEndpointControllerInternal endpointControllerQueryNumberOfComponents:endpointNumber:reply:]";
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v27, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:v8];

  if (v15)
  {
    v16 = [v9 unsignedIntegerValue];
    v17 = [v15 layer3Endpoint];
    v18 = [v17 configuration];
    v19 = [v18 count];

    if (v16 <= v19)
    {
      v21 = [v15 layer3Endpoint];
      v22 = [v21 configuration];
      v23 = [v22 objectAtIndexedSubscript:v16];
      v24 = [v23 components];
      v25 = [v24 count];

      v26 = [NSNumber numberWithUnsignedInteger:v25];
      v10[2](v10, v26);
    }

    else
    {
      v10[2](v10, 0);
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

- (void)endpointControllerQueryComponentTag:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v39 = "[UARPEndpointControllerInternal endpointControllerQueryComponentTag:endpointNumber:componentNumber:reply:]";
    v40 = 2112;
    v41 = v16;
    v42 = 2048;
    v43 = [v11 unsignedLongValue];
    v44 = 2048;
    v45 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22 && v12)
    {
      v37 = v12;
      v36 = [v12 unsignedIntegerValue];
      v23 = [v18 layer3Endpoint];
      v24 = [v23 configuration];
      v25 = [v24 objectAtIndexedSubscript:v19];
      v26 = [v25 components];
      v27 = [v26 count];

      if (v36 <= v27)
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];

        v32 = [v31 components];
        v33 = [v32 objectAtIndexedSubscript:v36];

        v34 = [v33 componentTag];
        v35 = [v34 tagString];
        v13[2](v13, v35);
      }

      else
      {
        v13[2](v13, 0);
      }

      v12 = v37;
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryManufacturerName:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryManufacturerName:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 manufacturerName];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 manufacturerName];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryModelName:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryModelName:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 modelName];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 modelName];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryAppleModelNumber:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryAppleModelNumber:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 appleModelNumber];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 appleModelNumber];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryAssetIdentifier:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryAssetIdentifier:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 assetIdentifier];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 assetIdentifier];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryHardwareFusingType:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryHardwareFusingType:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 hwFusingType];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 hwFusingType];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQuerySerialNumber:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQuerySerialNumber:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 serialNumber];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 serialNumber];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryHardwareVersion:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryHardwareVersion:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 hardwareVersion];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 hardwareVersion];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryFirmwareVersion:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v44 = "[UARPEndpointControllerInternal endpointControllerQueryFirmwareVersion:endpointNumber:componentNumber:reply:]";
    v45 = 2112;
    v46 = v16;
    v47 = 2048;
    v48 = [v11 unsignedLongValue];
    v49 = 2048;
    v50 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v42 = v12;
        v41 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v41 <= v28)
        {
          v40 = [v18 layer3Endpoint];
          v39 = [v40 configuration];
          v34 = [v39 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v41];
          v37 = [v36 firmwareVersion];
          v38 = [v37 versionString];
          v13[2](v13, v38);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v42;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 firmwareVersion];
        v33 = [v32 versionString];
        v13[2](v13, v33);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryStagedFirmwareVersion:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v44 = "[UARPEndpointControllerInternal endpointControllerQueryStagedFirmwareVersion:endpointNumber:componentNumber:reply:]";
    v45 = 2112;
    v46 = v16;
    v47 = 2048;
    v48 = [v11 unsignedLongValue];
    v49 = 2048;
    v50 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v42 = v12;
        v41 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v41 <= v28)
        {
          v40 = [v18 layer3Endpoint];
          v39 = [v40 configuration];
          v34 = [v39 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v41];
          v37 = [v36 stagedFirmwareVersion];
          v38 = [v37 versionString];
          v13[2](v13, v38);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v42;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 stagedFirmwareVersion];
        v33 = [v32 versionString];
        v13[2](v13, v33);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryFriendlyName:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryFriendlyName:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 friendlyName];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 friendlyName];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryBoardID:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v52 = "[UARPEndpointControllerInternal endpointControllerQueryBoardID:endpointNumber:componentNumber:reply:]";
    v53 = 2112;
    v54 = v16;
    v55 = 2048;
    v56 = [v11 unsignedLongValue];
    v57 = 2048;
    v58 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v49 = v11;
        v50 = v12;
        v24 = [v12 unsignedIntegerValue];
        v25 = [v18 layer3Endpoint];
        v26 = [v25 configuration];
        v27 = [v26 objectAtIndexedSubscript:v19];
        v28 = [v27 components];
        v29 = [v28 count];

        v48 = v24;
        if (v24 <= v29)
        {
          v37 = [v18 layer3Endpoint];
          v38 = [v37 configuration];
          v39 = [v38 objectAtIndexedSubscript:v19];
          v40 = [v39 components];
          v41 = [v40 objectAtIndexedSubscript:v48];
          v42 = [v41 boardID32];

          v11 = v49;
          if (!v42)
          {
            v43 = [v18 layer3Endpoint];
            v44 = [v43 configuration];
            v45 = [v44 objectAtIndexedSubscript:v19];
            v46 = [v45 components];
            v47 = [v46 objectAtIndexedSubscript:v48];
            v42 = [v47 boardID64];
          }

          v13[2](v13, v42);

          v12 = v50;
        }

        else
        {
          v13[2](v13, 0);
          v11 = v49;
          v12 = v50;
        }
      }

      else
      {
        v30 = [v18 layer3Endpoint];
        v31 = [v30 configuration];
        v32 = [v31 objectAtIndexedSubscript:v19];
        v33 = [v32 boardID32];

        if (!v33)
        {
          v34 = [v18 layer3Endpoint];
          v35 = [v34 configuration];
          v36 = [v35 objectAtIndexedSubscript:v19];
          v33 = [v36 boardID64];
        }

        v13[2](v13, v33);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryChipID:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryChipID:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 chipID];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 chipID];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryChipRevision:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryChipRevision:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 chipRevision];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 chipRevision];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryECID:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryECID:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 ECID];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 ECID];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryECIDData:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryECIDData:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 ecidData];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 ecidData];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryFTABGeneration:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryFTABGeneration:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 ftabGeneration];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 ftabGeneration];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryNonce:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryNonce:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 nonce];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 nonce];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryNonceSeed:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryNonceSeed:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 nonceSeed];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 nonceSeed];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryProductionMode:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryProductionMode:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 productionMode];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 productionMode];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQueryRealHdcpKeyPresent:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQueryRealHdcpKeyPresent:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 realHdcpKeyPresent];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 realHdcpKeyPresent];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQuerySecurityDomain:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQuerySecurityDomain:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 securityDomain];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 securityDomain];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerQuerySecurityMode:(id)a3 endpointNumber:(id)a4 componentNumber:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    *buf = 136315906;
    v42 = "[UARPEndpointControllerInternal endpointControllerQuerySecurityMode:endpointNumber:componentNumber:reply:]";
    v43 = 2112;
    v44 = v16;
    v45 = 2048;
    v46 = [v11 unsignedLongValue];
    v47 = 2048;
    v48 = [v12 unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, Endpoint Number is %lu, Component Number is %lu", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v18 = [WeakRetained findHostEndpointByUUID:v10];

  if (v18)
  {
    v19 = [v11 unsignedIntegerValue];
    v20 = [v18 layer3Endpoint];
    v21 = [v20 configuration];
    v22 = [v21 count];

    if (v19 <= v22)
    {
      if (v12)
      {
        v40 = v12;
        v39 = [v12 unsignedIntegerValue];
        v24 = [v18 layer3Endpoint];
        v25 = [v24 configuration];
        v26 = [v25 objectAtIndexedSubscript:v19];
        v27 = [v26 components];
        v28 = [v27 count];

        if (v39 <= v28)
        {
          v38 = [v18 layer3Endpoint];
          v33 = [v38 configuration];
          v34 = [v33 objectAtIndexedSubscript:v19];
          v35 = [v34 components];
          v36 = [v35 objectAtIndexedSubscript:v39];
          v37 = [v36 securityMode];
          v13[2](v13, v37);
        }

        else
        {
          v13[2](v13, 0);
        }

        v12 = v40;
      }

      else
      {
        v29 = [v18 layer3Endpoint];
        v30 = [v29 configuration];
        v31 = [v30 objectAtIndexedSubscript:v19];
        v32 = [v31 securityMode];
        v13[2](v13, v32);
      }
    }

    else
    {
      v13[2](v13, 0);
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

- (void)endpointControllerPersonalizeFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tssServerURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v11 UUIDString];
    v17 = [v12 UUIDString];
    v18 = [v10 path];
    v19 = [v13 path];
    v20 = 136316162;
    v21 = "[UARPEndpointControllerInternal endpointControllerPersonalizeFirmwareAsset:endpointUUID:assetUUID:tssServerURL:]";
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@, tssServerURL is %@", &v20, 0x34u);
  }

  [(UARPEndpointControllerInternal *)self endpointControllerPersonalizeFirmwareAsset:v10 endpointUUID:v11 assetUUID:v12 tatsuRequest:0 tssServerURL:v13];
}

- (void)endpointControllerPersonalizeFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tatsuRequest:(id)a6 tssServerURL:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = log;
    v19 = [v13 UUIDString];
    v20 = [v14 UUIDString];
    [v12 path];
    v21 = v27 = v12;
    v22 = [v16 path];
    *buf = 136316418;
    v29 = "[UARPEndpointControllerInternal endpointControllerPersonalizeFirmwareAsset:endpointUUID:assetUUID:tatsuRequest:tssServerURL:]";
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@, tssRequest is %@, tssServerURL is %@", buf, 0x3Eu);

    v12 = v27;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v24 = [WeakRetained findHostEndpointByUUID:v13];

  if (v24)
  {
    v25 = objc_loadWeakRetained(&self->_hostManager);
    [v25 personalizeFirmwareAsset:v12 assetUUID:v14 hostEndpoint:v24 tssServerURL:v16];
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

- (void)endpointControllerTssRequestsForPersonalizedAsset:(id)a3 endpointUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    v13 = [v9 UUIDString];
    v14 = [v8 UUIDString];
    *buf = 136315650;
    v43 = "[UARPEndpointControllerInternal endpointControllerTssRequestsForPersonalizedAsset:endpointUUID:reply:]";
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v16 = [WeakRetained findHostEndpointByUUID:v9];

  if (v16)
  {
    v35 = v9;
    v17 = [v16 findPersonalizedAssetByUUID:v8];
    if (!v17)
    {
      v17 = [v16 findPersonalizingAssetByUUID:v8];
    }

    v34 = v16;
    v36 = v8;
    v18 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v17;
    v19 = [v17 tatsuTickets];
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          v25 = [v24 tatsuRequest];

          if (v25)
          {
            v26 = [v24 manifestLocation];
            v27 = [v26 componentTag];

            v28 = [v24 tatsuRequest];
            if (v27)
            {
              v29 = [v24 manifestLocation];
              v30 = [v29 componentTag];
              v31 = [v30 tagString];
              [v18 setObject:v28 forKeyedSubscript:v31];
            }

            else
            {
              [v18 setObject:v28 forKeyedSubscript:@"ROOT"];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    v10[2](v10, v18);
    v9 = v35;
    v8 = v36;
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

- (void)endpointControllerTssResponsesForPersonalizedAsset:(id)a3 endpointUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    v13 = [v9 UUIDString];
    v14 = [v8 UUIDString];
    *buf = 136315650;
    v43 = "[UARPEndpointControllerInternal endpointControllerTssResponsesForPersonalizedAsset:endpointUUID:reply:]";
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v16 = [WeakRetained findHostEndpointByUUID:v9];

  if (v16)
  {
    v35 = v9;
    v17 = [v16 findPersonalizedAssetByUUID:v8];
    if (!v17)
    {
      v17 = [v16 findPersonalizingAssetByUUID:v8];
    }

    v34 = v16;
    v36 = v8;
    v18 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v17;
    v19 = [v17 tatsuTickets];
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          v25 = [v24 tatsuResponse];

          if (v25)
          {
            v26 = [v24 manifestLocation];
            v27 = [v26 componentTag];

            v28 = [v24 tatsuResponse];
            if (v27)
            {
              v29 = [v24 manifestLocation];
              v30 = [v29 componentTag];
              v31 = [v30 tagString];
              [v18 setObject:v28 forKeyedSubscript:v31];
            }

            else
            {
              [v18 setObject:v28 forKeyedSubscript:@"ROOT"];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    v10[2](v10, v18);
    v9 = v35;
    v8 = v36;
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

- (void)endpointControllerExportPersonalizedAsset:(id)a3 endpointUUID:(id)a4 personalizedAssetURL:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v11 UUIDString];
    v17 = [v10 UUIDString];
    v18 = [v12 path];
    v25 = 136315906;
    v26 = "[UARPEndpointControllerInternal endpointControllerExportPersonalizedAsset:endpointUUID:personalizedAssetURL:reply:]";
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, personalizedAssetURL is %@", &v25, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:v11];

  if (v20)
  {
    v21 = [v20 findPersonalizedAssetByUUID:v10];
    v22 = [[UARPComponentTag alloc] initWithString:@"PMAP"];
    [v21 removePayloadsWithMatchingTag:v22];
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 writeToURL:v12 error:0]);
    v13[2](v13, v23);
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

- (void)endpointControllerStageFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tssServerURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v11 UUIDString];
    v17 = [v12 UUIDString];
    v18 = [v10 path];
    v23 = 136315906;
    v24 = "[UARPEndpointControllerInternal endpointControllerStageFirmwareAsset:endpointUUID:assetUUID:tssServerURL:]";
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@", &v23, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:v11];

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_hostManager);
    [v21 stageFirmwareAsset:v10 assetUUID:v12 hostEndpoint:v20 tssServerURL:v13];
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

- (void)endpointControllerStageAndApplyFirmwareAsset:(id)a3 endpointUUID:(id)a4 assetUUID:(id)a5 tssServerURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v11 UUIDString];
    v17 = [v12 UUIDString];
    v18 = [v10 path];
    v23 = 136315906;
    v24 = "[UARPEndpointControllerInternal endpointControllerStageAndApplyFirmwareAsset:endpointUUID:assetUUID:tssServerURL:]";
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetUUID is %@, assetURL is %@", &v23, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:v11];

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_hostManager);
    [v21 stageAndApplyFirmwareAsset:v10 assetUUID:v12 hostEndpoint:v20 tssServerURL:v13];
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

- (void)endpointControllerApplyStagedAssets:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 UUIDString];
    v12 = 136315394;
    v13 = "[UARPEndpointControllerInternal endpointControllerApplyStagedAssets:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v9 = [WeakRetained findHostEndpointByUUID:v4];

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

- (void)endpointControllerRescindStagedAssets:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 UUIDString];
    v12 = 136315394;
    v13 = "[UARPEndpointControllerInternal endpointControllerRescindStagedAssets:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v9 = [WeakRetained findHostEndpointByUUID:v4];

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

- (void)endpointControllerSolicitAsset:(id)a3 assetTag:(id)a4 assetURL:(id)a5 assetUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = log;
    v16 = [v10 UUIDString];
    v17 = [v13 UUIDString];
    v18 = [v12 path];
    v24 = 136316162;
    v25 = "[UARPEndpointControllerInternal endpointControllerSolicitAsset:assetTag:assetURL:assetUUID:]";
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: endpointUUID is %@, assetTag is %@, assetUUID is %@, assetURL is %@", &v24, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v20 = [WeakRetained findHostEndpointByUUID:v10];

  if (v20)
  {
    v21 = [[UARPComponentTag alloc] initWithString:v11];
    v22 = objc_loadWeakRetained(&self->_hostManager);
    [v22 solicitAssetByAssetTag:v21 hostEndpoint:v20 assetURL:v12 assetUUID:v13];
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

- (void)endpointControllerCacheAssetStart:(id)a3 assetUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v12 = [WeakRetained findHostEndpointByUUID:v8];

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
  v15 = [v14 prepareCachingAsset:v9];

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
  v10[2](v10, v16);
}

- (void)endpointControllerCacheAsset:(id)a3 assetUUID:(id)a4 appendData:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:v10];

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
    sub_1000811F0(log, v11);
  }

  v17 = objc_loadWeakRetained(&self->_hostManager);
  v18 = [v17 appendDataToCachingAsset:v11 data:v12];

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
  v13[2](v13, v19);
}

- (void)endpointControllerCacheAssetFinish:(id)a3 assetUUID:(id)a4 hashData:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:v10];

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
  v18 = [v17 finalizeTransferCachingAsset:v11 hashData:v12 error:0];

  if ((v18 & 1) == 0)
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10008149C(v21);
    }

LABEL_11:
    (*(v13 + 2))(v13, 0, 0);
    goto LABEL_16;
  }

  v19 = objc_loadWeakRetained(&self->_hostManager);
  v20 = [v19 urlForCachingAsset:v11];

  if (v20)
  {
    (*(v13 + 2))(v13, 1, v20);
  }

  else
  {
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100081538(v22);
    }

    (*(v13 + 2))(v13, 0, 0);
  }

LABEL_16:
}

- (void)endpointControllerPullDynamicAssetStart:(id)a3 assetUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v12 = [WeakRetained findHostEndpointByUUID:v8];

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_hostManager);
    v14 = [v13 urlForDynamicAsset:v9];

    if (!v14)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100081670(log);
      }

      (*(v10 + 2))(v10, 0, 0);
    }

    v16 = +[NSFileManager defaultManager];
    v17 = [v14 path];
    v18 = [v16 attributesOfItemAtPath:v17 error:0];

    if (v18)
    {
      v19 = [v18 fileSize];
      if (v19)
      {
        (*(v10 + 2))(v10, 1, v19);
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

    (*(v10 + 2))(v10, 0, 0);
    goto LABEL_17;
  }

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100081844(v20);
  }

  (*(v10 + 2))(v10, 0, 0);
LABEL_18:
}

- (void)endpointControllerPullDynamicAsset:(id)a3 assetUUID:(id)a4 range:(_NSRange)a5 reply:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:v11];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_hostManager);
    v17 = [v16 urlForDynamicAsset:v12];

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_hostManager);
      v19 = [v18 dataRangeFromDynamicAsset:v17 range:{location, length}];

      v13[2](v13, 1, v19);
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_1000818E0(log);
      }

      v13[2](v13, 0, 0);
    }
  }

  else
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10008197C(v20);
    }

    v13[2](v13, 0, 0);
  }
}

- (void)endpointControllerPullDynamicAssetFinish:(id)a3 assetUUID:(id)a4 hashData:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v15 = [WeakRetained findHostEndpointByUUID:v10];

  if (!v15)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100081A18(log);
    }

    v12[2](v12, 0);
  }

  v17 = objc_loadWeakRetained(&self->_hostManager);
  v18 = [v17 urlForDynamicAsset:v11];

  if (!v18)
  {
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100081AB4(v19);
    }

    v12[2](v12, 0);
  }

  v20 = objc_loadWeakRetained(&self->_hostManager);
  v21 = [v20 finalizeTransferDynamicAsset:v18 hashData:v13 error:0];

  if ((v21 & 1) == 0)
  {
    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100081B50(v22);
    }
  }

  (v12)[2](v12, v21);
}

- (void)endpointControllerQueryEncodedMappingDatabase:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v6 = [WeakRetained knownEndpoints];

  if ([v6 count])
  {
    v9 = 0;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v9];
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

  v4[2](v4, v7);
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

- (void)endpointControllerPauseAssetManagerNotifications:(id)a3 reply:(id)a4
{
  v9 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v8 = [WeakRetained pauseAssetManager:v6];

  v9[2](v9, v8);
}

- (void)endpointControllerResumeAssetManagerNotifications:(id)a3 reply:(id)a4
{
  v9 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  v8 = [WeakRetained resumeAssetManager:v6];

  v9[2](v9, v8);
}

- (void)endpointControllerCheckAssetManager:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostManager);
  [WeakRetained checkAssetManager:v4];
}

- (void)endpointControllerExportDynamicAsset:(id)a3 endpointUUID:(id)a4 dynamicAssetURL:(id)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [NSNumber numberWithBool:0];
  (*(a6 + 2))(v7, v8);
}

@end