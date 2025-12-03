@interface NEVPNTunnelPlugin
- (NEVPNTunnelPlugin)initWithAgent:(id)agent delegateQueue:(id)queue andDelegate:(id)delegate;
- (void)createVirtualInterfaceWithParameters:(id)parameters completionHandler:(id)handler;
- (void)handleIPCDetached;
- (void)handlePluginFailedWithError:(id)error;
- (void)setStatus:(int)status error:(id)error;
- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler;
@end

@implementation NEVPNTunnelPlugin

- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016830;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = settingsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = settingsCopy;
  dispatch_async(delegateQueue, block);
}

- (void)setStatus:(int)status error:(id)error
{
  errorCopy = error;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016A38;
  block[3] = &unk_1000EB360;
  statusCopy = status;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(delegateQueue, block);
}

- (void)handleIPCDetached
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016B58;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)createVirtualInterfaceWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016C84;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = parametersCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = parametersCopy;
  dispatch_async(delegateQueue, block);
}

- (void)handlePluginFailedWithError:(id)error
{
  self->_pluginStatus = 0;
  errorCopy = error;
  delegate = [(NEPlugin *)self delegate];
  [delegate plugin:self didSetStatus:0 andDisconnectError:errorCopy];
}

- (NEVPNTunnelPlugin)initWithAgent:(id)agent delegateQueue:(id)queue andDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = NEVPNTunnelPlugin;
  result = [(NEPlugin *)&v6 initWithAgent:agent delegateQueue:queue andDelegate:delegate];
  if (result)
  {
    result->_pluginStatus = 0;
  }

  return result;
}

@end