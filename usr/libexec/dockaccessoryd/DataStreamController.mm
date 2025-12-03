@interface DataStreamController
- (BOOL)_isDataStreamConfigurationValid;
- (BOOL)setupRequiresCharactertisticReads;
- (DataStreamController)initWithAccessory:(id)accessory service:(id)service workQueue:(id)queue dataStreamFactory:(id)factory;
- (HAPAccessory)accessory;
- (HAPService)transferManagementService;
- (id)_getActiveProtocolWithName:(id)name;
- (id)_getStreamProtocol;
- (void)_cancelStreamTransportWithError:(id)error;
- (void)_createBulkStreamProtocol;
- (void)_createStreamSocketWithStreamProtocol:(id)protocol applicationProtocolName:(id)name completion:(id)completion;
- (void)_failPendingSocketRequestsWithError:(id)error;
- (void)_handleAccessoryConnected;
- (void)_initiateStreamSetup;
- (void)_processPendingSocketRequests;
- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)completion;
- (void)_resetDefaultDataStream;
- (void)_resetTransportInfo;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)addBulkSendListener:(id)listener fileType:(id)type;
- (void)dataStream:(id)stream didFailWithError:(id)error;
- (void)dataStreamDidClose:(id)close;
- (void)dataStreamDidOpen:(id)open;
- (void)dataStreamDidReceiveRawFrame:(id)frame;
- (void)dataStreamDidUpdateActiveStatus:(id)status;
- (void)dataStreamInitializationSetupOperation:(id)operation didCompleteSupportReadWithStatus:(BOOL)status;
- (void)dataStreamSetupOperation:(id)operation didFailWithError:(id)error;
- (void)dataStreamSetupOperation:(id)operation didSucceedWithTransport:(id)transport sessionEncryption:(id)encryption;
- (void)deRegisterFromNotifications;
- (void)handleAccessoryConnected;
- (void)handleAccessoryConnectedSync;
- (void)handleAccessoryDisconnected:(id)disconnected;
- (void)invalidate;
- (void)openBulkSendSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback;
- (void)openStreamSocketWithApplicationProtocol:(id)protocol completion:(id)completion;
- (void)readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)completion;
- (void)removeBulkSendListener:(id)listener;
- (void)timerDidFire:(id)fire;
@end

@implementation DataStreamController

