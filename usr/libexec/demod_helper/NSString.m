@interface NSString
+ (id)restoreSystemContainerUUIDPathsInDict:(id)a3;
- (BOOL)isSystemContainerPath;
- (BOOL)isSystemContainerShared;
- (NSString)getSystemContainerKeyword;
- (id)getSystemContainerRootPath;
- (id)lookupSystemContainerPathUUID;
@end

@implementation NSString

+ (id)restoreSystemContainerUUIDPathsInDict:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v27 = +[NSMutableDictionary dictionary];
  v28 = v3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    *&v7 = 138543618;
    v26 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 isSystemContainerPath])
        {
          v12 = [v11 getSystemContainerKeyword];
          v13 = [v4 objectForKey:v12];

          if (v13)
          {
            goto LABEL_12;
          }

          v13 = [v11 lookupSystemContainerPathUUID];
          v14 = sub_100021268();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v15)
            {
              v16 = [v11 getSystemContainerKeyword];
              *buf = v26;
              v34 = v16;
              v35 = 2114;
              v36 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "System container path mapping created: %{public}@ -> %{public}@", buf, 0x16u);
            }

            v17 = [v11 getSystemContainerKeyword];
            [v4 setObject:v13 forKey:v17];

LABEL_12:
            v18 = [v11 getSystemContainerKeyword];
            v19 = [v11 rangeOfString:v18];
            v21 = v20;

            if (v19 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = sub_100021268();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v34 = v11;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Cannot locate system container path identifier in path '%{public}@'. Skipping...", buf, 0xCu);
              }
            }

            else
            {
              v23 = [v11 stringByReplacingCharactersInRange:v19 withString:{v21, v13}];
              v24 = [v28 objectForKey:v11];
              [v27 setObject:v24 forKey:v23];

              v13 = v23;
            }
          }

          else
          {
            if (v15)
            {
              *buf = 138543362;
              v34 = v11;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot lookup system container path UUID from path '%{public}@'. Skipping...", buf, 0xCu);
            }

            v13 = v14;
          }

          continue;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  return v27;
}

- (NSString)getSystemContainerKeyword
{
  v2 = [(NSString *)self pathComponents];
  v3 = [v2 objectAtIndex:5];

  return v3;
}

- (BOOL)isSystemContainerPath
{
  v2 = [(NSString *)self stringByStandardizingPath];
  v5 = 0;
  if (([v2 hasPrefix:@"/var/containers/Data/System"] & 1) != 0 || objc_msgSend(v2, "hasPrefix:", @"/var/containers/Shared/SystemGroup"))
  {
    v3 = [v2 pathComponents];
    v4 = [v3 count];

    if (v4 > 5)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isSystemContainerShared
{
  v2 = [(NSString *)self pathComponents];
  v3 = [v2 objectAtIndex:3];

  LOBYTE(v2) = [v3 isEqualToString:@"Shared"];
  return v2;
}

- (id)getSystemContainerRootPath
{
  v2 = [(NSString *)self pathComponents];
  v3 = [v2 subarrayWithRange:{0, 6}];

  v4 = [NSString pathWithComponents:v3];

  return v4;
}

- (id)lookupSystemContainerPathUUID
{
  [(NSString *)self isSystemContainerShared];
  v3 = [(NSString *)self getSystemContainerKeyword];
  [v3 UTF8String];
  container_create_or_lookup_path_for_current_user();

  return 0;
}

@end