@interface SDAirDropClient
- (BOOL)connectionOverP2P:(__CFData *)a3;
- (BOOL)parseAskResponse:(__CFError *)a3;
- (BOOL)parseDiscoverResponse:(__CFError *)a3;
- (BOOL)receiverDeviceModelNameSuggestsMacPlatform;
- (BOOL)requireAWDL;
- (BOOL)send;
- (BOOL)shouldCancelTransferForError:(id)a3;
- (BOOL)splitOutFileURLs;
- (NSString)personID;
- (SDAirDropClient)initWithPerson:(__SFNode *)a3 items:(id)a4 forDiscovery:(BOOL)a5;
- (SDAirDropClientDelegate)delegate;
- (double)getTransferRate;
- (double)getTransferSize;
- (id)askBodyDataInFormat:(int64_t)a3;
- (id)askRequestClientBundleID;
- (id)discoverBodyDataInFormat:(int64_t)a3;
- (id)receiverMediaCapabilities;
- (id)whereFromInfo;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)activate;
- (void)addHashesAndValidationRecordToRequest:(id)a3;
- (void)addObservers;
- (void)appendFileURL:(id)a3 withBase:(id)a4 toItems:(id)a5;
- (void)bonjourResolverDidChange:(id)a3;
- (void)cancelSendingClassroom;
- (void)convertMediaItemsWithCompletionHandler:(id)a3;
- (void)createSession;
- (void)dealloc;
- (void)didFail:(id)a3;
- (void)didFinishLoading;
- (void)didFinishSendingAskBodyData;
- (void)didStartSendingAskBodyData;
- (void)donateTransferInteractionToDuet;
- (void)evaluateReceiverTrust:(__SecTrust *)a3 completion:(id)a4;
- (void)fileZipper:(id)a3 event:(int64_t)a4 withProperty:(void *)a5;
- (void)finishOperation;
- (void)generatePreviewForFileURL:(id)a3;
- (void)invalidate;
- (void)logInterfaceUsedForSending:(id)a3;
- (void)notifyClientForEvent:(int64_t)a3 withProperty:(void *)a4;
- (void)notifyClientOfBytesCopied:(id)a3 timeRemaining:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postNotificationForTransferStatus:(int64_t)a3 progress:(double)a4;
- (void)releaseIdleSleepAssertion;
- (void)releasePeerToPeerIfPossible:(id)a3;
- (void)removeFileIconsFromProperties;
- (void)removeObservers;
- (void)resolve;
- (void)retryRequestForError:(id)a3;
- (void)sendRequest:(id)a3;
- (void)startPublishingProgress;
- (void)startSending;
- (void)startSendingClassroom;
- (void)startZipping;
- (void)storeDataValue:(__CFDictionary *)a3 forKey:(__CFString *)a4;
- (void)storePropertyValue:(void *)a3 forKey:(__CFString *)a4;
- (void)storeStringValue:(__CFDictionary *)a3 forKey:(__CFString *)a4;
- (void)systemWillSleep:(id)a3;
- (void)validateAirDropItemsWithCompletionHandler:(id)a3;
- (void)wirelessPowerChanged:(id)a3;
@end

@implementation SDAirDropClient

- (SDAirDropClient)initWithPerson:(__SFNode *)a3 items:(id)a4 forDiscovery:(BOOL)a5
{
  v9 = a4;
  v55.receiver = self;
  v55.super_class = SDAirDropClient;
  v10 = [(SDAirDropClient *)&v55 init];
  v11 = v10;
  if (v10)
  {
    askResponse = v10->_askResponse;
    v10->_askResponse = 0;

    askTask = v11->_askTask;
    v11->_askTask = 0;

    clientBundleID = v11->_clientBundleID;
    v11->_clientBundleID = 0;

    v11->_clientPid = 0;
    connectionKey = v11->_connectionKey;
    v11->_connectionKey = 0;

    v16 = [NSProgress discreteProgressWithTotalUnitCount:0];
    conversionProgress = v11->_conversionProgress;
    v11->_conversionProgress = v16;

    objc_storeWeak(&v11->_delegate, 0);
    v11->_discover = a5;
    discoveryMetrics = v11->_discoveryMetrics;
    v11->_discoveryMetrics = &__NSDictionary0__struct;

    discoverResponse = v11->_discoverResponse;
    v11->_discoverResponse = 0;

    discoverTask = v11->_discoverTask;
    v11->_discoverTask = 0;

    v11->_failCount = 0;
    v11->_fileIcon = 0;
    v21 = objc_opt_new();
    filesToCleanup = v11->_filesToCleanup;
    v11->_filesToCleanup = v21;

    v23 = objc_opt_new();
    fileURLs = v11->_fileURLs;
    v11->_fileURLs = v23;

    v25 = objc_opt_new();
    fileURLToConversionNeeded = v11->_fileURLToConversionNeeded;
    v11->_fileURLToConversionNeeded = v25;

    v27 = objc_opt_new();
    generatedFiles = v11->_generatedFiles;
    v11->_generatedFiles = v27;

    v11->_identity = 0;
    objc_storeStrong(&v11->_items, a4);
    v11->_lastEvent = 1;
    v29 = objc_opt_new();
    mediaFormatConversionDestinations = v11->_mediaFormatConversionDestinations;
    v11->_mediaFormatConversionDestinations = v29;

    v31 = objc_getAssociatedObject(a3, @"SDAirDropPeerMetric");
    metric = v11->_metric;
    v11->_metric = v31;

    v33 = +[SDStatusMonitor sharedMonitor];
    monitor = v11->_monitor;
    v11->_monitor = v33;

    v35 = objc_opt_new();
    otherStuff = v11->_otherStuff;
    v11->_otherStuff = v35;

    v11->_p2pRetained = 0;
    v11->_person = SFNodeCreateCopy();
    v11->_personAdded = 0;
    v11->_powerAssertionID = 0;
    progress = v11->_progress;
    v11->_progress = 0;

    v38 = objc_opt_new();
    properties = v11->_properties;
    v11->_properties = v38;

    v11->_providedStream = 0;
    objc_storeStrong(&v11->_queue, &_dispatch_main_q);
    v11->_queueSuspended = 0;
    v40 = objc_opt_new();
    receiverData = v11->_receiverData;
    v11->_receiverData = v40;

    resolver = v11->_resolver;
    v11->_resolver = 0;

    serverURL = v11->_serverURL;
    *&v11->_serverTrust = 0u;

    v11->_shouldPublishProgress = 1;
    v11->_transactionStarted = 0;
    *&v11->_smallFileIcon = 0u;
    v44 = objc_alloc_init(NSProgress);
    transferProgress = v11->_transferProgress;
    v11->_transferProgress = v44;

    v11->_uploadFinished = 0;
    uploadResponse = v11->_uploadResponse;
    v11->_uploadResponse = 0;

    uploadTask = v11->_uploadTask;
    v11->_uploadTask = 0;

    zipper = v11->_zipper;
    v11->_zipper = 0;

    v11->_zipperFinished = 0;
    [(SDAirDropClient *)v11 addObservers];
    v49 = [[SDXPCHelperConnection alloc] initWithQueue:0];
    xpcHelperConnection = v11->_xpcHelperConnection;
    v11->_xpcHelperConnection = v49;

    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000AABD0;
    v54[3] = &unk_1008CDEA0;
    v54[4] = v11;
    v51 = v11->_xpcHelperConnection;
    v52 = v11;
    [(SDXPCHelperConnection *)v51 setInvalidationHandler:v54];
  }

  return v11;
}

- (void)dealloc
{
  [(SDXPCHelperConnection *)self->_xpcHelperConnection invalidate];
  xpcHelperConnection = self->_xpcHelperConnection;
  self->_xpcHelperConnection = 0;

  if (self->_shouldPublishProgress)
  {
    [(NSProgress *)self->_progress _unpublish];
  }

  if (self->_conversionObserver)
  {
    [(NSProgress *)self->_conversionProgress removeObserver:self forKeyPath:@"fractionCompleted"];
  }

  [(SDAirDropClient *)self removeObservers];
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  fileIcon = self->_fileIcon;
  if (fileIcon)
  {
    CFRelease(fileIcon);
  }

  serverTrust = self->_serverTrust;
  if (serverTrust)
  {
    CFRelease(serverTrust);
  }

  smallFileIcon = self->_smallFileIcon;
  if (smallFileIcon)
  {
    CFRelease(smallFileIcon);
  }

  tmpDirectoryToCleanUp = self->_tmpDirectoryToCleanUp;
  if (tmpDirectoryToCleanUp)
  {
    sub_1001F15C8(tmpDirectoryToCleanUp);
  }

  CFRelease(self->_person);
  v9.receiver = self;
  v9.super_class = SDAirDropClient;
  [(SDAirDropClient *)&v9 dealloc];
}

- (void)systemWillSleep:(id)a3
{
  v4 = sub_100092BE0(-8, 0);
  [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v4];
}

