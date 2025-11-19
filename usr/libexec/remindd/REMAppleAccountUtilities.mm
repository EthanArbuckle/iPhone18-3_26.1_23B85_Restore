@interface REMAppleAccountUtilities
- (id)_applicationDocumentsURLForPersonaIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)applicationDocumentsURLForAccountIdentifier:(id)a3;
- (id)reminderDataContainerURLForAccountIdentifier:(id)a3;
- (id)status;
- (id)unsafeUntilSystemReady_allICloudAccountsWithCloudKitEnabled;
- (void)_unsetMigrationFlagsWithACAccount:(id)a3 inStore:(id)a4 completionHandler:(id)a5;
@end

@implementation REMAppleAccountUtilities

- (id)applicationDocumentsURLForAccountIdentifier:(id)a3
{
  v4 = a3;
  if (+[RDPaths isDataSeparationEnabled])
  {
    v5 = v4;
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"___REMAccountIdentifier_NIL___";
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100068218;
    v28 = sub_100068228;
    v29 = 0;
    if (qword_1009528F0 != -1)
    {
      sub_10075FC70();
    }

    v8 = qword_1009528E8;
    objc_sync_enter(v8);
    v9 = [qword_1009528E8 objectForKeyedSubscript:v7];
    v10 = v25[5];
    v25[5] = v9;

    if (v25[5])
    {
      v11 = 1;
    }

    else
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10006826C;
      v19 = &unk_1008D99D8;
      v23 = &v24;
      v20 = self;
      v21 = v6;
      v22 = v7;
      [(REMAppleAccountUtilities *)self performBlockInPersonaContextForAccountIdentifier:v21 block:&v16];

      v11 = 0;
    }

    v13 = [REMLog utility:v16];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v25[5];
      *buf = 67109634;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "applicationDocumentsURLForAccountIdentifier: Look up result {cacheHit: %d, accountIdentifier: %{public}@, applicationDocumentsURL: %{public}@}", buf, 0x1Cu);
    }

    objc_sync_exit(v8);
    v12 = v25[5];
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v12 = +[REMPaths legacy_applicationDocumentsURL];
  }

  return v12;
}

- (id)reminderDataContainerURLForAccountIdentifier:(id)a3
{
  v3 = [(REMAppleAccountUtilities *)self applicationDocumentsURLForAccountIdentifier:a3];
  v4 = [RDPaths reminderDataContainerURLWithAppDocumentsURL:v3];

  return v4;
}

- (id)_applicationDocumentsURLForPersonaIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [REMPaths URLForGroupContainerWithIdentifier:REMAppGroupBundleIdentifier];
  if (!v7)
  {
    v8 = +[REMLog utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10075FC98(v5, v6, v8);
    }

    v7 = +[REMPaths legacy_applicationDocumentsURL];
  }

  return v7;
}

- (id)unsafeUntilSystemReady_allICloudAccountsWithCloudKitEnabled
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(REMAppleAccountUtilities *)self accountStore];
  v5 = [(REMAppleAccountUtilities *)self accountStore];
  v6 = [v5 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCloudKit];
  v7 = [v4 accountsWithAccountType:v6];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) displayAccount];
        [v3 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v3;
}

