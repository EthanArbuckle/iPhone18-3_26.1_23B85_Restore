@interface WiFiIDSSyncEngine
+ (id)getStringForDataType:(int64_t)a3;
- (BOOL)doesNetworkContainBssidForGuessing2GhzNetwork:(__WiFiNetwork *)a3;
- (BOOL)isNetwork:(__WiFiNetwork *)a3 updatedSince:(double)a4 withinInterval:(double)a5 basedOn:(__CFString *)a6;
- (BOOL)skipSyncForNetwork:(__WiFiNetwork *)a3;
- (__WiFiNetwork)_findMatchingPlistNetworkForNetworkRecord:(id)a3;
- (id)copyPairedDestinationID;
- (id)getCorresponding5GhzSsidInPlistFor2GhzNetwork:(__WiFiNetwork *)a3;
- (id)getPairedVersionID;
- (int64_t)isRxdNetwork:(id)a3 equalToPlistNetwork:(__WiFiNetwork *)a4;
- (unsigned)canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:(__WiFiNetwork *)a3;
- (unsigned)isNetworkKnown:(id)a3;
- (void)addToKnownNetworkGuessingDictionaryTheNetwork:(__WiFiNetwork *)a3;
- (void)checkForWiFiPasswordChange;
- (void)companionReAssociationWaitTimerFired:(id)a3;
- (void)createKnownNetworkGuessingDictionary;
- (void)currentNetworkChanged;
- (void)currentNetworkChannelChanged;
- (void)dealloc;
- (void)enteredCompatibilityState:(id)a3;
- (void)incrementGuessingFailedCountForScannedNetworkWithBssid:(id)a3;
- (void)initializeWithWiFiManager:(__WiFiManager *)a3 queue:(id)a4;
- (void)keychainAccessibleNow;
- (void)knownNetworksListChanged;
- (void)networkRemoved:(__WiFiNetwork *)a3;
- (void)notifyStateChanged;
- (void)pairedDeviceConnectionChanged:(id)a3;
- (void)processReceivedAutoJoinAssist:(id)a3;
- (void)processReceivedKnownNetwork:(id)a3;
- (void)processReceivedKnownNetworks:(id)a3;
- (void)processReceivedKnownNetworksInBatch:(id)a3;
- (void)processReceivedLocaleString:(id)a3;
- (void)reSendIdsMessage:(int64_t)a3;
- (void)registerForInitialSyncTrigger;
- (void)registerForSoftwareUpdateTrigger;
- (void)releaseKnownNetworkGuessingDictionary;
- (void)removeFromKnownNetworkGuessingDictionaryTheNetwork:(__WiFiNetwork *)a3;
- (void)sendCurrentCompanionNetworkWithChannelUpdate:(unsigned __int8)a3;
- (void)sendLocaleToGizmo:(id)a3;
- (void)sendToGizmoOfDataType:(int64_t)a3;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)setUpIDS;
- (void)subscribeToKeychainChanges;
- (void)syncKnownWiFiNetwork:(__WiFiNetwork *)a3 withOperation:(int)a4;
- (void)syncKnownWiFiNetworks:(id)a3;
- (void)updateBssidGuessingDictForBssid:(id)a3 guessingFailureCountDict:(id)a4 forNetworkSsid:(id)a5;
- (void)updateConnectionState:(id)a3 waitUntilDone:(unsigned __int8)a4;
- (void)updateGuessedNetworkCredentials:(__WiFiNetwork *)a3 password:(__CFString *)a4;
- (void)updatePairedDeviceID:(id)a3 versionID:(id)a4;
@end

@implementation WiFiIDSSyncEngine

- (void)initializeWithWiFiManager:(__WiFiManager *)a3 queue:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine initializeWithWiFiManager:queue:]"}];
  }

  objc_autoreleasePoolPop(v8);
  [(WiFiIDSSyncEngine *)self setConnectionState:0];
  [(WiFiIDSSyncEngine *)self setManager:a3];
  [(WiFiIDSSyncEngine *)self setManagerQueue:a4];
  [(WiFiIDSSyncEngine *)self setIsWaitingForIdsMessageDelivery:1];
  [(WiFiIDSSyncEngine *)self setUpIDS];
  [(WiFiIDSSyncEngine *)self setRole:1];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E980;
  block[3] = &unk_10025ED68;
  block[4] = self;
  dispatch_async(global_queue, block);
  [(WiFiIDSSyncEngine *)self registerForInitialSyncTrigger];
  [(WiFiIDSSyncEngine *)self registerForSoftwareUpdateTrigger];
  [(WiFiIDSSyncEngine *)self subscribeToKeychainChanges];
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a4);
  self->_timer = v10;
  if (v10)
  {
    dispatch_set_context(v10, self);
    dispatch_source_set_event_handler_f(self->_timer, sub_10011EA60);
    dispatch_activate(self->_timer);
  }

  self->_knownNetworkStartPoint = 0;
  [(WiFiIDSSyncEngine *)self setReceivedKnownNetworks:0];
  objc_autoreleasePoolPop(v7);
}

- (void)dealloc
{
  serialIdsDispatchQ = self->_serialIdsDispatchQ;
  if (serialIdsDispatchQ)
  {
    dispatch_release(serialIdsDispatchQ);
  }

  [(WiFiIDSSyncEngine *)self releaseKnownNetworkGuessingDictionary];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    dispatch_release(self->_timer);
    self->_timer = 0;
  }

  v5.receiver = self;
  v5.super_class = WiFiIDSSyncEngine;
  [(WiFiIDSSyncEngine *)&v5 dealloc];
}

- (void)setUpIDS
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine setUpIDS]"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = off_100298040;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  self->_serialIdsDispatchQ = v7;
  if (v7)
  {
    self->_idsService = [[IDSService alloc] initWithService:@"com.apple.private.alloy.wifi.networksync"];
    [(IDSService *)[(WiFiIDSSyncEngine *)self idsService] addDelegate:self queue:[(WiFiIDSSyncEngine *)self serialIdsDispatchQ]];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to create serialIdsDispatchQ", "-[WiFiIDSSyncEngine setUpIDS]"}];
    }

    objc_autoreleasePoolPop(v8);
  }

  objc_autoreleasePoolPop(v3);
}

+ (id)getStringForDataType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1002635A0[a3];
  }
}

- (void)registerForInitialSyncTrigger
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine registerForInitialSyncTrigger]"}];
  }

  objc_autoreleasePoolPop(v4);
  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10011EF40;
  handler[3] = &unk_100263530;
  v6 = 0;
  handler[4] = self;
  notify_register_dispatch("com.apple.nanoregistry.devicedidpair", &out_token, [(WiFiIDSSyncEngine *)self serialIdsDispatchQ], handler);
  objc_autoreleasePoolPop(v3);
}

- (void)registerForSoftwareUpdateTrigger
{
  v3 = objc_autoreleasePoolPush();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F0A4;
  block[3] = &unk_10025ED68;
  block[4] = self;
  dispatch_async(qword_100298C50, block);
  objc_autoreleasePoolPop(v3);
}

- (void)enteredCompatibilityState:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [a3 userInfo];
  -[WiFiIDSSyncEngine checkIfSoftwareUpdateStateEntered:](self, "checkIfSoftwareUpdateStateEntered:", [objc_msgSend(v6 objectForKey:{NRPairedDeviceRegistryCompatibilityStateKey), "integerValue"}]);

  objc_autoreleasePoolPop(v5);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  context = objc_autoreleasePoolPush();
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rxd ids data from ID %@", "-[WiFiIDSSyncEngine service:account:incomingData:fromID:context:]", a6}];
  }

  objc_autoreleasePoolPop(v9);
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v10 fromData:v11 error:v12, v13, v14, objc_opt_class(), 0], a5, 0];
  if (!v15)
  {
    sub_1001B02B0();
    goto LABEL_16;
  }

  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(WiFiIDSSyncEngine *)self managerQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10011F5E0;
    v26[3] = &unk_100261330;
    v26[4] = self;
    v26[5] = v16;
    v18 = v26;
LABEL_15:
    dispatch_sync(v17, v18);
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v16 objectForKeyedSubscript:@"V2"];
    v17 = [(WiFiIDSSyncEngine *)self managerQueue];
    if (v19)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10011F5EC;
      v25[3] = &unk_100261330;
      v25[4] = self;
      v25[5] = v16;
      v18 = v25;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011F630;
      block[3] = &unk_100261330;
      block[4] = self;
      block[5] = v16;
      v18 = block;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(WiFiIDSSyncEngine *)self managerQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10011F63C;
    v23[3] = &unk_100261330;
    v23[4] = self;
    v23[5] = v16;
    v18 = v23;
    goto LABEL_15;
  }

  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unknown message type.", "-[WiFiIDSSyncEngine service:account:incomingData:fromID:context:]"}];
  }

  objc_autoreleasePoolPop(v20);
LABEL_16:
  objc_autoreleasePoolPop(context);
}

