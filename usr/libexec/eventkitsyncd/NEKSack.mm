@interface NEKSack
- (NEKSack)init;
- (int64_t)addObject:(id)a3;
- (int64_t)removeObject:(id)a3;
- (void)forEachUnique:(id)a3;
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

- (int64_t)addObject:(id)a3
{
  v4 = a3;
  v5 = [(NEKSack *)self dict];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_1000BB778;
  }

  v8 = [v7 integerValue];
  v9 = [(NEKSack *)self dict];
  v10 = [NSNumber numberWithInteger:v8 + 1];
  [v9 setObject:v10 forKey:v4];

  return (v8 + 1);
}

- (int64_t)removeObject:(id)a3
{
  v4 = a3;
  v5 = [(NEKSack *)self dict];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    if ([v6 isEqualToNumber:&off_1000BB790])
    {
      v7 = [(NEKSack *)self dict];
      [v7 removeObjectForKey:v4];

      v8 = 1;
    }

    else
    {
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 integerValue] - 1);
      v10 = [(NEKSack *)self dict];
      [v10 setObject:v9 forKey:v4];

      v8 = [v6 integerValue];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)forEachUnique:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NEKSack *)self dict];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(NEKSack *)self dict];
        v12 = [v11 objectForKeyedSubscript:v10];
        v4[2](v4, v10, [v12 integerValue]);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end