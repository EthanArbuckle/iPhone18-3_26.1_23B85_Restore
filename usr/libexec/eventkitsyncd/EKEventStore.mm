@interface EKEventStore
+ (id)eks_eventOnlyStoreFor:(id)a3;
+ (id)eks_eventOnlyStoreIgnoringExternalChangesFor:(id)a3 withClientId:(id)a4;
+ (id)eks_eventStoreFor:(id)a3;
+ (int64_t)eks_storeCount;
- (id)eks_sourcesAlwaysIncludingLocal;
@end

@implementation EKEventStore

+ (id)eks_eventOnlyStoreIgnoringExternalChangesFor:(id)a3 withClientId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[EKEventStore alloc] initWithEKOptions:132 path:0 changeTrackingClientId:v5 enablePropertyModificationLogging:0 allowDelegateSources:0];

  sub_10006A328(v6, v7);

  return v7;
}

+ (id)eks_eventOnlyStoreFor:(id)a3
{
  v3 = a3;
  v4 = [[EKEventStore alloc] initWithEKOptions:128];
  sub_10006A328(v3, v4);

  return v4;
}

+ (id)eks_eventStoreFor:(id)a3
{
  v3 = a3;
  v4 = [EKChangeTrackingClientId alloc];
  v5 = +[NEKEnvironment instance];
  v6 = [v5 clientName];
  v7 = [v4 initWithCustomClientId:v6];

  v8 = [[EKEventStore alloc] initWithEKOptions:4 path:0 changeTrackingClientId:v7 enablePropertyModificationLogging:0 allowDelegateSources:0];
  sub_10006A328(v3, v8);

  return v8;
}

+ (int64_t)eks_storeCount
{
  v2 = sub_10006ABB4();
  os_unfair_lock_lock(&unk_1000D1878);
  v3 = [v2 keyEnumerator];
  v4 = [v3 allObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v2 objectForKey:{v10, v13}];

        if (v11)
        {
          ++v7;
        }

        else
        {
          [v2 removeObjectForKey:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    v6 = v7;
  }

  os_unfair_lock_unlock(&unk_1000D1878);
  return v6;
}

- (id)eks_sourcesAlwaysIncludingLocal
{
  v3 = [(EKEventStore *)self sources];
  v4 = [(EKEventStore *)self localSource];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEqual:{v4, v13}])
        {

          v10 = v5;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [v5 arrayByAddingObject:v4];
LABEL_11:
  v11 = v10;

  return v11;
}

@end