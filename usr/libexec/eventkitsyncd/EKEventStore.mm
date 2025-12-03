@interface EKEventStore
+ (id)eks_eventOnlyStoreFor:(id)for;
+ (id)eks_eventOnlyStoreIgnoringExternalChangesFor:(id)for withClientId:(id)id;
+ (id)eks_eventStoreFor:(id)for;
+ (int64_t)eks_storeCount;
- (id)eks_sourcesAlwaysIncludingLocal;
@end

@implementation EKEventStore

+ (id)eks_eventOnlyStoreIgnoringExternalChangesFor:(id)for withClientId:(id)id
{
  idCopy = id;
  forCopy = for;
  v7 = [[EKEventStore alloc] initWithEKOptions:132 path:0 changeTrackingClientId:idCopy enablePropertyModificationLogging:0 allowDelegateSources:0];

  sub_10006A328(forCopy, v7);

  return v7;
}

+ (id)eks_eventOnlyStoreFor:(id)for
{
  forCopy = for;
  v4 = [[EKEventStore alloc] initWithEKOptions:128];
  sub_10006A328(forCopy, v4);

  return v4;
}

+ (id)eks_eventStoreFor:(id)for
{
  forCopy = for;
  v4 = [EKChangeTrackingClientId alloc];
  v5 = +[NEKEnvironment instance];
  clientName = [v5 clientName];
  v7 = [v4 initWithCustomClientId:clientName];

  v8 = [[EKEventStore alloc] initWithEKOptions:4 path:0 changeTrackingClientId:v7 enablePropertyModificationLogging:0 allowDelegateSources:0];
  sub_10006A328(forCopy, v8);

  return v8;
}

+ (int64_t)eks_storeCount
{
  v2 = sub_10006ABB4();
  os_unfair_lock_lock(&unk_1000D1878);
  keyEnumerator = [v2 keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allObjects;
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
  sources = [(EKEventStore *)self sources];
  localSource = [(EKEventStore *)self localSource];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = sources;
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

        if ([*(*(&v13 + 1) + 8 * i) isEqual:{localSource, v13}])
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

  v10 = [v5 arrayByAddingObject:localSource];
LABEL_11:
  v11 = v10;

  return v11;
}

@end