@interface GTServiceConnection
- (GTServiceConnection)initWithConnection:(id)connection device:(id)device port:(unint64_t)port;
- (id)sendMessageWithReplySync:(id)sync error:(id *)error;
- (id)sendMessageWithReplySync:(id)sync replyStreamId:(unint64_t)id error:(id *)error;
- (void)_setRoutingPropertiesForMessage:(id)message;
- (void)_setRoutingPropertiesForMessage:(id)message withReplyStreamId:(unint64_t)id;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message replyHandler:(id)handler;
- (void)sendMessage:(id)message withReplyStreamId:(unint64_t)id;
- (void)sendMessage:(id)message withReplyStreamId:(unint64_t)id replyHandler:(id)handler;
- (void)sendMessageAndWaitForDelivery:(id)delivery;
@end

@implementation GTServiceConnection

- (GTServiceConnection)initWithConnection:(id)connection device:(id)device port:(unint64_t)port
{
  connectionCopy = connection;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = GTServiceConnection;
  v11 = [(GTServiceConnection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, connection);
    objc_storeStrong(&v12->_deviceUDID, device);
    v12->_servicePort = port;
  }

  return v12;
}

- (void)_setRoutingPropertiesForMessage:(id)message
{
  xdict = message;
  deviceUDID = self->_deviceUDID;
  if (deviceUDID)
  {
    xpc_dictionary_set_string(xdict, "_device_dest", [(NSString *)deviceUDID UTF8String]);
  }

  servicePort = self->_servicePort;
  if (servicePort)
  {
    xpc_dictionary_set_uint64(xdict, "_port", servicePort);
  }
}

- (void)_setRoutingPropertiesForMessage:(id)message withReplyStreamId:(unint64_t)id
{
  xdict = message;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:xdict];
  xpc_dictionary_set_uint64(xdict, "_replyStreamId", id);
  xpc_dictionary_set_flag(xdict, "_flags", 2);
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:messageCopy];
  [(GTXPCConnection *)self->_connection sendMessage:messageCopy];
}

- (void)sendMessage:(id)message replyHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:messageCopy];
  MessageSetHasReply(messageCopy);
  [(GTXPCConnection *)self->_connection sendMessage:messageCopy replyHandler:handlerCopy];
}

- (id)sendMessageWithReplySync:(id)sync error:(id *)error
{
  syncCopy = sync;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:syncCopy];
  MessageSetHasReply(syncCopy);
  v7 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:syncCopy error:error];

  return v7;
}

- (void)sendMessageAndWaitForDelivery:(id)delivery
{
  deliveryCopy = delivery;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:deliveryCopy];
  [(GTXPCConnection *)self->_connection sendMessageAndWaitForDelivery:deliveryCopy];
}

- (void)sendMessage:(id)message withReplyStreamId:(unint64_t)id
{
  messageCopy = message;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:messageCopy withReplyStreamId:id];
  [(GTXPCConnection *)self->_connection sendMessage:messageCopy];
}

- (void)sendMessage:(id)message withReplyStreamId:(unint64_t)id replyHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:messageCopy withReplyStreamId:id];
  MessageSetHasReply(messageCopy);
  [(GTServiceConnection *)self sendMessage:messageCopy replyHandler:handlerCopy];
}

- (id)sendMessageWithReplySync:(id)sync replyStreamId:(unint64_t)id error:(id *)error
{
  syncCopy = sync;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:syncCopy withReplyStreamId:id];
  MessageSetHasReply(syncCopy);
  v9 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:syncCopy error:error];

  return v9;
}

@end