- (void)wirelessPowerChanged:(id)a3
{
  if (![(SDStatusMonitor *)self->_monitor wirelessEnabled])
  {
    v4 = sub_100092BE0(-7, 0);
    [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v4];
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"systemWillSleep:" name:@"com.apple.sharingd.SystemWillSleep" object:0];
  [v3 addObserver:self selector:"wirelessPowerChanged:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (BOOL)requireAWDL
{
  if ([(SDStatusMonitor *)self->_monitor forceAWDL])
  {
    return 1;
  }

  else
  {
    return ![(SDStatusMonitor *)self->_monitor browseAllInterfaces];
  }
}

- (void)createSession
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v4 = objc_opt_new();
  if (!sub_1001F2594() && ![(SDStatusMonitor *)self->_monitor enableDemoMode])
  {
    if ([(SDAirDropClient *)self requireAWDL])
    {
      v5 = @"awdl0";
      v6 = kCFStreamPropertyBoundInterfaceIdentifier;
    }

    else
    {
      v6 = _kCFStreamPropertyProhibitInfraWiFi;
      v5 = &__kCFBooleanTrue;
    }

    [v4 setObject:v5 forKeyedSubscript:v6];
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyDNSIncludeAWDL];
  }

  if (!self->_discover)
  {
    [v3 set_sourceApplicationSecondaryIdentifier:@"com.apple.airdrop"];
  }

  [v3 set_socketStreamProperties:v4];
  v7 = 120.0;
  if (self->_discover)
  {
    v7 = 15.0;
  }

  [v3 setTimeoutIntervalForRequest:v7];
  [v3 setRequestCachePolicy:1];
  [v3 set_connectionCachePurgeTimeout:86400.0];
  [v3 setConnectionProxyDictionary:&__NSDictionary0__struct];
  if (![(SDStatusMonitor *)self->_monitor disablePipelining])
  {
    person = self->_person;
    if (sub_100092340())
    {
      [v3 setHTTPMaximumConnectionsPerHost:1];
      [v3 setHTTPShouldUsePipelining:1];
    }
  }

  [v3 set_allowsTCPFastOpen:0];
  [v3 setTLSMaximumSupportedProtocol:10];
  v13 = @"User-Agent";
  v14 = @"AirDrop/1.0";
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v3 setHTTPAdditionalHeaders:v9];

  v10 = +[NSOperationQueue mainQueue];
  v11 = [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:v10];
  session = self->_session;
  self->_session = v11;
}

- (double)getTransferRate
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 longLongValue];
    v6 = v5 / (CFAbsoluteTimeGetCurrent() - self->_startTime);
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

- (double)getTransferSize
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)releaseIdleSleepAssertion
{
  if (self->_powerAssertionID)
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      powerAssertionID = self->_powerAssertionID;
      *buf = 67109120;
      v12 = powerAssertionID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Power assertion released (%d)", buf, 8u);
    }

    v5 = self->_powerAssertionID;
    self->_powerAssertionID = 0;
    v6 = sub_1001F0530(3.0);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AB338;
    block[3] = &unk_1008CF1B0;
    v10 = v5;
    dispatch_after(v6, queue, block);
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)notifyClientForEvent:(int64_t)a3 withProperty:(void *)a4
{
  lastEvent = self->_lastEvent;
  v17 = lastEvent > 0xA;
  v18 = (1 << lastEvent) & 0x610;
  if (v17 || v18 == 0)
  {
    v64 = v15;
    v65 = v14;
    v66 = v11;
    v67 = v10;
    v68 = v9;
    v69 = v8;
    v70 = v7;
    v71 = v6;
    v72 = v5;
    v73 = v4;
    v23 = objc_opt_new();
    v24 = v23;
    if (a3 > 8)
    {
      if (a3 <= 10)
      {
        if (a3 != 9)
        {
          if (!self->_discover)
          {
            clientBundleID = self->_clientBundleID;
            v39 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationReceiverModelNameKey];
            [(SDAirDropClient *)self getTransferSize];
            v41 = v40;
            v42 = [(SDStatusMonitor *)self->_monitor discoverableLevel];
            v43 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFromShareSheet];
            sub_1000860D4(clientBundleID, v39, 1, a4, v42, [v43 BOOLValueSafe], self->_discoveryMetrics, v41);
          }

          v44 = airdrop_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2914();
          }

          v45 = kCFErrorDomainSFOperation;
          Domain = CFErrorGetDomain(a4);
          if (CFEqual(v45, Domain))
          {
            v47 = kSFOperationErrorKey;
            [v24 setObject:a4 forKeyedSubscript:kSFOperationErrorKey];
          }

          else
          {
            v59 = sub_100092BE0(-1, a4);
            v47 = kSFOperationErrorKey;
            [v24 setObject:v59 forKeyedSubscript:kSFOperationErrorKey];
          }

          [v24 addEntriesFromDictionary:{self->_properties, v15, v65, v66, v67, v68, v69, v70, v71, v72, v73, v12, v13}];
          if (self->_shouldPublishProgress)
          {
            progress = self->_progress;
            v61 = [v24 objectForKeyedSubscript:v47];
            v62 = [v61 localizedDescription];
            [(NSProgress *)progress sf_failedWithError:v62];

            [(SDAirDropClient *)self postNotificationForTransferStatus:10 progress:0.0];
          }

          [(SDAirDropClient *)self invalidate];
          goto LABEL_55;
        }

        [(SDAirDropClient *)self setSpotlightMetadata:self->_fileURLs];
        [v24 addEntriesFromDictionary:self->_properties];
        if (!self->_discover)
        {
          [(SDAirDropClient *)self donateTransferInteractionToDuet];
          v48 = self->_clientBundleID;
          v49 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationReceiverModelNameKey];
          [(SDAirDropClient *)self getTransferRate];
          v51 = v50;
          [(SDAirDropClient *)self getTransferSize];
          v53 = v52;
          v54 = [(SDStatusMonitor *)self->_monitor discoverableLevel];
          v55 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFromShareSheet];
          sub_100085D2C(v48, v49, 1, v54, [v55 BOOLValueSafe], self->_discoveryMetrics, v51, v53);

          sub_10008644C(1, [(NSArray *)self->_items count]);
          v56 = +[SDServerBrowser sharedBrowser];
          [v56 incrementTransfersCompleted];
        }

        if (!self->_shouldPublishProgress)
        {
          goto LABEL_55;
        }

        [(NSProgress *)self->_progress setSf_transferState:6];
        v57 = [(NSProgress *)self->_progress sf_personRealName];

        if (!v57)
        {
          goto LABEL_55;
        }

        v32 = 0.0;
        v33 = self;
        v34 = 9;
      }

      else
      {
        if (a3 != 11)
        {
          if (a3 != 14)
          {
            if (a3 != 15)
            {
LABEL_35:
              [v23 addEntriesFromDictionary:{self->_properties, v15, v14, v11, v10, v9, v8, v70, v71, v72, v73, v12, v13}];
              goto LABEL_55;
            }

            if (self->_shouldPublishProgress)
            {
              [(NSProgress *)self->_progress setSf_transferState:1];
              transferProgress = self->_progress;
              goto LABEL_45;
            }
          }

LABEL_55:
          self->_lastEvent = a3;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained airDropClient:self event:a3 withResults:v24];

          return;
        }

        if (!self->_shouldPublishProgress)
        {
          goto LABEL_55;
        }

        [(NSProgress *)self->_progress setSf_transferState:2];
        v32 = 0.0;
        v33 = self;
        v34 = 11;
      }
    }

    else
    {
      if (a3 > 4)
      {
        if (a3 != 5)
        {
          if (a3 == 7)
          {
            v25 = kSFOperationBytesCopiedKey;
            [(SDAirDropClient *)self storePropertyValue:a4 forKey:kSFOperationBytesCopiedKey];
            v26 = kSFOperationTimeRemainingKey;
            [(SDAirDropClient *)self storePropertyValue:a4 forKey:kSFOperationTimeRemainingKey];
            if (a4)
            {
              sub_100092450(self->_properties, a4);
            }

            [v24 addEntriesFromDictionary:{self->_properties, v15, v14, v11, v10, v68, v69, v70, v71, v72, v73, v12, v13}];
            if (!self->_shouldPublishProgress)
            {
              goto LABEL_55;
            }

            v27 = [v24 objectForKeyedSubscript:v25];
            -[NSProgress setCompletedUnitCount:](self->_transferProgress, "setCompletedUnitCount:", [v27 longLongValue]);

            LODWORD(v27) = self->_conversionNotified;
            [(NSProgress *)self->_transferProgress fractionCompleted];
            v29 = v28 * 100.0;
            if (v27)
            {
              v29 = v29 * 0.8 + 20.0;
            }

            [(NSProgress *)self->_progress setCompletedUnitCount:v29];
            v30 = self->_progress;
            v31 = [v24 objectForKeyedSubscript:v26];
            [(NSProgress *)v30 setUserInfoObject:v31 forKey:NSProgressEstimatedTimeRemainingKey];

            v32 = [(NSProgress *)self->_progress completedUnitCount];
            v33 = self;
            v34 = 7;
            goto LABEL_48;
          }

          goto LABEL_35;
        }

        [v23 addEntriesFromDictionary:self->_properties];
        if (!self->_shouldPublishProgress)
        {
          goto LABEL_55;
        }

        [(NSProgress *)self->_progress setSf_transferState:3];
        v58 = [v24 objectForKeyedSubscript:kSFOperationTotalBytesKey];
        -[NSProgress setTotalUnitCount:](self->_transferProgress, "setTotalUnitCount:", [v58 longLongValue]);

        transferProgress = self->_transferProgress;
LABEL_45:
        [(NSProgress *)transferProgress setCompletedUnitCount:0, v15, v14, v11, v10, v9, v8, v70, v71, v72, v73, v12, v13];
        goto LABEL_55;
      }

      if (a3 != 3)
      {
        if (a3 == 4)
        {
          [v23 addEntriesFromDictionary:self->_properties];
          if (self->_shouldPublishProgress)
          {
            [(NSProgress *)self->_progress setSf_transferState:4];
            [(SDAirDropClient *)self postNotificationForTransferStatus:4 progress:0.0];
          }

          person = self->_person;
          v37 = SFNodeCopyKinds();
          if ([v37 containsObject:kSFNodeKindClassroom])
          {
            [(SDAirDropClient *)self cancelSendingClassroom];
          }

          else
          {
            [(SDAirDropClient *)self invalidate];
          }

          goto LABEL_55;
        }

        goto LABEL_35;
      }

      [v23 addEntriesFromDictionary:self->_properties];
      if (!self->_shouldPublishProgress)
      {
        goto LABEL_55;
      }

      [(NSProgress *)self->_progress setSf_transferState:2];
      v32 = 0.0;
      v33 = self;
      v34 = 3;
    }

LABEL_48:
    [(SDAirDropClient *)v33 postNotificationForTransferStatus:v34 progress:v32, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73];
    goto LABEL_55;
  }
}

