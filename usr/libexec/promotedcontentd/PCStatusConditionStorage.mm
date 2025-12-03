@interface PCStatusConditionStorage
+ (BOOL)isStatusConditionRegistered:(id)registered error:(id *)error;
+ (id)_makeApplicationSupportSubdirectory:(id)subdirectory;
+ (id)baseURL;
+ (id)clearStatusCondition:(id)condition;
+ (id)fileURLForCondition:(id)condition;
+ (id)setStatusCondition:(id)condition;
+ (void)clearExpiredStatusConditions;
@end

@implementation PCStatusConditionStorage

+ (id)baseURL
{
  if (PCStatusConditionStorage_baseURL)
  {
    v2 = PCStatusConditionStorage_baseURL;
  }

  else
  {
    v2 = [PCStatusConditionStorage _makeApplicationSupportSubdirectory:@"adsc"];
  }

  return v2;
}

+ (id)setStatusCondition:(id)condition
{
  conditionCopy = condition;
  v4 = [PCStatusConditionStorage fileURLForCondition:conditionCopy];
  v5 = v4;
  if (v4)
  {
    uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
    v7 = +[NSFileManager defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v20 = 0;
    [v7 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v20];
    v9 = v20;

    if (!v9)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        value = [conditionCopy value];
        identifier = [conditionCopy identifier];
        v13 = +[APIDAccountProvider privateUserAccount];
        iTunesDSID = [v13 iTunesDSID];
        *buf = 136643843;
        v22 = "+[PCStatusConditionStorage setStatusCondition:]";
        v23 = 2114;
        v24 = value;
        v25 = 2114;
        v26 = identifier;
        v27 = 2160;
        v28 = 1752392040;
        v29 = 2112;
        v30 = iTunesDSID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{sensitive}s]: setting status condition %{public}@ for bundle %{public}@. DSID %{mask.hash}@", buf, 0x34u);
      }

      v15 = +[NSData data];
      v19 = 0;
      [v15 writeToURL:v5 options:0 error:&v19];
      v9 = v19;
    }

    v16 = v9;

    v17 = v16;
  }

  else
  {
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Error creating URL.";
    v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:1001 userInfo:v16];
  }

  return v17;
}

+ (id)clearStatusCondition:(id)condition
{
  conditionCopy = condition;
  v4 = [PCStatusConditionStorage fileURLForCondition:conditionCopy];
  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    path = [v4 path];
    v7 = [v5 fileExistsAtPath:path];

    v8 = APLogForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        value = [conditionCopy value];
        identifier = [conditionCopy identifier];
        v12 = +[APIDAccountProvider privateUserAccount];
        iTunesDSID = [v12 iTunesDSID];
        *buf = 136643843;
        v24 = "+[PCStatusConditionStorage clearStatusCondition:]";
        v25 = 2114;
        v26 = value;
        v27 = 2114;
        v28 = identifier;
        v29 = 2160;
        v30 = 1752392040;
        v31 = 2112;
        v32 = iTunesDSID;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{sensitive}s]: clearing status condition %{public}@ for bundle %{public}@. DSID %{mask.hash}@.", buf, 0x34u);
      }

      v22 = 0;
      [v5 removeItemAtURL:v4 error:&v22];
      v14 = v22;
    }

    else
    {
      if (v9)
      {
        value2 = [conditionCopy value];
        identifier2 = [conditionCopy identifier];
        v19 = +[APIDAccountProvider privateUserAccount];
        iTunesDSID2 = [v19 iTunesDSID];
        *buf = 136643843;
        v24 = "+[PCStatusConditionStorage clearStatusCondition:]";
        v25 = 2114;
        v26 = value2;
        v27 = 2114;
        v28 = identifier2;
        v29 = 2160;
        v30 = 1752392040;
        v31 = 2112;
        v32 = iTunesDSID2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{sensitive}s]: status condition %{public}@ for bundle %{public}@ doesn't exist. DSID %{mask.hash}@", buf, 0x34u);
      }

      v14 = 0;
    }

    v15 = v14;

    v16 = v15;
  }

  else
  {
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Error creating URL.";
    v15 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:1001 userInfo:v15];
  }

  return v16;
}

