@interface RPNWNearbyInvitationConnection
+ (void)addConnection:(id)connection;
+ (void)initialize;
+ (void)listConnections:(id)connections;
+ (void)removeConnection:(id)connection;
- (RPNWNearbyInvitationConnection)init;
- (id)description;
- (void)dealloc;
@end

@implementation RPNWNearbyInvitationConnection

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:5 capacity:10];
    v5 = qword_1001D6348;
    qword_1001D6348 = v4;
  }
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  endpointUUID = self->_endpointUUID;
  connectionUUID = self->_connectionUUID;
  if (self->_inbound)
  {
    v6 = "IN";
  }

  else
  {
    v6 = "OUT";
  }

  if (self->_isConnected)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  peer = self->_peer;
  applicationService = self->_applicationService;
  v10 = self->_framer;
  v11 = objc_alloc_init(NSMutableString);
  [v11 appendFormat:@"%p", v10];

  [v3 appendFormat:@"CONN[%@] (%s): appSvc=%@ connected=%s EP={%@:%@} framer=%@", connectionUUID, v6, applicationService, v7, peer, endpointUUID, v11];

  return v3;
}

- (RPNWNearbyInvitationConnection)init
{
  v5.receiver = self;
  v5.super_class = RPNWNearbyInvitationConnection;
  v2 = [(RPNWNearbyInvitationConnection *)&v5 init];
  if (v2)
  {
    [RPNWNearbyInvitationConnection addConnection:v2];
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [RPNWNearbyInvitationConnection removeConnection:self];
  v3.receiver = self;
  v3.super_class = RPNWNearbyInvitationConnection;
  [(RPNWNearbyInvitationConnection *)&v3 dealloc];
}

+ (void)addConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if (dword_1001D4248 <= 30)
  {
    if (dword_1001D4248 != -1 || (v4 = _LogCategory_Initialize(), connectionCopy = v7, v4))
    {
      sub_10011DF38(connectionCopy);
      connectionCopy = v7;
    }
  }

  v5 = qword_1001D6348;
  connectionUUID = [connectionCopy connectionUUID];
  [v5 setObject:v7 forKey:connectionUUID];
}

+ (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if (dword_1001D4248 <= 30)
  {
    if (dword_1001D4248 != -1 || (v4 = _LogCategory_Initialize(), connectionCopy = v7, v4))
    {
      sub_10011DF94(connectionCopy);
      connectionCopy = v7;
    }
  }

  v5 = qword_1001D6348;
  connectionUUID = [connectionCopy connectionUUID];
  [v5 removeObjectForKey:connectionUUID];
}

+ (void)listConnections:(id)connections
{
  connectionsCopy = connections;
  [connectionsCopy appendString:@"Connections\n"];
  if ([qword_1001D6348 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = qword_1001D6348;
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

          v9 = [qword_1001D6348 objectForKey:*(*(&v12 + 1) + 8 * v8)];
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