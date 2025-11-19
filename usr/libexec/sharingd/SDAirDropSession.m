@interface SDAirDropSession
- (BOOL)send;
- (SDAirDropSession)initWithPerson:(__SFNode *)a3 items:(id)a4 sandboxExtensions:(id)a5;
- (SDAirDropSessionDelegate)delegate;
- (void)airDropClient:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)consumeSandboxExtensions;
- (void)dealloc;
- (void)handleConversionProgress:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postNotificationForTransferStatus:(int64_t)a3 progress:(double)a4;
- (void)releaseSandboxExtensions;
- (void)removeClientAlerts;
- (void)serversChanged:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)start;
- (void)startProgress;
- (void)stop;
@end

@implementation SDAirDropSession

- (SDAirDropSession)initWithPerson:(__SFNode *)a3 items:(id)a4 sandboxExtensions:(id)a5
{
  v9 = a4;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = SDAirDropSession;
  v11 = [(SDAirDropSession *)&v36 init];
  if (v11)
  {
    v12 = objc_opt_new();
    airDropClients = v11->_airDropClients;
    v11->_airDropClients = v12;

    v11->_clientPid = 0;
    v14 = [NSProgress discreteProgressWithTotalUnitCount:0];
    conversionProgress = v11->_conversionProgress;
    v11->_conversionProgress = v14;

    v16 = objc_opt_new();
    currentNames = v11->_currentNames;
    v11->_currentNames = v16;

    objc_storeWeak(&v11->_delegate, 0);
    v18 = [SDAirDropDiscoveryLogger discoverabilityMetricsForNode:a3];
    discoveryMetrics = v11->_discoveryMetrics;
    v11->_discoveryMetrics = v18;

    objc_storeStrong(&v11->_items, a4);
    v11->_lastEvent = 1;
    Copy = SFNodeCreateCopy();
    progress = v11->_progress;
    v11->_person = Copy;
    v11->_progress = 0;

    v22 = objc_opt_new();
    properties = v11->_properties;
    v11->_properties = v22;

    v24 = objc_opt_new();
    results = v11->_results;
    v11->_results = v24;

    v26 = SFNodeCopyRealName();
    rootNodeName = v11->_rootNodeName;
    v11->_rootNodeName = v26;

    objc_storeStrong(&v11->_sandboxExtensions, a5);
    v28 = objc_opt_new();
    sandboxExtensionHandles = v11->_sandboxExtensionHandles;
    v11->_sandboxExtensionHandles = v28;

    v30 = SFNodeCopySiblingNodes();
    v31 = [v30 mutableCopy];
    siblingNodes = v11->_siblingNodes;
    v11->_siblingNodes = v31;

    v33 = objc_alloc_init(NSProgress);
    transferProgress = v11->_transferProgress;
    v11->_transferProgress = v33;
  }

  return v11;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  properties = self->_properties;
  if (a3)
  {
    [(NSMutableDictionary *)properties setObject:a3 forKeyedSubscript:a4];
  }

  else
  {
    [(NSMutableDictionary *)properties removeObjectForKey:a4];
  }
}

- (void)consumeSandboxExtensions
{
  v3 = [(NSDictionary *)self->_sandboxExtensions allValues];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 67109378;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        [v9 bytes];
        v10 = sandbox_extension_consume();
        if (v10 < 0)
        {
          v12 = airdrop_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *__error();
            *buf = v16;
            v22 = v13;
            v23 = 2112;
            v24 = v9;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "sandbox_extension_consume failed with error %d for tokenData %@", buf, 0x12u);
          }
        }

        else
        {
          sandboxExtensionHandles = self->_sandboxExtensionHandles;
          v12 = [NSNumber numberWithLongLong:v10];
          [(NSMutableArray *)sandboxExtensionHandles addObject:v12];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  if ([(NSMutableArray *)self->_sandboxExtensionHandles count])
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_sandboxExtensionHandles count];
      *buf = 67109120;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Consumed %d sandbox extensions", buf, 8u);
    }
  }
}

