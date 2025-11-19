@interface NEVPNTunnelPlugin
- (NEVPNTunnelPlugin)initWithAgent:(id)a3 delegateQueue:(id)a4 andDelegate:(id)a5;
- (void)createVirtualInterfaceWithParameters:(id)a3 completionHandler:(id)a4;
- (void)handleIPCDetached;
- (void)handlePluginFailedWithError:(id)a3;
- (void)setStatus:(int)a3 error:(id)a4;
- (void)setTunnelNetworkSettings:(id)a3 completionHandler:(id)a4;
@end

@implementation NEVPNTunnelPlugin

- (void)setTunnelNetworkSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016830;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setStatus:(int)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016A38;
  block[3] = &unk_1000EB360;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)handleIPCDetached
{
  v3 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016B58;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)createVirtualInterfaceWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016C84;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handlePluginFailedWithError:(id)a3
{
  self->_pluginStatus = 0;
  v4 = a3;
  v5 = [(NEPlugin *)self delegate];
  [v5 plugin:self didSetStatus:0 andDisconnectError:v4];
}

- (NEVPNTunnelPlugin)initWithAgent:(id)a3 delegateQueue:(id)a4 andDelegate:(id)a5
{
  v6.receiver = self;
  v6.super_class = NEVPNTunnelPlugin;
  result = [(NEPlugin *)&v6 initWithAgent:a3 delegateQueue:a4 andDelegate:a5];
  if (result)
  {
    result->_pluginStatus = 0;
  }

  return result;
}

@end