@interface MPMediaQuery
- (id)collectionAtIndex:(unint64_t)index;
- (id)collectionWithUid:(unint64_t)uid property:(id)property;
- (id)itemAtIndex:(unint64_t)index;
- (id)itemWithUid:(unint64_t)uid;
@end

@implementation MPMediaQuery

- (id)collectionAtIndex:(unint64_t)index
{
  collections = [(MPMediaQuery *)self collections];
  v6 = [collections count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    collections2 = [(MPMediaQuery *)self collections];
    v8 = [collections2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (id)itemAtIndex:(unint64_t)index
{
  items = [(MPMediaQuery *)self items];
  v6 = [items count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    items2 = [(MPMediaQuery *)self items];
    v8 = [items2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (id)itemWithUid:(unint64_t)uid
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = +[MPMediaItem propertiesForUid];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [(MPMediaQuery *)self copy];
      [v11 setShouldIncludeNonLibraryEntities:1];
      v12 = [NSNumber numberWithUnsignedLongLong:uid];
      v13 = [MPMediaPropertyPredicate predicateWithValue:v12 forProperty:v10];
      [v11 addFilterPredicate:v13];

      items = [v11 items];
      firstObject = [items firstObject];

      if (firstObject)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    firstObject = 0;
  }

  return firstObject;
}

- (id)collectionWithUid:(unint64_t)uid property:(id)property
{
  propertyCopy = property;
  v7 = [(MPMediaQuery *)self copy];
  v8 = [NSNumber numberWithUnsignedLongLong:uid];
  v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:propertyCopy];

  [v7 addFilterPredicate:v9];
  collections = [v7 collections];
  firstObject = [collections firstObject];

  return firstObject;
}

@end