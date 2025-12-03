@interface GKCDIDSInfoList
+ (id)_gkPrimaryListWithContext:(id)context;
- (void)_gkReset;
@end

@implementation GKCDIDSInfoList

+ (id)_gkPrimaryListWithContext:(id)context
{
  contextCopy = context;
  v5 = [GKCDIDSInfoList _gkObjectsMatchingPredicate:0 withContext:contextCopy];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7 = firstObject;
  }

  else
  {
    v8 = [GKCDIDSInfoList alloc];
    entity = [self entity];
    v7 = [(GKCDIDSInfoList *)v8 initWithEntity:entity insertIntoManagedObjectContext:contextCopy];
  }

  return v7;
}

- (void)_gkReset
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Resetting cached IDS list", v5, 2u);
  }

  [(GKCDIDSInfoList *)self setUpdateIntervalStartTimeStamp:0];
  [(GKCDIDSInfoList *)self setUpdateIntervalHandlesCount:0];
}

@end