- (void)sendToGizmoOfDataType:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = 0;
  v22[0] = IDSSendMessageOptionEncryptPayloadKey;
  v22[1] = IDSSendMessageOptionWantsClientAcknowledgementKey;
  v23[0] = &__kCFBooleanTrue;
  v23[1] = &__kCFBooleanTrue;
  v22[2] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
  v23[2] = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ID:%@, data type <%@>", "-[WiFiIDSSyncEngine sendToGizmoOfDataType:]", -[WiFiIDSSyncEngine pairedDeviceDestinationID](self, "pairedDeviceDestinationID"), +[WiFiIDSSyncEngine getStringForDataType:](WiFiIDSSyncEngine, "getStringForDataType:", a3)}];
  }

  objc_autoreleasePoolPop(v7);
  if ([(WiFiIDSSyncEngine *)self pairedDeviceDestinationID])
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (![(WiFiIDSSyncEngine *)self lastSyncedCompanionAssistedAutoJoinData])
        {
          goto LABEL_23;
        }

        v8 = [(WiFiIDSSyncEngine *)self lastSyncedCompanionAssistedAutoJoinData];
      }

      else
      {
        if (a3 != 2)
        {
          if (a3 == 3 && [(WiFiIDSSyncEngine *)self lastSyncedKnownNetworkPayloadData])
          {
            v8 = [(WiFiIDSSyncEngine *)self lastSyncedKnownNetworkPayloadData];
            goto LABEL_16;
          }

LABEL_23:
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"there is no data of type <%@> to send...", +[WiFiIDSSyncEngine getStringForDataType:](WiFiIDSSyncEngine, "getStringForDataType:", a3), v15, v16, v17, v18}];
          }

          goto LABEL_31;
        }

        if (![(WiFiIDSSyncEngine *)self lastSyncedCompanionLocaleData])
        {
          goto LABEL_23;
        }

        v8 = [(WiFiIDSSyncEngine *)self lastSyncedCompanionLocaleData];
      }
    }

    else
    {
      if (![(WiFiIDSSyncEngine *)self lastSyncedKnownNetworksData])
      {
        goto LABEL_23;
      }

      v8 = [(WiFiIDSSyncEngine *)self lastSyncedKnownNetworksData];
    }

LABEL_16:
    v9 = v8;
    [(WiFiIDSSyncEngine *)self setIsWaitingForIdsMessageDelivery:1];
    if (([(WiFiIDSSyncEngine *)self reSendIdsMessageBitMap]& (1 << a3)) == 0)
    {
      v10 = dispatch_time(0, 600000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011F9D8;
      block[3] = &unk_10025F5F8;
      block[4] = self;
      block[5] = a3;
      dispatch_after(v10, [(WiFiIDSSyncEngine *)self serialIdsDispatchQ], block);
    }

    v11 = [(IDSService *)[(WiFiIDSSyncEngine *)self idsService] sendData:v9 toDestinations:[NSSet setWithObject:?]identifier:200 error:v6, &v20, &v21];
    if (a3)
    {
      if (a3 == 1)
      {
        [(WiFiIDSSyncEngine *)self setLastSyncedCompanionAssistedAutoJoinDataGUID:v20];
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (a3 == 2)
      {
        [(WiFiIDSSyncEngine *)self setLastSyncedCompanionLocaleGUID:v20];
        if (!v11)
        {
          goto LABEL_29;
        }

LABEL_28:
        [(WiFiIDSSyncEngine *)self setIsWaitingForIdsSendResponse:1];
        goto LABEL_29;
      }

      [(WiFiIDSSyncEngine *)self setLastSyncedKnownNetworkPayloadDataGUID:v20];
      if (v11)
      {
        goto LABEL_28;
      }
    }

    else
    {
      [(WiFiIDSSyncEngine *)self setLastSyncedKnownNetworksDataGUID:v20];
      if (v11)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      v14 = [WiFiIDSSyncEngine getStringForDataType:a3];
      [v13 WFLog:3 message:{"%s: dataType <%@>, success %d, guid %@, error %@ ", "-[WiFiIDSSyncEngine sendToGizmoOfDataType:]", v14, v11, v20, v21}];
    }

LABEL_31:
    objc_autoreleasePoolPop(v12);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)reSendIdsMessage:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: reSendIdsMessageBitMap 0x%lx, isWaitingForIdsMessageDelivery %d, data type <%@>", "-[WiFiIDSSyncEngine reSendIdsMessage:]", -[WiFiIDSSyncEngine reSendIdsMessageBitMap](self, "reSendIdsMessageBitMap"), -[WiFiIDSSyncEngine isWaitingForIdsMessageDelivery](self, "isWaitingForIdsMessageDelivery"), +[WiFiIDSSyncEngine getStringForDataType:](WiFiIDSSyncEngine, "getStringForDataType:", a3)}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = 1 << a3;
  if (([(WiFiIDSSyncEngine *)self reSendIdsMessageBitMap]& v7) == 0 && [(WiFiIDSSyncEngine *)self isWaitingForIdsMessageDelivery])
  {
    [(WiFiIDSSyncEngine *)self sendToGizmoOfDataType:a3];
    [(WiFiIDSSyncEngine *)self setReSendIdsMessageBitMap:[(WiFiIDSSyncEngine *)self reSendIdsMessageBitMap]| v7];
  }

  objc_autoreleasePoolPop(v5);
}

- (id)copyPairedDestinationID
{
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(IDSService *)[(WiFiIDSSyncEngine *)self idsService] devices];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v9 = IDSCopyIDForDevice();
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: devices# %lu, destinationID %@", "-[WiFiIDSSyncEngine copyPairedDestinationID]", objc_msgSend(-[IDSService devices](-[WiFiIDSSyncEngine idsService](self, "idsService"), "devices"), "count"), v9}];
  }

  objc_autoreleasePoolPop(v10);
  objc_autoreleasePoolPop(v3);
  return v9;
}

- (id)getPairedVersionID
{
  v3 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IDSService *)[(WiFiIDSSyncEngine *)self idsService] devices];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice])
        {
          v10 = [v9 productVersion];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: paired device version ID %@", "-[WiFiIDSSyncEngine getPairedVersionID]", v10}];
  }

  objc_autoreleasePoolPop(v11);
  objc_autoreleasePoolPop(v3);
  return v10;
}

- (void)updateConnectionState:(id)a3 waitUntilDone:(unsigned __int8)a4
{
  v4 = a4;
  v7 = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = @"Connected";
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(a3);
        }

        if ([*(*(&v22 + 1) + 8 * i) isNearby])
        {
          v13 = 2;
          goto LABEL_12;
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v13 = 1;
    v11 = @"Not Connected";
  }

  else
  {
    v13 = 1;
    v11 = @"Not Connected";
  }

LABEL_12:
  v14 = [(WiFiIDSSyncEngine *)self connectionState];
  v15 = objc_autoreleasePoolPush();
  v16 = off_100298C40;
  if (v13 == v14)
  {
    if (off_100298C40)
    {
      v17 = [(WiFiIDSSyncEngine *)self connectionState];
      v18 = @"Unknown";
      if (v17 == 2)
      {
        v18 = @"Connected";
      }

      if (v17 == 1)
      {
        v18 = @"Not Connected";
      }

      [v16 WFLog:3 message:{"%s: no change to connection state (is %@)", "-[WiFiIDSSyncEngine updateConnectionState:waitUntilDone:]", v18}];
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: connection state changed (is %@)", "-[WiFiIDSSyncEngine updateConnectionState:waitUntilDone:]", v11}];
    }

    objc_autoreleasePoolPop(v15);
    [(WiFiIDSSyncEngine *)self setConnectionState:v13];
    v19 = [(WiFiIDSSyncEngine *)self managerQueue];
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100120084;
      block[3] = &unk_10025ED68;
      block[4] = self;
      dispatch_sync(v19, block);
    }

    else
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10012008C;
      v20[3] = &unk_10025ED68;
      v20[4] = self;
      dispatch_async(v19, v20);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)updatePairedDeviceID:(id)a3 versionID:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isWaitingForIdsMessageDelivery %d, isWaitingForIdsSendResponse %d, pairedDeviceDestinationID prev %@, new %@, pairedDeviceVersionID prev %@, new %@", "-[WiFiIDSSyncEngine updatePairedDeviceID:versionID:]", -[WiFiIDSSyncEngine isWaitingForIdsMessageDelivery](self, "isWaitingForIdsMessageDelivery"), -[WiFiIDSSyncEngine isWaitingForIdsSendResponse](self, "isWaitingForIdsSendResponse"), -[WiFiIDSSyncEngine pairedDeviceDestinationID](self, "pairedDeviceDestinationID"), a3, -[WiFiIDSSyncEngine pairedDeviceVersionID](self, "pairedDeviceVersionID"), a4}];
  }

  objc_autoreleasePoolPop(v8);
  [(WiFiIDSSyncEngine *)self setPairedDeviceDestinationID:a3];
  [(WiFiIDSSyncEngine *)self setPairedDeviceVersionID:a4];
  if ([(WiFiIDSSyncEngine *)self isWaitingForIdsMessageDelivery]&& ![(WiFiIDSSyncEngine *)self isWaitingForIdsSendResponse])
  {
    if ([(WiFiIDSSyncEngine *)self lastSyncedKnownNetworksData])
    {
      [(WiFiIDSSyncEngine *)self sendToGizmoOfDataType:0];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: there is no previous data blob for known networks", "-[WiFiIDSSyncEngine updatePairedDeviceID:versionID:]"}];
      }

      objc_autoreleasePoolPop(v9);
      [(WiFiIDSSyncEngine *)self knownNetworksListChanged];
    }

    [(WiFiIDSSyncEngine *)self sendToGizmoOfDataType:1];
    [(WiFiIDSSyncEngine *)self sendToGizmoOfDataType:2];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)pairedDeviceConnectionChanged:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(WiFiIDSSyncEngine *)self role];
  if (a3 && v6 && [a3 count])
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine pairedDeviceConnectionChanged:]"}];
    }

    objc_autoreleasePoolPop(v7);
    v8 = [(WiFiIDSSyncEngine *)self copyPairedDestinationID];
    v9 = [(WiFiIDSSyncEngine *)self getPairedVersionID];
    if (v8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100120330;
      block[3] = &unk_100262558;
      block[4] = self;
      block[5] = v8;
      block[6] = v9;
      dispatch_sync([(WiFiIDSSyncEngine *)self managerQueue], block);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: #devices %lu", "-[WiFiIDSSyncEngine service:nearbyDevicesChanged:]", objc_msgSend(a4, "count")}];
  }

  objc_autoreleasePoolPop(v7);
  if (a4 && [a4 count])
  {
    v8 = 2;
    v9 = @"Connected";
  }

  else
  {
    v8 = 1;
    v9 = @"Not Connected";
  }

  v10 = [(WiFiIDSSyncEngine *)self connectionState];
  v11 = objc_autoreleasePoolPush();
  v12 = off_100298C40;
  if (v8 == v10)
  {
    if (off_100298C40)
    {
      v13 = [(WiFiIDSSyncEngine *)self connectionState];
      v14 = @"Unknown";
      if (v13 == 2)
      {
        v14 = @"Connected";
      }

      if (v13 == 1)
      {
        v14 = @"Not Connected";
      }

      [v12 WFLog:3 message:{"%s: no change to connection state (is %@)", "-[WiFiIDSSyncEngine service:nearbyDevicesChanged:]", v14}];
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: connection state changed (is %@)", "-[WiFiIDSSyncEngine service:nearbyDevicesChanged:]", v9}];
    }

    objc_autoreleasePoolPop(v11);
    [(WiFiIDSSyncEngine *)self setConnectionState:v8];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100120524;
    block[3] = &unk_10025ED68;
    block[4] = self;
    dispatch_async([(WiFiIDSSyncEngine *)self managerQueue], block);
  }

  [(WiFiIDSSyncEngine *)self pairedDeviceConnectionChanged:a4];
  objc_autoreleasePoolPop(v6);
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: #devices %lu", "-[WiFiIDSSyncEngine service:devicesChanged:]", objc_msgSend(a4, "count")}];
  }

  objc_autoreleasePoolPop(v7);
  [(WiFiIDSSyncEngine *)self pairedDeviceConnectionChanged:a4];

  objc_autoreleasePoolPop(v6);
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: devices %lu", "-[WiFiIDSSyncEngine service:connectedDevicesChanged:]", objc_msgSend(a4, "count")}];
  }

  objc_autoreleasePoolPop(v7);
  [(WiFiIDSSyncEngine *)self pairedDeviceConnectionChanged:a4];

  objc_autoreleasePoolPop(v6);
}