- (DataStreamController)initWithAccessory:(id)accessory service:(id)service workQueue:(id)queue dataStreamFactory:(id)factory
{
  accessoryCopy = accessory;
  serviceCopy = service;
  queueCopy = queue;
  factoryCopy = factory;
  v21.receiver = self;
  v21.super_class = DataStreamController;
  v14 = [(DataStreamController *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeWeak(&v15->_transferManagementService, serviceCopy);
    objc_storeStrong(&v15->_workQueue, queue);
    v16 = +[NSMutableArray array];
    pendingSocketRequests = v15->_pendingSocketRequests;
    v15->_pendingSocketRequests = v16;

    v18 = objc_retainBlock(factoryCopy);
    dataStreamFactory = v15->_dataStreamFactory;
    v15->_dataStreamFactory = v18;
  }

  return v15;
}

- (void)deRegisterFromNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_resetTransportInfo
{
  [(DataStreamController *)self setSupportsDataStreamOverHAP:0];

  [(DataStreamController *)self setMaxControllerTransportMTU:0];
}

- (void)handleAccessoryConnected
{
  workQueue = [(DataStreamController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B5E0;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleAccessoryConnectedSync
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008B7FC;
  v2[3] = &unk_1002736F8;
  v2[4] = self;
  [(DataStreamController *)self _readRequiredTransportCharacteristicsIfNeededWithCompletion:v2];
}

- (BOOL)_isDataStreamConfigurationValid
{
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  transferManagementService = [(DataStreamController *)self transferManagementService];
  v5 = [transferManagementService characteristicsOfType:@"00000130-0000-1000-8000-4D69736D6574"];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (v6)
  {
    [(DataStreamController *)self _resetTransportInfo];
    value = [v6 value];
    v50 = 0;
    v8 = [HAPDataStreamTransportSupportedConfiguration parsedFromData:value error:&v50];
    selfCopy3 = v50;

    if (selfCopy3)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    v11 = !v10;
    if (v10)
    {
      selfCopy = self;
      v33 = sub_10007FAA0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = sub_10007FAFC(selfCopy);
        [(DataStreamController *)selfCopy accessory];
        v35 = v45 = v8;
        [v35 name];
        v36 = v44 = v11;
        accessory = [(DataStreamController *)selfCopy accessory];
        identifier = [accessory identifier];
        *buf = 138543874;
        v53 = v34;
        v54 = 2112;
        v55 = v36;
        v56 = 2112;
        v57 = identifier;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%{public}@Failed to parse HDS supported configuration (%@/%@)", buf, 0x20u);

        v11 = v44;
        v8 = v45;
      }
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      selfCopy = [v8 configurations];
      v13 = [(DataStreamController *)selfCopy countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v43 = v11;
        v40 = selfCopy3;
        v41 = v6;
        v42 = transferManagementService;
        v15 = *v47;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(selfCopy);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            transport = [v17 transport];

            if (transport)
            {
              transport2 = [v17 transport];
              value2 = [transport2 value];

              if (value2 == 1 && ![(DataStreamController *)self supportsDataStreamOverHAP])
              {
                maximumControllerTransportMTU = [v17 maximumControllerTransportMTU];

                if (maximumControllerTransportMTU)
                {
                  maximumControllerTransportMTU2 = [v17 maximumControllerTransportMTU];
                  value3 = [maximumControllerTransportMTU2 value];
                  unsignedIntegerValue = [value3 unsignedIntegerValue];

                  [(DataStreamController *)self setSupportsDataStreamOverHAP:1];
                  [(DataStreamController *)self setMaxControllerTransportMTU:unsignedIntegerValue];
                }

                else
                {
                  selfCopy2 = self;
                  v26 = sub_10007FAA0();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = sub_10007FAFC(selfCopy2);
                    *buf = 138543362;
                    v53 = v27;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service advertises HDS-over-HAP but provides no MTU; ignoring.", buf, 0xCu);
                  }
                }
              }
            }
          }

          v14 = [(DataStreamController *)selfCopy countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v14);
        v6 = v41;
        transferManagementService = v42;
        selfCopy3 = v40;
        v11 = v43;
      }
    }
  }

  else
  {
    selfCopy3 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v28 = sub_10007FAFC(selfCopy3);
      accessory2 = [(DataStreamController *)selfCopy3 accessory];
      name = [accessory2 name];
      accessory3 = [(DataStreamController *)selfCopy3 accessory];
      identifier2 = [accessory3 identifier];
      *buf = 138543874;
      v53 = v28;
      v54 = 2112;
      v55 = name;
      v56 = 2112;
      v57 = identifier2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@No HDS supported configuration (%@/%@)", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008BE90;
  v5[3] = &unk_100274A28;
  completionCopy = completion;
  v4 = completionCopy;
  [(DataStreamController *)self _readRequiredTransportCharacteristicsIfNeededWithCompletion:v5];
}

- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  transferManagementService = [(DataStreamController *)self transferManagementService];
  v7 = [transferManagementService characteristicsOfType:@"00000130-0000-1000-8000-4D69736D6574"];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
    v10 = [NSError dkErrorWithCode:4];
    completionCopy[2](completionCopy, 0, v10);
LABEL_11:

    goto LABEL_12;
  }

  value = [v8 value];

  if (!value)
  {
    v25 = v8;
    v10 = [NSArray arrayWithObjects:&v25 count:1];
    if ([v10 count])
    {
      selfCopy = self;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_10007FAFC(selfCopy);
        accessory = [(DataStreamController *)selfCopy accessory];
        identifier = [accessory identifier];
        *buf = 138543618;
        v22 = v13;
        v23 = 2112;
        v24 = identifier;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Reading required transport characteristic for data stream controller %@", buf, 0x16u);
      }

      accessory2 = [(DataStreamController *)selfCopy accessory];
      workQueue2 = [(DataStreamController *)selfCopy workQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008C17C;
      v19[3] = &unk_100274A28;
      v20 = completionCopy;
      [accessory2 readCharacteristicValues:v10 timeout:workQueue2 completionQueue:v19 completionHandler:0.0];

      v18 = v20;
    }

    else
    {
      v18 = [NSError dkErrorWithCode:4];
      completionCopy[2](completionCopy, 0, v18);
    }

    goto LABEL_11;
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_12:
}

