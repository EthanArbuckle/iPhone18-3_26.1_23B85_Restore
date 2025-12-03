@interface MSDIDSHandler
- (MSDIDSHandler)initWithDelegate:(id)delegate;
- (MSDIDSHandlerDelegate)delegate;
- (id)getPairedDevice;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)start;
@end

@implementation MSDIDSHandler

- (MSDIDSHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MSDIDSHandler;
  v6 = [(MSDIDSHandler *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MSDIDSHandler *)v6 setResponseHandlers:v7];

    if (([delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MSDIDSHandlerDelegate] & 1) == 0)
    {
      sub_1000CF68C(a2, v6);
    }

    [(MSDIDSHandler *)v6 setDelegate:delegateCopy];
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

  getPairedDevice = [(MSDIDSHandler *)self getPairedDevice];
  delegate = [(MSDIDSHandler *)self delegate];
  [delegate didUpdateDeviceReachability:{objc_msgSend(getPairedDevice, "isConnected")}];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF80C(identifierCopy, errorCopy);
    }

    responseHandlers = [(MSDIDSHandler *)self responseHandlers];
    v14 = [responseHandlers objectForKey:identifierCopy];

    if (v14)
    {
      v14[2](v14, 0);
      responseHandlers2 = [(MSDIDSHandler *)self responseHandlers];
      [responseHandlers2 removeObjectForKey:identifierCopy];
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  responseHandlers = [(MSDIDSHandler *)self responseHandlers];
  v8 = [responseHandlers objectForKey:identifierCopy];

  if (v8)
  {
    v8[2](v8, 1);
    responseHandlers2 = [(MSDIDSHandler *)self responseHandlers];
    [responseHandlers2 removeObjectForKey:identifierCopy];
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v7 = [(MSDIDSHandler *)self getPairedDevice:service];
  isConnected = [v7 isConnected];
  if (isConnected != [(MSDIDSHandler *)self isDeviceReachable])
  {
    -[MSDIDSHandler setIsDeviceReachable:](self, "setIsDeviceReachable:", [v7 isConnected]);
    delegate = [(MSDIDSHandler *)self delegate];
    [delegate didUpdateDeviceReachability:{-[MSDIDSHandler isDeviceReachable](self, "isDeviceReachable")}];
  }
}

- (id)getPairedDevice
{
  idsService = [(MSDIDSHandler *)self idsService];
  devices = [idsService devices];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = devices;
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