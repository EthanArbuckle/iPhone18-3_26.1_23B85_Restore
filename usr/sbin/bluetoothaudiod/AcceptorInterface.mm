@interface AcceptorInterface
+ (void)initialize;
- (AcceptorInterface)initWithPeripheral:(id)peripheral;
- (BOOL)setRelativeVolumeDown;
- (BOOL)setRelativeVolumeUp;
- (ClientCommonAudioProfile)parentCAP;
- (id)clientServiceForUUID:(id)d;
- (id)getAudioStreamEndpoints;
- (id)getConfiguredASEInfo;
- (id)getServiceInterfaceForService:(id)service;
- (id)serviceEventToString:(unsigned __int8)string;
- (unsigned)getCoordinatedSetLock;
- (unsigned)getCoordinatedSetMemberRank;
- (unsigned)matchContextTypeAvailabilityForConfig:(id)config;
- (unsigned)matchSupportedContextTypeForConfig:(id)config withAvailableContextType:(unsigned __int16)type;
- (unsigned)sendCodecConfigRequestWithAudioConfig:(id)config;
- (unsigned)sendDisableRequest;
- (unsigned)sendEnableRequestWithSnkAseID:(id)d WithSrcAseID:(id)iD;
- (unsigned)sendQoSConfigRequest;
- (unsigned)sendReceiverStartReadyRequest;
- (unsigned)sendReceiverStopReadyRequest;
- (unsigned)sendReleaseRequest;
- (unsigned)sendUpdateMetadataRequestForASE:(id)e withSourceAseID:(id)d withSinkContextType:(id)type withSourceContextType:(id)contextType;
- (unsigned)supportsAudioLocationForConfig:(id)config;
- (unsigned)supportsCodecConfigurationForConfig:(id)config;
- (void)analyzeError:(id)error;
- (void)clientServiceDidStart:(id)start;
- (void)dealloc;
- (void)handleActivePresetIndexEvent:(id)event;
- (void)handleCreateCISDataPathEvent:(id)event;
- (void)handleCsisAttAvailableEvent:(id)event;
- (void)handleDeviceAttributeUpdateEvent:(id)event;
- (void)handleDisconnectCISEvent:(id)event;
- (void)handleHearingAidFeaturesEvent:(id)event;
- (void)handleLockRequestResultEvent:(id)event;
- (void)handleLockStateNotifyEvent:(id)event;
- (void)handlePresetControlPointResultEvent:(id)event;
- (void)handlePresetNameChangedEvent:(id)event;
- (void)handlePresetRecordAddedEvent:(id)event;
- (void)handlePresetRecordAvailableEvent:(id)event;
- (void)handlePresetRecordDeletedEvent:(id)event;
- (void)handlePresetRecordUnavailableEvent:(id)event;
- (void)handleReadPresetsRequestEvent:(id)event;
- (void)handleReadPresetsResponseEvent:(id)event;
- (void)handleRemoveCISDataPathEvent:(id)event;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)sendReadActivePresetIndex;
- (void)sendReadAvailableContexts;
- (void)sendReadHearingAidFeatures;
- (void)sendReadSinkAudioLocations;
- (void)sendReadSourceAudioLocations;
- (void)sendReadSupportedContexts;
- (void)sendSetNextPreset;
- (void)sendSetNextPresetSyncLocally;
- (void)sendSetPreviousPreset;
- (void)sendSetPreviousPresetSyncLocally;
- (void)sendWriteASEControlPoint;
- (void)sendWriteSinkAudioLocations;
- (void)sendWriteSourceAudioLocations;
- (void)startAcceptorServices;
@end

@implementation AcceptorInterface

- (AcceptorInterface)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v19.receiver = self;
  v19.super_class = AcceptorInterface;
  v6 = [(AcceptorInterface *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_isMatched = 0;
    objc_storeStrong(&v6->_peripheral, peripheral);
    [(CBPeripheral *)v7->_peripheral setDelegate:v7];
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    serviceInterfaceMap = v7->_serviceInterfaceMap;
    v7->_serviceInterfaceMap = v8;

    v10 = +[NSMapTable strongToStrongObjectsMapTable];
    includedServiceInterfaceMap = v7->_includedServiceInterfaceMap;
    v7->_includedServiceInterfaceMap = v10;

    v12 = objc_alloc_init(NSMutableSet);
    startingAcceptorServices = v7->_startingAcceptorServices;
    v7->_startingAcceptorServices = v12;

    [(CBPeripheral *)v7->_peripheral discoverServices:0];
    v14 = objc_alloc_init(NSMutableArray);
    configuredSinkASEID = v7->_configuredSinkASEID;
    v7->_configuredSinkASEID = v14;

    v16 = objc_alloc_init(NSMutableArray);
    configuredSourceASEID = v7->_configuredSourceASEID;
    v7->_configuredSourceASEID = v16;

    v7->_csisRank = 0;
  }

  return v7;
}

- (id)clientServiceForUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100042E8C;
  v16 = sub_100042E9C;
  v17 = 0;
  serviceInterfaceMap = [(AcceptorInterface *)self serviceInterfaceMap];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100042EA4;
  v9[3] = &unk_100095788;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [serviceInterfaceMap enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clientServiceDidStart:(id)start
{
  startCopy = start;
  startingAcceptorServices = [(AcceptorInterface *)self startingAcceptorServices];
  [startingAcceptorServices removeObject:startCopy];

  [(AcceptorInterface *)self startAcceptorServices];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = qword_1000AA058;
    qword_1000AA058 = &off_10009B1F0;
  }
}

- (void)dealloc
{
  serviceInterfaceMap = [(AcceptorInterface *)self serviceInterfaceMap];
  [serviceInterfaceMap enumerateKeysAndObjectsUsingBlock:&stru_1000957C8];

  v4.receiver = self;
  v4.super_class = AcceptorInterface;
  [(AcceptorInterface *)&v4 dealloc];
}

