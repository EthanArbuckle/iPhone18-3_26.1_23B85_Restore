@interface VSUserAccountService
- (VSUserAccountService)init;
- (void)userAccountRegistry:(id)a3 didFinishUpdatingUserAccountsWithManager:(id)a4;
- (void)userAccountRegistry:(id)a3 willPerformMigrationIfRequiredWithBlock:(id)a4;
@end

@implementation VSUserAccountService

- (VSUserAccountService)init
{
  v3 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = VSUserAccountService;
  v4 = [(VSUserAccountService *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(VSPreferences);
    preferences = v4->_preferences;
    v4->_preferences = v5;

    v7 = [[VSUserAccountRegistry alloc] initWithDelegate:v4];
    registry = v4->_registry;
    v4->_registry = v7;

    v14[0] = VSEntitlementNameSmootSubscriptionService;
    v14[1] = VSEntitlementNameInternalSubscriptionService;
    v14[2] = VSEntitlementNameSubscriptionRegistration;
    v14[3] = VSEntitlementNameSubscriptionServiceFetchFromAllSources;
    v14[4] = VSEntitlementNameSubscriptionServiceReadWriteWebSources;
    v14[5] = VSEntitlementNameUserAccountService;
    v9 = [NSArray arrayWithObjects:v14 count:6];
    [(VSUserAccountService *)v4 setEntitlementNames:v9];
    v10 = VSUserAccountServiceInterface();
    [(VSUserAccountService *)v4 setExportedInterface:v10];

    [(VSUserAccountService *)v4 setExportedObject:v4->_registry];
  }

  v11 = v4;
  objc_autoreleasePoolPop(v3);

  return v11;
}

- (void)userAccountRegistry:(id)a3 willPerformMigrationIfRequiredWithBlock:(id)a4
{
  v4 = a4;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSUserAccountService userAccountRegistry:willPerformMigrationIfRequiredWithBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v6 = objc_alloc_init(VSSubscriptionRegistry);
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&stru_100014F60 forKey:VSSubscriptionFetchOptionSubscriberIdentifierHashModifier];
  [v7 setObject:&__kCFBooleanFalse forKey:VSSubscriptionFetchOptionExcludeUninstalledApps];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AEE0;
  v9[3] = &unk_100014808;
  v10 = v4;
  v8 = v4;
  [v6 fetchActiveSubscriptionsWithOptions:v7 completionHandler:v9];
}

- (void)userAccountRegistry:(id)a3 didFinishUpdatingUserAccountsWithManager:(id)a4
{
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VSUserAccountService userAccountRegistry:didFinishUpdatingUserAccountsWithManager:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v5, 0xCu);
  }
}

@end