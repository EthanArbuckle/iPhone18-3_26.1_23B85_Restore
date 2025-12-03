@interface MCAppEnforcedRestrictions
+ (id)enforcedRestrictionsForBundleID:(id)d countryCode:(id)code;
+ (id)restrictionEnforcingApps;
+ (id)setOfActiveRestrictionUUIDsForCountryCode:(id)code;
@end

@implementation MCAppEnforcedRestrictions

+ (id)restrictionEnforcingApps
{
  if (qword_100136C48 != -1)
  {
    sub_1000C2DD0();
  }

  v3 = qword_100136C40;

  return v3;
}

+ (id)enforcedRestrictionsForBundleID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (codeCopy)
  {
    v8 = [NSSet setWithObject:codeCopy];
  }

  else
  {
    v8 = 0;
  }

  restrictionEnforcingApps = [self restrictionEnforcingApps];
  v10 = [restrictionEnforcingApps objectForKeyedSubscript:dCopy];

  if (v10)
  {
    v11 = [v10 stringByAppendingPathComponent:@"MCRestrictions.plist"];
    v12 = [NSURL fileURLWithPath:v11];

    if (v12)
    {
      v13 = [MCAppEnforcedRestrictionUtilities enforcedRestrictionsForBundleID:dCopy restrictionPlistURL:v12 countryCodes:v8];
    }

    else
    {
      v15 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v17 = 138543362;
        v18 = dCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not find restriction plist for app “%{public}@”", &v17, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Attempted to enforce restrictions for unhandled app “%{public}@”", &v17, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)setOfActiveRestrictionUUIDsForCountryCode:(id)code
{
  codeCopy = code;
  v4 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[MCAppEnforcedRestrictions restrictionEnforcingApps];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MCAppEnforcedRestrictions enforcedRestrictionsForBundleID:v10 countryCode:codeCopy];
        if ([v11 count])
        {
          v12 = [MCAppEnforcedRestrictionUtilities clientUUIDForBundleID:v10];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end