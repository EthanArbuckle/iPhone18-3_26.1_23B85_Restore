@interface DataStreamController
- (BOOL)_isDataStreamConfigurationValid;
- (BOOL)setupRequiresCharactertisticReads;
- (DataStreamController)initWithAccessory:(id)a3 service:(id)a4 workQueue:(id)a5 dataStreamFactory:(id)a6;
- (HAPAccessory)accessory;
- (HAPService)transferManagementService;
- (id)_getActiveProtocolWithName:(id)a3;
- (id)_getStreamProtocol;
- (void)_cancelStreamTransportWithError:(id)a3;
- (void)_createBulkStreamProtocol;
- (void)_createStreamSocketWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 completion:(id)a5;
- (void)_failPendingSocketRequestsWithError:(id)a3;
- (void)_handleAccessoryConnected;
- (void)_initiateStreamSetup;
- (void)_processPendingSocketRequests;
- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)a3;
- (void)_resetDefaultDataStream;
- (void)_resetTransportInfo;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)addBulkSendListener:(id)a3 fileType:(id)a4;
- (void)dataStream:(id)a3 didFailWithError:(id)a4;
- (void)dataStreamDidClose:(id)a3;
- (void)dataStreamDidOpen:(id)a3;
- (void)dataStreamDidReceiveRawFrame:(id)a3;
- (void)dataStreamDidUpdateActiveStatus:(id)a3;
- (void)dataStreamInitializationSetupOperation:(id)a3 didCompleteSupportReadWithStatus:(BOOL)a4;
- (void)dataStreamSetupOperation:(id)a3 didFailWithError:(id)a4;
- (void)dataStreamSetupOperation:(id)a3 didSucceedWithTransport:(id)a4 sessionEncryption:(id)a5;
- (void)deRegisterFromNotifications;
- (void)handleAccessoryConnected;
- (void)handleAccessoryConnectedSync;
- (void)handleAccessoryDisconnected:(id)a3;
- (void)invalidate;
- (void)openBulkSendSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7;
- (void)openStreamSocketWithApplicationProtocol:(id)a3 completion:(id)a4;
- (void)readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)a3;
- (void)removeBulkSendListener:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation DataStreamController

- (DataStreamController)initWithAccessory:(id)a3 service:(id)a4 workQueue:(id)a5 dataStreamFactory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = DataStreamController;
  v14 = [(DataStreamController *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, v10);
    objc_storeWeak(&v15->_transferManagementService, v11);
    objc_storeStrong(&v15->_workQueue, a5);
    v16 = +[NSMutableArray array];
    pendingSocketRequests = v15->_pendingSocketRequests;
    v15->_pendingSocketRequests = v16;

    v18 = objc_retainBlock(v13);
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
  v3 = [(DataStreamController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B5E0;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DataStreamController *)self transferManagementService];
  v5 = [v4 characteristicsOfType:@"00000130-0000-1000-8000-4D69736D6574"];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (v6)
  {
    [(DataStreamController *)self _resetTransportInfo];
    v7 = [v6 value];
    v50 = 0;
    v8 = [HAPDataStreamTransportSupportedConfiguration parsedFromData:v7 error:&v50];
    v9 = v50;

    if (v9)
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
      v12 = self;
      v33 = sub_10007FAA0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = sub_10007FAFC(v12);
        [(DataStreamController *)v12 accessory];
        v35 = v45 = v8;
        [v35 name];
        v36 = v44 = v11;
        v37 = [(DataStreamController *)v12 accessory];
        v38 = [v37 identifier];
        *buf = 138543874;
        v53 = v34;
        v54 = 2112;
        v55 = v36;
        v56 = 2112;
        v57 = v38;
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
      v12 = [v8 configurations];
      v13 = [(DataStreamController *)v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v43 = v11;
        v40 = v9;
        v41 = v6;
        v42 = v4;
        v15 = *v47;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            v18 = [v17 transport];

            if (v18)
            {
              v19 = [v17 transport];
              v20 = [v19 value];

              if (v20 == 1 && ![(DataStreamController *)self supportsDataStreamOverHAP])
              {
                v21 = [v17 maximumControllerTransportMTU];

                if (v21)
                {
                  v22 = [v17 maximumControllerTransportMTU];
                  v23 = [v22 value];
                  v24 = [v23 unsignedIntegerValue];

                  [(DataStreamController *)self setSupportsDataStreamOverHAP:1];
                  [(DataStreamController *)self setMaxControllerTransportMTU:v24];
                }

                else
                {
                  v25 = self;
                  v26 = sub_10007FAA0();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = sub_10007FAFC(v25);
                    *buf = 138543362;
                    v53 = v27;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service advertises HDS-over-HAP but provides no MTU; ignoring.", buf, 0xCu);
                  }
                }
              }
            }
          }

          v14 = [(DataStreamController *)v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v14);
        v6 = v41;
        v4 = v42;
        v9 = v40;
        v11 = v43;
      }
    }
  }

  else
  {
    v9 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v28 = sub_10007FAFC(v9);
      v29 = [(DataStreamController *)v9 accessory];
      v30 = [v29 name];
      v31 = [(DataStreamController *)v9 accessory];
      v32 = [v31 identifier];
      *buf = 138543874;
      v53 = v28;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@No HDS supported configuration (%@/%@)", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008BE90;
  v5[3] = &unk_100274A28;
  v6 = a3;
  v4 = v6;
  [(DataStreamController *)self _readRequiredTransportCharacteristicsIfNeededWithCompletion:v5];
}

- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DataStreamController *)self transferManagementService];
  v7 = [v6 characteristicsOfType:@"00000130-0000-1000-8000-4D69736D6574"];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
    v10 = [NSError dkErrorWithCode:4];
    v4[2](v4, 0, v10);
LABEL_11:

    goto LABEL_12;
  }

  v9 = [v8 value];

  if (!v9)
  {
    v25 = v8;
    v10 = [NSArray arrayWithObjects:&v25 count:1];
    if ([v10 count])
    {
      v11 = self;
      v12 = sub_10007FAA0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_10007FAFC(v11);
        v14 = [(DataStreamController *)v11 accessory];
        v15 = [v14 identifier];
        *buf = 138543618;
        v22 = v13;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Reading required transport characteristic for data stream controller %@", buf, 0x16u);
      }

      v16 = [(DataStreamController *)v11 accessory];
      v17 = [(DataStreamController *)v11 workQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008C17C;
      v19[3] = &unk_100274A28;
      v20 = v4;
      [v16 readCharacteristicValues:v10 timeout:v17 completionQueue:v19 completionHandler:0.0];

      v18 = v20;
    }

    else
    {
      v18 = [NSError dkErrorWithCode:4];
      v4[2](v4, 0, v18);
    }

    goto LABEL_11;
  }

  v4[2](v4, 0, 0);
LABEL_12:
}

- (void)_handleAccessoryConnected
{
  v3 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(DataStreamController *)self _isDataStreamConfigurationValid];
  [(DataStreamController *)self canAcceptBulkSendListeners];
  v4 = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10007FAFC(v4);
    v7 = [(DataStreamController *)v4 accessory];
    v8 = [v7 shortDescription];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v11 = 138544130;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is connected: %@. Configured: %@ Accepts Bulk Send: %@", &v11, 0x2Au);
  }
}

- (void)handleAccessoryDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamController *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008C3B0;
  v7[3] = &unk_100273370;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_getActiveProtocolWithName:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DataStreamController *)self defaultDataStream];
  v7 = [v6 protocolWithName:v4];

  return v7;
}

- (void)addBulkSendListener:(id)a3 fileType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataStreamController *)self accessory];
  v9 = [(DataStreamController *)self defaultDataStream];

  if (v9)
  {
    v10 = +[DataStreamBulkSendProtocol protocolName];
    v11 = [(DataStreamController *)self _getActiveProtocolWithName:v10];

    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = self;
    v16 = sub_10007FAA0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v17)
      {
        v18 = sub_10007FAFC(v15);
        v26 = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Adding bulk-send listener on this stream for file-type '%@'", &v26, 0x16u);
      }

      [v14 addListener:v6 fileType:v7];
    }

    else
    {
      if (v17)
      {
        v24 = sub_10007FAFC(v15);
        v26 = 138543618;
        v27 = v24;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Cancelling bulk-send listener registration for file-type '%@' due to no such protocol on this stream", &v26, 0x16u);
      }

      [v6 accessoryDidCloseDataStream:v8];
    }

LABEL_17:
    goto LABEL_18;
  }

  [(DataStreamController *)self _initiateStreamSetup];
  v19 = [(DataStreamController *)self setupInProgress];

  v20 = self;
  v21 = sub_10007FAA0();
  v22 = v21;
  if (v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = sub_10007FAFC(v20);
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@Add pending bulk-send listener registration for file-type '%@' (waiting for stream setup)", &v26, 0x16u);
    }

    v12 = [(DataStreamController *)v20 setupInProgress];
    [v12 addBulkSendListener:v6 fileType:v7];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = sub_10007FAFC(v20);
    v26 = 138543618;
    v27 = v25;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling bulk-send listener registration for file-type '%@' due to no active data stream", &v26, 0x16u);
  }

  [v6 accessoryDidCloseDataStream:v8];