- (void)releaseSandboxExtensions
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_sandboxExtensionHandles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) integerValue];
        sandbox_extension_release();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)start
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    person = self->_person;
    *buf = 138412290;
    v22 = person;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Start AirDrop session with %@", buf, 0xCu);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"com.apple.sharingd.AirDropTransferInitiated" object:0];

  [(SDAirDropSession *)self consumeSandboxExtensions];
  siblingNodes = self->_siblingNodes;
  if (siblingNodes)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = siblingNodes;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(SDAirDropSession *)self addClientForNode:*(*(&v16 + 1) + 8 * v13) shouldPublishProgress:0, v16];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.AirDropChanged" object:0];

    [(SDAirDropSession *)self serversChanged:0];
    [(SDAirDropSession *)self postNotificationForTransferStatus:11 progress:0.0];
  }

  else
  {
    [(SDAirDropSession *)self addClientForNode:self->_person shouldPublishProgress:1];
  }

  if (![(NSMutableArray *)self->_airDropClients count])
  {
    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No session clients started at the moment, most likely we have not discovered the node over Bonjour yet", buf, 2u);
    }
  }
}

- (BOOL)send
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_airDropClients;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) send];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)serversChanged:(id)a3
{
  v4 = +[SDServerBrowser sharedBrowser];
  v5 = [v4 airDropNodesForDomain:@"local"];

  person = self->_person;
  v19 = SFNodeCopyComputerName();
  v7 = self->_person;
  v8 = SFNodeCopyContactIdentifiers();
  if (!v8)
  {
    v9 = [(NSMutableArray *)self->_siblingNodes objectAtIndexedSubscript:0];
    v8 = sub_100090478();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if (sub_100090360())
        {
          v16 = SFNodeCopyComputerName();
          if (![v16 isEqualToString:v19])
          {
            goto LABEL_14;
          }
        }

        else
        {
          v16 = sub_100090478();
          if (![v16 intersectsSet:v8])
          {
            goto LABEL_14;
          }
        }

        currentNames = self->_currentNames;
        v18 = SFNodeCopyRealName();
        LOBYTE(currentNames) = [(NSMutableArray *)currentNames containsObject:v18];

        if ((currentNames & 1) == 0)
        {
          [(NSMutableArray *)self->_siblingNodes addObject:v15];
          [(SDAirDropSession *)self addClientForNode:v15 shouldPublishProgress:0];
        }

LABEL_14:

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)stop
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    person = self->_person;
    *buf = 138412290;
    v21 = person;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop AirDrop session with %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_airDropClients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * v9) invalidate];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:@"com.apple.sharingd.AirDropChanged" object:0];

  airDropClients = self->_airDropClients;
  self->_airDropClients = 0;

  currentNames = self->_currentNames;
  self->_currentNames = 0;

  responseClient = self->_responseClient;
  self->_responseClient = 0;

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)dealloc
{
  if (self->_conversionObserver)
  {
    [(NSProgress *)self->_conversionProgress removeObserver:self forKeyPath:@"fractionCompleted"];
  }

  [(SDAirDropSession *)self releaseSandboxExtensions];
  [(NSProgress *)self->_progress _unpublish];
  CFRelease(self->_person);
  v3.receiver = self;
  v3.super_class = SDAirDropSession;
  [(SDAirDropSession *)&v3 dealloc];
}