- (void)startAcceptorServices
{
  do
  {
    startingAcceptorServices = [(AcceptorInterface *)self startingAcceptorServices];
    v4 = [startingAcceptorServices count];

    if (v4)
    {
      break;
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    serviceInterfaceMap = [(AcceptorInterface *)self serviceInterfaceMap];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100043188;
    v6[3] = &unk_1000957F0;
    v6[4] = self;
    v6[5] = &v7;
    [serviceInterfaceMap enumerateKeysAndObjectsUsingBlock:v6];

    LOBYTE(serviceInterfaceMap) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  while ((serviceInterfaceMap & 1) != 0);
}

- (void)analyzeError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:CBATTErrorDomain];

  if (v5 && [errorCopy code] == 15)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    peripheral = [(AcceptorInterface *)self peripheral];
    [v6 postNotificationName:@"PeripheralPairingDidFailNotification" object:peripheral];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [servicesCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(servicesCopy);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        serviceInterfaceMap = [(AcceptorInterface *)self serviceInterfaceMap];
        v14 = [serviceInterfaceMap objectForKey:servicesCopy];

        if (v14)
        {
          v15 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            name = [peripheralCopy name];
            uUID = [v12 UUID];
            *buf = v20;
            v27 = name;
            v28 = 2112;
            v29 = uUID;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %@ invalidated service %@", buf, 0x16u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [servicesCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  peripheral = [(AcceptorInterface *)self peripheral];
  [peripheral discoverServices:0];
}

- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  serviceInterfaceMap = [(AcceptorInterface *)self serviceInterfaceMap];
  v12 = [serviceInterfaceMap objectForKey:serviceCopy];

  if (v12)
  {
    if (errorCopy)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v24 = v13;
        name = [peripheralCopy name];
        *buf = 138412802;
        v35 = serviceCopy;
        v36 = 2112;
        v37 = name;
        v38 = 2112;
        v39 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error discovering included services for service %@ on peripheral %@: %@", buf, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v12 peripheral:peripheralCopy didDiscoverIncludedServicesForService:serviceCopy error:errorCopy];
    includedServices = [serviceCopy includedServices];

    if (includedServices)
    {
      v26 = errorCopy;
      v27 = serviceCopy;
      v28 = peripheralCopy;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      includedServices2 = [serviceCopy includedServices];
      v16 = [includedServices2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(includedServices2);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v12 getIncludedServiceInterfaceForService:v20];
            if (v21)
            {
              includedServiceInterfaceMap = [(AcceptorInterface *)self includedServiceInterfaceMap];
              [includedServiceInterfaceMap setObject:v21 forKey:v20];
            }

            else
            {
              v23 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v35 = v20;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No interface found for service %@", buf, 0xCu);
              }
            }
          }

          v17 = [includedServices2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      serviceCopy = v27;
      peripheralCopy = v28;
      errorCopy = v26;
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  v39 = peripheralCopy;
  if (servicesCopy)
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E6A8(v7, peripheralCopy, servicesCopy);
    }

    [(AcceptorInterface *)self analyzeError:servicesCopy];
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [peripheralCopy services];
    v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v37)
    {
      v36 = *v48;
      do
      {
        v8 = 0;
        do
        {
          if (*v48 != v36)
          {
            v9 = v8;
            objc_enumerationMutation(obj);
            v8 = v9;
          }

          v38 = v8;
          v10 = *(*(&v47 + 1) + 8 * v8);
          serviceInterfaceMap = [(AcceptorInterface *)self serviceInterfaceMap];
          v12 = [serviceInterfaceMap objectForKey:v10];
          v13 = v12 == 0;

          if (v13)
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v40 = qword_1000AA058;
            v14 = [v40 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v14)
            {
              v15 = *v44;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v44 != v15)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v17 = *(*(&v43 + 1) + 8 * i);
                  v18 = NSClassFromString(v17);
                  if (v18)
                  {
                    uUID = [v10 UUID];
                    uUID2 = [(objc_class *)v18 UUID];
                    v21 = [uUID isEqual:uUID2];

                    if (v21)
                    {
                      v22 = [[v18 alloc] initWithPeripheral:v39 service:v10];
                      v23 = qword_1000A9FE0;
                      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
                      {
                        v24 = v23;
                        name = [v39 name];
                        uUID3 = [v10 UUID];
                        *buf = 138412802;
                        *&buf[4] = name;
                        *&buf[12] = 2114;
                        *&buf[14] = uUID3;
                        *&buf[22] = 2112;
                        v54 = v10;
                        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports service %{public}@. %@", buf, 0x20u);
                      }

                      serviceInterfaceMap2 = [(AcceptorInterface *)self serviceInterfaceMap];
                      [serviceInterfaceMap2 setObject:v22 forKey:v10];

                      v42[0] = _NSConcreteStackBlock;
                      v42[1] = 3221225472;
                      v42[2] = sub_100043E94;
                      v42[3] = &unk_100095818;
                      v42[4] = self;
                      [v22 setServiceEventHandler:v42];
                      if ([(NSString *)v17 containsString:@"ASCS"])
                      {
                        [(AcceptorInterface *)self setAscsInterface:v22];
                        ascsInterface = [(AcceptorInterface *)self ascsInterface];
                        [ascsInterface setAcceptor:self];

                        ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
                        [ascsInterface2 registerControlPointHandler:self->_controlPointHandler];

                        ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
                        [ascsInterface3 registerASEUpdateHandler:self->_aseUpdateHandler];
                      }

                      if ([(NSString *)v17 containsString:@"PACS"])
                      {
                        [(AcceptorInterface *)self setPacsInterface:v22];
                      }

                      if ([(NSString *)v17 containsString:@"CSIS"])
                      {
                        [(AcceptorInterface *)self setCsisInterface:v22];
                      }

                      if ([(NSString *)v17 containsString:@"VCS"])
                      {
                        [(AcceptorInterface *)self setVcsInterface:v22];
                      }

                      if ([(NSString *)v17 containsString:@"MICS"])
                      {
                        [(AcceptorInterface *)self setMicsInterface:v22];
                      }

                      if ([(NSString *)v17 containsString:@"HAS"])
                      {
                        [(AcceptorInterface *)self setHasInterface:v22];
                      }
                    }
                  }
                }

                v14 = [v40 countByEnumeratingWithState:&v43 objects:v55 count:16];
              }

              while (v14);
            }
          }

          v8 = v38 + 1;
        }

        while ((v38 + 1) != v37);
        v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v37);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v54) = 0;
    serviceInterfaceMap3 = [(AcceptorInterface *)self serviceInterfaceMap];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100043F90;
    v41[3] = &unk_100095840;
    v41[4] = buf;
    [serviceInterfaceMap3 enumerateKeysAndObjectsUsingBlock:v41];

    if (*(*&buf[8] + 24) == 1)
    {
      [(AcceptorInterface *)self startAcceptorServices];
    }

    else
    {
      v32 = qword_1000A9FE0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v39 name];
        *v51 = 138412290;
        v52 = name2;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Didn't find any primary service on peripheral %@", v51, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v11 = [(AcceptorInterface *)self getServiceInterfaceForService:serviceCopy];
  if (v11)
  {
    if (errorCopy)
    {
      v12 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        uUID = [serviceCopy UUID];
        name = [peripheralCopy name];
        v16 = 138412802;
        v17 = uUID;
        v18 = 2112;
        v19 = name;
        v20 = 2112;
        v21 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error discovering characteristics for service %@ on peripheral %@: %@", &v16, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v11 peripheral:peripheralCopy didDiscoverCharacteristicsForService:serviceCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  service = [characteristicCopy service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:service];

  if (v12)
  {
    if (errorCopy)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v17 = 138412802;
        v18 = uUID;
        v19 = 2112;
        v20 = name;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error updating value for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v12 peripheral:peripheralCopy didUpdateValueForCharacteristic:characteristicCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  service = [characteristicCopy service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:service];

  if (v12)
  {
    if (errorCopy)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v17 = 138412802;
        v18 = uUID;
        v19 = 2112;
        v20 = name;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error writing value for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v12 peripheral:peripheralCopy didWriteValueForCharacteristic:characteristicCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  service = [characteristicCopy service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:service];

  if (v12)
  {
    if (errorCopy)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v17 = 138412802;
        v18 = uUID;
        v19 = 2112;
        v20 = name;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error updating notifications for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v12 peripheral:peripheralCopy didUpdateNotificationStateForCharacteristic:characteristicCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  service = [characteristicCopy service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:service];

  if (v12)
  {
    if (errorCopy)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v17 = 138412802;
        v18 = uUID;
        v19 = 2112;
        v20 = name;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error discovering descriptors for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v12 peripheral:peripheralCopy didDiscoverDescriptorsForCharacteristic:characteristicCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  peripheralCopy = peripheral;
  descriptorCopy = descriptor;
  errorCopy = error;
  characteristic = [descriptorCopy characteristic];
  service = [characteristic service];
  v13 = [(AcceptorInterface *)self getServiceInterfaceForService:service];

  if (v13)
  {
    if (errorCopy)
    {
      v14 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        uUID = [descriptorCopy UUID];
        name = [peripheralCopy name];
        v18 = 138412802;
        v19 = uUID;
        v20 = 2112;
        v21 = name;
        v22 = 2112;
        v23 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error updating value for descriptor %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:errorCopy];
    }

    [v13 peripheral:peripheralCopy didUpdateValueForDescriptor:descriptorCopy error:errorCopy];
  }
}

- (id)getAudioStreamEndpoints
{
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  getAudioStreamEndpoints = [ascsInterface getAudioStreamEndpoints];

  return getAudioStreamEndpoints;
}

- (id)getConfiguredASEInfo
{
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  getConfiguredASEInfo = [ascsInterface getConfiguredASEInfo];

  return getConfiguredASEInfo;
}

- (unsigned)matchContextTypeAvailabilityForConfig:(id)config
{
  configCopy = config;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    *buf = 138412290;
    *v30 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Match use case contextTypes for peripheral %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  audioChanConfigArray = [configCopy audioChanConfigArray];
  v10 = [audioChanConfigArray countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = configCopy;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(audioChanConfigArray);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (([v14 excludeFromProcedure] & 1) == 0)
        {
          if ([v14 contextTypes])
          {
            pacsInterface = [(AcceptorInterface *)self pacsInterface];
            v16 = [pacsInterface getAvailableAudioContexts:{objc_msgSend(v14, "isSink")}];

            LODWORD(pacsInterface) = [v14 contextTypes] & v16;
            if (pacsInterface != [v14 contextTypes])
            {
              v17 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                contextTypes = [v14 contextTypes];
                isSink = [v14 isSink];
                *buf = 67109632;
                *v30 = contextTypes;
                *&v30[4] = 1024;
                *&v30[6] = v16;
                v31 = 1024;
                v32 = isSink;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Use case contextTypes: 0x%02X availableAudioContexts: 0x%02X isSink: %d", buf, 0x14u);
              }

              v21 = [(AcceptorInterface *)self matchSupportedContextTypeForConfig:v14 withAvailableContextType:v16];
              if (v21)
              {
                v22 = v21;
                goto LABEL_18;
              }
            }
          }
        }
      }

      v11 = [audioChanConfigArray countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v22 = 0;
LABEL_18:
    configCopy = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unsigned)matchSupportedContextTypeForConfig:(id)config withAvailableContextType:(unsigned __int16)type
{
  typeCopy = type;
  configCopy = config;
  contextTypes = [configCopy contextTypes];
  pacsInterface = [(AcceptorInterface *)self pacsInterface];
  v9 = [pacsInterface getSupportedAudioContexts:{objc_msgSend(configCopy, "isSink")}];

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v24 = 67109632;
    v25 = contextTypes;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    isSink = [configCopy isSink];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Use case contextTypes: 0x%02X supportedAudioContexts: 0x%02X isSink: %d", &v24, 0x14u);
  }

  [configCopy setStatus:0];
  [configCopy setInErrContextTypes:0];
  if ((contextTypes & ~v9) != 0)
  {
    for (i = 0; i != 12; ++i)
    {
      v17 = (contextTypes & (1 << i));
      if ((contextTypes & (1 << i)) != 0 && ((1 << i) & v9) == 0)
      {
        if ([configCopy remapToUnspecified])
        {
          LOWORD(contextTypes) = contextTypes ^ v17 | 1;
        }

        else
        {
          [configCopy setInErrContextTypes:{objc_msgSend(configCopy, "inErrContextTypes") | v17}];
          [configCopy setStatus:3];
        }
      }
    }

    status = [configCopy status];
    v20 = qword_1000A9FE0;
    if (status)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005E768(v20, configCopy);
      }
    }

    else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 67109120;
      v25 = contextTypes;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated contextTypes: 0x%02X", &v24, 8u);
    }
  }

  else if ((contextTypes & typeCopy) != 0)
  {
    for (j = 0; j != 12; ++j)
    {
      v13 = (1 << j) & contextTypes;
      if (v13)
      {
        v14 = ((1 << j) & typeCopy) == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        [configCopy setInErrContextTypes:{objc_msgSend(configCopy, "inErrContextTypes") | v13}];
      }
    }

    [configCopy setStatus:1];
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E80C(v15, configCopy);
    }
  }

  else
  {
    [configCopy setInErrContextTypes:contextTypes];
    [configCopy setStatus:2];
    v21 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E8AC(v21, configCopy);
    }
  }

  [configCopy setContextTypes:contextTypes];
  status2 = [configCopy status];

  return status2;
}

