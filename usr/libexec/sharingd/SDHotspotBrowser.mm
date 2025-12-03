@interface SDHotspotBrowser
+ (id)sharedBrowser;
- (BOOL)accountHasPairedPeers;
- (BOOL)accountHasTetheringSources;
- (BOOL)outstandingRequestsHasHotspotDeviceForID:(id)d;
- (BOOL)pairedPeerIsValid:(id)valid;
- (BOOL)sendMessage:(id)message toDeviceWithID:(id)d isRequest:(BOOL)request messageID:(id)iD error:(id *)error identifier:(id *)identifier;
- (BOOL)sendMessage:(id)message toPeer:(id)peer isRequest:(BOOL)request messageID:(id)d error:(id *)error identifier:(id *)identifier;
- (BOOL)serviceHasDuplicateForBTUUID:(id)d;
- (BOOL)updateIDHash;
- (BOOL)updateTimeString;
- (SDHotspotBrowser)init;
- (id)HMACWithDSID:(id)d timeString:(id)string;
- (id)accountAltDSID;
- (id)appendHashToData:(id)data withType:(unsigned __int8)type;
- (id)deviceForIdentifier:(id)identifier;
- (id)formattedDate:(id)date;
- (id)modelCodeForIdentifier:(id)identifier;
- (id)nextDateForDayInterval:(int)interval;
- (id)pairedPeers;
- (id)tetheringPeers;
- (void)activate;
- (void)addObservers;
- (void)addRetrieveTimer:(id)timer;
- (void)altDSIDUpdated:(id)updated;
- (void)appleIDChanged:(id)changed;
- (void)appleIDSignedIn:(id)in;
- (void)appleIDSignedOut:(id)out;
- (void)clearAccountAltDSID;
- (void)clearNextDayTimer;
- (void)continuity:(id)continuity didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer;
- (void)continuity:(id)continuity didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)continuity:(id)continuity didFailToStartScanningForType:(int64_t)type withError:(id)error;
- (void)continuity:(id)continuity didStartAdvertisingOfType:(int64_t)type;
- (void)continuity:(id)continuity didStartScanningForType:(int64_t)type;
- (void)continuity:(id)continuity didStopAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)continuity:(id)continuity didStopScanningForType:(int64_t)type;
- (void)continuityDidUpdateState:(id)state;
- (void)credentialLog:(id)log;
- (void)debugInfoRequested:(id)requested;
- (void)enableHotspotForDevice:(id)device withCompletionHandler:(id)handler;
- (void)generateNextDayTimeOffset;
- (void)handleIncomingResponse:(id)response identifier:(id)identifier;
- (void)handleScanAssertionTimerFired;
- (void)handleScanResetTimerFired;
- (void)hotspotConnectionStateChanged:(id)changed;
- (void)invalidate;
- (void)invalidateScanAssertionTimer;
- (void)invalidateScanResetTimer;
- (void)invalidateTimerWithIdentifier:(id)identifier;
- (void)nextDayTimerFired:(id)fired;
- (void)preventIdleSleepAssertion;
- (void)releaseIdleSleepAssertion;
- (void)removeObservers;
- (void)restartAdvertisingTetheringRequest;
- (void)restartAdvertisingTetheringResponse;
- (void)restartConsumerScanning;
- (void)restartProducerScanning;
- (void)restartScanAssertionTimer;
- (void)restartScanResetTimer;
- (void)retrieveTimerFired:(id)fired;
- (void)screenStateChanged:(id)changed;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setHotspotManager:(id)manager;
- (void)setIdsService:(id)service;
- (void)setProducerScanEnabled:(BOOL)enabled;
- (void)setd2dEncryptionAvailable:(BOOL)available;
- (void)startBrowsing;
- (void)stopAdvertisingResponse;
- (void)stopAdvertisingTetheringRequest;
- (void)stopBrowsing;
- (void)stopConsumerScanning;
- (void)stopProducerScanning;
- (void)tetheringDidRetrieveCredentials:(id)credentials credentials:(id)a4 requestRecord:(id)record error:(id)error;
- (void)tetheringSupportChanged;
- (void)updateAccountState;
- (void)updateCrossoverTimer;
- (void)updateHasAppleID;
- (void)updateIDHashAndRestart;
- (void)wifiPasswordSharingChanged:(id)changed;
@end

@implementation SDHotspotBrowser

+ (id)sharedBrowser
{
  if (qword_100989BE0 != -1)
  {
    sub_1000C5E10();
  }

  v3 = qword_100989BD8;

  return v3;
}

- (SDHotspotBrowser)init
{
  v26.receiver = self;
  v26.super_class = SDHotspotBrowser;
  v2 = [(SDHotspotBrowser *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_IDHash = 0;
    altDSID = v2->_altDSID;
    v2->_altDSID = 0;

    timeString = v3->_timeString;
    v3->_timeString = 0;

    clientProxy = v3->_clientProxy;
    v3->_clientProxy = 0;

    targetIdentifier = v3->_targetIdentifier;
    v3->_targetIdentifier = 0;

    nextCrossoverPersistentTimer = v3->_nextCrossoverPersistentTimer;
    v3->_nextCrossoverPersistentTimer = 0;

    *&v3->_shouldBeConsumerScanning = 0;
    v9 = objc_opt_new();
    handlers = v3->_handlers;
    v3->_handlers = v9;

    v3->_powerAssertionID = 0;
    v11 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v11;

    v13 = objc_opt_new();
    discoveredDevices = v3->_discoveredDevices;
    v3->_discoveredDevices = v13;

    v15 = dispatch_queue_create("com.apple.SDHotspotBrowser-work", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v15;

    v17 = objc_opt_new();
    retrieveTimers = v3->_retrieveTimers;
    v3->_retrieveTimers = v17;

    *&v3->_targetAdvertising = 0;
    browseStartTime = v3->_browseStartTime;
    v3->_browseStartTime = 0;

    v20 = objc_opt_new();
    outstandingRequests = v3->_outstandingRequests;
    v3->_outstandingRequests = v20;

    v22 = +[SDStatusMonitor sharedMonitor];
    modelCode = [v22 modelCode];
    modelCode = v3->_modelCode;
    v3->_modelCode = modelCode;
  }

  return v3;
}

- (void)activate
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD52C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)invalidate
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD664;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)setHotspotManager:(id)manager
{
  managerCopy = manager;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD7DC;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = managerCopy;
  v6 = managerCopy;
  dispatch_async(workQueue, v7);
}

- (void)setIdsService:(id)service
{
  serviceCopy = service;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD880;
  v7[3] = &unk_1008CE028;
  v8 = serviceCopy;
  selfCopy = self;
  v6 = serviceCopy;
  dispatch_async(workQueue, v7);
}

- (void)setProducerScanEnabled:(BOOL)enabled
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BD98C;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(workQueue, v4);
}

- (void)setd2dEncryptionAvailable:(BOOL)available
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BDAFC;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  availableCopy = available;
  dispatch_async(workQueue, v4);
}

- (id)accountAltDSID
{
  if (self->_hasAppleID && !self->_altDSID)
  {
    v3 = +[SDStatusMonitor sharedMonitor];
    myAltDSID = [v3 myAltDSID];
    altDSID = self->_altDSID;
    self->_altDSID = myAltDSID;
  }

  v6 = self->_altDSID;

  return v6;
}

- (void)clearAccountAltDSID
{
  altDSID = self->_altDSID;
  self->_altDSID = 0;
}

- (void)updateHasAppleID
{
  hasAppleID = self->_hasAppleID;
  v4 = +[SDStatusMonitor sharedMonitor];
  self->_hasAppleID = [v4 signedIntoPrimaryiCloudAccount];

  if (hasAppleID != self->_hasAppleID)
  {
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_hasAppleID)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated has Apple ID = %@", &v7, 0xCu);
    }
  }
}

- (void)updateIDHashAndRestart
{
  if ([(SDHotspotBrowser *)self updateIDHash])
  {
    if (self->_hasAppleID)
    {
      [(SDHotspotBrowser *)self restartAdvertisingTetheringRequest];

      [(SDHotspotBrowser *)self restartProducerScanning];
    }

    else
    {
      [(SDHotspotBrowser *)self stopAdvertisingResponse];
      [(SDHotspotBrowser *)self stopAdvertisingTetheringRequest];
      [(SDHotspotBrowser *)self stopConsumerScanning];

      [(SDHotspotBrowser *)self stopProducerScanning];
    }
  }
}