- (void)postNotificationForTransferStatus:(int64_t)a3 progress:(double)a4
{
  v6 = [NSNumber numberWithDouble:a4];
  v7 = [(NSProgress *)self->_progress sf_personRealName];
  v8 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v15[0] = @"TransferProgress";
    v15[1] = @"RealName";
    v16[0] = v6;
    v16[1] = v7;
    v16[2] = v9;
    v15[2] = @"SessionID";
    v15[3] = @"TransferText";
    v13 = [NSNumber numberWithLong:a3];
    v16[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
    [v12 postNotificationName:@"TransferUpdated" object:self userInfo:v14];
  }
}

- (void)didStartSendingAskBodyData
{
  if ([(SDStatusMonitor *)self->_monitor disableTLS])
  {
    [(SDAirDropClient *)self notifyClientForEvent:3 withProperty:0];
  }

  if ([(NSMutableArray *)self->_fileURLs count])
  {
    if (![(SDStatusMonitor *)self->_monitor disablePipelining])
    {
      person = self->_person;
      if (sub_100092340())
      {

        [(SDAirDropClient *)self startZipping];
      }
    }
  }
}

- (void)didFinishSendingAskBodyData
{
  if (![(NSMutableArray *)self->_fileURLs count])
  {

    [(SDAirDropClient *)self releaseIdleSleepAssertion];
  }
}

- (id)whereFromInfo
{
  v3 = objc_opt_new();
  person = self->_person;
  v5 = SFNodeCopyDisplayName();
  v6 = self->_person;
  v7 = SFNodeCopyComputerName();
  if (v5)
  {
    [v3 addObject:v5];
  }

  if (v7 && ([v5 isEqualToString:v7] & 1) == 0)
  {
    [v3 addObject:v7];
  }

  return v3;
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [v9 statusCode];
  v12 = v11;
  if (v11 <= 400)
  {
    if (v11 != 200 && v11 != 204)
    {
      if (v11 != 400)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    v14 = [v9 URL];
    v15 = CFURLCopyStrictPath(v14, 0);

    if (!v15)
    {
      v22 = airdrop_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2A38();
      }

LABEL_26:
      v20 = NSPOSIXErrorDomain;
      v21 = 94;
      goto LABEL_27;
    }

    if (CFEqual(v15, @"Discover"))
    {
      if (v12 == 200)
      {
        objc_storeStrong(&self->_discoverResponse, a5);
        v16 = airdrop_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(SDAirDropClient *)self personID];
          LODWORD(v25) = 138412290;
          *(&v25 + 4) = v17;
          v18 = "Got Discover response from %@";
LABEL_39:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, &v25, 0xCu);

          goto LABEL_40;
        }

        goto LABEL_40;
      }

      v24 = airdrop_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2984();
      }
    }

    else if (CFEqual(v15, @"Ask"))
    {
      if (v12 == 200)
      {
        [(SDAirDropClient *)self logInterfaceUsedForSending:v9];
        objc_storeStrong(&self->_askResponse, a5);
        v16 = airdrop_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(SDAirDropClient *)self personID];
          LODWORD(v25) = 138412290;
          *(&v25 + 4) = v17;
          v18 = "Got Ask response from %@";
          goto LABEL_39;
        }

LABEL_40:

        v23 = 0;
        goto LABEL_46;
      }

      v24 = airdrop_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000B29C0();
      }
    }

    else
    {
      if (CFEqual(v15, @"Upload"))
      {
        objc_storeStrong(&self->_uploadResponse, a5);
        v16 = airdrop_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(SDAirDropClient *)self personID];
          LODWORD(v25) = 138412290;
          *(&v25 + 4) = v17;
          v18 = "Got Upload response from %@";
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      v24 = airdrop_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000B29FC();
      }
    }

    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:0];
LABEL_46:
    CFRelease(v15);
    if (v23)
    {
      goto LABEL_29;
    }

    goto LABEL_47;
  }

  if (v11 <= 499)
  {
    if (v11 != 401)
    {
      if (v11 != 417)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    [(SDAirDropClient *)self notifyClientForEvent:4 withProperty:0];
LABEL_47:
    v10[2](v10, 1);
    goto LABEL_48;
  }

  if (v11 != 500)
  {
    if (v11 != 507)
    {
LABEL_18:
      v19 = airdrop_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2A74();
      }

      v20 = NSPOSIXErrorDomain;
      v21 = 100;
      goto LABEL_27;
    }

LABEL_12:
    v13 = sub_100092BE0(-2, 0);
    goto LABEL_28;
  }

  v20 = NSPOSIXErrorDomain;
  v21 = 32;
LABEL_27:
  v13 = [NSError errorWithDomain:v20 code:v21 userInfo:0];
LABEL_28:
  v23 = v13;
  if (!v13)
  {
    goto LABEL_47;
  }

LABEL_29:
  [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v23, v25];
  v10[2](v10, 0);

LABEL_48:
}

- (void)storePropertyValue:(void *)a3 forKey:(__CFString *)a4
{
  v7 = CFGetTypeID(a3);
  if (CFHTTPMessageGetTypeID() == v7)
  {
    v8 = CFHTTPMessageCopyHeaderFieldValue(a3, a4);
    properties = self->_properties;
    if (v8)
    {
      v10 = v8;
      v11 = CFURLCreateStringByReplacingPercentEscapes(0, v8, &stru_1008EFBD0);
      sub_1001F066C(properties, a4, v11);

      CFRelease(v10);
    }

    else
    {

      [(NSMutableDictionary *)properties setObject:0 forKeyedSubscript:a4];
    }
  }

  else if (CFDictionaryGetTypeID() == v7)
  {
    Value = CFDictionaryGetValue(a3, a4);

    [(SDAirDropClient *)self setProperty:Value forKey:a4];
  }

  else
  {
    v13 = airdrop_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2AE4();
    }
  }
}

- (void)storeDataValue:(__CFDictionary *)a3 forKey:(__CFString *)a4
{
  Value = CFDictionaryGetValue(a3, a4);
  if (Value && (TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2B54();
    }
  }

  else
  {

    [(SDAirDropClient *)self setProperty:Value forKey:a4];
  }
}

- (void)storeStringValue:(__CFDictionary *)a3 forKey:(__CFString *)a4
{
  Value = CFDictionaryGetValue(a3, a4);
  if (Value && (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2BC4();
    }
  }

  else
  {

    [(SDAirDropClient *)self setProperty:Value forKey:a4];
  }
}

- (BOOL)parseAskResponse:(__CFError *)a3
{
  v3 = a3;
  v5 = CFPropertyListCreateWithData(0, self->_receiverData, 0, 0, a3);
  if (v5)
  {
    v6 = v5;
    v3 = CFGetTypeID(v5);
    LOBYTE(v3) = v3 == CFDictionaryGetTypeID();
    if (v3)
    {
      [(SDAirDropClient *)self storeDataValue:v6 forKey:kSFOperationReceiverIconKey];
      [(SDAirDropClient *)self storeDataValue:v6 forKey:kSFOperationReceiverRecordDataKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationReceiverIconHashKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationReceiverModelNameKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationReceiverComputerNameKey];
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2C34();
      }
    }

    CFRelease(v6);
  }

  else if (v3)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2C70(v3);
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)parseDiscoverResponse:(__CFError *)a3
{
  v3 = a3;
  v5 = CFPropertyListCreateWithData(0, self->_receiverData, 0, 0, a3);
  if (v5)
  {
    v6 = v5;
    v3 = CFGetTypeID(v5);
    LOBYTE(v3) = v3 == CFDictionaryGetTypeID();
    if (v3)
    {
      [(SDAirDropClient *)self storeDataValue:v6 forKey:kSFOperationReceiverRecordDataKey];
      [(SDAirDropClient *)self storeDataValue:v6 forKey:kSFOperationReceiverMediaCapabilitiesKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationReceiverModelNameKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationReceiverComputerNameKey];
      [(SDAirDropClient *)self storeDataValue:v6 forKey:kSFOperationReceiverDeviceIRKDataKey];
      [(SDAirDropClient *)self storeDataValue:v6 forKey:kSFOperationReceiverEdPKDataKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationReceiverIDSDeviceIDKey];
      [(SDAirDropClient *)self storeStringValue:v6 forKey:kSFOperationSendersKnownAliasKey];
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2C34();
      }
    }

    CFRelease(v6);
  }

  else if (v3)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2CE4(v3);
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)notifyClientOfBytesCopied:(id)a3 timeRemaining:(id)a4
{
  v6 = a3;
  v7 = a4;
  usleep(0x186A0u);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC730;
  block[3] = &unk_1008CE900;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)finishOperation
{
  v3 = sub_1001F0610();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC840;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)retryRequestForError:(id)a3
{
  v4 = a3;
  v5 = self->_failCount + 1;
  self->_failCount = v5;
  if (v5 == 10 || self->_cancelled)
  {
    [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v4];
  }

  else
  {
    v6 = exp(v5);
    v7 = dispatch_time(0, (v6 * 0.125 * 1000000000.0));
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ACBC0;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v7, queue, block);
  }
}

