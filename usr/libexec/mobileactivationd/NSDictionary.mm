@interface NSDictionary
- (id)objectForCaseInsensitiveKey:(id)key;
@end

@implementation NSDictionary

- (id)objectForCaseInsensitiveKey:(id)key
{
  keyCopy = key;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSDictionary *)self allKeys];
  v6 = [(NSArray *)allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 compare:keyCopy options:1])
        {
          v11 = [(NSDictionary *)self objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end