@interface NSBundle
+ (BOOL)_sr_validateRequiredFieldsForBundleIdentifier:(id)identifier sensors:(id)sensors error:(id *)error;
+ (id)sk_bundleWithIdentifier:(id)identifier;
- (BOOL)_sr_validateRequiredFieldsForSensors:(id)sensors error:(id *)error;
- (id)sk_appName;
- (id)sk_perCategoryDetailDescription;
- (id)sk_privacyURL;
- (id)sk_requiredCategories;
- (id)sk_studyName;
- (id)sk_usageDescription;
- (id)sr_normalizedBundleIdentifier;
- (int64_t)sr_bundleType;
@end

@implementation NSBundle

+ (BOOL)_sr_validateRequiredFieldsForBundleIdentifier:(id)identifier sensors:(id)sensors error:(id *)error
{
  v8 = [NSURL fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];
  objc_opt_self();
  v9 = sub_10000659C(NSBundle, identifier, v8);
  if (v9)
  {

    return [(NSBundle *)v9 _sr_validateRequiredFieldsForSensors:sensors error:error];
  }

  else
  {
    if (error)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"Bundle couldn't be found";
      *error = [NSError errorWithDomain:SRErrorDomain code:20480 userInfo:[NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1]];
    }

    return 0;
  }
}

- (BOOL)_sr_validateRequiredFieldsForSensors:(id)sensors error:(id *)error
{
  if (![(NSBundle *)self sk_usageDescription])
  {
    if (error)
    {
      v16 = @"NSSensorKitUsageDescription";
      v17 = 20481;
LABEL_21:
      v18 = [SRError invalidInfoPlistErrorWithMissingKey:v16 code:v17];
      result = 0;
      *error = v18;
      return result;
    }

    return 0;
  }

  if (![(NSBundle *)self sk_privacyURL])
  {
    if (error)
    {
      v16 = @"NSSensorKitPrivacyPolicyURL";
      v17 = 20482;
      goto LABEL_21;
    }

    return 0;
  }

  if (![(NSBundle *)self objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      v16 = @"NSSensorKitUsageDetail";
      v17 = 20483;
      goto LABEL_21;
    }

    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [sensors countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = *v22;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(sensors);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      v13 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v11), "infoPlistAuthorizationCategory"}];
      if (!v13)
      {
        if (qword_1000719A8 == -1)
        {
          v19 = qword_1000719B0;
          if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }
        }

        else
        {
          dispatch_once(&qword_1000719A8, &stru_100060C78);
          v19 = qword_1000719B0;
          if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
          {
LABEL_25:
            if (!error)
            {
              goto LABEL_30;
            }

LABEL_26:
            v20 = [SRError errorWithCode:8194];
LABEL_29:
            *error = v20;
            goto LABEL_30;
          }
        }

        *buf = 138543362;
        v26 = v11;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to find Info.plist authorization category key for %{public}@", buf, 0xCu);
        if (!error)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v14 = v13;
      if (![-[NSBundle sk_perCategoryDetailDescription](self "sk_perCategoryDetailDescription")])
      {
        if (error)
        {
          v20 = [SRError invalidInfoPlistErrorWithMissingKey:v14 code:20484];
          goto LABEL_29;
        }

LABEL_30:
        objc_autoreleasePoolPop(v12);
        return 0;
      }

      objc_autoreleasePoolPop(v12);
    }

    v8 = [sensors countByEnumeratingWithState:&v21 objects:v27 count:16];
    result = 1;
    if (v8)
    {
      continue;
    }

    return result;
  }
}

+ (id)sk_bundleWithIdentifier:(id)identifier
{
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];

  return sub_10000659C(NSBundle, identifier, v4);
}

- (id)sk_appName
{
  v3 = [(NSBundle *)self objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v3 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}])
  {
    return v3;
  }

  v3 = [(NSBundle *)self objectForInfoDictionaryKey:@"CFBundleName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_msgSend(v3 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}])
    {
      return v3;
    }
  }

  return [(NSBundle *)self bundleIdentifier];
}

- (id)sk_studyName
{
  v3 = [(NSBundle *)self objectForInfoDictionaryKey:@"NSSensorKitStudyName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v3 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}])
  {
    return v3;
  }

  return [(NSBundle *)self sk_appName];
}

- (id)sk_privacyURL
{
  result = [(NSBundle *)self objectForInfoDictionaryKey:@"NSSensorKitPrivacyPolicyURL"];
  if (result)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [NSURL URLWithString:v3];
      if ([(NSString *)[(NSURL *)v4 scheme] isEqualToString:@"http"])
      {
        return v4;
      }

      else if ([(NSString *)[(NSURL *)v4 scheme] isEqualToString:@"https"])
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)sk_usageDescription
{
  v2 = [(NSBundle *)self objectForInfoDictionaryKey:@"NSSensorKitUsageDescription"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(v2 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}])
  {
    return v2;
  }

  return 0;
}

- (id)sk_requiredCategories
{
  v3 = +[NSMutableSet set];
  v4 = [(NSBundle *)self objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000070F4;
    v6[3] = &unk_100060C30;
    v6[4] = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
    return [NSSet setWithSet:v3];
  }

  else
  {

    return +[NSSet set];
  }
}

- (id)sk_perCategoryDetailDescription
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(NSBundle *)self objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000072B0;
    v6[3] = &unk_100060C58;
    v6[4] = self;
    v6[5] = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (int64_t)sr_bundleType
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_10000742C(self, [NSURL fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0]);
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)sr_normalizedBundleIdentifier
{
  v3 = [NSURL fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];
  if (!self)
  {
    return 0;
  }

  v4 = sub_10000742C(self, v3);
  if (v4 == 1)
  {
    v6 = @"com.apple.Research";
    if (![(NSString *)[(NSBundle *)self bundleIdentifier] hasPrefix:@"com.apple.Research"])
    {
      v6 = @"com.appleinternal.health.Lime";
      if (![(NSString *)[(NSBundle *)self bundleIdentifier] hasPrefix:@"com.appleinternal.health.Lime"])
      {
        v6 = [(NSBundle *)self objectForInfoDictionaryKey:@"SRStudyApplicationGroupIdentifier"];
      }
    }

    if (qword_1000719A8 == -1)
    {
      v7 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
      {
        return v6;
      }
    }

    else
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
      v7 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
      {
        return v6;
      }
    }

    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    bundleIdentifier = [(NSBundle *)self bundleIdentifier];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found parent app %{public}@ for study %{public}@", &v8, 0x16u);
    return v6;
  }

  if (v4 != 2)
  {
    return 0;
  }

  return [(NSBundle *)self bundleIdentifier];
}

@end