@interface MediaService
- (MediaService)init;
- (id)attributeIDToString:(unsigned __int8)a3 entityID:(unsigned __int8)a4;
- (id)currentAttributeValueForAttributeID:(unsigned __int8)a3 entityID:(unsigned __int8)a4;
- (id)entityUpdateFlagsToString:(unsigned __int8)a3;
- (id)invocationForNotifyAttributeIDs:(id)a3 entityID:(unsigned __int8)a4 central:(id)a5;
- (id)remoteCommandIDToString:(unsigned __int8)a3;
- (id)sessionForCentral:(id)a3;
- (int64_t)handleEntityAttributeRead:(id)a3;
- (int64_t)handleEntityAttributeWrite:(id)a3;
- (int64_t)handleEntityUpdateWrite:(id)a3 action:(id *)a4;
- (int64_t)handleRemoteCommandWrite:(id)a3;
- (unint64_t)subscriptionCount;
- (void)dealloc;
- (void)mediaInfoDidChange;
- (void)mediaPlayerDidChange;
- (void)mediaStateDidChange;
- (void)mediaVolumeDidChange;
- (void)notifySupportedCommands:(id)a3 central:(id)a4;
- (void)notifySupportedCommandsValue:(id)a3 central:(id)a4;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)startNotifications;
- (void)stopNotifications;
- (void)supportedCommandsDidChange;
- (void)supportedCommandsDidChange:(id)a3;
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
    v19 = [(ServerService *)v2 service];
    [v19 setCharacteristics:v18];
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

- (int64_t)handleRemoteCommandWrite:(id)a3
{
  v4 = [a3 value];
  v5 = [DataInputStream inputStreamWithData:v4];

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

    v10 = [(MediaService *)self info];
    [v10 sendCommand:v13];

    v11 = 0;
  }

  else
  {
    v11 = 161;
  }

  return v11;
}

- (int64_t)handleEntityUpdateWrite:(id)a3 action:(id *)a4
{
  v6 = a3;
  v7 = [v6 central];
  v8 = [(MediaService *)self sessionForCentral:v7];

  if (v8)
  {
    v9 = [v6 value];
    v10 = [DataInputStream inputStreamWithData:v9];

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
      v14 = [v6 central];
      *a4 = [(MediaService *)self invocationForNotifyAttributeIDs:v11 entityID:v13 central:v14];

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

- (int64_t)handleEntityAttributeRead:(id)a3
{
  v4 = a3;
  v5 = [v4 central];
  v6 = [(MediaService *)self sessionForCentral:v5];

  if (v6)
  {
    v7 = [v6 loadedEntityID];
    v8 = [v6 loadedAttributeID];
    v9 = [(MediaService *)self currentAttributeValueForAttributeID:v8 entityID:v7];
    [v6 setLastKnownAttributeValue:v9 attributeID:v8 entityID:v7];
    if (v9)
    {
      v10 = [v9 dataUsingEncoding:4];
      [v4 setValue:v10];

      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(MediaService *)self attributeIDToString:v8 entityID:v7];
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

- (int64_t)handleEntityAttributeWrite:(id)a3
{
  v4 = a3;
  v5 = [v4 central];
  v6 = [(MediaService *)self sessionForCentral:v5];

  if (v6)
  {
    v7 = [v4 value];
    v8 = [DataInputStream inputStreamWithData:v7];

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

- (void)notifySupportedCommandsValue:(id)a3 central:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[DataOutputStream outputStream];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
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
    v16 = [v8 data];
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notifying value for supported commands: %@", buf, 0xCu);
  }

  v17 = [v8 data];
  v18 = [(MediaService *)self remoteCommandCharacteristic];
  v24 = v7;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  [(ServerService *)self updateValue:v17 forCharacteristic:v18 onSubscribedCentrals:v19];
}

- (void)notifySupportedCommands:(id)a3 central:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MediaService *)self sessions];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 lastKnownSupportedCommands];
  v10 = [v9 isEqualToSet:v11];

  if ((v10 & 1) == 0)
  {
    [v8 setLastKnownSupportedCommands:v11];
    [(MediaService *)self notifySupportedCommandsValue:v11 central:v6];
  }
}

