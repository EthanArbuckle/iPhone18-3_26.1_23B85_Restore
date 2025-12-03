@interface NESMTransparentProxySession
- (void)setConfigurationWithCompletionHandler:(id)handler;
@end

@implementation NESMTransparentProxySession

- (void)setConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  pluginConfigurationEntities = [(NESMVPNSession *)self pluginConfigurationEntities];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100090414;
  v14[3] = &unk_1000EAA20;
  objc_copyWeak(&v18, &location);
  v6 = handlerCopy;
  v17 = v6;
  v7 = pluginConfigurationEntities;
  v15 = v7;
  selfCopy = self;
  v8 = objc_retainBlock(v14);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: Plugin configuration is not a NETransparentProxyNetworkSettings object", buf, 0xCu);
    }

    v11 = v6;
    goto LABEL_7;
  }

  isFullyTransparent = [v7 isFullyTransparent];
  v11 = v8;
  if (isFullyTransparent)
  {
LABEL_7:
    (v11[2])(v11, isKindOfClass & 1);
    goto LABEL_8;
  }

  v13.receiver = self;
  v13.super_class = NESMTransparentProxySession;
  [(NESMFlowDivertSession *)&v13 setConfigurationWithCompletionHandler:v8];
LABEL_8:

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end