- (BOOL)updateIDHash
{
  p_IDHash = &self->_IDHash;
  IDHash = self->_IDHash;
  updateTimeString = [(SDHotspotBrowser *)self updateTimeString];
  v6 = self->_altDSID;
  accountAltDSID = [(SDHotspotBrowser *)self accountAltDSID];
  if (self->_hasAppleID)
  {
    v8 = v6;
    v9 = accountAltDSID;
    v10 = v9;
    if (v8 == v9)
    {

      if (!updateTimeString)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if ((v8 != 0) != (v9 == 0))
      {
        v11 = [(NSString *)v8 isEqual:v9];

        if (v11)
        {
          if (updateTimeString)
          {
            goto LABEL_18;
          }

LABEL_11:
          v13 = tethering_log();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
LABEL_23:

            goto LABEL_24;
          }

          v14 = v8;
          v15 = v10;
          v16 = v15;
          if (v8 == v10)
          {
          }

          else
          {
            if ((v14 != 0) == (v15 == 0))
            {

LABEL_30:
              v25 = @"YES";
              goto LABEL_31;
            }

            v17 = [(NSString *)v14 isEqual:v15];

            if (!v17)
            {
              goto LABEL_30;
            }
          }

          v25 = @"NO";
LABEL_31:
          v26 = 138412546;
          *v27 = @"NO";
          *&v27[8] = 2112;
          *&v27[10] = v25;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not updating hash (time updated = %@, id updated = %@)", &v26, 0x16u);
          goto LABEL_23;
        }
      }

      else
      {
      }

      [(SDHotspotBrowser *)self generateNextDayTimeOffset];
    }

LABEL_18:
    v13 = [(SDHotspotBrowser *)self HMACWithDSID:v10 timeString:self->_timeString];
    v18 = [v13 subdataWithRange:0, 4];
    self->_IDHash = 0;
    [v18 getBytes:p_IDHash length:4];
    [(SDHotspotBrowser *)self clearNextDayTimer];
    v19 = tethering_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_IDHash;
      v21 = @"NO";
      if (self->_hasAppleID)
      {
        v21 = @"YES";
      }

      v26 = 67109378;
      *v27 = v20;
      *&v27[4] = 2112;
      *&v27[6] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Set apple ID hash = %u, _hasAppleID = %@", &v26, 0x12u);
    }

    goto LABEL_23;
  }

  v12 = tethering_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No apple ID to update hash", &v26, 2u);
  }

  [(SDHotspotBrowser *)self clearNextDayTimer];
  self->_IDHash = 0;
LABEL_24:
  nextCrossoverPersistentTimer = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];

  if (!nextCrossoverPersistentTimer)
  {
    [(SDHotspotBrowser *)self updateCrossoverTimer];
  }

  v23 = IDHash != *p_IDHash;

  return v23;
}

- (BOOL)updateTimeString
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = (v4 - self->_nextDayTimeOffset) / 0x15180;

  v6 = [NSString stringWithFormat:@"%lld", v5];
  timeString = self->_timeString;
  p_timeString = &self->_timeString;
  v9 = [v6 isEqualToString:timeString];
  if (v9)
  {
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *p_timeString;
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v12 = "Not updating time (old = %@, new = %@)";
      v13 = v10;
      v14 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    objc_storeStrong(p_timeString, v6);
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *p_timeString;
      *buf = 138412290;
      v18 = v15;
      v12 = "Updated time string = %@";
      v13 = v10;
      v14 = 12;
      goto LABEL_6;
    }
  }

  return v9 ^ 1;
}

- (id)HMACWithDSID:(id)d timeString:(id)string
{
  dCopy = d;
  stringCopy = string;
  dCopy2 = d;
  uTF8String = [dCopy2 UTF8String];
  v10 = [dCopy2 length];

  uTF8String2 = [stringCopy UTF8String];
  v12 = [stringCopy length];

  CCHmac(2u, uTF8String, v10, uTF8String2, v12, &v15);
  v13 = [NSData dataWithBytes:&v15 length:32];

  return v13;
}

- (id)appendHashToData:(id)data withType:(unsigned __int8)type
{
  dataCopy = data;
  v6 = tethering_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    IDHash = self->_IDHash;
    v8 = @"NO";
    if (self->_hasAppleID)
    {
      v8 = @"YES";
    }

    *buf = 67109378;
    LODWORD(v15[0]) = IDHash;
    WORD2(v15[0]) = 2112;
    *(v15 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to append apple ID hash = %u, hasAppleID = %@", buf, 0x12u);
  }

  [(SDHotspotBrowser *)self updateIDHash];
  if (self->_hasAppleID && self->_IDHash)
  {
    v9 = [[NSMutableData alloc] initWithData:dataCopy];
    v13 = bswap32(self->_IDHash);
    [v9 appendBytes:&v13 length:4];
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15[0] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created Blob Data = %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5E24();
    }

    v9 = 0;
  }

  return v9;
}

- (id)modelCodeForIdentifier:(id)identifier
{
  v3 = [(SDHotspotBrowser *)self deviceForIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    modelIdentifier = [v3 modelIdentifier];
  }

  else
  {
    modelIdentifier = 0;
  }

  if (modelIdentifier)
  {
    v6 = modelIdentifier;
  }

  else
  {
    v6 = @"Unknown";
  }

  v7 = v6;

  return v6;
}

