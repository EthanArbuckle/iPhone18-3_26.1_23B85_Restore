@interface AcceptorInterface
+ (void)initialize;
- (AcceptorInterface)initWithPeripheral:(id)a3;
- (BOOL)setRelativeVolumeDown;
- (BOOL)setRelativeVolumeUp;
- (ClientCommonAudioProfile)parentCAP;
- (id)clientServiceForUUID:(id)a3;
- (id)getAudioStreamEndpoints;
- (id)getConfiguredASEInfo;
- (id)getServiceInterfaceForService:(id)a3;
- (id)serviceEventToString:(unsigned __int8)a3;
- (unsigned)getCoordinatedSetLock;
- (unsigned)getCoordinatedSetMemberRank;
- (unsigned)matchContextTypeAvailabilityForConfig:(id)a3;
- (unsigned)matchSupportedContextTypeForConfig:(id)a3 withAvailableContextType:(unsigned __int16)a4;
- (unsigned)sendCodecConfigRequestWithAudioConfig:(id)a3;
- (unsigned)sendDisableRequest;
- (unsigned)sendEnableRequestWithSnkAseID:(id)a3 WithSrcAseID:(id)a4;
- (unsigned)sendQoSConfigRequest;
- (unsigned)sendReceiverStartReadyRequest;
- (unsigned)sendReceiverStopReadyRequest;
- (unsigned)sendReleaseRequest;
- (unsigned)sendUpdateMetadataRequestForASE:(id)a3 withSourceAseID:(id)a4 withSinkContextType:(id)a5 withSourceContextType:(id)a6;
- (unsigned)supportsAudioLocationForConfig:(id)a3;
- (unsigned)supportsCodecConfigurationForConfig:(id)a3;
- (void)analyzeError:(id)a3;
- (void)clientServiceDidStart:(id)a3;
- (void)dealloc;
- (void)handleActivePresetIndexEvent:(id)a3;
- (void)handleCreateCISDataPathEvent:(id)a3;
- (void)handleCsisAttAvailableEvent:(id)a3;
- (void)handleDeviceAttributeUpdateEvent:(id)a3;
- (void)handleDisconnectCISEvent:(id)a3;
- (void)handleHearingAidFeaturesEvent:(id)a3;
- (void)handleLockRequestResultEvent:(id)a3;
- (void)handleLockStateNotifyEvent:(id)a3;
- (void)handlePresetControlPointResultEvent:(id)a3;
- (void)handlePresetNameChangedEvent:(id)a3;
- (void)handlePresetRecordAddedEvent:(id)a3;
- (void)handlePresetRecordAvailableEvent:(id)a3;
- (void)handlePresetRecordDeletedEvent:(id)a3;
- (void)handlePresetRecordUnavailableEvent:(id)a3;
- (void)handleReadPresetsRequestEvent:(id)a3;
- (void)handleReadPresetsResponseEvent:(id)a3;
- (void)handleRemoveCISDataPathEvent:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverIncludedServicesForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
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

- (AcceptorInterface)initWithPeripheral:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = AcceptorInterface;
  v6 = [(AcceptorInterface *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_isMatched = 0;
    objc_storeStrong(&v6->_peripheral, a3);
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

- (id)clientServiceForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100042E8C;
  v16 = sub_100042E9C;
  v17 = 0;
  v5 = [(AcceptorInterface *)self serviceInterfaceMap];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100042EA4;
  v9[3] = &unk_100095788;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clientServiceDidStart:(id)a3
{
  v4 = a3;
  v5 = [(AcceptorInterface *)self startingAcceptorServices];
  [v5 removeObject:v4];

  [(AcceptorInterface *)self startAcceptorServices];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = qword_1000AA058;
    qword_1000AA058 = &off_10009B1F0;
  }
}

- (void)dealloc
{
  v3 = [(AcceptorInterface *)self serviceInterfaceMap];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_1000957C8];

  v4.receiver = self;
  v4.super_class = AcceptorInterface;
  [(AcceptorInterface *)&v4 dealloc];
}

- (void)startAcceptorServices
{
  do
  {
    v3 = [(AcceptorInterface *)self startingAcceptorServices];
    v4 = [v3 count];

    if (v4)
    {
      break;
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v5 = [(AcceptorInterface *)self serviceInterfaceMap];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100043188;
    v6[3] = &unk_1000957F0;
    v6[4] = self;
    v6[5] = &v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];

    LOBYTE(v5) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  while ((v5 & 1) != 0);
}

- (void)analyzeError:(id)a3
{
  v8 = a3;
  v4 = [v8 domain];
  v5 = [v4 isEqualToString:CBATTErrorDomain];

  if (v5 && [v8 code] == 15)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(AcceptorInterface *)self peripheral];
    [v6 postNotificationName:@"PeripheralPairingDidFailNotification" object:v7];
  }
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v21 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [(AcceptorInterface *)self serviceInterfaceMap];
        v14 = [v13 objectForKey:v6];

        if (v14)
        {
          v15 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [v21 name];
            v18 = [v12 UUID];
            *buf = v20;
            v27 = v17;
            v28 = 2112;
            v29 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %@ invalidated service %@", buf, 0x16u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = [(AcceptorInterface *)self peripheral];
  [v19 discoverServices:0];
}

