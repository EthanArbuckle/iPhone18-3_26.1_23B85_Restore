@interface SKFSTaskPair
- (SKFSTaskPair)initWithMessageHandler:(id)a3;
@end

@implementation SKFSTaskPair

- (SKFSTaskPair)initWithMessageHandler:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SKFSTaskPair;
  v6 = [(SKFSTaskPair *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_msgHandler, a3);
    v8 = [FSMessageReceiver receiverWithDelegate:v5];
    receiver = v7->_receiver;
    v7->_receiver = v8;
  }

  return v7;
}

@end