- (id)deviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    devices = [(IDSService *)self->_tetheringService devices];
    v6 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(devices);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          nsuuid = [v9 nsuuid];
          uUIDString = [nsuuid UUIDString];
          v12 = [uUIDString isEqualToString:identifierCopy];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pairedPeers
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  devices = [(IDSService *)self->_tetheringService devices];
  v5 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isDefaultPairedDevice] & 1) == 0 && -[SDHotspotBrowser pairedPeerIsValid:](self, "pairedPeerIsValid:", v9))
        {
          nsuuid = [v9 nsuuid];
          if (nsuuid)
          {
            [v3 addObject:nsuuid];
          }
        }
      }

      v6 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)accountHasPairedPeers
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  devices = [(IDSService *)self->_tetheringService devices];
  v4 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isDefaultPairedDevice] & 1) == 0)
        {
          if ([(SDHotspotBrowser *)self pairedPeerIsValid:v8])
          {
            nsuuid = [v8 nsuuid];

            if (nsuuid)
            {
              v10 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)pairedPeerIsValid:(id)valid
{
  validCopy = valid;
  modelIdentifier = [validCopy modelIdentifier];
  lowercaseString = [modelIdentifier lowercaseString];

  d2dEncryptionAvailable = [(SDHotspotBrowser *)self d2dEncryptionAvailable];
  if ([lowercaseString containsString:@"appletv"] & 1) != 0 || (objc_msgSend(lowercaseString, "containsString:", @"audio"))
  {
    v8 = 0;
    goto LABEL_4;
  }

  v10 = d2dEncryptionAvailable ^ 1;
  if ([lowercaseString containsString:@"watch"])
  {
    if (validCopy)
    {
      [validCopy operatingSystemVersion];
      if (!((v19 < 6) | d2dEncryptionAvailable & 1))
      {
LABEL_17:
        v8 = 1;
        goto LABEL_4;
      }

      v11 = [lowercaseString containsString:@"mac"];
      goto LABEL_10;
    }

    v11 = [lowercaseString containsString:@"mac"];
  }

  else
  {
    v11 = [lowercaseString containsString:@"mac"];
    if (validCopy)
    {
LABEL_10:
      [validCopy operatingSystemVersion];
      if (v18 == 10)
      {
        [validCopy operatingSystemVersion];
        v12 = 0;
        v13 = (v17 < 15) | v10;
      }

      else
      {
        v12 = 0;
        v13 = d2dEncryptionAvailable ^ 1;
      }

      goto LABEL_15;
    }
  }

  v12 = 1;
  v13 = d2dEncryptionAvailable ^ 1;
LABEL_15:
  if (v11 && (v13 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (([lowercaseString containsString:@"iphone"] & 1) != 0 || objc_msgSend(lowercaseString, "containsString:", @"ipad"))
  {
    if (v12)
    {
      v8 = 1;
      goto LABEL_4;
    }

    [validCopy operatingSystemVersion];
    if (((v16 > 12) & d2dEncryptionAvailable) != 1)
    {
      goto LABEL_17;
    }
  }

  v14 = [lowercaseString containsString:@"realitydevice"];
  v15 = tethering_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C5E60(v14, v10, v15);
  }

  v8 = v14 & v10;
LABEL_4:

  return v8;
}

- (BOOL)accountHasTetheringSources
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [(IDSService *)self->_tetheringService devices];
  v4 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 isDefaultPairedDevice] & 1) == 0)
        {
          nsuuid = [v8 nsuuid];
          if ([v8 supportsTethering])
          {
            v10 = nsuuid == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10 && [(SDHotspotBrowser *)self tetheringSourceIsValid:v8])
          {

            v11 = 1;
            goto LABEL_17;
          }
        }
      }

      v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)tetheringPeers
{
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  devices = [(IDSService *)self->_tetheringService devices];
  v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isDefaultPairedDevice] & 1) == 0)
        {
          nsuuid = [v9 nsuuid];
          if ([v9 supportsTethering])
          {
            v11 = nsuuid == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11 && [(SDHotspotBrowser *)self tetheringSourceIsValid:v9])
          {
            [v3 addObject:nsuuid];
          }
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)outstandingRequestsHasHotspotDeviceForID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (dCopy)
  {
    outstandingRequests = self->_outstandingRequests;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BF008;
    v9[3] = &unk_1008CF7C0;
    v10 = dCopy;
    v11 = &v12;
    [(NSMutableDictionary *)outstandingRequests enumerateKeysAndObjectsUsingBlock:v9];

    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

- (BOOL)serviceHasDuplicateForBTUUID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  devices = [(IDSService *)self->_tetheringService devices];
  v7 = [devices countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(devices);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v13 isDefaultPairedDevice] & 1) == 0)
        {
          nsuuid = [v13 nsuuid];
          uUIDString = [nsuuid UUIDString];

          if (uUIDString)
          {
            if ([v5 containsObject:uUIDString])
            {
              v16 = tethering_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = v18;
                v24 = uUIDString;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Found duplicate entry for BTUUID = %@", buf, 0xCu);
              }

              v10 |= [dCopy isEqualToString:uUIDString];
            }

            [v5 addObject:uUIDString];
          }
        }
      }

      v9 = [devices countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

- (void)credentialLog:(id)log
{
  logCopy = log;
  if (IsAppleInternalBuild() && sub_10000C1F8(@"TetheringCredentialLog", 0))
  {
    v4 = sub_1001F0DEC(logCopy);
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138477827;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Hashed credential = %{private}@", &v6, 0xCu);
    }
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"debugInfoRequested:" name:@"com.apple.sharingd.DebugInfoRequested" object:0];
  [v3 addObserver:self selector:"appleIDChanged:" name:@"com.apple.sharingd.AppleIDChanged" object:0];
  [v3 addObserver:self selector:"altDSIDUpdated:" name:@"com.apple.sharingd.AltDSIDChanged" object:0];
  [v3 addObserver:self selector:"appleIDSignedIn:" name:@"com.apple.sharingd.AppleAccountSignIn" object:0];
  [v3 addObserver:self selector:"appleIDSignedOut:" name:@"com.apple.sharingd.AppleAccountSignOut" object:0];
  [v3 addObserver:self selector:"screenStateChanged:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  [v3 addObserver:self selector:"hotspotConnectionStateChanged:" name:@"SDHotspotManagerConnectionStateChanged" object:0];
  [v3 addObserver:self selector:"screenStateChanged:" name:@"com.apple.sharingd.HotspotAutoStateChanged" object:0];
  [v3 addObserver:self selector:"wifiPasswordSharingChanged:" name:SFWiFiPasswordSharingAdvertisingBegan object:0];
  [v3 addObserver:self selector:"wifiPasswordSharingChanged:" name:SFWiFiPasswordSharingAdvertisingEnded object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)altDSIDUpdated:(id)updated
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF658;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)debugInfoRequested:(id)requested
{
  v32 = objc_opt_new();
  v4 = [NSString stringWithFormat:@"IDHash:%u", self->_IDHash];
  [v32 addObject:v4];

  if (self->_hasAppleID)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"Has Apple ID:%@", v5];
  [v32 addObject:v6];

  v7 = [NSString stringWithFormat:@"Persistent Timer:%@", self->_nextCrossoverPersistentTimer];
  [v32 addObject:v7];

  v8 = [NSString stringWithFormat:@"Power Assertion ID:%u", self->_powerAssertionID];
  [v32 addObject:v8];

  if ([(SDHotspotManager *)self->_hotspotManager isTetheringSupported])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"Tethering available:%@", v9];
  [v32 addObject:v10];

  v11 = +[SDStatusMonitor sharedMonitor];
  v12 = SFHotspotNetworkTypeString([v11 networkType]);
  v13 = [NSString stringWithFormat:@"Current Network Type:%@", v12];
  [v32 addObject:v13];

  if (self->_sourceAdvertising)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSString stringWithFormat:@"Source advertising for response:%@", v14];
  [v32 addObject:v15];

  if (self->_sourceScanning)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [NSString stringWithFormat:@"Source scanning for requests:%@", v16];
  [v32 addObject:v17];

  if (self->_targetAdvertising)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [NSString stringWithFormat:@"Target advertising request:%@", v18];
  [v32 addObject:v19];

  if (self->_targetScanning)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [NSString stringWithFormat:@"Target scanning for responses:%@", v20];
  [v32 addObject:v21];

  pairedPeers = [(SDHotspotBrowser *)self pairedPeers];
  v23 = [pairedPeers valueForKeyPath:@"@unionOfObjects.UUIDString"];
  v24 = [v23 componentsJoinedByString:{@", "}];

  v25 = [NSString stringWithFormat:@"Current cloud paired peers:%@", v24];
  [v32 addObject:v25];

  tetheringPeers = [(SDHotspotBrowser *)self tetheringPeers];

  v27 = [tetheringPeers valueForKeyPath:@"@unionOfObjects.UUIDString"];
  v28 = [v27 componentsJoinedByString:{@", "}];

  v29 = [NSString stringWithFormat:@"Current tethering source peers:%@", v28];
  [v32 addObject:v29];

  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  sub_100086F68(v31, v32);
}

- (void)appleIDChanged:(id)changed
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFB00;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)appleIDSignedIn:(id)in
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFBE8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)appleIDSignedOut:(id)out
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFCD0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)updateAccountState
{
  [(SDHotspotBrowser *)self updateHasAppleID];
  [(SDHotspotBrowser *)self clearAccountAltDSID];

  [(SDHotspotBrowser *)self updateIDHashAndRestart];
}

- (void)screenStateChanged:(id)changed
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFDF8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)hotspotConnectionStateChanged:(id)changed
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFEF4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)wifiPasswordSharingChanged:(id)changed
{
  changedCopy = changed;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C0010;
  v7[3] = &unk_1008CE028;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

- (void)generateNextDayTimeOffset
{
  accountAltDSID = [(SDHotspotBrowser *)self accountAltDSID];
  v4 = accountAltDSID;
  if (accountAltDSID)
  {
    v5 = sub_1001F0DEC(accountAltDSID);
    v6 = [v5 subdataWithRange:{0, 8}];
    v12 = 0;
    [v6 getBytes:&v12 length:8];
    self->_nextDayTimeOffset = v12 % 0x15180;
    v7 = tethering_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      nextDayTimeOffset = self->_nextDayTimeOffset;
      *buf = 134217984;
      v14 = nextDayTimeOffset;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated Next Day Time Offset = %lld", buf, 0xCu);
    }

    v9 = sub_1001180B4(@"TetheringIDRollOffset", 0);
    if (v9)
    {
      self->_nextDayTimeOffset = v9;
      v10 = tethering_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_nextDayTimeOffset;
        *buf = 134217984;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Next Day Time Offset Overriden = %lld", buf, 0xCu);
      }
    }
  }
}