- (BOOL)doesNetworkContainBssidForGuessing2GhzNetwork:(__WiFiNetwork *)a3
{
  if (a3)
  {
    if (sub_10000A540(a3, @"GUESSED_2ghzBSSID1"))
    {
      return 1;
    }

    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null guessedBssid1", "-[WiFiIDSSyncEngine doesNetworkContainBssidForGuessing2GhzNetwork:]"}];
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "-[WiFiIDSSyncEngine doesNetworkContainBssidForGuessing2GhzNetwork:]"}];
    }
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

- (void)updateGuessedNetworkCredentials:(__WiFiNetwork *)a3 password:(__CFString *)a4
{
  v18 = a4;
  if (a3)
  {
    v5 = sub_10000A878(a3);
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Received companion network <%@>", "-[WiFiIDSSyncEngine updateGuessedNetworkCredentials:password:]", v5, v18}];
    }

    objc_autoreleasePoolPop(v6);
    v7 = sub_100020110([(WiFiIDSSyncEngine *)self manager]);
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < [(__CFArray *)v8 count]; ++i)
      {
        v10 = [(__CFArray *)v8 objectAtIndex:i];
        if (v10)
        {
          v11 = v10;
          v12 = sub_10000A540(v10, @"WiFiManagerKnownNetworksEventType");
          valuePtr = 0;
          if (!v12 || (CFNumberGetValue(v12, kCFNumberIntType, &valuePtr), valuePtr == 5))
          {
            v13 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Guessed network <%@>", "-[WiFiIDSSyncEngine updateGuessedNetworkCredentials:password:]", sub_10000A878(v11)}];
            }

            objc_autoreleasePoolPop(v13);
            v14 = [(WiFiIDSSyncEngine *)self getCorresponding5GhzSsidInPlistFor2GhzNetwork:v11];
            if (v14)
            {
              v15 = v14;
              v16 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Correspondng 5GHz network <%@>", "-[WiFiIDSSyncEngine updateGuessedNetworkCredentials:password:]", v15}];
              }

              objc_autoreleasePoolPop(v16);
              if ([v15 isEqualToString:v5])
              {
                v17 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Networks matched, updating password for <%@>", "-[WiFiIDSSyncEngine updateGuessedNetworkCredentials:password:]", sub_10000A878(v11)}];
                }

                objc_autoreleasePoolPop(v17);
                sub_10009FBF4(v11, v18);
              }
            }
          }
        }
      }

      CFRelease(v8);
    }
  }

  else
  {
    sub_1001B031C();
  }
}

- (__WiFiNetwork)_findMatchingPlistNetworkForNetworkRecord:(id)a3
{
  v5 = sub_100020110([(WiFiIDSSyncEngine *)self manager]);
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %lu plist networks, %lu rxd networks", "-[WiFiIDSSyncEngine _findMatchingPlistNetworkForNetworkRecord:]", -[__CFArray count](v5, "count"), objc_msgSend(a3, "objectForKey:", @"SSID_STR"}];
  }

  objc_autoreleasePoolPop(v6);
  if (![(__CFArray *)v5 count])
  {
LABEL_7:
    v8 = 0;
    if (!v5)
    {
      return v8;
    }

LABEL_8:
    CFRelease(v5);
    return v8;
  }

  v7 = 0;
  while (1)
  {
    v8 = [(__CFArray *)v5 objectAtIndex:v7];
    if ([(WiFiIDSSyncEngine *)self isRxdNetwork:a3 equalToPlistNetwork:v8]>= 1)
    {
      break;
    }

    if (++v7 >= [(__CFArray *)v5 count])
    {
      goto LABEL_7;
    }
  }

  CFRetain(v8);
  if (v5)
  {
    goto LABEL_8;
  }

  return v8;
}

- (void)processReceivedKnownNetwork:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [a3 objectForKey:v11];
      }

      v13 = v12;
      v8 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v8);
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  if (sub_100088584([(WiFiIDSSyncEngine *)self manager]))
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@ operation", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v11}];
    }

    objc_autoreleasePoolPop(v14);
    if ([v11 isEqual:@"REMOVE"])
    {
      v15 = [(WiFiIDSSyncEngine *)self _findMatchingPlistNetworkForNetworkRecord:v13];
      v16 = sub_10000A878(v15);
      if (v15)
      {
        v17 = v16;
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Network needs removing %@", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v17}];
        }

        objc_autoreleasePoolPop(v18);
        v19 = sub_10000A540(v15, @"WiFiManagerKnownNetworksEventType");
        valuePtr = 0;
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Reason for adding <%@> is %d: ", v17, valuePtr}];
          }

          objc_autoreleasePoolPop(v20);
          if ((valuePtr & 0xFFFFFFFB) != 1 && (!sub_10009ED84(v15) || !sub_1000A1F04(v15)))
          {
            [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:v15];
            sub_100081634([(WiFiIDSSyncEngine *)self manager], v15, 21);
            if (![(WiFiIDSSyncEngine *)self getCorresponding5GhzSsidInPlistFor2GhzNetwork:v15])
            {
              [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:v15];
            }

            sub_100081634([(WiFiIDSSyncEngine *)self manager], v15, 21);
          }
        }
      }
    }

    else
    {
      v15 = 0;
    }

    if (([v11 isEqual:@"ADD"] & 1) == 0 && !objc_msgSend(v11, "isEqual:", @"UPDATE"))
    {
      goto LABEL_74;
    }

    v21 = [[NSMutableDictionary alloc] initWithDictionary:v13];
    v22 = [v13 objectForKey:@"SSID_STR"];
    if (!v22)
    {
LABEL_72:
      if (v21)
      {
      }

LABEL_74:
      if (v15)
      {
        CFRelease(v15);
      }

      goto LABEL_76;
    }

    v23 = v22;
    v24 = [v21 objectForKey:@"IS_NETWORK_CAPTIVE"];
    if (!(v24 | [v21 objectForKey:@"IS_NETWORK_WHITELISTING_CAPTIVE"]))
    {
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: captive determination is not present for %@, not adding network!!", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v23}];
      }

      objc_autoreleasePoolPop(v33);
      goto LABEL_72;
    }

    v25 = [(WiFiIDSSyncEngine *)self isRxdNetwork:v13 equalToPlistNetwork:v15];
    if (v25 < 1)
    {
      if (!sub_1001B0388(v13))
      {
        goto LABEL_62;
      }

      v29 = 0;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"rxd network <%@> exits in plist", v23}];
      }

      objc_autoreleasePoolPop(v26);
      if (v25 == 1)
      {
        goto LABEL_72;
      }

      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: rxd network properties have changed(%d), update the network <%@>", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v25, v23}];
      }

      objc_autoreleasePoolPop(v27);
      [(WiFiIDSSyncEngine *)self manager];
      v28 = sub_100127264(v13);
      if (!v28)
      {
        goto LABEL_72;
      }

      v29 = v28;
      if ((v25 & 8) != 0)
      {
        [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:v15];
        [(WiFiIDSSyncEngine *)self addToKnownNetworkGuessingDictionaryTheNetwork:v29];
      }

      if (!sub_1000A0144(v15))
      {
        v30 = objc_autoreleasePoolPush();
        v31 = off_100298C40;
        if (off_100298C40)
        {
          contexta = v30;
          v39 = sub_10000A878(v15);
          [v31 WFLog:4 message:{"%s: local network record for '%@' contains autojoin preference (%d)", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v39, sub_10001CF90(v15)}];
          v30 = contexta;
        }

        objc_autoreleasePoolPop(v30);
        sub_10000AD34(v29, @"enabled", 0);
      }

      sub_100081EDC([(WiFiIDSSyncEngine *)self manager], v29, 1);
      sub_10000AD34(v29, @"SyncedHomeProperties", 0);
      if ((v25 & 2) == 0)
      {
        goto LABEL_71;
      }

      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Password update required", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]"}];
      }

      objc_autoreleasePoolPop(v32);
      if (!sub_1001B0388(v13))
      {
        CFRelease(v29);
LABEL_62:
        [(WiFiIDSSyncEngine *)self manager];
        v29 = sub_100127264(v21);
        goto LABEL_63;
      }
    }

    context = [v13 objectForKey:@"WiFiNetworkPasswordString"];
    if (!context)
    {
      goto LABEL_66;
    }

    [v21 removeObjectForKey:@"WiFiNetworkPasswordString"];
    if (v29)
    {
      CFRelease(v29);
    }

    [(WiFiIDSSyncEngine *)self manager];
    v34 = sub_100127264(v13);
    if (!v34)
    {
      goto LABEL_72;
    }

    v29 = v34;
    LOBYTE(valuePtr) = 0;
    v35 = sub_10009FAEC(v34, context, &valuePtr, 0.1);
    v36 = v35;
    if (valuePtr || !v35)
    {
      v38 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiNetworkSetPasswordWithTimeout for <%@> has timeout = %d and result = %d", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v23, valuePtr, v36}];
      }

      objc_autoreleasePoolPop(v38);
      goto LABEL_71;
    }

    if (v25 >= 1)
    {
      [(WiFiIDSSyncEngine *)self updateGuessedNetworkCredentials:v29 password:context];
      goto LABEL_71;
    }

