@interface MCProfileJanitor
+ (id)earliestExpiryDate;
+ (void)_removeExpiredProvisioningProfiles;
+ (void)removeExpiredProfiles;
@end

@implementation MCProfileJanitor

+ (void)removeExpiredProfiles
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Checking for configuration profiles to remove due to expired removal date.", buf, 2u);
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v4 allInstalledProfileIdentifiers];
  v35 = +[NSDate date];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = allInstalledProfileIdentifiers;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v4 installedProfileWithIdentifier:v10];
        v13 = v12;
        if (v12)
        {
          removalDate = [v12 removalDate];
          v15 = removalDate;
          if (removalDate)
          {
            v16 = [removalDate earlierDate:v35];

            if (v16 == v15)
            {
              v17 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v47 = v10;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Profile “%{public}@” has expired and will be removed.", buf, 0xCu);
              }

              if ([v13 isInstalledForUser])
              {
                v18 = 2;
              }

              else
              {
                v18 = 1;
              }

              v19 = [NSNumber numberWithInteger:v18];
              [v3 setObject:v19 forKey:v10];
            }
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v20 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v3 count];
      *buf = 67109120;
      LODWORD(v47) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing %d configuration profiles.", buf, 8u);
    }

    v23 = +[MCInstaller sharedInstaller];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = v3;
    v24 = v3;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * j);
          v30 = objc_autoreleasePoolPush();
          v31 = [v24 objectForKey:v29];
          [v23 removeProfileWithIdentifier:v29 installationType:objc_msgSend(v31 source:{"intValue"), @"Expired Profile Removal"}];

          objc_autoreleasePoolPop(v30);
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v26);
    }

    v3 = v34;
  }

  [self _removeExpiredProvisioningProfiles];
  v32 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Finished checking for profiles to remove.", buf, 2u);
  }
}

+ (void)_removeExpiredProvisioningProfiles
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Checking for provisioning profiles to remove due to expiry.", buf, 2u);
  }

  v3 = +[NSDate date];
  v4 = MCGestaltGetDeviceUUID();
  v5 = +[NSMutableArray array];
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100089FB8;
  v32 = &unk_10011CE00;
  v6 = v3;
  v33 = v6;
  v7 = v5;
  v34 = v7;
  v8 = v4;
  v35 = v8;
  v9 = MISEnumerateInstalledProvisioningProfiles();
  if (v9)
  {
    v10 = v9;
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot retrieve list of provisioning profiles with MIS error: %d", buf, 8u);
    }
  }

  else if ([v7 count])
  {
    v24 = v8;
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v7 count];
      *buf = 67109120;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing %d provisioning profiles.", buf, 8u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = +[MCInstaller sharedInstaller];
          v23 = [v22 removeProvisioningProfileUUID:v20 sender:@"MCProfileJanitor._removeExpiredProvisioningProfiles"];

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v17);
    }

    v8 = v24;
  }
}

+ (id)earliestExpiryDate
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10008A4A0;
  v30 = sub_10008A4B0;
  v31 = 0;
  v2 = +[MCManifest sharedManifest];
  [v2 allInstalledProfileIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v2 installedProfileWithIdentifier:v7];
        v10 = v9;
        if (v9)
        {
          removalDate = [v9 removalDate];
          v12 = removalDate;
          v13 = v27;
          if (!v27[5])
          {
            goto LABEL_11;
          }

          if (removalDate)
          {
            v14 = [removalDate earlierDate:?];
            v15 = v14 == v12;

            if (v15)
            {
              v13 = v27;
LABEL_11:
              objc_storeStrong(v13 + 5, v12);
            }
          }
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v4);
  }

  v16 = MISEnumerateInstalledProvisioningProfiles();
  if (v16)
  {
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v33) = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot retrieve list of provisioning profiles. Status: %d", buf, 8u);
    }
  }

  v18 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v19 = v27[5];
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Checking profiles for expiry. Earliest expiry date: %{public}@", buf, 0xCu);
  }

  v20 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v20;
}

@end