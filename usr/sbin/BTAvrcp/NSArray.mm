@interface NSArray
- (void)enumerateAttributeIDs:(id)ds;
@end

@implementation NSArray

- (void)enumerateAttributeIDs:(id)ds
{
  dsCopy = ds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        dsCopy[2](dsCopy, [*(*(&v10 + 1) + 8 * v9) unsignedIntegerValue]);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end