LABEL_63:
    [(WiFiIDSSyncEngine *)self addToKnownNetworkGuessingDictionaryTheNetwork:v29];
    sub_1001215A8(v21, v29);
    sub_10012780C(v29, [(WiFiIDSSyncEngine *)self manager]);
    v37 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ADDED <%@> to plist !!!", "-[WiFiIDSSyncEngine processReceivedKnownNetwork:]", v23}];
    }

    objc_autoreleasePoolPop(v37);
LABEL_66:
    if (!v29)
    {
      goto LABEL_72;
    }

LABEL_71:
    CFRelease(v29);
    goto LABEL_72;
  }

LABEL_76:
  objc_autoreleasePoolPop(v5);
}

- (void)processReceivedKnownNetworks:(id)a3
{
  if (self->_knownNetworkList)
  {

    self->_latestReceivedNetworkRecords = [[NSArray alloc] initWithArray:a3 copyItems:1];
  }

  else
  {
    self->_knownNetworkList = [[NSArray alloc] initWithArray:a3 copyItems:1];
    timer = self->_timer;
    v6 = dispatch_time(0, 0);

    dispatch_source_set_timer(timer, v6, 0x12A05F200uLL, 0x77359400uLL);
  }
}

- (void)processReceivedKnownNetworksInBatch:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (sub_100088584([(WiFiIDSSyncEngine *)self manager]))
  {
    v45 = v5;
    v6 = sub_100020110([(WiFiIDSSyncEngine *)self manager]);
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %lu plist networks, %lu rxd networks", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", -[__CFArray count](v6, "count"), objc_msgSend(a3, "count")}];
    }

    objc_autoreleasePoolPop(v7);
    if (v6)
    {
      if ([(__CFArray *)v6 count])
      {
        v8 = 0;
        while (1)
        {
          v9 = [(__CFArray *)v6 objectAtIndex:v8];
          v10 = sub_10000A540(v9, @"WiFiManagerKnownNetworksEventType");
          valuePtr = 0;
          if (!v10)
          {
            goto LABEL_13;
          }

          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          if (valuePtr == 1)
          {
            v11 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Network added by UI, so ignore removal check for plist network <%@>", sub_10000A878(v9)}];
            }

            goto LABEL_18;
          }

          if (valuePtr == 5)
          {
            v11 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Guessed network, so ignore removal check for plist network <%@>", sub_10000A878(v9)}];
            }
          }

          else
          {
LABEL_13:
            if (!sub_10009ED84(v9) && !sub_1000A1F04(v9))
            {
              if ([a3 count])
              {
                v12 = 0;
                while (-[WiFiIDSSyncEngine isRxdNetwork:equalToPlistNetwork:](self, "isRxdNetwork:equalToPlistNetwork:", [a3 objectAtIndex:v12], v9) < 1)
                {
                  if (++v12 >= [a3 count])
                  {
                    goto LABEL_25;
                  }
                }
              }

              else
              {
LABEL_25:
                v13 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: REMOVE <%@> from plist !!!", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", sub_10000A878(v9)}];
                }

                objc_autoreleasePoolPop(v13);
                [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:v9];
                sub_100081634([(WiFiIDSSyncEngine *)self manager], v9, 21);
              }

              goto LABEL_19;
            }

            v11 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Network added by profile, so ignore removal check for plist network <%@>", sub_10000A878(v9)}];
            }
          }

LABEL_18:
          objc_autoreleasePoolPop(v11);
LABEL_19:
          if (++v8 >= [(__CFArray *)v6 count])
          {
            goto LABEL_33;
          }
        }
      }

      v9 = 0;
LABEL_33:
      CFRelease(v6);
    }

    else
    {
      v9 = 0;
    }

    v15 = sub_100020110([(WiFiIDSSyncEngine *)self manager]);
    if (v15)
    {
      v16 = v15;
      if ([(__CFArray *)v15 count])
      {
        v17 = 0;
        do
        {
          v18 = [(__CFArray *)v16 objectAtIndex:v17];
          v9 = v18;
          if (v18)
          {
            v19 = sub_10000A540(v18, @"WiFiManagerKnownNetworksEventType");
            v48 = 0;
            if (!v19 || (CFNumberGetValue(v19, kCFNumberIntType, &v48), v48 == 5))
            {
              if (![(WiFiIDSSyncEngine *)self getCorresponding5GhzSsidInPlistFor2GhzNetwork:v9])
              {
                v20 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: REMOVE guessed <%@> from plist", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", sub_10000A878(v9)}];
                }

                objc_autoreleasePoolPop(v20);
                [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:v9];
                sub_100081634([(WiFiIDSSyncEngine *)self manager], v9, 21);
              }
            }
          }

          ++v17;
        }

        while (v17 < [(__CFArray *)v16 count]);
      }

      CFRelease(v16);
    }

    v21 = sub_100020110([(WiFiIDSSyncEngine *)self manager]);
    if ([a3 count])
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectAtIndex:", v22)}];
        v25 = [v24 objectForKey:@"SSID_STR"];
        if (!v25)
        {
          goto LABEL_94;
        }

        v26 = v25;
        v27 = [v24 objectForKey:@"IS_NETWORK_CAPTIVE"];
        v28 = v27 | [v24 objectForKey:@"IS_NETWORK_WHITELISTING_CAPTIVE"];
        v29 = objc_autoreleasePoolPush();
        if (!v28)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: captive determination is not present for %@, not adding network!!", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", v26}];
          }

          objc_autoreleasePoolPop(v29);
          goto LABEL_94;
        }

        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"check rxd <%@> for ADD", v26}];
        }

        objc_autoreleasePoolPop(v29);
        if ([(__CFArray *)v21 count])
        {
          v30 = 0;
          while (1)
          {
            v9 = [(__CFArray *)v21 objectAtIndex:v30];
            v23 = [(WiFiIDSSyncEngine *)self isRxdNetwork:v24 equalToPlistNetwork:v9];
            if (v23 >= 1)
            {
              break;
            }

            if (++v30 >= [(__CFArray *)v21 count])
            {
              goto LABEL_61;
            }
          }

          v36 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"rxd network <%@> exits in plist", v26}];
          }

          objc_autoreleasePoolPop(v36);
          if (v23 == 1)
          {
            goto LABEL_94;
          }
        }

        else if (v23 < 2)
        {
LABEL_61:
          if (!sub_1001B0388(v24))
          {
            goto LABEL_88;
          }

          v46 = 0;
          v31 = 0;
          goto LABEL_63;
        }

        v37 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: rxd network properties have changed(%d), update the network <%@>", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", v23, v26}];
        }

        objc_autoreleasePoolPop(v37);
        [(WiFiIDSSyncEngine *)self manager];
        v38 = sub_100127264(v24);
        if (!v38)
        {
          goto LABEL_94;
        }

        v31 = v38;
        if ((v23 & 8) != 0)
        {
          [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:v9];
          [(WiFiIDSSyncEngine *)self addToKnownNetworkGuessingDictionaryTheNetwork:v31];
        }

        sub_100081EDC([(WiFiIDSSyncEngine *)self manager], v31, 1);
        sub_10000AD34(v31, @"SyncedHomeProperties", 0);
        if ((v23 & 2) == 0)
        {
          goto LABEL_93;
        }

        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Password update required", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]"}];
        }

        objc_autoreleasePoolPop(v39);
        if (!sub_1001B0388(v24))
        {
          CFRelease(v31);
LABEL_88:
          [(WiFiIDSSyncEngine *)self manager];
          v31 = sub_100127264(v24);
          goto LABEL_89;
        }

        v46 = 1;
