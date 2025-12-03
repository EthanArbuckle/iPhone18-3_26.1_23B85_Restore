@interface MediaService
- (MediaService)init;
- (id)attributeIDToString:(unsigned __int8)string entityID:(unsigned __int8)d;
- (id)currentAttributeValueForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD;
- (id)entityUpdateFlagsToString:(unsigned __int8)string;
- (id)invocationForNotifyAttributeIDs:(id)ds entityID:(unsigned __int8)d central:(id)central;
- (id)remoteCommandIDToString:(unsigned __int8)string;
- (id)sessionForCentral:(id)central;
- (int64_t)handleEntityAttributeRead:(id)read;
- (int64_t)handleEntityAttributeWrite:(id)write;
- (int64_t)handleEntityUpdateWrite:(id)write action:(id *)action;
- (int64_t)handleRemoteCommandWrite:(id)write;
- (unint64_t)subscriptionCount;
- (void)dealloc;
- (void)mediaInfoDidChange;
- (void)mediaPlayerDidChange;
- (void)mediaStateDidChange;
- (void)mediaVolumeDidChange;
- (void)notifySupportedCommands:(id)commands central:(id)central;
- (void)notifySupportedCommandsValue:(id)value central:(id)central;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)startNotifications;
- (void)stopNotifications;
- (void)supportedCommandsDidChange;
- (void)supportedCommandsDidChange:(id)change;
@end

@implementation MediaService

- (MediaService)init
{
  v21.receiver = self;
  v21.super_class = MediaService;
  v2 = [(MediaService *)&v21 init];
  if (v2)
  {
    v3 = [CBMutableCharacteristic alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDAMSRemoteCommandCharacteristicString];
    v5 = [v3 initWithType:v4 properties:1048 value:0 permissions:34];
    remoteCommandCharacteristic = v2->_remoteCommandCharacteristic;
    v2->_remoteCommandCharacteristic = v5;

    v7 = [CBMutableCharacteristic alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDAMSEntityUpdateCharacteristicString];
    v9 = [v7 initWithType:v8 properties:1048 value:0 permissions:34];
    entityUpdateCharacteristic = v2->_entityUpdateCharacteristic;
    v2->_entityUpdateCharacteristic = v9;

    v11 = [CBMutableCharacteristic alloc];
    v12 = [CBUUID UUIDWithString:CBUUIDAMSEntityAttributeCharacteristicString];
    v13 = [v11 initWithType:v12 properties:10 value:0 permissions:51];
    entityAttributeCharacteristic = v2->_entityAttributeCharacteristic;
    v2->_entityAttributeCharacteristic = v13;

    v15 = [CBMutableService alloc];
    v16 = [CBUUID UUIDWithString:CBUUIDAppleMediaServiceString];
    v17 = [v15 initWithType:v16 primary:1];
    [(ServerService *)v2 setService:v17];

    v22[0] = v2->_remoteCommandCharacteristic;
    v22[1] = v2->_entityUpdateCharacteristic;
    v22[2] = v2->_entityAttributeCharacteristic;
    v18 = [NSArray arrayWithObjects:v22 count:3];
    service = [(ServerService *)v2 service];
    [service setCharacteristics:v18];
  }

  return v2;
}

- (void)dealloc
{
  [(MediaService *)self stopNotifications];
  v3.receiver = self;
  v3.super_class = MediaService;
  [(MediaService *)&v3 dealloc];
}

- (int64_t)handleRemoteCommandWrite:(id)write
{
  value = [write value];
  v5 = [DataInputStream inputStreamWithData:value];

  v13 = 0;
  if ([v5 readUint8:&v13])
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13;
      v8 = v6;
      v9 = [(MediaService *)self remoteCommandIDToString:v7];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@ remote command", buf, 0xCu);
    }

    info = [(MediaService *)self info];
    [info sendCommand:v13];

    v11 = 0;
  }

  else
  {
    v11 = 161;
  }

  return v11;
}

