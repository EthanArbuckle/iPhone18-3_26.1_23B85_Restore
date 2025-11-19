@interface SDActivityPayloadManager
+ (id)sharedPayloadManager;
- (NSString)state;
- (SDActivityPayloadManager)init;
- (id)createRapportClientWithDestinationDevice:(id)a3;
- (id)dataFromUUID:(id)a3;
- (id)idsDeviceWithUniqueID:(id)a3 onService:(id)a4;
- (id)protobufDataFromRequest:(id)a3;
- (id)requestFromProtobufData:(id)a3;
- (void)activityPayloadReplySuccess:(id)a3;
- (void)clearPersistedKeyRequests;
- (void)handleEncryptionKeyReplyRapport:(id)a3 options:(id)a4 forRequestRecord:(id)a5 fromDevice:(id)a6;
- (void)handleEncryptionKeyReplyRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleEncryptionKeyRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleEncryptionKeyRequestRapport:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)handleEncyptionKeyRequest:(id)a3 fromIDSDevice:(id)a4 withRequestIdentifier:(id)a5 transportType:(id)a6 completionHandler:(id)a7;
- (void)handleNewAdvertisementWithpayloadRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handlePayloadReplyProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handlePayloadReplyRapport:(id)a3 options:(id)a4 forRequestRecord:(id)a5 fromDevice:(id)a6;
- (void)handlePayloadRequest:(id)a3 fromIDSDevice:(id)a4 withRequestIdentifier:(id)a5 transportType:(id)a6 completionHandler:(id)a7;
- (void)handlePayloadRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handlePayloadRequestRapport:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)messageWithIdentifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5;
- (void)requestTimedOut:(id)a3;
- (void)sendActivityPayloadRequestMessageToDevice:(id)a3 withRequestRecord:(id)a4 withDestinationDevice:(id)a5 completionHandler:(id)a6;
- (void)sendActivityPayloadRequestToDeviceIdentifier:(id)a3 withAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 completionHandler:(id)a7;
- (void)sendActivityPayloadWithAdvertisementData:(id)a3 forAdvertisementPayload:(id)a4 activityIdentifier:(id)a5 activityPayload:(id)a6;
- (void)sendEncryptionKeyReplyRequestToDevice:(id)a3 reply:(id)a4 requestIdentifier:(id)a5;
- (void)sendEncryptionKeyRequestToDeviceIdentifier:(id)a3 previousKeyIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendIDSActivityPayloadReply:(id)a3 withReplyRecord:(id)a4;
- (void)sendIDSActivityPayloadRequest:(id)a3 withRequestRecord:(id)a4 desiredTimeout:(double)a5;
- (void)sendIDSEncryptionKeyRequest:(id)a3 withRequestRecord:(id)a4 desiredTimeout:(double)a5;
- (void)sendRapportActivityPayloadRequest:(id)a3 withRequestRecord:(id)a4 completionHandler:(id)a5;
- (void)sendRapportEncryptionKeyRequest:(id)a3 withRequestRecord:(id)a4 completionHandler:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setDecryptionKeyDataRepresentation:(id)a3 forDeviceIdentifier:(id)a4;
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
  v9 = [(IDSService *)activityService devices];
  v10 = [v9 valueForKeyPath:@"@unionOfObjects.uniqueIDOverride"];
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

- (id)idsDeviceWithUniqueID:(id)a3 onService:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 devices];
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
        v11 = [v10 uniqueIDOverride];
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

- (void)requestTimedOut:(id)a3
{
  v4 = [a3 userInfo];
  p_messageIdentifierToRequestRecords = &self->_messageIdentifierToRequestRecords;
  v6 = [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords objectForKeyedSubscript:v4];
  p_messageIdentifierToKeyRequestRecords = &self->_messageIdentifierToKeyRequestRecords;
  v8 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords objectForKeyedSubscript:v4];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100168A94;
  v28 = &unk_1008D1BC8;
  v29 = self;
  v9 = v4;
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
    v13 = [v12 error];

    if (v13)
    {
      v14 = [v12 error];
      v15 = [v14 userInfo];
      v16 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v16)
      {
        do
        {
          v17 = [v14 userInfo];
          v18 = [v17 objectForKeyedSubscript:NSUnderlyingErrorKey];

          v19 = [v18 userInfo];
          v20 = [v19 objectForKeyedSubscript:NSUnderlyingErrorKey];

          v14 = v18;
        }

        while (v20);
      }

      else
      {
        v18 = v14;
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

- (void)sendEncryptionKeyRequestToDeviceIdentifier:(id)a3 previousKeyIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = self;
  v11 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords allValues];
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [v16 deviceIdentifier];
        v18 = [v17 isEqual:v8];

        if (v18)
        {
          v22 = v10;
          [v16 setCompletionHandler:v10];
          v25 = handoff_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            sub_100170290();
          }

          v21 = v9;
          goto LABEL_19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = +[SDAutoUnlockSessionManager sharedManager];
  v20 = [v19 attemptInProgress];

  if (v20)
  {
    v11 = handoff_log();
    v21 = v9;
    v22 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v51 = v24;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Preventing encryption key request - Auto Unlock in progress", buf, 0xCu);
    }
  }

  else
  {
    v11 = objc_opt_new();
    v26 = objc_opt_new();
    [v26 setRequestIdentifier:v11];
    [v26 setDeviceIdentifier:v8];
    v22 = v10;
    [v26 setCompletionHandler:v10];
    v21 = v9;
    [v26 setPreviousKeyIdentifier:v9];
    v27 = [v26 requestIdentifier];
    v28 = [NSTimer timerWithTimeInterval:v39 target:"requestTimedOut:" selector:v27 userInfo:0 repeats:16.0];
    [v26 setTimeoutTimer:v28];

    [v26 setTimeoutTimeInterval:15];
    [(NSMutableDictionary *)v39->_messageIdentifierToKeyRequestRecords setObject:v26 forKeyedSubscript:v11];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001690B4;
    block[3] = &unk_1008CDEA0;
    v29 = v26;
    v45 = v29;
    dispatch_async(&_dispatch_main_q, block);
    v30 = objc_opt_new();
    v31 = [v29 previousKeyIdentifier];
    v32 = [v31 UUIDString];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = &stru_1008EFBD0;
    }

    [v30 setObject:v34 forKeyedSubscript:@"rKeyPreviousIdentifier"];

    v35 = +[SDActivityEncryptionManager sharedEncryptionManager];
    v36 = [v35 dataRepresentationForCurrentEncryptionKey];
    [v30 setObject:v36 forKeyedSubscript:@"rKeyDataRepresentation"];

    [v30 setObject:&__kCFBooleanTrue forKeyedSubscript:@"rLocalOnly"];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100169130;
    v40[3] = &unk_1008D1BF0;
    v41 = v29;
    v42 = v39;
    v43 = v30;
    v37 = v30;
    v38 = v29;
    [(SDActivityPayloadManager *)v39 sendRapportEncryptionKeyRequest:v37 withRequestRecord:v38 completionHandler:v40];
  }