- (void)_handleAccessoryConnected
{
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(DataStreamController *)self _isDataStreamConfigurationValid];
  [(DataStreamController *)self canAcceptBulkSendListeners];
  selfCopy = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10007FAFC(selfCopy);
    accessory = [(DataStreamController *)selfCopy accessory];
    shortDescription = [accessory shortDescription];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v11 = 138544130;
    v12 = v6;
    v13 = 2112;
    v14 = shortDescription;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is connected: %@. Configured: %@ Accepts Bulk Send: %@", &v11, 0x2Au);
  }
}

- (void)handleAccessoryDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  workQueue = [(DataStreamController *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008C3B0;
  v7[3] = &unk_100273370;
  v8 = disconnectedCopy;
  selfCopy = self;
  v6 = disconnectedCopy;
  dispatch_async(workQueue, v7);
}

- (id)_getActiveProtocolWithName:(id)name
{
  nameCopy = name;
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultDataStream = [(DataStreamController *)self defaultDataStream];
  v7 = [defaultDataStream protocolWithName:nameCopy];

  return v7;
}

- (void)addBulkSendListener:(id)listener fileType:(id)type
{
  listenerCopy = listener;
  typeCopy = type;
  accessory = [(DataStreamController *)self accessory];
  defaultDataStream = [(DataStreamController *)self defaultDataStream];

  if (defaultDataStream)
  {
    v10 = +[DataStreamBulkSendProtocol protocolName];
    v11 = [(DataStreamController *)self _getActiveProtocolWithName:v10];

    setupInProgress2 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = setupInProgress2;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    selfCopy = self;
    v16 = sub_10007FAA0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v17)
      {
        v18 = sub_10007FAFC(selfCopy);
        v26 = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = typeCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Adding bulk-send listener on this stream for file-type '%@'", &v26, 0x16u);
      }

      [v14 addListener:listenerCopy fileType:typeCopy];
    }

    else
    {
      if (v17)
      {
        v24 = sub_10007FAFC(selfCopy);
        v26 = 138543618;
        v27 = v24;
        v28 = 2112;
        v29 = typeCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Cancelling bulk-send listener registration for file-type '%@' due to no such protocol on this stream", &v26, 0x16u);
      }

      [listenerCopy accessoryDidCloseDataStream:accessory];
    }

LABEL_17:
    goto LABEL_18;
  }

  [(DataStreamController *)self _initiateStreamSetup];
  setupInProgress = [(DataStreamController *)self setupInProgress];

  selfCopy2 = self;
  v21 = sub_10007FAA0();
  v22 = v21;
  if (setupInProgress)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = sub_10007FAFC(selfCopy2);
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = typeCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@Add pending bulk-send listener registration for file-type '%@' (waiting for stream setup)", &v26, 0x16u);
    }

    setupInProgress2 = [(DataStreamController *)selfCopy2 setupInProgress];
    [setupInProgress2 addBulkSendListener:listenerCopy fileType:typeCopy];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = sub_10007FAFC(selfCopy2);
    v26 = 138543618;
    v27 = v25;
    v28 = 2112;
    v29 = typeCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling bulk-send listener registration for file-type '%@' due to no active data stream", &v26, 0x16u);
  }

  [listenerCopy accessoryDidCloseDataStream:accessory];
LABEL_18:
}