- (void)didFinishLoading
{
  cf = 0;
  if (self->_askResponse)
  {
    if ([(SDAirDropClient *)self parseAskResponse:&cf])
    {
      [(SDAirDropClient *)self notifyClientForEvent:6 withProperty:0];
      if ([(NSMutableArray *)self->_fileURLs count])
      {
        if ([(SDStatusMonitor *)self->_monitor disablePipelining]|| (person = self->_person, !sub_100092340()))
        {
          [(SDAirDropClient *)self startZipping];
        }

        else if (!self->_zipperFinished)
        {
          self->_startTime = CFAbsoluteTimeGetCurrent();
          [(SDAirDropClient *)self notifyClientForEvent:5 withProperty:0];
        }
      }

      else
      {
        [(SDAirDropClient *)self finishOperation];
      }
    }

    else
    {
      [(SDAirDropClient *)self retryRequestForError:cf];
      CFRelease(cf);
    }

    askResponse = self->_askResponse;
    self->_askResponse = 0;
    goto LABEL_21;
  }

  if (self->_discoverResponse)
  {
    if ([(SDAirDropClient *)self parseDiscoverResponse:&cf])
    {
      [(SDAirDropClient *)self notifyClientForEvent:9 withProperty:0];
    }

    else
    {
      [(SDAirDropClient *)self retryRequestForError:cf];
      CFRelease(cf);
    }

    askResponse = self->_discoverResponse;
    self->_discoverResponse = 0;
LABEL_21:

    return;
  }

  if (self->_uploadResponse)
  {
    self->_uploadFinished = 1;
    if (self->_zipperFinished)
    {
      if (self->_startTime == 0.0)
      {
        [(SDAirDropClient *)self finishOperation];
      }

      else
      {
        [(SDAirDropClient *)self notifyClientForEvent:9 withProperty:0];
      }
    }

    uploadResponse = self->_uploadResponse;
    self->_uploadResponse = 0;
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  [(NSMutableData *)self->_receiverData appendData:a5, a4];
  if ([(NSMutableData *)self->_receiverData length]> 0x100000)
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:27 userInfo:0];
    [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v6];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v13 = a3;
  v12 = a4;
  if (self->_askTask == v12)
  {
    if (a5 == a6)
    {
      [(SDAirDropClient *)self didStartSendingAskBodyData];
    }

    else if (a6 >= a7)
    {
      [(SDAirDropClient *)self didFinishSendingAskBodyData];
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9)
  {
    [(SDAirDropClient *)self didFinishLoading];
    goto LABEL_8;
  }

  v11 = [v9 domain];
  if (![v11 isEqual:NSURLErrorDomain])
  {

    goto LABEL_7;
  }

  v12 = [v10 code];

  if (v12 != -999)
  {
LABEL_7:
    [(SDAirDropClient *)self didFail:v10];
  }

LABEL_8:
}

- (BOOL)shouldCancelTransferForError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];

  if ([v5 isEqual:kCFErrorDomainCFNetwork])
  {
    v6 = v4 == 303 || v4 == -1017;
    goto LABEL_7;
  }

  if ([v5 isEqual:NSURLErrorDomain])
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFEFLL) == -1021;
LABEL_7:
    v7 = v6;
    goto LABEL_13;
  }

  v8 = [v5 isEqual:NSPOSIXErrorDomain];
  if (v4 == 54)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (void)didFail:(id)a3
{
  v4 = a3;
  person = self->_person;
  v6 = SFNodeCopyServiceName();
  if (self->_discover || ![(SDAirDropClient *)self shouldCancelTransferForError:v4])
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2D58();
    }

    if (self->_discover)
    {
      [(SDAirDropClient *)self retryRequestForError:v4];
      goto LABEL_20;
    }

    v9 = [v4 domain];
    if (([v9 isEqual:kCFErrorDomainCFNetwork] & 1) != 0 || objc_msgSend(v9, "isEqual:", NSURLErrorDomain))
    {
      v10 = [v4 code];
      if (v10 == -1004)
      {
        [(SDAirDropClient *)self retryRequestForError:v4];
        goto LABEL_19;
      }

      if (v10 == -1202)
      {
        v11 = self->_person;
        v12 = SFNodeCopySecondaryName();
        if (!v12)
        {
          v13 = self->_person;
          v12 = SFNodeCopyDisplayName();
        }

        v14 = sub_100092BE0(-3, v12);
        [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v14];

        goto LABEL_19;
      }
    }

    [(SDAirDropClient *)self notifyClientForEvent:10 withProperty:v4];
LABEL_19:

    goto LABEL_20;
  }

  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection to %@ canceled (%@)", &v15, 0x16u);
  }

  [(SDAirDropClient *)self notifyClientForEvent:4 withProperty:0];
LABEL_20:
}

- (void)evaluateReceiverTrust:(__SecTrust *)a3 completion:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    person = self->_person;
    v8 = SFNodeCopyAppleID();
    if (v8 && (v9 = sub_100091420(a3)) != 0)
    {
      v10 = v9;
      v11 = [(SDStatusMonitor *)self->_monitor verifiedIdentityForAppleID:v8];
      queue = self->_queue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000AD43C;
      v13[3] = &unk_1008CF1D8;
      v14 = v6;
      sub_1006F3928(v10, v11, queue, v13);
    }

    else
    {
      (*(v6 + 2))(v6, v8 == 0);
    }
  }
}

- (BOOL)connectionOverP2P:(__CFData *)a3
{
  BytePtr = CFDataGetBytePtr(a3);
  if (BytePtr[1] != 30)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SDAirDropClient *)self personID];
      v13 = 138412290;
      v14 = v11;
      v12 = "AirDrop sending to %@ over IPv4";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
    }

LABEL_14:

    return 0;
  }

  v5 = *(BytePtr + 6);
  if (!v5)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SDAirDropClient *)self personID];
      v13 = 138412290;
      v14 = v11;
      v12 = "AirDrop sending to %@ over IPv6";
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  *v17 = 0;
  v18 = 0;
  v6 = if_indextoname(v5, v17);
  v7 = airdrop_log();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000B2E00();
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SDAirDropClient *)self personID];
    v13 = 138412546;
    v14 = v9;
    v15 = 2080;
    v16 = v17;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AirDrop sending to %@ over %s", &v13, 0x16u);
  }

  return strncasecmp(v17, "p2p", 3uLL) == 0;
}

- (void)releasePeerToPeerIfPossible:(id)a3
{
  if (self->_p2pRetained)
  {
    [a3 _CFURLResponse];
    v4 = CFURLResponseCopyPeerAddress();
    if (v4)
    {
      v5 = v4;
      if (![(SDAirDropClient *)self connectionOverP2P:v4])
      {
        sub_1001F061C();
        self->_p2pRetained = 0;
      }

      CFRelease(v5);
    }
  }
}

- (void)logInterfaceUsedForSending:(id)a3
{
  [a3 _CFURLResponse];
  v4 = CFURLResponseCopyPeerAddress();
  if (v4)
  {
    v5 = v4;
    [(SDAirDropClient *)self connectionOverP2P:v4];

    CFRelease(v5);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v6 = a5;
  v7 = [v6 transactionMetrics];
  v8 = [v7 count];

  if (v8 != 1)
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v27 = 134217984;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NSURLSessionTaskTransactionMetrics count %lu is not expected, expecting 1", &v27, 0xCu);
    }
  }

  v10 = [v6 transactionMetrics];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 _remoteAddressAndPort];
    if (v12)
    {
    }

    else
    {
      v13 = [v11 _localAddressAndPort];

      if (!v13)
      {
LABEL_12:
        v18 = [v11 secureConnectionStartDate];
        v19 = [v11 fetchStartDate];
        [v18 timeIntervalSinceDate:v19];
        v20 = [NSNumber numberWithDouble:?];
        [(SDAirDropPeerMetric *)self->_metric setTcpConnectionComplete:v20];

        v21 = [v11 secureConnectionEndDate];
        v22 = [v11 secureConnectionStartDate];
        [v21 timeIntervalSinceDate:v22];
        v23 = [NSNumber numberWithDouble:?];
        [(SDAirDropPeerMetric *)self->_metric setTlsHandshakeComplete:v23];

        v24 = [v11 responseEndDate];
        v25 = [v11 secureConnectionEndDate];
        [v24 timeIntervalSinceDate:v25];
        v26 = [NSNumber numberWithDouble:?];
        [(SDAirDropPeerMetric *)self->_metric setIdentityQueryComplete:v26];

        goto LABEL_13;
      }
    }

    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(SDAirDropClient *)self personID];
      v16 = [v11 _localAddressAndPort];
      v17 = [v11 _remoteAddressAndPort];
      v27 = 138412802;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Connected to %@ from [%@] => [%@]", &v27, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [a4 protectionSpace];
  v9 = [v8 authenticationMethod];
  if ([v9 isEqual:NSURLAuthenticationMethodServerTrust])
  {
    v10 = [v8 serverTrust];
    if (v10)
    {
      serverTrust = self->_serverTrust;
      if (serverTrust)
      {
        CFRelease(serverTrust);
      }

      self->_serverTrust = CFRetain(v10);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000ADDC8;
    v23[3] = &unk_1008CF200;
    v23[4] = self;
    v24 = v7;
    v25 = v10;
    [(SDAirDropClient *)self evaluateReceiverTrust:v10 completion:v23];

    goto LABEL_21;
  }

  if ([v9 isEqual:NSURLAuthenticationMethodClientCertificate])
  {
    if (self->_identity)
    {
      v12 = [(SDStatusMonitor *)self->_monitor copyMyAppleIDIntermediateCertificate];
      if (v12)
      {
        v13 = v12;
        v14 = airdrop_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(SDAirDropClient *)self personID];
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SDAirDropClient: sending client certificate to %@", buf, 0xCu);
        }

        identity = self->_identity;
        v26 = v13;
        v17 = [NSArray arrayWithObjects:&v26 count:1];
        v18 = [NSURLCredential credentialWithIdentity:identity certificates:v17 persistence:1];

        (*(v7 + 2))(v7, 0, v18);
        CFRelease(v13);

        goto LABEL_21;
      }

      v22 = [(SDStatusMonitor *)self->_monitor myAppleID];
      SFMetricsLogUnexpectedEvent();

      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2EE4(self);
      }
    }

    else
    {
      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(SDAirDropClient *)self personID];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SDAirDropClient: identity not available. Sending to %@ with no Apple ID certificate", buf, 0xCu);
      }
    }

    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_21;
  }

  v19 = airdrop_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1000B2E74();
  }

  (*(v7 + 2))(v7, 3, 0);