- (void)supportedCommandsDidChange:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MediaService *)self remoteCommandCharacteristic];
  v6 = [v5 subscribedCentrals];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(MediaService *)self notifySupportedCommands:v4 central:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  v5 = [(MediaService *)self info];
  [v5 setDelegate:self];
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

  v5 = [(MediaService *)self info];
  [v5 setDelegate:0];

  [(MediaService *)self setInfo:0];
  [(MediaService *)self setSessions:0];
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 characteristic];
  v8 = [(MediaService *)self entityAttributeCharacteristic];

  if (v7 == v8)
  {
    v9 = [(MediaService *)self handleEntityAttributeRead:v6];
  }

  else
  {
    v9 = 10;
  }

  [v10 respondToRequest:v6 withResult:v9];
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v5 = [a4 firstObject];
  v6 = [v5 characteristic];
  v7 = [(MediaService *)self remoteCommandCharacteristic];

  if (v6 == v7)
  {
    v14 = [(MediaService *)self handleRemoteCommandWrite:v5];
LABEL_8:
    v13 = v14;
    v12 = 0;
    goto LABEL_9;
  }

  v8 = [v5 characteristic];
  v9 = [(MediaService *)self entityUpdateCharacteristic];

  if (v8 == v9)
  {
    v15 = 0;
    v13 = [(MediaService *)self handleEntityUpdateWrite:v5 action:&v15];
    v12 = v15;
    goto LABEL_9;
  }

  v10 = [v5 characteristic];
  v11 = [(MediaService *)self entityAttributeCharacteristic];

  if (v10 == v11)
  {
    v14 = [(MediaService *)self handleEntityAttributeWrite:v5];
    goto LABEL_8;
  }

  v12 = 0;
  v13 = 10;
LABEL_9:
  [(ServerService *)self respondToRequest:v5 withResult:v13];
  [v12 invokeWithTarget:self];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v19 = a4;
  v7 = a5;
  v8 = [(MediaService *)self remoteCommandCharacteristic];
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    v10 = [(MediaService *)self entityUpdateCharacteristic];

    if (v10 != v7)
    {
      goto LABEL_13;
    }
  }

  if ([(MediaService *)self subscriptionCount]== 1)
  {
    [(MediaService *)self startNotifications];
  }

  v11 = [(MediaService *)self sessions];
  v12 = [v11 objectForKeyedSubscript:v19];

  if (!v12)
  {
    v13 = objc_alloc_init(MediaSession);
    v14 = [(MediaService *)self sessions];
    [v14 setObject:v13 forKeyedSubscript:v19];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:v19];
  }

  v16 = [(MediaService *)self remoteCommandCharacteristic];

  if (v16 == v7)
  {
    v17 = [(MediaService *)self info];
    v18 = [v17 supportedCommands];

    if (v18)
    {
      [(MediaService *)self notifySupportedCommands:v18 central:v19];
    }
  }

LABEL_13:
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [(MediaService *)self remoteCommandCharacteristic];
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    v10 = [(MediaService *)self entityUpdateCharacteristic];

    if (v10 != v7)
    {
      goto LABEL_12;
    }
  }

  v11 = [(MediaService *)self remoteCommandCharacteristic];
  v12 = [v11 subscribedCentrals];
  if ([v12 containsObject:v16])
  {
  }

  else
  {
    v13 = [(MediaService *)self entityUpdateCharacteristic];
    v14 = [v13 subscribedCentrals];
    v15 = [v14 containsObject:v16];

    if (v15)
    {
      goto LABEL_10;
    }

    v11 = [(MediaService *)self sessions];
    [v11 removeObjectForKey:v16];
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
  v3 = [(MediaService *)self remoteCommandCharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];

  if (v5)
  {
    v7 = [(MediaService *)self info];
    v6 = [v7 supportedCommands];
    [(MediaService *)self supportedCommandsDidChange:v6];
  }
}

- (void)mediaPlayerDidChange
{
  v3 = [(MediaService *)self entityUpdateCharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [NSSet setWithObjects:&off_1000C3BB8, &off_1000C3BD0, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:0];
  }
}

- (void)mediaStateDidChange
{
  v3 = [(MediaService *)self entityUpdateCharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [NSSet setWithObjects:&off_1000C3BE8, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:0];
  }
}

- (void)mediaInfoDidChange
{
  v3 = [(MediaService *)self entityUpdateCharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];

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
  v3 = [(MediaService *)self entityUpdateCharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [NSSet setWithObjects:&off_1000C3C00, 0];
    [(MediaService *)self attributeIDsDidChange:v6 entityID:0];
  }
}

- (unint64_t)subscriptionCount
{
  v3 = [(MediaService *)self remoteCommandCharacteristic];
  v4 = [v3 subscribedCentrals];
  v5 = [v4 count];
  v6 = [(MediaService *)self entityUpdateCharacteristic];
  v7 = [v6 subscribedCentrals];
  v8 = [v7 count];

  return v5 + v8;
}