- (unsigned)supportsAudioLocationForConfig:(id)config
{
  configCopy = config;
  audioChanConfigArray = [configCopy audioChanConfigArray];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [audioChanConfigArray countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(audioChanConfigArray);
        }

        isSink = [*(*(&v23 + 1) + 8 * i) isSink];
        v7 += isSink ^ 1;
        v8 += isSink;
      }

      v6 = [audioChanConfigArray countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
    if (v8)
    {
      pacsInterface = [(AcceptorInterface *)self pacsInterface];
      LODWORD(v6) = [pacsInterface supportsAudioLocationWithLocation:objc_msgSend(configCopy withDirection:{"sinkAudioLocMask"), 1}];

      if (v6)
      {
        goto LABEL_19;
      }

      if (![configCopy sinkAudioLocMask])
      {
        pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
        [configCopy setSinkAudioLocMask:{objc_msgSend(pacsInterface2, "getAudioLocationMask:", 1)}];

        v14 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          sinkAudioLocMask = [configCopy sinkAudioLocMask];
          *buf = 67109120;
          v28 = sinkAudioLocMask;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sinkAudioLocMask set to 0x%02x", buf, 8u);
        }
      }
    }

    if (!v7)
    {
LABEL_18:
      LOBYTE(v6) = 0;
      goto LABEL_19;
    }

    pacsInterface3 = [(AcceptorInterface *)self pacsInterface];
    LODWORD(v6) = [pacsInterface3 supportsAudioLocationWithLocation:objc_msgSend(configCopy withDirection:{"sourceAudioLocMask"), 0}];

    if (!v6)
    {
      if (![configCopy sourceAudioLocMask])
      {
        pacsInterface4 = [(AcceptorInterface *)self pacsInterface];
        [configCopy setSourceAudioLocMask:{objc_msgSend(pacsInterface4, "getAudioLocationMask:", 0)}];

        v19 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          sourceAudioLocMask = [configCopy sourceAudioLocMask];
          *buf = 67109120;
          v28 = sourceAudioLocMask;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sourceAudioLocMask set to 0x%02x", buf, 8u);
        }
      }

      goto LABEL_18;
    }
  }

