@interface RPNWConnection
+ (void)addConnection:(id)connection;
+ (void)initialize;
+ (void)listConnections:(id)connections;
+ (void)removeConnection:(id)connection;
+ (void)stopAllOutgoingConnectionsNotForPeer:(id)peer;
- (RPNWConnection)init;
- (id)description;
- (void)dealloc;
- (void)ensureReadyHasBeenSent;
@end

@implementation RPNWConnection

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:5 capacity:10];
    v5 = qword_1001D6190;
    qword_1001D6190 = v4;
  }
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  connectionUUID = self->_connectionUUID;
  if (self->_inbound)
  {
    v4 = "IN";
  }

  else
  {
    v4 = "OUT";
  }

  [(NSNumber *)self->_version doubleValue];
  v6 = v5;
  applicationService = self->_applicationService;
  if (self->_isConnected)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  destinationDevice = [(RPNWPeer *)self->_peer destinationDevice];
  name = [destinationDevice name];
  token = self->_token;
  endpointUUID = self->_endpointUUID;
  v13 = self->_framer;
  v14 = objc_alloc_init(NSMutableString);
  [v14 appendFormat:@"%p", v13];

  [v3 appendFormat:@"CONN[%@] (%s): version=%.2f appSvc=%@ connected=%s EP={%@:%@} flowToken=%@ framer=%@", connectionUUID, v4, v6, applicationService, v8, name, endpointUUID, token, v14];

  return v3;
}

- (RPNWConnection)init
{
  v5.receiver = self;
  v5.super_class = RPNWConnection;
  v2 = [(RPNWConnection *)&v5 init];
  if (v2)
  {
    [RPNWConnection addConnection:v2];
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [RPNWConnection removeConnection:self];
  endpointUUID = [(RPNWConnection *)self endpointUUID];
  v4 = +[RPNWEndpoint globalEndpointsKey];
  [RPNWEndpoint ageOutEndpointMapping:endpointUUID discoverySessionID:v4];

  v5.receiver = self;
  v5.super_class = RPNWConnection;
  [(RPNWConnection *)&v5 dealloc];
}

- (void)ensureReadyHasBeenSent
{
  if ([(RPNWConnection *)self inbound]&& ![(RPNWConnection *)self hasSignaledReady])
  {
    if (dword_1001D3A88 <= 30 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
    {
      sub_1001182AC(self);
    }

    [(RPNWConnection *)self sendStatusUpdate:5];

    [(RPNWConnection *)self setHasSignaledReady:1];
  }
}

+ (void)addConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy inbound])
  {
    if (dword_1001D3A88 > 30 || dword_1001D3A88 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_11;
    }

    connectionUUID = [connectionCopy connectionUUID];
    v6 = connectionUUID;
    LogPrintF();
LABEL_5:

    goto LABEL_11;
  }

  if (dword_1001D3A88 <= 30 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001182F0(connectionCopy, &v8);
    connectionUUID = v8;
    goto LABEL_5;
  }

LABEL_11:
  v4 = qword_1001D6190;
  connectionUUID2 = [connectionCopy connectionUUID];
  [v4 setObject:connectionCopy forKey:connectionUUID2];
}

+ (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if (dword_1001D3A88 <= 30)
  {
    if (dword_1001D3A88 != -1 || (v4 = _LogCategory_Initialize(), connectionCopy = v7, v4))
    {
      sub_10011837C(connectionCopy);
      connectionCopy = v7;
    }
  }

  v5 = qword_1001D6190;
  connectionUUID = [connectionCopy connectionUUID];
  [v5 removeObjectForKey:connectionUUID];
}

+ (void)stopAllOutgoingConnectionsNotForPeer:(id)peer
{
  peerCopy = peer;
  if (dword_1001D3A88 <= 40 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
  {
    sub_100118404(peerCopy);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = qword_1001D6190;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [qword_1001D6190 objectForKey:{*(*(&v17 + 1) + 8 * v8), v17}];
        v10 = v9;
        if (v9)
        {
          if ([v9 isConnected])
          {
            if (([v10 inbound] & 1) == 0 && (objc_msgSend(v10, "internal") & 1) == 0)
            {
              peer = [v10 peer];
              destinationDevice = [peer destinationDevice];
              v13 = [destinationDevice isEqualToDevice:peerCopy];

              if ((v13 & 1) == 0)
              {
                if (dword_1001D3A88 <= 30 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
                {
                  sub_100118460(v10);
                }

                framer = [v10 framer];
                token = [v10 token];
                [RPNWFramer writeErrorOnFramer:framer token:token error:50];
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v16 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v16;
    }

    while (v16);
  }
}

+ (void)listConnections:(id)connections
{
  connectionsCopy = connections;
  [connectionsCopy appendString:@"Connections\n"];
  if ([qword_1001D6190 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = qword_1001D6190;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [qword_1001D6190 objectForKey:*(*(&v12 + 1) + 8 * v8)];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 description];
            [connectionsCopy appendFormat:@"  %@\n", v11];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [connectionsCopy appendString:@"  <empty>\n"];
  }
}

@end