LABEL_21:
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_providedStream)
  {
    goto LABEL_6;
  }

  if (self->_uploadTask != v9)
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SDAirDropClient: needNewBodyStream invoked for task %@", &v14, 0xCu);
    }

    goto LABEL_6;
  }

  zipper = self->_zipper;
  if (!zipper)
  {
LABEL_6:
    v10[2](v10, 0);
    goto LABEL_7;
  }

  v13 = [(SDAirDropFileZipper *)zipper copyReadStream];
  self->_providedStream = 1;
  (v10)[2](v10, v13);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_7:
}

- (void)fileZipper:(id)a3 event:(int64_t)a4 withProperty:(void *)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 > 8)
  {
    if (a4 == 9)
    {
      v15 = v8;
      self->_zipperFinished = 1;
      if (self->_uploadFinished)
      {
        if (self->_startTime == 0.0)
        {
          [(SDAirDropClient *)self finishOperation];
        }

        else
        {
          [(SDAirDropClient *)self notifyClientForEvent:9 withProperty:a5];
        }
      }

      [(SDAirDropClient *)self releaseIdleSleepAssertion];
      goto LABEL_19;
    }

    if (a4 != 10)
    {
      goto LABEL_20;
    }

    v10 = self;
    v11 = 10;
    goto LABEL_9;
  }

  if (a4 == 5)
  {
    v15 = v8;
    [(SDAirDropClient *)self storePropertyValue:a5 forKey:kSFOperationTotalBytesKey];
    [(SDAirDropClient *)self sendRequest:@"Upload"];
    if ([(SDStatusMonitor *)self->_monitor disablePipelining]|| (person = self->_person, v14 = sub_100092340(), v9 = v15, (v14 & 1) == 0))
    {
      self->_startTime = CFAbsoluteTimeGetCurrent();
      v10 = self;
      v11 = 5;
      v12 = 0;
      goto LABEL_13;
    }
  }

  else if (a4 == 7 && self->_startTime != 0.0)
  {
    v10 = self;
    v11 = 7;
LABEL_9:
    v12 = a5;
    v15 = v9;
LABEL_13:
    [(SDAirDropClient *)v10 notifyClientForEvent:v11 withProperty:v12];
LABEL_19:
    v9 = v15;
  }

LABEL_20:
}

- (void)bonjourResolverDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  if (v5 == -65568)
  {
    v26 = NSPOSIXErrorDomain;
    v27 = 60;
  }

  else
  {
    if (!v5)
    {
      v6 = [v4 url];
      serverURL = self->_serverURL;
      self->_serverURL = v6;

      v8 = [(NSURL *)self->_serverURL host];
      v9 = [(NSURL *)self->_serverURL port];
      v10 = [NSString stringWithFormat:@"[%@:%@]", v8, v9];

      Current = CFAbsoluteTimeGetCurrent();
      v12 = [(SDAirDropPeerMetric *)self->_metric bonjourResolveComplete];
      [v12 doubleValue];
      v14 = [NSNumber numberWithDouble:Current - v13];
      [(SDAirDropPeerMetric *)self->_metric setBonjourResolveComplete:v14];

      v15 = [(SDAirDropPeerMetric *)self->_metric bonjourResolveComplete];
      [v15 doubleValue];
      v17 = v16;

      v18 = airdrop_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(SDAirDropClient *)self personID];
        *buf = 138412546;
        v30 = v19;
        v31 = 1024;
        LODWORD(v32) = (v17 * 1000.0);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bonjour resolved %@ in %d ms", buf, 0x12u);
      }

      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_discover)
        {
          v21 = "Connecting to";
        }

        else
        {
          v21 = "Sending to";
        }

        v22 = [(SDAirDropClient *)self personID];
        *buf = 136315650;
        v30 = v21;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s %@ at %@", buf, 0x20u);
      }

      v23 = &off_1008CE590;
      if (!self->_discover)
      {
        v23 = &off_1008CE580;
      }

      [(SDAirDropClient *)self sendRequest:*v23];
      resolver = self->_resolver;
      if (resolver)
      {
        [(SDBonjourResolver *)resolver setDelegate:0];
        [(SDBonjourResolver *)self->_resolver cancel];
        v25 = self->_resolver;
        self->_resolver = 0;
      }

      goto LABEL_19;
    }

    v26 = NSOSStatusErrorDomain;
    v27 = v5;
  }

  v10 = [NSError errorWithDomain:v26 code:v27 userInfo:0];
  v28 = airdrop_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_1000B3098(v4);
  }

  [(SDAirDropClient *)self retryRequestForError:v10];
LABEL_19:
}

- (void)addHashesAndValidationRecordToRequest:(id)a3
{
  v7 = a3;
  v4 = [(SDStatusMonitor *)self->_monitor copyMyAppleIDSecIdentity];
  self->_identity = v4;
  if (v4)
  {
    v5 = [(SDStatusMonitor *)self->_monitor myAppleIDValidationRecord];
    v6 = [v5 objectForKeyedSubscript:@"AppleIDAccountValidationRecordData"];
    if (v6)
    {
      [v7 setObject:v6 forKeyedSubscript:kSFOperationSenderRecordDataKey];
    }
  }
}

- (id)askRequestClientBundleID
{
  v2 = self->_clientBundleID;
  if ([(__CFString *)v2 isEqualToString:@"com.apple.Passwords.remoteservice"])
  {

    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = @"com.apple.Preferences";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ask request sender bundle ID: %@", &v5, 0xCu);
    }

    v2 = @"com.apple.Preferences";
  }

  return v2;
}

- (id)askBodyDataInFormat:(int64_t)a3
{
  v5 = objc_opt_new();
  [(SDAirDropClient *)self addHashesAndValidationRecordToRequest:v5];
  [v5 setObject:self->_otherStuff forKeyedSubscript:kSFOperationItemsKey];
  v6 = kSFOperationFilesKey;
  v7 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFilesKey];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:v6];
  }

  v8 = [(SDStatusMonitor *)self->_monitor modelName];
  [v5 setObject:v8 forKeyedSubscript:kSFOperationSenderModelNameKey];

  v9 = kSFOperationItemsDescriptionKey;
  v10 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsDescriptionKey];
  v11 = [(SDAirDropClient *)self askRequestClientBundleID];
  [v5 setObject:v11 forKeyedSubscript:kSFOperationBundleIDKey];

  v12 = [(SDStatusMonitor *)self->_monitor someComputerName];
  [v5 setObject:v12 forKeyedSubscript:kSFOperationSenderComputerNameKey];

  v13 = sub_10008FA28(0, 0);
  [v5 setObject:v13 forKeyedSubscript:kSFOperationSenderIDKey];

  if (v10)
  {
    [v5 setObject:v10 forKeyedSubscript:v9];
  }

  fileIcon = self->_fileIcon;
  if (fileIcon)
  {
    v15 = sub_100117CB4(fileIcon, 0);
    [v5 setObject:v15 forKeyedSubscript:kSFOperationFileIconKey];
  }

  smallFileIcon = self->_smallFileIcon;
  if (smallFileIcon)
  {
    v17 = sub_100117CB4(smallFileIcon, 0);
    [v5 setObject:v17 forKeyedSubscript:kSFOperationSmallFileIconKey];
  }

  v18 = kSFOperationConvertMediaFormatsKey;
  v19 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationConvertMediaFormatsKey];
  if (v19)
  {
    [v5 setObject:v19 forKeyedSubscript:v18];
  }

  Data = CFPropertyListCreateData(0, v5, a3, 0, 0);

  return Data;
}

- (id)discoverBodyDataInFormat:(int64_t)a3
{
  v5 = objc_opt_new();
  [(SDAirDropClient *)self addHashesAndValidationRecordToRequest:v5];
  Data = CFPropertyListCreateData(0, v5, a3, 0, 0);

  return Data;
}

- (void)sendRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSData data];
  v6 = [(NSURL *)self->_serverURL URLByAppendingPathComponent:v4 isDirectory:0];
  v7 = [NSMutableURLRequest requestWithURL:v6];
  [v7 setHTTPMethod:@"POST"];
  if ([v4 isEqual:@"Discover"])
  {
    v8 = [(SDStatusMonitor *)self->_monitor enableXML];
    if (v8)
    {
      v9 = 100;
    }

    else
    {
      v9 = 200;
    }

    v10 = off_1008D3E78;
    if (!v8)
    {
      v10 = off_1008D3E70;
    }

    [v7 setValue:*v10 forHTTPHeaderField:@"Content-Type"];
    v11 = [(SDAirDropClient *)self discoverBodyDataInFormat:v9];

    [v7 setValue:@"close" forHTTPHeaderField:@"Connection"];
    goto LABEL_18;
  }

  if ([v4 isEqual:@"Ask"])
  {
    if ([(SDStatusMonitor *)self->_monitor enableXML])
    {
      [v7 setValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
      v12 = self;
      v13 = 100;
    }

    else
    {
      [v7 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
      v12 = self;
      v13 = 200;
    }

    v11 = [(SDAirDropClient *)v12 askBodyDataInFormat:v13];

LABEL_18:
    v5 = v11;
    goto LABEL_19;
  }

  if ([v4 isEqual:@"Upload"])
  {
    v14 = kSFOperationTotalBytesKey;
    v15 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 stringValue];
      [v7 setValue:v17 forHTTPHeaderField:v14];
    }

    v18 = [(SDAirDropFileZipper *)self->_zipper zipCompressionType];
    if ([v18 isEqualToString:@"pkzip"])
    {
      v19 = off_1008D3E58;
    }

    else if ([v18 isEqualToString:@"dvzip"])
    {
      v19 = off_1008D3E68;
    }

    else
    {
      if (![v18 isEqualToString:@"gzip"])
      {
        v25 = airdrop_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_1000B3134();
        }
      }

      v19 = off_1008D3E60;
    }

    [v7 setValue:*v19 forHTTPHeaderField:@"Content-Type"];
    if ([(SDStatusMonitor *)self->_monitor disablePipelining]|| (person = self->_person, (sub_100092340() & 1) == 0))
    {
      [v7 setValue:@"100-continue" forHTTPHeaderField:@"Expect"];
    }

    [v7 setValue:@"close" forHTTPHeaderField:@"Connection"];
  }

