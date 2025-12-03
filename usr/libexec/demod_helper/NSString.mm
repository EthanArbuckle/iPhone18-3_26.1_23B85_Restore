@interface NSString
+ (id)restoreSystemContainerUUIDPathsInDict:(id)dict;
- (BOOL)isSystemContainerPath;
- (BOOL)isSystemContainerShared;
- (NSString)getSystemContainerKeyword;
- (id)getSystemContainerRootPath;
- (id)lookupSystemContainerPathUUID;
@end

@implementation NSString

+ (id)restoreSystemContainerUUIDPathsInDict:(id)dict
{
  dictCopy = dict;
  v4 = +[NSMutableDictionary dictionary];
  v27 = +[NSMutableDictionary dictionary];
  v28 = dictCopy;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [dictCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 isSystemContainerPath])
        {
          getSystemContainerKeyword = [v11 getSystemContainerKeyword];
          lookupSystemContainerPathUUID = [v4 objectForKey:getSystemContainerKeyword];

          if (lookupSystemContainerPathUUID)
          {
            goto LABEL_12;
          }

          lookupSystemContainerPathUUID = [v11 lookupSystemContainerPathUUID];
          v14 = sub_100021268();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (lookupSystemContainerPathUUID)
          {
            if (v15)
            {
              getSystemContainerKeyword2 = [v11 getSystemContainerKeyword];
              *buf = v26;
              v34 = getSystemContainerKeyword2;
              v35 = 2114;
              v36 = lookupSystemContainerPathUUID;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "System container path mapping created: %{public}@ -> %{public}@", buf, 0x16u);
            }

            getSystemContainerKeyword3 = [v11 getSystemContainerKeyword];
            [v4 setObject:lookupSystemContainerPathUUID forKey:getSystemContainerKeyword3];

LABEL_12:
            getSystemContainerKeyword4 = [v11 getSystemContainerKeyword];
            v19 = [v11 rangeOfString:getSystemContainerKeyword4];
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
              v23 = [v11 stringByReplacingCharactersInRange:v19 withString:{v21, lookupSystemContainerPathUUID}];
              v24 = [v28 objectForKey:v11];
              [v27 setObject:v24 forKey:v23];

              lookupSystemContainerPathUUID = v23;
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

            lookupSystemContainerPathUUID = v14;
          }

          continue;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  return v27;
}

- (NSString)getSystemContainerKeyword
{
  pathComponents = [(NSString *)self pathComponents];
  v3 = [pathComponents objectAtIndex:5];

  return v3;
}

- (BOOL)isSystemContainerPath
{
  stringByStandardizingPath = [(NSString *)self stringByStandardizingPath];
  v5 = 0;
  if (([stringByStandardizingPath hasPrefix:@"/var/containers/Data/System"] & 1) != 0 || objc_msgSend(stringByStandardizingPath, "hasPrefix:", @"/var/containers/Shared/SystemGroup"))
  {
    pathComponents = [stringByStandardizingPath pathComponents];
    v4 = [pathComponents count];

    if (v4 > 5)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isSystemContainerShared
{
  pathComponents = [(NSString *)self pathComponents];
  v3 = [pathComponents objectAtIndex:3];

  LOBYTE(pathComponents) = [v3 isEqualToString:@"Shared"];
  return pathComponents;
}

- (id)getSystemContainerRootPath
{
  pathComponents = [(NSString *)self pathComponents];
  v3 = [pathComponents subarrayWithRange:{0, 6}];

  v4 = [NSString pathWithComponents:v3];

  return v4;
}

- (id)lookupSystemContainerPathUUID
{
  [(NSString *)self isSystemContainerShared];
  getSystemContainerKeyword = [(NSString *)self getSystemContainerKeyword];
  [getSystemContainerKeyword UTF8String];
  container_create_or_lookup_path_for_current_user();

  return 0;
}

@end