LABEL_63:
        v32 = [v24 objectForKey:@"WiFiNetworkPasswordString"];
        if (!v32)
        {
          goto LABEL_92;
        }

        v33 = v32;
        [v24 removeObjectForKey:@"WiFiNetworkPasswordString"];
        if (v31)
        {
          CFRelease(v31);
        }

        [(WiFiIDSSyncEngine *)self manager];
        v34 = sub_100127264(v24);
        if (!v34)
        {
          goto LABEL_94;
        }

        v31 = v34;
        v47 = 0;
        v35 = sub_10009FAEC(v34, v33, &v47, 0.1);
        if (v47 || !v35)
        {
          v40 = v35;
          v41 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v44 = v40;
            v42 = v41;
            [off_100298C40 WFLog:3 message:{"%s: WiFiNetworkSetPasswordWithTimeout for <%@> has timeout = %d and result = %d", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", v26, v47, v44}];
            v41 = v42;
          }

          objc_autoreleasePoolPop(v41);
          goto LABEL_93;
        }

        if (v46)
        {
          [(WiFiIDSSyncEngine *)self updateGuessedNetworkCredentials:v31 password:v33];
LABEL_93:
          CFRelease(v31);
          goto LABEL_94;
        }

LABEL_89:
        [(WiFiIDSSyncEngine *)self addToKnownNetworkGuessingDictionaryTheNetwork:v31];
        sub_1001215A8(v24, v31);
        sub_10012780C(v31, [(WiFiIDSSyncEngine *)self manager]);
        v43 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: ADDED <%@> to plist !!!", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]", v26}];
        }

        objc_autoreleasePoolPop(v43);
LABEL_92:
        if (v31)
        {
          goto LABEL_93;
        }

LABEL_94:

        ++v22;
      }

      while (v22 < [a3 count]);
    }

    v5 = v45;
    if (v21)
    {
      CFRelease(v21);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Cannot apply synced networks as device has not unlock after boot", "-[WiFiIDSSyncEngine processReceivedKnownNetworksInBatch:]"}];
    }

    objc_autoreleasePoolPop(v14);

    self->_receivedKnownNetworks = [a3 copy];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)knownNetworksListChanged
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: role %ld, isKeychainUnlocked %d", "-[WiFiIDSSyncEngine knownNetworksListChanged]", -[WiFiIDSSyncEngine role](self, "role"), -[WiFiIDSSyncEngine isKeychainUnlocked](self, "isKeychainUnlocked")}];
  }

  objc_autoreleasePoolPop(v4);
  if ([(WiFiIDSSyncEngine *)self role]&& [(WiFiIDSSyncEngine *)self isKeychainUnlocked])
  {
    if ([(WiFiIDSSyncEngine *)self coalesceKnownNetworksSyncTimer])
    {
      [(NSTimer *)[(WiFiIDSSyncEngine *)self coalesceKnownNetworksSyncTimer] setFireDate:[NSDate dateWithTimeIntervalSinceNow:10.0]];
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: adjusted coalesceKnownNetworksSyncTimer %@", "-[WiFiIDSSyncEngine knownNetworksListChanged]", -[WiFiIDSSyncEngine coalesceKnownNetworksSyncTimer](self, "coalesceKnownNetworksSyncTimer")}];
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      self->_coalesceKnownNetworksSyncTimer = [[NSTimer alloc] initWithFireDate:+[NSDate dateWithTimeIntervalSinceNow:](NSDate interval:"dateWithTimeIntervalSinceNow:" target:10.0) selector:self userInfo:"syncKnownWiFiNetworks:" repeats:{0, 1, 315360000.0}];
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: created coalesceKnownNetworksSyncTimer %@", "-[WiFiIDSSyncEngine knownNetworksListChanged]", -[WiFiIDSSyncEngine coalesceKnownNetworksSyncTimer](self, "coalesceKnownNetworksSyncTimer")}];
      }

      objc_autoreleasePoolPop(v6);
      [+[NSRunLoop mainRunLoop](NSRunLoop addTimer:"addTimer:forMode:" forMode:[(WiFiIDSSyncEngine *)self coalesceKnownNetworksSyncTimer], NSDefaultRunLoopMode];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isNetwork:(__WiFiNetwork *)a3 updatedSince:(double)a4 withinInterval:(double)a5 basedOn:(__CFString *)a6
{
  v8 = sub_10000A540(a3, a6);
  AbsoluteTime = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = CFGetTypeID(v8);
    if (v11 == CFDateGetTypeID())
    {
      AbsoluteTime = CFDateGetAbsoluteTime(v10);
    }
  }

  v12 = AbsoluteTime > 0.0;
  if (a4 <= 0.0)
  {
    v12 = 0;
  }

  return a4 - AbsoluteTime < a5 && v12;
}

- (BOOL)skipSyncForNetwork:(__WiFiNetwork *)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [(WiFiIDSSyncEngine *)self isNetwork:a3 updatedSince:@"lastAutoJoined" withinInterval:Current basedOn:604800.0];
  v7 = [(WiFiIDSSyncEngine *)self isNetwork:a3 updatedSince:@"lastJoined" withinInterval:Current basedOn:604800.0];
  v8 = [(WiFiIDSSyncEngine *)self isNetwork:a3 updatedSince:@"lastUpdated" withinInterval:Current basedOn:604800.0];
  return ((v6 | v7 | v8 | [(WiFiIDSSyncEngine *)self isNetwork:a3 updatedSince:@"addedAt" withinInterval:Current basedOn:604800.0]) & 1) == 0;
}

- (void)syncKnownWiFiNetwork:(__WiFiNetwork *)a3 withOperation:(int)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: role %ld, destinationID %@, version %@", "-[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]", -[WiFiIDSSyncEngine role](self, "role"), -[WiFiIDSSyncEngine pairedDeviceDestinationID](self, "pairedDeviceDestinationID"), -[WiFiIDSSyncEngine pairedDeviceVersionID](self, "pairedDeviceVersionID")}];
  }

  objc_autoreleasePoolPop(v7);
  if ([(WiFiIDSSyncEngine *)self role])
  {
    if ([(WiFiIDSSyncEngine *)self pairedDeviceDestinationID])
    {
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3052000000;
      v29[3] = sub_100002C00;
      v29[4] = sub_1000067E4;
      v29[5] = sub_10000D83C("[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]");
      v8 = +[NSMutableDictionary dictionary];
      v9 = sub_1000A6B78();
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [v8 setObject:*(*(&v25 + 1) + 8 * i) forKeyedSubscript:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "objectForKeyedSubscript:", kSecAttrAccount)}];
          }

          v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v10);
      }

      if ([(WiFiIDSSyncEngine *)self skipSyncForNetwork:a3])
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Skipping sync for network: <%@>", "-[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]", sub_10000A878(a3)}];
        }

        objc_autoreleasePoolPop(v13);
        goto LABEL_35;
      }

      v14 = sub_1001266A8(a3, [(WiFiIDSSyncEngine *)self manager]);
      v15 = v14;
      if (v14 && sub_100127AB4(v14))
      {
        if (sub_1001B0388(v15))
        {
          v16 = sub_10002A1CC(a3);
          if (!v16)
          {
LABEL_35:
            _Block_object_dispose(v29, 8);
            goto LABEL_36;
          }

          [v15 setObject:v16 forKey:@"WiFiNetworkPasswordString"];
          if (!sub_1000A13F8(a3))
          {
            v17 = [objc_msgSend(v8 objectForKeyedSubscript:{sub_10000A878(a3)), "objectForKeyedSubscript:", kSecAttrModificationDate}];
            sub_1000A12E4(a3, v17);
            [(WiFiIDSSyncEngine *)self manager];
            sub_10007D980();
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = sub_10000A540(a3, @"NetworkOfInterestHomeState");
        if (v18)
        {
          [v15 setObject:v18 forKey:@"NetworkOfInterestHomeState"];
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : syncing NOI for network : <%@>", "-[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]", sub_10000A878(a3)}];
          }

          objc_autoreleasePoolPop(v19);
        }

        v20 = sub_10000A540(a3, @"NetworkAtLocationOfInterestType");
        if (v20)
        {
          [v15 setObject:v20 forKey:@"NetworkAtLocationOfInterestType"];
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : syncing LOI for network : <%@>", "-[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]", sub_10000A878(a3)}];
          }

          objc_autoreleasePoolPop(v21);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100122844;
      block[3] = &unk_100263558;
      v24 = a4;
      block[4] = v15;
      block[5] = self;
      block[6] = v29;
      dispatch_async([(WiFiIDSSyncEngine *)self serialIdsDispatchQ], block);

      goto LABEL_35;
    }

    [(WiFiIDSSyncEngine *)self setIsWaitingForIdsMessageDelivery:1];
  }

LABEL_36:
  objc_autoreleasePoolPop(v6);
}

- (void)syncKnownWiFiNetworks:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100122A5C;
  block[3] = &unk_10025ED68;
  block[4] = self;
  dispatch_async([(WiFiIDSSyncEngine *)self managerQueue], block);
}

- (void)keychainAccessibleNow
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine keychainAccessibleNow]"}];
  }

  objc_autoreleasePoolPop(v4);
  [(WiFiIDSSyncEngine *)self setIsKeychainUnlocked:1];
  [(WiFiIDSSyncEngine *)self knownNetworksListChanged];

  objc_autoreleasePoolPop(v3);
}