LABEL_19:
  if (![(SDStatusMonitor *)self->_monitor disablePipelining])
  {
    v20 = self->_person;
    if (sub_100092340())
    {
      [v7 _CFURLRequest];
      CFURLRequestSetShouldPipelineHTTP();
      [v7 _CFURLRequest];
      _CFURLRequestSetShouldSkipPipelineProbe();
      [v7 _CFURLRequest];
      _CFURLRequestSetShouldPipelineNonIdempotentHTTP();
    }
  }

  if ([v4 isEqual:@"Discover"])
  {
    v21 = [(NSURLSession *)self->_session uploadTaskWithRequest:v7 fromData:v5];
    v22 = 88;
LABEL_28:
    objc_storeStrong((&self->super.isa + v22), v21);
    goto LABEL_29;
  }

  if ([v4 isEqual:@"Ask"])
  {
    v21 = [(NSURLSession *)self->_session uploadTaskWithRequest:v7 fromData:v5];
    v22 = 16;
    goto LABEL_28;
  }

  if ([v4 isEqual:@"Upload"])
  {
    v21 = [(NSURLSession *)self->_session uploadTaskWithStreamedRequest:v7];
    v22 = 384;
    goto LABEL_28;
  }

  v21 = 0;
LABEL_29:
  v23 = airdrop_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(SDAirDropClient *)self personID];
    v27 = 138412546;
    v28 = v4;
    v29 = 2112;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending %@ request to %@", &v27, 0x16u);
  }

  [v21 resume];
}

- (void)startZipping
{
  if (!self->_zipper)
  {
    v9 = v2;
    v10 = v3;
    v5 = objc_alloc_init(SDAirDropFileZipper);
    zipper = self->_zipper;
    self->_zipper = v5;

    v7 = *&self->_auditToken.val[4];
    v8[0] = *self->_auditToken.val;
    v8[1] = v7;
    [(SDAirDropFileZipper *)self->_zipper setAuditToken:v8];
    [(SDAirDropFileZipper *)self->_zipper setSkipReadableCheckFiles:self->_generatedFiles];
    [(SDAirDropFileZipper *)self->_zipper setDisableAdaptiveCompressionForZipping:!self->_receiverSupportsDVZip];
    [(SDAirDropFileZipper *)self->_zipper setSourceFiles:self->_fileURLs];
    [(SDAirDropFileZipper *)self->_zipper setClientPid:self->_clientPid];
    [(SDAirDropFileZipper *)self->_zipper setDelegate:self];
    [(SDAirDropFileZipper *)self->_zipper zip];
  }
}

- (BOOL)splitOutFileURLs
{
  person = self->_person;
  v4 = sub_1000922A4();
  v5 = self->_person;
  v6 = SFNodeCopyRealName();
  v7 = self->_person;
  v8 = SFNodeCopyKinds();
  v9 = +[SDAirDropLegacyHelper preprocessItems:forClientBundleID:receiverIdentifier:receiverSupportsURLs:receiverIsUnknown:](SDAirDropLegacyHelper, "preprocessItems:forClientBundleID:receiverIdentifier:receiverSupportsURLs:receiverIsUnknown:", self->_items, self->_clientBundleID, v6, v4, [v8 containsObject:kSFNodeKindUnknown]);
  if ([v9 success])
  {
    v10 = [v9 files];

    if (v10)
    {
      fileURLs = self->_fileURLs;
      v12 = [v9 files];
      [(NSMutableArray *)fileURLs addObjectsFromArray:v12];
    }

    v13 = [v9 otherStuff];

    if (v13)
    {
      otherStuff = self->_otherStuff;
      v15 = [v9 otherStuff];
      [(NSMutableArray *)otherStuff addObjectsFromArray:v15];
    }

    v16 = [v9 filesToCleanup];

    if (v16)
    {
      filesToCleanup = self->_filesToCleanup;
      v18 = [v9 filesToCleanup];
      [(NSMutableArray *)filesToCleanup addObjectsFromArray:v18];
    }
  }

  v19 = [v9 success];

  return v19;
}

- (void)validateAirDropItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_items count]&& self->_items)
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(NSArray *)self->_items count];
      items = self->_items;
      *buf = 134218242;
      v12 = v6;
      v13 = 2112;
      v14 = items;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Validating %lu items to send: %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000B31A8();
    }
  }

  if ([(NSMutableArray *)self->_fileURLs count])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AF1C4;
    v9[3] = &unk_1008CE708;
    v9[4] = self;
    v10 = v4;
    [(SDAirDropClient *)self convertMediaItemsWithCompletionHandler:v9];
  }

  else if ([(NSMutableArray *)self->_otherStuff count])
  {
    (*(v4 + 2))(v4, 0);
  }

  else
  {
    v8 = sub_100092BE0(-4, 0);
    (*(v4 + 2))(v4, v8);
  }
}

- (void)appendFileURL:(id)a3 withBase:(id)a4 toItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45 = 0;
  v44 = 0;
  v11 = [v8 getResourceValue:&v45 forKey:NSURLNameKey error:&v44];
  v12 = v45;
  v13 = v44;
  if (v11)
  {
    v38 = self;
    v14 = objc_opt_new();
    v15 = [NSNumber numberWithBool:sub_1001F0448(v8)];
    [v14 setObject:v15 forKeyedSubscript:kSFOperationFileIsDirectoryKey];

    [v14 setObject:v12 forKeyedSubscript:kSFOperationFileNameKey];
    v43 = 0;
    v42 = 0;
    LODWORD(v15) = [v8 getResourceValue:&v43 forKey:NSURLTypeIdentifierKey error:&v42];
    v16 = v43;
    v17 = v42;

    if (!v15)
    {
      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000B32C0();
      }

      goto LABEL_31;
    }

    [v14 setObject:v16 forKeyedSubscript:kSFOperationFileTypeKey];
    if (![(__CFString *)v16 isEqual:kUTTypePhotosAssetBundle])
    {
      if (([(__CFString *)v16 isEqual:kUTTypeLivePhoto]& 1) == 0 && !UTTypeConformsTo(v16, kUTTypeLivePhoto))
      {
        goto LABEL_32;
      }

      v36 = v16;
      v21 = airdrop_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1000B3330();
      }

      v37 = [[PFVideoComplement alloc] initWithBundleAtURL:v8];
      v22 = [v37 imagePath];
      v23 = [NSURL fileURLWithPath:v22];
      v39 = 0;
      [v23 getResourceValue:&v39 forKey:NSURLTypeIdentifierKey error:0];
      v24 = v39;

      LODWORD(v22) = [v24 isEqual:kUTTypeJPEG];
      v25 = @"public.heic";
      if (v22)
      {
        v25 = kUTTypeJPEG;
      }

      v20 = v25;
LABEL_29:

      if (v20)
      {
        [v14 setObject:v20 forKeyedSubscript:kSFOperationtFileSubTypeKey];
LABEL_31:
      }

LABEL_32:
      v30 = [(NSMutableDictionary *)v38->_fileURLToConversionNeeded objectForKeyedSubscript:v8, v36];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = &__kCFBooleanFalse;
      }

      [v14 setObject:v32 forKeyedSubscript:kSFOperationConvertMediaFormatsKey];

      v33 = sub_1001F09CC(v8, v9);
      if (v33)
      {
        v34 = v33;
        v35 = [NSString stringWithUTF8String:v33];
        if (v35)
        {
          [v14 setObject:v35 forKeyedSubscript:kSFOperationFileBomPathKey];
        }

        free(v34);
      }

      [v10 addObject:v14];

      goto LABEL_40;
    }

    v37 = [[PFAssetBundle alloc] initWithAssetBundleAtURL:v8];
    if ([v37 mediaType] == 2)
    {
      v18 = [v37 fullSizeVideoURL];
      if (!v18)
      {
        v19 = [v37 videoURL];
        goto LABEL_22;
      }
    }

    else
    {
      if ([v37 mediaType] != 1)
      {
        goto LABEL_28;
      }

      v18 = [v37 fullSizePhotoURL];
      if (!v18)
      {
        v19 = [v37 photoURL];
LABEL_22:
        v26 = v19;

        if (v26)
        {
          v40 = 0;
          v41 = 0;
          v36 = v26;
          v27 = [(__CFString *)v26 getResourceValue:&v41 forKey:NSURLTypeIdentifierKey error:&v40];
          v20 = v41;
          v28 = v40;
          if ((v27 & 1) == 0)
          {
            v29 = airdrop_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_1000B3370();
            }
          }

          goto LABEL_29;
        }

LABEL_28:
        v20 = 0;
        goto LABEL_29;
      }
    }

    v19 = v18;
    v18 = v19;
    goto LABEL_22;
  }

  v14 = airdrop_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000B3250();
  }

  v17 = v13;
LABEL_40:
}

- (void)removeFileIconsFromProperties
{
  v3 = kSFOperationFileIconKey;
  v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFileIconKey];
  self->_fileIcon = v4;

  v5 = kSFOperationSmallFileIconKey;
  v6 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSmallFileIconKey];
  self->_smallFileIcon = v6;

  fileIcon = self->_fileIcon;
  if (fileIcon)
  {
    CFRetain(fileIcon);
    [(NSMutableDictionary *)self->_properties setObject:0 forKeyedSubscript:v3];
  }

  smallFileIcon = self->_smallFileIcon;
  if (smallFileIcon)
  {
    CFRetain(smallFileIcon);
    properties = self->_properties;

    [(NSMutableDictionary *)properties setObject:0 forKeyedSubscript:v5];
  }
}