- (int64_t)handleEntityUpdateWrite:(id)write action:(id *)action
{
  writeCopy = write;
  central = [writeCopy central];
  v8 = [(MediaService *)self sessionForCentral:central];

  if (v8)
  {
    value = [writeCopy value];
    v10 = [DataInputStream inputStreamWithData:value];

    v18 = 0;
    if ([v10 readUint8:&v18])
    {
      v11 = +[NSMutableSet set];
      v17 = 0;
      if ([v10 readUint8:&v17])
      {
        do
        {
          v12 = [NSNumber numberWithUnsignedChar:v17];
          [v11 addObject:v12];
        }

        while (([v10 readUint8:&v17] & 1) != 0);
      }

      [v8 setRegisteredAttributeIDs:v11 entityID:v18];
      v13 = v18;
      central2 = [writeCopy central];
      *action = [(MediaService *)self invocationForNotifyAttributeIDs:v11 entityID:v13 central:central2];

      v15 = 0;
    }

    else
    {
      v15 = 161;
    }
  }

  else
  {
    v15 = 160;
  }

  return v15;
}

- (int64_t)handleEntityAttributeRead:(id)read
{
  readCopy = read;
  central = [readCopy central];
  v6 = [(MediaService *)self sessionForCentral:central];

  if (v6)
  {
    loadedEntityID = [v6 loadedEntityID];
    loadedAttributeID = [v6 loadedAttributeID];
    v9 = [(MediaService *)self currentAttributeValueForAttributeID:loadedAttributeID entityID:loadedEntityID];
    [v6 setLastKnownAttributeValue:v9 attributeID:loadedAttributeID entityID:loadedEntityID];
    if (v9)
    {
      v10 = [v9 dataUsingEncoding:4];
      [readCopy setValue:v10];

      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(MediaService *)self attributeIDToString:loadedAttributeID entityID:loadedEntityID];
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending value for attribute %@: %@", &v16, 0x16u);
      }

      v14 = 0;
    }

    else
    {
      v14 = 162;
    }
  }

  else
  {
    v14 = 160;
  }

  return v14;
}

- (int64_t)handleEntityAttributeWrite:(id)write
{
  writeCopy = write;
  central = [writeCopy central];
  v6 = [(MediaService *)self sessionForCentral:central];

  if (v6)
  {
    value = [writeCopy value];
    v8 = [DataInputStream inputStreamWithData:value];

    v16 = 0;
    if ([v8 readUint8:&v16 + 1] && objc_msgSend(v8, "readUint8:", &v16))
    {
      if ([v6 isRegisteredForAttributeID:v16 entityID:HIBYTE(v16)])
      {
        [v6 setLoadedEntityID:HIBYTE(v16)];
        [v6 setLoadedAttributeID:v16];
        v9 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v16;
          v11 = HIBYTE(v16);
          v12 = v9;
          v13 = [(MediaService *)self attributeIDToString:v10 entityID:v11];
          *buf = 138412290;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loading value for attribute %@", buf, 0xCu);
        }

        v14 = 0;
      }

      else
      {
        v14 = 160;
      }
    }

    else
    {
      v14 = 161;
    }
  }

  else
  {
    v14 = 160;
  }

  return v14;
}

- (void)notifySupportedCommandsValue:(id)value central:(id)central
{
  valueCopy = value;
  centralCopy = central;
  v8 = +[DataOutputStream outputStream];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = valueCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 writeUint8:{objc_msgSend(*(*(&v20 + 1) + 8 * v13), "unsignedCharValue", v20)}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v11);
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    data = [v8 data];
    *buf = 138412290;
    v26 = data;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notifying value for supported commands: %@", buf, 0xCu);
  }

  data2 = [v8 data];
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];
  v24 = centralCopy;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  [(ServerService *)self updateValue:data2 forCharacteristic:remoteCommandCharacteristic onSubscribedCentrals:v19];
}

- (void)notifySupportedCommands:(id)commands central:(id)central
{
  commandsCopy = commands;
  centralCopy = central;
  sessions = [(MediaService *)self sessions];
  v8 = [sessions objectForKeyedSubscript:centralCopy];

  lastKnownSupportedCommands = [v8 lastKnownSupportedCommands];
  v10 = [lastKnownSupportedCommands isEqualToSet:commandsCopy];

  if ((v10 & 1) == 0)
  {
    [v8 setLastKnownSupportedCommands:commandsCopy];
    [(MediaService *)self notifySupportedCommandsValue:commandsCopy central:centralCopy];
  }
}

- (void)supportedCommandsDidChange:(id)change
{
  changeCopy = change;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];
  subscribedCentrals = [remoteCommandCharacteristic subscribedCentrals];

  v7 = [subscribedCentrals countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(subscribedCentrals);
        }

        [(MediaService *)self notifySupportedCommands:changeCopy central:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subscribedCentrals countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)startNotifications
{
  v3 = +[NSMutableDictionary dictionary];
  [(MediaService *)self setSessions:v3];

  v4 = objc_alloc_init(MediaInfo);
  [(MediaService *)self setInfo:v4];

  info = [(MediaService *)self info];
  [info setDelegate:self];
}

