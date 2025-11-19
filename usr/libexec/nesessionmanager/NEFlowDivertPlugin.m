@interface NEFlowDivertPlugin
- (void)createFlowDivertControlSocketWithCompletionHandler:(id)a3;
@end

@implementation NEFlowDivertPlugin

- (void)createFlowDivertControlSocketWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016F40;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end