- (void)startPublishingProgress
{
  if (!self->_progress)
  {
    if (self->_clientBundleID)
    {
      v3 = [(SDAirDropClient *)self personID];

      if (v3)
      {
        v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
        if (v4)
        {
          objc_initWeak(&location, self);
          v5 = [NSProgress alloc];
          clientBundleID = self->_clientBundleID;
          v7 = [(SDAirDropClient *)self personID];
          v8 = [v5 sf_initWithAppBundle:clientBundleID sessionID:v4 andPersonRealName:v7];
          progress = self->_progress;
          self->_progress = v8;

          [(NSProgress *)self->_progress setTotalUnitCount:100];
          v11 = _NSConcreteStackBlock;
          v12 = 3221225472;
          v13 = sub_1000AFC30;
          v14 = &unk_1008CDD98;
          objc_copyWeak(&v15, &location);
          [(NSProgress *)self->_progress setCancellationHandler:&v11];
          [(NSProgress *)self->_progress _publish:v11];
          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }

        else
        {
          v10 = airdrop_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1000B33DC();
          }
        }
      }
    }
  }
}

- (void)startSendingClassroom
{
  fileIcon = self->_fileIcon;
  properties = self->_properties;
  v5 = kSFOperationFileIconKey;
  if (fileIcon)
  {
    [(NSMutableDictionary *)properties setObject:fileIcon forKeyedSubscript:kSFOperationFileIconKey];
  }

  else
  {
    v6 = [(NSMutableDictionary *)properties objectForKeyedSubscript:kSFOperationFileIconKey];
    [(NSMutableDictionary *)self->_properties setObject:v6 forKeyedSubscript:v5];
  }

  v7 = kSFOperationSessionIDKey;
  v8 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
  if (v8)
  {
    [(NSMutableDictionary *)self->_properties setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v9 UUIDString];
    [(NSMutableDictionary *)self->_properties setObject:v10 forKeyedSubscript:v7];
  }

  v11 = [(NSMutableArray *)self->_otherStuff count];
  v12 = 184;
  if (!v11)
  {
    v12 = 112;
  }

  v13 = *(&self->super.isa + v12);
  v18 = +[SDClassroomBrowser sharedBrowser];
  v14 = self->_properties;
  v15 = [(SDAirDropClient *)self personID];
  clientBundleID = self->_clientBundleID;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v18 startSendingItems:v13 withProperties:v14 toPersonWithID:v15 clientBundleID:clientBundleID airDropClientDelegate:WeakRetained];
}

- (void)cancelSendingClassroom
{
  v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
  v3 = +[SDClassroomBrowser sharedBrowser];
  v4 = [(SDAirDropClient *)self personID];
  [v3 cancelSendingItemsToPersonWithID:v4 sessionID:v5 clientBundleID:self->_clientBundleID];
}

- (void)startSending
{
  person = self->_person;
  v4 = SFNodeCopyKinds();
  v5 = [v4 containsObject:kSFNodeKindClassroom];
  v6 = v5;
  if (!self->_shouldPublishProgress || (v5 & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained startProgress];
  }

  else
  {
    [(SDAirDropClient *)self startPublishingProgress];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AFF78;
  v8[3] = &unk_1008CF228;
  v8[4] = self;
  v9 = v6;
  [(SDAirDropClient *)self validateAirDropItemsWithCompletionHandler:v8];
}

- (void)activate
{
  [(SDXPCHelperConnection *)self->_xpcHelperConnection activate];
  [(SDAirDropClient *)self createSession];
  if (self->_discover)
  {

    [(SDAirDropClient *)self resolve];
  }

  else if ([(SDAirDropClient *)self splitOutFileURLs])
  {
    if ([(NSMutableArray *)self->_fileURLs count])
    {
      v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_fileURLs, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v4 = self->_fileURLs;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v20;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [NSFileAccessIntent readingIntentWithURL:*(*(&v19 + 1) + 8 * i) options:131074];
            [v3 addObject:v9];
          }

          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v6);
      }

      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(SDAirDropClient *)self personID];
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Starting file coordination for %@", buf, 0xCu);
      }

      v12 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
      v13 = +[NSOperationQueue mainQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000B0668;
      v16[3] = &unk_1008CF250;
      v17 = v3;
      v18 = self;
      v14 = v3;
      [v12 coordinateAccessWithIntents:v14 queue:v13 byAccessor:v16];
    }

    else
    {

      [(SDAirDropClient *)self startSending];
    }
  }

  else
  {
    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3494();
    }
  }
}

- (void)resolve
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    person = self->_person;
    v10 = SFNodeCopyDomain();
    v5 = self->_person;
    v6 = SFNodeCopyServiceName();
    v7 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [(SDAirDropPeerMetric *)self->_metric setBonjourResolveComplete:v7];

    v8 = [[SDBonjourResolver alloc] initWithName:v6 type:sub_10011830C() domain:v10 path:0 timeout:1];
    resolver = self->_resolver;
    self->_resolver = v8;

    [(SDBonjourResolver *)self->_resolver setDelegate:self];
    [(SDBonjourResolver *)self->_resolver resolve];
  }
}

- (BOOL)send
{
  if (self->_transactionStarted || self->_cancelled)
  {
    return 0;
  }

  person = self->_person;
  v5 = SFNodeCopyComputerName();
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start transaction to %@", &v12, 0xCu);
  }

  self->_transactionStarted = 1;
  [(SDStatusMonitor *)self->_monitor airDropTransactionBegin:1];
  v7 = +[SDServerBrowser sharedBrowser];
  [v7 incrementTransfersInitiated];

  v8 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v8;

  self->_powerAssertionID = sub_1000925A4();
  v10 = airdrop_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    powerAssertionID = self->_powerAssertionID;
    v12 = 67109120;
    LODWORD(v13) = powerAssertionID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Power assertion retained (%d)", &v12, 8u);
  }

  [(SDAirDropClient *)self notifyClientForEvent:11 withProperty:0];
  [(SDAirDropClient *)self resolve];

  return 1;
}

- (NSString)personID
{
  person = self->_person;
  v3 = SFNodeCopyRealName();

  return v3;
}

- (void)invalidate
{
  self->_cancelled = 1;
  [(NSURLSessionUploadTask *)self->_askTask cancel];
  askTask = self->_askTask;
  self->_askTask = 0;

  [(NSURLSessionUploadTask *)self->_uploadTask cancel];
  uploadTask = self->_uploadTask;
  self->_uploadTask = 0;

  [(NSURLSessionUploadTask *)self->_discoverTask cancel];
  discoverTask = self->_discoverTask;
  self->_discoverTask = 0;

  [(NSURLSession *)self->_session finishTasksAndInvalidate];
  session = self->_session;
  self->_session = 0;

  [(SDAirDropFileZipper *)self->_zipper setDelegate:0];
  [(SDAirDropFileZipper *)self->_zipper stop];
  zipper = self->_zipper;
  self->_zipper = 0;

  [(SDBonjourResolver *)self->_resolver setDelegate:0];
  [(SDBonjourResolver *)self->_resolver cancel];
  resolver = self->_resolver;
  self->_resolver = 0;

  [(SDXPCHelperConnection *)self->_xpcHelperConnection invalidate];
  xpcHelperConnection = self->_xpcHelperConnection;
  self->_xpcHelperConnection = 0;

  if (self->_personAdded)
  {
    v10 = +[SDConnectedBrowser sharedBrowser];
    [v10 removeAirDropPerson:self->_person];

    self->_personAdded = 0;
  }

  filesToCleanup = self->_filesToCleanup;
  if (filesToCleanup)
  {
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v12 = filesToCleanup;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = 0;
      v17 = *v36;
      *&v14 = 138412546;
      v31 = v14;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v35 + 1) + 8 * v18);
          v34 = v19;
          v21 = sub_1001F1630(v20, &v34);
          v16 = v34;

          if (!v21)
          {
            v22 = airdrop_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = v31;
              v40 = v20;
              v41 = 2112;
              v42 = v16;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "SDAirDropClient: removeObjectAtURL(%@) failed %@", buf, 0x16u);
            }
          }

          v18 = v18 + 1;
          v19 = v16;
        }

        while (v15 != v18);
        v15 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v23 = self->_filesToCleanup;
    self->_filesToCleanup = 0;
  }

  [(PHMediaFormatConversionManager *)self->_conversionManager invalidate];
  conversionManager = self->_conversionManager;
  self->_conversionManager = 0;

  if (self->_p2pRetained)
  {
    v25 = 1.5;
    v26 = sub_1001F0530(1.5);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B0E34;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v26, queue, block);
    self->_p2pRetained = 0;
  }

  else
  {
    v25 = 0.0;
    if (!self->_queueSuspended)
    {
      goto LABEL_23;
    }

    sub_10008FEB8(self);
    v28 = sub_10008F9A4();
    dispatch_resume(v28);
  }

  self->_queueSuspended = 0;
LABEL_23:
  if (self->_transactionStarted)
  {
    self->_transactionStarted = 0;
    v29 = sub_1001F0530(v25);
    v30 = self->_queue;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000B0E8C;
    v32[3] = &unk_1008CDEA0;
    v32[4] = self;
    dispatch_after(v29, v30, v32);
  }

  [(SDAirDropClient *)self releaseIdleSleepAssertion];
}