LABEL_19:
}

- (void)sendRapportEncryptionKeyRequest:(id)a3 withRequestRecord:(id)a4 completionHandler:(id)a5
{
  v29 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
  v11 = [v8 deviceIdentifier];
  v12 = [NSPredicate predicateWithFormat:@"idsDeviceIdentifier == %@", v11];
  v13 = [v10 filteredArrayUsingPredicate:v12];
  v14 = [v13 firstObject];

  if (v14)
  {
    v15 = [v8 timeoutTimeInterval];
    v16 = 5;
    if (v15 < 5)
    {
      v16 = v15;
    }

    v28 = v16;
    v17 = handoff_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v14 name];
      v19 = [v8 deviceIdentifier];
      v20 = [v8 requestIdentifier];
      v21 = [v20 UUIDString];
      *buf = 138413058;
      v38 = v18;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v21;
      v43 = 1024;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requesting Encryption key via Rapport from %@ %@ with message GUID: %@ and timeout: %d", buf, 0x26u);
    }

    v22 = handoff_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10017032C();
    }

    v23 = [v8 linkClient];

    if (v23)
    {
      v24 = [v8 linkClient];
      [v24 invalidate];

      [v8 setLinkClient:0];
    }

    v25 = [(SDActivityPayloadManager *)self createRapportClientWithDestinationDevice:v14];
    [v8 setLinkClient:v25];

    objc_initWeak(buf, v8);
    v26 = [v8 linkClient];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001695EC;
    v30[3] = &unk_1008D1C40;
    objc_copyWeak(&v35, buf);
    v36 = v28;
    v31 = v29;
    v32 = self;
    v33 = v14;
    v34 = v9;
    [v26 activateWithCompletion:v30];

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
        v38 = v8;
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cannot send Handoff encryption key request %@ via Rapport as we found no devices in %@", buf, 0x16u);
      }
    }

    (*(v9 + 2))(v9, 0);
  }
}

- (void)sendIDSEncryptionKeyRequest:(id)a3 withRequestRecord:(id)a4 desiredTimeout:(double)a5
{
  v8 = a4;
  v9 = [(SDActivityPayloadManager *)self protobufDataFromRequest:a3];
  v10 = [v8 deviceIdentifier];
  p_encryptionService = &self->_encryptionService;
  v51 = self;
  v12 = [(SDActivityPayloadManager *)self idsDeviceWithUniqueID:v10 onService:self->_encryptionService];

  v13 = objc_opt_new();
  if (v12)
  {
    v48 = v9;
    v14 = *p_encryptionService;
    v15 = [v12 nsuuid];
    v16 = [v14 devicesForBTUUID:v15];

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
        v21 = v8;
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
            v8 = v21;
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
            v27 = [*p_encryptionService devices];
            *buf = 138412546;
            v61 = v24;
            v62 = 2112;
            v63 = v27;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Encryption key: No device ID generated for device %@ (Devices: %@)", buf, 0x16u);
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v54 objects:v68 count:16];
        v12 = v22;
        v8 = v21;
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
      v31 = [v12 name];
      v32 = [v8 deviceIdentifier];
      v33 = [v8 requestIdentifier];
      v34 = [v33 UUIDString];
      *buf = 138413058;
      v61 = v31;
      v62 = 2112;
      v63 = v32;
      v64 = 2112;
      v65 = v34;
      v66 = 2048;
      v67 = a5;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Requesting Encryption key via IDS from %@ %@ with message GUID: %@ and timeout: %f", buf, 0x2Au);
    }

    v49 = v12;

    v35 = handoff_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_1001704BC();
    }

    v36 = objc_opt_new();
    v37 = [v8 requestIdentifier];
    v38 = [(SDActivityPayloadManager *)v51 dataFromUUID:v37];
    [v36 setObject:v38 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
    [v36 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    v39 = [NSNumber numberWithDouble:a5];
    [v36 setObject:v39 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v40 = [[IDSProtobuf alloc] initWithProtobufData:v9 type:4 isResponse:0];
    encryptionService = v51->_encryptionService;
    v52 = 0;
    v53 = 0;
    v42 = [(IDSService *)encryptionService sendProtobuf:v40 toDestinations:v13 priority:300 options:v36 identifier:&v53 error:&v52];
    v43 = v53;
    v44 = v52;
    [v8 requestIdentifier];
    v46 = v45 = v9;
    [(SDActivityPayloadManager *)v51 messageWithIdentifier:v46 didSendWithSuccess:v42 error:v44];

    v9 = v45;
    v12 = v49;
  }

  else
  {
    v58 = NSLocalizedDescriptionKey;
    v59 = @"Failed to find device to request encryption key from";
    v47 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:v47];

    v36 = [v8 requestIdentifier];
    [(SDActivityPayloadManager *)v51 messageWithIdentifier:v36 didSendWithSuccess:0 error:v43];
  }
}