- (void)peripheral:(id)a3 didDiscoverIncludedServicesForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AcceptorInterface *)self serviceInterfaceMap];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    if (v10)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v24 = v13;
        v25 = [v8 name];
        *buf = 138412802;
        v35 = v9;
        v36 = 2112;
        v37 = v25;
        v38 = 2112;
        v39 = v10;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error discovering included services for service %@ on peripheral %@: %@", buf, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v12 peripheral:v8 didDiscoverIncludedServicesForService:v9 error:v10];
    v14 = [v9 includedServices];

    if (v14)
    {
      v26 = v10;
      v27 = v9;
      v28 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = [v9 includedServices];
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v12 getIncludedServiceInterfaceForService:v20];
            if (v21)
            {
              v22 = [(AcceptorInterface *)self includedServiceInterfaceMap];
              [v22 setObject:v21 forKey:v20];
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

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      v9 = v27;
      v8 = v28;
      v10 = v26;
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v34 = a4;
  v39 = v6;
  if (v34)
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E6A8(v7, v6, v34);
    }

    [(AcceptorInterface *)self analyzeError:v34];
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v6 services];
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
          v11 = [(AcceptorInterface *)self serviceInterfaceMap];
          v12 = [v11 objectForKey:v10];
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
                    v19 = [v10 UUID];
                    v20 = [(objc_class *)v18 UUID];
                    v21 = [v19 isEqual:v20];

                    if (v21)
                    {
                      v22 = [[v18 alloc] initWithPeripheral:v39 service:v10];
                      v23 = qword_1000A9FE0;
                      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
                      {
                        v24 = v23;
                        v25 = [v39 name];
                        v26 = [v10 UUID];
                        *buf = 138412802;
                        *&buf[4] = v25;
                        *&buf[12] = 2114;
                        *&buf[14] = v26;
                        *&buf[22] = 2112;
                        v54 = v10;
                        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports service %{public}@. %@", buf, 0x20u);
                      }

                      v27 = [(AcceptorInterface *)self serviceInterfaceMap];
                      [v27 setObject:v22 forKey:v10];

                      v42[0] = _NSConcreteStackBlock;
                      v42[1] = 3221225472;
                      v42[2] = sub_100043E94;
                      v42[3] = &unk_100095818;
                      v42[4] = self;
                      [v22 setServiceEventHandler:v42];
                      if ([(NSString *)v17 containsString:@"ASCS"])
                      {
                        [(AcceptorInterface *)self setAscsInterface:v22];
                        v28 = [(AcceptorInterface *)self ascsInterface];
                        [v28 setAcceptor:self];

                        v29 = [(AcceptorInterface *)self ascsInterface];
                        [v29 registerControlPointHandler:self->_controlPointHandler];

                        v30 = [(AcceptorInterface *)self ascsInterface];
                        [v30 registerASEUpdateHandler:self->_aseUpdateHandler];
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
    v31 = [(AcceptorInterface *)self serviceInterfaceMap];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100043F90;
    v41[3] = &unk_100095840;
    v41[4] = buf;
    [v31 enumerateKeysAndObjectsUsingBlock:v41];

    if (*(*&buf[8] + 24) == 1)
    {
      [(AcceptorInterface *)self startAcceptorServices];
    }

    else
    {
      v32 = qword_1000A9FE0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v39 name];
        *v51 = 138412290;
        v52 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Didn't find any primary service on peripheral %@", v51, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AcceptorInterface *)self getServiceInterfaceForService:v9];
  if (v11)
  {
    if (v10)
    {
      v12 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [v9 UUID];
        v15 = [v8 name];
        v16 = 138412802;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error discovering characteristics for service %@ on peripheral %@: %@", &v16, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v11 peripheral:v8 didDiscoverCharacteristicsForService:v9 error:v10];
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:v11];

  if (v12)
  {
    if (v10)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v16 = [v8 name];
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error updating value for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v12 peripheral:v8 didUpdateValueForCharacteristic:v9 error:v10];
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:v11];

  if (v12)
  {
    if (v10)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v16 = [v8 name];
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error writing value for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v12 peripheral:v8 didWriteValueForCharacteristic:v9 error:v10];
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:v11];

  if (v12)
  {
    if (v10)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v16 = [v8 name];
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error updating notifications for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v12 peripheral:v8 didUpdateNotificationStateForCharacteristic:v9 error:v10];
  }
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 service];
  v12 = [(AcceptorInterface *)self getServiceInterfaceForService:v11];

  if (v12)
  {
    if (v10)
    {
      v13 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v16 = [v8 name];
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error discovering descriptors for characteristic %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v12 peripheral:v8 didDiscoverDescriptorsForCharacteristic:v9 error:v10];
  }
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 characteristic];
  v12 = [v11 service];
  v13 = [(AcceptorInterface *)self getServiceInterfaceForService:v12];

  if (v13)
  {
    if (v10)
    {
      v14 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v9 UUID];
        v17 = [v8 name];
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error updating value for descriptor %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(AcceptorInterface *)self analyzeError:v10];
    }

    [v13 peripheral:v8 didUpdateValueForDescriptor:v9 error:v10];
  }
}

- (id)getAudioStreamEndpoints
{
  v2 = [(AcceptorInterface *)self ascsInterface];
  v3 = [v2 getAudioStreamEndpoints];

  return v3;
}

- (id)getConfiguredASEInfo
{
  v2 = [(AcceptorInterface *)self ascsInterface];
  v3 = [v2 getConfiguredASEInfo];

  return v3;
}

