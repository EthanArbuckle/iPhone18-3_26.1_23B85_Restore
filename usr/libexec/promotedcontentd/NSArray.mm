@interface NSArray
- (id)allIdentifiers;
- (id)arrayByAddingObject:(id)object forIdentifier:(id)identifier;
- (id)arrayByRemovingObjectForIdentifier:(id)identifier;
- (id)objectForIdentifier:(id)identifier;
@end

@implementation NSArray

- (id)allIdentifiers
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v5 = [(NSArray *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];

        if (identifier)
        {
          identifier2 = [v9 identifier];
          [v3 addObject:identifier2];
        }
      }

      v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)objectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    selfCopy = self;
    v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(selfCopy);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:identifierCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)arrayByAddingObject:(id)object forIdentifier:(id)identifier
{
  objectCopy = object;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    if (objectCopy)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10037DF28;
      v15 = &unk_100480838;
      v16 = identifierCopy;
      v17 = &v18;
      [(NSArray *)self enumerateObjectsUsingBlock:&v12];
      if (v19[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [(NSArray *)self arrayByAddingObject:objectCopy, v12, v13, v14, v15];
      }

      else
      {
        v10 = [(NSArray *)self mutableCopy:v12];
        [v10 replaceObjectAtIndex:v19[3] withObject:objectCopy];
        v8 = [v10 copy];
      }

      _Block_object_dispose(&v18, 8);
      goto LABEL_10;
    }

    selfCopy = [(NSArray *)self arrayByRemovingObjectForIdentifier:identifierCopy];
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;
LABEL_10:

  return v8;
}

- (id)arrayByRemovingObjectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10037E084;
    v8[3] = &unk_100480860;
    v9 = identifierCopy;
    v5 = [NSPredicate predicateWithBlock:v8];
    selfCopy = [(NSArray *)self filteredArrayUsingPredicate:v5];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end