- (void)stopNotifications
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v6[0] = 67109120;
    v6[1] = [(ServerService *)self restrictedMode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restrictedMode : %d", v6, 8u);
  }

  info = [(MediaService *)self info];
  [info setDelegate:0];

  [(MediaService *)self setInfo:0];
  [(MediaService *)self setSessions:0];
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  characteristic = [requestCopy characteristic];
  entityAttributeCharacteristic = [(MediaService *)self entityAttributeCharacteristic];

  if (characteristic == entityAttributeCharacteristic)
  {
    v9 = [(MediaService *)self handleEntityAttributeRead:requestCopy];
  }

  else
  {
    v9 = 10;
  }

  [managerCopy respondToRequest:requestCopy withResult:v9];
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  firstObject = [requests firstObject];
  characteristic = [firstObject characteristic];
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];

  if (characteristic == remoteCommandCharacteristic)
  {
    v14 = [(MediaService *)self handleRemoteCommandWrite:firstObject];
LABEL_8:
    v13 = v14;
    v12 = 0;
    goto LABEL_9;
  }

  characteristic2 = [firstObject characteristic];
  entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];

  if (characteristic2 == entityUpdateCharacteristic)
  {
    v15 = 0;
    v13 = [(MediaService *)self handleEntityUpdateWrite:firstObject action:&v15];
    v12 = v15;
    goto LABEL_9;
  }

  characteristic3 = [firstObject characteristic];
  entityAttributeCharacteristic = [(MediaService *)self entityAttributeCharacteristic];

  if (characteristic3 == entityAttributeCharacteristic)
  {
    v14 = [(MediaService *)self handleEntityAttributeWrite:firstObject];
    goto LABEL_8;
  }

  v12 = 0;
  v13 = 10;
LABEL_9:
  [(ServerService *)self respondToRequest:firstObject withResult:v13];
  [v12 invokeWithTarget:self];
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];
  v9 = remoteCommandCharacteristic;
  if (remoteCommandCharacteristic == characteristicCopy)
  {
  }

  else
  {
    entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];

    if (entityUpdateCharacteristic != characteristicCopy)
    {
      goto LABEL_13;
    }
  }

  if ([(MediaService *)self subscriptionCount]== 1)
  {
    [(MediaService *)self startNotifications];
  }

  sessions = [(MediaService *)self sessions];
  v12 = [sessions objectForKeyedSubscript:centralCopy];

  if (!v12)
  {
    v13 = objc_alloc_init(MediaSession);
    sessions2 = [(MediaService *)self sessions];
    [sessions2 setObject:v13 forKeyedSubscript:centralCopy];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:centralCopy];
  }

  remoteCommandCharacteristic2 = [(MediaService *)self remoteCommandCharacteristic];

  if (remoteCommandCharacteristic2 == characteristicCopy)
  {
    info = [(MediaService *)self info];
    supportedCommands = [info supportedCommands];

    if (supportedCommands)
    {
      [(MediaService *)self notifySupportedCommands:supportedCommands central:centralCopy];
    }
  }

LABEL_13:
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];
  v9 = remoteCommandCharacteristic;
  if (remoteCommandCharacteristic == characteristicCopy)
  {
  }

  else
  {
    entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];

    if (entityUpdateCharacteristic != characteristicCopy)
    {
      goto LABEL_12;
    }
  }

  remoteCommandCharacteristic2 = [(MediaService *)self remoteCommandCharacteristic];
  subscribedCentrals = [remoteCommandCharacteristic2 subscribedCentrals];
  if ([subscribedCentrals containsObject:centralCopy])
  {
  }

  else
  {
    entityUpdateCharacteristic2 = [(MediaService *)self entityUpdateCharacteristic];
    subscribedCentrals2 = [entityUpdateCharacteristic2 subscribedCentrals];
    v15 = [subscribedCentrals2 containsObject:centralCopy];

    if (v15)
    {
      goto LABEL_10;
    }

    remoteCommandCharacteristic2 = [(MediaService *)self sessions];
    [remoteCommandCharacteristic2 removeObjectForKey:centralCopy];
  }