- (unsigned)matchContextTypeAvailabilityForConfig:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(AcceptorInterface *)self peripheral];
    v8 = [v7 identifier];
    *buf = 138412290;
    *v30 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Match use case contextTypes for peripheral %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v4 audioChanConfigArray];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = v4;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (([v14 excludeFromProcedure] & 1) == 0)
        {
          if ([v14 contextTypes])
          {
            v15 = [(AcceptorInterface *)self pacsInterface];
            v16 = [v15 getAvailableAudioContexts:{objc_msgSend(v14, "isSink")}];

            LODWORD(v15) = [v14 contextTypes] & v16;
            if (v15 != [v14 contextTypes])
            {
              v17 = qword_1000A9FE0;
              if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                v19 = [v14 contextTypes];
                v20 = [v14 isSink];
                *buf = 67109632;
                *v30 = v19;
                *&v30[4] = 1024;
                *&v30[6] = v16;
                v31 = 1024;
                v32 = v20;
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

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v22 = 0;
LABEL_18:
    v4 = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unsigned)matchSupportedContextTypeForConfig:(id)a3 withAvailableContextType:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 contextTypes];
  v8 = [(AcceptorInterface *)self pacsInterface];
  v9 = [v8 getSupportedAudioContexts:{objc_msgSend(v6, "isSink")}];

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v24 = 67109632;
    v25 = v7;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = [v6 isSink];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Use case contextTypes: 0x%02X supportedAudioContexts: 0x%02X isSink: %d", &v24, 0x14u);
  }

  [v6 setStatus:0];
  [v6 setInErrContextTypes:0];
  if ((v7 & ~v9) != 0)
  {
    for (i = 0; i != 12; ++i)
    {
      v17 = (v7 & (1 << i));
      if ((v7 & (1 << i)) != 0 && ((1 << i) & v9) == 0)
      {
        if ([v6 remapToUnspecified])
        {
          LOWORD(v7) = v7 ^ v17 | 1;
        }

        else
        {
          [v6 setInErrContextTypes:{objc_msgSend(v6, "inErrContextTypes") | v17}];
          [v6 setStatus:3];
        }
      }
    }

    v19 = [v6 status];
    v20 = qword_1000A9FE0;
    if (v19)
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005E768(v20, v6);
      }
    }

    else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 67109120;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updated contextTypes: 0x%02X", &v24, 8u);
    }
  }

  else if ((v7 & v4) != 0)
  {
    for (j = 0; j != 12; ++j)
    {
      v13 = (1 << j) & v7;
      if (v13)
      {
        v14 = ((1 << j) & v4) == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        [v6 setInErrContextTypes:{objc_msgSend(v6, "inErrContextTypes") | v13}];
      }
    }

    [v6 setStatus:1];
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E80C(v15, v6);
    }
  }

  else
  {
    [v6 setInErrContextTypes:v7];
    [v6 setStatus:2];
    v21 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E8AC(v21, v6);
    }
  }

  [v6 setContextTypes:v7];
  v22 = [v6 status];

  return v22;
}

- (unsigned)supportsAudioLocationForConfig:(id)a3
{
  v4 = a3;
  v5 = [v4 audioChanConfigArray];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) isSink];
        v7 += v11 ^ 1;
        v8 += v11;
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
    if (v8)
    {
      v12 = [(AcceptorInterface *)self pacsInterface];
      LODWORD(v6) = [v12 supportsAudioLocationWithLocation:objc_msgSend(v4 withDirection:{"sinkAudioLocMask"), 1}];

      if (v6)
      {
        goto LABEL_19;
      }

      if (![v4 sinkAudioLocMask])
      {
        v13 = [(AcceptorInterface *)self pacsInterface];
        [v4 setSinkAudioLocMask:{objc_msgSend(v13, "getAudioLocationMask:", 1)}];

        v14 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v4 sinkAudioLocMask];
          *buf = 67109120;
          v28 = v16;
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

    v17 = [(AcceptorInterface *)self pacsInterface];
    LODWORD(v6) = [v17 supportsAudioLocationWithLocation:objc_msgSend(v4 withDirection:{"sourceAudioLocMask"), 0}];

    if (!v6)
    {
      if (![v4 sourceAudioLocMask])
      {
        v18 = [(AcceptorInterface *)self pacsInterface];
        [v4 setSourceAudioLocMask:{objc_msgSend(v18, "getAudioLocationMask:", 0)}];

        v19 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [v4 sourceAudioLocMask];
          *buf = 67109120;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sourceAudioLocMask set to 0x%02x", buf, 8u);
        }
      }

      goto LABEL_18;
    }
  }

LABEL_19:

  return v6;
}

