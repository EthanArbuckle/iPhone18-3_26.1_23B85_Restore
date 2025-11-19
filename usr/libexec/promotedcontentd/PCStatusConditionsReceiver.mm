@interface PCStatusConditionsReceiver
+ (BOOL)validateWhitelistingForCondition:(id)a3 forBundleIdentifier:(id)a4;
+ (BOOL)validateWhitelistingForRead:(id)a3;
- (PCStatusConditionsReceiver)initWithBundleID:(id)a3 connection:(id)a4;
- (void)_isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)clearStatusCondition:(id)a3 completionHandler:(id)a4;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setStatusCondition:(id)a3 completionHandler:(id)a4;
@end

@implementation PCStatusConditionsReceiver

- (PCStatusConditionsReceiver)initWithBundleID:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PCStatusConditionsReceiver;
  v9 = [(PCStatusConditionsReceiver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a4);
    objc_storeStrong(&v10->_bundleID, a3);
    v11 = +[PCStatusConditionsService sharedInstance];
    conditionsService = v10->_conditionsService;
    v10->_conditionsService = v11;
  }

  return v10;
}

+ (BOOL)validateWhitelistingForCondition:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
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

    v12 = [qword_1004EA3A0 objectForKey:v6];
    v11 = [v12 containsObject:v5];
  }

  return v11;
}

+ (BOOL)validateWhitelistingForRead:(id)a3
{
  v3 = a3;
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

    v8 = [qword_1004EA3B0 containsObject:v3];
  }

  return v8;
}

- (void)setStatusCondition:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100386458;
  block[3] = &unk_100478AB0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)clearStatusCondition:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003868FC;
  block[3] = &unk_100478AB0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386DC8;
  v15[3] = &unk_100480C90;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PCBooleanCondition alloc];
  v11 = [v9 UUIDString];

  v12 = [(PCBooleanCondition *)v10 initWithType:@"sc" value:v11 identifier:v8];
  v15 = 0;
  v13 = [PCStatusConditionStorage isStatusConditionRegistered:v12 error:&v15];
  v14 = v15;
  if (v7)
  {
    v7[2](v7, v13, v14);
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