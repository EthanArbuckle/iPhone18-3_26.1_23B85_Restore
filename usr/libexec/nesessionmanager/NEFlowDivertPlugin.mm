@interface NEFlowDivertPlugin
- (void)createFlowDivertControlSocketWithCompletionHandler:(id)handler;
@end

@implementation NEFlowDivertPlugin

- (void)createFlowDivertControlSocketWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016F40;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(delegateQueue, v7);
}

@end