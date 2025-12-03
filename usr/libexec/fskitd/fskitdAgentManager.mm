@interface fskitdAgentManager
- (fskitdAgentManager)init;
- (id)getCurrentAgentForToken:(id)token;
- (void)currentExtensionForShortName:(id)name auditToken:(id)token replyHandler:(id)handler;
- (void)currentExtensionsForToken:(id)token replyHandler:(id)handler;
- (void)setEnabledStateForToken:(id)token identifier:(id)identifier newState:(BOOL)state replyHandler:(id)handler;
@end

@implementation fskitdAgentManager

- (fskitdAgentManager)init
{
  v6.receiver = self;
  v6.super_class = fskitdAgentManager;
  v2 = [(fskitdAgentManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    currentAgents = v2->_currentAgents;
    v2->_currentAgents = v3;
  }

  return v2;
}

- (id)getCurrentAgentForToken:(id)token
{
  ruid = [token ruid];

  return [(fskitdAgentManager *)self getCurrentAgentForUID:ruid];
}

- (void)currentExtensionsForToken:(id)token replyHandler:(id)handler
{
  handlerCopy = handler;
  [token isOurUID];
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Getting own modules", v9, 2u);
  }

  currentExtensions = [gFSModuleHost currentExtensions];
  v8 = [currentExtensions fs_map:&stru_100060F30];
  handlerCopy[2](handlerCopy, v8, 0);
}

- (void)setEnabledStateForToken:(id)token identifier:(id)identifier newState:(BOOL)state replyHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  identifierCopy = identifier;
  [token isOurUID];
  v11 = [gFSModuleHost moduleForBundleID:identifierCopy];

  if (stateCopy)
  {
    [gFSModuleHost addBundleToEnableModules:v11];
  }

  else
  {
    [gFSModuleHost removeBundleFromEnabledModules:v11];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)currentExtensionForShortName:(id)name auditToken:(id)token replyHandler:(id)handler
{
  nameCopy = name;
  tokenCopy = token;
  handlerCopy = handler;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10000DE84;
  v35 = sub_10000DE94;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000DE84;
  v29 = sub_10000DE94;
  v30 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000DE9C;
  v24[3] = &unk_100060F80;
  v24[4] = &v25;
  v24[5] = &v31;
  [(fskitdAgentManager *)self currentExtensionsForToken:tokenCopy replyHandler:v24];
  if (v26[5])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10000DE84;
    v22 = sub_10000DE94;
    v23 = 0;
    v11 = fs_errorForPOSIXError();
    v12 = v26[5];
    v26[5] = v11;

    v13 = v32[5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000DF1C;
    v14[3] = &unk_100060FA8;
    v15 = nameCopy;
    v16 = &v18;
    v17 = &v25;
    [v13 enumerateObjectsUsingBlock:v14];
    (handlerCopy[2])(handlerCopy, v19[5], v26[5]);

    _Block_object_dispose(&v18, 8);
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

@end