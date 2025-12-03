@interface SDUnlockTransport
- (SDUnlockTransport)init;
- (id)activeDevice;
- (id)dataFromUUID:(id)d;
- (id)idsDeviceForUniqueID:(id)d;
- (id)transferDataFromPayload:(id)payload sessionID:(id)d;
@end

@implementation SDUnlockTransport

- (SDUnlockTransport)init
{
  v8.receiver = self;
  v8.super_class = SDUnlockTransport;
  v2 = [(SDUnlockTransport *)&v8 init];
  v3 = +[NSMutableDictionary dictionary];
  completionHandlersByMessageIdentifier = v2->_completionHandlersByMessageIdentifier;
  v2->_completionHandlersByMessageIdentifier = v3;

  v5 = +[NSMutableDictionary dictionary];
  sendDatesByMessageIdentifier = v2->_sendDatesByMessageIdentifier;
  v2->_sendDatesByMessageIdentifier = v5;

  return v2;
}

- (id)dataFromUUID:(id)d
{
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)transferDataFromPayload:(id)payload sessionID:(id)d
{
  dCopy = d;
  payloadCopy = payload;
  v8 = objc_opt_new();
  [v8 setVersion:1];
  v9 = [(SDUnlockTransport *)self dataFromUUID:dCopy];

  [v8 setSessionID:v9];
  [v8 setPayload:payloadCopy];

  data = [v8 data];

  return data;
}

- (id)activeDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  autoUnlockService = [(SDUnlockTransport *)self autoUnlockService];
  devices = [autoUnlockService devices];

  v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isActive])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)idsDeviceForUniqueID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  autoUnlockService = [(SDUnlockTransport *)self autoUnlockService];
  devices = [autoUnlockService devices];

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
        v12 = [uniqueIDOverride isEqualToString:dCopy];

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

@end