- (void)updateCrossoverTimer
{
  [(SDHotspotBrowser *)self clearNextDayTimer];
  isTetheringSupported = [(SDHotspotManager *)self->_hotspotManager isTetheringSupported];
  nextCrossoverPersistentTimer = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];
  if (nextCrossoverPersistentTimer || (self->_hasAppleID & isTetheringSupported & 1) == 0)
  {
  }

  else if ([(SDHotspotBrowser *)self accountHasPairedPeers])
  {
    v5 = [(SDHotspotBrowser *)self nextDateForDayInterval:1];
    v6 = +[NSDate date];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 <= 0.0)
    {
      v12 = tethering_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5EF0(v5);
      }
    }

    else
    {
      v9 = [[PCPersistentTimer alloc] initWithFireDate:v5 serviceIdentifier:@"com.apple.sharingd" target:self selector:"nextDayTimerFired:" userInfo:0];
      [(SDHotspotBrowser *)self setNextCrossoverPersistentTimer:v9];

      nextCrossoverPersistentTimer2 = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];
      [nextCrossoverPersistentTimer2 setMinimumEarlyFireProportion:1.0];

      nextCrossoverPersistentTimer3 = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];
      [nextCrossoverPersistentTimer3 scheduleInQueue:self->_workQueue];

      v12 = tethering_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        nextCrossoverPersistentTimer4 = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];
        v14 = +[NSDate date];
        [v5 timeIntervalSinceDate:v14];
        v16 = v15;
        v17 = [(SDHotspotBrowser *)self formattedDate:v5];
        v22 = 138412802;
        v23 = nextCrossoverPersistentTimer4;
        v24 = 2048;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Timer created (timer = %@, next fire in seconds = %lld, %@)", &v22, 0x20u);
      }
    }

    goto LABEL_19;
  }

  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    nextCrossoverPersistentTimer5 = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];
    if (self->_hasAppleID)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    if (isTetheringSupported)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v22 = 138413058;
    if ([(SDHotspotBrowser *)self accountHasPairedPeers])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v23 = nextCrossoverPersistentTimer5;
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not creating persistent timer (timer = %@, has apple ID = %@, tethering supported = %@, has peers on account = %@)", &v22, 0x2Au);
  }

LABEL_19:
}

- (void)clearNextDayTimer
{
  nextCrossoverPersistentTimer = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];

  if (nextCrossoverPersistentTimer)
  {
    nextCrossoverPersistentTimer2 = [(SDHotspotBrowser *)self nextCrossoverPersistentTimer];
    [nextCrossoverPersistentTimer2 invalidate];

    [(SDHotspotBrowser *)self setNextCrossoverPersistentTimer:0];
  }
}

- (void)nextDayTimerFired:(id)fired
{
  firedCopy = fired;
  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = firedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Persistent timer fired = %@", &v10, 0xCu);
  }

  v6 = +[SDStatusMonitor sharedMonitor];
  altDSIDNeedsFixing = [v6 altDSIDNeedsFixing];

  if (altDSIDNeedsFixing)
  {
    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AltDSID needs fixing", &v10, 2u);
    }

    v9 = +[SDStatusMonitor sharedMonitor];
    [v9 fixAltDSIDIfNeeded];
  }

  [(SDHotspotBrowser *)self clearNextDayTimer];
  [(SDHotspotBrowser *)self updateAccountState];
}

- (id)nextDateForDayInterval:(int)interval
{
  v5 = +[NSDate date];
  v6 = 86400 * interval;
  [v5 timeIntervalSinceReferenceDate];
  v8 = self->_nextDayTimeOffset + v7 / v6 * v6;
  [v5 timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = tethering_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 >= v8)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calculated previous crossover, pushing to next", buf, 2u);
    }

    v8 += v6;
  }

  else
  {
    if (v12)
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calculated next crossover", v15, 2u);
    }
  }

  v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:(v8 + 30)];

  return v13;
}

- (id)formattedDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateStyle:1];
  [v4 setTimeStyle:4];
  v5 = [NSTimeZone timeZoneWithName:@"GMT"];
  [v4 setTimeZone:v5];

  v6 = [v4 stringFromDate:dateCopy];
  v7 = +[NSTimeZone localTimeZone];
  [v4 setTimeZone:v7];

  v8 = [v4 stringFromDate:dateCopy];

  v9 = [NSString stringWithFormat:@"GMT Date = %@, Local Time Zone Date = %@", v6, v8];

  return v9;
}

- (void)tetheringSupportChanged
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0A98;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)sendMessage:(id)message toPeer:(id)peer isRequest:(BOOL)request messageID:(id)d error:(id *)error identifier:(id *)identifier
{
  requestCopy = request;
  messageCopy = message;
  peerCopy = peer;
  dCopy = d;
  if (!peerCopy)
  {
    v34 = tethering_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000C602C();
    }

    v47 = NSLocalizedDescriptionKey;
    v48 = @"Could not send IDS message";
    v26 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:50 userInfo:v26];
    v25 = 0;
    v31 = 0;
LABEL_22:
    v27 = dCopy;
    goto LABEL_23;
  }

  v37 = requestCopy;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = messageCopy;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  devices = [(IDSService *)self->_tetheringService devices];
  v18 = [devices countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (!v18)
  {
LABEL_10:

LABEL_16:
    v33 = tethering_log();
    messageCopy = v16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5FA0(peerCopy);
    }

    v49 = NSLocalizedDescriptionKey;
    v50 = @"No device for identifier";
    v26 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:51 userInfo:v26];
    v25 = 0;
    v31 = 0;
    error = errorCopy;
    goto LABEL_22;
  }

  v19 = v18;
  v20 = *v44;
LABEL_4:
  v21 = 0;
  while (1)
  {
    if (*v44 != v20)
    {
      objc_enumerationMutation(devices);
    }

    v22 = *(*(&v43 + 1) + 8 * v21);
    nsuuid = [v22 nsuuid];
    v24 = [nsuuid isEqual:peerCopy];

    if (v24)
    {
      break;
    }

    if (v19 == ++v21)
    {
      v19 = [devices countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v25 = v22;

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = IDSCopyForDevice();
  v41 = 0;
  v42 = 0;
  v27 = dCopy;
  v28 = [(SDHotspotBrowser *)self sendMessage:v16 toDeviceWithID:v26 isRequest:v37 messageID:dCopy error:&v42 identifier:&v41];
  v29 = v42;
  v30 = v41;
  v31 = v30;
  if (identifierCopy && v28)
  {
    v32 = v30;
    *identifierCopy = v31;
  }

  messageCopy = v16;
  error = errorCopy;
LABEL_23:

  if (error)
  {
    v35 = v29;
    *error = v29;
  }

  return v29 == 0;
}

- (BOOL)sendMessage:(id)message toDeviceWithID:(id)d isRequest:(BOOL)request messageID:(id)iD error:(id *)error identifier:(id *)identifier
{
  requestCopy = request;
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  if (dCopy)
  {
    v33 = messageCopy;
    v17 = [NSSet setWithObject:dCopy];
    v18 = +[NSMutableDictionary dictionary];
    [v18 setObject:&off_10090B8F8 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v18 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    v19 = +[SDStatusMonitor sharedMonitor];
    enableHotspotFallback = [v19 enableHotspotFallback];

    if ((enableHotspotFallback & 1) == 0)
    {
      [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    }

    if (iDCopy || requestCopy)
    {
      if (iDCopy)
      {
        v21 = requestCopy;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = &__kCFBooleanTrue;
      }

      else
      {
        v22 = iDCopy;
      }

      v23 = &IDSSendMessageOptionExpectsPeerResponseKey;
      if (!v21)
      {
        v23 = &IDSSendMessageOptionPeerResponseIdentifierKey;
      }

      [v18 setObject:v22 forKeyedSubscript:*v23];
    }

    tetheringService = self->_tetheringService;
    v34 = 0;
    v35 = 0;
    v25 = [(IDSService *)tetheringService sendMessage:v33 fromAccount:0 toDestinations:v17 priority:300 options:v18 identifier:&v35 error:&v34];
    v26 = v35;
    v27 = v34;
    v28 = tethering_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v37 = dCopy;
      v38 = 2112;
      v39 = v26;
      v40 = 2112;
      v41 = v33;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Sending from device ID to destination = %@, with identifier = %@, message = %@, ", buf, 0x20u);
    }

    if (identifier)
    {
      v29 = v26;
      *identifier = v26;
    }

    if (v25)
    {
      v30 = 0;
    }

    else
    {
      v30 = v27;
    }

    messageCopy = v33;
  }

  else
  {
    v26 = tethering_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6068();
    }

    v17 = 0;
    v30 = 0;
  }

  if (error)
  {
    v31 = v30;
    *error = v30;
  }

  return v30 == 0;
}

- (void)startBrowsing
{
  if ([(SDStatusMonitor *)self->_monitor deviceSupportsContinuity])
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C1248;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)stopBrowsing
{
  if ([(SDStatusMonitor *)self->_monitor deviceSupportsContinuity])
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C1370;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)enableHotspotForDevice:(id)device withCompletionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C14E0;
  block[3] = &unk_1008CE730;
  v12 = deviceCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = deviceCopy;
  dispatch_async(workQueue, block);
}

- (void)addRetrieveTimer:(id)timer
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C1A6C;
  v4[3] = &unk_1008CE028;
  v4[4] = self;
  timerCopy = timer;
  v3 = timerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)retrieveTimerFired:(id)fired
{
  firedCopy = fired;
  userInfo = [firedCopy userInfo];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1BA8;
  block[3] = &unk_1008CE900;
  v10 = userInfo;
  selfCopy = self;
  v12 = firedCopy;
  v7 = firedCopy;
  v8 = userInfo;
  dispatch_async(workQueue, block);
}

