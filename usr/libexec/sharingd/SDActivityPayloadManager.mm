@interface SDActivityPayloadManager
+ (id)sharedPayloadManager;
- (NSString)state;
- (SDActivityPayloadManager)init;
- (id)createRapportClientWithDestinationDevice:(id)device;
- (id)dataFromUUID:(id)d;
- (id)idsDeviceWithUniqueID:(id)d onService:(id)service;
- (id)protobufDataFromRequest:(id)request;
- (id)requestFromProtobufData:(id)data;
- (void)activityPayloadReplySuccess:(id)success;
- (void)clearPersistedKeyRequests;
- (void)handleEncryptionKeyReplyRapport:(id)rapport options:(id)options forRequestRecord:(id)record fromDevice:(id)device;
- (void)handleEncryptionKeyReplyRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleEncryptionKeyRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleEncryptionKeyRequestRapport:(id)rapport options:(id)options responseHandler:(id)handler;
- (void)handleEncyptionKeyRequest:(id)request fromIDSDevice:(id)device withRequestIdentifier:(id)identifier transportType:(id)type completionHandler:(id)handler;
- (void)handleNewAdvertisementWithpayloadRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handlePayloadReplyProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handlePayloadReplyRapport:(id)rapport options:(id)options forRequestRecord:(id)record fromDevice:(id)device;
- (void)handlePayloadRequest:(id)request fromIDSDevice:(id)device withRequestIdentifier:(id)identifier transportType:(id)type completionHandler:(id)handler;
- (void)handlePayloadRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handlePayloadRequestRapport:(id)rapport options:(id)options responseHandler:(id)handler;
- (void)messageWithIdentifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)requestTimedOut:(id)out;
- (void)sendActivityPayloadRequestMessageToDevice:(id)device withRequestRecord:(id)record withDestinationDevice:(id)destinationDevice completionHandler:(id)handler;
- (void)sendActivityPayloadRequestToDeviceIdentifier:(id)identifier withAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout completionHandler:(id)handler;
- (void)sendActivityPayloadWithAdvertisementData:(id)data forAdvertisementPayload:(id)payload activityIdentifier:(id)identifier activityPayload:(id)activityPayload;
- (void)sendEncryptionKeyReplyRequestToDevice:(id)device reply:(id)reply requestIdentifier:(id)identifier;
- (void)sendEncryptionKeyRequestToDeviceIdentifier:(id)identifier previousKeyIdentifier:(id)keyIdentifier completionHandler:(id)handler;
- (void)sendIDSActivityPayloadReply:(id)reply withReplyRecord:(id)record;
- (void)sendIDSActivityPayloadRequest:(id)request withRequestRecord:(id)record desiredTimeout:(double)timeout;
- (void)sendIDSEncryptionKeyRequest:(id)request withRequestRecord:(id)record desiredTimeout:(double)timeout;
- (void)sendRapportActivityPayloadRequest:(id)request withRequestRecord:(id)record completionHandler:(id)handler;
- (void)sendRapportEncryptionKeyRequest:(id)request withRequestRecord:(id)record completionHandler:(id)handler;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)setDecryptionKeyDataRepresentation:(id)representation forDeviceIdentifier:(id)identifier;
- (void)setUpIDSServices;
- (void)setUpRapport;
- (void)setUpSystemMonitor;
@end

@implementation SDActivityPayloadManager

+ (id)sharedPayloadManager
{
  if (qword_100989FE8 != -1)
  {
    sub_10001ADCC();
  }

  v3 = qword_100989FE0;

  return v3;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  NSAppendPrintF();
  v5 = v4;

  if (self->_restrictionsDisabled)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v21 = v6;
  NSAppendPrintF();
  v7 = v5;

  activityService = self->_activityService;
  devices = [(IDSService *)activityService devices];
  v10 = [devices valueForKeyPath:@"@unionOfObjects.uniqueIDOverride"];
  SFCompactStringFromCollection();
  v27 = v22 = activityService;
  NSAppendPrintF();
  v11 = v7;

  v12 = [(IDSService *)self->_encryptionService devices:v22];
  v13 = [v12 valueForKeyPath:@"@unionOfObjects.uniqueIDOverride"];
  v28 = SFCompactStringFromCollection();
  NSAppendPrintF();
  v14 = v11;

  uniqueIDToKeyReplyDate = self->_uniqueIDToKeyReplyDate;
  NSAppendPrintF();
  v15 = v14;

  messageIdentifierToKeyRequestRecords = self->_messageIdentifierToKeyRequestRecords;
  NSAppendPrintF();
  v16 = v15;

  messageIdentifierToRequestRecords = self->_messageIdentifierToRequestRecords;
  NSAppendPrintF();
  v17 = v16;

  messageIdentifierToReplyRecords = self->_messageIdentifierToReplyRecords;
  NSAppendPrintF();
  v18 = v17;

  return v17;
}

- (SDActivityPayloadManager)init
{
  v19.receiver = self;
  v19.super_class = SDActivityPayloadManager;
  v2 = [(SDActivityPayloadManager *)&v19 init];
  if (v2)
  {
    if (IsAppleInternalBuild())
    {
      v3 = sub_10000C1F8(@"DisabledKeyRequestBudget", 0) != 0;
    }

    else
    {
      v3 = 0;
    }

    v2->_restrictionsDisabled = v3;
    v4 = +[SDActivityAdvertiser sharedAdvertiser];
    advertiser = v2->_advertiser;
    v2->_advertiser = v4;

    v6 = +[SDActivityScanner sharedScanner];
    scanner = v2->_scanner;
    v2->_scanner = v6;

    v8 = objc_opt_new();
    cachedActivityPayloadsForDemo = v2->_cachedActivityPayloadsForDemo;
    v2->_cachedActivityPayloadsForDemo = v8;

    v10 = objc_opt_new();
    uniqueIDToKeyReplyDate = v2->_uniqueIDToKeyReplyDate;
    v2->_uniqueIDToKeyReplyDate = v10;

    v12 = objc_opt_new();
    messageIdentifierToKeyRequestRecords = v2->_messageIdentifierToKeyRequestRecords;
    v2->_messageIdentifierToKeyRequestRecords = v12;

    v14 = objc_opt_new();
    messageIdentifierToReplyRecords = v2->_messageIdentifierToReplyRecords;
    v2->_messageIdentifierToReplyRecords = v14;

    v16 = objc_opt_new();
    messageIdentifierToRequestRecords = v2->_messageIdentifierToRequestRecords;
    v2->_messageIdentifierToRequestRecords = v16;

    [(SDActivityPayloadManager *)v2 clearPersistedKeyRequests];
    [(SDActivityPayloadManager *)v2 setUpSystemMonitor];
    [(SDActivityPayloadManager *)v2 setUpRapport];
    [(SDActivityPayloadManager *)v2 setUpIDSServices];
    [(SDActivityPayloadManager *)v2 setUpHandoffPreferenceMonitor];
  }

  return v2;
}

