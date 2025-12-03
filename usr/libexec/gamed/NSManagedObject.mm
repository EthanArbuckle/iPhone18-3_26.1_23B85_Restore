@interface NSManagedObject
+ (id)_gkFetchRequest;
+ (id)_gkObjectsFromFetchRequest:(id)request withContext:(id)context;
+ (id)_gkObjectsMatchingPredicate:(id)predicate withContext:(id)context;
+ (id)_gkRetrieveCleanEntry:(id)entry request:(id)request;
- (BOOL)_gkIsExpired:(id)expired;
@end

@implementation NSManagedObject

- (BOOL)_gkIsExpired:(id)expired
{
  expiredCopy = expired;
  v4 = +[GKPreferences shared];
  networkManagerIgnoreCache = [v4 networkManagerIgnoreCache];

  v6 = 1;
  if (expiredCopy && (networkManagerIgnoreCache & 1) == 0)
  {
    [expiredCopy timeIntervalSinceNow];
    v6 = v7 <= 0.0;
  }

  return v6;
}

+ (id)_gkFetchRequest
{
  fetchRequest = [self fetchRequest];
  [fetchRequest setIncludesSubentities:1];
  [fetchRequest setIncludesPropertyValues:1];
  [fetchRequest setIncludesPendingChanges:1];
  [fetchRequest setReturnsObjectsAsFaults:0];

  return fetchRequest;
}

+ (id)_gkRetrieveCleanEntry:(id)entry request:(id)request
{
  entryCopy = entry;
  requestCopy = request;
  v15 = 0;
  v7 = [entryCopy executeFetchRequest:requestCopy error:&v15];
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
      sub_10028A9B4(v8, v10, requestCopy);
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
    [entryCopy deleteObject:v12];

    ++v11;
  }

LABEL_11:
  lastObject = [v7 lastObject];

  return lastObject;
}

+ (id)_gkObjectsMatchingPredicate:(id)predicate withContext:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  _gkFetchRequest = [self _gkFetchRequest];
  [_gkFetchRequest setPredicate:predicateCopy];

  v9 = [self _gkObjectsFromFetchRequest:_gkFetchRequest withContext:contextCopy];

  return v9;
}

+ (id)_gkObjectsFromFetchRequest:(id)request withContext:(id)context
{
  contextCopy = context;
  v9 = 0;
  v6 = [contextCopy executeFetchRequest:request error:&v9];
  v7 = v9;
  if (v7)
  {
    [contextCopy _gkHandleFetchError:v7];
  }

  return v6;
}

@end