- (void)checkForWiFiPasswordChange
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine checkForWiFiPasswordChange]"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = sub_10000D83C("[WiFiIDSSyncEngine checkForWiFiPasswordChange]");
  [(WiFiIDSSyncEngine *)self setKnownNetworks:sub_100072D44([(WiFiIDSSyncEngine *)self manager])];
  v6 = +[NSMutableDictionary dictionary];
  v7 = sub_1000A6B78();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 setObject:*(*(&v24 + 1) + 8 * i) forKeyedSubscript:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "objectForKeyedSubscript:", kSecAttrAccount)}];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)[(WiFiIDSSyncEngine *)self knownNetworks] count])
  {
    v23 = v5;
    v12 = v3;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [(NSArray *)[(WiFiIDSSyncEngine *)self knownNetworks] objectAtIndex:v13];
      v16 = sub_10000A878(v15);
      if (sub_10009F418(v15))
      {
        v17 = sub_1000A13F8(v15);
        v18 = [objc_msgSend(v6 objectForKeyedSubscript:{v16), "objectForKeyedSubscript:", kSecAttrModificationDate}];
        v19 = v18;
        if (v17 && v18)
        {
          if (CFDateCompare(v17, v18, 0))
          {
            v14 = 1;
LABEL_18:
            sub_1000A12E4(v15, v19);
            [(WiFiIDSSyncEngine *)self manager];
            sub_10007D980();
          }
        }

        else if (v18)
        {
          goto LABEL_18;
        }
      }

      if (++v13 >= [(NSArray *)[(WiFiIDSSyncEngine *)self knownNetworks] count])
      {
        v3 = v12;
        v5 = v23;
        if (v14)
        {
          [(WiFiIDSSyncEngine *)self manager];
          [(WiFiIDSSyncEngine *)self knownNetworks];
          sub_10015AD08();
          v21 = v20;
          v22 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: mod date changes saved to the plist: %d", "-[WiFiIDSSyncEngine checkForWiFiPasswordChange]", v21}];
          }

          objc_autoreleasePoolPop(v22);
          if (v21)
          {
            [(WiFiIDSSyncEngine *)self knownNetworksListChanged];
          }
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)subscribeToKeychainChanges
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiIDSSyncEngine subscribeToKeychainChanges]"}];
  }

  objc_autoreleasePoolPop(v4);
  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100123630;
  handler[3] = &unk_100263580;
  handler[4] = self;
  notify_register_dispatch("com.apple.security.keychainchanged", &out_token, [(WiFiIDSSyncEngine *)self managerQueue], handler);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001236C4;
  v5[3] = &unk_100263580;
  v5[4] = self;
  notify_register_dispatch("com.apple.wifid.WiFiPasswordChanged", &out_token, [(WiFiIDSSyncEngine *)self managerQueue], v5);
  objc_autoreleasePoolPop(v3);
}

- (void)currentNetworkChanged
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: role %ld, currentNetwork %@", "-[WiFiIDSSyncEngine currentNetworkChanged]", -[WiFiIDSSyncEngine role](self, "role"), -[WiFiIDSSyncEngine currentNetwork](self, "currentNetwork")}];
  }

  objc_autoreleasePoolPop(v4);
  if ([(WiFiIDSSyncEngine *)self role]&& [(WiFiIDSSyncEngine *)self pairedDeviceDestinationID])
  {
    if ([(WiFiIDSSyncEngine *)self currentNetwork])
    {
      [(NSTimer *)[(WiFiIDSSyncEngine *)self waitForReAssociationTimer] setFireDate:[NSDate dateWithTimeIntervalSinceNow:CFAbsoluteTimeGetCurrent() + 315360000.0]];
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: reset waitForReAssociationTimer %@", "-[WiFiIDSSyncEngine currentNetworkChanged]", -[WiFiIDSSyncEngine waitForReAssociationTimer](self, "waitForReAssociationTimer")}];
      }

      objc_autoreleasePoolPop(v5);
      [(WiFiIDSSyncEngine *)self sendCurrentCompanionNetworkWithChannelUpdate:0];
    }

    else if ([(WiFiIDSSyncEngine *)self waitForReAssociationTimer])
    {
      v6 = objc_autoreleasePoolPush();
      [(NSTimer *)[(WiFiIDSSyncEngine *)self waitForReAssociationTimer] setFireDate:[NSDate dateWithTimeIntervalSinceNow:30.0]];
      objc_autoreleasePoolPop(v6);
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: adjusted waitForReAssociationTimer %@", "-[WiFiIDSSyncEngine currentNetworkChanged]", -[WiFiIDSSyncEngine waitForReAssociationTimer](self, "waitForReAssociationTimer")}];
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      -[WiFiIDSSyncEngine setWaitForReAssociationTimer:](self, "setWaitForReAssociationTimer:", [[NSTimer alloc] initWithFireDate:+[NSDate dateWithTimeIntervalSinceNow:](NSDate interval:"dateWithTimeIntervalSinceNow:" target:30.0) selector:self userInfo:"companionReAssociationWaitTimerFired:" repeats:{0, 1, CFAbsoluteTimeGetCurrent() + 315360000.0}]);
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: created waitForReAssociationTimer %@", "-[WiFiIDSSyncEngine currentNetworkChanged]", -[WiFiIDSSyncEngine waitForReAssociationTimer](self, "waitForReAssociationTimer")}];
      }

      objc_autoreleasePoolPop(v8);
      [+[NSRunLoop mainRunLoop](NSRunLoop addTimer:"addTimer:forMode:" forMode:[(WiFiIDSSyncEngine *)self waitForReAssociationTimer], NSDefaultRunLoopMode];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)companionReAssociationWaitTimerFired:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100123A7C;
  block[3] = &unk_10025ED68;
  block[4] = self;
  dispatch_async([(WiFiIDSSyncEngine *)self managerQueue], block);
}

- (void)sendCurrentCompanionNetworkWithChannelUpdate:(unsigned __int8)a3
{
  v3 = a3;
  v5 = objc_autoreleasePoolPush();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = sub_100002C00;
  v31 = sub_1000067E4;
  v32 = sub_1001266A8([(WiFiIDSSyncEngine *)self currentNetwork], [(WiFiIDSSyncEngine *)self manager]);
  v6 = v28[5];
  if (v6 && sub_100127AB4(v6))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: autojoinAssist SSID %@", "-[WiFiIDSSyncEngine sendCurrentCompanionNetworkWithChannelUpdate:]", objc_msgSend(v28[5], "objectForKey:", @"SSID_STR"}];
    }

    objc_autoreleasePoolPop(v7);
    if (&_CNForgetSSID)
    {
      v8 = sub_10009E718([(WiFiIDSSyncEngine *)self currentNetwork]);
      [v28[5] setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v8), @"IS_NETWORK_CAPTIVE"}];
    }

    if (sub_1001B0388(v28[5]))
    {
      v9 = sub_10002A1CC([(WiFiIDSSyncEngine *)self currentNetwork]);
      if (v9)
      {
        [v28[5] setObject:v9 forKey:@"WiFiNetworkPasswordString"];
        CFRelease(v9);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100123F60;
    block[3] = &unk_10025F818;
    block[4] = self;
    block[5] = &v27;
    dispatch_async([(WiFiIDSSyncEngine *)self serialIdsDispatchQ], block);
  }

  else
  {
    if ([(WiFiIDSSyncEngine *)self currentNetwork])
    {
      v10 = sub_10000A878([(WiFiIDSSyncEngine *)self currentNetwork]);
    }

    else
    {
      v10 = 0;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = sub_100002C00;
    v24 = sub_1000067E4;
    v25 = [[NSMutableDictionary alloc] initWithCapacity:3];
    if (v10)
    {
      [v21[5] setObject:v10 forKey:@"SSID_STR"];
      valuePtr = 0.0;
      v11 = sub_10000A540([(WiFiIDSSyncEngine *)self currentNetwork], @"RSSI");
      if (v11)
      {
        CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr);
      }

      v12 = [NSNumber numberWithDouble:valuePtr];
      [v21[5] setObject:v12 forKey:@"RSSI"];
      v18 = 0;
      v13 = sub_10000A540([(WiFiIDSSyncEngine *)self currentNetwork], @"CHANNEL");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberIntType, &v18);
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }

      v15 = [NSNumber numberWithInt:v14];
      [v21[5] setObject:v15 forKey:@"CHANNEL"];
      if (v3)
      {
        [v21[5] setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"CHANNEL_UPDATE"}];
      }
    }

    if ([(WiFiIDSSyncEngine *)self countryCodeStr])
    {
      [v21[5] setObject:-[WiFiIDSSyncEngine countryCodeStr](self forKey:{"countryCodeStr"), @"ISO_CC_CODE"}];
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: autojoinAssistDict %@", "-[WiFiIDSSyncEngine sendCurrentCompanionNetworkWithChannelUpdate:]", v21[5]}];
    }

    objc_autoreleasePoolPop(v16);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100124094;
    v17[3] = &unk_10025F818;
    v17[4] = self;
    v17[5] = &v20;
    dispatch_async([(WiFiIDSSyncEngine *)self serialIdsDispatchQ], v17);
    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&v27, 8);
  objc_autoreleasePoolPop(v5);
}

- (void)sendLocaleToGizmo:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Sending countryCode %@", "-[WiFiIDSSyncEngine sendLocaleToGizmo:]", a3}];
  }

  objc_autoreleasePoolPop(v6);

  self->_countryCodeStr = [a3 copy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124264;
  block[3] = &unk_10025ED68;
  block[4] = self;
  dispatch_async([(WiFiIDSSyncEngine *)self serialIdsDispatchQ], block);
  objc_autoreleasePoolPop(v5);
}

- (void)currentNetworkChannelChanged
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: role %ld, currentNetwork %@", "-[WiFiIDSSyncEngine currentNetworkChannelChanged]", -[WiFiIDSSyncEngine role](self, "role"), -[WiFiIDSSyncEngine currentNetwork](self, "currentNetwork")}];
  }

  objc_autoreleasePoolPop(v4);
  if ([(WiFiIDSSyncEngine *)self currentNetwork]&& [(WiFiIDSSyncEngine *)self role]&& [(WiFiIDSSyncEngine *)self pairedDeviceDestinationID])
  {
    [(WiFiIDSSyncEngine *)self sendCurrentCompanionNetworkWithChannelUpdate:1];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)networkRemoved:(__WiFiNetwork *)a3
{
  v5 = objc_autoreleasePoolPush();
  if ([(WiFiIDSSyncEngine *)self role]!= 1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Clear the guessing dictionaries for %@", "-[WiFiIDSSyncEngine networkRemoved:]", a3}];
    }

    objc_autoreleasePoolPop(v6);
    [(WiFiIDSSyncEngine *)self removeFromKnownNetworkGuessingDictionaryTheNetwork:a3];
    v7 = [(WiFiIDSSyncEngine *)self getCorresponding5GhzSsidInPlistFor2GhzNetwork:a3];
    if (v7)
    {
      v8 = v7;
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Clear the dictionaries for corresponding 5GHz network %@", "-[WiFiIDSSyncEngine networkRemoved:]", v8}];
      }

      objc_autoreleasePoolPop(v9);
      [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self authGuessingDictionary] removeObjectForKey:v8];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)processReceivedAutoJoinAssist:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (!a3)
  {
    v34 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null autojoin assist", "-[WiFiIDSSyncEngine processReceivedAutoJoinAssist:]"}];
    }

    goto LABEL_55;
  }

  v6 = [a3 objectForKeyedSubscript:@"SSID_STR"];
  if (!v6)
  {
    v34 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null companionSsid", "-[WiFiIDSSyncEngine processReceivedAutoJoinAssist:]"}];
    }