- (void)removeBulkSendListener:(id)listener
{
  listenerCopy = listener;
  defaultDataStream = [(DataStreamController *)self defaultDataStream];

  if (!defaultDataStream)
  {
    setupInProgress = [(DataStreamController *)self setupInProgress];

    if (setupInProgress)
    {
      setupInProgress2 = [(DataStreamController *)self setupInProgress];
      v17 = [setupInProgress2 removeBulkSendListener:listenerCopy];

      selfCopy2 = self;
      v10 = sub_10007FAA0();
      v18 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (!v18)
        {
          goto LABEL_22;
        }

        selfCopy3 = sub_10007FAFC(selfCopy2);
        v22 = 138543362;
        v23 = selfCopy3;
        v19 = "%{public}@Removed pending bulk-send listener registration (waiting for stream setup)";
      }

      else
      {
        if (!v18)
        {
          goto LABEL_22;
        }

        selfCopy3 = sub_10007FAFC(selfCopy2);
        v22 = 138543362;
        v23 = selfCopy3;
        v19 = "%{public}@Removed bulk-send listener trivially (stream setting up, but this was not part of it)";
      }
    }

    else
    {
      selfCopy2 = self;
      v10 = sub_10007FAA0();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      selfCopy3 = sub_10007FAFC(selfCopy2);
      v22 = 138543362;
      v23 = selfCopy3;
      v19 = "%{public}@Removed bulk-send listener trivially (nothing had started)";
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v19, &v22, 0xCu);
LABEL_21:

    goto LABEL_22;
  }

  v6 = +[DataStreamBulkSendProtocol protocolName];
  v7 = [(DataStreamController *)self _getActiveProtocolWithName:v6];

  selfCopy2 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = selfCopy2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  selfCopy3 = self;
  v12 = sub_10007FAA0();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v10)
  {
    if (v13)
    {
      v20 = sub_10007FAFC(selfCopy3);
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream (but there was no protocol!?)", &v22, 0xCu);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    v14 = sub_10007FAFC(selfCopy3);
    v22 = 138543362;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream", &v22, 0xCu);
  }

  [v10 removeListener:listenerCopy];
LABEL_22:

  accessory = [(DataStreamController *)self accessory];
  [listenerCopy accessoryDidCloseDataStream:accessory];
}