- (void)removeClientAlerts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_airDropClients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 != self->_responseClient)
        {
          [(SDAirDropClient *)v8 invalidate];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)airDropClient:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v10 mutableCopy];
  [v11 addEntriesFromDictionary:self->_results];
  if (a4 == 7)
  {
    v12 = [v10 objectForKeyedSubscript:kSFOperationBytesCopiedKey];
    -[NSProgress setCompletedUnitCount:](self->_transferProgress, "setCompletedUnitCount:", [v12 longLongValue]);

    LODWORD(v12) = self->_hadConversion;
    [(NSProgress *)self->_transferProgress fractionCompleted];
    v14 = v13 * 100.0;
    if (v12)
    {
      v14 = v14 * 0.8 + 20.0;
    }

    [(NSProgress *)self->_progress setCompletedUnitCount:v14];
    progress = self->_progress;
    v16 = [v10 objectForKeyedSubscript:kSFOperationTimeRemainingKey];
    [(NSProgress *)progress setUserInfoObject:v16 forKey:NSProgressEstimatedTimeRemainingKey];

    v17 = [(NSProgress *)self->_progress completedUnitCount];
    v18 = self;
    v19 = 7;
    goto LABEL_5;
  }

  v21 = airdrop_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_100056ED0(a4, v11, v21);
  }

  if (a4 > 8)
  {
    if (a4 <= 10)
    {
      if (a4 == 9)
      {
        v25 = airdrop_log();
        v26 = os_signpost_id_make_with_pointer(v25, self);

        v27 = airdrop_log();
        v28 = v27;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          LOWORD(v43) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v26, "TransferTime", " enableTelemetry=YES ", &v43, 2u);
        }

        v29 = airdrop_log();
        v30 = v29;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          LOWORD(v43) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v26, "TransferTimeBytes", " enableTelemetry=YES ", &v43, 2u);
        }

        [(NSProgress *)self->_progress setSf_transferState:6];
        v31 = [(NSProgress *)self->_progress sf_personRealName];

        if (!v31)
        {
          goto LABEL_6;
        }

        v17 = 0.0;
        v18 = self;
        v19 = 9;
      }

      else
      {
        v22 = self->_progress;
        v23 = [v10 objectForKeyedSubscript:kSFOperationErrorKey];
        v24 = [v23 localizedDescription];
        [(NSProgress *)v22 sf_failedWithError:v24];

        v17 = 0.0;
        v18 = self;
        v19 = 10;
      }

LABEL_5:
      [(SDAirDropSession *)v18 postNotificationForTransferStatus:v19 progress:v17];
      goto LABEL_6;
    }

    if (a4 == 11)
    {
      if (self->_conversionActive)
      {
        goto LABEL_6;
      }

      [(NSProgress *)self->_progress setSf_transferState:2];
      v17 = 0.0;
      v18 = self;
      v19 = 11;
      goto LABEL_5;
    }

    if (a4 == 15)
    {
      [(NSProgress *)self->_progress setSf_transferState:1];
      [(NSProgress *)self->_progress setCompletedUnitCount:0];
    }
  }

  else
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        if (self->_conversionActive)
        {
          goto LABEL_6;
        }

        self->_allowedWaiting = 1;
        [(NSProgress *)self->_progress setSf_transferState:2];
        v17 = 0.0;
        v18 = self;
        v19 = 3;
      }

      else
      {
        if (a4 != 4)
        {
          goto LABEL_6;
        }

        objc_storeStrong(&self->_responseClient, a3);
        [(SDAirDropSession *)self removeClientAlerts];
        [(NSProgress *)self->_progress setSf_transferState:4];
        v17 = 0.0;
        v18 = self;
        v19 = 4;
      }

      goto LABEL_5;
    }

    if (a4 == 5)
    {
      objc_storeStrong(&self->_responseClient, a3);
      [(SDAirDropSession *)self removeClientAlerts];
      if (self->_conversionObserver)
      {
        self->_conversionObserver = 0;
        [(NSProgress *)self->_conversionProgress removeObserver:self forKeyPath:@"fractionCompleted"];
      }

      if (self->_hadConversion)
      {
        v32 = 20;
      }

      else
      {
        v32 = 0;
      }

      [(NSProgress *)self->_progress setCompletedUnitCount:v32];
      [(NSProgress *)self->_conversionProgress cancel];
      v33 = airdrop_log();
      v34 = os_signpost_id_make_with_pointer(v33, self);

      v35 = kSFOperationTotalBytesKey;
      v36 = [v10 objectForKeyedSubscript:kSFOperationTotalBytesKey];
      v37 = [v36 longLongValue];

      v38 = airdrop_log();
      v39 = v38;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        LOWORD(v43) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, v34, "TransferTime", "", &v43, 2u);
      }

      v40 = airdrop_log();
      v41 = v40;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        v43 = 134349056;
        v44 = 102400 * (v37 / 102400);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, v34, "TransferTimeBytes", "totalBytes=%{public, signpost.telemetry:number1}lld", &v43, 0xCu);
      }

      [(NSProgress *)self->_progress setSf_transferState:3];
      v42 = [v10 objectForKeyedSubscript:v35];
      -[NSProgress setTotalUnitCount:](self->_transferProgress, "setTotalUnitCount:", [v42 longLongValue]);

      [(NSProgress *)self->_transferProgress setCompletedUnitCount:0];
      *&self->_conversionActive = 0;
    }
  }

