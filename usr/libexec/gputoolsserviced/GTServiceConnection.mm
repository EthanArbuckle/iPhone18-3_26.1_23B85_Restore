@interface GTServiceConnection
- (GTServiceConnection)initWithConnection:(id)a3 device:(id)a4 port:(unint64_t)a5;
- (id)sendMessageWithReplySync:(id)a3 error:(id *)a4;
- (id)sendMessageWithReplySync:(id)a3 replyStreamId:(unint64_t)a4 error:(id *)a5;
- (void)_setRoutingPropertiesForMessage:(id)a3;
- (void)_setRoutingPropertiesForMessage:(id)a3 withReplyStreamId:(unint64_t)a4;
- (void)sendMessage:(id)a3;
- (void)sendMessage:(id)a3 replyHandler:(id)a4;
- (void)sendMessage:(id)a3 withReplyStreamId:(unint64_t)a4;
- (void)sendMessage:(id)a3 withReplyStreamId:(unint64_t)a4 replyHandler:(id)a5;
- (void)sendMessageAndWaitForDelivery:(id)a3;
@end

@implementation GTServiceConnection

- (GTServiceConnection)initWithConnection:(id)a3 device:(id)a4 port:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = GTServiceConnection;
  v11 = [(GTServiceConnection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, a3);
    objc_storeStrong(&v12->_deviceUDID, a4);
    v12->_servicePort = a5;
  }

  return v12;
}

- (void)_setRoutingPropertiesForMessage:(id)a3
{
  xdict = a3;
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

- (void)_setRoutingPropertiesForMessage:(id)a3 withReplyStreamId:(unint64_t)a4
{
  xdict = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:xdict];
  xpc_dictionary_set_uint64(xdict, "_replyStreamId", a4);
  xpc_dictionary_set_flag(xdict, "_flags", 2);
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v4];
  [(GTXPCConnection *)self->_connection sendMessage:v4];
}

- (void)sendMessage:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v7];
  MessageSetHasReply(v7);
  [(GTXPCConnection *)self->_connection sendMessage:v7 replyHandler:v6];
}

- (id)sendMessageWithReplySync:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v6];
  MessageSetHasReply(v6);
  v7 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:v6 error:a4];

  return v7;
}

- (void)sendMessageAndWaitForDelivery:(id)a3
{
  v4 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v4];
  [(GTXPCConnection *)self->_connection sendMessageAndWaitForDelivery:v4];
}

- (void)sendMessage:(id)a3 withReplyStreamId:(unint64_t)a4
{
  v6 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v6 withReplyStreamId:a4];
  [(GTXPCConnection *)self->_connection sendMessage:v6];
}

- (void)sendMessage:(id)a3 withReplyStreamId:(unint64_t)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v9 withReplyStreamId:a4];
  MessageSetHasReply(v9);
  [(GTServiceConnection *)self sendMessage:v9 replyHandler:v8];
}

- (id)sendMessageWithReplySync:(id)a3 replyStreamId:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  [(GTServiceConnection *)self _setRoutingPropertiesForMessage:v8 withReplyStreamId:a4];
  MessageSetHasReply(v8);
  v9 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:v8 error:a5];

  return v9;
}

@end