@interface RPNWConnection
+ (void)addConnection:(id)a3;
+ (void)initialize;
+ (void)listConnections:(id)a3;
+ (void)removeConnection:(id)a3;
+ (void)stopAllOutgoingConnectionsNotForPeer:(id)a3;
- (RPNWConnection)init;
- (id)description;
- (void)dealloc;
- (void)ensureReadyHasBeenSent;
@end

@implementation RPNWConnection

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
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

  v9 = [(RPNWPeer *)self->_peer destinationDevice];
  v10 = [v9 name];
  token = self->_token;
  endpointUUID = self->_endpointUUID;
  v13 = self->_framer;
  v14 = objc_alloc_init(NSMutableString);
  [v14 appendFormat:@"%p", v13];

  [v3 appendFormat:@"CONN[%@] (%s): version=%.2f appSvc=%@ connected=%s EP={%@:%@} flowToken=%@ framer=%@", connectionUUID, v4, v6, applicationService, v8, v10, endpointUUID, token, v14];

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
  v3 = [(RPNWConnection *)self endpointUUID];
  v4 = +[RPNWEndpoint globalEndpointsKey];
  [RPNWEndpoint ageOutEndpointMapping:v3 discoverySessionID:v4];

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

+ (void)addConnection:(id)a3
{
  v7 = a3;
  if ([v7 inbound])
  {
    if (dword_1001D3A88 > 30 || dword_1001D3A88 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_11;
    }

    v3 = [v7 connectionUUID];
    v6 = v3;
    LogPrintF();
LABEL_5:

    goto LABEL_11;
  }

  if (dword_1001D3A88 <= 30 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001182F0(v7, &v8);
    v3 = v8;
    goto LABEL_5;
  }

LABEL_11:
  v4 = qword_1001D6190;
  v5 = [v7 connectionUUID];
  [v4 setObject:v7 forKey:v5];
}

+ (void)removeConnection:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (dword_1001D3A88 <= 30)
  {
    if (dword_1001D3A88 != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      sub_10011837C(v3);
      v3 = v7;
    }
  }

  v5 = qword_1001D6190;
  v6 = [v3 connectionUUID];
  [v5 removeObjectForKey:v6];
}

+ (void)stopAllOutgoingConnectionsNotForPeer:(id)a3
{
  v3 = a3;
  if (dword_1001D3A88 <= 40 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
  {
    sub_100118404(v3);
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
              v11 = [v10 peer];
              v12 = [v11 destinationDevice];
              v13 = [v12 isEqualToDevice:v3];

              if ((v13 & 1) == 0)
              {
                if (dword_1001D3A88 <= 30 && (dword_1001D3A88 != -1 || _LogCategory_Initialize()))
                {
                  sub_100118460(v10);
                }

                v14 = [v10 framer];
                v15 = [v10 token];
                [RPNWFramer writeErrorOnFramer:v14 token:v15 error:50];
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

+ (void)listConnections:(id)a3
{
  v3 = a3;
  [v3 appendString:@"Connections\n"];
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
            [v3 appendFormat:@"  %@\n", v11];
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
    [v3 appendString:@"  <empty>\n"];
  }
}

@end