- (void)sendEncryptionKeyReplyRequestToDevice:(id)a3 reply:(id)a4 requestIdentifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  v38 = [v7 uniqueIDOverride];
  v9 = objc_opt_new();
  v10 = +[SDActivityEncryptionManager sharedEncryptionManager];
  v11 = [v10 dataRepresentationForCurrentEncryptionKey];
  [v9 setObject:v11 forKeyedSubscript:@"rKeyDataRepresentation"];

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
      [v7 name];
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

    [v19 setObject:v8 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
    [v19 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    [v19 setObject:&off_10090BDF0 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v21 = [[IDSProtobuf alloc] initWithProtobufData:v12 type:5 isResponse:1];
    encryptionService = self->_encryptionService;
    v39 = 0;
    v40 = 0;
    v35 = v14;
    v23 = [(IDSService *)encryptionService sendProtobuf:v21 toDestinations:v14 priority:300 options:v19 identifier:&v40 error:&v39];
    v24 = self;
    v25 = v23;
    v26 = v40;
    v27 = v39;
    if ((v25 & 1) == 0)
    {
      v28 = v24->_encryptionService;
      [v37 UUIDString];
      v34 = v12;
      v29 = v7;
      v31 = v30 = v8;
      [(SDActivityPayloadManager *)v24 service:v28 account:0 identifier:v31 didSendWithSuccess:0 error:v27];

      v8 = v30;
      v7 = v29;
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
      v33 = [(IDSService *)self->_encryptionService devices];
      *buf = 138412802;
      v42 = v38;
      v43 = 2112;
      v44 = v33;
      v45 = 2112;
      v46 = v8;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "No device ID generated for device %@ (Devices: %@) for requestIdentifier %@", buf, 0x20u);
    }
  }
}

- (void)sendActivityPayloadRequestToDeviceIdentifier:(id)a3 withAdvertisementPayload:(id)a4 command:(id)a5 timeout:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = handoff_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v36 = SFHexStringForData();
    *buf = 138413058;
    v56 = v12;
    v57 = 2112;
    v58 = v36;
    v59 = 2112;
    v60 = v14;
    v61 = 1024;
    v62 = a6;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@ %@ %@ %d", buf, 0x26u);
  }

  if ([(NSMutableArray *)self->_cachedActivityPayloadsForDemo count])
  {
    v37 = a6;
    v38 = self;
    v39 = v14;
    v40 = v13;
    v17 = v12;
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
          v23 = [v22 objectForKeyedSubscript:{@"deviceIdentifier", v37, v38}];
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

            v15[2](v15, v32, 0);
            v12 = v17;
            v14 = v39;
            v13 = v40;
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

    v12 = v17;
    v14 = v39;
    v13 = v40;
    self = v38;
    a6 = v37;
  }

  v26 = objc_opt_new();
  v52[0] = @"rAdvPayload";
  v52[1] = @"rClientCommand";
  v53[0] = v13;
  v53[1] = v14;
  v52[2] = @"rIdentifier";
  v27 = [v26 UUIDString];
  v53[2] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];

  v29 = objc_opt_new();
  [v29 setRequestIdentifier:v26];
  [v29 setDeviceIdentifier:v12];
  [v29 setCompletionHandler:v15];
  [v29 setAdvertisementPayload:v13];
  [v29 setCommand:v14];
  v30 = [NSTimer timerWithTimeInterval:self target:"requestTimedOut:" selector:v26 userInfo:0 repeats:(a6 + 1)];
  [v29 setTimeoutTimer:v30];

  [v29 setTimeoutTimeInterval:a6];
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
  v44 = self;
  v45 = v28;
  v24 = v28;
  v23 = v31;
  [(SDActivityPayloadManager *)self sendRapportActivityPayloadRequest:v24 withRequestRecord:v23 completionHandler:v42];

  v25 = v47;
LABEL_19:
}