- (unsigned)supportsCodecConfigurationForConfig:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 audioChanConfigArray];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [(AcceptorInterface *)self pacsInterface];
      v12 = [v11 codecConfigSupportedWithCodecID:objc_msgSend(v4 withCodecConfig:"codecID") withDirection:{objc_msgSend(v10, "codecIndex"), objc_msgSend(v10, "isSink")}];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (unsigned)sendCodecConfigRequestWithAudioConfig:(id)a3
{
  v4 = a3;
  v34 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [DataOutputStream outputStreamWithByteOrder:1];
  [v7 writeUint8:1];
  [v7 writeBytes:&v34 length:1];
  v8 = [(AcceptorInterface *)self configuredSinkASEID];
  [v8 removeAllObjects];

  v9 = [(AcceptorInterface *)self configuredSourceASEID];
  [v9 removeAllObjects];

  v10 = [(AcceptorInterface *)self ascsInterface];
  v32 = v7;
  v33 = v5;
  v11 = [v10 sendConfigCodecRequestWithAudioConfig:v4 withDirection:1 ForOptionalASE:&v33 withLTVData:&v32];
  v12 = v33;

  v13 = v32;
  v34 = v11;

  v14 = [(AcceptorInterface *)self configuredSinkASEID];
  [v14 addObjectsFromArray:v12];

  if ([(AcceptorInterface *)self requiresInput])
  {
    v15 = [(AcceptorInterface *)self ascsInterface];
    v30 = v13;
    v31 = v6;
    v16 = [v15 sendConfigCodecRequestWithAudioConfig:v4 withDirection:0 ForOptionalASE:&v31 withLTVData:&v30];
    v17 = v31;

    v18 = v30;
    v34 += v16;

    v19 = [(AcceptorInterface *)self configuredSourceASEID];
    [v19 addObjectsFromArray:v17];

    v13 = v18;
    v6 = v17;
  }

  if (v34)
  {
    v20 = [v13 data];
    v21 = [v20 mutableCopy];

    [v21 replaceBytesInRange:1 withBytes:1 length:{&v34, 1}];
    v22 = [(AcceptorInterface *)self ascsInterface];
    [v22 sendControlPointOperation:v21];

    v23 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(AcceptorInterface *)self peripheral];
      v26 = [v25 identifier];
      *buf = 138412546;
      v36 = v26;
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
  v4 = [(AcceptorInterface *)self configuredSinkASEID];
  v5 = [v3 initWithArray:v4];

  v6 = [NSMutableArray alloc];
  v7 = [(AcceptorInterface *)self configuredSourceASEID];
  v8 = [v6 initWithArray:v7];

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:2];
  [v9 writeBytes:&v31 length:1];
  v10 = [(AcceptorInterface *)self ascsInterface];
  v29 = v9;
  v30 = v5;
  v11 = [v10 sendConfigQoSRequestForDirection:1 OptionalASE:&v30 withLTVData:&v29];
  v12 = v30;

  v13 = v29;
  v31 = v11;

  if ([(AcceptorInterface *)self requiresInput])
  {
    v14 = [(AcceptorInterface *)self ascsInterface];
    v27 = v13;
    v28 = v8;
    v15 = [v14 sendConfigQoSRequestForDirection:0 OptionalASE:&v28 withLTVData:&v27];
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
      v20 = [(AcceptorInterface *)self peripheral];
      v21 = [v20 identifier];
      *buf = 138412546;
      v33 = v21;
      v34 = 1024;
      v35 = v31;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending QoS configuration request for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }

    v22 = [v13 data];
    v23 = [v22 mutableCopy];

    [v23 replaceBytesInRange:1 withBytes:1 length:{&v31, 1}];
    v24 = [(AcceptorInterface *)self ascsInterface];
    [v24 sendControlPointOperation:v23];

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

- (unsigned)sendEnableRequestWithSnkAseID:(id)a3 WithSrcAseID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39 = 0;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  if ([v6 count])
  {
    if ([v6 indexOfObjectIdenticalTo:&off_10009B328] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v10 = [[NSMutableArray alloc] initWithArray:v6];
  }

  else
  {
    v11 = [NSMutableArray alloc];
    v12 = [(AcceptorInterface *)self configuredSinkASEID];
    v10 = [v11 initWithArray:v12];

    v8 = v12;
  }

  v8 = v10;
LABEL_6:
  if ([v7 count])
  {
    if ([v7 indexOfObjectIdenticalTo:&off_10009B328] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }

    v13 = [[NSMutableArray alloc] initWithArray:v7];
  }

  else
  {
    v14 = [NSMutableArray alloc];
    v15 = [(AcceptorInterface *)self configuredSourceASEID];
    v13 = [v14 initWithArray:v15];

    v9 = v15;
  }

  v9 = v13;
LABEL_11:
  v16 = [DataOutputStream outputStreamWithByteOrder:1];
  [v16 writeUint8:3];
  [v16 writeBytes:&v39 length:1];
  v17 = [(AcceptorInterface *)self ascsInterface];
  v37 = v16;
  v38 = v8;
  v18 = [v17 sendEnableRequestForDirection:1 OptionalASE:&v38 withLTVData:&v37];
  v19 = v38;

  v20 = v37;
  v39 = v18;

  if ([(AcceptorInterface *)self requiresInput])
  {
    v21 = [(AcceptorInterface *)self ascsInterface];
    v35 = v20;
    v36 = v9;
    v22 = [v21 sendEnableRequestForDirection:0 OptionalASE:&v36 withLTVData:&v35];
    v23 = v36;

    v24 = v35;
    v39 += v22;

    v20 = v24;
    v9 = v23;
  }

  if (v39)
  {
    v25 = [v20 data];
    v26 = [v25 mutableCopy];

    [v26 replaceBytesInRange:1 withBytes:1 length:{&v39, 1}];
    v27 = [(AcceptorInterface *)self ascsInterface];
    [v27 sendControlPointOperation:v26];

    v28 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [(AcceptorInterface *)self peripheral];
      v31 = [v30 identifier];
      *buf = 138412546;
      v41 = v31;
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
  v4 = [(AcceptorInterface *)self configuredSourceASEID];
  v5 = [v3 initWithArray:v4];

  v6 = [DataOutputStream outputStreamWithByteOrder:1];
  [v6 writeUint8:4];
  [v6 writeBytes:&v22 + 1 length:1];
  v7 = [(AcceptorInterface *)self ascsInterface];
  v20 = v6;
  v21 = v5;
  v8 = [v7 sendReceiverStartReadyRequestOptionalASE:&v21 withLTVData:&v20 withEnabledSinkASE:&v22];
  v9 = v21;

  v10 = v20;
  HIBYTE(v22) = v8;

  v11 = qword_1000A9FE0;
  if (HIBYTE(v22))
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(AcceptorInterface *)self peripheral];
      v14 = [v13 identifier];
      *buf = 138412546;
      v24 = v14;
      v25 = 1024;
      v26 = HIBYTE(v22);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending Receiver Start Ready ASE for peripheral %@ with %u ASE(s)", buf, 0x12u);
    }

    v15 = [v10 data];
    v16 = [v15 mutableCopy];

    [v16 replaceBytesInRange:1 withBytes:1 length:{&v22 + 1, 1}];
    v17 = [(AcceptorInterface *)self ascsInterface];
    [v17 sendControlPointOperation:v16];

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
  v4 = [(AcceptorInterface *)self configuredSourceASEID];
  v5 = [v3 initWithArray:v4];

  v6 = [DataOutputStream outputStreamWithByteOrder:1];
  [v6 writeUint8:6];
  [v6 writeBytes:&v23 length:1];
  v7 = [(AcceptorInterface *)self ascsInterface];
  v21 = v6;
  v22 = v5;
  v8 = [v7 sendReceiverStopReadyRequestOptionalASE:&v22 withLTVData:&v21];
  v9 = v22;

  v10 = v21;
  v23 = v8;

  if (v23)
  {
    v11 = [v10 data];
    v12 = [v11 mutableCopy];

    [v12 replaceBytesInRange:1 withBytes:1 length:{&v23, 1}];
    v13 = [(AcceptorInterface *)self ascsInterface];
    [v13 sendControlPointOperation:v12];

    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(AcceptorInterface *)self peripheral];
      v17 = [v16 identifier];
      *buf = 138412546;
      v25 = v17;
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