- (void)invalidateTimerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_retrieveTimers objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_retrieveTimers removeObjectForKey:identifierCopy];
  }
}

- (void)restartAdvertisingTetheringRequest
{
  if (!self->_shouldBeAdvertisingRequest || self->_pausedForWiFiPasswordSharing || [(IDSContinuity *)self->_tetheringManager state]!= 3 || ![(SDHotspotBrowser *)self bluetoothAllowedForScreenState])
  {
    v4 = tethering_log();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    state = [(IDSContinuity *)self->_tetheringManager state];
    if (self->_shouldBeAdvertisingRequest)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_pausedForWiFiPasswordSharing)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if ([(SDStatusMonitor *)self->_monitor screenOn])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    autoHotspotState = [(SDStatusMonitor *)self->_monitor autoHotspotState];
    v15[0] = 67110146;
    if (autoHotspotState)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v15[1] = state;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v12 = "Skipping advertisment request: state=%d, request=%@, paused=%@, screen=%@, auto hotspot=%@";
    v13 = v4;
    v14 = 48;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, v15, v14);
    goto LABEL_24;
  }

  if (![(SDHotspotBrowser *)self accountHasTetheringSources])
  {
    v4 = tethering_log();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    LOWORD(v15[0]) = 0;
    v12 = "Not advertising request, no devices that support tethering";
    v13 = v4;
    v14 = 2;
    goto LABEL_23;
  }

  v3 = +[NSData data];
  v4 = [(SDHotspotBrowser *)self appendHashToData:v3 withType:0];

  if (v4)
  {
    [(IDSContinuity *)self->_tetheringManager startAdvertisingOfType:1 withData:v4 withOptions:0];
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started advertising tethering request", v15, 2u);
    }
  }

  else
  {
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000C62D4();
    }
  }

LABEL_24:
}

- (void)stopAdvertisingTetheringRequest
{
  [(IDSContinuity *)self->_tetheringManager stopAdvertisingOfType:1];
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping Advertising Request", v3, 2u);
  }
}

- (void)restartAdvertisingTetheringResponse
{
  if (!self->_sourceAdvertising && self->_shouldBeAdvertisingResponse && [(SDHotspotManager *)self->_hotspotManager isTetheringSupported]&& ![(SDHotspotManager *)self->_hotspotManager maxConnectionsReached]&& [(IDSContinuity *)self->_tetheringManager state]== 3)
  {
    LOWORD(v20) = 1;
    HIBYTE(v20) = 0;
    v3 = +[SDStatusMonitor sharedMonitor];
    localPowerSource = [v3 localPowerSource];
    [localPowerSource chargeLevel];
    v6 = (v5 * 100.0);

    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    BYTE2(v20) = v7;
    HIBYTE(v21) = [(SDStatusMonitor *)self->_monitor signalStrength];
    LOBYTE(v21) = [(SDStatusMonitor *)self->_monitor networkType];
    if (self->_targetIdentifier && [(SDHotspotBrowser *)self serviceHasDuplicateForBTUUID:?])
    {
      BYTE1(v20) = 0x80;
    }

    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = SFHotspotResponseAdvertisementString(v20 | (v21 << 32));
      *buf = 138412290;
      *v23 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Advertising response packet %@", buf, 0xCu);
    }

    v10 = [NSData dataWithBytes:&v20 length:6];
    if (v10)
    {
      [(IDSContinuity *)self->_tetheringManager startAdvertisingOfType:2 withData:v10 withOptions:0];
      self->_sourceAdvertising = 1;
      v11 = tethering_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Started advertising tethering response", buf, 2u);
      }
    }

    else
    {
      v11 = tethering_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6310();
      }
    }
  }

  else
  {
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      isTetheringSupported = [(SDHotspotManager *)self->_hotspotManager isTetheringSupported];
      state = [(IDSContinuity *)self->_tetheringManager state];
      if (self->_shouldBeAdvertisingRequest)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (self->_shouldBeAdvertisingResponse)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      maxConnectionsReached = [(SDHotspotManager *)self->_hotspotManager maxConnectionsReached];
      sourceAdvertising = self->_sourceAdvertising;
      if (maxConnectionsReached)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 67110402;
      if (sourceAdvertising)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      *v23 = isTetheringSupported;
      *&v23[4] = 1024;
      *&v23[6] = state;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping advertisment response: supported=%d, state=%d, request=%@, response=%@, max connections=%@ already advertising=%@", buf, 0x36u);
    }
  }
}

- (void)stopAdvertisingResponse
{
  targetIdentifier = self->_targetIdentifier;
  self->_targetIdentifier = 0;

  [(IDSContinuity *)self->_tetheringManager stopAdvertisingOfType:2];
  self->_sourceAdvertising = 0;
  v4 = tethering_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping response advertisement", v5, 2u);
  }
}

- (void)restartProducerScanning
{
  if (self->_producerScanEnabled && [(SDHotspotManager *)self->_hotspotManager isTetheringSupported]&& [(SDHotspotBrowser *)self accountHasPairedPeers]&& [(IDSContinuity *)self->_tetheringManager state]== 3)
  {
    v3 = +[NSData data];
    v4 = [(SDHotspotBrowser *)self appendHashToData:v3 withType:0];

    if (v4)
    {
      pairedPeers = [(SDHotspotBrowser *)self pairedPeers];
      v6 = [pairedPeers valueForKeyPath:@"@unionOfObjects.UUIDString"];
      v7 = [v6 componentsJoinedByString:{@", "}];

      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restarted scanning for device requesting tethering [%@]", &v9, 0xCu);
      }

      [(IDSContinuity *)self->_tetheringManager startScanningForType:1 withData:v4 peers:pairedPeers withOptions:0];
    }

    else
    {
      pairedPeers = tethering_log();
      if (os_log_type_enabled(pairedPeers, OS_LOG_TYPE_ERROR))
      {
        sub_1000C634C();
      }
    }
  }
}

- (void)stopProducerScanning
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping producer scanning", v4, 2u);
  }

  [(IDSContinuity *)self->_tetheringManager stopScanningForType:1];
}

- (void)restartConsumerScanning
{
  if (self->_shouldBeConsumerScanning && [(SDHotspotBrowser *)self accountHasTetheringSources]&& [(IDSContinuity *)self->_tetheringManager state]== 3 && [(SDHotspotBrowser *)self bluetoothAllowedForScreenState])
  {
    tetheringPeers = [(SDHotspotBrowser *)self tetheringPeers];
    v4 = [tetheringPeers valueForKeyPath:@"@unionOfObjects.UUIDString"];
    v5 = [v4 componentsJoinedByString:{@", "}];

    v6 = tethering_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      *v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restarted scanning for available tethering devices [%@]", &v13, 0xCu);
    }

    [(IDSContinuity *)self->_tetheringManager startScanningForType:2 withData:0 peers:tetheringPeers withOptions:0];
  }

  else
  {
    tetheringPeers = tethering_log();
    if (os_log_type_enabled(tetheringPeers, OS_LOG_TYPE_DEFAULT))
    {
      state = [(IDSContinuity *)self->_tetheringManager state];
      if (self->_shouldBeConsumerScanning)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if ([(SDHotspotBrowser *)self accountHasTetheringSources])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      if ([(SDStatusMonitor *)self->_monitor screenOn])
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      autoHotspotState = [(SDStatusMonitor *)self->_monitor autoHotspotState];
      v13 = 67110146;
      if (autoHotspotState)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *v14 = state;
      *&v14[4] = 2112;
      *&v14[6] = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, tetheringPeers, OS_LOG_TYPE_DEFAULT, "Skipping scanning: state=%d, request=%@, peers=%@, screen=%@, auto hotspot=%@", &v13, 0x30u);
    }
  }
}

- (void)stopConsumerScanning
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopped scanning for available tethering devices", v4, 2u);
  }

  [(IDSContinuity *)self->_tetheringManager stopScanningForType:2];
}