- (void)setUpSystemMonitor
{
  v3 = objc_opt_new();
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = v3;

  objc_initWeak(&location, self->_systemMonitor);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100168398;
  v6[3] = &unk_1008CDF68;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v5 = objc_retainBlock(v6);
  [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v5];
  [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setUpRapport
{
  if (!sub_10000C1F8(@"DisableContinuityRapportPayloads", 0))
  {
    v3 = [(SDActivityPayloadManager *)self createRapportClientWithDestinationDevice:0];
    rapportDiscoveryClient = self->_rapportDiscoveryClient;
    self->_rapportDiscoveryClient = v3;

    v5 = self->_rapportDiscoveryClient;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10016850C;
    v8[3] = &unk_1008CF358;
    v8[4] = self;
    [(RPCompanionLinkClient *)v5 registerRequestID:@"com.apple.handoff.encryption-key-request" options:0 handler:v8];
    v6 = self->_rapportDiscoveryClient;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100168520;
    v7[3] = &unk_1008CF358;
    v7[4] = self;
    [(RPCompanionLinkClient *)v6 registerRequestID:@"com.apple.handoff.payload-request" options:0 handler:v7];
    [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activateWithCompletion:&stru_1008D1BA0];
  }
}

- (void)setUpIDSServices
{
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.encryption"];
  encryptionService = self->_encryptionService;
  self->_encryptionService = v3;

  [(IDSService *)self->_encryptionService setProtobufAction:"handleEncryptionKeyRequestProtobuf:service:account:fromID:context:" forIncomingRequestsOfType:4];
  [(IDSService *)self->_encryptionService setProtobufAction:"handleEncryptionKeyReplyRequestProtobuf:service:account:fromID:context:" forIncomingResponsesOfType:5];
  [(IDSService *)self->_encryptionService addDelegate:self queue:&_dispatch_main_q];
  v5 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.continuity.activity"];
  activityService = self->_activityService;
  self->_activityService = v5;

  [(IDSService *)self->_activityService setProtobufAction:"handlePayloadRequestProtobuf:service:account:fromID:context:" forIncomingRequestsOfType:1];
  [(IDSService *)self->_activityService setProtobufAction:"handlePayloadReplyProtobuf:service:account:fromID:context:" forIncomingResponsesOfType:2];
  [(IDSService *)self->_activityService setProtobufAction:"handleNewAdvertisementWithpayloadRequestProtobuf:service:account:fromID:context:" forIncomingRequestsOfType:3];
  [(IDSService *)self->_activityService addDelegate:self queue:&_dispatch_main_q];
}

- (id)idsDeviceWithUniqueID:(id)d onService:(id)service
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  devices = [service devices];
  v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueIDOverride = [v10 uniqueIDOverride];
        v12 = [uniqueIDOverride isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)requestTimedOut:(id)out
{
  userInfo = [out userInfo];
  p_messageIdentifierToRequestRecords = &self->_messageIdentifierToRequestRecords;
  v6 = [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords objectForKeyedSubscript:userInfo];
  p_messageIdentifierToKeyRequestRecords = &self->_messageIdentifierToKeyRequestRecords;
  v8 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords objectForKeyedSubscript:userInfo];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100168A94;
  v28 = &unk_1008D1BC8;
  selfCopy = self;
  v9 = userInfo;
  v30 = v9;
  v10 = objc_retainBlock(&v25);
  if (v6 | v8)
  {
    v23 = v8;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    error = [v12 error];

    if (error)
    {
      error2 = [v12 error];
      userInfo2 = [error2 userInfo];
      v16 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v16)
      {
        do
        {
          userInfo3 = [error2 userInfo];
          v18 = [userInfo3 objectForKeyedSubscript:NSUnderlyingErrorKey];

          userInfo4 = [v18 userInfo];
          v20 = [userInfo4 objectForKeyedSubscript:NSUnderlyingErrorKey];

          error2 = v18;
        }

        while (v20);
      }

      else
      {
        v18 = error2;
      }
    }

    else
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"Request timed out";
      v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:v21];
    }

    [v12 setError:{v18, v23}];

    if (v6)
    {
      v22 = p_messageIdentifierToRequestRecords;
    }

    else
    {
      v22 = p_messageIdentifierToKeyRequestRecords;
    }

    [*v22 removeObjectForKey:v9];
    (v10[2])(v10, v12);
    v8 = v24;
  }
}

- (void)clearPersistedKeyRequests
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"EncryptionKeyRequests"];
}

- (void)sendEncryptionKeyRequestToDeviceIdentifier:(id)identifier previousKeyIdentifier:(id)keyIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  handlerCopy = handler;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords allValues];
  v12 = [allValues countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        deviceIdentifier = [v16 deviceIdentifier];
        v18 = [deviceIdentifier isEqual:identifierCopy];

        if (v18)
        {
          v22 = handlerCopy;
          [v16 setCompletionHandler:handlerCopy];
          v25 = handoff_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            sub_100170290();
          }

          v21 = keyIdentifierCopy;
          goto LABEL_19;
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = +[SDAutoUnlockSessionManager sharedManager];
  attemptInProgress = [v19 attemptInProgress];

  if (attemptInProgress)
  {
    allValues = handoff_log();
    v21 = keyIdentifierCopy;
    v22 = handlerCopy;
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v51 = v24;
      _os_log_impl(&_mh_execute_header, allValues, OS_LOG_TYPE_DEFAULT, "%@: Preventing encryption key request - Auto Unlock in progress", buf, 0xCu);
    }
  }

  else
  {
    allValues = objc_opt_new();
    v26 = objc_opt_new();
    [v26 setRequestIdentifier:allValues];
    [v26 setDeviceIdentifier:identifierCopy];
    v22 = handlerCopy;
    [v26 setCompletionHandler:handlerCopy];
    v21 = keyIdentifierCopy;
    [v26 setPreviousKeyIdentifier:keyIdentifierCopy];
    requestIdentifier = [v26 requestIdentifier];
    v28 = [NSTimer timerWithTimeInterval:selfCopy target:"requestTimedOut:" selector:requestIdentifier userInfo:0 repeats:16.0];
    [v26 setTimeoutTimer:v28];

    [v26 setTimeoutTimeInterval:15];
    [(NSMutableDictionary *)selfCopy->_messageIdentifierToKeyRequestRecords setObject:v26 forKeyedSubscript:allValues];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001690B4;
    block[3] = &unk_1008CDEA0;
    v29 = v26;
    v45 = v29;
    dispatch_async(&_dispatch_main_q, block);
    v30 = objc_opt_new();
    previousKeyIdentifier = [v29 previousKeyIdentifier];
    uUIDString = [previousKeyIdentifier UUIDString];
    v33 = uUIDString;
    if (uUIDString)
    {
      v34 = uUIDString;
    }

    else
    {
      v34 = &stru_1008EFBD0;
    }

    [v30 setObject:v34 forKeyedSubscript:@"rKeyPreviousIdentifier"];

    v35 = +[SDActivityEncryptionManager sharedEncryptionManager];
    dataRepresentationForCurrentEncryptionKey = [v35 dataRepresentationForCurrentEncryptionKey];
    [v30 setObject:dataRepresentationForCurrentEncryptionKey forKeyedSubscript:@"rKeyDataRepresentation"];

    [v30 setObject:&__kCFBooleanTrue forKeyedSubscript:@"rLocalOnly"];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100169130;
    v40[3] = &unk_1008D1BF0;
    v41 = v29;
    v42 = selfCopy;
    v43 = v30;
    v37 = v30;
    v38 = v29;
    [(SDActivityPayloadManager *)selfCopy sendRapportEncryptionKeyRequest:v37 withRequestRecord:v38 completionHandler:v40];
  }

LABEL_19:
}

