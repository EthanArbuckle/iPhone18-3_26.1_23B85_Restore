@interface GTLocalXPCConnection
- (GTLocalXPCConnection)initWithTransactionScopedXPCConnection:(id)connection messageQueue:(id)queue;
- (GTLocalXPCConnection)initWithXPCConnection:(id)connection messageQueue:(id)queue;
- (id)sendMessageWithReplySync:(id)sync;
- (id)sendMessageWithReplySync:(id)sync error:(id *)error;
- (unint64_t)registerDispatcher:(id)dispatcher;
- (void)activateWithMessageHandler:(id)handler andErrorHandler:(id)errorHandler;
- (void)cancel;
- (void)deregisterDispatcher:(unint64_t)dispatcher;
- (void)dispatchMessage:(id)message replyConnection:(id)connection;
- (void)registerDispatcher:(id)dispatcher forPort:(unint64_t)port;
- (void)sendMessage:(id)message replyHandler:(id)handler;
- (void)sendMessageAndWaitForDelivery:(id)delivery;
@end

@implementation GTLocalXPCConnection

- (GTLocalXPCConnection)initWithXPCConnection:(id)connection messageQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = GTLocalXPCConnection;
  v9 = [(GTLocalXPCConnection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = objc_alloc_init(NSMutableDictionary);
    dispatchers = v10->_dispatchers;
    v10->_dispatchers = v11;

    objc_storeStrong(&v10->_messageQueue, queue);
  }

  return v10;
}

- (GTLocalXPCConnection)initWithTransactionScopedXPCConnection:(id)connection messageQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = GTLocalXPCConnection;
  v9 = [(GTLocalXPCConnection *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = objc_alloc_init(NSMutableDictionary);
    dispatchers = v10->_dispatchers;
    v10->_dispatchers = v11;

    objc_storeStrong(&v10->_messageQueue, queue);
    v13 = os_transaction_create();
    transaction = v10->_transaction;
    v10->_transaction = v13;
  }

  return v10;
}

- (void)registerDispatcher:(id)dispatcher forPort:(unint64_t)port
{
  dispatcherCopy = dispatcher;
  messageQueue = self->_messageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006C00;
  block[3] = &unk_100040A10;
  v10 = dispatcherCopy;
  portCopy = port;
  block[4] = self;
  v8 = dispatcherCopy;
  dispatch_async(messageQueue, block);
}

- (unint64_t)registerDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  add = atomic_fetch_add(&qword_100051638, 1uLL);
  messageQueue = self->_messageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006D38;
  block[3] = &unk_100040A10;
  v10 = dispatcherCopy;
  v11 = add;
  block[4] = self;
  v7 = dispatcherCopy;
  dispatch_async(messageQueue, block);

  return add;
}

- (void)deregisterDispatcher:(unint64_t)dispatcher
{
  messageQueue = self->_messageQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006E2C;
  v4[3] = &unk_100040A38;
  v4[4] = self;
  v4[5] = dispatcher;
  dispatch_async(messageQueue, v4);
}

- (void)dispatchMessage:(id)message replyConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  messageQueue = self->_messageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006F6C;
  block[3] = &unk_100040A60;
  v12 = messageCopy;
  selfCopy = self;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = messageCopy;
  dispatch_async(messageQueue, block);
}

- (void)sendMessage:(id)message replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(0, 0);
  connection = self->_connection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100007230;
  handler[3] = &unk_100040A88;
  v11 = handlerCopy;
  v9 = handlerCopy;
  xpc_connection_send_message_with_reply(connection, message, v7, handler);
}

- (id)sendMessageWithReplySync:(id)sync
{
  v3 = xpc_connection_send_message_with_reply_sync(self->_connection, sync);

  return v3;
}

- (id)sendMessageWithReplySync:(id)sync error:(id *)error
{
  v5 = [(GTLocalXPCConnection *)self sendMessageWithReplySync:sync];
  if (MessageIsValid(v5, error))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sendMessageAndWaitForDelivery:(id)delivery
{
  [(GTLocalXPCConnection *)self sendMessage:delivery];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  connection = self->_connection;
  barrier[0] = _NSConcreteStackBlock;
  barrier[1] = 3221225472;
  barrier[2] = sub_100007400;
  barrier[3] = &unk_100040AB0;
  v9 = v4;
  v6 = v4;
  xpc_connection_send_barrier(connection, barrier);
  v7 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v6, v7);
}

- (void)activateWithMessageHandler:(id)handler andErrorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007504;
  v11[3] = &unk_100040B00;
  objc_copyWeak(&v14, &location);
  v12 = errorHandlerCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = errorHandlerCopy;
  xpc_connection_set_event_handler(connection, v11);
  xpc_connection_activate(self->_connection);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  xpc_connection_cancel(self->_connection);
  messageQueue = self->_messageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000076E4;
  block[3] = &unk_100040AB0;
  block[4] = self;
  dispatch_async(messageQueue, block);
}

@end