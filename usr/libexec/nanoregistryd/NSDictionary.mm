@interface NSDictionary
- (id)joinedDescription;
@end

@implementation NSDictionary

- (id)joinedDescription
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSDictionary *)v4 objectForKeyedSubscript:v9];
        v11 = [v9 description];
        v12 = [v10 description];
        v13 = [NSString stringWithFormat:@"%@: %@", v11, v12, v16];
        [v3 addObject:v13];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [v3 componentsJoinedByString:{@", "}];

  return v14;
}

@end