LABEL_55:
    objc_autoreleasePoolPop(v34);
    v26 = [(WiFiIDSSyncEngine *)self manager];
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_38;
  }

  v7 = v6;
  v8 = [a3 objectForKeyedSubscript:@"RSSI"];
  if (v8)
  {
    v9 = [v8 intValue];
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"rxd companion rssi %d", v9}];
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v11 = [a3 objectForKeyedSubscript:@"CHANNEL"];
  if (v11)
  {
    v12 = [v11 intValue];
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"rxd companion channel %d", v12}];
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v35 = v9;
  v14 = [a3 objectForKeyedSubscript:@"CHANNEL_UPDATE"];
  if (v14)
  {
    v15 = [v14 intValue];
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v17 = "true";
      if (!v15)
      {
        v17 = "false";
      }

      [off_100298C40 WFLog:3 message:{"rxd channel update request: %s", v17}];
    }

    objc_autoreleasePoolPop(v16);
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if ([a3 objectForKeyedSubscript:@"ISO_CC_CODE"])
  {
    sub_10015E088([(WiFiIDSSyncEngine *)self manager]);
  }

  v19 = sub_100072D44([(WiFiIDSSyncEngine *)self manager]);
  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %lu plist networks, autojoin assist SSID: %@", "-[WiFiIDSSyncEngine processReceivedAutoJoinAssist:]", objc_msgSend(v19, "count"), objc_msgSend(a3, "objectForKey:", @"SSID_STR"}];
  }

  objc_autoreleasePoolPop(v20);
  if ([v19 count])
  {
    v21 = 0;
    while (1)
    {
      v22 = [v19 objectAtIndex:v21];
      v23 = sub_10000A878(v22);
      if ([v23 isEqualToString:v7])
      {
        break;
      }

      if (++v21 >= [v19 count])
      {
        goto LABEL_30;
      }
    }

    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"rxd companion network <%@> exists in gizmo plist", v23}];
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    v22 = 0;
LABEL_30:
    v24 = [[NSDictionary alloc] initWithObjectsAndKeys:{a3, @"ADD", 0}];
    [(WiFiIDSSyncEngine *)self processReceivedKnownNetwork:v24];
    v23 = [a3 objectForKeyedSubscript:@"SSID_STR"];
  }

  if (![(WiFiIDSSyncEngine *)self doesNetworkContainBssidForGuessing2GhzNetwork:v22])
  {
    v33 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: companion network %@ is not a 5ghz network", "-[WiFiIDSSyncEngine processReceivedAutoJoinAssist:]", v7}];
    }

LABEL_50:
    objc_autoreleasePoolPop(v33);
    goto LABEL_36;
  }

  if (!sub_10007C3DC(-[WiFiIDSSyncEngine manager](self, "manager")) && [v19 count])
  {
    v31 = 0;
    while (1)
    {
      v32 = [v19 objectAtIndex:v31];
      if ([-[WiFiIDSSyncEngine getCorresponding5GhzSsidInPlistFor2GhzNetwork:](self getCorresponding5GhzSsidInPlistFor2GhzNetwork:{v32), "isEqualToString:", v7}])
      {
        break;
      }

      if (++v31 >= [v19 count])
      {
        goto LABEL_36;
      }
    }

    v23 = sub_10000A878(v32);
    v33 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"rxd companion network <%@> has guessed counterpart 2.4ghz network <%@> in gizmo plist", v7, v23}];
    }

    goto LABEL_50;
  }

LABEL_36:
  v26 = [(WiFiIDSSyncEngine *)self manager];
  if (v18)
  {
    v27 = v23;
    v28 = 1;
    v29 = v35;
    v30 = v12;
LABEL_38:
    sub_100085748(v26, v27, v28, v29, v30);
    goto LABEL_40;
  }

  sub_10015EFB0(v26, v12, 0);
LABEL_40:

  objc_autoreleasePoolPop(v5);
}

- (void)processReceivedLocaleString:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  sub_10015E088([(WiFiIDSSyncEngine *)self manager]);

  objc_autoreleasePoolPop(v4);
}

- (void)notifyStateChanged
{
  if ([(WiFiIDSSyncEngine *)self stateChangeCallback])
  {
    v3 = [(WiFiIDSSyncEngine *)self stateChangeCallback];
    v4 = [(WiFiIDSSyncEngine *)self connectionState];
    v5 = [(WiFiIDSSyncEngine *)self stateChangeContext];
    v6 = v3[2];

    v6(v3, v4, v5);
  }
}

- (void)releaseKnownNetworkGuessingDictionary
{
  authGuessingDictionary = self->_authGuessingDictionary;
}

- (void)createKnownNetworkGuessingDictionary
{
  self->_bssidGuessingDictionary = objc_alloc_init(NSMutableDictionary);
  self->_authGuessingDictionary = objc_alloc_init(NSMutableDictionary);
  v3 = sub_100072D44([(WiFiIDSSyncEngine *)self manager]);
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %lu known networks", "-[WiFiIDSSyncEngine createKnownNetworkGuessingDictionary]", objc_msgSend(v3, "count")}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = objc_autoreleasePoolPush();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v3);
          }

          [(WiFiIDSSyncEngine *)self addToKnownNetworkGuessingDictionaryTheNetwork:*(*(&v10 + 1) + 8 * i)];
        }

        v7 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null plistNetworks", "-[WiFiIDSSyncEngine createKnownNetworkGuessingDictionary]"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)updateBssidGuessingDictForBssid:(id)a3 guessingFailureCountDict:(id)a4 forNetworkSsid:(id)a5
{
  if (a4 && [a4 valueForKey:a3])
  {
    v14[0] = @"5GhzSsid";
    v14[1] = @"GuessingFailureCount";
    v15[0] = a5;
    v15[1] = [a4 valueForKey:a3];
    v9 = v15;
    v10 = v14;
    v11 = 2;
  }

  else
  {
    v12 = @"5GhzSsid";
    v13 = a5;
    v9 = &v13;
    v10 = &v12;
    v11 = 1;
  }

  [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] setValue:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v9 forKeys:v10 count:v11], a3];
}

- (void)addToKnownNetworkGuessingDictionaryTheNetwork:(__WiFiNetwork *)a3
{
  if (a3)
  {
    v5 = sub_10000A878(a3);
    if (v5)
    {
      v6 = v5;
      v7 = sub_10009F418(a3);
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@[%d]", "-[WiFiIDSSyncEngine addToKnownNetworkGuessingDictionaryTheNetwork:]", v6, v7}];
      }

      objc_autoreleasePoolPop(v8);
      if (v7)
      {
        v25 = 0;
        v9 = sub_10009F954(a3, &v25, 0.1);
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v11 = "non-null";
          if (!v9)
          {
            v11 = "null";
          }

          [off_100298C40 WFLog:3 message:{"%s: attempted copy password fetch returned, passwordFetchTimedOut: %d, password is: %s", "-[WiFiIDSSyncEngine addToKnownNetworkGuessingDictionaryTheNetwork:]", v25, v11}];
        }

        objc_autoreleasePoolPop(v10);
        if (!v9)
        {
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            if (v25)
            {
              v24 = ", although keychain fetch did time out";
            }

            else
            {
              v24 = "";
            }

            [off_100298C40 WFLog:3 message:{"%s: No password returned for %@ %s", "-[WiFiIDSSyncEngine addToKnownNetworkGuessingDictionaryTheNetwork:]", v6, v24}];
          }

          v22 = v23;
          goto LABEL_34;
        }

        v26[0] = @"AuthFlag";
        v12 = [NSNumber numberWithUnsignedInteger:v7];
        v26[1] = @"Password";
        v27[0] = v12;
        v27[1] = v9;
        v13 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
        CFRelease(v9);
      }

      else
      {
        v13 = &off_1002829E8;
      }

      [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self authGuessingDictionary] setObject:v13 forKey:v6];
      v15 = sub_10000A540(a3, @"GUESSED_2ghzBSSID1");
      if (v15)
      {
        v16 = v15;
        v17 = sub_10000A540(a3, @"GUESSED_2ghzBSSID2");
        v18 = sub_10000A540(a3, @"GUESSED_2ghzBSSID3");
        v19 = sub_10000A540(a3, @"GUESSED_2ghzBSSID4");
        v20 = sub_10000A540(a3, @"WiFiPreference2GhzGuessingAttemptsPerBSSID");
        [(WiFiIDSSyncEngine *)self updateBssidGuessingDictForBssid:v16 guessingFailureCountDict:v20 forNetworkSsid:v6];
        if (v17)
        {
          [(WiFiIDSSyncEngine *)self updateBssidGuessingDictForBssid:v17 guessingFailureCountDict:v20 forNetworkSsid:v6];
        }

        if (v18)
        {
          [(WiFiIDSSyncEngine *)self updateBssidGuessingDictForBssid:v18 guessingFailureCountDict:v20 forNetworkSsid:v6];
        }

        if (v19)
        {
          [(WiFiIDSSyncEngine *)self updateBssidGuessingDictForBssid:v19 guessingFailureCountDict:v20 forNetworkSsid:v6];
        }

        return;
      }

      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null guessedBssid1", "-[WiFiIDSSyncEngine addToKnownNetworkGuessingDictionaryTheNetwork:]"}];
      }

      v22 = v21;
