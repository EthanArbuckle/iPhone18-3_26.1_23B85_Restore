@interface GTRelayedXPCConnection
- (GTRelayedXPCConnection)initWithConnection:(id)a3 routingInfo:(MessageRemoteRoutingInfo *)a4;
- (id)sendMessageWithReplySync:(id)a3 error:(id *)a4;
- (void)_setRoutingPropertiesForMessage:(id)a3;
- (void)sendMessage:(id)a3;
- (void)sendMessage:(id)a3 replyHandler:(id)a4;
- (void)sendMessageAndWaitForDelivery:(id)a3;
@end

@implementation GTRelayedXPCConnection

- (GTRelayedXPCConnection)initWithConnection:(id)a3 routingInfo:(MessageRemoteRoutingInfo *)a4
{
  v7 = a3;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = GTRelayedXPCConnection;
    v8 = [(GTRelayedXPCConnection *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_connection, a3);
      v10 = *&a4->remotePid;
      *&v9->_routingInfo.hostPort = *&a4->hostPort;
      *&v9->_routingInfo.remotePid = v10;
      v9->_handleDeviceLocally = 0;
    }

    self = v9;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setRoutingPropertiesForMessage:(id)a3
{
  v4 = a3;
  MessageRemoteRoutingInfoSet(v4, &self->_routingInfo);
  if (self->_handleDeviceLocally)
  {
    xpc_dictionary_set_flag(v4, "_flags", 4);
  }
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:v4];
  [(GTXPCConnection *)self->_connection sendMessage:v4];
}

- (void)sendMessage:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:v7];
  [(GTXPCConnection *)self->_connection sendMessage:v7 replyHandler:v6];
}

- (void)sendMessageAndWaitForDelivery:(id)a3
{
  v4 = a3;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:v4];
  [(GTXPCConnection *)self->_connection sendMessageAndWaitForDelivery:v4];
}

- (id)sendMessageWithReplySync:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:v6];
  v7 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:v6 error:a4];

  return v7;
}

@end