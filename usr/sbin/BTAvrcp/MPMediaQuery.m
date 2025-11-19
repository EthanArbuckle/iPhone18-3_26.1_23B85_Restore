@interface MPMediaQuery
- (id)collectionAtIndex:(unint64_t)a3;
- (id)collectionWithUid:(unint64_t)a3 property:(id)a4;
- (id)itemAtIndex:(unint64_t)a3;
- (id)itemWithUid:(unint64_t)a3;
@end

@implementation MPMediaQuery

- (id)collectionAtIndex:(unint64_t)a3
{
  v5 = [(MPMediaQuery *)self collections];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MPMediaQuery *)self collections];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)itemAtIndex:(unint64_t)a3
{
  v5 = [(MPMediaQuery *)self items];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MPMediaQuery *)self items];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)itemWithUid:(unint64_t)a3
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
      v12 = [NSNumber numberWithUnsignedLongLong:a3];
      v13 = [MPMediaPropertyPredicate predicateWithValue:v12 forProperty:v10];
      [v11 addFilterPredicate:v13];

      v14 = [v11 items];
      v15 = [v14 firstObject];

      if (v15)
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
    v15 = 0;
  }

  return v15;
}

- (id)collectionWithUid:(unint64_t)a3 property:(id)a4
{
  v6 = a4;
  v7 = [(MPMediaQuery *)self copy];
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:v6];

  [v7 addFilterPredicate:v9];
  v10 = [v7 collections];
  v11 = [v10 firstObject];

  return v11;
}

@end