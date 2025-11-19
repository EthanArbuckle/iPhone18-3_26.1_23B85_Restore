@interface MSDIDSHandler
- (MSDIDSHandler)initWithDelegate:(id)a3;
- (MSDIDSHandlerDelegate)delegate;
- (id)getPairedDevice;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)start;
@end

@implementation MSDIDSHandler

- (MSDIDSHandler)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSDIDSHandler;
  v6 = [(MSDIDSHandler *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MSDIDSHandler *)v6 setResponseHandlers:v7];

    if (([v5 conformsToProtocol:&OBJC_PROTOCOL___MSDIDSHandlerDelegate] & 1) == 0)
    {
      sub_1000CF68C(a2, v6);
    }

    [(MSDIDSHandler *)v6 setDelegate:v5];
    [(MSDIDSHandler *)v6 setIsDeviceReachable:1];
  }

  return v6;
}

- (void)start
{
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.mobilestoredemo"];
  [(MSDIDSHandler *)self setIdsService:v3];

  v4 = dispatch_queue_create("com.apple.msdidsservicequeue", 0);
  [(MSDIDSHandler *)self setIdsServiceQueue:v4];

  v6 = [(MSDIDSHandler *)self getPairedDevice];
  v5 = [(MSDIDSHandler *)self delegate];
  [v5 didUpdateDeviceReachability:{objc_msgSend(v6, "isConnected")}];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  if (!a6)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF80C(v10, v11);
    }

    v13 = [(MSDIDSHandler *)self responseHandlers];
    v14 = [v13 objectForKey:v10];

    if (v14)
    {
      v14[2](v14, 0);
      v15 = [(MSDIDSHandler *)self responseHandlers];
      [v15 removeObjectForKey:v10];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v10 = a5;
  v7 = [(MSDIDSHandler *)self responseHandlers];
  v8 = [v7 objectForKey:v10];

  if (v8)
  {
    v8[2](v8, 1);
    v9 = [(MSDIDSHandler *)self responseHandlers];
    [v9 removeObjectForKey:v10];
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v7 = [(MSDIDSHandler *)self getPairedDevice:a3];
  v5 = [v7 isConnected];
  if (v5 != [(MSDIDSHandler *)self isDeviceReachable])
  {
    -[MSDIDSHandler setIsDeviceReachable:](self, "setIsDeviceReachable:", [v7 isConnected]);
    v6 = [(MSDIDSHandler *)self delegate];
    [v6 didUpdateDeviceReachability:{-[MSDIDSHandler isDeviceReachable](self, "isDeviceReachable")}];
  }
}

- (id)getPairedDevice
{
  v2 = [(MSDIDSHandler *)self idsService];
  v3 = [v2 devices];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (MSDIDSHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end