- (void)handleIncomingResponse:(id)response identifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  if ([responseCopy length] >= 6)
  {
    bytes = [responseCopy bytes];
    v9 = *bytes | (*(bytes + 2) << 32);
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = SFHotspotResponseAdvertisementString(v9 & 0xFFFFFFFFFFFFLL);
      *buf = 138412546;
      v37 = *&v11;
      v38 = 2112;
      v39 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Source advertisement %@ device ID: %@)", buf, 0x16u);
    }

    v12 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:identifierCopy];
    if (!v12)
    {
      browseStartTime = [(SDHotspotBrowser *)self browseStartTime];

      if (browseStartTime)
      {
        v14 = +[NSDate date];
        browseStartTime2 = [(SDHotspotBrowser *)self browseStartTime];
        [v14 timeIntervalSinceDate:browseStartTime2];
        v17 = v16;

        v18 = [(SDHotspotBrowser *)self modelCodeForIdentifier:identifierCopy];
        sub_1000870CC(self->_modelCode, v18, &off_10090B940, 1, v17);
        v19 = tethering_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v37 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Discovered new device in %f seconds", buf, 0xCu);
        }
      }

      else
      {
        v18 = tethering_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No browse start time", buf, 2u);
        }
      }
    }

    v20 = [(SDHotspotBrowser *)self deviceForIdentifier:identifierCopy];
    if (v20)
    {
      advertisementData = [v12 advertisementData];
      v22 = advertisementData;
      if (!v12 || !-[NSObject isEqualToData:](advertisementData, "isEqualToData:", responseCopy) || ([v12 deviceName], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "name"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "isEqualToString:", v24), v24, v23, (v25 & 1) == 0))
      {
        v26 = [SFRemoteHotspotDevice alloc];
        name = [v20 name];
        0xFFFFFFFFFFFFLL = [v26 initWithName:name identifier:identifierCopy advertisement:v9 & 0xFFFFFFFFFFFFLL];

        [0xFFFFFFFFFFFFLL setGroup:1];
        modelIdentifier = [v20 modelIdentifier];
        [0xFFFFFFFFFFFFLL setModel:modelIdentifier];

        [v20 operatingSystemVersion];
        [0xFFFFFFFFFFFFLL setOsSupportsAutoHotspot:v35 > 12];
        if (0xFFFFFFFFFFFFLL)
        {
          [(NSMutableDictionary *)self->_discoveredDevices setObject:0xFFFFFFFFFFFFLL forKeyedSubscript:identifierCopy];
        }

        clientProxy = [(SDHotspotBrowser *)self clientProxy];

        v31 = tethering_log();
        clientProxy2 = v31;
        if (clientProxy)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            allValues = [(NSMutableDictionary *)self->_discoveredDevices allValues];
            *buf = 138412290;
            v37 = *&allValues;
            _os_log_impl(&_mh_execute_header, clientProxy2, OS_LOG_TYPE_DEFAULT, "Updating client with devices list %@", buf, 0xCu);
          }

          clientProxy2 = [(SDHotspotBrowser *)self clientProxy];
          allValues2 = [(NSMutableDictionary *)self->_discoveredDevices allValues];
          [clientProxy2 updatedFoundDeviceList:allValues2];
        }

        else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000C6388();
        }

        goto LABEL_28;
      }
    }

    else
    {
      v22 = tethering_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000C63C4();
      }
    }

    0xFFFFFFFFFFFFLL = v12;
LABEL_28:
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v17 = tethering_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v54 = serviceCopy;
    v55 = 2112;
    v56 = accountCopy;
    v57 = 2112;
    v58 = dCopy;
    v59 = 2112;
    v60 = messageCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "service = %@, account = %@, fromID = %@, message = %@", buf, 0x2Au);
  }

  v18 = [messageCopy objectForKeyedSubscript:@"HotspotBrowserMessageType"];
  v19 = v18;
  if (!v18)
  {
    uUIDString = tethering_log();
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      sub_1000C64F0();
    }

    goto LABEL_38;
  }

  integerValue = [v18 integerValue];
  if (integerValue == 1)
  {
    v28 = tethering_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
      *buf = 138412290;
      v54 = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received response for ID = %@", buf, 0xCu);
    }

    v30 = [(IDSService *)self->_tetheringService deviceForFromID:dCopy];
    nsuuid = [v30 nsuuid];
    uUIDString = [nsuuid UUIDString];

    if (!uUIDString)
    {
      v25 = tethering_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6478();
      }

      goto LABEL_37;
    }

    v32 = [[NSUUID alloc] initWithUUIDString:uUIDString];
    v25 = v32;
    if (!v32)
    {
      v40 = tethering_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1000C643C();
      }

      goto LABEL_36;
    }

    v45 = v32;
    v33 = [messageCopy objectForKeyedSubscript:@"HotspotBroswerCredentialData"];
    v44 = v33;
    if (v33)
    {
      v34 = v33;
      outstandingRequests = self->_outstandingRequests;
      incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
      v36 = [(NSMutableDictionary *)outstandingRequests objectForKeyedSubscript:incomingResponseIdentifier2];
      [(SDHotspotBrowser *)self tetheringDidRetrieveCredentials:v45 credentials:v34 requestRecord:v36 error:0];

      incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];

      if (!incomingResponseIdentifier3)
      {
        v40 = v44;
        v25 = v45;
        goto LABEL_36;
      }

      v38 = self->_outstandingRequests;
      incomingResponseIdentifier4 = [contextCopy incomingResponseIdentifier];
      [(NSMutableDictionary *)v38 removeObjectForKey:incomingResponseIdentifier4];
      v25 = v45;
    }

    else
    {
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Could not retrieve credentials";
      v41 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      incomingResponseIdentifier4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v41];

      v42 = tethering_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6400();
      }

      v25 = v45;
      [(SDHotspotBrowser *)self tetheringDidRetrieveCredentials:v45 credentials:0 requestRecord:0 error:incomingResponseIdentifier4];
    }

    v40 = v44;
LABEL_36:

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  if (!integerValue)
  {
    v21 = [(IDSService *)self->_tetheringService deviceForFromID:dCopy];
    nsuuid2 = [v21 nsuuid];
    uUIDString = [nsuuid2 UUIDString];

    v24 = tethering_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = uUIDString;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received request for credentials from peer with bluetooth ID = %@", buf, 0xCu);
    }

    if (dCopy && uUIDString)
    {
      v25 = [(SDHotspotBrowser *)self modelCodeForIdentifier:uUIDString];
      if ([v25 isEqualToString:@"Unknown"])
      {
        v26 = tethering_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = uUIDString;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Can not retrieve modelID for peer with bluetooth ID = %@", buf, 0xCu);
        }

        CanConnectOn5GHz = 0;
      }

      else
      {
        CanConnectOn5GHz = SFRemoteDeviceCanConnectOn5GHz();
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000C33C0;
      v46[3] = &unk_1008CF7E8;
      v47 = uUIDString;
      selfCopy = self;
      v49 = dCopy;
      v50 = contextCopy;
      [(SDHotspotBrowser *)self credentialsWithCompletionHandler:v46 canConnectOn5GHz:CanConnectOn5GHz];
    }

    else
    {
      v25 = tethering_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000C64B4();
      }
    }

    goto LABEL_37;
  }

LABEL_39:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v12 = tethering_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v23 = 138412802;
    v24 = identifierCopy;
    v25 = 2112;
    if (successCopy)
    {
      v13 = @"YES";
    }

    v26 = v13;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Message with identifier = %@ did send with success = %@, error = %@", &v23, 0x20u);
  }

  if (!successCopy)
  {
    v14 = [(NSMutableDictionary *)self->_outstandingRequests objectForKeyedSubscript:identifierCopy];
    remoteHotspotDevice = [v14 remoteHotspotDevice];
    deviceIdentifier = [remoteHotspotDevice deviceIdentifier];
    v17 = [(SDHotspotBrowser *)self modelCodeForIdentifier:deviceIdentifier];

    remoteHotspotDevice2 = [v14 remoteHotspotDevice];
    hasDuplicates = [remoteHotspotDevice2 hasDuplicates];

    if (hasDuplicates)
    {
      v20 = 7;
    }

    else
    {
      v20 = 4;
    }

    sub_100087278(self->_modelCode, v17, errorCopy, v20, 0);
    [(NSMutableDictionary *)self->_outstandingRequests removeObjectForKey:identifierCopy];
    v21 = tethering_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = @"NO";
      v23 = 138412802;
      v24 = identifierCopy;
      v25 = 2112;
      if (hasDuplicates)
      {
        v22 = @"YES";
      }

      v26 = v22;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Request failed (id = %@, duplicates = %@, error = %@)", &v23, 0x20u);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    devices = [(IDSService *)self->_tetheringService devices];
    v7 = 138412290;
    v8 = devices;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "devicesChanged %@", &v7, 0xCu);
  }

  [(SDHotspotBrowser *)self restartConsumerScanning];
  [(SDHotspotBrowser *)self restartProducerScanning];
}

