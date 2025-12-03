@interface NSDictionary
- (id)cr_dictionaryWithValuesForPresentKeys:(id)keys;
@end

@implementation NSDictionary

- (id)cr_dictionaryWithValuesForPresentKeys:(id)keys
{
  keysCopy = keys;
  v5 = keysCopy;
  if (keysCopy)
  {
    v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [keysCopy count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(NSDictionary *)self objectForKey:v12, v15];
          if (v13)
          {
            [v6 setObject:v13 forKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  return v6;
}

@end