LABEL_6:
  self->_lastEvent = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained airDropSession:self event:a4 withResults:v11];
}

- (void)postNotificationForTransferStatus:(int64_t)a3 progress:(double)a4
{
  v6 = [NSNumber numberWithDouble:a4];
  progress = self->_progress;
  if (progress)
  {
    v8 = [(NSProgress *)progress sf_personRealName];
  }

  else
  {
    v8 = self->_rootNodeName;
  }

  v9 = v8;
  v10 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
  v11 = v10;
  if (self->_siblingNodes)
  {
    if (v6)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && v10 != 0)
    {
      v14 = +[NSNotificationCenter defaultCenter];
      v17[0] = @"TransferProgress";
      v17[1] = @"RealName";
      v18[0] = v6;
      v18[1] = v9;
      v18[2] = v11;
      v17[2] = @"SessionID";
      v17[3] = @"TransferText";
      v15 = [NSNumber numberWithLong:a3];
      v18[3] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
      [v14 postNotificationName:@"TransferUpdated" object:self userInfo:v16];
    }
  }
}

- (void)startProgress
{
  if (!self->_progress && self->_clientBundleID)
  {
    v3 = self->_rootNodeName;
    if (v3)
    {
      v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
      if (v4)
      {
        objc_initWeak(&location, self);
        v5 = [NSProgress alloc];
        v6 = [v5 sf_initWithAppBundle:self->_clientBundleID sessionID:v4 andPersonRealName:v3];
        progress = self->_progress;
        self->_progress = v6;

        [(NSProgress *)self->_progress setTotalUnitCount:100];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100056980;
        v9[3] = &unk_1008CDC30;
        objc_copyWeak(&v11, &location);
        v10 = v4;
        [(NSProgress *)self->_progress setCancellationHandler:v9];
        [(NSProgress *)self->_progress _publish];

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }

      else
      {
        v8 = airdrop_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100056F7C(v8);
        }
      }
    }
  }
}

- (void)handleConversionProgress:(id)a3
{
  v7 = a3;
  conversionProgress = self->_conversionProgress;
  if (!conversionProgress)
  {
    v5 = [NSProgress discreteProgressWithTotalUnitCount:0];
    v6 = self->_conversionProgress;
    self->_conversionProgress = v5;

    conversionProgress = self->_conversionProgress;
  }

  self->_conversionActive = 1;
  [(NSProgress *)conversionProgress setTotalUnitCount:[(NSProgress *)conversionProgress totalUnitCount]+ 100];
  [(NSProgress *)self->_conversionProgress addChild:v7 withPendingUnitCount:100];
  if (!self->_conversionObserver && !self->_allowedWaiting)
  {
    self->_conversionObserver = 1;
    [(NSProgress *)self->_conversionProgress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];
  }
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
      v15 = v14;
      if (!self->_conversionNotified && ([v14 isCancelled] & 1) == 0 && self->_conversionActive)
      {
        self->_conversionNotified = 1;
        [(SDAirDropSession *)self airDropClient:0 event:15 withResults:0];
      }

      if (([v15 isCancelled] & 1) == 0 && !self->_hadConversion)
      {
        [v15 fractionCompleted];
        [(NSProgress *)self->_progress setCompletedUnitCount:(v16 * 100.0 * 0.2)];
        [(SDAirDropSession *)self postNotificationForTransferStatus:15 progress:[(NSProgress *)self->_progress completedUnitCount]];
      }

      [v15 fractionCompleted];
      if (v17 == 1.0 || [v15 isCancelled])
      {
        self->_hadConversion = 1;
        *&self->_conversionActive = 0;
        if (self->_conversionObserver)
        {
          self->_conversionObserver = 0;
          [(NSProgress *)self->_conversionProgress removeObserver:self forKeyPath:@"fractionCompleted"];
          conversionProgress = self->_conversionProgress;
          self->_conversionProgress = 0;
        }
      }
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100056D3C;
    block[3] = &unk_1008CDC58;
    block[4] = self;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = a6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (SDAirDropSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end