- (id)sessionForCentral:(id)a3
{
  v4 = a3;
  v5 = [(MediaService *)self sessions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)currentAttributeValueForAttributeID:(unsigned __int8)a3 entityID:(unsigned __int8)a4
{
  if (a4 == 2)
  {
    v5 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v7 = [(MediaService *)self info];
        v13 = [v7 trackTitle];
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_39;
        }

        v14 = [(MediaService *)self info];
        v7 = [v14 trackDuration];

        if (!v7 || (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v7 isEqualToNumber:v15], v15, (v16 & 1) != 0))
        {
          v5 = 0;
          goto LABEL_38;
        }

        [v7 doubleValue];
        v13 = [NSString stringWithFormat:@"%0.3f", v18];
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_39;
      }

      v7 = [(MediaService *)self info];
      v13 = [v7 trackAlbum];
    }

    else
    {
      v7 = [(MediaService *)self info];
      v13 = [v7 trackArtist];
    }

LABEL_37:
    v5 = v13;
    goto LABEL_38;
  }

  if (a4 == 1)
  {
    v5 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v7 = [(MediaService *)self info];
        v12 = [v7 queueShuffleMode];
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_39;
        }

        v7 = [(MediaService *)self info];
        v12 = [v7 queueRepeatMode];
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_39;
      }

      v7 = [(MediaService *)self info];
      v12 = [v7 queueCount];
    }

    else
    {
      v7 = [(MediaService *)self info];
      v12 = [v7 queueIndex];
    }
  }

  else
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_39;
    }

    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_39;
        }

        v6 = [(MediaService *)self info];
        v7 = [v6 playerElapsedTime];

        if (v7 && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToNumber:v8], v8, (v9 & 1) == 0))
        {
          [v7 doubleValue];
          if (v20 >= 0.0)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0.0;
          }

          v10 = [(MediaService *)self info];
          v11 = [v10 playerPlaybackState];
          v22 = [(MediaService *)self info];
          [v22 playerPlaybackRate];
          v5 = [NSString stringWithFormat:@"%@, %.1f, %.3f", v11, v23, *&v21];
        }

        else
        {
          v10 = [(MediaService *)self info];
          v11 = [v10 playerPlaybackState];
          v5 = [NSString stringWithFormat:@"%@, , ", v11];
        }

        goto LABEL_38;
      }

      v7 = [(MediaService *)self info];
      v13 = [v7 playerName];
      goto LABEL_37;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_39;
      }

      v7 = [(MediaService *)self info];
      v13 = [v7 playerBundleID];
      goto LABEL_37;
    }

    v7 = [(MediaService *)self info];
    v12 = [v7 playerVolume];
  }

  v17 = v12;
  v5 = [v12 stringValue];

LABEL_38:
LABEL_39:

  return v5;
}

- (id)invocationForNotifyAttributeIDs:(id)a3 entityID:(unsigned __int8)a4 central:(id)a5
{
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v8 = [(MediaService *)self methodSignatureForSelector:"notifyAttributeIDs:entityID:central:"];
  v9 = [NSInvocation invocationWithMethodSignature:v8];
  [v9 retainArguments];
  [v9 setSelector:"notifyAttributeIDs:entityID:central:"];
  [v9 setArgument:&v13 atIndex:2];
  [v9 setArgument:&v12 atIndex:3];
  [v9 setArgument:&v11 atIndex:4];

  return v9;
}

- (id)remoteCommandIDToString:(unsigned __int8)a3
{
  if (a3 > 0xDu)
  {
    return @"Unknown";
  }

  else
  {
    return off_1000BDDC8[a3];
  }
}

- (id)attributeIDToString:(unsigned __int8)a3 entityID:(unsigned __int8)a4
{
  if (a4 == 2)
  {
    v6 = @"Track";
    if (a3 <= 3u)
    {
      v7 = off_1000BDE78;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v6 = @"Queue";
    if (a3 < 4u)
    {
      v7 = off_1000BDE58;
      goto LABEL_10;
    }

LABEL_11:
    v8 = @"Unknown";
    return [NSString stringWithFormat:@"%@/%@", v6, v8, v4, v5];
  }

  if (a4)
  {
    v6 = @"Unknown";
    v8 = @"Unknown";
    return [NSString stringWithFormat:@"%@/%@", v6, v8, v4, v5];
  }

  v6 = @"Player";
  if (a3 >= 4u)
  {
    goto LABEL_11;
  }

  v7 = off_1000BDE38;
LABEL_10:
  v8 = v7[a3];
  return [NSString stringWithFormat:@"%@/%@", v6, v8, v4, v5];
}

- (id)entityUpdateFlagsToString:(unsigned __int8)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  for (i = 0; i != 8; ++i)
  {
    if ((v3 >> i))
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