@interface NSArray
- (BOOL)isValidAssetHandleArray;
- (BOOL)isValidAssetTypeArray;
@end

@implementation NSArray

- (BOOL)isValidAssetTypeArray
{
  if (!self || ![(NSArray *)self count])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [(NSArray *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || !+[MASDAssetDescriptor isValidType:](MASDAssetDescriptor, "isValidType:", [v8 integerValue]))
        {
          v9 = 0;
          goto LABEL_16;
        }
      }

      v5 = [(NSArray *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (BOOL)isValidAssetHandleArray
{
  if (!self || ![(NSArray *)self count])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [(NSArray *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 isValidAssetHandle])
        {
          v9 = 0;
          goto LABEL_16;
        }
      }

      v5 = [(NSArray *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

@end