LABEL_18:
}

- (void)removeBulkSendListener:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamController *)self defaultDataStream];

  if (!v5)
  {
    v15 = [(DataStreamController *)self setupInProgress];

    if (v15)
    {
      v16 = [(DataStreamController *)self setupInProgress];
      v17 = [v16 removeBulkSendListener:v4];

      v8 = self;
      v10 = sub_10007FAA0();
      v18 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (!v18)
        {
          goto LABEL_22;
        }

        v11 = sub_10007FAFC(v8);
        v22 = 138543362;
        v23 = v11;
        v19 = "%{public}@Removed pending bulk-send listener registration (waiting for stream setup)";
      }

      else
      {
        if (!v18)
        {
          goto LABEL_22;
        }

        v11 = sub_10007FAFC(v8);
        v22 = 138543362;
        v23 = v11;
        v19 = "%{public}@Removed bulk-send listener trivially (stream setting up, but this was not part of it)";
      }
    }

    else
    {
      v8 = self;
      v10 = sub_10007FAA0();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v11 = sub_10007FAFC(v8);
      v22 = 138543362;
      v23 = v11;
      v19 = "%{public}@Removed bulk-send listener trivially (nothing had started)";
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v19, &v22, 0xCu);
LABEL_21:

    goto LABEL_22;
  }

  v6 = +[DataStreamBulkSendProtocol protocolName];
  v7 = [(DataStreamController *)self _getActiveProtocolWithName:v6];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = self;
  v12 = sub_10007FAA0();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v10)
  {
    if (v13)
    {
      v20 = sub_10007FAFC(v11);
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream (but there was no protocol!?)", &v22, 0xCu);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    v14 = sub_10007FAFC(v11);
    v22 = 138543362;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream", &v22, 0xCu);
  }

  [v10 removeListener:v4];
LABEL_22:

  v21 = [(DataStreamController *)self accessory];
  [v4 accessoryDidCloseDataStream:v21];
}

- (void)openStreamSocketWithApplicationProtocol:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DataStreamController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008CF00;
  block[3] = &unk_100274370;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_processPendingSocketRequests
{
  v3 = [(DataStreamController *)self pendingSocketRequests];
  v4 = [v3 hmf_isEmpty];

  if ((v4 & 1) == 0)
  {
    v5 = [(DataStreamController *)self _getStreamProtocol];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(DataStreamController *)self pendingSocketRequests];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 applicationProtocolName];
          v13 = [v11 completion];
          [(DataStreamController *)self _createStreamSocketWithStreamProtocol:v5 applicationProtocolName:v12 completion:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v14 = [(DataStreamController *)self pendingSocketRequests];
    [v14 removeAllObjects];
  }
}

- (void)_failPendingSocketRequestsWithError:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(DataStreamController *)self pendingSocketRequests];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) completion];
        (v10)[2](v10, 0, v4);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(DataStreamController *)self pendingSocketRequests];
  [v11 removeAllObjects];
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
    v10 = [(DataStreamController *)self defaultDataStream];
    v11 = [v10 protocolDelegateHandle];
    v8 = [(DataStreamStreamProtocol *)v9 initWithDataStream:v11];

    v12 = [(DataStreamController *)self defaultDataStream];
    v13 = +[DataStreamStreamProtocol protocolName];
    [v12 addProtocol:v8 name:v13];
  }

  return v8;
}

- (void)_createStreamSocketWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = self;
  v10 = a5;
  v11 = a3;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = sub_10007FAFC(v9);
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Creating stream socket for application protocol %@", &v17, 0x16u);
  }

  v14 = [DataStreamSocket alloc];
  v15 = [(DataStreamController *)v9 workQueue];
  v16 = [(DataStreamSocket *)v14 initWithStreamProtocol:v11 applicationProtocolName:v8 workQueue:v15];

  [v11 registerSocket:v16];
  v10[2](v10, v16, 0);
}

- (BOOL)setupRequiresCharactertisticReads
{
  if ([(DataStreamController *)self _isDataStreamCapable])
  {
    return 0;
  }

  if (![(DataStreamController *)self _isDataStreamConfigurationValid])
  {
    v3 = self;
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10007FAFC(v3);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@Current data stream configuration is not valid", &v7, 0xCu);
    }
  }

  return ![(DataStreamController *)self _isDataStreamCapable];
}

