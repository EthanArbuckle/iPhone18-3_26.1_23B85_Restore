@interface NSMutableDictionary
- (void)_addProperty:(id)a3 fromSupplementalContext:(id)a4;
@end

@implementation NSMutableDictionary

- (void)_addProperty:(id)a3 fromSupplementalContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 componentsSeparatedByString:@"."];
  v9 = [v8 mutableCopy];

  if ([v9 count] > 1)
  {
    [v9 removeObjectAtIndex:0];
    if ([v9 count] == 1)
    {
      v11 = [v7 objectForKey:v6];
      v12 = [v9 lastObject];
      [(NSMutableDictionary *)self setObject:v11 forKey:v12];
    }

    else
    {
      if ([v9 count] >= 2)
      {
        v13 = 1;
        do
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [v9 subarrayWithRange:{0, v13}];
          v16 = [v15 componentsJoinedByString:@"."];
          v17 = [(NSMutableDictionary *)self valueForKeyPath:v16];
          if (!v17)
          {
            v17 = [[NSMutableDictionary alloc] initWithCapacity:1];
            [(NSMutableDictionary *)self setValue:v17 forKeyPath:v16];
          }

          objc_autoreleasePoolPop(v14);
          ++v13;
        }

        while (v13 < [v9 count]);
      }

      v11 = [v9 componentsJoinedByString:@"."];
      v12 = [v7 objectForKey:v6];
      [(NSMutableDictionary *)self setValue:v12 forKeyPath:v11];
    }
  }

  else
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "We don't have a properly namespaced key: %{public}@", &v18, 0xCu);
    }
  }
}

@end