- (id)status
{
  v3 = +[NSMutableDictionary dictionary];
  v47 = self;
  [(REMAppleAccountUtilities *)self unsafeUntilSystemReady_allICloudACAccounts];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v49 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v49)
  {
    v48 = *v54;
    v46 = REMACAccountPropertyDidChooseToMigrate;
    v45 = REMACAccountPropertyDidFinishMigration;
    v43 = ACAccountPropertyPersonaIdentifier;
    v44 = kAccountDataclassReminders;
    v42 = AAAccountClassBasic;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v54 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v53 + 1) + 8 * i);
        v6 = [v5 identifier];
        if (v6)
        {
          v7 = [v5 objectForKeyedSubscript:v46];
          v8 = [v5 objectForKeyedSubscript:v45];
          v9 = [v5 rem_isManagedAppleID];
          v50 = [v5 isEnabledForDataclass:v44];
          v10 = [v5 shortDebugName];
          v11 = [NSString stringWithFormat:@"%@.description", v6];
          [v3 setObject:v10 forKeyedSubscript:v11];

          v12 = [v5 aa_accountClass];
          v13 = [NSString stringWithFormat:@"%@.aa_accountClass", v6];
          [v3 setObject:v12 forKeyedSubscript:v13];

          v14 = [v5 aa_personID];
          v15 = [NSString stringWithFormat:@"%@.aa_personID", v6];
          [v3 setObject:v14 forKeyedSubscript:v15];

          v16 = [v5 aa_altDSID];
          v17 = [NSString stringWithFormat:@"%@.aa_altDSID", v6];
          [v3 setObject:v16 forKeyedSubscript:v17];

          v52 = v7;
          v18 = [NSString stringWithFormat:@"%@", v7];
          v19 = [NSString stringWithFormat:@"%@.didChooseToMigrate", v6];
          [v3 setObject:v18 forKeyedSubscript:v19];

          v51 = v8;
          v20 = [NSString stringWithFormat:@"%@", v8];
          v21 = [NSString stringWithFormat:@"%@.didFinishMigration", v6];
          [v3 setObject:v20 forKeyedSubscript:v21];

          v22 = [NSString stringWithFormat:@"%d", v9];
          v23 = [NSString stringWithFormat:@"%@.isManagedAppleID", v6];
          [v3 setObject:v22 forKeyedSubscript:v23];

          v24 = [NSString stringWithFormat:@"%d", v50];
          v25 = [NSString stringWithFormat:@"%@.isEnabledForDataclass", v6];
          [v3 setObject:v24 forKeyedSubscript:v25];

          v26 = [v5 accountPropertyForKey:v43];
          v27 = [v5 identifier];
          v28 = [(REMAppleAccountUtilities *)v47 applicationDocumentsURLForAccountIdentifier:v27];

          if (v26)
          {
            v29 = v26;
          }

          else
          {
            v29 = @"NIL";
          }

          v30 = [NSString stringWithFormat:@"%@.personaIdentifier", v6];
          [v3 setObject:v29 forKeyedSubscript:v30];

          v31 = [v28 absoluteString];
          v32 = [NSString stringWithFormat:@"%@", v31];
          v33 = [NSString stringWithFormat:@"%@.applicationDocumentsURL", v6];
          [v3 setObject:v32 forKeyedSubscript:v33];

          if (([v5 aa_isAccountClass:v42] & 1) == 0)
          {
            v34 = [v5 rem_eligibleForAutoCloudKitMigration];
            v35 = [v5 rem_isEligibleForCloudKitReminders];
            v36 = [NSString stringWithFormat:@"%d", v34];
            v37 = [NSString stringWithFormat:@"%@.eligibleForAutoCloudKitMigration", v6];
            [v3 setObject:v36 forKeyedSubscript:v37];

            v38 = [NSString stringWithFormat:@"%d", v35];
            v39 = [NSString stringWithFormat:@"%@.isEligibleForCloudKitReminders", v6];
            [v3 setObject:v38 forKeyedSubscript:v39];
          }
        }
      }

      v49 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v49);
  }

  return v3;
}

- (void)_unsetMigrationFlagsWithACAccount:(id)a3 inStore:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[REMLog utility];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10076C49C(v7, v10);
  }

  [v7 setObject:0 forKeyedSubscript:REMACAccountPropertyDidChooseToMigrate];
  [v7 setObject:0 forKeyedSubscript:REMACAccountPropertyDidFinishMigration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CB5E8;
  v13[3] = &unk_1008DC450;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [v9 saveAccount:v12 withCompletionHandler:v13];
}

@end