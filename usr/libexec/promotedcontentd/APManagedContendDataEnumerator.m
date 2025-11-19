@interface APManagedContendDataEnumerator
- (APManagedContendDataEnumerator)initWithManagedContext:(id)a3 contentDataItemIds:(id)a4;
- (id)nextObject;
@end

@implementation APManagedContendDataEnumerator

- (APManagedContendDataEnumerator)initWithManagedContext:(id)a3 contentDataItemIds:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(APManagedContendDataEnumerator *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managedContext, a3);
    objc_storeStrong(&v10->_contentDataItemIds, a4);
    [(APManagedContendDataEnumerator *)v10 setCurrentContentDataItemIdIndex:0];
  }

  return v10;
}

- (id)nextObject
{
  for (i = self; ; self = i)
  {
    v3 = [(APManagedContendDataEnumerator *)self currentContentDataItemIdIndex];
    v4 = [(APManagedContendDataEnumerator *)i contentDataItemIds];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v6 = [(APManagedContendDataEnumerator *)i contentDataItemIds];
    v7 = [(APManagedContendDataEnumerator *)i currentContentDataItemIdIndex];
    [(APManagedContendDataEnumerator *)i setCurrentContentDataItemIdIndex:v7 + 1];
    v8 = [v6 objectAtIndexedSubscript:v7];

    v9 = [(APManagedContendDataEnumerator *)i managedContext];
    v10 = [v9 managedContentDataForId:v8];

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