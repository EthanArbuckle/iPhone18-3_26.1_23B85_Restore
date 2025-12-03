@interface SKFSTaskPair
- (SKFSTaskPair)initWithMessageHandler:(id)handler;
@end

@implementation SKFSTaskPair

- (SKFSTaskPair)initWithMessageHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = SKFSTaskPair;
  v6 = [(SKFSTaskPair *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_msgHandler, handler);
    v8 = [FSMessageReceiver receiverWithDelegate:handlerCopy];
    receiver = v7->_receiver;
    v7->_receiver = v8;
  }

  return v7;
}

@end