LABEL_19:

  return v6;
}

- (unsigned)supportsCodecConfigurationForConfig:(id)config
{
  configCopy = config;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  audioChanConfigArray = [configCopy audioChanConfigArray];
  v6 = [audioChanConfigArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(audioChanConfigArray);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      pacsInterface = [(AcceptorInterface *)self pacsInterface];
      v12 = [pacsInterface codecConfigSupportedWithCodecID:objc_msgSend(configCopy withCodecConfig:"codecID") withDirection:{objc_msgSend(v10, "codecIndex"), objc_msgSend(v10, "isSink")}];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [audioChanConfigArray countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unsigned)sendCodecConfigRequestWithAudioConfig:(id)config
{
  configCopy = config;
  v34 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [DataOutputStream outputStreamWithByteOrder:1];
  [v7 writeUint8:1];
  [v7 writeBytes:&v34 length:1];
  configuredSinkASEID = [(AcceptorInterface *)self configuredSinkASEID];
  [configuredSinkASEID removeAllObjects];

  configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
  [configuredSourceASEID removeAllObjects];

  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v32 = v7;
  v33 = v5;
  v11 = [ascsInterface sendConfigCodecRequestWithAudioConfig:configCopy withDirection:1 ForOptionalASE:&v33 withLTVData:&v32];
  v12 = v33;

  v13 = v32;
  v34 = v11;

  configuredSinkASEID2 = [(AcceptorInterface *)self configuredSinkASEID];
  [configuredSinkASEID2 addObjectsFromArray:v12];

  if ([(AcceptorInterface *)self requiresInput])
  {
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    v30 = v13;
    v31 = v6;
    v16 = [ascsInterface2 sendConfigCodecRequestWithAudioConfig:configCopy withDirection:0 ForOptionalASE:&v31 withLTVData:&v30];
    v17 = v31;

    v18 = v30;
    v34 += v16;

    configuredSourceASEID2 = [(AcceptorInterface *)self configuredSourceASEID];
    [configuredSourceASEID2 addObjectsFromArray:v17];

    v13 = v18;
    v6 = v17;
  }

  if (v34)
  {
    data = [v13 data];
    v21 = [data mutableCopy];

    [v21 replaceBytesInRange:1 withBytes:1 length:{&v34, 1}];
    ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface3 sendControlPointOperation:v21];

    v23 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412546;
      v36 = identifier;
      v37 = 1024;
      v38 = v34;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending Codec configuration request for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }
  }

  else
  {
    v27 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E94C(v27);
    }
  }

  v28 = v34;

  return v28;
}

- (unsigned)sendQoSConfigRequest
{
  v31 = 0;
  v3 = [NSMutableArray alloc];
  configuredSinkASEID = [(AcceptorInterface *)self configuredSinkASEID];
  v5 = [v3 initWithArray:configuredSinkASEID];

  v6 = [NSMutableArray alloc];
  configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
  v8 = [v6 initWithArray:configuredSourceASEID];

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:2];
  [v9 writeBytes:&v31 length:1];
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v29 = v9;
  v30 = v5;
  v11 = [ascsInterface sendConfigQoSRequestForDirection:1 OptionalASE:&v30 withLTVData:&v29];
  v12 = v30;

  v13 = v29;
  v31 = v11;

  if ([(AcceptorInterface *)self requiresInput])
  {
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    v27 = v13;
    v28 = v8;
    v15 = [ascsInterface2 sendConfigQoSRequestForDirection:0 OptionalASE:&v28 withLTVData:&v27];
    v16 = v28;

    v17 = v27;
    v31 += v15;

    v13 = v17;
    v8 = v16;
  }

  v18 = qword_1000A9FE0;
  if (v31)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412546;
      v33 = identifier;
      v34 = 1024;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending QoS configuration request for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }

    data = [v13 data];
    v23 = [data mutableCopy];

    [v23 replaceBytesInRange:1 withBytes:1 length:{&v31, 1}];
    ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface3 sendControlPointOperation:v23];

    v25 = v31;
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E9F4(v18);
    }

    v25 = v31;
  }

  return v25;
}

- (unsigned)sendEnableRequestWithSnkAseID:(id)d WithSrcAseID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v39 = 0;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  if ([dCopy count])
  {
    if ([dCopy indexOfObjectIdenticalTo:&off_10009B328] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v10 = [[NSMutableArray alloc] initWithArray:dCopy];
  }

  else
  {
    v11 = [NSMutableArray alloc];
    configuredSinkASEID = [(AcceptorInterface *)self configuredSinkASEID];
    v10 = [v11 initWithArray:configuredSinkASEID];

    v8 = configuredSinkASEID;
  }

  v8 = v10;
LABEL_6:
  if ([iDCopy count])
  {
    if ([iDCopy indexOfObjectIdenticalTo:&off_10009B328] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }

    v13 = [[NSMutableArray alloc] initWithArray:iDCopy];
  }

  else
  {
    v14 = [NSMutableArray alloc];
    configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
    v13 = [v14 initWithArray:configuredSourceASEID];

    v9 = configuredSourceASEID;
  }

  v9 = v13;
LABEL_11:
  v16 = [DataOutputStream outputStreamWithByteOrder:1];
  [v16 writeUint8:3];
  [v16 writeBytes:&v39 length:1];
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v37 = v16;
  v38 = v8;
  v18 = [ascsInterface sendEnableRequestForDirection:1 OptionalASE:&v38 withLTVData:&v37];
  v19 = v38;

  v20 = v37;
  v39 = v18;

  if ([(AcceptorInterface *)self requiresInput])
  {
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    v35 = v20;
    v36 = v9;
    v22 = [ascsInterface2 sendEnableRequestForDirection:0 OptionalASE:&v36 withLTVData:&v35];
    v23 = v36;

    v24 = v35;
    v39 += v22;

    v20 = v24;
    v9 = v23;
  }

  if (v39)
  {
    data = [v20 data];
    v26 = [data mutableCopy];

    [v26 replaceBytesInRange:1 withBytes:1 length:{&v39, 1}];
    ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface3 sendControlPointOperation:v26];

    v28 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412546;
      v41 = identifier;
      v42 = 1024;
      v43 = v39;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending Enable request for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }
  }

  else
  {
    v32 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EA9C(v32);
    }
  }

  v33 = v39;

  return v33;
}

