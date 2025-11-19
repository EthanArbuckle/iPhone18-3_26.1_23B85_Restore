@interface NEPlugin
- (NEPlugin)initWithAgent:(id)a3 delegateQueue:(id)a4 andDelegate:(id)a5;
- (NEPluginDelegate)delegate;
- (id)remotePluginObject;
- (id)remotePluginObjectWithErrorHandler:(id)a3;
@end

@implementation NEPlugin

- (NEPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)remotePluginObjectWithErrorHandler:(id)a3
{
  pluginDriver = self->_pluginDriver;
  if (pluginDriver)
  {
    v4 = pluginDriver;
  }

  else
  {
    v6 = a3;
    v7 = [(NEPlugin *)self pluginConnection];
    v4 = [v7 remoteObjectProxyWithErrorHandler:v6];
  }

  return v4;
}

- (id)remotePluginObject
{
  pluginDriver = self->_pluginDriver;
  if (pluginDriver)
  {
    v3 = pluginDriver;
  }

  else
  {
    v4 = [(NEPlugin *)self pluginConnection];
    v3 = [v4 remoteObjectProxy];
  }

  return v3;
}

- (NEPlugin)initWithAgent:(id)a3 delegateQueue:(id)a4 andDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = NEPlugin;
  v12 = [(NEPlugin *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_agent, a3);
    objc_storeStrong(&v13->_delegateQueue, a4);
    agent = v13->_agent;
    if (agent)
    {
      objc_setProperty_atomic(agent, v14, v13->_delegateQueue, 32);
    }

    objc_storeWeak(&v13->_delegate, v11);
    v16 = [NSString alloc];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 initWithFormat:@"%@(%@)", v18, v9];
    internalDescription = v13->_internalDescription;
    v13->_internalDescription = v19;

    v13->_started = 0;
  }

  return v13;
}

@end