LABEL_10:
  if (![(MediaService *)self subscriptionCount])
  {
    [(MediaService *)self stopNotifications];
  }

LABEL_12:
}

- (void)supportedCommandsDidChange
{
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];
  subscribedCentrals = [remoteCommandCharacteristic subscribedCentrals];
  v5 = [subscribedCentrals count];

  if (v5)
  {
    info = [(MediaService *)self info];
    supportedCommands = [info supportedCommands];
    [(MediaService *)self supportedCommandsDidChange:supportedCommands];
  }
}

- (void)mediaPlayerDidChange
{
  entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];
  subscribedCentrals = [entityUpdateCharacteristic subscribedCentrals];
  v5 = [subscribedCentrals count];

  if (v5)
  {
    v6 = [NSSet setWithObjects:&off_1000C3BB8, &off_1000C3BD0, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:0];
  }
}

- (void)mediaStateDidChange
{
  entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];
  subscribedCentrals = [entityUpdateCharacteristic subscribedCentrals];
  v5 = [subscribedCentrals count];

  if (v5)
  {
    v6 = [NSSet setWithObjects:&off_1000C3BE8, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:0];
  }
}

- (void)mediaInfoDidChange
{
  entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];
  subscribedCentrals = [entityUpdateCharacteristic subscribedCentrals];
  v5 = [subscribedCentrals count];

  if (v5)
  {
    v8 = [NSSet setWithObjects:&off_1000C3BE8, 0];
    [(MediaService *)self attributeIDsDidChange:v8 entityID:0];
    v6 = [NSSet setWithObjects:&off_1000C3BB8, &off_1000C3BE8, &off_1000C3C00, &off_1000C3BD0, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:1];
    v7 = [NSSet setWithObjects:&off_1000C3BE8, &off_1000C3BB8, &off_1000C3C00, &off_1000C3BD0, 0];
    [(MediaService *)self attributeIDsDidChange:v7 entityID:2];
  }
}

- (void)mediaVolumeDidChange
{
  entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];
  subscribedCentrals = [entityUpdateCharacteristic subscribedCentrals];
  v5 = [subscribedCentrals count];

  if (v5)
  {
    v6 = [NSSet setWithObjects:&off_1000C3C00, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:0];
  }
}

- (unint64_t)subscriptionCount
{
  remoteCommandCharacteristic = [(MediaService *)self remoteCommandCharacteristic];
  subscribedCentrals = [remoteCommandCharacteristic subscribedCentrals];
  v5 = [subscribedCentrals count];
  entityUpdateCharacteristic = [(MediaService *)self entityUpdateCharacteristic];
  subscribedCentrals2 = [entityUpdateCharacteristic subscribedCentrals];
  v8 = [subscribedCentrals2 count];

  return v5 + v8;
}

- (id)sessionForCentral:(id)central
{
  centralCopy = central;
  sessions = [(MediaService *)self sessions];
  v6 = [sessions objectForKeyedSubscript:centralCopy];

  return v6;
}