- (unsigned)sendReceiverStartReadyRequest
{
  v22 = 0;
  v3 = [NSMutableArray alloc];
  configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
  v5 = [v3 initWithArray:configuredSourceASEID];

  v6 = [DataOutputStream outputStreamWithByteOrder:1];
  [v6 writeUint8:4];
  [v6 writeBytes:&v22 + 1 length:1];
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v20 = v6;
  v21 = v5;
  v8 = [ascsInterface sendReceiverStartReadyRequestOptionalASE:&v21 withLTVData:&v20 withEnabledSinkASE:&v22];
  v9 = v21;

  v10 = v20;
  HIBYTE(v22) = v8;

  v11 = qword_1000A9FE0;
  if (HIBYTE(v22))
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412546;
      v24 = identifier;
      v25 = 1024;
      v26 = HIBYTE(v22);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending Receiver Start Ready ASE for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }

    data = [v10 data];
    v16 = [data mutableCopy];

    [v16 replaceBytesInRange:1 withBytes:1 length:{&v22 + 1, 1}];
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface2 sendControlPointOperation:v16];

    v18 = v22 + HIBYTE(v22);
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EB44(v11);
    }

    v18 = v22 + HIBYTE(v22);
  }

  return v18;
}

- (unsigned)sendReceiverStopReadyRequest
{
  v23 = 0;
  v3 = [NSMutableArray alloc];
  configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
  v5 = [v3 initWithArray:configuredSourceASEID];

  v6 = [DataOutputStream outputStreamWithByteOrder:1];
  [v6 writeUint8:6];
  [v6 writeBytes:&v23 length:1];
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v21 = v6;
  v22 = v5;
  v8 = [ascsInterface sendReceiverStopReadyRequestOptionalASE:&v22 withLTVData:&v21];
  v9 = v22;

  v10 = v21;
  v23 = v8;

  if (v23)
  {
    data = [v10 data];
    v12 = [data mutableCopy];

    [v12 replaceBytesInRange:1 withBytes:1 length:{&v23, 1}];
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface2 sendControlPointOperation:v12];

    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412546;
      v25 = identifier;
      v26 = 1024;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending Receiver Stop Ready request for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }
  }

  else
  {
    v18 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EA9C(v18);
    }
  }

  v19 = v23;

  return v19;
}

- (unsigned)sendUpdateMetadataRequestForASE:(id)e withSourceAseID:(id)d withSinkContextType:(id)type withSourceContextType:(id)contextType
{
  eCopy = e;
  dCopy = d;
  typeCopy = type;
  contextTypeCopy = contextType;
  v42 = 0;
  v14 = [DataOutputStream outputStreamWithByteOrder:1];
  [v14 writeUint8:7];
  [v14 writeBytes:&v42 length:1];
  if ([eCopy count])
  {
    ascsInterface = [(AcceptorInterface *)self ascsInterface];
    v41 = v14;
    v16 = [ascsInterface sendUpdateMetadataRequestForDirection:1 OptionalASE:eCopy withMetadata:typeCopy withLTVData:&v41];
    v17 = v41;

    v42 = v16;
    v14 = v17;
  }

  if ([dCopy count])
  {
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    v40 = v14;
    v19 = [ascsInterface2 sendUpdateMetadataRequestForDirection:0 OptionalASE:dCopy withMetadata:contextTypeCopy withLTVData:&v40];
    v20 = v40;

    v42 += v19;
    v14 = v20;
  }

  if (v42)
  {
    data = [v14 data];
    v22 = [data mutableCopy];

    [v22 replaceBytesInRange:1 withBytes:1 length:{&v42, 1}];
    v23 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = dCopy;
      v25 = eCopy;
      v26 = contextTypeCopy;
      v27 = typeCopy;
      v28 = v42;
      v29 = v23;
      peripheral = [(AcceptorInterface *)self peripheral];
      [peripheral identifier];
      v31 = v39 = self;
      *buf = 67109378;
      LODWORD(v44[0]) = v28;
      typeCopy = v27;
      contextTypeCopy = v26;
      eCopy = v25;
      dCopy = v24;
      WORD2(v44[0]) = 2112;
      *(v44 + 6) = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending Update Metadata for %u ASEs to peripheral %@ ", buf, 0x12u);

      self = v39;
    }

    ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface3 sendControlPointOperation:v22];
  }

  else
  {
    v33 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      peripheral2 = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral2 identifier];
      *buf = 138412290;
      v44[0] = identifier;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No Update Metadata to send to peripheral %@ ", buf, 0xCu);
    }
  }

  v37 = v42;

  return v37;
}

- (unsigned)sendDisableRequest
{
  v31 = 0;
  v3 = [NSMutableArray alloc];
  configuredSinkASEID = [(AcceptorInterface *)self configuredSinkASEID];
  v5 = [v3 initWithArray:configuredSinkASEID];

  v6 = [NSMutableArray alloc];
  configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
  v8 = [v6 initWithArray:configuredSourceASEID];

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:5];
  [v9 writeBytes:&v31 length:1];
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v29 = v9;
  v30 = v5;
  v11 = [ascsInterface sendDisableRequestForASE:1 OptionalASE:&v30 withLTVData:&v29];
  v12 = v30;

  v13 = v29;
  v31 = v11;

  ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
  v27 = v13;
  v28 = v8;
  LOBYTE(ascsInterface) = [ascsInterface2 sendDisableRequestForASE:0 OptionalASE:&v28 withLTVData:&v27];
  v15 = v28;

  v16 = v27;
  v31 += ascsInterface;

  if (v31)
  {
    data = [v16 data];
    v18 = [data mutableCopy];

    [v18 replaceBytesInRange:1 withBytes:1 length:{&v31, 1}];
    ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface3 sendControlPointOperation:v18];

    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412546;
      v33 = identifier;
      v34 = 1024;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending Disable request for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }
  }

  else
  {
    v24 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EB88(v24);
    }
  }

  v25 = v31;

  return v25;
}

- (unsigned)sendReleaseRequest
{
  v32 = 0;
  v3 = [NSMutableArray alloc];
  configuredSinkASEID = [(AcceptorInterface *)self configuredSinkASEID];
  v5 = [v3 initWithArray:configuredSinkASEID];

  v6 = [NSMutableArray alloc];
  configuredSourceASEID = [(AcceptorInterface *)self configuredSourceASEID];
  v8 = [v6 initWithArray:configuredSourceASEID];

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:8];
  [v9 writeBytes:&v32 length:1];
  ascsInterface = [(AcceptorInterface *)self ascsInterface];
  v30 = v9;
  v31 = v5;
  v11 = [ascsInterface sendReleaseRequestForASE:1 OptionalASE:&v31 withLTVData:&v30];
  v12 = v31;

  v13 = v30;
  v32 = v11;

  ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
  v28 = v13;
  v29 = v8;
  LOBYTE(ascsInterface) = [ascsInterface2 sendReleaseRequestForASE:0 OptionalASE:&v29 withLTVData:&v28];
  v15 = v29;

  v16 = v28;
  v32 += ascsInterface;

  if (v32)
  {
    data = [v16 data];
    v18 = [data mutableCopy];

    [v18 replaceBytesInRange:1 withBytes:1 length:{&v32, 1}];
    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v32;
      v21 = v19;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 67109378;
      v34 = v20;
      v35 = 2112;
      v36 = identifier;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending Release for %u ASEs to peripheral %@ ", buf, 0x12u);
    }

    ascsInterface3 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface3 sendControlPointOperation:v18];
  }

  else
  {
    v25 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005EC30(v25);
    }
  }

  v26 = v32;

  return v26;
}