- (void)sendRapportEncryptionKeyRequest:(id)request withRequestRecord:(id)record completionHandler:(id)handler
{
  requestCopy = request;
  recordCopy = record;
  handlerCopy = handler;
  activeDevices = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
  deviceIdentifier = [recordCopy deviceIdentifier];
  v12 = [NSPredicate predicateWithFormat:@"idsDeviceIdentifier == %@", deviceIdentifier];
  v13 = [activeDevices filteredArrayUsingPredicate:v12];
  firstObject = [v13 firstObject];

  if (firstObject)
  {
    timeoutTimeInterval = [recordCopy timeoutTimeInterval];
    v16 = 5;
    if (timeoutTimeInterval < 5)
    {
      v16 = timeoutTimeInterval;
    }

    v28 = v16;
    v17 = handoff_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      name = [firstObject name];
      deviceIdentifier2 = [recordCopy deviceIdentifier];
      requestIdentifier = [recordCopy requestIdentifier];
      uUIDString = [requestIdentifier UUIDString];
      *buf = 138413058;
      v38 = name;
      v39 = 2112;
      v40 = deviceIdentifier2;
      v41 = 2112;
      v42 = uUIDString;
      v43 = 1024;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requesting Encryption key via Rapport from %@ %@ with message GUID: %@ and timeout: %d", buf, 0x26u);
    }

    v22 = handoff_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10017032C();
    }

    linkClient = [recordCopy linkClient];

    if (linkClient)
    {
      linkClient2 = [recordCopy linkClient];
      [linkClient2 invalidate];

      [recordCopy setLinkClient:0];
    }

    v25 = [(SDActivityPayloadManager *)self createRapportClientWithDestinationDevice:firstObject];
    [recordCopy setLinkClient:v25];

    objc_initWeak(buf, recordCopy);
    linkClient3 = [recordCopy linkClient];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001695EC;
    v30[3] = &unk_1008D1C40;
    objc_copyWeak(&v35, buf);
    v36 = v28;
    v31 = requestCopy;
    selfCopy = self;
    v33 = firstObject;
    v34 = handlerCopy;
    [linkClient3 activateWithCompletion:v30];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    if (self->_rapportDiscoveryClient)
    {
      v27 = handoff_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v38 = recordCopy;
        v39 = 2112;
        v40 = activeDevices;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cannot send Handoff encryption key request %@ via Rapport as we found no devices in %@", buf, 0x16u);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)sendIDSEncryptionKeyRequest:(id)request withRequestRecord:(id)record desiredTimeout:(double)timeout
{
  recordCopy = record;
  v9 = [(SDActivityPayloadManager *)self protobufDataFromRequest:request];
  deviceIdentifier = [recordCopy deviceIdentifier];
  p_encryptionService = &self->_encryptionService;
  selfCopy = self;
  v12 = [(SDActivityPayloadManager *)self idsDeviceWithUniqueID:deviceIdentifier onService:self->_encryptionService];

  v13 = objc_opt_new();
  if (v12)
  {
    v48 = v9;
    v14 = *p_encryptionService;
    nsuuid = [v12 nsuuid];
    v16 = [v14 devicesForBTUUID:nsuuid];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v55;
      v50 = v13;
      while (2)
      {
        v21 = recordCopy;
        v22 = v12;
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v55 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v54 + 1) + 8 * i);
          v25 = IDSCopyForDevice();
          if (v25)
          {
            v28 = v25;
            [v50 addObject:v25];
            v12 = v22;
            recordCopy = v21;
            if ([v17 count]>= 2)
            {
              v29 = handoff_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending encryption key request to single of multiple possible destinations.", buf, 2u);
              }
            }

            v13 = v50;
            goto LABEL_18;
          }

          v26 = handoff_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            devices = [*p_encryptionService devices];
            *buf = 138412546;
            v61 = v24;
            v62 = 2112;
            v63 = devices;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Encryption key: No device ID generated for device %@ (Devices: %@)", buf, 0x16u);
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v54 objects:v68 count:16];
        v12 = v22;
        recordCopy = v21;
        v13 = v50;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v9 = v48;
  }

  else
  {
    v17 = handoff_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10017040C();
    }
  }

  if (v13)
  {
    v30 = handoff_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      name = [v12 name];
      deviceIdentifier2 = [recordCopy deviceIdentifier];
      requestIdentifier = [recordCopy requestIdentifier];
      uUIDString = [requestIdentifier UUIDString];
      *buf = 138413058;
      v61 = name;
      v62 = 2112;
      v63 = deviceIdentifier2;
      v64 = 2112;
      v65 = uUIDString;
      v66 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Requesting Encryption key via IDS from %@ %@ with message GUID: %@ and timeout: %f", buf, 0x2Au);
    }

    v49 = v12;

    v35 = handoff_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_1001704BC();
    }

    requestIdentifier3 = objc_opt_new();
    requestIdentifier2 = [recordCopy requestIdentifier];
    v38 = [(SDActivityPayloadManager *)selfCopy dataFromUUID:requestIdentifier2];
    [requestIdentifier3 setObject:v38 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    [requestIdentifier3 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
    [requestIdentifier3 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    v39 = [NSNumber numberWithDouble:timeout];
    [requestIdentifier3 setObject:v39 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [requestIdentifier3 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v40 = [[IDSProtobuf alloc] initWithProtobufData:v9 type:4 isResponse:0];
    encryptionService = selfCopy->_encryptionService;
    v52 = 0;
    v53 = 0;
    v42 = [(IDSService *)encryptionService sendProtobuf:v40 toDestinations:v13 priority:300 options:requestIdentifier3 identifier:&v53 error:&v52];
    v43 = v53;
    v44 = v52;
    [recordCopy requestIdentifier];
    v46 = v45 = v9;
    [(SDActivityPayloadManager *)selfCopy messageWithIdentifier:v46 didSendWithSuccess:v42 error:v44];

    v9 = v45;
    v12 = v49;
  }

  else
  {
    v58 = NSLocalizedDescriptionKey;
    v59 = @"Failed to find device to request encryption key from";
    v47 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:v47];

    requestIdentifier3 = [recordCopy requestIdentifier];
    [(SDActivityPayloadManager *)selfCopy messageWithIdentifier:requestIdentifier3 didSendWithSuccess:0 error:v43];
  }
}

- (void)sendEncryptionKeyReplyRequestToDevice:(id)device reply:(id)reply requestIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  v9 = objc_opt_new();
  v10 = +[SDActivityEncryptionManager sharedEncryptionManager];
  dataRepresentationForCurrentEncryptionKey = [v10 dataRepresentationForCurrentEncryptionKey];
  [v9 setObject:dataRepresentationForCurrentEncryptionKey forKeyedSubscript:@"rKeyDataRepresentation"];

  v12 = [(SDActivityPayloadManager *)self protobufDataFromRequest:v9];
  v13 = IDSCopyForDevice();
  if (v13)
  {
    v36 = v13;
    v14 = [NSSet setWithObject:v13];
    v15 = objc_opt_new();
    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [deviceCopy name];
      v18 = v17 = v15;
      *buf = 138412290;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Responding to Handoff encryption key request from %@ via IDS", buf, 0xCu);

      v15 = v17;
    }

    v37 = v15;

    v19 = objc_opt_new();
    v20 = [(SDActivityPayloadManager *)self dataFromUUID:v15];
    [v19 setObject:v20 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    [v19 setObject:identifierCopy forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
    [v19 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    [v19 setObject:&off_10090BDF0 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v21 = [[IDSProtobuf alloc] initWithProtobufData:v12 type:5 isResponse:1];
    encryptionService = self->_encryptionService;
    v39 = 0;
    v40 = 0;
    v35 = v14;
    v23 = [(IDSService *)encryptionService sendProtobuf:v21 toDestinations:v14 priority:300 options:v19 identifier:&v40 error:&v39];
    selfCopy = self;
    v25 = v23;
    v26 = v40;
    v27 = v39;
    if ((v25 & 1) == 0)
    {
      v28 = selfCopy->_encryptionService;
      [v37 UUIDString];
      v34 = v12;
      v29 = deviceCopy;
      v31 = v30 = identifierCopy;
      [(SDActivityPayloadManager *)selfCopy service:v28 account:0 identifier:v31 didSendWithSuccess:0 error:v27];

      identifierCopy = v30;
      deviceCopy = v29;
      v12 = v34;
    }

    v32 = v35;
    v13 = v36;
  }

  else
  {
    v32 = handoff_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      devices = [(IDSService *)self->_encryptionService devices];
      *buf = 138412802;
      v42 = uniqueIDOverride;
      v43 = 2112;
      v44 = devices;
      v45 = 2112;
      v46 = identifierCopy;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "No device ID generated for device %@ (Devices: %@) for requestIdentifier %@", buf, 0x20u);
    }
  }
}

- (void)sendActivityPayloadRequestToDeviceIdentifier:(id)identifier withAdvertisementPayload:(id)payload command:(id)command timeout:(int64_t)timeout completionHandler:(id)handler
{
  identifierCopy = identifier;
  payloadCopy = payload;
  commandCopy = command;
  handlerCopy = handler;
  v16 = handoff_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v36 = SFHexStringForData();
    *buf = 138413058;
    v56 = identifierCopy;
    v57 = 2112;
    v58 = v36;
    v59 = 2112;
    v60 = commandCopy;
    v61 = 1024;
    timeoutCopy = timeout;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ %@ %@ %d", buf, 0x26u);
  }

  if ([(NSMutableArray *)self->_cachedActivityPayloadsForDemo count])
  {
    timeoutCopy2 = timeout;
    selfCopy = self;
    v39 = commandCopy;
    v40 = payloadCopy;
    v17 = identifierCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = self->_cachedActivityPayloadsForDemo;
    v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:{@"deviceIdentifier", timeoutCopy2, selfCopy}];
          v24 = [v22 objectForKeyedSubscript:@"advertisementPayload"];
          v25 = [v22 objectForKeyedSubscript:@"activityCommand"];
          if ([v23 isEqual:v17] && objc_msgSend(v24, "isEqual:", v40) && objc_msgSend(v25, "isEqual:", v39))
          {
            v32 = [v22 objectForKeyedSubscript:@"activityPayload"];
            v33 = handoff_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = SFHexStringForData();
              v35 = [v32 length];
              *buf = 138412802;
              v56 = v23;
              v57 = 2112;
              v58 = v34;
              v59 = 1024;
              LODWORD(v60) = v35;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Found activity payload in cache for %@ from %@ of size %d", buf, 0x1Cu);
            }

            handlerCopy[2](handlerCopy, v32, 0);
            identifierCopy = v17;
            commandCopy = v39;
            payloadCopy = v40;
            v26 = obj;
            goto LABEL_19;
          }
        }

        v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    identifierCopy = v17;
    commandCopy = v39;
    payloadCopy = v40;
    self = selfCopy;
    timeout = timeoutCopy2;
  }

  v26 = objc_opt_new();
  v52[0] = @"rAdvPayload";
  v52[1] = @"rClientCommand";
  v53[0] = payloadCopy;
  v53[1] = commandCopy;
  v52[2] = @"rIdentifier";
  uUIDString = [v26 UUIDString];
  v53[2] = uUIDString;
  v28 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];

  v29 = objc_opt_new();
  [v29 setRequestIdentifier:v26];
  [v29 setDeviceIdentifier:identifierCopy];
  [v29 setCompletionHandler:handlerCopy];
  [v29 setAdvertisementPayload:payloadCopy];
  [v29 setCommand:commandCopy];
  v30 = [NSTimer timerWithTimeInterval:self target:"requestTimedOut:" selector:v26 userInfo:0 repeats:(timeout + 1)];
  [v29 setTimeoutTimer:v30];

  [v29 setTimeoutTimeInterval:timeout];
  [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords setObject:v29 forKeyedSubscript:v26];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016A9D4;
  block[3] = &unk_1008CDEA0;
  v31 = v29;
  v47 = v31;
  dispatch_async(&_dispatch_main_q, block);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10016AA50;
  v42[3] = &unk_1008D1BF0;
  v43 = v31;
  selfCopy2 = self;
  v45 = v28;
  v24 = v28;
  v23 = v31;
  [(SDActivityPayloadManager *)self sendRapportActivityPayloadRequest:v24 withRequestRecord:v23 completionHandler:v42];

  v25 = v47;
