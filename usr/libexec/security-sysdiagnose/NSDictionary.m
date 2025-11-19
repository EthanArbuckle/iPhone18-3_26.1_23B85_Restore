@interface NSDictionary
- (id)asOneLineString;
@end

@implementation NSDictionary

- (id)asOneLineString
{
  v2 = self;
  v3 = [NSMutableString stringWithCapacity:0];
  v4 = [(NSDictionary *)v2 allKeys];
  v5 = [v4 sortedArrayUsingSelector:"compare:"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSDictionary *)v2 objectForKeyedSubscript:v11];
        [v3 appendFormat:@"%@=%@, ", v11, v12, v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v3 substringToIndex:{objc_msgSend(v3, "length") - (objc_msgSend(v3, "length") != 0)}];

  return v13;
}

@end