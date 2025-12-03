@interface NSMapTable
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
@end

@implementation NSMapTable

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [(NSMapTable *)selfCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(selfCopy);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = [(NSMapTable *)selfCopy objectForKey:v10, v12];
      blockCopy[2](blockCopy, v10, v11, &v16);

      if (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMapTable *)selfCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end