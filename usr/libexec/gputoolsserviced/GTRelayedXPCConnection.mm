@interface GTRelayedXPCConnection
- (GTRelayedXPCConnection)initWithConnection:(id)connection routingInfo:(MessageRemoteRoutingInfo *)info;
- (id)sendMessageWithReplySync:(id)sync error:(id *)error;
- (void)_setRoutingPropertiesForMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message replyHandler:(id)handler;
- (void)sendMessageAndWaitForDelivery:(id)delivery;
@end

@implementation GTRelayedXPCConnection

- (GTRelayedXPCConnection)initWithConnection:(id)connection routingInfo:(MessageRemoteRoutingInfo *)info
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v13.receiver = self;
    v13.super_class = GTRelayedXPCConnection;
    v8 = [(GTRelayedXPCConnection *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_connection, connection);
      v10 = *&info->remotePid;
      *&v9->_routingInfo.hostPort = *&info->hostPort;
      *&v9->_routingInfo.remotePid = v10;
      v9->_handleDeviceLocally = 0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_setRoutingPropertiesForMessage:(id)message
{
  messageCopy = message;
  MessageRemoteRoutingInfoSet(messageCopy, &self->_routingInfo);
  if (self->_handleDeviceLocally)
  {
    xpc_dictionary_set_flag(messageCopy, "_flags", 4);
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:messageCopy];
  [(GTXPCConnection *)self->_connection sendMessage:messageCopy];
}

- (void)sendMessage:(id)message replyHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:messageCopy];
  [(GTXPCConnection *)self->_connection sendMessage:messageCopy replyHandler:handlerCopy];
}

- (void)sendMessageAndWaitForDelivery:(id)delivery
{
  deliveryCopy = delivery;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:deliveryCopy];
  [(GTXPCConnection *)self->_connection sendMessageAndWaitForDelivery:deliveryCopy];
}

- (id)sendMessageWithReplySync:(id)sync error:(id *)error
{
  syncCopy = sync;
  [(GTRelayedXPCConnection *)self _setRoutingPropertiesForMessage:syncCopy];
  v7 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:syncCopy error:error];

  return v7;
}

@end