LABEL_34:
      objc_autoreleasePoolPop(v22);
      return;
    }
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "-[WiFiIDSSyncEngine addToKnownNetworkGuessingDictionaryTheNetwork:]"}];
  }

  objc_autoreleasePoolPop(v14);
}

- (void)removeFromKnownNetworkGuessingDictionaryTheNetwork:(__WiFiNetwork *)a3
{
  if (a3)
  {
    v5 = sub_10000A878(a3);
    v6 = objc_autoreleasePoolPush();
    if (!v5)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null network", "-[WiFiIDSSyncEngine removeFromKnownNetworkGuessingDictionaryTheNetwork:]"}];
      }

      v14 = v6;
      goto LABEL_22;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@", "-[WiFiIDSSyncEngine removeFromKnownNetworkGuessingDictionaryTheNetwork:]", v5}];
    }

    objc_autoreleasePoolPop(v6);
    [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self authGuessingDictionary] removeObjectForKey:v5];
    v7 = sub_10000A540(a3, @"GUESSED_2ghzBSSID1");
    if (v7)
    {
      [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] removeObjectForKey:v7];
      v8 = sub_10000A540(a3, @"GUESSED_2ghzBSSID2");
      if (v8)
      {
        [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] removeObjectForKey:v8];
      }

      v9 = sub_10000A540(a3, @"GUESSED_2ghzBSSID3");
      if (v9)
      {
        [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] removeObjectForKey:v9];
      }

      v10 = sub_10000A540(a3, @"GUESSED_2ghzBSSID4");
      if (v10)
      {
        v11 = v10;
        v12 = [(WiFiIDSSyncEngine *)self bssidGuessingDictionary];

        [(NSMutableDictionary *)v12 removeObjectForKey:v11];
      }

      return;
    }

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null guessedBssid1", "-[WiFiIDSSyncEngine removeFromKnownNetworkGuessingDictionaryTheNetwork:]"}];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "-[WiFiIDSSyncEngine removeFromKnownNetworkGuessingDictionaryTheNetwork:]"}];
    }
  }

  v14 = v13;
LABEL_22:

  objc_autoreleasePoolPop(v14);
}

- (unsigned)canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:(__WiFiNetwork *)a3
{
  if (!a3)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null scanned network", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v29, v30}];
    }

    goto LABEL_14;
  }

  v5 = sub_10000A878(a3);
  if (!v5)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null scanned network ssid", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v29, v30}];
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = sub_10000A540(a3, @"BSSID");
  if (!v7)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null scanned network bssid", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v29, v30}];
    }

    goto LABEL_14;
  }

  v8 = v7;
  if (![(WiFiIDSSyncEngine *)self isNetworkKnown:v6])
  {
    v13 = [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] valueForKey:v8];
    if (!v13)
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@: null bssidGuessingDictionary", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v6}];
      }

      goto LABEL_7;
    }

    v14 = v13;
    v15 = [v13 valueForKey:@"5GhzSsid"];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 valueForKey:@"GuessingFailureCount"];
      if (!v17 || [v17 intValue] < 5)
      {
        v18 = [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self authGuessingDictionary] objectForKey:v16];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 valueForKey:@"AuthFlag"];
          if (v20)
          {
            v21 = [v20 unsignedIntValue];
            if (sub_10009F418(a3) == v21)
            {
              if (!v21)
              {
                return 0;
              }

              v22 = [v19 valueForKey:@"Password"];
              if (v22)
              {
                v23 = v22;
                v32 = @"SSID_STR";
                v33 = v6;
                v24 = sub_10000AD2C(kCFAllocatorDefault, [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1]);
                if (v24)
                {
                  v25 = v24;
                  if (sub_10009FDE4(a3))
                  {
                    v26 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: Password is already available for scanned network [%@]", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", sub_10000A878(a3), v30, v31}];
                    }
                  }

                  else
                  {
                    v28 = sub_10009FBF4(v25, v23);
                    v26 = objc_autoreleasePoolPush();
                    if (!v28)
                    {
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: %@[%@]: failed to set password", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v16, v8}];
                      }

                      objc_autoreleasePoolPop(v26);
                      CFRelease(v25);
                      return 0;
                    }

                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: 2Ghz scanned network[%@] has a matching known 5Ghz network [%@]. Using password from [%@]", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v6, v16, v16}];
                    }
                  }

                  objc_autoreleasePoolPop(v26);
                  CFRelease(v25);
                  return 1;
                }

                v11 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: %@[%@]: failed to create network ref", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v16, v8}];
                }
              }

              else
              {
                v11 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: %@[%@]: password not found", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v16, v8}];
                }
              }

              goto LABEL_14;
            }

            v27 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: %@ - %@: auth mismatch", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v6, v16}];
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: %@ - %@: null auth", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v6, v16}];
            }
          }
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: %@ - %@: null authGuessingDictionary", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v6, v16}];
          }
        }

        v10 = v27;
        goto LABEL_15;
      }

      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@[%@]: reached max failed attempts", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v16, v8}];
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: invalid 5ghzSsid", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v29, v30}];
      }
    }

LABEL_14:
    v10 = v11;
    goto LABEL_15;
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanned [%@] is a known network", "-[WiFiIDSSyncEngine canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:]", v6}];
  }

LABEL_7:
  v10 = v9;
LABEL_15:
  objc_autoreleasePoolPop(v10);
  return 0;
}

- (unsigned)isNetworkKnown:(id)a3
{
  if (a3)
  {
    return [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self authGuessingDictionary] objectForKey:a3]!= 0;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: invalid ssid", "-[WiFiIDSSyncEngine isNetworkKnown:]"}];
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

- (void)incrementGuessingFailedCountForScannedNetworkWithBssid:(id)a3
{
  if (a3)
  {
    v5 = [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] valueForKey:a3];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 valueForKey:@"5GhzSsid"];
      if (v7)
      {
        v8 = v7;
        v9 = [objc_msgSend(v6 valueForKey:{@"GuessingFailureCount", "unsignedIntValue"}] + 1;
        v10 = [[NSNumber alloc] initWithUnsignedInt:v9];
        v14[0] = @"5GhzSsid";
        v14[1] = @"GuessingFailureCount";
        v15[0] = v8;
        v15[1] = v10;
        [(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self bssidGuessingDictionary] setValue:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v15 forKeys:v14 count:2], a3];
        v11 = sub_100083194([(WiFiIDSSyncEngine *)self manager], v8, a3);
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@[%@]: update guessing failure count to %d, status:%d", "-[WiFiIDSSyncEngine incrementGuessingFailedCountForScannedNetworkWithBssid:]", a3, v8, v9, v11}];
        }

        objc_autoreleasePoolPop(v12);

        return;
      }

      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null known5ghzSsid", "-[WiFiIDSSyncEngine incrementGuessingFailedCountForScannedNetworkWithBssid:]"}];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null bssidGuessingDictionary", "-[WiFiIDSSyncEngine incrementGuessingFailedCountForScannedNetworkWithBssid:]"}];
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid bssid", "-[WiFiIDSSyncEngine incrementGuessingFailedCountForScannedNetworkWithBssid:]"}];
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (id)getCorresponding5GhzSsidInPlistFor2GhzNetwork:(__WiFiNetwork *)a3
{
  result = sub_10000A540(a3, @"BSSID");
  if (result)
  {
    result = [-[NSMutableDictionary valueForKey:](-[WiFiIDSSyncEngine bssidGuessingDictionary](self "bssidGuessingDictionary")];
    if (result)
    {
      v5 = result;
      if ([(NSMutableDictionary *)[(WiFiIDSSyncEngine *)self authGuessingDictionary] objectForKey:result])
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (int64_t)isRxdNetwork:(id)a3 equalToPlistNetwork:(__WiFiNetwork *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (![objc_msgSend(a3 objectForKey:{@"SSID_STR", "isEqualToString:", sub_10000A878(a4)}])
  {
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v8 = sub_1001266A8(a4, [(WiFiIDSSyncEngine *)self manager]);
  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null syncFormattedNetworkRecord", "-[WiFiIDSSyncEngine isRxdNetwork:equalToPlistNetwork:]"}];
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_24;
  }

  v9 = v8;
  v10 = sub_1001B0388(v8);
  if (v10 != sub_1001B0388(a3))
  {
LABEL_25:
    v19 = 0;
    v10 = 0;
    goto LABEL_20;
  }

  if (v10)
  {
    v10 = sub_10002A1CC(a4);
    if ([v10 isEqualToString:{objc_msgSend(a3, "objectForKey:", @"WiFiNetworkPasswordString"}])
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_10001CB84(a4);
  if (v12 != [objc_msgSend(a3 objectForKey:{@"UserDirected", "BOOLValue"}])
  {
    v11 |= 4uLL;
  }

  v13 = [a3 objectForKey:@"GUESSED_2ghzBSSID4"];
  if (v13)
  {
    v14 = v13;
    v15 = sub_10000A540(a4, @"GUESSED_2ghzBSSID4");
    if (v15)
    {
      v16 = v14;
      goto LABEL_17;
    }

LABEL_18:
    v11 |= 8uLL;
    goto LABEL_19;
  }

  v17 = [a3 objectForKey:@"GUESSED_2ghzBSSID1"];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v15 = sub_10000A540(a4, @"GUESSED_2ghzBSSID1");
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v18;
LABEL_17:
  if (CFStringCompare(v15, v16, 1uLL))
  {
    goto LABEL_18;
  }

LABEL_19:
  v19 = v11 | 1;
LABEL_20:

  objc_autoreleasePoolPop(v7);
  return v19;
}

@end