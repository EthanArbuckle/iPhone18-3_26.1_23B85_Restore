@interface NSArray
- (id)concatenateWithSeparator:(id)a3;
@end

@implementation NSArray

- (id)concatenateWithSeparator:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v16 + 1) + 8 * v11);
        [v5 appendString:{v12, v16}];
        v14 = [v13 description];
        [v5 appendString:v14];

        v10 = v4;
        v11 = v11 + 1;
        v12 = v10;
      }

      while (v8 != v11);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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