- (BOOL)setRelativeVolumeUp
{
  vcsInterface = [(AcceptorInterface *)self vcsInterface];
  setRelativeVolumeUp = [vcsInterface setRelativeVolumeUp];

  return setRelativeVolumeUp;
}

- (BOOL)setRelativeVolumeDown
{
  vcsInterface = [(AcceptorInterface *)self vcsInterface];
  setRelativeVolumeDown = [vcsInterface setRelativeVolumeDown];

  return setRelativeVolumeDown;
}

- (void)sendSetNextPreset
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  hasInterface = [(AcceptorInterface *)self hasInterface];
  v13 = v3;
  [hasInterface buildSetNextPreset:&v13];
  v5 = v13;

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    *buf = 138412290;
    v15 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Set Next Preset request to peripheral %@ ", buf, 0xCu);
  }

  data = [v5 data];
  v11 = [data mutableCopy];

  hasInterface2 = [(AcceptorInterface *)self hasInterface];
  [hasInterface2 sendControlPointOperation:v11];
}

- (void)sendSetNextPresetSyncLocally
{
  hasInterface = [(AcceptorInterface *)self hasInterface];
  presetSyncSupported = [hasInterface presetSyncSupported];

  if (presetSyncSupported)
  {
    v5 = [DataOutputStream outputStreamWithByteOrder:1];
    hasInterface2 = [(AcceptorInterface *)self hasInterface];
    v19 = v5;
    [hasInterface2 buildSetNextPresetSyncLocally:&v19];
    v7 = v19;

    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412290;
      v21 = identifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending Set Next Preset - Synchronized Locally request to peripheral %@ ", buf, 0xCu);
    }

    data = [v7 data];
    v13 = [data mutableCopy];

    hasInterface3 = [(AcceptorInterface *)self hasInterface];
    [hasInterface3 sendControlPointOperation:v13];
  }

  else
  {
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      peripheral2 = [(AcceptorInterface *)self peripheral];
      identifier2 = [peripheral2 identifier];
      *buf = 138412290;
      v21 = identifier2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Preset Synchronization is not supported by peripheral %@ ", buf, 0xCu);
    }
  }
}

- (void)sendSetPreviousPreset
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  hasInterface = [(AcceptorInterface *)self hasInterface];
  v13 = v3;
  [hasInterface buildSetPreviousPreset:&v13];
  v5 = v13;

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    *buf = 138412290;
    v15 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Set Previous Preset request to peripheral %@ ", buf, 0xCu);
  }

  data = [v5 data];
  v11 = [data mutableCopy];

  hasInterface2 = [(AcceptorInterface *)self hasInterface];
  [hasInterface2 sendControlPointOperation:v11];
}

- (void)sendSetPreviousPresetSyncLocally
{
  hasInterface = [(AcceptorInterface *)self hasInterface];
  presetSyncSupported = [hasInterface presetSyncSupported];

  if (presetSyncSupported)
  {
    v5 = [DataOutputStream outputStreamWithByteOrder:1];
    hasInterface2 = [(AcceptorInterface *)self hasInterface];
    v19 = v5;
    [hasInterface2 buildSetPreviousPresetSyncLocally:&v19];
    v7 = v19;

    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      peripheral = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral identifier];
      *buf = 138412290;
      v21 = identifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending Set Previous Preset - Synchronized Locally request to peripheral %@ ", buf, 0xCu);
    }

    data = [v7 data];
    v13 = [data mutableCopy];

    hasInterface3 = [(AcceptorInterface *)self hasInterface];
    [hasInterface3 sendControlPointOperation:v13];
  }

  else
  {
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      peripheral2 = [(AcceptorInterface *)self peripheral];
      identifier2 = [peripheral2 identifier];
      *buf = 138412290;
      v21 = identifier2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Preset Synchronization is not supported by peripheral %@ ", buf, 0xCu);
    }
  }
}

- (unsigned)getCoordinatedSetLock
{
  csisInterface = [(AcceptorInterface *)self csisInterface];
  getLock = [csisInterface getLock];

  return getLock;
}

- (unsigned)getCoordinatedSetMemberRank
{
  csisInterface = [(AcceptorInterface *)self csisInterface];
  getRank = [csisInterface getRank];

  return getRank;
}

- (id)getServiceInterfaceForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isPrimary])
  {
    [(AcceptorInterface *)self serviceInterfaceMap];
  }

  else
  {
    [(AcceptorInterface *)self includedServiceInterfaceMap];
  }
  v5 = ;
  v6 = [v5 objectForKey:serviceCopy];

  return v6;
}

- (void)sendReadActivePresetIndex
{
  hasInterface = [(AcceptorInterface *)self hasInterface];

  if (hasInterface)
  {
    hasInterface2 = [(AcceptorInterface *)self hasInterface];
    [hasInterface2 readActivePresetIndex];
  }
}

- (void)sendReadHearingAidFeatures
{
  hasInterface = [(AcceptorInterface *)self hasInterface];

  if (hasInterface)
  {
    hasInterface2 = [(AcceptorInterface *)self hasInterface];
    [hasInterface2 readHearingAidFeatures];
  }
}

- (void)sendWriteASEControlPoint
{
  ascsInterface = [(AcceptorInterface *)self ascsInterface];

  if (ascsInterface)
  {
    ascsInterface2 = [(AcceptorInterface *)self ascsInterface];
    [ascsInterface2 writeASEControlPoint];
  }
}

- (void)sendReadSinkAudioLocations
{
  pacsInterface = [(AcceptorInterface *)self pacsInterface];

  if (pacsInterface)
  {
    pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
    [pacsInterface2 readSinkAudioLocations];
  }
}

- (void)sendWriteSinkAudioLocations
{
  pacsInterface = [(AcceptorInterface *)self pacsInterface];

  if (pacsInterface)
  {
    pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
    [pacsInterface2 writeSinkAudioLocations];
  }
}

- (void)sendReadSourceAudioLocations
{
  pacsInterface = [(AcceptorInterface *)self pacsInterface];

  if (pacsInterface)
  {
    pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
    [pacsInterface2 readSourceAudioLocations];
  }
}

- (void)sendWriteSourceAudioLocations
{
  pacsInterface = [(AcceptorInterface *)self pacsInterface];

  if (pacsInterface)
  {
    pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
    [pacsInterface2 writeSourceAudioLocations];
  }
}

- (void)sendReadAvailableContexts
{
  pacsInterface = [(AcceptorInterface *)self pacsInterface];

  if (pacsInterface)
  {
    pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
    [pacsInterface2 readAvailableContexts];
  }
}

- (void)sendReadSupportedContexts
{
  pacsInterface = [(AcceptorInterface *)self pacsInterface];

  if (pacsInterface)
  {
    pacsInterface2 = [(AcceptorInterface *)self pacsInterface];
    [pacsInterface2 readSupportedContexts];
  }
}

- (void)handleCreateCISDataPathEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[AcceptorInterface handleCreateCISDataPathEvent:]";
    v16 = 2112;
    v17 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v14, 0x16u);
  }

  v6 = eventCopy;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgDirection"];
  bOOLValue = [v7 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  unsignedCharValue = [v9 unsignedCharValue];

  v11 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];

  unsignedCharValue2 = [v11 unsignedCharValue];
  isoDataPathManagementHandler = [(AcceptorInterface *)self isoDataPathManagementHandler];
  (isoDataPathManagementHandler)[2](isoDataPathManagementHandler, 1, unsignedCharValue, unsignedCharValue2, bOOLValue);
}

- (void)handleRemoveCISDataPathEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[AcceptorInterface handleRemoveCISDataPathEvent:]";
    v16 = 2112;
    v17 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v14, 0x16u);
  }

  v6 = eventCopy;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgDirection"];
  bOOLValue = [v7 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  unsignedCharValue = [v9 unsignedCharValue];

  v11 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];

  unsignedCharValue2 = [v11 unsignedCharValue];
  isoDataPathManagementHandler = [(AcceptorInterface *)self isoDataPathManagementHandler];
  (isoDataPathManagementHandler)[2](isoDataPathManagementHandler, 0, unsignedCharValue, unsignedCharValue2, bOOLValue);
}

- (void)handleDisconnectCISEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[AcceptorInterface handleDisconnectCISEvent:]";
    v14 = 2112;
    v15 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v12, 0x16u);
  }

  v6 = eventCopy;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  unsignedCharValue = [v7 unsignedCharValue];

  v9 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];

  unsignedCharValue2 = [v9 unsignedCharValue];
  cisDisconnectHandler = [(AcceptorInterface *)self cisDisconnectHandler];
  (cisDisconnectHandler)[2](cisDisconnectHandler, unsignedCharValue, unsignedCharValue2);
}

- (void)handleLockStateNotifyEvent:(id)event
{
  eventCopy = event;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AcceptorInterface handleLockStateNotifyEvent:]";
    v7 = 2112;
    v8 = eventCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s with %@", &v5, 0x16u);
  }
}

- (void)handleLockRequestResultEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AcceptorInterface handleLockRequestResultEvent:]";
    v12 = 2112;
    v13 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v10, 0x16u);
  }

  v6 = eventCopy;
  unsignedIntValue = [v6 unsignedIntValue];
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Lock Request ATT Error with %ld", &v10, 0xCu);
  }

  lockStateHandler = [(AcceptorInterface *)self lockStateHandler];
  (lockStateHandler)[2](lockStateHandler, unsignedIntValue);
}

- (void)handleCsisAttAvailableEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[AcceptorInterface handleCsisAttAvailableEvent:]";
    v23 = 2112;
    v24 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v21, 0x16u);
  }

  v6 = eventCopy;
  if ([v6 isEqual:CBUUIDSetMemberRankCharacteristicString])
  {
    csisInterface = [(AcceptorInterface *)self csisInterface];
    -[AcceptorInterface setCsisRank:](self, "setCsisRank:", [csisInterface getRank]);
LABEL_12:

    goto LABEL_13;
  }

  if ([v6 isEqual:CBUUIDSetIdResolvingKeyCharacteristicString])
  {
    csisInterface2 = [(AcceptorInterface *)self csisInterface];
    getSirk = [csisInterface2 getSirk];
    v10 = [getSirk length];

    if (v10)
    {
      parentCAP = [(AcceptorInterface *)self parentCAP];

      if (parentCAP)
      {
        goto LABEL_9;
      }

      v12 = +[ConnectionManager instance];
      csisInterface3 = [(AcceptorInterface *)self csisInterface];
      getSirk2 = [csisInterface3 getSirk];
      v15 = [v12 matchingCapSetWithSirk:self withSirk:getSirk2];

      if (v15)
      {
LABEL_9:
        csisInterface = [(AcceptorInterface *)self parentCAP];
        csisInterface4 = [(AcceptorInterface *)self csisInterface];
        getSirk3 = [csisInterface4 getSirk];
        peripheral = [(AcceptorInterface *)self peripheral];
        identifier = [peripheral identifier];
        [csisInterface setSIRK:getSirk3 withIdentifier:identifier];

        goto LABEL_12;
      }
    }
  }

  else if ([v6 isEqual:CBUUIDCoordinatedSetSizeCharacteristicString])
  {
    csisInterface = [(AcceptorInterface *)self parentCAP];
    csisInterface5 = [(AcceptorInterface *)self csisInterface];
    [csisInterface setCoordinateSetSize:{objc_msgSend(csisInterface5, "getSetSize")}];

    goto LABEL_12;
  }

LABEL_13:
}

- (void)handleDeviceAttributeUpdateEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy objectForKeyedSubscript:@"kCoordinatedSetSize"];

  if (v5)
  {
    v6 = [eventCopy objectForKeyedSubscript:@"kCoordinatedSetSize"];
    -[AcceptorInterface setCoordinatedSetSize:](self, "setCoordinatedSetSize:", [v6 unsignedIntValue]);
  }

  v7 = [eventCopy objectForKeyedSubscript:@"kCodecIDArray"];

  if (v7)
  {
    v8 = [eventCopy objectForKeyedSubscript:@"kCodecIDArray"];
    v9 = [v8 mutableCopy];
    [(AcceptorInterface *)self setCodecArray:v9];
  }

  v10 = [eventCopy objectForKeyedSubscript:@"kSinkCodecConfigArray"];

  if (v10)
  {
    v11 = [eventCopy objectForKeyedSubscript:@"kSinkCodecConfigArray"];
    v12 = [v11 mutableCopy];
    [(AcceptorInterface *)self setSinkCodecConfigArray:v12];
  }

  v13 = [eventCopy objectForKeyedSubscript:@"kSourceCodecConfigArray"];

  if (v13)
  {
    v14 = [eventCopy objectForKeyedSubscript:@"kSourceCodecConfigArray"];
    v15 = [v14 mutableCopy];
    [(AcceptorInterface *)self setSourceCodecConfigArray:v15];
  }

  v16 = [eventCopy objectForKeyedSubscript:@"kSinkAudioLocations"];

  if (v16)
  {
    v17 = [eventCopy objectForKeyedSubscript:@"kSinkAudioLocations"];
    [(AcceptorInterface *)self setSinkLocationMask:v17];
  }

  v18 = [eventCopy objectForKeyedSubscript:@"kSourceAudioLocations"];

  if (v18)
  {
    v19 = [eventCopy objectForKeyedSubscript:@"kSourceAudioLocations"];
    [(AcceptorInterface *)self setSourceLocationMask:v19];
  }

  csisInterface = [(AcceptorInterface *)self csisInterface];
  if (csisInterface && ![(AcceptorInterface *)self coordinatedSetSize])
  {
  }

  else
  {
    sinkCodecConfigArray = [(AcceptorInterface *)self sinkCodecConfigArray];
    if ([sinkCodecConfigArray count])
    {

LABEL_18:
      v24 = +[NSMutableDictionary dictionary];
      sinkCodecConfigArray2 = [(AcceptorInterface *)self sinkCodecConfigArray];
      [v24 setValue:sinkCodecConfigArray2 forKey:@"kSinkCodecConfigArray"];

      sourceCodecConfigArray = [(AcceptorInterface *)self sourceCodecConfigArray];
      [v24 setValue:sourceCodecConfigArray forKey:@"kSourceCodecConfigArray"];

      sinkLocationMask = [(AcceptorInterface *)self sinkLocationMask];
      [v24 setValue:sinkLocationMask forKey:@"kSinkAudioLocations"];

      sourceLocationMask = [(AcceptorInterface *)self sourceLocationMask];
      [v24 setValue:sourceLocationMask forKey:@"kSourceAudioLocations"];

      codecArray = [(AcceptorInterface *)self codecArray];
      [v24 setValue:codecArray forKey:@"kCodecIDArray"];

      peripheral = [(AcceptorInterface *)self peripheral];
      name = [peripheral name];
      [v24 setValue:name forKey:@"kDeviceName"];

      peripheral2 = [(AcceptorInterface *)self peripheral];
      identifier = [peripheral2 identifier];
      uUIDString = [identifier UUIDString];
      [v24 setValue:uUIDString forKey:@"kDeviceIdentifier"];

      v35 = [NSNumber numberWithUnsignedInt:[(AcceptorInterface *)self coordinatedSetSize]];
      [v24 setValue:v35 forKey:@"kCoordinatedSetSize"];

      v36 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        peripheral3 = [(AcceptorInterface *)self peripheral];
        identifier2 = [peripheral3 identifier];
        v45 = 138412546;
        v46 = identifier2;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Acceptor %@ Send message to publish device with attributes %@", &v45, 0x16u);
      }

      publishDeviceHandler = [(AcceptorInterface *)self publishDeviceHandler];

      if (publishDeviceHandler)
      {
        publishDeviceHandler2 = [(AcceptorInterface *)self publishDeviceHandler];
        (publishDeviceHandler2)[2](publishDeviceHandler2, v24);
      }

      sessionCompleteHandler = [(AcceptorInterface *)self sessionCompleteHandler];

      if (sessionCompleteHandler)
      {
        sessionCompleteHandler2 = [(AcceptorInterface *)self sessionCompleteHandler];
        (sessionCompleteHandler2)[2](sessionCompleteHandler2, v24);
      }

      goto LABEL_28;
    }

    sourceCodecConfigArray2 = [(AcceptorInterface *)self sourceCodecConfigArray];
    v23 = [sourceCodecConfigArray2 count];

    if (v23)
    {
      goto LABEL_18;
    }
  }

  v44 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v45) = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Not ready to publish audio device", &v45, 2u);
  }