LABEL_19:
}

- (void)sendRapportActivityPayloadRequest:(id)request withRequestRecord:(id)record completionHandler:(id)handler
{
  requestCopy = request;
  recordCopy = record;
  handlerCopy = handler;
  v9 = handoff_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to send rapport activity payload request", buf, 2u);
  }

  v10 = +[SDStatusMonitor sharedMonitor];
  isMirroringActive = [v10 isMirroringActive];

  v12 = handoff_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (isMirroringActive)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Mirroring is active, bringing up scanner and sending if we find device", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = sub_10016B12C;
    v53 = sub_10016B13C;
    v54 = objc_alloc_init(RPCompanionLinkClient);
    [*(*&buf[8] + 40) setControlFlags:2];
    [*(*&buf[8] + 40) setControlFlags:{objc_msgSend(*(*&buf[8] + 40), "controlFlags") | 0x10000}];
    deviceIdentifier = [recordCopy deviceIdentifier];
    v15 = [NSArray arrayWithObject:deviceIdentifier];
    [*(*&buf[8] + 40) setDeviceFilter:v15];

    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10016B144;
    v42[3] = &unk_1008D1C90;
    v16 = recordCopy;
    v43 = v16;
    selfCopy = self;
    v45 = requestCopy;
    v17 = handlerCopy;
    v46 = v17;
    v47 = buf;
    v48 = v49;
    [*(*&buf[8] + 40) setDeviceFoundHandler:v42];
    v18 = *(*&buf[8] + 40);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10016B318;
    v37[3] = &unk_1008D1CE0;
    v39 = v17;
    v40 = v49;
    v37[4] = self;
    v38 = v16;
    v41 = buf;
    [v18 activateWithCompletion:v37];

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Mirroring is not active, sending directly", buf, 2u);
    }

    activeDevices = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
    deviceIdentifier2 = [recordCopy deviceIdentifier];
    v21 = [NSPredicate predicateWithFormat:@"idsDeviceIdentifier == %@", deviceIdentifier2];
    v22 = [activeDevices filteredArrayUsingPredicate:v21];
    firstObject = [v22 firstObject];

    if (firstObject)
    {
      timeoutTimeInterval = [recordCopy timeoutTimeInterval];
      v25 = handoff_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (timeoutTimeInterval >= 5)
        {
          v26 = 5;
        }

        else
        {
          v26 = timeoutTimeInterval;
        }

        advertisementPayload = [recordCopy advertisementPayload];
        v28 = SFHexStringForData();
        requestIdentifier = [recordCopy requestIdentifier];
        uUIDString = [requestIdentifier UUIDString];
        *buf = 138412802;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = uUIDString;
        *&buf[22] = 1024;
        LODWORD(v52) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Requesting Handoff payload via Rapport for %@ with message GUID: %@ and timeout: %d", buf, 0x1Cu);
      }

      v31 = handoff_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100170524();
      }

      linkClient = [recordCopy linkClient];

      if (linkClient)
      {
        linkClient2 = [recordCopy linkClient];
        [linkClient2 invalidate];

        [recordCopy setLinkClient:0];
      }

      [(SDActivityPayloadManager *)self sendActivityPayloadRequestMessageToDevice:requestCopy withRequestRecord:recordCopy withDestinationDevice:firstObject completionHandler:handlerCopy];
    }

    else
    {
      if (self->_rapportDiscoveryClient)
      {
        v34 = handoff_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = recordCopy;
          *&buf[12] = 2112;
          *&buf[14] = activeDevices;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Cannot send Handoff payload request %@ via Rapport as we found no devices in %@", buf, 0x16u);
        }
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)sendActivityPayloadRequestMessageToDevice:(id)device withRequestRecord:(id)record withDestinationDevice:(id)destinationDevice completionHandler:(id)handler
{
  deviceCopy = device;
  recordCopy = record;
  destinationDeviceCopy = destinationDevice;
  handlerCopy = handler;
  timeoutTimeInterval = [recordCopy timeoutTimeInterval];
  if (timeoutTimeInterval >= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = timeoutTimeInterval;
  }

  v15 = handoff_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    advertisementPayload = [recordCopy advertisementPayload];
    v17 = SFHexStringForData();
    requestIdentifier = [recordCopy requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    *buf = 138412802;
    v37 = v17;
    v38 = 2112;
    v39 = uUIDString;
    v40 = 1024;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requesting Handoff payload via Rapport for %@ with message GUID: %@ and timeout: %d", buf, 0x1Cu);
  }

  v20 = handoff_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100170524();
  }

  linkClient = [recordCopy linkClient];

  if (linkClient)
  {
    linkClient2 = [recordCopy linkClient];
    [linkClient2 invalidate];

    [recordCopy setLinkClient:0];
  }

  v23 = [(SDActivityPayloadManager *)self createRapportClientWithDestinationDevice:destinationDeviceCopy];
  [recordCopy setLinkClient:v23];

  objc_initWeak(buf, recordCopy);
  linkClient3 = [recordCopy linkClient];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10016B8C8;
  v29[3] = &unk_1008D1C40;
  objc_copyWeak(&v34, buf);
  v35 = v14;
  v25 = deviceCopy;
  v30 = v25;
  selfCopy = self;
  v26 = destinationDeviceCopy;
  v32 = v26;
  v27 = handlerCopy;
  v33 = v27;
  [linkClient3 activateWithCompletion:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

- (void)sendIDSActivityPayloadRequest:(id)request withRequestRecord:(id)record desiredTimeout:(double)timeout
{
  recordCopy = record;
  v9 = [(SDActivityPayloadManager *)self protobufDataFromRequest:request];
  deviceIdentifier = [recordCopy deviceIdentifier];
  v11 = [(SDActivityPayloadManager *)self idsDeviceWithUniqueID:deviceIdentifier onService:self->_activityService];

  v12 = objc_opt_new();
  v46 = v11;
  if (v11)
  {
    v45 = v9;
    activityService = self->_activityService;
    nsuuid = [v11 nsuuid];
    v15 = [(IDSService *)activityService devicesForBTUUID:nsuuid];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          v22 = IDSCopyForDevice();
          if (v22)
          {
            v25 = v22;
            [v12 addObject:v22];
            if ([v16 count]>= 2)
            {
              v26 = handoff_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending handoff payload request via IDS to single of multiple possible destinations.", buf, 2u);
              }
            }

            goto LABEL_18;
          }

          v23 = handoff_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            devices = [(IDSService *)self->_encryptionService devices];
            *buf = 138412546;
            v56 = v21;
            v57 = 2112;
            v58 = devices;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "No device ID generated for device %@ (Devices: %@)", buf, 0x16u);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v9 = v45;
  }

  else
  {
    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10017065C();
    }
  }

  if (v12)
  {
    v27 = handoff_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      advertisementPayload = [recordCopy advertisementPayload];
      v29 = SFHexStringForData();
      requestIdentifier = [recordCopy requestIdentifier];
      uUIDString = [requestIdentifier UUIDString];
      timeoutTimeInterval = [recordCopy timeoutTimeInterval];
      *buf = 138412802;
      v56 = v29;
      v57 = 2112;
      v58 = uUIDString;
      v59 = 1024;
      v60 = timeoutTimeInterval;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Requesting Handoff payload via IDS for %@ with message GUID: %@ and timeout: %d", buf, 0x1Cu);
    }

    v33 = handoff_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10017070C();
    }

    requestIdentifier4 = objc_opt_new();
    requestIdentifier2 = [recordCopy requestIdentifier];
    v36 = [(SDActivityPayloadManager *)self dataFromUUID:requestIdentifier2];
    [requestIdentifier4 setObject:v36 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    [requestIdentifier4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
    v37 = [NSNumber numberWithDouble:timeout];
    [requestIdentifier4 setObject:v37 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [requestIdentifier4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
    [requestIdentifier4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionActivityContinuationKey];
    [requestIdentifier4 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    [requestIdentifier4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v38 = [[IDSProtobuf alloc] initWithProtobufData:v9 type:1 isResponse:0];
    kdebug_trace();
    v39 = self->_activityService;
    v47 = 0;
    v48 = 0;
    v40 = [(IDSService *)v39 sendProtobuf:v38 toDestinations:v12 priority:300 options:requestIdentifier4 identifier:&v48 error:&v47];
    v41 = v48;
    v42 = v47;
    requestIdentifier3 = [recordCopy requestIdentifier];
    [(SDActivityPayloadManager *)self messageWithIdentifier:requestIdentifier3 didSendWithSuccess:v40 error:v42];
  }

  else
  {
    v53 = NSLocalizedDescriptionKey;
    v54 = @"Failed to find device to request activity payload from";
    v44 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:v44];

    requestIdentifier4 = [recordCopy requestIdentifier];
    [(SDActivityPayloadManager *)self messageWithIdentifier:requestIdentifier4 didSendWithSuccess:0 error:v41];
  }
}

- (void)handleEncyptionKeyRequest:(id)request fromIDSDevice:(id)device withRequestIdentifier:(id)identifier transportType:(id)type completionHandler:(id)handler
{
  requestCopy = request;
  identifierCopy = identifier;
  typeCopy = type;
  handlerCopy = handler;
  uniqueIDOverride = [device uniqueIDOverride];
  v17 = [requestCopy objectForKeyedSubscript:@"rKeyDataRepresentation"];
  [(SDActivityPayloadManager *)self setDecryptionKeyDataRepresentation:v17 forDeviceIdentifier:uniqueIDOverride];
  v18 = [(NSMutableDictionary *)self->_uniqueIDToKeyReplyDate objectForKeyedSubscript:uniqueIDOverride];
  [v18 timeIntervalSinceNow];
  if (v19 <= -0.0)
  {
    v20 = -v19;
  }

  else
  {
    v20 = 0.0;
  }

  if (v18 && v20 < 5.0)
  {
    v21 = handoff_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v29 = SFStringFromTimeInterval();
      *buf = 138413058;
      v32 = uniqueIDOverride;
      v33 = 2112;
      v34 = typeCopy;
      v35 = 2112;
      v36 = identifierCopy;
      v37 = 2112;
      v38 = v29;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Ignoring request from %@ via %@ for key with requestIdentifier %@ as we replied only %@ ago", buf, 0x2Au);
    }
  }

  else
  {
    v22 = objc_opt_new();
    [(NSMutableDictionary *)self->_uniqueIDToKeyReplyDate setObject:v22 forKeyedSubscript:uniqueIDOverride];

    v30 = [requestCopy objectForKeyedSubscript:@"rKeyPreviousIdentifier"];
    v23 = objc_opt_new();
    v24 = +[SDActivityEncryptionManager sharedEncryptionManager];
    [v24 dataRepresentationForCurrentEncryptionKey];
    v25 = handlerCopy;
    v26 = typeCopy;
    v28 = v27 = identifierCopy;
    [v23 setObject:v28 forKeyedSubscript:@"rKeyDataRepresentation"];

    identifierCopy = v27;
    typeCopy = v26;
    handlerCopy = v25;

    v25[2](v25, v23);
  }
}

- (void)handleEncryptionKeyRequestRapport:(id)rapport options:(id)options responseHandler:(id)handler
{
  rapportCopy = rapport;
  optionsCopy = options;
  handlerCopy = handler;
  if (RPOptionSenderIDSDeviceID)
  {
    v11 = RPOptionSenderIDSDeviceID;
  }

  else
  {
    v11 = @"senderIDS";
  }

  v12 = [optionsCopy objectForKeyedSubscript:v11];
  if (!v12)
  {
    firstObject = 0;
LABEL_11:
    v21 = NSErrorWithOSStatusF();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);

    goto LABEL_12;
  }

  devices = [(IDSService *)self->_activityService devices];
  v14 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v12];
  v15 = [devices filteredArrayUsingPredicate:v14];
  firstObject = [v15 firstObject];

  if (!rapportCopy || !firstObject)
  {
    goto LABEL_11;
  }

  v17 = [rapportCopy objectForKeyedSubscript:@"rIdentifier"];
  v18 = handoff_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    name = [firstObject name];
    v20 = [optionsCopy objectForKeyedSubscript:RPOptionXID];
    *buf = 138412802;
    v26 = name;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received Handoff encryption key request from %@ via Rapport with requestIdentifier %@, xid %@", buf, 0x20u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10016C8F0;
  v22[3] = &unk_1008D1D08;
  firstObject = firstObject;
  v23 = firstObject;
  v24 = handlerCopy;
  [(SDActivityPayloadManager *)self handleEncyptionKeyRequest:rapportCopy fromIDSDevice:firstObject withRequestIdentifier:v17 transportType:@"Rapport" completionHandler:v22];

LABEL_12:
}