- (void)openStreamSocketWithApplicationProtocol:(id)protocol completion:(id)completion
{
  protocolCopy = protocol;
  completionCopy = completion;
  workQueue = [(DataStreamController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008CF00;
  block[3] = &unk_100274370;
  v12 = protocolCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = protocolCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)_processPendingSocketRequests
{
  pendingSocketRequests = [(DataStreamController *)self pendingSocketRequests];
  hmf_isEmpty = [pendingSocketRequests hmf_isEmpty];

  if ((hmf_isEmpty & 1) == 0)
  {
    _getStreamProtocol = [(DataStreamController *)self _getStreamProtocol];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    pendingSocketRequests2 = [(DataStreamController *)self pendingSocketRequests];
    v7 = [pendingSocketRequests2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(pendingSocketRequests2);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          applicationProtocolName = [v11 applicationProtocolName];
          completion = [v11 completion];
          [(DataStreamController *)self _createStreamSocketWithStreamProtocol:_getStreamProtocol applicationProtocolName:applicationProtocolName completion:completion];
        }

        v8 = [pendingSocketRequests2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    pendingSocketRequests3 = [(DataStreamController *)self pendingSocketRequests];
    [pendingSocketRequests3 removeAllObjects];
  }
}

- (void)_failPendingSocketRequestsWithError:(id)error
{
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pendingSocketRequests = [(DataStreamController *)self pendingSocketRequests];
  v6 = [pendingSocketRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(pendingSocketRequests);
        }

        completion = [*(*(&v12 + 1) + 8 * v9) completion];
        (completion)[2](completion, 0, errorCopy);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [pendingSocketRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  pendingSocketRequests2 = [(DataStreamController *)self pendingSocketRequests];
  [pendingSocketRequests2 removeAllObjects];
}

- (id)_getStreamProtocol
{
  v3 = +[DataStreamStreamProtocol protocolName];
  v4 = [(DataStreamController *)self _getActiveProtocolWithName:v3];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = v5;
  if (!v7)
  {
    v9 = [DataStreamStreamProtocol alloc];
    defaultDataStream = [(DataStreamController *)self defaultDataStream];
    protocolDelegateHandle = [defaultDataStream protocolDelegateHandle];
    v8 = [(DataStreamStreamProtocol *)v9 initWithDataStream:protocolDelegateHandle];

    defaultDataStream2 = [(DataStreamController *)self defaultDataStream];
    v13 = +[DataStreamStreamProtocol protocolName];
    [defaultDataStream2 addProtocol:v8 name:v13];
  }

  return v8;
}

- (void)_createStreamSocketWithStreamProtocol:(id)protocol applicationProtocolName:(id)name completion:(id)completion
{
  nameCopy = name;
  selfCopy = self;
  completionCopy = completion;
  protocolCopy = protocol;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = sub_10007FAFC(selfCopy);
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Creating stream socket for application protocol %@", &v17, 0x16u);
  }

  v14 = [DataStreamSocket alloc];
  workQueue = [(DataStreamController *)selfCopy workQueue];
  v16 = [(DataStreamSocket *)v14 initWithStreamProtocol:protocolCopy applicationProtocolName:nameCopy workQueue:workQueue];

  [protocolCopy registerSocket:v16];
  completionCopy[2](completionCopy, v16, 0);
}

- (BOOL)setupRequiresCharactertisticReads
{
  if ([(DataStreamController *)self _isDataStreamCapable])
  {
    return 0;
  }

  if (![(DataStreamController *)self _isDataStreamConfigurationValid])
  {
    selfCopy = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10007FAFC(selfCopy);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@Current data stream configuration is not valid", &v7, 0xCu);
    }
  }

  return ![(DataStreamController *)self _isDataStreamCapable];
}

- (void)_initiateStreamSetup
{
  setupInProgress = [(DataStreamController *)self setupInProgress];

  if (setupInProgress)
  {
    selfCopy = self;
    transferManagementService = sub_10007FAA0();
    if (os_log_type_enabled(transferManagementService, OS_LOG_TYPE_DEBUG))
    {
      setupInProgress3 = sub_10007FAFC(selfCopy);
      v16 = 138543362;
      v17 = setupInProgress3;
      _os_log_impl(&_mh_execute_header, transferManagementService, OS_LOG_TYPE_DEBUG, "%{public}@Initiating stream setup while already in progress; ignoring this extra call.", &v16, 0xCu);
LABEL_11:
    }
  }

  else
  {
    setupRequiresCharactertisticReads = [(DataStreamController *)self setupRequiresCharactertisticReads];
    selfCopy = [(DataStreamController *)self accessory];
    transferManagementService = [(DataStreamController *)self transferManagementService];
    if ([(DataStreamController *)self supportsDataStreamOverHAP]|| setupRequiresCharactertisticReads)
    {
      workQueue = [(DataStreamController *)self workQueue];
      logIdentifier = [(DataStreamController *)self logIdentifier];
      v14 = [DataStreamSetupOperation hapSetupOperationWithAccessory:selfCopy queue:workQueue logIdentifier:logIdentifier transferManagementService:transferManagementService maxControllerTransportMTU:[(DataStreamController *)self maxControllerTransportMTU] setupOperationReadRequired:setupRequiresCharactertisticReads];
      [(DataStreamController *)self setSetupInProgress:v14];

      setupInProgress2 = [(DataStreamController *)self setupInProgress];
      [setupInProgress2 setDelegate:self];

      if (!setupRequiresCharactertisticReads)
      {
        setupInProgress3 = [(DataStreamController *)self setupInProgress];
        [setupInProgress3 startSetup];
        goto LABEL_11;
      }
    }

    else
    {
      selfCopy2 = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_10007FAFC(selfCopy2);
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; not supported", &v16, 0xCu);
      }

      v11 = [NSError dkErrorWithCode:1];
      [(DataStreamController *)selfCopy2 _cancelStreamTransportWithError:v11];
    }
  }
}

- (void)dataStreamInitializationSetupOperation:(id)operation didCompleteSupportReadWithStatus:(BOOL)status
{
  statusCopy = status;
  operationCopy = operation;
  setupInProgress = [(DataStreamController *)self setupInProgress];

  if (setupInProgress != operationCopy)
  {
    selfCopy = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(selfCopy);
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Setup init operation succeeded however is no longer the current one; ignoring its result.", &v15, 0xCu);
    }

    goto LABEL_9;
  }

  if (statusCopy)
  {
    [(DataStreamController *)self _handleAccessoryConnected];
  }

  if ([(DataStreamController *)self _isDataStreamCapable])
  {
    [operationCopy setMaxControllerTransportMTU:self->_maxControllerTransportMTU];
    selfCopy = [(DataStreamController *)self setupInProgress];
    [(DataStreamController *)selfCopy startSetup];
LABEL_9:

    goto LABEL_10;
  }

  selfCopy2 = self;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = sub_10007FAFC(selfCopy2);
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream initialization setup (which is in progress)", &v15, 0xCu);
  }

  [(DataStreamController *)selfCopy2 setSetupInProgress:0];
  v14 = [NSError dkErrorWithCode:4];
  [(DataStreamController *)selfCopy2 _failPendingSocketRequestsWithError:v14];

