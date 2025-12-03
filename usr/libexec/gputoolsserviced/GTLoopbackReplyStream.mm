@interface GTLoopbackReplyStream
- (GTLoopbackReplyStream)initWithCallback:(id)callback;
- (void)dispatchMessage:(id)message replyConnection:(id)connection;
@end

@implementation GTLoopbackReplyStream

- (GTLoopbackReplyStream)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = GTLoopbackReplyStream;
  v5 = [(GTLoopbackReplyStream *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

- (void)dispatchMessage:(id)message replyConnection:(id)connection
{
  xdict = message;
  connectionCopy = connection;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(xdict, "data");
  (*(self->_callback + 2))();
  if (MessageHasReply(xdict))
  {
    v8 = gt_xpc_dictionary_create_reply(xdict);
    [connectionCopy sendMessage:v8];
  }

  if (xpc_dictionary_get_BOOL(xdict, "_endOfStream"))
  {
    [connectionCopy deregisterDispatcher:self->dispatcherId];
  }
}

@end