- (void)_initiateStreamSetup
{
  v3 = [(DataStreamController *)self setupInProgress];

  if (v3)
  {
    v4 = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = sub_10007FAFC(v4);
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@Initiating stream setup while already in progress; ignoring this extra call.", &v16, 0xCu);
LABEL_11:
    }
  }

  else
  {
    v7 = [(DataStreamController *)self setupRequiresCharactertisticReads];
    v4 = [(DataStreamController *)self accessory];
    v5 = [(DataStreamController *)self transferManagementService];
    if ([(DataStreamController *)self supportsDataStreamOverHAP]|| v7)
    {
      v12 = [(DataStreamController *)self workQueue];
      v13 = [(DataStreamController *)self logIdentifier];
      v14 = [DataStreamSetupOperation hapSetupOperationWithAccessory:v4 queue:v12 logIdentifier:v13 transferManagementService:v5 maxControllerTransportMTU:[(DataStreamController *)self maxControllerTransportMTU] setupOperationReadRequired:v7];
      [(DataStreamController *)self setSetupInProgress:v14];

      v15 = [(DataStreamController *)self setupInProgress];
      [v15 setDelegate:self];

      if (!v7)
      {
        v6 = [(DataStreamController *)self setupInProgress];
        [v6 startSetup];
        goto LABEL_11;
      }
    }

    else
    {
      v8 = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_10007FAFC(v8);
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; not supported", &v16, 0xCu);
      }

      v11 = [NSError dkErrorWithCode:1];
      [(DataStreamController *)v8 _cancelStreamTransportWithError:v11];
    }
  }
}

- (void)dataStreamInitializationSetupOperation:(id)a3 didCompleteSupportReadWithStatus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(DataStreamController *)self setupInProgress];

  if (v7 != v6)
  {
    v8 = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v8);
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Setup init operation succeeded however is no longer the current one; ignoring its result.", &v15, 0xCu);
    }

    goto LABEL_9;
  }

  if (v4)
  {
    [(DataStreamController *)self _handleAccessoryConnected];
  }

  if ([(DataStreamController *)self _isDataStreamCapable])
  {
    [v6 setMaxControllerTransportMTU:self->_maxControllerTransportMTU];
    v8 = [(DataStreamController *)self setupInProgress];
    [(DataStreamController *)v8 startSetup];
LABEL_9:

    goto LABEL_10;
  }

  v11 = self;
  v12 = sub_10007FAA0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = sub_10007FAFC(v11);
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream initialization setup (which is in progress)", &v15, 0xCu);
  }

  [(DataStreamController *)v11 setSetupInProgress:0];
  v14 = [NSError dkErrorWithCode:4];
  [(DataStreamController *)v11 _failPendingSocketRequestsWithError:v14];

LABEL_10:
}

- (void)dataStreamSetupOperation:(id)a3 didSucceedWithTransport:(id)a4 sessionEncryption:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(DataStreamController *)self setupInProgress];

  if (v11 == v10)
  {
    v15 = [(DataStreamController *)self dataStreamFactory];
    v16 = [(DataStreamController *)self workQueue];
    v17 = [(DataStreamController *)self logIdentifier];
    v18 = (v15)[2](v15, v8, v9, v16, v17);

    [(DataStreamController *)self setDefaultDataStream:v18];
    v19 = [(DataStreamController *)self defaultDataStream];
    [v19 setDelegate:self];

    [v8 setDelegate:v18];
    [(DataStreamController *)self _createBulkStreamProtocol];
    [v18 connect];
    [(DataStreamController *)self setSetupInProgress:0];
  }

  else
  {
    v12 = self;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(v12);
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Setup operation succeeded however is no longer the current one; ignoring its result.", &v20, 0xCu);
    }
  }
}

- (void)dataStreamSetupOperation:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DataStreamController *)self setupInProgress];

  if (v8 == v7)
  {
    v9 = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_10007FAFC(v9);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup (which is in progress)", &v12, 0xCu);
    }

    [(DataStreamController *)v9 setSetupInProgress:0];
    [(DataStreamController *)v9 _failPendingSocketRequestsWithError:v6];
  }
}

- (void)_cancelStreamTransportWithError:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamController *)self setupInProgress];

  v6 = self;
  v7 = sub_10007FAA0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      v9 = sub_10007FAFC(v6);
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup", &v13, 0xCu);
    }

    v10 = [(DataStreamController *)v6 setupInProgress];
    [v10 cancelSetup];

    [(DataStreamController *)v6 _failPendingSocketRequestsWithError:v4];
    [(DataStreamController *)v6 setSetupInProgress:0];
  }

  else
  {
    if (v8)
    {
      v11 = sub_10007FAFC(v6);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Canceling active DataStream", &v13, 0xCu);
    }

    v12 = [(DataStreamController *)v6 defaultDataStream];
    [v12 invalidate];
  }
}

