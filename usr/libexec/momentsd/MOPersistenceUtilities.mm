@interface MOPersistenceUtilities
+ (BOOL)isAllowedKeyPathForEventBundle:(id)bundle;
+ (BOOL)isValidPredicate:(id)predicate;
+ (BOOL)validateComparisonPredicate:(id)predicate;
+ (BOOL)validateCompoundPredicate:(id)predicate;
+ (id)getBundlingJSONURLWithDirectorySuffix:(id)suffix;
+ (id)userCacheDirectoryPath;
+ (id)userDataDumpDirectoryPathWithSuffix:(id)suffix;
+ (void)userCacheDirectoryPath;
@end

@implementation MOPersistenceUtilities

+ (id)userCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
    v4 = [firstObject stringByAppendingPathComponent:@"com.apple.momentsd"];

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if ((v6 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v14 = 0, v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v14], v9 = v14, v7, v8) && !v9)
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[(MOPersistenceUtilities *)v4];
      }

      v11 = v4;
    }

    else
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[MOPersistenceUtilities userCacheDirectoryPath];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)userDataDumpDirectoryPathWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    v6 = [firstObject stringByAppendingPathComponent:@"com.apple.momentsd"];
    v7 = [v6 stringByAppendingPathComponent:@"Temp"];
    v8 = [v7 stringByAppendingPathComponent:suffixCopy];

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = +[NSFileManager defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    if (v10)
    {
      goto LABEL_6;
    }

    v11 = +[NSFileManager defaultManager];
    v17 = 0;
    v12 = [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v17];
    v13 = v17;

    if (!v12 || v13)
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[MOPersistenceUtilities userDataDumpDirectoryPathWithSuffix:];
      }

      v14 = 0;
    }

    else
    {
LABEL_6:
      v14 = v8;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)getBundlingJSONURLWithDirectorySuffix:(id)suffix
{
  v3 = [MOPersistenceUtilities userDataDumpDirectoryPathWithSuffix:suffix];
  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MOPersistenceUtilities *)v5 getBundlingJSONURLWithDirectorySuffix:v6, v7, v8, v9, v10, v11, v12];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)isValidPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MOPersistenceUtilities *)v6 isValidPredicate:v7, v8, v9, v10, v11, v12, v13];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self validateCompoundPredicate:predicateCopy];
      goto LABEL_8;
    }

    v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MOPersistenceUtilities *)v6 isValidPredicate:v15, v16, v17, v18, v19, v20, v21];
    }

LABEL_11:

    v14 = 0;
    goto LABEL_12;
  }

  v5 = [self validateComparisonPredicate:predicateCopy];
LABEL_8:
  v14 = v5;
LABEL_12:

  return v14;
}

+ (BOOL)validateComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  leftExpression = [predicateCopy leftExpression];
  keyPath = [leftExpression keyPath];

  if ([self isAllowedKeyPathForEventBundle:keyPath])
  {
    rightExpression = [predicateCopy rightExpression];
    constantValue = [rightExpression constantValue];

    rightExpression2 = [predicateCopy rightExpression];
    expressionType = [rightExpression2 expressionType];

    v11 = 0;
    if (expressionType > 2)
    {
      if (expressionType == 3)
      {
LABEL_10:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (expressionType != 4)
      {
        goto LABEL_12;
      }
    }

    else if ((expressionType - 1) >= 2)
    {
      if (expressionType)
      {
LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (BOOL)validateCompoundPredicate:(id)predicate
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subpredicates = [predicate subpredicates];
  v5 = [subpredicates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subpredicates);
        }

        if (![self isValidPredicate:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [subpredicates countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (BOOL)isAllowedKeyPathForEventBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [NSSet setWithArray:&off_10036DAA0];
  v5 = [v4 containsObject:bundleCopy];

  return v5;
}

+ (void)userCacheDirectoryPath
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "cache directory path, %@", &v2, 0xCu);
}

@end