@interface ServiceAllowList
- (BOOL)allowsService:(id)service;
- (ServiceAllowList)initWithAllowList:(id)list;
@end

@implementation ServiceAllowList

- (ServiceAllowList)initWithAllowList:(id)list
{
  listCopy = list;
  v24.receiver = self;
  v24.super_class = ServiceAllowList;
  v5 = [(ServiceAllowList *)&v24 init];
  if (v5)
  {
    v6 = [listCopy containsObject:@"*"];
    v5->_allowsAllServices = v6;
    if ((v6 & 1) == 0)
    {
      v7 = +[NSMutableSet set];
      v8 = +[NSMutableSet set];
      v9 = [NSCharacterSet characterSetWithCharactersInString:@"*?[]"];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v19 = listCopy;
      v10 = listCopy;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v15 rangeOfCharacterFromSet:v9] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v16 = v7;
              }

              else
              {
                v16 = v8;
              }

              [v16 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      if ([v7 count])
      {
        objc_storeStrong(&v5->_exactStrings, v7);
      }

      listCopy = v19;
      if ([v8 count])
      {
        objc_storeStrong(&v5->_wildcardPatterns, v8);
      }
    }

    v17 = v5;
  }

  return v5;
}

- (BOOL)allowsService:(id)service
{
  serviceCopy = service;
  if (self->_allowsAllServices || [(NSSet *)self->_exactStrings containsObject:serviceCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_wildcardPatterns;
    v5 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (!fnmatch([v9 UTF8String], objc_msgSend(serviceCopy, "UTF8String"), 0))
          {
            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }

        v5 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v5;
}

@end