- (void)handleEncryptionKeyRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  encryptionService = self->_encryptionService;
  protobufCopy = protobuf;
  v14 = [(IDSService *)encryptionService deviceForFromID:dCopy];
  data = [protobufCopy data];

  v16 = [(SDActivityPayloadManager *)self requestFromProtobufData:data];

  if (v14 && v16)
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v18 = handoff_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      name = [v14 name];
      *buf = 138412546;
      v25 = name;
      v26 = 2112;
      v27 = outgoingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received Handoff encryption key request from %@ via IDS with requestIdentifier %@", buf, 0x16u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10016CC04;
    v21[3] = &unk_1008D1D30;
    v21[4] = self;
    v22 = v14;
    v23 = outgoingResponseIdentifier;
    v20 = outgoingResponseIdentifier;
    [(SDActivityPayloadManager *)self handleEncyptionKeyRequest:v16 fromIDSDevice:v22 withRequestIdentifier:v20 transportType:@"IDS" completionHandler:v21];
  }

  else
  {
    v20 = handoff_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100170778();
    }
  }
}

- (void)handleEncryptionKeyReplyRapport:(id)rapport options:(id)options forRequestRecord:(id)record fromDevice:(id)device
{
  optionsCopy = options;
  recordCopy = record;
  activityService = self->_activityService;
  deviceCopy = device;
  rapportCopy = rapport;
  devices = [(IDSService *)activityService devices];
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  v17 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", idsDeviceIdentifier];
  v18 = [devices filteredArrayUsingPredicate:v17];
  firstObject = [v18 firstObject];

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v21 = handoff_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    name = [firstObject name];
    if (Int64Ranged > 0xB)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1008D1DF0[Int64Ranged & 0xF];
    }

    requestIdentifier = [recordCopy requestIdentifier];
    v25 = [optionsCopy objectForKeyedSubscript:RPOptionXID];
    *buf = 138413058;
    v28 = name;
    v29 = 2080;
    v30 = v23;
    v31 = 2112;
    v32 = requestIdentifier;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received a new Handoff encryption key from %@ via Rapport (%s) with requestIdentifier %@, xid %@", buf, 0x2Au);

    self = selfCopy;
  }

  [(SDActivityPayloadManager *)self handleEncryptionKeyReply:rapportCopy forRequestRecord:recordCopy fromDevice:firstObject transportLinkType:Int64Ranged];
}

- (void)handleEncryptionKeyReplyRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  encryptionService = self->_encryptionService;
  contextCopy = context;
  protobufCopy = protobuf;
  v13 = [(IDSService *)encryptionService deviceForFromID:d];
  v14 = [NSUUID alloc];
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

  v16 = [v14 initWithUUIDString:incomingResponseIdentifier];
  data = [protobufCopy data];

  v18 = [(SDActivityPayloadManager *)self requestFromProtobufData:data];

  v19 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords objectForKeyedSubscript:v16];
  v20 = handoff_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    name = [v13 name];
    requestIdentifier = [v19 requestIdentifier];
    v23 = 138412546;
    v24 = name;
    v25 = 2112;
    v26 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received a new Handoff encryption key from %@ via IDS with requestIdentifier %@", &v23, 0x16u);
  }

  [(SDActivityPayloadManager *)self handleEncryptionKeyReply:v18 forRequestRecord:v19 fromDevice:v13 transportLinkType:0xFFFFFFFFLL];
}

- (void)handlePayloadRequestRapport:(id)rapport options:(id)options responseHandler:(id)handler
{
  rapportCopy = rapport;
  optionsCopy = options;
  handlerCopy = handler;
  if (RPOptionSenderIDSDeviceID)
  {
    v11 = RPOptionSenderIDSDeviceID;
  }

  else
  {
    v11 = @"senderIDS";
  }

  v12 = [optionsCopy objectForKeyedSubscript:v11];
  if (!v12)
  {
    firstObject = 0;
LABEL_11:
    v21 = NSErrorWithOSStatusF();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);

    goto LABEL_12;
  }

  devices = [(IDSService *)self->_activityService devices];
  v14 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v12];
  v15 = [devices filteredArrayUsingPredicate:v14];
  firstObject = [v15 firstObject];

  if (!rapportCopy || !firstObject)
  {
    goto LABEL_11;
  }

  v17 = [rapportCopy objectForKeyedSubscript:@"rIdentifier"];
  v18 = handoff_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    name = [firstObject name];
    v20 = [optionsCopy objectForKeyedSubscript:RPOptionXID];
    *buf = 138412802;
    v27 = name;
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received Handoff payload request from %@ via Rapport with requestIdentifier %@, xid %@", buf, 0x20u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10016D4E8;
  v22[3] = &unk_1008D1D58;
  firstObject = firstObject;
  v23 = firstObject;
  selfCopy = self;
  v25 = handlerCopy;
  [(SDActivityPayloadManager *)self handlePayloadRequest:rapportCopy fromIDSDevice:firstObject withRequestIdentifier:v17 transportType:@"Rapport" completionHandler:v22];

LABEL_12:
}

- (void)handlePayloadRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  activityService = self->_activityService;
  protobufCopy = protobuf;
  v14 = [(IDSService *)activityService deviceForFromID:dCopy];
  data = [protobufCopy data];

  v16 = [(SDActivityPayloadManager *)self requestFromProtobufData:data];

  if (v14 && v16)
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10016D7E4;
    v18[3] = &unk_1008D1D80;
    v18[4] = self;
    [(SDActivityPayloadManager *)self handlePayloadRequest:v16 fromIDSDevice:v14 withRequestIdentifier:outgoingResponseIdentifier transportType:@"IDS" completionHandler:v18];
  }

  else
  {
    outgoingResponseIdentifier = handoff_log();
    if (os_log_type_enabled(outgoingResponseIdentifier, OS_LOG_TYPE_ERROR))
    {
      sub_100170AC8();
    }
  }
}