- (void)_createBulkStreamProtocol
{
  v3 = [DataStreamBulkSendProtocol alloc];
  v4 = [(DataStreamController *)self workQueue];
  v5 = [(DataStreamController *)self accessory];
  v6 = [(DataStreamController *)self logIdentifier];
  v12 = [(DataStreamBulkSendProtocol *)v3 initWithQueue:v4 accessory:v5 logIdentifier:v6];

  v7 = [(DataStreamController *)self defaultDataStream];
  v8 = +[DataStreamBulkSendProtocol protocolName];
  [v7 addProtocol:v12 name:v8];

  v9 = [(DataStreamController *)self defaultDataStream];
  v10 = [v9 protocolDelegateHandle];
  [(DataStreamBulkSendProtocol *)v12 setDataStream:v10];

  v11 = [(DataStreamController *)self setupInProgress];
  [v11 movePendingBulkSendListenersToBulkSendProtocol:v12];
}

- (void)_resetDefaultDataStream
{
  [(DataStreamController *)self setDefaultDataStream:0];
  v3 = [NSError dkErrorWithCode:33];
  [(DataStreamController *)self _failPendingSocketRequestsWithError:v3];
}

- (void)dataStream:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_10007FAFC(v6);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@DataStream failed with error (%@)!", &v9, 0x16u);
  }

  [(DataStreamController *)v6 _resetDefaultDataStream];
}

- (void)dataStreamDidClose:(id)a3
{
  v3 = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10007FAFC(v3);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream closed", &v6, 0xCu);
  }

  [(DataStreamController *)v3 _resetDefaultDataStream];
}

- (void)dataStreamDidOpen:(id)a3
{
  v3 = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10007FAFC(v3);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream opened", &v6, 0xCu);
  }

  [(DataStreamController *)v3 _processPendingSocketRequests];
}

- (void)dataStreamDidReceiveRawFrame:(id)a3
{
  v3 = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10007FAFC(v3);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@dataStreamDidReceiveRawFrame", &v6, 0xCu);
  }
}

- (void)dataStreamDidUpdateActiveStatus:(id)a3
{
  v4 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(DataStreamController *)self defaultDataStream];
  v6 = [v5 isActive];

  if (v6)
  {

    [(DataStreamController *)self _stopIdleTimer];
  }

  else
  {

    [(DataStreamController *)self _startIdleTimer];
  }
}

- (void)openBulkSendSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(DataStreamController *)self workQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008E70C;
  v23[3] = &unk_100274A50;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v16;
  dispatch_async(v17, v23);
}

- (void)invalidate
{
  v3 = [(DataStreamController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E928;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startIdleTimer
{
  v3 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(DataStreamController *)self _stopIdleTimer];
  v4 = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(v4);
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Starting idle timer", &v18, 0xCu);
  }

  v7 = +[HMFPreferences sharedPreferences];
  v8 = [v7 preferenceForKey:@"hdsIdleTimeout"];

  v9 = [v8 numberValue];

  if (v9)
  {
    v10 = [v8 numberValue];
    [v10 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 5.0;
  }

  v13 = [[HMFTimer alloc] initWithTimeInterval:1 options:v12];
  [(DataStreamController *)v4 setIdleTimer:v13];

  v14 = [(DataStreamController *)v4 idleTimer];
  [v14 setDelegate:v4];

  v15 = [(DataStreamController *)v4 workQueue];
  v16 = [(DataStreamController *)v4 idleTimer];
  [v16 setDelegateQueue:v15];

  v17 = [(DataStreamController *)v4 idleTimer];
  [v17 resume];
}

- (void)_stopIdleTimer
{
  v3 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DataStreamController *)self idleTimer];

  if (v4)
  {
    v5 = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(v5);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping idle timer", &v9, 0xCu);
    }

    v8 = [(DataStreamController *)v5 idleTimer];
    [v8 suspend];

    [(DataStreamController *)v5 setIdleTimer:0];
  }
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DataStreamController *)self idleTimer];

  if (v6 == v4)
  {
    v7 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [(DataStreamController *)v7 defaultDataStream];
      v11 = [v10 isActive];
      v12 = @"inactive";
      if (v11)
      {
        v12 = @"active";
      }

      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Idle timer fired and data stream is %@", &v16, 0x16u);
    }

    v13 = [(DataStreamController *)v7 defaultDataStream];
    v14 = [v13 isActive];

    if ((v14 & 1) == 0)
    {
      v15 = [(DataStreamController *)v7 defaultDataStream];
      [v15 close];
    }

    [(DataStreamController *)v7 _stopIdleTimer];
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