LABEL_10:
}

- (void)dataStreamSetupOperation:(id)operation didSucceedWithTransport:(id)transport sessionEncryption:(id)encryption
{
  transportCopy = transport;
  encryptionCopy = encryption;
  operationCopy = operation;
  setupInProgress = [(DataStreamController *)self setupInProgress];

  if (setupInProgress == operationCopy)
  {
    dataStreamFactory = [(DataStreamController *)self dataStreamFactory];
    workQueue = [(DataStreamController *)self workQueue];
    logIdentifier = [(DataStreamController *)self logIdentifier];
    v18 = (dataStreamFactory)[2](dataStreamFactory, transportCopy, encryptionCopy, workQueue, logIdentifier);

    [(DataStreamController *)self setDefaultDataStream:v18];
    defaultDataStream = [(DataStreamController *)self defaultDataStream];
    [defaultDataStream setDelegate:self];

    [transportCopy setDelegate:v18];
    [(DataStreamController *)self _createBulkStreamProtocol];
    [v18 connect];
    [(DataStreamController *)self setSetupInProgress:0];
  }

  else
  {
    selfCopy = self;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(selfCopy);
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Setup operation succeeded however is no longer the current one; ignoring its result.", &v20, 0xCu);
    }
  }
}

- (void)dataStreamSetupOperation:(id)operation didFailWithError:(id)error
{
  errorCopy = error;
  operationCopy = operation;
  setupInProgress = [(DataStreamController *)self setupInProgress];

  if (setupInProgress == operationCopy)
  {
    selfCopy = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(selfCopy);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup (which is in progress)", &v12, 0xCu);
    }

    [(DataStreamController *)selfCopy setSetupInProgress:0];
    [(DataStreamController *)selfCopy _failPendingSocketRequestsWithError:errorCopy];
  }
}

- (void)_cancelStreamTransportWithError:(id)error
{
  errorCopy = error;
  setupInProgress = [(DataStreamController *)self setupInProgress];

  selfCopy = self;
  v7 = sub_10007FAA0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (setupInProgress)
  {
    if (v8)
    {
      v9 = sub_10007FAFC(selfCopy);
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup", &v13, 0xCu);
    }

    setupInProgress2 = [(DataStreamController *)selfCopy setupInProgress];
    [setupInProgress2 cancelSetup];

    [(DataStreamController *)selfCopy _failPendingSocketRequestsWithError:errorCopy];
    [(DataStreamController *)selfCopy setSetupInProgress:0];
  }

  else
  {
    if (v8)
    {
      v11 = sub_10007FAFC(selfCopy);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Canceling active DataStream", &v13, 0xCu);
    }

    defaultDataStream = [(DataStreamController *)selfCopy defaultDataStream];
    [defaultDataStream invalidate];
  }
}

- (void)_createBulkStreamProtocol
{
  v3 = [DataStreamBulkSendProtocol alloc];
  workQueue = [(DataStreamController *)self workQueue];
  accessory = [(DataStreamController *)self accessory];
  logIdentifier = [(DataStreamController *)self logIdentifier];
  v12 = [(DataStreamBulkSendProtocol *)v3 initWithQueue:workQueue accessory:accessory logIdentifier:logIdentifier];

  defaultDataStream = [(DataStreamController *)self defaultDataStream];
  v8 = +[DataStreamBulkSendProtocol protocolName];
  [defaultDataStream addProtocol:v12 name:v8];

  defaultDataStream2 = [(DataStreamController *)self defaultDataStream];
  protocolDelegateHandle = [defaultDataStream2 protocolDelegateHandle];
  [(DataStreamBulkSendProtocol *)v12 setDataStream:protocolDelegateHandle];

  setupInProgress = [(DataStreamController *)self setupInProgress];
  [setupInProgress movePendingBulkSendListenersToBulkSendProtocol:v12];
}

- (void)_resetDefaultDataStream
{
  [(DataStreamController *)self setDefaultDataStream:0];
  v3 = [NSError dkErrorWithCode:33];
  [(DataStreamController *)self _failPendingSocketRequestsWithError:v3];
}

- (void)dataStream:(id)stream didFailWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_10007FAFC(selfCopy);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@DataStream failed with error (%@)!", &v9, 0x16u);
  }

  [(DataStreamController *)selfCopy _resetDefaultDataStream];
}

