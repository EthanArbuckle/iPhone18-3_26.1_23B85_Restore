@interface APManagedContendDataEnumerator
- (APManagedContendDataEnumerator)initWithManagedContext:(id)context contentDataItemIds:(id)ids;
- (id)nextObject;
@end

@implementation APManagedContendDataEnumerator

- (APManagedContendDataEnumerator)initWithManagedContext:(id)context contentDataItemIds:(id)ids
{
  contextCopy = context;
  idsCopy = ids;
  v9 = [(APManagedContendDataEnumerator *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managedContext, context);
    objc_storeStrong(&v10->_contentDataItemIds, ids);
    [(APManagedContendDataEnumerator *)v10 setCurrentContentDataItemIdIndex:0];
  }

  return v10;
}

- (id)nextObject
{
  for (i = self; ; self = i)
  {
    currentContentDataItemIdIndex = [(APManagedContendDataEnumerator *)self currentContentDataItemIdIndex];
    contentDataItemIds = [(APManagedContendDataEnumerator *)i contentDataItemIds];
    v5 = [contentDataItemIds count];

    if (currentContentDataItemIdIndex >= v5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    contentDataItemIds2 = [(APManagedContendDataEnumerator *)i contentDataItemIds];
    currentContentDataItemIdIndex2 = [(APManagedContendDataEnumerator *)i currentContentDataItemIdIndex];
    [(APManagedContendDataEnumerator *)i setCurrentContentDataItemIdIndex:currentContentDataItemIdIndex2 + 1];
    v8 = [contentDataItemIds2 objectAtIndexedSubscript:currentContentDataItemIdIndex2];

    managedContext = [(APManagedContendDataEnumerator *)i managedContext];
    v10 = [managedContext managedContentDataForId:v8];

    if (v10)
    {
      if ([v10 isAvailable])
      {
        break;
      }
    }
  }

LABEL_7:

  return v10;
}

@end