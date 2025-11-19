@interface NSManagedObject
+ (id)_gkFetchRequest;
+ (id)_gkObjectsFromFetchRequest:(id)a3 withContext:(id)a4;
+ (id)_gkObjectsMatchingPredicate:(id)a3 withContext:(id)a4;
+ (id)_gkRetrieveCleanEntry:(id)a3 request:(id)a4;
- (BOOL)_gkIsExpired:(id)a3;
@end

@implementation NSManagedObject

- (BOOL)_gkIsExpired:(id)a3
{
  v3 = a3;
  v4 = +[GKPreferences shared];
  v5 = [v4 networkManagerIgnoreCache];

  v6 = 1;
  if (v3 && (v5 & 1) == 0)
  {
    [v3 timeIntervalSinceNow];
    v6 = v7 <= 0.0;
  }

  return v6;
}

+ (id)_gkFetchRequest
{
  v2 = [a1 fetchRequest];
  [v2 setIncludesSubentities:1];
  [v2 setIncludesPropertyValues:1];
  [v2 setIncludesPendingChanges:1];
  [v2 setReturnsObjectsAsFaults:0];

  return v2;
}

+ (id)_gkRetrieveCleanEntry:(id)a3 request:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v15];
  v8 = v15;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028A9B4(v8, v10, v6);
    }

    v11 = 0;
  }

  else
  {
    if ([v7 count] == 1)
    {
      goto LABEL_11;
    }

    v11 = 1;
  }

  while ([v7 count] > v11)
  {
    v12 = [v7 objectAtIndexedSubscript:v11];
    [v5 deleteObject:v12];

    ++v11;
  }

LABEL_11:
  v13 = [v7 lastObject];

  return v13;
}

+ (id)_gkObjectsMatchingPredicate:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _gkFetchRequest];
  [v8 setPredicate:v7];

  v9 = [a1 _gkObjectsFromFetchRequest:v8 withContext:v6];

  return v9;
}

+ (id)_gkObjectsFromFetchRequest:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v9 = 0;
  v6 = [v5 executeFetchRequest:a3 error:&v9];
  v7 = v9;
  if (v7)
  {
    [v5 _gkHandleFetchError:v7];
  }

  return v6;
}

@end