@interface WCM_ExternalAccessoryIOS
- (WCM_ExternalAccessoryIOS)init;
- (void)_accessoryConnected:(id)connected;
- (void)_accessoryDisconnected:(id)disconnected;
- (void)accessoryReconnect;
- (void)dealloc;
@end

@implementation WCM_ExternalAccessoryIOS

- (WCM_ExternalAccessoryIOS)init
{
  v4.receiver = self;
  v4.super_class = WCM_ExternalAccessoryIOS;
  v2 = [(WCM_ExternalAccessory *)&v4 init];
  if (v2)
  {
    *(v2 + 12) = [[NSMutableArray alloc] initWithArray:{-[EAAccessoryManager connectedAccessories](+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager, "sharedAccessoryManager"), "connectedAccessories")}];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_accessoryConnected:" object:EAAccessoryDidConnectNotification, 0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_accessoryDisconnected:" object:EAAccessoryDidDisconnectNotification, 0];
    [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager registerForLocalNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:EAAccessoryDidConnectNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:EAAccessoryDidDisconnectNotification, 0];
  [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager unregisterForLocalNotifications];

  v3.receiver = self;
  v3.super_class = WCM_ExternalAccessoryIOS;
  [(WCM_ExternalAccessory *)&v3 dealloc];
}

- (void)_accessoryConnected:(id)connected
{
  [WCM_Logging logLevel:2 message:@"External AccessoryConnected"];
  v5 = [objc_msgSend(connected "userInfo")];
  [*(&self->super._eaConnection + 1) addObject:v5];
  name = [v5 name];
  manufacturer = [v5 manufacturer];
  modelNumber = [v5 modelNumber];
  v9 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:accessory connected [%@] [%@] [%@]", name, manufacturer, modelNumber];
  if (![manufacturer isEqualToString:@"Medtronic"])
  {
    goto LABEL_12;
  }

  if ([modelNumber isEqualToString:@"Model 24970A"])
  {
    if ([name length] >= 0x15)
    {
      if ([objc_msgSend(name substringToIndex:{16), "isEqualToString:", objc_msgSend(@"Model 24970A SPMxxxxxxA", "substringToIndex:", 16)}])
      {
        [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:Medtronic Base connected"];
        ++dword_1002B81DC;
        if (!v9)
        {
          byte_1002B81E0 = 1;
        }
      }
    }
  }

  if ([modelNumber isEqualToString:@"Model 24967"] && objc_msgSend(name, "length") >= 0x15 && objc_msgSend(objc_msgSend(name, "substringToIndex:", 15), "isEqualToString:", objc_msgSend(@"Model 24967 RFAxxxxxxA", "substringToIndex:", 15)))
  {
    [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:Medtronic Tele connected"];
    v10 = ++dword_1002B81DC;
    if (!v9)
    {
      byte_1002B81E0 = 1;
    }
  }

  else
  {
LABEL_12:
    v10 = dword_1002B81DC;
  }

  if (v10 == 1)
  {
    [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:Send Medtrionic Connected btc"];
    [(WCM_ExternalAccessory *)self setEaConnection:0];
    v11 = +[WCM_PolicyManager singleton];

    [v11 updateControllerState:1200];
  }
}

- (void)_accessoryDisconnected:(id)disconnected
{
  [WCM_Logging logLevel:2 message:@"External AccessoryDisConnected"];
  v5 = [objc_msgSend(disconnected "userInfo")];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v20 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v7 = *(&self->super._eaConnection + 1);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      v10 += v9;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v21 + 1) + 8 * v12);
        connectionID = [v14 connectionID];
        if (connectionID == [v5 connectionID])
        {
          name = [v14 name];
          manufacturer = [v14 manufacturer];
          modelNumber = [v14 modelNumber];
          [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:accessory disconnected [%@] [%@] [%@]", name, manufacturer, modelNumber];
          if ([manufacturer isEqualToString:@"Medtronic"])
          {
            if ([modelNumber isEqualToString:@"Model 24970A"] && objc_msgSend(name, "length") >= 0x15 && objc_msgSend(objc_msgSend(name, "substringToIndex:", 16), "isEqualToString:", objc_msgSend(@"Model 24970A SPMxxxxxxA", "substringToIndex:", 16)) && (+[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"WCM_ExternalAccessory:Medtronic Base Disconnected"), dword_1002B81DC >= 1))
            {
              --dword_1002B81DC;
              v19 = 1;
              if (!v20)
              {
                byte_1002B81E0 = 1;
              }
            }

            else
            {
              v19 = 0;
            }

            if ([modelNumber isEqualToString:@"Model 24967"])
            {
              if ([name length] >= 0x15)
              {
                if ([objc_msgSend(name substringToIndex:{15), "isEqualToString:", objc_msgSend(@"Model 24967 RFAxxxxxxA", "substringToIndex:", 15)}])
                {
                  [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:Medtronic Tele Disconnected"];
                  if (dword_1002B81DC >= 1)
                  {
                    --dword_1002B81DC;
                    v19 = 1;
                    if (!v20)
                    {
                      byte_1002B81E0 = 1;
                    }
                  }
                }
              }
            }

            if (v19)
            {
              if (!dword_1002B81DC)
              {
                [(WCM_ExternalAccessory *)selfCopy setEaConnection:1];
                [WCM_Logging logLevel:2 message:@"WCM_ExternalAccessory:Send Medtronic Disconnected btc"];
                [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
              }
            }
          }

          [*(&selfCopy->super._eaConnection + 1) removeObjectAtIndex:v13];
          return;
        }

        ++v13;
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }
}

- (void)accessoryReconnect
{
  if (byte_1002B81E0 == 1)
  {
    v3 = dword_1002B81DC < 1;
    if (dword_1002B81DC >= 1)
    {
      v4 = @"WCM_ExternalAccessory: Medtronic reset btc_param c due to WiFi was off";
    }

    else
    {
      v4 = @"WCM_ExternalAccessory: Medtronic reset btc_param d due to WiFi was off";
    }

    [WCM_Logging logLevel:2 message:v4];
    [(WCM_ExternalAccessory *)self setEaConnection:v3];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  byte_1002B81E0 = 0;
}

@end