LABEL_28:
}

- (void)handlePresetControlPointResultEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetControlPointResultEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  activePresetIndexHandler = [(AcceptorInterface *)self activePresetIndexHandler];

  if (activePresetIndexHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    presetControlPointResultHandler = [(AcceptorInterface *)self presetControlPointResultHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (presetControlPointResultHandler)[2](presetControlPointResultHandler, unsignedIntValue, identifier);
  }
}

- (void)handleHearingAidFeaturesEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AcceptorInterface handleHearingAidFeaturesEvent:]";
    v12 = 2112;
    v13 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v10, 0x16u);
  }

  hearingAidFeaturesHandler = [(AcceptorInterface *)self hearingAidFeaturesHandler];

  if (hearingAidFeaturesHandler)
  {
    hearingAidFeaturesHandler2 = [(AcceptorInterface *)self hearingAidFeaturesHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (hearingAidFeaturesHandler2)[2](hearingAidFeaturesHandler2, identifier);
  }
}

- (void)handleActivePresetIndexEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handleActivePresetIndexEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  activePresetIndexHandler = [(AcceptorInterface *)self activePresetIndexHandler];

  if (activePresetIndexHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    activePresetIndexHandler2 = [(AcceptorInterface *)self activePresetIndexHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (activePresetIndexHandler2)[2](activePresetIndexHandler2, unsignedIntValue, identifier);
  }
}

- (void)handleReadPresetsRequestEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AcceptorInterface handleReadPresetsRequestEvent:]";
    v8 = 2112;
    v9 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v6, 0x16u);
  }

  -[AcceptorInterface sendReadPresetsRequest:withNumPresets:](self, "sendReadPresetsRequest:withNumPresets:", 1, [eventCopy unsignedIntValue]);
}

- (void)handleReadPresetsResponseEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handleReadPresetsResponseEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  readPresetsResponseHandler = [(AcceptorInterface *)self readPresetsResponseHandler];

  if (readPresetsResponseHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    readPresetsResponseHandler2 = [(AcceptorInterface *)self readPresetsResponseHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (readPresetsResponseHandler2)[2](readPresetsResponseHandler2, unsignedIntValue, identifier);
  }
}

- (void)handlePresetNameChangedEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetNameChangedEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  presetNameChangedHandler = [(AcceptorInterface *)self presetNameChangedHandler];

  if (presetNameChangedHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    presetNameChangedHandler2 = [(AcceptorInterface *)self presetNameChangedHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (presetNameChangedHandler2)[2](presetNameChangedHandler2, unsignedIntValue, identifier);
  }
}

- (void)handlePresetRecordAddedEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordAddedEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  presetRecordAddedHandler = [(AcceptorInterface *)self presetRecordAddedHandler];

  if (presetRecordAddedHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    presetRecordAddedHandler2 = [(AcceptorInterface *)self presetRecordAddedHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (presetRecordAddedHandler2)[2](presetRecordAddedHandler2, unsignedIntValue, identifier);
  }
}

- (void)handlePresetRecordDeletedEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordDeletedEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  presetRecordDeletedHandler = [(AcceptorInterface *)self presetRecordDeletedHandler];

  if (presetRecordDeletedHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    presetRecordDeletedHandler2 = [(AcceptorInterface *)self presetRecordDeletedHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (presetRecordDeletedHandler2)[2](presetRecordDeletedHandler2, unsignedIntValue, identifier);
  }
}

- (void)handlePresetRecordAvailableEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordAvailableEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  presetRecordAvailableHandler = [(AcceptorInterface *)self presetRecordAvailableHandler];

  if (presetRecordAvailableHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    presetRecordAvailableHandler2 = [(AcceptorInterface *)self presetRecordAvailableHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (presetRecordAvailableHandler2)[2](presetRecordAvailableHandler2, unsignedIntValue, identifier);
  }
}

- (void)handlePresetRecordUnavailableEvent:(id)event
{
  eventCopy = event;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordUnavailableEvent:]";
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  presetRecordUnavailableHandler = [(AcceptorInterface *)self presetRecordUnavailableHandler];

  if (presetRecordUnavailableHandler)
  {
    unsignedIntValue = [eventCopy unsignedIntValue];
    presetRecordUnavailableHandler2 = [(AcceptorInterface *)self presetRecordUnavailableHandler];
    peripheral = [(AcceptorInterface *)self peripheral];
    identifier = [peripheral identifier];
    (presetRecordUnavailableHandler2)[2](presetRecordUnavailableHandler2, unsignedIntValue, identifier);
  }
}

- (id)serviceEventToString:(unsigned __int8)string
{
  if (string > 0x24u)
  {
    return @"Unknown Service Event";
  }

  else
  {
    return off_100095860[string];
  }
}

- (ClientCommonAudioProfile)parentCAP
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCAP);

  return WeakRetained;
}

@end