- (void)restartScanResetTimer
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting scan reset timer", buf, 2u);
  }

  scanResetTimer = [(SDHotspotBrowser *)self scanResetTimer];

  if (!scanResetTimer)
  {
    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C39DC;
    v10[3] = &unk_1008CDD98;
    objc_copyWeak(&v11, buf);
    v6 = sub_1001F0548(0, workQueue, v10);
    [(SDHotspotBrowser *)self setScanResetTimer:v6];

    scanResetTimer2 = [(SDHotspotBrowser *)self scanResetTimer];
    dispatch_resume(scanResetTimer2);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  scanResetTimer3 = [(SDHotspotBrowser *)self scanResetTimer];
  v9 = sub_1001F0530(15.0);
  sub_1001F05F0(scanResetTimer3, v9);
}

- (void)invalidateScanResetTimer
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating scan reset timer", v6, 2u);
  }

  scanResetTimer = [(SDHotspotBrowser *)self scanResetTimer];

  if (scanResetTimer)
  {
    scanResetTimer2 = [(SDHotspotBrowser *)self scanResetTimer];
    dispatch_source_cancel(scanResetTimer2);

    [(SDHotspotBrowser *)self setScanResetTimer:0];
  }
}

- (void)handleScanResetTimerFired
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scan reset timer fired", v4, 2u);
  }

  [(SDHotspotBrowser *)self invalidateScanResetTimer];
  [(SDHotspotBrowser *)self stopProducerScanning];
  [(SDHotspotBrowser *)self restartProducerScanning];
}

- (void)restartScanAssertionTimer
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting scan assertion timer", buf, 2u);
  }

  scanAssertionTimer = [(SDHotspotBrowser *)self scanAssertionTimer];

  if (!scanAssertionTimer)
  {
    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C3CD4;
    v10[3] = &unk_1008CDD98;
    objc_copyWeak(&v11, buf);
    v6 = sub_1001F0548(0, workQueue, v10);
    [(SDHotspotBrowser *)self setScanAssertionTimer:v6];

    scanAssertionTimer2 = [(SDHotspotBrowser *)self scanAssertionTimer];
    dispatch_resume(scanAssertionTimer2);

    [(SDHotspotBrowser *)self preventIdleSleepAssertion];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  scanAssertionTimer3 = [(SDHotspotBrowser *)self scanAssertionTimer];
  v9 = sub_1001F0530(30.0);
  sub_1001F05F0(scanAssertionTimer3, v9);
}

- (void)invalidateScanAssertionTimer
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating scan assertion timer", v6, 2u);
  }

  scanAssertionTimer = [(SDHotspotBrowser *)self scanAssertionTimer];

  if (scanAssertionTimer)
  {
    scanAssertionTimer2 = [(SDHotspotBrowser *)self scanAssertionTimer];
    dispatch_source_cancel(scanAssertionTimer2);

    [(SDHotspotBrowser *)self setScanAssertionTimer:0];
  }
}

- (void)handleScanAssertionTimerFired
{
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scan assertion timer fired", v4, 2u);
  }

  self->_shouldBeAdvertisingResponse = 0;
  [(SDHotspotBrowser *)self stopAdvertisingResponse];
  [(SDHotspotBrowser *)self invalidateScanAssertionTimer];
  [(SDHotspotBrowser *)self releaseIdleSleepAssertion];
}

- (void)preventIdleSleepAssertion
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  powerAssertionID = self->_powerAssertionID;
  p_powerAssertionID = &self->_powerAssertionID;
  if (!powerAssertionID)
  {
    v7 = tethering_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Grabbing power assertion to allow source to advertise", v10, 2u);
    }

    v11[0] = @"FrameworkBundleID";
    v11[1] = @"AssertType";
    v12[0] = @"com.apple.Sharing";
    v12[1] = @"PreventUserIdleSystemSleep";
    v11[2] = @"AssertName";
    v12[2] = @"Tethering";
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    if (IOPMAssertionCreateWithProperties(v8, p_powerAssertionID))
    {
      v9 = tethering_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100093A54();
      }

      *p_powerAssertionID = 0;
    }
  }
}

- (void)releaseIdleSleepAssertion
{
  if (self->_powerAssertionID)
  {
    v3 = tethering_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertion", v5, 2u);
    }

    IOPMAssertionRelease(self->_powerAssertionID);
    self->_powerAssertionID = 0;
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)continuity:(id)continuity didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer
{
  continuityCopy = continuity;
  dataCopy = data;
  peerCopy = peer;
  v13 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/didDiscoverType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  os_activity_scope_enter(v13, &v21);
  if (type == 2)
  {
    uUIDString = [peerCopy UUIDString];
    [(SDHotspotBrowser *)self handleIncomingResponse:dataCopy identifier:uUIDString];
  }

  else if (type == 1)
  {
    v14 = tethering_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [peerCopy UUIDString];
      *buf = 138412546;
      v23 = uUIDString2;
      v24 = 2112;
      v25 = dataCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received target advertisement (peer: %@, data: %@)", buf, 0x16u);
    }

    [(SDHotspotBrowser *)self restartScanResetTimer];
    [(SDHotspotBrowser *)self restartScanAssertionTimer];
    v16 = +[SDStatusMonitor sharedMonitor];
    controlCenterVisible = [v16 controlCenterVisible];

    if ((controlCenterVisible & 1) == 0)
    {
      self->_shouldBeAdvertisingResponse = 1;
      uUIDString3 = [peerCopy UUIDString];
      targetIdentifier = self->_targetIdentifier;
      self->_targetIdentifier = uUIDString3;

      [(SDHotspotBrowser *)self restartAdvertisingTetheringResponse];
    }
  }

  os_activity_scope_leave(&v21);
}

- (void)tetheringDidRetrieveCredentials:(id)credentials credentials:(id)a4 requestRecord:(id)record error:(id)error
{
  credentialsCopy = credentials;
  v11 = a4;
  recordCopy = record;
  errorCopy = error;
  v14 = tethering_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"YES";
    *buf = 138412802;
    v62 = credentialsCopy;
    v63 = 2112;
    if (!v11)
    {
      v15 = @"NO";
    }

    v64 = v15;
    v65 = 2112;
    v66 = errorCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Tethering did retrieve credentials for identifier = %@, credentials = %@, with error = %@", buf, 0x20u);
  }

  uUIDString = [(__CFString *)credentialsCopy UUIDString];
  [(SDHotspotBrowser *)self invalidateTimerWithIdentifier:uUIDString];

  p_handlers = &self->_handlers;
  handlers = self->_handlers;
  uUIDString2 = [(__CFString *)credentialsCopy UUIDString];
  v20 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:uUIDString2];
  v21 = [v20 copy];

  if (v21)
  {
    if (errorCopy)
    {
      v22 = tethering_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6668();
      }

      v21[2](v21, 0, errorCopy);
    }

    else
    {
      v69[0] = objc_opt_class();
      v69[1] = objc_opt_class();
      v69[2] = objc_opt_class();
      v69[3] = objc_opt_class();
      v24 = [NSArray arrayWithObjects:v69 count:4];
      v25 = [NSSet setWithArray:v24];

      v56 = 0;
      v26 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v25 fromData:v11 error:&v56];
      errorCopy = v56;
      v55 = recordCopy;
      if (v26)
      {
        v53 = v25;
        v27 = [v26 objectForKeyedSubscript:@"HotspotCredentialName"];
        v28 = [v26 objectForKeyedSubscript:@"HotspotCredentialPassword"];
        v54 = [v26 objectForKeyedSubscript:@"HotspotCredentialChannel"];
        [(SDHotspotBrowser *)self credentialLog:v28];
        v29 = tethering_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = @"YES";
          *buf = 138413058;
          v62 = @"YES";
          v63 = 2112;
          if (!v28)
          {
            v30 = @"NO";
          }

          v64 = v27;
          v65 = 2112;
          v66 = v54;
          v67 = 2112;
          v68 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Receive credentials dictionary (dictionary = %@, name = %@, channel = %@, password = %@)", buf, 0x2Au);
        }

        v52 = v26;
        v51 = v28;
        if (v27 && v28 && [v54 integerValue] >= 1)
        {
          v31 = tethering_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            integerValue = [v54 integerValue];
            *buf = 138412546;
            v62 = v27;
            v63 = 1024;
            LODWORD(v64) = integerValue;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received credentials for network = %@, channel = %d", buf, 0x12u);
          }

          v33 = [[SFRemoteHotspotInfo alloc] initWithName:v27 password:v28 channel:v54];
          (v21)[2](v21, v33, 0);
          remoteHotspotDevice = [v55 remoteHotspotDevice];
          deviceIdentifier = [remoteHotspotDevice deviceIdentifier];
          v50 = [(SDHotspotBrowser *)self modelCodeForIdentifier:deviceIdentifier];

          v36 = +[NSDate date];
          startTime = [v55 startTime];
          [v36 timeIntervalSinceDate:startTime];
          v39 = v38;

          sub_1000870CC(self->_modelCode, v50, &off_10090B958, 0, v39);
          v40 = tethering_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v62 = *&v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Credential transfer time = %f", buf, 0xCu);
          }
        }

        else
        {
          v33 = [v26 objectForKeyedSubscript:@"HotspotCredentialError"];
          if (!v33)
          {
            v50 = NSError;
            v59 = NSLocalizedDescriptionKey;
            v60 = @"Credentials failed to transfer";
            v41 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v41];
          }

          v42 = tethering_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1000C66D8();
          }

          modelCode = self->_modelCode;
          uUIDString3 = [(__CFString *)credentialsCopy UUIDString];
          v45 = [(SDHotspotBrowser *)self modelCodeForIdentifier:uUIDString3];
          sub_100087278(modelCode, v45, v33, 6, 0);

          v21[2](v21, 0, v33);
        }

        v46 = v52;

        v25 = v53;
        v47 = v51;
      }

      else
      {
        v46 = 0;
        v48 = tethering_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000C6748();
        }

        v57 = NSLocalizedDescriptionKey;
        v58 = @"Credentials failed to unarchive";
        v27 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v47 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v27];
        v21[2](v21, 0, v47);
      }

      recordCopy = v55;
    }

    v49 = *p_handlers;
    uUIDString4 = [(__CFString *)credentialsCopy UUIDString];
    [(NSMutableDictionary *)v49 removeObjectForKey:uUIDString4];
  }

  else
  {
    uUIDString4 = tethering_log();
    if (os_log_type_enabled(uUIDString4, OS_LOG_TYPE_ERROR))
    {
      sub_1000C67B8(credentialsCopy, &self->_handlers);
    }
  }
}

