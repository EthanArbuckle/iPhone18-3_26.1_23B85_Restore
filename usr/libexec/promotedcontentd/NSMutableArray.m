@interface NSMutableArray
+ (NSMutableArray)arrayWithCountedSet:(id)a3;
- (void)addRepeatingObject:(id)a3 count:(unint64_t)a4;
@end

@implementation NSMutableArray

+ (NSMutableArray)arrayWithCountedSet:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addRepeatingObject:*(*(&v11 + 1) + 8 * i) count:{objc_msgSend(v3, "countForObject:", *(*(&v11 + 1) + 8 * i))}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addRepeatingObject:(id)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v7 = [a3 copy];
      [(NSMutableArray *)self addObject:v7];

      --v4;
    }

    while (v4);
  }
}

@end