- (unsigned)sendUpdateMetadataRequestForASE:(id)a3 withSourceAseID:(id)a4 withSinkContextType:(id)a5 withSourceContextType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v42 = 0;
  v14 = [DataOutputStream outputStreamWithByteOrder:1];
  [v14 writeUint8:7];
  [v14 writeBytes:&v42 length:1];
  if ([v10 count])
  {
    v15 = [(AcceptorInterface *)self ascsInterface];
    v41 = v14;
    v16 = [v15 sendUpdateMetadataRequestForDirection:1 OptionalASE:v10 withMetadata:v12 withLTVData:&v41];
    v17 = v41;

    v42 = v16;
    v14 = v17;
  }

  if ([v11 count])
  {
    v18 = [(AcceptorInterface *)self ascsInterface];
    v40 = v14;
    v19 = [v18 sendUpdateMetadataRequestForDirection:0 OptionalASE:v11 withMetadata:v13 withLTVData:&v40];
    v20 = v40;

    v42 += v19;
    v14 = v20;
  }

  if (v42)
  {
    v21 = [v14 data];
    v22 = [v21 mutableCopy];

    [v22 replaceBytesInRange:1 withBytes:1 length:{&v42, 1}];
    v23 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v11;
      v25 = v10;
      v26 = v13;
      v27 = v12;
      v28 = v42;
      v29 = v23;
      v30 = [(AcceptorInterface *)self peripheral];
      [v30 identifier];
      v31 = v39 = self;
      *buf = 67109378;
      LODWORD(v44[0]) = v28;
      v12 = v27;
      v13 = v26;
      v10 = v25;
      v11 = v24;
      WORD2(v44[0]) = 2112;
      *(v44 + 6) = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending Update Metadata for %u ASEs to peripheral %@ ", buf, 0x12u);

      self = v39;
    }

    v32 = [(AcceptorInterface *)self ascsInterface];
    [v32 sendControlPointOperation:v22];
  }

  else
  {
    v33 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [(AcceptorInterface *)self peripheral];
      v36 = [v35 identifier];
      *buf = 138412290;
      v44[0] = v36;
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
  v4 = [(AcceptorInterface *)self configuredSinkASEID];
  v5 = [v3 initWithArray:v4];

  v6 = [NSMutableArray alloc];
  v7 = [(AcceptorInterface *)self configuredSourceASEID];
  v8 = [v6 initWithArray:v7];

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:5];
  [v9 writeBytes:&v31 length:1];
  v10 = [(AcceptorInterface *)self ascsInterface];
  v29 = v9;
  v30 = v5;
  v11 = [v10 sendDisableRequestForASE:1 OptionalASE:&v30 withLTVData:&v29];
  v12 = v30;

  v13 = v29;
  v31 = v11;

  v14 = [(AcceptorInterface *)self ascsInterface];
  v27 = v13;
  v28 = v8;
  LOBYTE(v10) = [v14 sendDisableRequestForASE:0 OptionalASE:&v28 withLTVData:&v27];
  v15 = v28;

  v16 = v27;
  v31 += v10;

  if (v31)
  {
    v17 = [v16 data];
    v18 = [v17 mutableCopy];

    [v18 replaceBytesInRange:1 withBytes:1 length:{&v31, 1}];
    v19 = [(AcceptorInterface *)self ascsInterface];
    [v19 sendControlPointOperation:v18];

    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [(AcceptorInterface *)self peripheral];
      v23 = [v22 identifier];
      *buf = 138412546;
      v33 = v23;
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
  v4 = [(AcceptorInterface *)self configuredSinkASEID];
  v5 = [v3 initWithArray:v4];

  v6 = [NSMutableArray alloc];
  v7 = [(AcceptorInterface *)self configuredSourceASEID];
  v8 = [v6 initWithArray:v7];

  v9 = [DataOutputStream outputStreamWithByteOrder:1];
  [v9 writeUint8:8];
  [v9 writeBytes:&v32 length:1];
  v10 = [(AcceptorInterface *)self ascsInterface];
  v30 = v9;
  v31 = v5;
  v11 = [v10 sendReleaseRequestForASE:1 OptionalASE:&v31 withLTVData:&v30];
  v12 = v31;

  v13 = v30;
  v32 = v11;

  v14 = [(AcceptorInterface *)self ascsInterface];
  v28 = v13;
  v29 = v8;
  LOBYTE(v10) = [v14 sendReleaseRequestForASE:0 OptionalASE:&v29 withLTVData:&v28];
  v15 = v29;

  v16 = v28;
  v32 += v10;

  if (v32)
  {
    v17 = [v16 data];
    v18 = [v17 mutableCopy];

    [v18 replaceBytesInRange:1 withBytes:1 length:{&v32, 1}];
    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v32;
      v21 = v19;
      v22 = [(AcceptorInterface *)self peripheral];
      v23 = [v22 identifier];
      *buf = 67109378;
      v34 = v20;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending Release for %u ASEs to peripheral %@ ", buf, 0x12u);
    }

    v24 = [(AcceptorInterface *)self ascsInterface];
    [v24 sendControlPointOperation:v18];
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
  v2 = [(AcceptorInterface *)self vcsInterface];
  v3 = [v2 setRelativeVolumeUp];

  return v3;
}

