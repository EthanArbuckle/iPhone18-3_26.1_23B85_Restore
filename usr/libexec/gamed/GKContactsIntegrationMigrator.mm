@interface GKContactsIntegrationMigrator
- (GKContactsIntegrationMigrator)initWithUserDefaults:(id)defaults;
- (void)performMigrationsWithContext:(id)context list:(id)list;
@end

@implementation GKContactsIntegrationMigrator

- (GKContactsIntegrationMigrator)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = GKContactsIntegrationMigrator;
  v6 = [(GKContactsIntegrationMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
  }

  return v7;
}

- (void)performMigrationsWithContext:(id)context list:(id)list
{
  contextCopy = context;
  listCopy = list;
  version = [listCopy version];
  intValue = [version intValue];

  if (GKCDContactInfoListCurrentVersion > intValue)
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

    [listCopy setChangeHistoryToken:0];
  }

  userDefaults = [(GKContactsIntegrationMigrator *)self userDefaults];
  v13 = [userDefaults BOOLForKey:@"GKContactsIntegrationHasMigratedCredentials"];

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

    v16 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:contextCopy];
    v17 = +[GKClientProxy gameCenterClient];
    v18 = +[GKPlayerCredentialController sharedController];
    contactsAssociationID = [v16 contactsAssociationID];
    contactsIntegrationConsent = [v16 contactsIntegrationConsent];
    serviceLastUpdatedTimestamp = [v16 serviceLastUpdatedTimestamp];
    [v18 setContactAssociationID:contactsAssociationID contactIntegrationConsent:contactsIntegrationConsent serviceLastUpdateTimestamp:serviceLastUpdatedTimestamp forEnvironment:objc_msgSend(v17 forcefully:"environment") completionHandler:{1, &stru_100369010}];

    userDefaults2 = [(GKContactsIntegrationMigrator *)self userDefaults];
    [userDefaults2 setBool:1 forKey:@"GKContactsIntegrationHasMigratedCredentials"];
  }
}

@end