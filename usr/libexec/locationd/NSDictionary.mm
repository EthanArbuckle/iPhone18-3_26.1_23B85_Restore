@interface NSDictionary
- (id)cl_deepCopy;
- (id)cl_deepMutableCopy;
@end

@implementation NSDictionary

- (id)cl_deepCopy
{
  cl_deepMutableCopy = [(NSDictionary *)self cl_deepMutableCopy];
  v3 = [[NSDictionary alloc] initWithDictionary:cl_deepMutableCopy];

  return v3;
}

- (id)cl_deepMutableCopy
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSDictionary *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(self);
        }

        cl_deepCopy = [*(*(&v11 + 1) + 8 * v7) cl_deepCopy];
        v9 = [-[NSDictionary objectForKeyedSubscript:](self objectForKeyedSubscript:{cl_deepCopy), "cl_deepCopy"}];
        [v3 setObject:v9 forKeyedSubscript:cl_deepCopy];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSDictionary *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

@end