- (void)handlePayloadRequest:(id)request fromIDSDevice:(id)device withRequestIdentifier:(id)identifier transportType:(id)type completionHandler:(id)handler
{
  deviceCopy = device;
  identifierCopy = identifier;
  typeCopy = type;
  handlerCopy = handler;
  requestCopy = request;
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  v18 = objc_opt_new();
  v37 = sub_100108EE8(deviceCopy);
  v19 = [requestCopy objectForKeyedSubscript:@"rAdvPayload"];
  v20 = [requestCopy objectForKeyedSubscript:@"rClientCommand"];

  v21 = handoff_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [deviceCopy name];
    v22 = v36 = self;
    v34 = handlerCopy;
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = @"-";
    }

    SFHexStringForData();
    v24 = v35 = v18;
    *buf = 138413570;
    v49 = typeCopy;
    v50 = 2112;
    v51 = v22;
    v52 = 2112;
    v53 = uniqueIDOverride;
    v54 = 2112;
    v55 = identifierCopy;
    v56 = 2112;
    v57 = v23;
    handlerCopy = v34;
    v58 = 2112;
    v59 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received handoff payload request via %@ from %@ (%@) with requestIdentifier %@ command=%@ for advertisementPayload %@", buf, 0x3Eu);

    self = v36;
    v18 = v35;
  }

  advertiser = self->_advertiser;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10016DAF4;
  v38[3] = &unk_1008D1DA8;
  v39 = v18;
  v40 = typeCopy;
  v41 = deviceCopy;
  v42 = uniqueIDOverride;
  v43 = identifierCopy;
  v44 = v19;
  v45 = v20;
  selfCopy = self;
  v47 = handlerCopy;
  v26 = handlerCopy;
  v27 = v20;
  v28 = v19;
  v29 = identifierCopy;
  v30 = uniqueIDOverride;
  v31 = deviceCopy;
  v32 = typeCopy;
  v33 = v18;
  [(SDActivityAdvertiser *)advertiser activityPayloadForAdvertisementPayload:v28 command:v27 requestedByDevice:v37 withCompletionHandler:v38];
}

- (void)sendIDSActivityPayloadReply:(id)reply withReplyRecord:(id)record
{
  replyCopy = reply;
  recordCopy = record;
  devices = [(IDSService *)self->_activityService devices];
  deviceIdentifier = [recordCopy deviceIdentifier];
  v10 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", deviceIdentifier];
  v11 = [devices filteredArrayUsingPredicate:v10];
  firstObject = [v11 firstObject];

  v13 = IDSCopyForDevice();
  if (v13)
  {
    v14 = [NSSet setWithObject:v13];
    v15 = [(SDActivityPayloadManager *)self protobufDataFromRequest:replyCopy];
    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      name = [firstObject name];
      *buf = 138412290;
      v37 = name;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Responding to Handoff payload request from %@ via IDS", buf, 0xCu);
    }

    v18 = handoff_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1001709F8();
    }

    v32 = firstObject;
    v33 = replyCopy;

    v19 = handoff_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100170A60();
    }

    v20 = objc_opt_new();
    messageIdentifier = [recordCopy messageIdentifier];
    v22 = [(SDActivityPayloadManager *)self dataFromUUID:messageIdentifier];
    [v20 setObject:v22 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    requestIdentifier = [recordCopy requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    [v20 setObject:uUIDString forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

    [v20 setObject:&off_10090BDF0 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
    [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionActivityContinuationKey];
    [v20 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v25 = v15;
    v26 = [[IDSProtobuf alloc] initWithProtobufData:v15 type:2 isResponse:1];
    activityService = self->_activityService;
    v34 = 0;
    v35 = 0;
    v28 = [(IDSService *)activityService sendProtobuf:v26 toDestinations:v14 priority:300 options:v20 identifier:&v35 error:&v34];
    v29 = v35;
    v30 = v34;
    if (v28)
    {
      [(SDActivityPayloadManager *)self activityPayloadReplySuccess:recordCopy];
    }

    else
    {
      messageIdentifier2 = [recordCopy messageIdentifier];
      [(SDActivityPayloadManager *)self messageWithIdentifier:messageIdentifier2 didSendWithSuccess:0 error:v30];
    }

    replyCopy = v33;

    firstObject = v32;
  }

  else
  {
    v14 = handoff_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100170D00();
    }
  }
}

- (void)activityPayloadReplySuccess:(id)success
{
  successCopy = success;
  activityIdentifier = [successCopy activityIdentifier];

  if (activityIdentifier)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v9 = @"SDStreamActivityIdentifier";
    activityIdentifier2 = [successCopy activityIdentifier];
    uUIDString = [activityIdentifier2 UUIDString];
    v10 = uUIDString;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"com.apple.sharingd.ContinuationPayloadSent" object:0 userInfo:v8];
  }
}

- (void)handlePayloadReplyRapport:(id)rapport options:(id)options forRequestRecord:(id)record fromDevice:(id)device
{
  optionsCopy = options;
  recordCopy = record;
  activityService = self->_activityService;
  deviceCopy = device;
  rapportCopy = rapport;
  devices = [(IDSService *)activityService devices];
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  v17 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", idsDeviceIdentifier];
  v18 = [devices filteredArrayUsingPredicate:v17];
  firstObject = [v18 firstObject];

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v21 = handoff_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    name = [firstObject name];
    if (Int64Ranged > 0xB)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1008D1DF0[Int64Ranged & 0xF];
    }

    requestIdentifier = [recordCopy requestIdentifier];
    v25 = [optionsCopy objectForKeyedSubscript:RPOptionXID];
    *buf = 138413058;
    v28 = name;
    v29 = 2080;
    v30 = v23;
    v31 = 2112;
    v32 = requestIdentifier;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received Handoff payload reply from %@ via Rapport (%s) with requestIdentifier %@, xid %@", buf, 0x2Au);

    self = selfCopy;
  }

  [(SDActivityPayloadManager *)self handlePayloadReply:rapportCopy forRequestRecord:recordCopy fromDevice:firstObject transportLinkType:Int64Ranged];
}

- (void)handlePayloadReplyProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  contextCopy = context;
  v12 = [(IDSService *)self->_activityService deviceForFromID:d];
  if (v12)
  {
    v13 = [NSUUID alloc];
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    v15 = [v13 initWithUUIDString:incomingResponseIdentifier];

    v16 = [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords objectForKeyedSubscript:v15];
    data = [protobufCopy data];
    v18 = [(SDActivityPayloadManager *)self requestFromProtobufData:data];

    v19 = handoff_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      name = [v12 name];
      requestIdentifier = [v16 requestIdentifier];
      v22 = 138412546;
      v23 = name;
      v24 = 2112;
      v25 = requestIdentifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received Handoff payload reply from %@ via IDS with requestIdentifier %@", &v22, 0x16u);
    }

    [(SDActivityPayloadManager *)self handlePayloadReply:v18 forRequestRecord:v16 fromDevice:v12 transportLinkType:0xFFFFFFFFLL];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  contextCopy = context;
  v10 = handoff_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100170DD4();
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  contextCopy = context;
  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100170E40();
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  messageCopy = message;
  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100170EA8();
  }
}

- (void)messageWithIdentifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v10 = [(NSMutableDictionary *)self->_messageIdentifierToReplyRecords objectForKeyedSubscript:identifierCopy];
  v11 = [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords objectForKeyedSubscript:identifierCopy];
  }

  v14 = v13;

  v15 = handoff_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = identifierCopy;
    }

    if (v10)
    {
      v16 = v10;
    }

    v17 = @"NO";
    *buf = 138412802;
    v27 = v16;
    v28 = 2112;
    if (successCopy)
    {
      v17 = @"YES";
    }

    v29 = v17;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ %@ (%@)", buf, 0x20u);
  }

  if (!errorCopy && !successCopy)
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Unknown Error";
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    errorCopy = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v18];
  }

  if (v10)
  {
    [(NSMutableDictionary *)self->_messageIdentifierToReplyRecords removeObjectForKey:identifierCopy];
    deviceIdentifier = [v10 deviceIdentifier];
    v20 = [(SDActivityPayloadManager *)self idsDeviceWithUniqueID:deviceIdentifier onService:self->_activityService];
    timeoutTimer = sub_100108EE8(v20);

    advertiser = self->_advertiser;
    activityIdentifier = [v10 activityIdentifier];
    [(SDActivityAdvertiser *)advertiser didSendPayloadForActivityIdentifier:activityIdentifier toDevice:timeoutTimer error:errorCopy];

LABEL_21:
    goto LABEL_22;
  }

  if (v14 && errorCopy)
  {
    [v14 setError:errorCopy];
    timeoutTimer = [v14 timeoutTimer];
    [timeoutTimer fire];
    goto LABEL_21;
  }

