@interface GKContactsCacheUpdateBatchStartCommand
- (id)executeWithContext:(id)a3;
@end

@implementation GKContactsCacheUpdateBatchStartCommand

- (id)executeWithContext:(id)a3
{
  v3 = [GKCDContactInfoList _gkObjectsMatchingPredicate:0 withContext:a3];
  v4 = [v3 firstObject];

  v5 = 0;
  if (!v4)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No contact list currently exist. Likely due to a clear cache event. Stopping.", v9, 2u);
    }

    v5 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:5 userInfo:0];
  }

  return v5;
}

@end