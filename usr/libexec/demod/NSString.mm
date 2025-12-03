@interface NSString
+ (id)restoreSystemContainerUUIDPathsInDict:(id)dict;
- (BOOL)isSystemContainerPath;
- (BOOL)isSystemContainerShared;
- (NSString)getSystemContainerKeyword;
- (id)_dataUsingHexEncoding;
- (id)_stringForHMAC;
- (id)getSystemContainerRootPath;
- (id)lookupSystemContainerPathUUID;
@end

@implementation NSString

- (id)_stringForHMAC
{
  v2 = [(NSString *)self dataUsingEncoding:1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_dataUsingHexEncoding
{
  v3 = [(NSString *)self length];
  if (v3)
  {
    v4 = v3;
    if ((v3 & 1) == 0)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      theString = self;
      v46 = 0;
      v47 = v3;
      CharactersPtr = CFStringGetCharactersPtr(self);
      CStringPtr = 0;
      v44 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(self, 0x600u);
      }

      v7 = v4 >> 1;
      v48 = 0;
      v49 = 0;
      v45 = CStringPtr;
      v8 = [NSMutableData dataWithLength:v4 >> 1, v35, v36, v37, v38, v39, v40, v41, v42];
      mutableBytes = [v8 mutableBytes];
      v10 = 0;
      v11 = 0;
      v12 = 64;
      while (1)
      {
        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        v14 = v47;
        if (v47 <= v11)
        {
LABEL_55:
          v32 = 0;
          goto LABEL_57;
        }

        if (v44)
        {
          break;
        }

        if (!v45)
        {
          v23 = v48;
          if (v49 <= v11 || v48 > v11)
          {
            v25 = -v13;
            v26 = v13 + v10;
            v27 = v12 - v13;
            v28 = v11 + v25;
            v29 = v28 + 64;
            if (v28 + 64 >= v47)
            {
              v29 = v47;
            }

            v48 = v28;
            v49 = v29;
            if (v47 >= v27)
            {
              v14 = v27;
            }

            v51.location = v28 + v46;
            v51.length = v14 + v26;
            CFStringGetCharacters(theString, v51, &v35);
            v23 = v48;
          }

          v15 = &v35 - v23;
          goto LABEL_12;
        }

        v16 = v45[v46 + v11];
LABEL_15:
        if ((v16 - 48) >= 0xAu)
        {
          if ((v16 - 65) >= 6u)
          {
            if ((v16 - 97) > 5u)
            {
              goto LABEL_55;
            }

            v17 = -87;
          }

          else
          {
            v17 = -55;
          }
        }

        else
        {
          v17 = -48;
        }

        v18 = v11 + 1;
        v19 = v47;
        if (v47 <= v11 + 1)
        {
          goto LABEL_55;
        }

        if (v44)
        {
          v20 = &v44[v46];
LABEL_24:
          v21 = v20[v11 + 1];
          goto LABEL_27;
        }

        if (!v45)
        {
          if (v49 <= v18 || (v30 = v48, v48 > v18))
          {
            v31 = v11 - 3;
            if (v11 < 4)
            {
              v31 = 0;
            }

            if (v31 + 64 < v47)
            {
              v19 = v31 + 64;
            }

            v48 = v31;
            v49 = v19;
            v52.length = v19 - v31;
            v52.location = v46 + v31;
            CFStringGetCharacters(theString, v52, &v35);
            v30 = v48;
          }

          v20 = &v35 - v30;
          goto LABEL_24;
        }

        v21 = v45[v46 + 1 + v11];
LABEL_27:
        if ((v21 - 48) >= 0xAu)
        {
          if ((v21 - 65) >= 6u)
          {
            if ((v21 - 97) > 5u)
            {
              goto LABEL_55;
            }

            v22 = -87;
          }

          else
          {
            v22 = -55;
          }
        }

        else
        {
          v22 = -48;
        }

        *mutableBytes++ = (v22 + v21) | (16 * (v17 + v16));
        v10 -= 2;
        v12 += 2;
        v11 += 2;
        if (!--v7)
        {
          _dataUsingHexEncoding = [v8 copy];
          goto LABEL_56;
        }
      }

      v15 = &v44[v46];
LABEL_12:
      v16 = v15[v11];
      goto LABEL_15;
    }

    v8 = [@"0" stringByAppendingString:self];
    _dataUsingHexEncoding = [v8 _dataUsingHexEncoding];
LABEL_56:
    v32 = _dataUsingHexEncoding;
LABEL_57:
  }

  else
  {
    v32 = +[NSData data];
  }

  return v32;
}

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
          v14 = sub_100063A54();
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
              v22 = sub_100063A54();
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