- (void)sendRapportActivityPayloadRequest:(id)a3 withRequestRecord:(id)a4 completionHandler:(id)a5
{
  v35 = a3;
  v8 = a4;
  v36 = a5;
  v9 = handoff_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to send rapport activity payload request", buf, 2u);
  }

  v10 = +[SDStatusMonitor sharedMonitor];
  v11 = [v10 isMirroringActive];

  v12 = handoff_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
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
    v14 = [v8 deviceIdentifier];
    v15 = [NSArray arrayWithObject:v14];
    [*(*&buf[8] + 40) setDeviceFilter:v15];

    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10016B144;
    v42[3] = &unk_1008D1C90;
    v16 = v8;
    v43 = v16;
    v44 = self;
    v45 = v35;
    v17 = v36;
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

    v19 = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
    v20 = [v8 deviceIdentifier];
    v21 = [NSPredicate predicateWithFormat:@"idsDeviceIdentifier == %@", v20];
    v22 = [v19 filteredArrayUsingPredicate:v21];
    v23 = [v22 firstObject];

    if (v23)
    {
      v24 = [v8 timeoutTimeInterval];
      v25 = handoff_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v24 >= 5)
        {
          v26 = 5;
        }

        else
        {
          v26 = v24;
        }

        v27 = [v8 advertisementPayload];
        v28 = SFHexStringForData();
        v29 = [v8 requestIdentifier];
        v30 = [v29 UUIDString];
        *buf = 138412802;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        *&buf[22] = 1024;
        LODWORD(v52) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Requesting Handoff payload via Rapport for %@ with message GUID: %@ and timeout: %d", buf, 0x1Cu);
      }

      v31 = handoff_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100170524();
      }

      v32 = [v8 linkClient];

      if (v32)
      {
        v33 = [v8 linkClient];
        [v33 invalidate];

        [v8 setLinkClient:0];
      }

      [(SDActivityPayloadManager *)self sendActivityPayloadRequestMessageToDevice:v35 withRequestRecord:v8 withDestinationDevice:v23 completionHandler:v36];
    }

    else
    {
      if (self->_rapportDiscoveryClient)
      {
        v34 = handoff_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Cannot send Handoff payload request %@ via Rapport as we found no devices in %@", buf, 0x16u);
        }
      }

      (*(v36 + 2))(v36, 0);
    }
  }
}

- (void)sendActivityPayloadRequestMessageToDevice:(id)a3 withRequestRecord:(id)a4 withDestinationDevice:(id)a5 completionHandler:(id)a6
{
  v28 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 timeoutTimeInterval];
  if (v13 >= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = v13;
  }

  v15 = handoff_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 advertisementPayload];
    v17 = SFHexStringForData();
    v18 = [v10 requestIdentifier];
    v19 = [v18 UUIDString];
    *buf = 138412802;
    v37 = v17;
    v38 = 2112;
    v39 = v19;
    v40 = 1024;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requesting Handoff payload via Rapport for %@ with message GUID: %@ and timeout: %d", buf, 0x1Cu);
  }

  v20 = handoff_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100170524();
  }

  v21 = [v10 linkClient];

  if (v21)
  {
    v22 = [v10 linkClient];
    [v22 invalidate];

    [v10 setLinkClient:0];
  }

  v23 = [(SDActivityPayloadManager *)self createRapportClientWithDestinationDevice:v11];
  [v10 setLinkClient:v23];

  objc_initWeak(buf, v10);
  v24 = [v10 linkClient];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10016B8C8;
  v29[3] = &unk_1008D1C40;
  objc_copyWeak(&v34, buf);
  v35 = v14;
  v25 = v28;
  v30 = v25;
  v31 = self;
  v26 = v11;
  v32 = v26;
  v27 = v12;
  v33 = v27;
  [v24 activateWithCompletion:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

- (void)sendIDSActivityPayloadRequest:(id)a3 withRequestRecord:(id)a4 desiredTimeout:(double)a5
{
  v8 = a4;
  v9 = [(SDActivityPayloadManager *)self protobufDataFromRequest:a3];
  v10 = [v8 deviceIdentifier];
  v11 = [(SDActivityPayloadManager *)self idsDeviceWithUniqueID:v10 onService:self->_activityService];

  v12 = objc_opt_new();
  v46 = v11;
  if (v11)
  {
    v45 = v9;
    activityService = self->_activityService;
    v14 = [v11 nsuuid];
    v15 = [(IDSService *)activityService devicesForBTUUID:v14];

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
            v24 = [(IDSService *)self->_encryptionService devices];
            *buf = 138412546;
            v56 = v21;
            v57 = 2112;
            v58 = v24;
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
      v28 = [v8 advertisementPayload];
      v29 = SFHexStringForData();
      v30 = [v8 requestIdentifier];
      v31 = [v30 UUIDString];
      v32 = [v8 timeoutTimeInterval];
      *buf = 138412802;
      v56 = v29;
      v57 = 2112;
      v58 = v31;
      v59 = 1024;
      v60 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Requesting Handoff payload via IDS for %@ with message GUID: %@ and timeout: %d", buf, 0x1Cu);
    }

    v33 = handoff_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_10017070C();
    }

    v34 = objc_opt_new();
    v35 = [v8 requestIdentifier];
    v36 = [(SDActivityPayloadManager *)self dataFromUUID:v35];
    [v34 setObject:v36 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
    v37 = [NSNumber numberWithDouble:a5];
    [v34 setObject:v37 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionActivityContinuationKey];
    [v34 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v38 = [[IDSProtobuf alloc] initWithProtobufData:v9 type:1 isResponse:0];
    kdebug_trace();
    v39 = self->_activityService;
    v47 = 0;
    v48 = 0;
    v40 = [(IDSService *)v39 sendProtobuf:v38 toDestinations:v12 priority:300 options:v34 identifier:&v48 error:&v47];
    v41 = v48;
    v42 = v47;
    v43 = [v8 requestIdentifier];
    [(SDActivityPayloadManager *)self messageWithIdentifier:v43 didSendWithSuccess:v40 error:v42];
  }

  else
  {
    v53 = NSLocalizedDescriptionKey;
    v54 = @"Failed to find device to request activity payload from";
    v44 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:v44];

    v34 = [v8 requestIdentifier];
    [(SDActivityPayloadManager *)self messageWithIdentifier:v34 didSendWithSuccess:0 error:v41];
  }
}

