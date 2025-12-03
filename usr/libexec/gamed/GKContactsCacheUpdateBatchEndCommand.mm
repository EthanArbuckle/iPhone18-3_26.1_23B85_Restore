@interface GKContactsCacheUpdateBatchEndCommand
- (void)addSyncedHandlesToIDSCache:(id)cache withContext:(id)context;
@end

@implementation GKContactsCacheUpdateBatchEndCommand

- (void)addSyncedHandlesToIDSCache:(id)cache withContext:(id)context
{
  cacheCopy = cache;
  contextCopy = context;
  if ([cacheCopy count])
  {
    v22 = contextCopy;
    v7 = [GKCDIDSInfo _gkObjectsMatchingHandles:cacheCopy withContext:contextCopy];
    v8 = [v7 _gkMapDictionaryWithKeyPath:@"handle"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = cacheCopy;
    v9 = cacheCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:{v14, v21}];
          if (!v15)
          {
            v16 = [GKCDIDSInfo alloc];
            v17 = +[GKCDIDSInfo entity];
            v18 = [(GKCDIDSInfo *)v16 initWithEntity:v17 insertIntoManagedObjectContext:v22];

            [(GKCDIDSInfo *)v18 _gkUpdateEntryWithHandle:v14 contactAssociationID:0 supportsFriendingViaPush:0 supportsMessageTransportV2:0 cohort:0xFFFFFFFFLL];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    cacheCopy = v21;
    contextCopy = v22;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Nothing to do, no new synced contacts to update IDS cache with.", buf, 2u);
    }
  }
}

@end