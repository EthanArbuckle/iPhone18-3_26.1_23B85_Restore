@interface NSArray
- (id)concatenateWithSeparator:(id)separator;
@end

@implementation NSArray

- (id)concatenateWithSeparator:(id)separator
{
  separatorCopy = separator;
  v5 = +[NSMutableString string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = &stru_1000643F8;
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v13 = *(*(&v16 + 1) + 8 * v11);
        [v5 appendString:{v12, v16}];
        v14 = [v13 description];
        [v5 appendString:v14];

        v10 = separatorCopy;
        v11 = v11 + 1;
        v12 = v10;
      }

      while (v8 != v11);
      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = &stru_1000643F8;
  }

  return v5;
}

@end