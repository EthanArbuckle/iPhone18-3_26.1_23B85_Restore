@interface NEFilterPlugin
- (void)acceptAgentClients;
- (void)applySettings:(id)a3 completionHandler:(id)a4;
- (void)createContentFilterSocketWithCompletionHandler:(id)a3;
- (void)createPacketChannelWithCompletionHandler:(id)a3;
- (void)handlePluginFailedWithError:(id)a3;
- (void)setStatus:(int64_t)a3 error:(id)a4;
@end

@implementation NEFilterPlugin

- (void)applySettings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017150;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)acceptAgentClients
{
  v3 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017274;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setStatus:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017384;
  block[3] = &unk_1000EABA0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)handlePluginFailedWithError:(id)a3
{
  self->_filterStatus = 0;
  v4 = [(NEPlugin *)self delegate];
  [v4 plugin:self didSetStatus:0 andError:1];
}

- (void)createPacketChannelWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017590;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)createContentFilterSocketWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000176B8;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end