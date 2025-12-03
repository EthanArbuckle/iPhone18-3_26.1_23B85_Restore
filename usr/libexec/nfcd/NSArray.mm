@interface NSArray
- (BOOL)NF_isEqualToExpressConfigList:(id)list;
- (unint64_t)NF_expressConfigHash;
@end

@implementation NSArray

- (BOOL)NF_isEqualToExpressConfigList:(id)list
{
  listCopy = list;
  v5 = [(NSArray *)self count];
  if (v5 == [listCopy count])
  {
    if ([(NSArray *)self count])
    {
      v6 = [[NSMutableArray alloc] initWithArray:self];
      v7 = [[NSMutableArray alloc] initWithArray:listCopy];
      while (2)
      {
        firstObject = [v6 firstObject];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            if ([firstObject NF_isEqualToExpressConfig:v14])
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
              if (v11)
              {
                goto LABEL_6;
              }

              goto LABEL_16;
            }
          }

          v15 = v14;

          [v6 removeObject:firstObject];
          [v9 removeObject:v15];

          if ([v6 count])
          {
            continue;
          }

          v16 = 1;
        }

        else
        {
LABEL_16:

          v16 = 0;
        }

        break;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)NF_expressConfigHash
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v3 = [(NSArray *)selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) NF_expressConfigHash];
      }

      v4 = [(NSArray *)selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end