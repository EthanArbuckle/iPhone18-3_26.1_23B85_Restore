@interface NEFilterPlugin
- (void)acceptAgentClients;
- (void)applySettings:(id)settings completionHandler:(id)handler;
- (void)createContentFilterSocketWithCompletionHandler:(id)handler;
- (void)createPacketChannelWithCompletionHandler:(id)handler;
- (void)handlePluginFailedWithError:(id)error;
- (void)setStatus:(int64_t)status error:(id)error;
@end

@implementation NEFilterPlugin

- (void)applySettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017150;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = settingsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = settingsCopy;
  dispatch_async(delegateQueue, block);
}

- (void)acceptAgentClients
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017274;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)setStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017384;
  block[3] = &unk_1000EABA0;
  v10 = errorCopy;
  statusCopy = status;
  block[4] = self;
  v8 = errorCopy;
  dispatch_async(delegateQueue, block);
}

- (void)handlePluginFailedWithError:(id)error
{
  self->_filterStatus = 0;
  delegate = [(NEPlugin *)self delegate];
  [delegate plugin:self didSetStatus:0 andError:1];
}

- (void)createPacketChannelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017590;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)createContentFilterSocketWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000176B8;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(delegateQueue, v7);
}

@end