- (void)continuityDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  state = [(IDSContinuity *)self->_tetheringManager state];
  if (state <= 1)
  {
    if (!state)
    {
      v7 = tethering_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        v8 = "Tethering did receive IDSContinuityStateUnknown";
        goto LABEL_15;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (state == 1)
    {
      v7 = tethering_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        v8 = "Tethering did receive IDSContinuityStateResetting";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v10, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_17:
    self->_sourceAdvertising = 1;
    self->_shouldBeAdvertisingResponse = 0;
    [(SDHotspotBrowser *)self stopAdvertisingResponse];
    goto LABEL_18;
  }

  if (state == 2)
  {
    v7 = tethering_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v8 = "Tethering did receive IDSContinuityStatePoweredOff";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (state != 3)
  {
    goto LABEL_17;
  }

  v9 = tethering_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tethering did receive IDSContinuityStatePoweredOn", v10, 2u);
  }

  [(SDHotspotBrowser *)self restartAdvertisingTetheringRequest];
  [(SDHotspotBrowser *)self restartAdvertisingTetheringResponse];
  [(SDHotspotBrowser *)self restartProducerScanning];
  [(SDHotspotBrowser *)self restartConsumerScanning];
LABEL_18:
  os_activity_scope_leave(&state);
}

- (void)continuity:(id)continuity didStartAdvertisingOfType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidStartAdvertisingOfType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (type == 1)
  {
    if (self->_targetAdvertising)
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v9 = "Received a start target advertising callback even though we're already advertising";
        goto LABEL_11;
      }

LABEL_12:

      goto LABEL_16;
    }

    self->_targetAdvertising = 1;
    v10 = +[NSDate date];
    [(SDHotspotBrowser *)self setBrowseStartTime:v10];

    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Target started advertising request", v12, 2u);
    }

    sub_1000870CC(self->_modelCode, @"Unknown", &off_10090B910, 1, -1.0);
  }

  else if (type == 2)
  {
    if (self->_sourceAdvertising)
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v9 = "Received a start source advertising callback even though we're already advertising";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v12, 2u);
        goto LABEL_12;
      }
    }

    else
    {
      self->_sourceAdvertising = 1;
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v9 = "Source started advertising response";
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

LABEL_16:
  os_activity_scope_leave(&state);
}

- (void)continuity:(id)continuity didStopAdvertisingOfType:(int64_t)type withError:(id)error
{
  continuityCopy = continuity;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidStopAdvertisingOfType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  if (type != 1)
  {
    if (type != 2)
    {
      goto LABEL_24;
    }

    self->_sourceAdvertising = 0;
    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Source stopped advertising response", v20, 2u);
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:WPErrorDomain])
    {
      code = [errorCopy code];

      if (code == 28)
      {
        v14 = tethering_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Response advertisement stopped for BLE address rotation", v20, 2u);
        }

        if (self->_shouldBeAdvertisingResponse)
        {
          v15 = tethering_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Restarting response advertisement for rotation", v20, 2u);
          }

          [(SDHotspotBrowser *)self restartAdvertisingTetheringResponse];
        }
      }

      goto LABEL_24;
    }

LABEL_23:

    goto LABEL_24;
  }

  self->_targetAdvertising = 0;
  [(SDHotspotBrowser *)self setBrowseStartTime:0];
  v16 = tethering_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Target stopped advertising request", v20, 2u);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:WPErrorDomain])
  {
    goto LABEL_23;
  }

  code2 = [errorCopy code];

  if (code2 == 28)
  {
    v18 = tethering_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request advertisement stopped for BLE address rotation", v20, 2u);
    }

    if (self->_shouldBeAdvertisingRequest)
    {
      v19 = tethering_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Restarting request advertisement for rotation", v20, 2u);
      }

      [(SDHotspotBrowser *)self restartAdvertisingTetheringRequest];
    }
  }

LABEL_24:
  os_activity_scope_leave(&state);
}

- (void)continuity:(id)continuity didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  continuityCopy = continuity;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidFailToStartAdvertisingOfType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v10, &v14);
  if (type == 1)
  {
    self->_targetAdvertising = 0;
    v13 = tethering_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6860();
    }

    sub_100087278(self->_modelCode, @"Unknown", errorCopy, 1, 1);
  }

  else if (type == 2)
  {
    self->_sourceAdvertising = 0;
    targetIdentifier = self->_targetIdentifier;
    self->_targetIdentifier = 0;

    [(SDHotspotBrowser *)self setBrowseStartTime:0];
    v12 = tethering_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C68D0();
    }
  }

  os_activity_scope_leave(&v14);
}

- (void)continuity:(id)continuity didStartScanningForType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidStartScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (type == 1)
  {
    if (self->_sourceScanning)
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v9 = "Received a start target scanning callback even though we're already scanning";
        goto LABEL_14;
      }
    }

    else
    {
      self->_sourceScanning = 1;
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v9 = "Source started scanning for requests from targets";
        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  if (type == 2)
  {
    if (self->_targetScanning)
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v9 = "Received a start source scanning callback even though we're already scanning";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    self->_targetScanning = 1;
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Target started scanning for responses from sources", v11, 2u);
    }

    sub_1000870CC(self->_modelCode, @"Unknown", &off_10090B970, 1, -1.0);
  }

LABEL_16:
  os_activity_scope_leave(&state);
}

- (void)continuity:(id)continuity didStopScanningForType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidStopScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (type == 1)
  {
    self->_sourceScanning = 0;
    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v9 = "Source stopped scanning for requests from targets";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (type == 2)
  {
    self->_targetScanning = 0;
    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v9 = "Target stopped scanning for responses";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  os_activity_scope_leave(&state);
}

- (void)continuity:(id)continuity didFailToStartScanningForType:(int64_t)type withError:(id)error
{
  continuityCopy = continuity;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDHotspotBrowser/continuityDidFailToStartScanningForType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v10, &v13);
  if (type == 1)
  {
    self->_sourceScanning = 0;
    v12 = tethering_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6940();
    }
  }

  else if (type == 2)
  {
    self->_targetScanning = 0;
    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000C69B0();
    }

    sub_100087278(self->_modelCode, @"Unknown", errorCopy, 2, 1);
  }

  os_activity_scope_leave(&v13);
}

@end