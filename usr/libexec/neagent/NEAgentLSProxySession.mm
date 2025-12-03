@interface NEAgentLSProxySession
- (void)fetchLSBundleProxyForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchLSPluginBundleProxyWithIdentifier:(id)identifier type:(id)type pluginClass:(int64_t)class extensionPoint:(id)point completionHandler:(id)handler;
@end

@implementation NEAgentLSProxySession

- (void)fetchLSPluginBundleProxyWithIdentifier:(id)identifier type:(id)type pluginClass:(int64_t)class extensionPoint:(id)point completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = [NELaunchServices pluginProxyWithIdentifier:identifier type:type pluginClass:class extensionPoint:point];
  if (v11)
  {
    v12 = [NEBundleProxy alloc];
    bundleIdentifier = [v11 bundleIdentifier];
    bundleURL = [v11 bundleURL];
    machOUUIDs = [v11 machOUUIDs];
    v16 = [v12 initWithIdentifier:bundleIdentifier url:bundleURL machOUUIDs:machOUUIDs name:0 appGroups:0];

    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)fetchLSBundleProxyForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v8 = 0;
  handlerCopy = handler;
  v6 = [NELaunchServices lookupIdentifier:identifier plugins:&v8];
  v7 = v8;
  handlerCopy[2](handlerCopy, v6, v7);
}

@end