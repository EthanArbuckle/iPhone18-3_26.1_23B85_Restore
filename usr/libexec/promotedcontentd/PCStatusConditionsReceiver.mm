@interface PCStatusConditionsReceiver
+ (BOOL)validateWhitelistingForCondition:(id)condition forBundleIdentifier:(id)identifier;
+ (BOOL)validateWhitelistingForRead:(id)read;
- (PCStatusConditionsReceiver)initWithBundleID:(id)d connection:(id)connection;
- (void)_isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)clearStatusCondition:(id)condition completionHandler:(id)handler;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setStatusCondition:(id)condition completionHandler:(id)handler;
@end

@implementation PCStatusConditionsReceiver

- (PCStatusConditionsReceiver)initWithBundleID:(id)d connection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = PCStatusConditionsReceiver;
  v9 = [(PCStatusConditionsReceiver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_bundleID, d);
    v11 = +[PCStatusConditionsService sharedInstance];
    conditionsService = v10->_conditionsService;
    v10->_conditionsService = v11;
  }

  return v10;
}

+ (BOOL)validateWhitelistingForCondition:(id)condition forBundleIdentifier:(id)identifier
{
  conditionCopy = condition;
  identifierCopy = identifier;
  if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[PCStatusConditionsDefaultsSettings settings](PCStatusConditionsDefaultsSettings, "settings"), v7 = objc_claimAutoreleasedReturnValue(), [v7 whitelistingsDisabled], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToNumber:", &off_1004935A0), v8, v7, v9))
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "This is an internal build and whitelisting of status conditions has been disabled. Proceeding with operation.", v14, 2u);
    }

    v11 = 1;
  }

  else
  {
    if (qword_1004EA3A8 != -1)
    {
      sub_100396FA0();
    }

    v12 = [qword_1004EA3A0 objectForKey:identifierCopy];
    v11 = [v12 containsObject:conditionCopy];
  }

  return v11;
}

+ (BOOL)validateWhitelistingForRead:(id)read
{
  readCopy = read;
  if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[PCStatusConditionsDefaultsSettings settings](PCStatusConditionsDefaultsSettings, "settings"), v4 = objc_claimAutoreleasedReturnValue(), [v4 whitelistingsDisabled], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToNumber:", &off_1004935A0), v5, v4, v6))
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "This is an internal build and whitelisting of status condition reads has been disabled. Proceeding with operation.", v10, 2u);
    }

    v8 = 1;
  }

  else
  {
    if (qword_1004EA3B8 != -1)
    {
      sub_100396FB4();
    }

    v8 = [qword_1004EA3B0 containsObject:readCopy];
  }

  return v8;
}

- (void)setStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100386458;
  block[3] = &unk_100478AB0;
  block[4] = self;
  v12 = conditionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = conditionCopy;
  dispatch_async(v8, block);
}

- (void)clearStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003868FC;
  block[3] = &unk_100478AB0;
  block[4] = self;
  v12 = conditionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = conditionCopy;
  dispatch_async(v8, block);
}

- (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  registeredCopy = registered;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386DC8;
  v15[3] = &unk_100480C90;
  v15[4] = self;
  v16 = registeredCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v14 = registeredCopy;
  dispatch_async(v11, v15);
}

- (void)_isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  registeredCopy = registered;
  v10 = [PCBooleanCondition alloc];
  uUIDString = [registeredCopy UUIDString];

  v12 = [(PCBooleanCondition *)v10 initWithType:@"sc" value:uUIDString identifier:identifierCopy];
  v15 = 0;
  v13 = [PCStatusConditionStorage isStatusConditionRegistered:v12 error:&v15];
  v14 = v15;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v13, v14);
  }
}

- (void)connectionInterrupted
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Connection to client for StatusConditions was interrupted.", v3, 2u);
  }
}

- (void)connectionInvalidated
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection to client for StatusConditions was invalidated.", v3, 2u);
  }
}

@end