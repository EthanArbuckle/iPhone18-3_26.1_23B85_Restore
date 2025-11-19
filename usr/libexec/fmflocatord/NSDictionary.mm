@interface NSDictionary
- (id)stringForCaseInsensitiveStringKey:(id)a3;
@end

@implementation NSDictionary

- (id)stringForCaseInsensitiveStringKey:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![v9 compare:v4 options:{1, v11}])
        {
          v6 = [(NSDictionary *)v5 objectForKeyedSubscript:v9];
          goto LABEL_11;
        }
      }

      v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end