- (BOOL)setRelativeVolumeDown
{
  v2 = [(AcceptorInterface *)self vcsInterface];
  v3 = [v2 setRelativeVolumeDown];

  return v3;
}

- (void)sendSetNextPreset
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(AcceptorInterface *)self hasInterface];
  v13 = v3;
  [v4 buildSetNextPreset:&v13];
  v5 = v13;

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(AcceptorInterface *)self peripheral];
    v9 = [v8 identifier];
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Set Next Preset request to peripheral %@ ", buf, 0xCu);
  }

  v10 = [v5 data];
  v11 = [v10 mutableCopy];

  v12 = [(AcceptorInterface *)self hasInterface];
  [v12 sendControlPointOperation:v11];
}

- (void)sendSetNextPresetSyncLocally
{
  v3 = [(AcceptorInterface *)self hasInterface];
  v4 = [v3 presetSyncSupported];

  if (v4)
  {
    v5 = [DataOutputStream outputStreamWithByteOrder:1];
    v6 = [(AcceptorInterface *)self hasInterface];
    v19 = v5;
    [v6 buildSetNextPresetSyncLocally:&v19];
    v7 = v19;

    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(AcceptorInterface *)self peripheral];
      v11 = [v10 identifier];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending Set Next Preset - Synchronized Locally request to peripheral %@ ", buf, 0xCu);
    }

    v12 = [v7 data];
    v13 = [v12 mutableCopy];

    v14 = [(AcceptorInterface *)self hasInterface];
    [v14 sendControlPointOperation:v13];
  }

  else
  {
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(AcceptorInterface *)self peripheral];
      v18 = [v17 identifier];
      *buf = 138412290;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Preset Synchronization is not supported by peripheral %@ ", buf, 0xCu);
    }
  }
}

- (void)sendSetPreviousPreset
{
  v3 = [DataOutputStream outputStreamWithByteOrder:1];
  v4 = [(AcceptorInterface *)self hasInterface];
  v13 = v3;
  [v4 buildSetPreviousPreset:&v13];
  v5 = v13;

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(AcceptorInterface *)self peripheral];
    v9 = [v8 identifier];
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending Set Previous Preset request to peripheral %@ ", buf, 0xCu);
  }

  v10 = [v5 data];
  v11 = [v10 mutableCopy];

  v12 = [(AcceptorInterface *)self hasInterface];
  [v12 sendControlPointOperation:v11];
}

- (void)sendSetPreviousPresetSyncLocally
{
  v3 = [(AcceptorInterface *)self hasInterface];
  v4 = [v3 presetSyncSupported];

  if (v4)
  {
    v5 = [DataOutputStream outputStreamWithByteOrder:1];
    v6 = [(AcceptorInterface *)self hasInterface];
    v19 = v5;
    [v6 buildSetPreviousPresetSyncLocally:&v19];
    v7 = v19;

    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(AcceptorInterface *)self peripheral];
      v11 = [v10 identifier];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending Set Previous Preset - Synchronized Locally request to peripheral %@ ", buf, 0xCu);
    }

    v12 = [v7 data];
    v13 = [v12 mutableCopy];

    v14 = [(AcceptorInterface *)self hasInterface];
    [v14 sendControlPointOperation:v13];
  }

  else
  {
    v15 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(AcceptorInterface *)self peripheral];
      v18 = [v17 identifier];
      *buf = 138412290;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Preset Synchronization is not supported by peripheral %@ ", buf, 0xCu);
    }
  }
}

- (unsigned)getCoordinatedSetLock
{
  v2 = [(AcceptorInterface *)self csisInterface];
  v3 = [v2 getLock];

  return v3;
}

- (unsigned)getCoordinatedSetMemberRank
{
  v2 = [(AcceptorInterface *)self csisInterface];
  v3 = [v2 getRank];

  return v3;
}

- (id)getServiceInterfaceForService:(id)a3
{
  v4 = a3;
  if ([v4 isPrimary])
  {
    [(AcceptorInterface *)self serviceInterfaceMap];
  }

  else
  {
    [(AcceptorInterface *)self includedServiceInterfaceMap];
  }
  v5 = ;
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)sendReadActivePresetIndex
{
  v3 = [(AcceptorInterface *)self hasInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self hasInterface];
    [v4 readActivePresetIndex];
  }
}

- (void)sendReadHearingAidFeatures
{
  v3 = [(AcceptorInterface *)self hasInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self hasInterface];
    [v4 readHearingAidFeatures];
  }
}

- (void)sendWriteASEControlPoint
{
  v3 = [(AcceptorInterface *)self ascsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self ascsInterface];
    [v4 writeASEControlPoint];
  }
}

- (void)sendReadSinkAudioLocations
{
  v3 = [(AcceptorInterface *)self pacsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self pacsInterface];
    [v4 readSinkAudioLocations];
  }
}