- (void)handleEncyptionKeyRequest:(id)a3 fromIDSDevice:(id)a4 withRequestIdentifier:(id)a5 transportType:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a4 uniqueIDOverride];
  v17 = [v12 objectForKeyedSubscript:@"rKeyDataRepresentation"];
  [(SDActivityPayloadManager *)self setDecryptionKeyDataRepresentation:v17 forDeviceIdentifier:v16];
  v18 = [(NSMutableDictionary *)self->_uniqueIDToKeyReplyDate objectForKeyedSubscript:v16];
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
      v32 = v16;
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v29;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Ignoring request from %@ via %@ for key with requestIdentifier %@ as we replied only %@ ago", buf, 0x2Au);
    }
  }

  else
  {
    v22 = objc_opt_new();
    [(NSMutableDictionary *)self->_uniqueIDToKeyReplyDate setObject:v22 forKeyedSubscript:v16];

    v30 = [v12 objectForKeyedSubscript:@"rKeyPreviousIdentifier"];
    v23 = objc_opt_new();
    v24 = +[SDActivityEncryptionManager sharedEncryptionManager];
    [v24 dataRepresentationForCurrentEncryptionKey];
    v25 = v15;
    v26 = v14;
    v28 = v27 = v13;
    [v23 setObject:v28 forKeyedSubscript:@"rKeyDataRepresentation"];

    v13 = v27;
    v14 = v26;
    v15 = v25;

    v25[2](v25, v23);
  }
}

- (void)handleEncryptionKeyRequestRapport:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (RPOptionSenderIDSDeviceID)
  {
    v11 = RPOptionSenderIDSDeviceID;
  }

  else
  {
    v11 = @"senderIDS";
  }

  v12 = [v9 objectForKeyedSubscript:v11];
  if (!v12)
  {
    v16 = 0;
LABEL_11:
    v21 = NSErrorWithOSStatusF();
    (*(v10 + 2))(v10, 0, 0, v21);

    goto LABEL_12;
  }

  v13 = [(IDSService *)self->_activityService devices];
  v14 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v12];
  v15 = [v13 filteredArrayUsingPredicate:v14];
  v16 = [v15 firstObject];

  if (!v8 || !v16)
  {
    goto LABEL_11;
  }

  v17 = [v8 objectForKeyedSubscript:@"rIdentifier"];
  v18 = handoff_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v16 name];
    v20 = [v9 objectForKeyedSubscript:RPOptionXID];
    *buf = 138412802;
    v26 = v19;
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
  v16 = v16;
  v23 = v16;
  v24 = v10;
  [(SDActivityPayloadManager *)self handleEncyptionKeyRequest:v8 fromIDSDevice:v16 withRequestIdentifier:v17 transportType:@"Rapport" completionHandler:v22];

LABEL_12:
}

- (void)handleEncryptionKeyRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a6;
  v11 = a7;
  encryptionService = self->_encryptionService;
  v13 = a3;
  v14 = [(IDSService *)encryptionService deviceForFromID:v10];
  v15 = [v13 data];

  v16 = [(SDActivityPayloadManager *)self requestFromProtobufData:v15];

  if (v14 && v16)
  {
    v17 = [v11 outgoingResponseIdentifier];
    v18 = handoff_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 name];
      *buf = 138412546;
      v25 = v19;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received Handoff encryption key request from %@ via IDS with requestIdentifier %@", buf, 0x16u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10016CC04;
    v21[3] = &unk_1008D1D30;
    v21[4] = self;
    v22 = v14;
    v23 = v17;
    v20 = v17;
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

- (void)handleEncryptionKeyReplyRapport:(id)a3 options:(id)a4 forRequestRecord:(id)a5 fromDevice:(id)a6
{
  v10 = a4;
  v11 = a5;
  activityService = self->_activityService;
  v13 = a6;
  v14 = a3;
  v15 = [(IDSService *)activityService devices];
  v16 = [v13 idsDeviceIdentifier];

  v17 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v16];
  v18 = [v15 filteredArrayUsingPredicate:v17];
  v19 = [v18 firstObject];

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v21 = handoff_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self;
    v22 = [v19 name];
    if (Int64Ranged > 0xB)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1008D1DF0[Int64Ranged & 0xF];
    }

    v24 = [v11 requestIdentifier];
    v25 = [v10 objectForKeyedSubscript:RPOptionXID];
    *buf = 138413058;
    v28 = v22;
    v29 = 2080;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received a new Handoff encryption key from %@ via Rapport (%s) with requestIdentifier %@, xid %@", buf, 0x2Au);

    self = v26;
  }

  [(SDActivityPayloadManager *)self handleEncryptionKeyReply:v14 forRequestRecord:v11 fromDevice:v19 transportLinkType:Int64Ranged];
}

- (void)handleEncryptionKeyReplyRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  encryptionService = self->_encryptionService;
  v11 = a7;
  v12 = a3;
  v13 = [(IDSService *)encryptionService deviceForFromID:a6];
  v14 = [NSUUID alloc];
  v15 = [v11 incomingResponseIdentifier];

  v16 = [v14 initWithUUIDString:v15];
  v17 = [v12 data];

  v18 = [(SDActivityPayloadManager *)self requestFromProtobufData:v17];

  v19 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords objectForKeyedSubscript:v16];
  v20 = handoff_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v13 name];
    v22 = [v19 requestIdentifier];
    v23 = 138412546;
    v24 = v21;
    v25 = 2112;
    v26 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received a new Handoff encryption key from %@ via IDS with requestIdentifier %@", &v23, 0x16u);
  }

  [(SDActivityPayloadManager *)self handleEncryptionKeyReply:v18 forRequestRecord:v19 fromDevice:v13 transportLinkType:0xFFFFFFFFLL];
}

- (void)handlePayloadRequestRapport:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (RPOptionSenderIDSDeviceID)
  {
    v11 = RPOptionSenderIDSDeviceID;
  }

  else
  {
    v11 = @"senderIDS";
  }

  v12 = [v9 objectForKeyedSubscript:v11];
  if (!v12)
  {
    v16 = 0;
LABEL_11:
    v21 = NSErrorWithOSStatusF();
    (*(v10 + 2))(v10, 0, 0, v21);

    goto LABEL_12;
  }

  v13 = [(IDSService *)self->_activityService devices];
  v14 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v12];
  v15 = [v13 filteredArrayUsingPredicate:v14];
  v16 = [v15 firstObject];

  if (!v8 || !v16)
  {
    goto LABEL_11;
  }

  v17 = [v8 objectForKeyedSubscript:@"rIdentifier"];
  v18 = handoff_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v16 name];
    v20 = [v9 objectForKeyedSubscript:RPOptionXID];
    *buf = 138412802;
    v27 = v19;
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
  v16 = v16;
  v23 = v16;
  v24 = self;
  v25 = v10;
  [(SDActivityPayloadManager *)self handlePayloadRequest:v8 fromIDSDevice:v16 withRequestIdentifier:v17 transportType:@"Rapport" completionHandler:v22];

LABEL_12:
}

- (void)handlePayloadRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a6;
  v11 = a7;
  activityService = self->_activityService;
  v13 = a3;
  v14 = [(IDSService *)activityService deviceForFromID:v10];
  v15 = [v13 data];

  v16 = [(SDActivityPayloadManager *)self requestFromProtobufData:v15];

  if (v14 && v16)
  {
    v17 = [v11 outgoingResponseIdentifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10016D7E4;
    v18[3] = &unk_1008D1D80;
    v18[4] = self;
    [(SDActivityPayloadManager *)self handlePayloadRequest:v16 fromIDSDevice:v14 withRequestIdentifier:v17 transportType:@"IDS" completionHandler:v18];
  }

  else
  {
    v17 = handoff_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100170AC8();
    }
  }
}

- (void)handlePayloadRequest:(id)a3 fromIDSDevice:(id)a4 withRequestIdentifier:(id)a5 transportType:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = [v12 uniqueIDOverride];
  v18 = objc_opt_new();
  v37 = sub_100108EE8(v12);
  v19 = [v16 objectForKeyedSubscript:@"rAdvPayload"];
  v20 = [v16 objectForKeyedSubscript:@"rClientCommand"];

  v21 = handoff_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [v12 name];
    v22 = v36 = self;
    v34 = v15;
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
    v49 = v14;
    v50 = 2112;
    v51 = v22;
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = v13;
    v56 = 2112;
    v57 = v23;
    v15 = v34;
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
  v40 = v14;
  v41 = v12;
  v42 = v17;
  v43 = v13;
  v44 = v19;
  v45 = v20;
  v46 = self;
  v47 = v15;
  v26 = v15;
  v27 = v20;
  v28 = v19;
  v29 = v13;
  v30 = v17;
  v31 = v12;
  v32 = v14;
  v33 = v18;
  [(SDActivityAdvertiser *)advertiser activityPayloadForAdvertisementPayload:v28 command:v27 requestedByDevice:v37 withCompletionHandler:v38];
}