- (void)generatePreviewForFileURL:(id)a3
{
  v3 = a3;
  v64[4] = 0;
  error = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000B17EC;
  v64[3] = &unk_1008CF110;
  v4 = objc_retainBlock(v64);
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(v3, kCFURLTypeIdentifierKey, &propertyValueTypeRefPtr, &error))
  {
    v53 = [v3 pathExtension];
    v5 = SFIsCalendarEvent();
    if (([(NSString *)self->_clientBundleID isEqual:@"com.apple.mobilephone"]& 1) != 0 || ([(NSString *)self->_clientBundleID isEqual:@"com.apple.MobileAddressBook"]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = SFIsContact();
    }

    if ((v5 | v6))
    {
      v62 = 0;
      v51 = [NSData dataWithContentsOfURL:v3 options:0 error:&v62];
      v52 = v62;
      if (!v51)
      {
        v21 = airdrop_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000B36E4();
        }

        goto LABEL_66;
      }

      v50 = kSFOperationItemsDescriptionKey;
      v7 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:?];
      v8 = v7;
      if (v5)
      {
        v9 = [[EKEventStore alloc] initWithOptions:16 path:@":memory:"];
        v10 = [v9 defaultCalendarForNewEvents];
        v11 = [v9 importICSData:v51 intoCalendar:v10 options:0];
        v49 = v9;

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v58 objects:v72 count:16];
        if (v13)
        {
          v14 = *v59;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v59 != v14)
              {
                objc_enumerationMutation(v12);
              }

              if (v8)
              {
                v16 = *(*(&v58 + 1) + 8 * i);
                v17 = [v16 title];
                if (v17)
                {
                  v18 = [v16 startDate];
                  v19 = v18 == 0;

                  if (!v19)
                  {
                    v71[0] = v8;
                    v70[0] = @"SFAirDropActivitySubjectMain";
                    v70[1] = @"SFAirDropActivitySubjectEventTitle";
                    v25 = [v16 title];
                    v71[1] = v25;
                    v70[2] = @"SFAirDropActivitySubjectEventStartDate";
                    v26 = [v16 startDate];
                    v27 = SFDateToStringRFC3339();
                    v71[2] = v27;
                    v70[3] = @"SFAirDropActivitySubjectEventIsAllDay";
                    v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 isAllDay]);
                    v71[3] = v28;
                    v20 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];

                    goto LABEL_30;
                  }
                }
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v58 objects:v72 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v20 = 0;
LABEL_30:

        v29 = 0;
        goto LABEL_51;
      }

      if (!v6)
      {
        v29 = 0;
        v20 = 0;
LABEL_53:
        [(NSMutableDictionary *)self->_properties setObject:v8 forKeyedSubscript:v50, v48];
        v39 = v29;
        v21 = v39;
        if (v39)
        {
          v40 = v39;
          v41 = sub_100117E28([v21 CGImage], 0x20000);
          v42 = v41;
          if (v41)
          {
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_1000B17FC;
            v56[3] = &unk_1008CF110;
            v56[4] = v41;
            v43 = objc_retainBlock(v56);
            v44 = sub_100117A0C(v42);
            v45 = v44;
            if (v44)
            {
              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v55[2] = sub_1000B1804;
              v55[3] = &unk_1008CF110;
              v55[4] = v44;
              v46 = objc_retainBlock(v55);
              [(NSMutableDictionary *)self->_properties setObject:v45 forKeyedSubscript:kSFOperationFileIconKey];
              (v46[2])(v46);
            }

            else
            {
              v47 = airdrop_log();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                sub_1000B366C();
              }

              [(NSMutableDictionary *)self->_properties setObject:0 forKeyedSubscript:kSFOperationFileIconKey];
            }

            (*(v43 + 16))(v43);
          }

          else
          {
            v43 = airdrop_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_1000B36A8();
            }
          }
        }

        else
        {
          [(NSMutableDictionary *)self->_properties setObject:0 forKeyedSubscript:kSFOperationFileIconKey];
        }

LABEL_66:
        goto LABEL_67;
      }

      v57 = v52;
      v49 = [CNContactVCardSerialization contactsWithData:v51 error:&v57];
      v48 = v57;

      v22 = [v49 count];
      if (!v22)
      {
        v12 = airdrop_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v30 = [v48 localizedDescription];
          sub_1000B3614(v30, &buf, v12);
        }

        v8 = 0;
        v20 = 0;
        v29 = 0;
        goto LABEL_50;
      }

      v12 = [v49 firstObject];
      v23 = [CNContactFormatter stringFromContact:v12 style:0];
      v8 = v23;
      if (!v23)
      {
        v20 = 0;
        v29 = 0;
LABEL_49:

LABEL_50:
        v52 = v48;
LABEL_51:

        if (v20)
        {
          v37 = [NSJSONSerialization dataWithJSONObject:v20 options:0 error:0];
          v38 = [[NSString alloc] initWithData:v37 encoding:4];

          v8 = v38;
        }

        goto LABEL_53;
      }

      v24 = v23;
      if (v22 == 1)
      {
        v20 = 0;
      }

      else
      {
        v68[0] = @"SFAirDropActivitySubjectMain";
        v68[1] = @"SFAirDropActivitySubjectOtherContactsCount";
        v69[0] = v24;
        v31 = [NSNumber numberWithUnsignedInteger:v22 - 1];
        v69[1] = v31;
        v20 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
      }

      v32 = [(SDXPCHelperConnection *)self->_xpcHelperConnection monogramImageDataForContact:v12 style:2 diameter:1 monogramsAsFlatImages:0 isContactImage:70.0, v48];
      if (v32)
      {
        v33 = SFCreateCGImageFromData();
        v29 = 0;
        for (j = 1; v33 && (j & 1) != 0; j = 0)
        {
          v35 = [UIImage imageWithCGImage:v33];

          CFRelease(v33);
          v29 = v35;
        }

        if (v29)
        {
          goto LABEL_48;
        }

        v36 = airdrop_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3594(&buf, v67, v36);
        }
      }

      else
      {
        v36 = airdrop_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1000B35D4(&buf, v67, v36);
        }
      }

      v29 = 0;
LABEL_48:

      goto LABEL_49;
    }
  }

  else
  {
    v53 = airdrop_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3754(&error);
    }
  }

LABEL_67:

  (v4[2])(v4);
}

- (void)convertMediaItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v17 = [(SDAirDropClient *)self receiverMediaCapabilities];
  person = self->_person;
  v16 = sub_100092374();
  v6 = self->_person;
  v15 = sub_1000923F4();
  v7 = self->_person;
  v8 = sub_1000923A8();
  fileURLs = self->_fileURLs;
  clientBundleID = self->_clientBundleID;
  conversionManager = self->_conversionManager;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B1974;
  v20[3] = &unk_1008CF278;
  v20[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B1A94;
  v18[3] = &unk_1008CF2C8;
  v18[4] = self;
  v19 = v4;
  v13 = v4;
  LOBYTE(v14) = v8;
  [SDAirDropLegacyHelper convertMediaItemsWithFileURLs:fileURLs clientBundleID:clientBundleID conversionManager:conversionManager mediaCapabilities:v17 supportsLivePhoto:v16 supportsAssetBundles:v15 supportsWideGamut:v14 queue:queue progressHandler:v20 completionHandler:v18];
}

- (id)receiverMediaCapabilities
{
  person = self->_person;
  v4 = SFNodeCopyMediaCapabilities();
  if (v4)
  {
    v5 = [[PFMediaCapabilities alloc] initWithOpaqueRepresentation:v4];
    if ([(SDAirDropClient *)self receiverDeviceModelNameSuggestsMacPlatform])
    {
      v8 = PFMediaCapabilitiesOutOfBandHintsPlatformKey;
      v9 = &off_10090B8B0;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [v5 setOutOfBandHints:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)receiverDeviceModelNameSuggestsMacPlatform
{
  person = self->_person;
  v3 = SFNodeCopyModel();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lowercaseString];
    v6 = [v5 containsString:@"mac"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSThread mainThread];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
      if (!self->_conversionNotified)
      {
        self->_conversionNotified = 1;
        [(SDAirDropClient *)self notifyClientForEvent:15 withProperty:0];
      }

      [v14 fractionCompleted];
      [(NSProgress *)self->_progress setCompletedUnitCount:(v15 * 100.0 * 0.2)];
      [(SDAirDropClient *)self postNotificationForTransferStatus:15 progress:[(NSProgress *)self->_progress completedUnitCount]];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B2148;
    block[3] = &unk_1008CDC58;
    block[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = a6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)donateTransferInteractionToDuet
{
  v3 = objc_alloc_init(_CDInteraction);
  [v3 setBundleId:self->_clientBundleID];
  [v3 setTargetBundleId:UIActivityTypeAirDrop];
  [v3 setDirection:1];
  [v3 setMechanism:13];
  v4 = +[NSDate date];
  [v3 setEndDate:v4];

  v5 = [_CDContact alloc];
  person = self->_person;
  v7 = SFNodeCopyAppleID();
  v8 = self->_person;
  v9 = SFNodeCopyDisplayName();
  v10 = self->_person;
  v11 = SFNodeCopyContactIdentifier();
  v12 = [v5 initWithIdentifier:v7 type:2 displayName:v9 personId:v11 personIdType:3];

  v32 = v12;
  v44 = v12;
  v13 = [NSArray arrayWithObjects:&v44 count:1];
  v34 = v3;
  [v3 setRecipients:v13];

  v37 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = self;
  obj = self->_fileURLs;
  v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    v17 = kUTTagClassFilenameExtension;
    do
    {
      v18 = 0;
      v35 = v15;
      do
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        v20 = objc_alloc_init(_CDAttachment);
        v21 = [v19 pathExtension];
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v17, v21, 0);
        [v20 setUti:PreferredIdentifierForTag];
        if ([(__CFString *)v21 isEqualToString:@"txt"])
        {
          v23 = v17;
          v24 = [v19 path];
          v25 = [NSString stringWithContentsOfFile:v24 encoding:4 error:0];

          if (v25)
          {
            [v20 setContentText:v25];
          }

          v17 = v23;
          v15 = v35;
        }

        [v37 addObject:v20];

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v15);
  }

  if ([(NSMutableArray *)v33->_otherStuff count])
  {
    v26 = 0;
    do
    {
      v27 = [(NSMutableArray *)v33->_otherStuff objectAtIndexedSubscript:v26];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [NSURL URLWithString:v27];
        if (v28)
        {
          v29 = objc_alloc_init(_CDAttachment);
          [v29 setContentURL:v28];
          [v29 setUti:kUTTypeURL];
          [v37 addObject:v29];
        }
      }

      ++v26;
    }

    while ([(NSMutableArray *)v33->_otherStuff count]> v26);
  }

  [v34 setAttachments:v37];
  v30 = +[_CDInteractionRecorder interactionRecorder];
  v42 = v34;
  v31 = [NSArray arrayWithObjects:&v42 count:1];
  [v30 recordInteractions:v31 completionHandler:&stru_1008CF2E8];
}

- (SDAirDropClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end