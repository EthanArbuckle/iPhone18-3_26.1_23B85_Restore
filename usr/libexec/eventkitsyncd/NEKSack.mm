@interface NEKSack
- (NEKSack)init;
- (int64_t)addObject:(id)object;
- (int64_t)removeObject:(id)object;
- (void)forEachUnique:(id)unique;
@end

@implementation NEKSack

- (NEKSack)init
{
  v6.receiver = self;
  v6.super_class = NEKSack;
  v2 = [(NEKSack *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:32];
    dict = v2->_dict;
    v2->_dict = v3;
  }

  return v2;
}

- (int64_t)addObject:(id)object
{
  objectCopy = object;
  dict = [(NEKSack *)self dict];
  v6 = [dict objectForKey:objectCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_1000BB778;
  }

  integerValue = [v7 integerValue];
  dict2 = [(NEKSack *)self dict];
  v10 = [NSNumber numberWithInteger:integerValue + 1];
  [dict2 setObject:v10 forKey:objectCopy];

  return (integerValue + 1);
}

- (int64_t)removeObject:(id)object
{
  objectCopy = object;
  dict = [(NEKSack *)self dict];
  v6 = [dict objectForKey:objectCopy];

  if (v6)
  {
    if ([v6 isEqualToNumber:&off_1000BB790])
    {
      dict2 = [(NEKSack *)self dict];
      [dict2 removeObjectForKey:objectCopy];

      integerValue = 1;
    }

    else
    {
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 integerValue] - 1);
      dict3 = [(NEKSack *)self dict];
      [dict3 setObject:v9 forKey:objectCopy];

      integerValue = [v6 integerValue];
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)forEachUnique:(id)unique
{
  uniqueCopy = unique;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dict = [(NEKSack *)self dict];
  v6 = [dict countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(dict);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        dict2 = [(NEKSack *)self dict];
        v12 = [dict2 objectForKeyedSubscript:v10];
        uniqueCopy[2](uniqueCopy, v10, [v12 integerValue]);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dict countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end