- (void)sendIDSActivityPayloadReply:(id)a3 withReplyRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSService *)self->_activityService devices];
  v9 = [v7 deviceIdentifier];
  v10 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v9];
  v11 = [v8 filteredArrayUsingPredicate:v10];
  v12 = [v11 firstObject];

  v13 = IDSCopyForDevice();
  if (v13)
  {
    v14 = [NSSet setWithObject:v13];
    v15 = [(SDActivityPayloadManager *)self protobufDataFromRequest:v6];
    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 name];
      *buf = 138412290;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Responding to Handoff payload request from %@ via IDS", buf, 0xCu);
    }

    v18 = handoff_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1001709F8();
    }

    v32 = v12;
    v33 = v6;

    v19 = handoff_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100170A60();
    }

    v20 = objc_opt_new();
    v21 = [v7 messageIdentifier];
    v22 = [(SDActivityPayloadManager *)self dataFromUUID:v21];
    [v20 setObject:v22 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

    v23 = [v7 requestIdentifier];
    v24 = [v23 UUIDString];
    [v20 setObject:v24 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

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
      [(SDActivityPayloadManager *)self activityPayloadReplySuccess:v7];
    }

    else
    {
      v31 = [v7 messageIdentifier];
      [(SDActivityPayloadManager *)self messageWithIdentifier:v31 didSendWithSuccess:0 error:v30];
    }

    v6 = v33;

    v12 = v32;
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

- (void)activityPayloadReplySuccess:(id)a3
{
  v3 = a3;
  v4 = [v3 activityIdentifier];

  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v9 = @"SDStreamActivityIdentifier";
    v6 = [v3 activityIdentifier];
    v7 = [v6 UUIDString];
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"com.apple.sharingd.ContinuationPayloadSent" object:0 userInfo:v8];
  }
}

- (void)handlePayloadReplyRapport:(id)a3 options:(id)a4 forRequestRecord:(id)a5 fromDevice:(id)a6
{
  v10 = a4;
  v11 = a5;
  activityService = self->_activityService;
  v13 = a6;
  v14 = a3;
  v15 = [(IDSService *)activityService devices];
  v16 = [v13 idsDeviceIdentifier];

  v17 = [NSPredicate predicateWithFormat:@"uniqueIDOverride == %@", v16];
  v18 = [v15 filteredArrayUsingPredicate:v17];
  v19 = [v18 firstObject];

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v21 = handoff_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self;
    v22 = [v19 name];
    if (Int64Ranged > 0xB)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1008D1DF0[Int64Ranged & 0xF];
    }

    v24 = [v11 requestIdentifier];
    v25 = [v10 objectForKeyedSubscript:RPOptionXID];
    *buf = 138413058;
    v28 = v22;
    v29 = 2080;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received Handoff payload reply from %@ via Rapport (%s) with requestIdentifier %@, xid %@", buf, 0x2Au);

    self = v26;
  }

  [(SDActivityPayloadManager *)self handlePayloadReply:v14 forRequestRecord:v11 fromDevice:v19 transportLinkType:Int64Ranged];
}

- (void)handlePayloadReplyProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(IDSService *)self->_activityService deviceForFromID:a6];
  if (v12)
  {
    v13 = [NSUUID alloc];
    v14 = [v11 incomingResponseIdentifier];
    v15 = [v13 initWithUUIDString:v14];

    v16 = [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords objectForKeyedSubscript:v15];
    v17 = [v10 data];
    v18 = [(SDActivityPayloadManager *)self requestFromProtobufData:v17];

    v19 = handoff_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v12 name];
      v21 = [v16 requestIdentifier];
      v22 = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received Handoff payload reply from %@ via IDS with requestIdentifier %@", &v22, 0x16u);
    }

    [(SDActivityPayloadManager *)self handlePayloadReply:v18 forRequestRecord:v16 fromDevice:v12 transportLinkType:0xFFFFFFFFLL];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a5;
  v9 = a7;
  v10 = handoff_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100170DD4();
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v7 = a7;
  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100170E40();
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6
{
  v6 = a5;
  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100170EA8();
  }
}

- (void)messageWithIdentifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_messageIdentifierToReplyRecords objectForKeyedSubscript:v8];
  v11 = [(NSMutableDictionary *)self->_messageIdentifierToRequestRecords objectForKeyedSubscript:v8];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_messageIdentifierToKeyRequestRecords objectForKeyedSubscript:v8];
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
      v16 = v8;
    }

    if (v10)
    {
      v16 = v10;
    }

    v17 = @"NO";
    *buf = 138412802;
    v27 = v16;
    v28 = 2112;
    if (v6)
    {
      v17 = @"YES";
    }

    v29 = v17;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ %@ (%@)", buf, 0x20u);
  }

  if (!v9 && !v6)
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Unknown Error";
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v18];
  }

  if (v10)
  {
    [(NSMutableDictionary *)self->_messageIdentifierToReplyRecords removeObjectForKey:v8];
    v19 = [v10 deviceIdentifier];
    v20 = [(SDActivityPayloadManager *)self idsDeviceWithUniqueID:v19 onService:self->_activityService];
    v21 = sub_100108EE8(v20);

    advertiser = self->_advertiser;
    v23 = [v10 activityIdentifier];
    [(SDActivityAdvertiser *)advertiser didSendPayloadForActivityIdentifier:v23 toDevice:v21 error:v9];

LABEL_21:
    goto LABEL_22;
  }

  if (v14 && v9)
  {
    [v14 setError:v9];
    v21 = [v14 timeoutTimer];
    [v21 fire];
    goto LABEL_21;
  }

LABEL_22:
}

