@interface NESMAgent
- (NESMAgent)initWithPluginType:(id)a3 pluginVersion:(int64_t)a4 pluginClass:(int64_t)a5 pluginInfo:(id)a6 userID:(id)a7;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation NESMAgent

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_10000DA38();
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100007090;
  v15 = &unk_1000E96B0;
  v16 = self;
  v17 = v4;
  v6 = v4;
  v7 = self;
  v8 = &v12;
  if (v5)
  {
    if (v7)
    {
      pluginClass = v7->super._pluginClass;
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
      v19 = v7;
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

- (NESMAgent)initWithPluginType:(id)a3 pluginVersion:(int64_t)a4 pluginClass:(int64_t)a5 pluginInfo:(id)a6 userID:(id)a7
{
  v8.receiver = self;
  v8.super_class = NESMAgent;
  return [(NEAgent *)&v8 initWithPluginType:a3 pluginVersion:a4 pluginClass:a5 pluginInfo:a6 userID:a7];
}

@end