- (void)dataStreamDidClose:(id)close
{
  selfCopy = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream closed", &v6, 0xCu);
  }

  [(DataStreamController *)selfCopy _resetDefaultDataStream];
}

- (void)dataStreamDidOpen:(id)open
{
  selfCopy = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream opened", &v6, 0xCu);
  }

  [(DataStreamController *)selfCopy _processPendingSocketRequests];
}

- (void)dataStreamDidReceiveRawFrame:(id)frame
{
  selfCopy = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@dataStreamDidReceiveRawFrame", &v6, 0xCu);
  }
}

- (void)dataStreamDidUpdateActiveStatus:(id)status
{
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultDataStream = [(DataStreamController *)self defaultDataStream];
  isActive = [defaultDataStream isActive];

  if (isActive)
  {

    [(DataStreamController *)self _stopIdleTimer];
  }

  else
  {

    [(DataStreamController *)self _startIdleTimer];
  }
}

- (void)openBulkSendSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback
{
  typeCopy = type;
  reasonCopy = reason;
  metadataCopy = metadata;
  queueCopy = queue;
  callbackCopy = callback;
  workQueue = [(DataStreamController *)self workQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008E70C;
  v23[3] = &unk_100274A50;
  v23[4] = self;
  v24 = typeCopy;
  v25 = reasonCopy;
  v26 = metadataCopy;
  v27 = queueCopy;
  v28 = callbackCopy;
  v18 = queueCopy;
  v19 = metadataCopy;
  v20 = reasonCopy;
  v21 = typeCopy;
  v22 = callbackCopy;
  dispatch_async(workQueue, v23);
}

- (void)invalidate
{
  workQueue = [(DataStreamController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E928;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_startIdleTimer
{
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(DataStreamController *)self _stopIdleTimer];
  selfCopy = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(selfCopy);
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Starting idle timer", &v18, 0xCu);
  }

  v7 = +[HMFPreferences sharedPreferences];
  v8 = [v7 preferenceForKey:@"hdsIdleTimeout"];

  numberValue = [v8 numberValue];

  if (numberValue)
  {
    numberValue2 = [v8 numberValue];
    [numberValue2 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 5.0;
  }

  v13 = [[HMFTimer alloc] initWithTimeInterval:1 options:v12];
  [(DataStreamController *)selfCopy setIdleTimer:v13];

  idleTimer = [(DataStreamController *)selfCopy idleTimer];
  [idleTimer setDelegate:selfCopy];

  workQueue2 = [(DataStreamController *)selfCopy workQueue];
  idleTimer2 = [(DataStreamController *)selfCopy idleTimer];
  [idleTimer2 setDelegateQueue:workQueue2];

  idleTimer3 = [(DataStreamController *)selfCopy idleTimer];
  [idleTimer3 resume];
}

- (void)_stopIdleTimer
{
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idleTimer = [(DataStreamController *)self idleTimer];

  if (idleTimer)
  {
    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(selfCopy);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping idle timer", &v9, 0xCu);
    }

    idleTimer2 = [(DataStreamController *)selfCopy idleTimer];
    [idleTimer2 suspend];

    [(DataStreamController *)selfCopy setIdleTimer:0];
  }
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idleTimer = [(DataStreamController *)self idleTimer];

  if (idleTimer == fireCopy)
  {
    selfCopy = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10007FAFC(selfCopy);
      defaultDataStream = [(DataStreamController *)selfCopy defaultDataStream];
      isActive = [defaultDataStream isActive];
      v12 = @"inactive";
      if (isActive)
      {
        v12 = @"active";
      }

      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Idle timer fired and data stream is %@", &v16, 0x16u);
    }

    defaultDataStream2 = [(DataStreamController *)selfCopy defaultDataStream];
    isActive2 = [defaultDataStream2 isActive];

    if ((isActive2 & 1) == 0)
    {
      defaultDataStream3 = [(DataStreamController *)selfCopy defaultDataStream];
      [defaultDataStream3 close];
    }

    [(DataStreamController *)selfCopy _stopIdleTimer];
  }
}

- (HAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HAPService)transferManagementService
{
  WeakRetained = objc_loadWeakRetained(&self->_transferManagementService);

  return WeakRetained;
}

@end