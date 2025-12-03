@interface NEPlugin
- (NEPlugin)initWithAgent:(id)agent delegateQueue:(id)queue andDelegate:(id)delegate;
- (NEPluginDelegate)delegate;
- (id)remotePluginObject;
- (id)remotePluginObjectWithErrorHandler:(id)handler;
@end

@implementation NEPlugin

- (NEPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)remotePluginObjectWithErrorHandler:(id)handler
{
  pluginDriver = self->_pluginDriver;
  if (pluginDriver)
  {
    v4 = pluginDriver;
  }

  else
  {
    handlerCopy = handler;
    pluginConnection = [(NEPlugin *)self pluginConnection];
    v4 = [pluginConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v4;
}

- (id)remotePluginObject
{
  pluginDriver = self->_pluginDriver;
  if (pluginDriver)
  {
    remoteObjectProxy = pluginDriver;
  }

  else
  {
    pluginConnection = [(NEPlugin *)self pluginConnection];
    remoteObjectProxy = [pluginConnection remoteObjectProxy];
  }

  return remoteObjectProxy;
}

- (NEPlugin)initWithAgent:(id)agent delegateQueue:(id)queue andDelegate:(id)delegate
{
  agentCopy = agent;
  queueCopy = queue;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = NEPlugin;
  v12 = [(NEPlugin *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_agent, agent);
    objc_storeStrong(&v13->_delegateQueue, queue);
    agent = v13->_agent;
    if (agent)
    {
      objc_setProperty_atomic(agent, v14, v13->_delegateQueue, 32);
    }

    objc_storeWeak(&v13->_delegate, delegateCopy);
    v16 = [NSString alloc];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    agentCopy = [v16 initWithFormat:@"%@(%@)", v18, agentCopy];
    internalDescription = v13->_internalDescription;
    v13->_internalDescription = agentCopy;

    v13->_started = 0;
  }

  return v13;
}

@end