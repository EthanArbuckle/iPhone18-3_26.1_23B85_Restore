@interface NSArray
- (id)allIdentifiers;
- (id)arrayByAddingObject:(id)a3 forIdentifier:(id)a4;
- (id)arrayByRemovingObjectForIdentifier:(id)a3;
- (id)objectForIdentifier:(id)a3;
@end

@implementation NSArray

- (id)allIdentifiers
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];

        if (v10)
        {
          v11 = [v9 identifier];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)objectForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)arrayByAddingObject:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    if (v6)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10037DF28;
      v15 = &unk_100480838;
      v16 = v7;
      v17 = &v18;
      [(NSArray *)self enumerateObjectsUsingBlock:&v12];
      if (v19[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [(NSArray *)self arrayByAddingObject:v6, v12, v13, v14, v15];
      }

      else
      {
        v10 = [(NSArray *)self mutableCopy:v12];
        [v10 replaceObjectAtIndex:v19[3] withObject:v6];
        v8 = [v10 copy];
      }

      _Block_object_dispose(&v18, 8);
      goto LABEL_10;
    }

    v9 = [(NSArray *)self arrayByRemovingObjectForIdentifier:v7];
  }

  else
  {
    v9 = self;
  }

  v8 = v9;
LABEL_10:

  return v8;
}

- (id)arrayByRemovingObjectForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10037E084;
    v8[3] = &unk_100480860;
    v9 = v4;
    v5 = [NSPredicate predicateWithBlock:v8];
    v6 = [(NSArray *)self filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

@end