+ (BOOL)isStatusConditionRegistered:(id)registered error:(id *)error
{
  registeredCopy = registered;
  v6 = [PCStatusConditionStorage fileURLForCondition:registeredCopy];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    path = [v6 path];
    v9 = [v7 fileExistsAtPath:path];

    if (+[APSystemInternal isAppleInternalInstall]&& (v9 & 1) == 0)
    {
      v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.AdPlatforms"];
      v11 = [v10 dictionaryForKey:@"ForcedStatusConditions"];
      if (v11)
      {
        value = [registeredCopy value];
        v13 = [v11 objectForKeyedSubscript:value];

        identifier = [registeredCopy identifier];
        v9 = [v13 isEqualToString:identifier];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    if (error)
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"Error creating URL.";
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:1001 userInfo:v15];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)clearExpiredStatusConditions
{
  v2 = +[PCStatusConditionStorage baseURL];
  if (!v2)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PCStatusConditionStorage returned a nil URL", buf, 2u);
    }

    goto LABEL_34;
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLContentModificationDateKey, 0];
  v5 = [v3 enumeratorAtURL:v2 includingPropertiesForKeys:v4 options:4 errorHandler:&stru_100480BD8];
  v32 = +[NSDate date];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = v7;
  v29 = v4;
  v30 = v2;
  v31 = v3;
  v9 = 0;
  v10 = *v40;
  v33 = v6;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v39 + 1) + 8 * i);
      v37 = 0;
      v38 = 0;
      v13 = [v12 getResourceValue:&v38 forKey:NSURLIsDirectoryKey error:&v37];
      v14 = v38;
      v15 = v37;

      if ((v13 & 1) == 0)
      {
        if (!v15)
        {
          v9 = 0;
          goto LABEL_23;
        }

        v17 = APLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          path = [v12 path];
          localizedDescription = [v15 localizedDescription];
          *buf = 141558530;
          v44 = 1752392040;
          v45 = 2112;
          v46 = path;
          v47 = 2114;
          v48 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "An error occurred getting isDirectory from url:%{mask.hash}@. %{public}@", buf, 0x20u);
        }

        v18 = v15;
        goto LABEL_31;
      }

      if ([v14 BOOLValue])
      {
        v9 = v15;
        goto LABEL_23;
      }

      v35 = 0;
      v36 = 0;
      v16 = [v12 getResourceValue:&v36 forKey:NSURLContentModificationDateKey error:&v35];
      v17 = v36;
      v18 = v35;

      if (v16)
      {
        if (v17)
        {
          [v32 timeIntervalSinceDate:v17];
          if (v19 <= *&PCStatusConditionStorage_expectedLifeInterval)
          {
            v9 = v18;
          }

          else
          {
            v34 = v18;
            [v31 removeItemAtURL:v12 error:&v34];
            v9 = v34;

            if (v9)
            {
              v20 = APLogForCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                path2 = [v12 path];
                localizedDescription2 = [v9 localizedDescription];
                *buf = 141558530;
                v44 = 1752392040;
                v45 = 2112;
                v46 = path2;
                v47 = 2114;
                v48 = localizedDescription2;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "An error occurred attempting to removeItemAtUrl:%{mask.hash}@. %{public}@", buf, 0x20u);
              }
            }
          }

          goto LABEL_22;
        }

        v17 = APLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          path3 = [v12 path];
          *buf = 138412290;
          v44 = path3;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "An error occured retrieving modified date from url %@", buf, 0xCu);
        }

LABEL_31:

        v9 = v18;
        v6 = v33;
        goto LABEL_32;
      }

      if (v18)
      {
        v26 = APLogForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          path4 = [v12 path];
          localizedDescription3 = [v18 localizedDescription];
          *buf = 141558530;
          v44 = 1752392040;
          v45 = 2112;
          v46 = path4;
          v47 = 2114;
          v48 = localizedDescription3;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "An error occurred getting date from url:%{mask.hash}@. %{public}@", buf, 0x20u);
        }

        goto LABEL_31;
      }

      v9 = 0;
LABEL_22:

      v6 = v33;
LABEL_23:
    }

    v8 = [v6 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v4 = v29;
  v2 = v30;
  v3 = v31;
LABEL_33:

LABEL_34:
}

+ (id)fileURLForCondition:(id)condition
{
  storageRepresentation = [condition storageRepresentation];
  sha1 = [storageRepresentation sha1];
  v5 = [sha1 substringToIndex:2];
  v6 = [sha1 substringWithRange:{2, 2}];
  v7 = [sha1 substringFromIndex:4];
  v8 = [NSString stringWithFormat:@"%@/%@/%@", v5, v6, v7];
  v9 = +[PCStatusConditionStorage baseURL];
  v10 = [v9 URLByAppendingPathComponent:v8 isDirectory:0];

  if (!v10)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "PCStatusConditionStorage returned a nil URL", buf, 2u);
    }
  }

  return v10;
}

+ (id)_makeApplicationSupportSubdirectory:(id)subdirectory
{
  subdirectoryCopy = subdirectory;
  v4 = +[NSFileManager defaultManager];
  v5 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  lastObject = [v5 lastObject];

  v24[0] = lastObject;
  v24[1] = @"com.apple.ap.promotedcontentd";
  v7 = [NSArray arrayWithObjects:v24 count:2];
  v8 = [NSURL fileURLWithPathComponents:v7];

  if (subdirectoryCopy)
  {
    v9 = [v8 URLByAppendingPathComponent:subdirectoryCopy isDirectory:1];

    v8 = v9;
  }

  v17 = 0;
  v10 = [v4 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason = [v11 localizedFailureReason];
      userInfo = [v11 userInfo];
      *buf = 138478339;
      v19 = v8;
      v20 = 2114;
      v21 = localizedFailureReason;
      v22 = 2114;
      v23 = userInfo;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create Application Support subdirectory: %{private}@ %{public}@ %{public}@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

@end