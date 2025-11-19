@interface GKContactsIntegrationMigrator
- (GKContactsIntegrationMigrator)initWithUserDefaults:(id)a3;
- (void)performMigrationsWithContext:(id)a3 list:(id)a4;
@end

@implementation GKContactsIntegrationMigrator

- (GKContactsIntegrationMigrator)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKContactsIntegrationMigrator;
  v6 = [(GKContactsIntegrationMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
  }

  return v7;
}

- (void)performMigrationsWithContext:(id)a3 list:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 version];
  v9 = [v8 intValue];

  if (GKCDContactInfoListCurrentVersion > v9)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "The currently cached version of the list is old, will perform full sync.", buf, 2u);
    }

    [v7 setChangeHistoryToken:0];
  }

  v12 = [(GKContactsIntegrationMigrator *)self userDefaults];
  v13 = [v12 BOOLForKey:@"GKContactsIntegrationHasMigratedCredentials"];

  if ((v13 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Migrating credentials", v23, 2u);
    }

    v16 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v6];
    v17 = +[GKClientProxy gameCenterClient];
    v18 = +[GKPlayerCredentialController sharedController];
    v19 = [v16 contactsAssociationID];
    v20 = [v16 contactsIntegrationConsent];
    v21 = [v16 serviceLastUpdatedTimestamp];
    [v18 setContactAssociationID:v19 contactIntegrationConsent:v20 serviceLastUpdateTimestamp:v21 forEnvironment:objc_msgSend(v17 forcefully:"environment") completionHandler:{1, &stru_100369010}];

    v22 = [(GKContactsIntegrationMigrator *)self userDefaults];
    [v22 setBool:1 forKey:@"GKContactsIntegrationHasMigratedCredentials"];
  }
}

@end