- (id)dataFromUUID:(id)a3
{
  v5[0] = 0;
  v5[1] = 0;
  [a3 getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)requestFromProtobufData:(id)a3
{
  v7 = 0;
  v8 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:&v8 error:&v7];
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

- (id)protobufDataFromRequest:(id)a3
{
  v3 = a3;
  v4 = [&off_10090EA60 mutableCopy];
  [v4 addEntriesFromDictionary:v3];

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

- (void)setDecryptionKeyDataRepresentation:(id)a3 forDeviceIdentifier:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = a3;
    v7 = +[SDActivityEncryptionManager sharedEncryptionManager];
    v8 = [v7 newDecryptionKeyFromDataRepresentation:v6];

    v9 = [v7 decryptionKeyForDeviceIdentifier:v5];
    v10 = [v9 dateCreated];
    v11 = [v8 dateCreated];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    v14 = [v9 keyIdentifier];
    v15 = [v8 keyIdentifier];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v17 = [v9 lastUsedCounter];
      v18 = v17 < [v8 lastUsedCounter];
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
      [v21 setDecryptionKey:v8 forDeviceIdentifier:v5];
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

- (id)createRapportClientWithDestinationDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (!sub_10000C1F8(@"ContinuityRapportDisableBLEDiscovery", 0))
  {
    [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 2}];
  }

  if (sub_10000C1F8(@"ContinuityRapportForceL2CAP", 0))
  {
    [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 0x100}];
  }

  [v4 setDestinationDevice:v3];
  if (v3)
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

- (void)sendActivityPayloadWithAdvertisementData:(id)a3 forAdvertisementPayload:(id)a4 activityIdentifier:(id)a5 activityPayload:(id)a6
{
  v44 = a2;
  v10 = a3;
  v11 = a4;
  v52 = a5;
  v12 = a6;
  v50 = self;
  v13 = [(IDSService *)self->_activityService devices];
  v14 = [v13 firstObject];
  v51 = [v14 uniqueIDOverride];

  v15 = handoff_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v42 = [v12 length];
    v43 = SFHexStringForData();
    *buf = 67109634;
    *v61 = v42;
    *&v61[4] = 2112;
    *&v61[6] = v52;
    *&v61[14] = 2112;
    *&v61[16] = v43;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Got payload to send of size %d with activityIdentifier:%@ for advertisementPayload:%@", buf, 0x1Cu);
  }

  v47 = v11;

  v16 = objc_opt_new();
  [v16 setObject:v10 forKeyedSubscript:@"rAdvData"];
  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:@"rActPayload"];
  }

  v48 = v12;
  v46 = v16;
  v49 = [(SDActivityPayloadManager *)v50 protobufDataFromRequest:v16, v44];
  v17 = objc_alloc_init(NSMutableSet);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v18 = [(IDSService *)v50->_activityService devices];
  v19 = [v18 countByEnumeratingWithState:&v55 objects:v59 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v55 + 1) + 8 * i);
        v24 = [v23 nsuuid];

        if (v24)
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
              *v61 = v52;
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
            *v61 = v52;
            *&v61[8] = 2112;
            *&v61[10] = v23;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Not sending %@ to device as it has no nsuuid/BTUUID: %@", buf, 0x16u);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v20);
  }

  if (!v17)
  {
    sub_100171050(v45, v50);
  }

  v27 = objc_opt_new();
  v28 = objc_opt_new();
  [v28 setMessageIdentifier:v27];
  [v28 setRequestIdentifier:0];
  [v28 setActivityIdentifier:v52];
  [v28 setDeviceIdentifier:v51];
  [(NSMutableDictionary *)v50->_messageIdentifierToReplyRecords setObject:v28 forKeyedSubscript:v27];
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
  v34 = [(SDActivityPayloadManager *)v50 dataFromUUID:v27];
  [v33 setObject:v34 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

  [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionActivityContinuationKey];
  [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
  [v33 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  if (!v48)
  {
    [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
  }

  v35 = [[IDSProtobuf alloc] initWithProtobufData:v49 type:3 isResponse:0];
  activityService = v50->_activityService;
  v53 = 0;
  v54 = 0;
  v37 = [(IDSService *)activityService sendProtobuf:v35 toDestinations:v17 priority:300 options:v33 identifier:&v54 error:&v53];
  v38 = v54;
  v39 = v53;
  if ((v37 & 1) == 0)
  {
    v40 = v50->_activityService;
    v41 = [v27 UUIDString];
    [(SDActivityPayloadManager *)v50 service:v40 account:0 identifier:v41 didSendWithSuccess:0 error:v39];

    v30 = v48;
  }
}

- (void)handleNewAdvertisementWithpayloadRequestProtobuf:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a6;
  v11 = a4;
  v12 = [a3 data];
  v13 = [(SDActivityPayloadManager *)self requestFromProtobufData:v12];

  v14 = [v11 deviceForFromID:v10];

  v15 = [v14 uniqueIDOverride];
  v16 = [v13 objectForKeyedSubscript:@"rAdvData"];
  scanner = self->_scanner;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10016FE80;
  v21[3] = &unk_1008D1DD0;
  v22 = v13;
  v23 = self;
  v24 = v15;
  v25 = v14;
  v18 = v14;
  v19 = v15;
  v20 = v13;
  [(SDActivityScanner *)scanner handleNewAdvertisementDevice:v18 data:v16 receivedViaScanning:0 withSuccessHandler:v21];
}

@end