- (void)sendWriteSinkAudioLocations
{
  v3 = [(AcceptorInterface *)self pacsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self pacsInterface];
    [v4 writeSinkAudioLocations];
  }
}

- (void)sendReadSourceAudioLocations
{
  v3 = [(AcceptorInterface *)self pacsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self pacsInterface];
    [v4 readSourceAudioLocations];
  }
}

- (void)sendWriteSourceAudioLocations
{
  v3 = [(AcceptorInterface *)self pacsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self pacsInterface];
    [v4 writeSourceAudioLocations];
  }
}

- (void)sendReadAvailableContexts
{
  v3 = [(AcceptorInterface *)self pacsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self pacsInterface];
    [v4 readAvailableContexts];
  }
}

- (void)sendReadSupportedContexts
{
  v3 = [(AcceptorInterface *)self pacsInterface];

  if (v3)
  {
    v4 = [(AcceptorInterface *)self pacsInterface];
    [v4 readSupportedContexts];
  }
}

- (void)handleCreateCISDataPathEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[AcceptorInterface handleCreateCISDataPathEvent:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v14, 0x16u);
  }

  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgDirection"];
  v8 = [v7 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  v10 = [v9 unsignedCharValue];

  v11 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];

  v12 = [v11 unsignedCharValue];
  v13 = [(AcceptorInterface *)self isoDataPathManagementHandler];
  (v13)[2](v13, 1, v10, v12, v8);
}

- (void)handleRemoveCISDataPathEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[AcceptorInterface handleRemoveCISDataPathEvent:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v14, 0x16u);
  }

  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgDirection"];
  v8 = [v7 BOOLValue];

  v9 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  v10 = [v9 unsignedCharValue];

  v11 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];

  v12 = [v11 unsignedCharValue];
  v13 = [(AcceptorInterface *)self isoDataPathManagementHandler];
  (v13)[2](v13, 0, v10, v12, v8);
}

- (void)handleDisconnectCISEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[AcceptorInterface handleDisconnectCISEvent:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v12, 0x16u);
  }

  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCigID"];
  v8 = [v7 unsignedCharValue];

  v9 = [v6 objectForKeyedSubscript:@"kLEAudioXPCMsgArgCisID"];

  v10 = [v9 unsignedCharValue];
  v11 = [(AcceptorInterface *)self cisDisconnectHandler];
  (v11)[2](v11, v8, v10);
}

- (void)handleLockStateNotifyEvent:(id)a3
{
  v3 = a3;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AcceptorInterface handleLockStateNotifyEvent:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s with %@", &v5, 0x16u);
  }
}

- (void)handleLockRequestResultEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AcceptorInterface handleLockRequestResultEvent:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v10, 0x16u);
  }

  v6 = v4;
  v7 = [v6 unsignedIntValue];
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Lock Request ATT Error with %ld", &v10, 0xCu);
  }

  v9 = [(AcceptorInterface *)self lockStateHandler];
  (v9)[2](v9, v7);
}

- (void)handleCsisAttAvailableEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[AcceptorInterface handleCsisAttAvailableEvent:]";
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v21, 0x16u);
  }

  v6 = v4;
  if ([v6 isEqual:CBUUIDSetMemberRankCharacteristicString])
  {
    v7 = [(AcceptorInterface *)self csisInterface];
    -[AcceptorInterface setCsisRank:](self, "setCsisRank:", [v7 getRank]);
LABEL_12:

    goto LABEL_13;
  }

  if ([v6 isEqual:CBUUIDSetIdResolvingKeyCharacteristicString])
  {
    v8 = [(AcceptorInterface *)self csisInterface];
    v9 = [v8 getSirk];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(AcceptorInterface *)self parentCAP];

      if (v11)
      {
        goto LABEL_9;
      }

      v12 = +[ConnectionManager instance];
      v13 = [(AcceptorInterface *)self csisInterface];
      v14 = [v13 getSirk];
      v15 = [v12 matchingCapSetWithSirk:self withSirk:v14];

      if (v15)
      {
LABEL_9:
        v7 = [(AcceptorInterface *)self parentCAP];
        v16 = [(AcceptorInterface *)self csisInterface];
        v17 = [v16 getSirk];
        v18 = [(AcceptorInterface *)self peripheral];
        v19 = [v18 identifier];
        [v7 setSIRK:v17 withIdentifier:v19];

        goto LABEL_12;
      }
    }
  }

  else if ([v6 isEqual:CBUUIDCoordinatedSetSizeCharacteristicString])
  {
    v7 = [(AcceptorInterface *)self parentCAP];
    v20 = [(AcceptorInterface *)self csisInterface];
    [v7 setCoordinateSetSize:{objc_msgSend(v20, "getSetSize")}];

    goto LABEL_12;
  }

LABEL_13:
}

- (void)handleDeviceAttributeUpdateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCoordinatedSetSize"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kCoordinatedSetSize"];
    -[AcceptorInterface setCoordinatedSetSize:](self, "setCoordinatedSetSize:", [v6 unsignedIntValue]);
  }

  v7 = [v4 objectForKeyedSubscript:@"kCodecIDArray"];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"kCodecIDArray"];
    v9 = [v8 mutableCopy];
    [(AcceptorInterface *)self setCodecArray:v9];
  }

  v10 = [v4 objectForKeyedSubscript:@"kSinkCodecConfigArray"];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"kSinkCodecConfigArray"];
    v12 = [v11 mutableCopy];
    [(AcceptorInterface *)self setSinkCodecConfigArray:v12];
  }

  v13 = [v4 objectForKeyedSubscript:@"kSourceCodecConfigArray"];

  if (v13)
  {
    v14 = [v4 objectForKeyedSubscript:@"kSourceCodecConfigArray"];
    v15 = [v14 mutableCopy];
    [(AcceptorInterface *)self setSourceCodecConfigArray:v15];
  }

  v16 = [v4 objectForKeyedSubscript:@"kSinkAudioLocations"];

  if (v16)
  {
    v17 = [v4 objectForKeyedSubscript:@"kSinkAudioLocations"];
    [(AcceptorInterface *)self setSinkLocationMask:v17];
  }

  v18 = [v4 objectForKeyedSubscript:@"kSourceAudioLocations"];

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:@"kSourceAudioLocations"];
    [(AcceptorInterface *)self setSourceLocationMask:v19];
  }

  v20 = [(AcceptorInterface *)self csisInterface];
  if (v20 && ![(AcceptorInterface *)self coordinatedSetSize])
  {
  }

  else
  {
    v21 = [(AcceptorInterface *)self sinkCodecConfigArray];
    if ([v21 count])
    {

LABEL_18:
      v24 = +[NSMutableDictionary dictionary];
      v25 = [(AcceptorInterface *)self sinkCodecConfigArray];
      [v24 setValue:v25 forKey:@"kSinkCodecConfigArray"];

      v26 = [(AcceptorInterface *)self sourceCodecConfigArray];
      [v24 setValue:v26 forKey:@"kSourceCodecConfigArray"];

      v27 = [(AcceptorInterface *)self sinkLocationMask];
      [v24 setValue:v27 forKey:@"kSinkAudioLocations"];

      v28 = [(AcceptorInterface *)self sourceLocationMask];
      [v24 setValue:v28 forKey:@"kSourceAudioLocations"];

      v29 = [(AcceptorInterface *)self codecArray];
      [v24 setValue:v29 forKey:@"kCodecIDArray"];

      v30 = [(AcceptorInterface *)self peripheral];
      v31 = [v30 name];
      [v24 setValue:v31 forKey:@"kDeviceName"];

      v32 = [(AcceptorInterface *)self peripheral];
      v33 = [v32 identifier];
      v34 = [v33 UUIDString];
      [v24 setValue:v34 forKey:@"kDeviceIdentifier"];

      v35 = [NSNumber numberWithUnsignedInt:[(AcceptorInterface *)self coordinatedSetSize]];
      [v24 setValue:v35 forKey:@"kCoordinatedSetSize"];

      v36 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [(AcceptorInterface *)self peripheral];
        v39 = [v38 identifier];
        v45 = 138412546;
        v46 = v39;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Acceptor %@ Send message to publish device with attributes %@", &v45, 0x16u);
      }

      v40 = [(AcceptorInterface *)self publishDeviceHandler];

      if (v40)
      {
        v41 = [(AcceptorInterface *)self publishDeviceHandler];
        (v41)[2](v41, v24);
      }

      v42 = [(AcceptorInterface *)self sessionCompleteHandler];

      if (v42)
      {
        v43 = [(AcceptorInterface *)self sessionCompleteHandler];
        (v43)[2](v43, v24);
      }

      goto LABEL_28;
    }

    v22 = [(AcceptorInterface *)self sourceCodecConfigArray];
    v23 = [v22 count];

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

- (void)handlePresetControlPointResultEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetControlPointResultEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self activePresetIndexHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self presetControlPointResultHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handleHearingAidFeaturesEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AcceptorInterface handleHearingAidFeaturesEvent:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v10, 0x16u);
  }

  v6 = [(AcceptorInterface *)self hearingAidFeaturesHandler];

  if (v6)
  {
    v7 = [(AcceptorInterface *)self hearingAidFeaturesHandler];
    v8 = [(AcceptorInterface *)self peripheral];
    v9 = [v8 identifier];
    (v7)[2](v7, v9);
  }
}

- (void)handleActivePresetIndexEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handleActivePresetIndexEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self activePresetIndexHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self activePresetIndexHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handleReadPresetsRequestEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AcceptorInterface handleReadPresetsRequestEvent:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v6, 0x16u);
  }

  -[AcceptorInterface sendReadPresetsRequest:withNumPresets:](self, "sendReadPresetsRequest:withNumPresets:", 1, [v4 unsignedIntValue]);
}

- (void)handleReadPresetsResponseEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handleReadPresetsResponseEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self readPresetsResponseHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self readPresetsResponseHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handlePresetNameChangedEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetNameChangedEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self presetNameChangedHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self presetNameChangedHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handlePresetRecordAddedEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordAddedEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self presetRecordAddedHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self presetRecordAddedHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handlePresetRecordDeletedEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordDeletedEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self presetRecordDeletedHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self presetRecordDeletedHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handlePresetRecordAvailableEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordAvailableEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self presetRecordAvailableHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self presetRecordAvailableHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (void)handlePresetRecordUnavailableEvent:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AcceptorInterface handlePresetRecordUnavailableEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s with %@", &v11, 0x16u);
  }

  v6 = [(AcceptorInterface *)self presetRecordUnavailableHandler];

  if (v6)
  {
    v7 = [v4 unsignedIntValue];
    v8 = [(AcceptorInterface *)self presetRecordUnavailableHandler];
    v9 = [(AcceptorInterface *)self peripheral];
    v10 = [v9 identifier];
    (v8)[2](v8, v7, v10);
  }
}

- (id)serviceEventToString:(unsigned __int8)a3
{
  if (a3 > 0x24u)
  {
    return @"Unknown Service Event";
  }

  else
  {
    return off_100095860[a3];
  }
}

- (ClientCommonAudioProfile)parentCAP
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCAP);

  return WeakRetained;
}

@end