LABEL_22:
}

- (id)dataFromUUID:(id)d
{
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)requestFromProtobufData:(id)data
{
  v7 = 0;
  v8 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:data options:0 format:&v8 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = handoff_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100170F10();
    }
  }

  return v3;
}

- (id)protobufDataFromRequest:(id)request
{
  requestCopy = request;
  v4 = [&off_10090EA60 mutableCopy];
  [v4 addEntriesFromDictionary:requestCopy];

  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = handoff_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100170F78();
    }
  }

  return v5;
}

- (void)setDecryptionKeyDataRepresentation:(id)representation forDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (representation)
  {
    representationCopy = representation;
    v7 = +[SDActivityEncryptionManager sharedEncryptionManager];
    v8 = [v7 newDecryptionKeyFromDataRepresentation:representationCopy];

    v9 = [v7 decryptionKeyForDeviceIdentifier:identifierCopy];
    dateCreated = [v9 dateCreated];
    dateCreated2 = [v8 dateCreated];
    [dateCreated timeIntervalSinceDate:dateCreated2];
    v13 = v12;

    keyIdentifier = [v9 keyIdentifier];
    keyIdentifier2 = [v8 keyIdentifier];
    v16 = [keyIdentifier isEqual:keyIdentifier2];

    if (v16)
    {
      lastUsedCounter = [v9 lastUsedCounter];
      v18 = lastUsedCounter < [v8 lastUsedCounter];
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v18 = 0;
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    v20 = v13 < 0.0 || v9 == 0;
    if (v20 || v18)
    {
      v21 = +[SDActivityEncryptionManager sharedEncryptionManager];
      [v21 setDecryptionKey:v8 forDeviceIdentifier:identifierCopy];
LABEL_16:

      goto LABEL_17;
    }

LABEL_14:
    v21 = handoff_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100170FE4();
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (id)createRapportClientWithDestinationDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  if (!sub_10000C1F8(@"ContinuityRapportDisableBLEDiscovery", 0))
  {
    [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 2}];
  }

  if (sub_10000C1F8(@"ContinuityRapportForceL2CAP", 0))
  {
    [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 0x100}];
  }

  [v4 setDestinationDevice:deviceCopy];
  if (deviceCopy)
  {
    [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 0x8000000000000}];
  }

  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SDActivityPayloadManager createRapportClientWithDestinationDevice:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s creating client: %@", &v7, 0x16u);
  }

  return v4;
}

- (void)sendActivityPayloadWithAdvertisementData:(id)data forAdvertisementPayload:(id)payload activityIdentifier:(id)identifier activityPayload:(id)activityPayload
{
  v44 = a2;
  dataCopy = data;
  payloadCopy = payload;
  identifierCopy = identifier;
  activityPayloadCopy = activityPayload;
  selfCopy = self;
  devices = [(IDSService *)self->_activityService devices];
  firstObject = [devices firstObject];
  uniqueIDOverride = [firstObject uniqueIDOverride];

  v15 = handoff_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v42 = [activityPayloadCopy length];
    v43 = SFHexStringForData();
    *buf = 67109634;
    *v61 = v42;
    *&v61[4] = 2112;
    *&v61[6] = identifierCopy;
    *&v61[14] = 2112;
    *&v61[16] = v43;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Got payload to send of size %d with activityIdentifier:%@ for advertisementPayload:%@", buf, 0x1Cu);
  }

  v47 = payloadCopy;

  v16 = objc_opt_new();
  [v16 setObject:dataCopy forKeyedSubscript:@"rAdvData"];
  if (activityPayloadCopy)
  {
    [v16 setObject:activityPayloadCopy forKeyedSubscript:@"rActPayload"];
  }

  v48 = activityPayloadCopy;
  v46 = v16;
  v49 = [(SDActivityPayloadManager *)selfCopy protobufDataFromRequest:v16, v44];
  v17 = objc_alloc_init(NSMutableSet);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  devices2 = [(IDSService *)selfCopy->_activityService devices];
  v19 = [devices2 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v56;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(devices2);
        }

        v23 = *(*(&v55 + 1) + 8 * i);
        nsuuid = [v23 nsuuid];

        if (nsuuid)
        {
          v25 = IDSCopyForDevice();
          if (v25)
          {
            [v17 addObject:v25];
          }

          else
          {
            v26 = handoff_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *v61 = identifierCopy;
              *&v61[8] = 2112;
              *&v61[10] = v23;
              _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Not sending %@ to device as we could not get deviceID: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v25 = handoff_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *v61 = identifierCopy;
            *&v61[8] = 2112;
            *&v61[10] = v23;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Not sending %@ to device as it has no nsuuid/BTUUID: %@", buf, 0x16u);
          }
        }
      }

      v20 = [devices2 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v20);
  }

  if (!v17)
  {
    sub_100171050(v45, selfCopy);
  }

  v27 = objc_opt_new();
  v28 = objc_opt_new();
  [v28 setMessageIdentifier:v27];
  [v28 setRequestIdentifier:0];
  [v28 setActivityIdentifier:identifierCopy];
  [v28 setDeviceIdentifier:uniqueIDOverride];
  [(NSMutableDictionary *)selfCopy->_messageIdentifierToReplyRecords setObject:v28 forKeyedSubscript:v27];
  v29 = handoff_log();
  v30 = v48;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = @"final ";
    if (!v48)
    {
      v31 = &stru_1008EFBD0;
    }

    *buf = 138412290;
    *v61 = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Sending Handoff %@advertisement", buf, 0xCu);
  }

  v32 = handoff_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_1001710B4();
  }

  v33 = objc_opt_new();
  v34 = [(SDActivityPayloadManager *)selfCopy dataFromUUID:v27];
  [v33 setObject:v34 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

  [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionActivityContinuationKey];
  [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
  [v33 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  if (!v48)
  {
    [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
  }

  v35 = [[IDSProtobuf alloc] initWithProtobufData:v49 type:3 isResponse:0];
  activityService = selfCopy->_activityService;
  v53 = 0;
  v54 = 0;
  v37 = [(IDSService *)activityService sendProtobuf:v35 toDestinations:v17 priority:300 options:v33 identifier:&v54 error:&v53];
  v38 = v54;
  v39 = v53;
  if ((v37 & 1) == 0)
  {
    v40 = selfCopy->_activityService;
    uUIDString = [v27 UUIDString];
    [(SDActivityPayloadManager *)selfCopy service:v40 account:0 identifier:uUIDString didSendWithSuccess:0 error:v39];

    v30 = v48;
  }
}

- (void)handleNewAdvertisementWithpayloadRequestProtobuf:(id)protobuf service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  serviceCopy = service;
  data = [protobuf data];
  v13 = [(SDActivityPayloadManager *)self requestFromProtobufData:data];

  v14 = [serviceCopy deviceForFromID:dCopy];

  uniqueIDOverride = [v14 uniqueIDOverride];
  v16 = [v13 objectForKeyedSubscript:@"rAdvData"];
  scanner = self->_scanner;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10016FE80;
  v21[3] = &unk_1008D1DD0;
  v22 = v13;
  selfCopy = self;
  v24 = uniqueIDOverride;
  v25 = v14;
  v18 = v14;
  v19 = uniqueIDOverride;
  v20 = v13;
  [(SDActivityScanner *)scanner handleNewAdvertisementDevice:v18 data:v16 receivedViaScanning:0 withSuccessHandler:v21];
}

@end