- (id)currentAttributeValueForAttributeID:(unsigned __int8)d entityID:(unsigned __int8)iD
{
  if (iD == 2)
  {
    stringValue = 0;
    if (d > 1)
    {
      if (d == 2)
      {
        info = [(MediaService *)self info];
        trackTitle = [info trackTitle];
      }

      else
      {
        if (d != 3)
        {
          goto LABEL_39;
        }

        info2 = [(MediaService *)self info];
        info = [info2 trackDuration];

        if (!info || (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [info isEqualToNumber:v15], v15, (v16 & 1) != 0))
        {
          stringValue = 0;
          goto LABEL_38;
        }

        [info doubleValue];
        trackTitle = [NSString stringWithFormat:@"%0.3f", v18];
      }
    }

    else if (d)
    {
      if (d != 1)
      {
        goto LABEL_39;
      }

      info = [(MediaService *)self info];
      trackTitle = [info trackAlbum];
    }

    else
    {
      info = [(MediaService *)self info];
      trackTitle = [info trackArtist];
    }

LABEL_37:
    stringValue = trackTitle;
    goto LABEL_38;
  }

  if (iD == 1)
  {
    stringValue = 0;
    if (d > 1)
    {
      if (d == 2)
      {
        info = [(MediaService *)self info];
        queueShuffleMode = [info queueShuffleMode];
      }

      else
      {
        if (d != 3)
        {
          goto LABEL_39;
        }

        info = [(MediaService *)self info];
        queueShuffleMode = [info queueRepeatMode];
      }
    }

    else if (d)
    {
      if (d != 1)
      {
        goto LABEL_39;
      }

      info = [(MediaService *)self info];
      queueShuffleMode = [info queueCount];
    }

    else
    {
      info = [(MediaService *)self info];
      queueShuffleMode = [info queueIndex];
    }
  }

  else
  {
    stringValue = 0;
    if (iD)
    {
      goto LABEL_39;
    }

    if (d <= 1)
    {
      if (d)
      {
        if (d != 1)
        {
          goto LABEL_39;
        }

        info3 = [(MediaService *)self info];
        info = [info3 playerElapsedTime];

        if (info && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [info isEqualToNumber:v8], v8, (v9 & 1) == 0))
        {
          [info doubleValue];
          if (v20 >= 0.0)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0.0;
          }

          info4 = [(MediaService *)self info];
          playerPlaybackState = [info4 playerPlaybackState];
          info5 = [(MediaService *)self info];
          [info5 playerPlaybackRate];
          stringValue = [NSString stringWithFormat:@"%@, %.1f, %.3f", playerPlaybackState, v23, *&v21];
        }

        else
        {
          info4 = [(MediaService *)self info];
          playerPlaybackState = [info4 playerPlaybackState];
          stringValue = [NSString stringWithFormat:@"%@, , ", playerPlaybackState];
        }

        goto LABEL_38;
      }

      info = [(MediaService *)self info];
      trackTitle = [info playerName];
      goto LABEL_37;
    }

    if (d != 2)
    {
      if (d != 3)
      {
        goto LABEL_39;
      }

      info = [(MediaService *)self info];
      trackTitle = [info playerBundleID];
      goto LABEL_37;
    }

    info = [(MediaService *)self info];
    queueShuffleMode = [info playerVolume];
  }

  v17 = queueShuffleMode;
  stringValue = [queueShuffleMode stringValue];

LABEL_38:
LABEL_39:

  return stringValue;
}

- (id)invocationForNotifyAttributeIDs:(id)ds entityID:(unsigned __int8)d central:(id)central
{
  dsCopy = ds;
  dCopy = d;
  centralCopy = central;
  v8 = [(MediaService *)self methodSignatureForSelector:"notifyAttributeIDs:entityID:central:"];
  v9 = [NSInvocation invocationWithMethodSignature:v8];
  [v9 retainArguments];
  [v9 setSelector:"notifyAttributeIDs:entityID:central:"];
  [v9 setArgument:&dsCopy atIndex:2];
  [v9 setArgument:&dCopy atIndex:3];
  [v9 setArgument:&centralCopy atIndex:4];

  return v9;
}

- (id)remoteCommandIDToString:(unsigned __int8)string
{
  if (string > 0xDu)
  {
    return @"Unknown";
  }

  else
  {
    return off_1000BDDC8[string];
  }
}

- (id)attributeIDToString:(unsigned __int8)string entityID:(unsigned __int8)d
{
  if (d == 2)
  {
    v6 = @"Track";
    if (string <= 3u)
    {
      v7 = off_1000BDE78;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (d == 1)
  {
    v6 = @"Queue";
    if (string < 4u)
    {
      v7 = off_1000BDE58;
      goto LABEL_10;
    }

LABEL_11:
    v8 = @"Unknown";
    return [NSString stringWithFormat:@"%@/%@", v6, v8, v4, v5];
  }

  if (d)
  {
    v6 = @"Unknown";
    v8 = @"Unknown";
    return [NSString stringWithFormat:@"%@/%@", v6, v8, v4, v5];
  }

  v6 = @"Player";
  if (string >= 4u)
  {
    goto LABEL_11;
  }

  v7 = off_1000BDE38;
LABEL_10:
  v8 = v7[string];
  return [NSString stringWithFormat:@"%@/%@", v6, v8, v4, v5];
}

- (id)entityUpdateFlagsToString:(unsigned __int8)string
{
  stringCopy = string;
  v4 = +[NSMutableString string];
  for (i = 0; i != 8; ++i)
  {
    if ((stringCopy >> i))
    {
      if (i)
      {
        v6 = 0;
      }

      else
      {
        v6 = @"T";
      }

      if ([v4 length])
      {
        [v4 appendString:@"|"];
      }

      [v4 appendString:v6];
    }
  }

  return v4;
}

@end