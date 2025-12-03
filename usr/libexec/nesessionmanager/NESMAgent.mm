@interface NESMAgent
- (NESMAgent)initWithPluginType:(id)type pluginVersion:(int64_t)version pluginClass:(int64_t)class pluginInfo:(id)info userID:(id)d;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation NESMAgent

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_10000DA38();
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100007090;
  v15 = &unk_1000E96B0;
  selfCopy = self;
  v17 = handlerCopy;
  v6 = handlerCopy;
  selfCopy2 = self;
  v8 = &v12;
  if (v5)
  {
    if (selfCopy2)
    {
      pluginClass = selfCopy2->super._pluginClass;
    }

    else
    {
      pluginClass = 0;
    }

    v10 = [NELaunchServices pluginClassToExtensionPoint:pluginClass, v12, v13];
    if (v10)
    {
      v11 = v5[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EA84;
      block[3] = &unk_1000E97E8;
      block[4] = v5;
      v19 = selfCopy2;
      v20 = v10;
      v21 = v8;
      dispatch_async(v11, block);
    }

    else
    {
      v14(v8, 0, 0, 0);
    }
  }
}

- (NESMAgent)initWithPluginType:(id)type pluginVersion:(int64_t)version pluginClass:(int64_t)class pluginInfo:(id)info userID:(id)d
{
  v8.receiver = self;
  v8.super_class = NESMAgent;
  return [(NEAgent *)&v8 initWithPluginType:type pluginVersion:version pluginClass:class pluginInfo:info userID:d];
}

@end