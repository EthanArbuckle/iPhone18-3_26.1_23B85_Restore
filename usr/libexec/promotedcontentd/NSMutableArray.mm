@interface NSMutableArray
+ (NSMutableArray)arrayWithCountedSet:(id)set;
- (void)addRepeatingObject:(id)object count:(unint64_t)count;
@end

@implementation NSMutableArray

+ (NSMutableArray)arrayWithCountedSet:(id)set
{
  setCopy = set;
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [setCopy objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [v4 addRepeatingObject:*(*(&v11 + 1) + 8 * i) count:{objc_msgSend(setCopy, "countForObject:", *(*(&v11 + 1) + 8 * i))}];
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addRepeatingObject:(id)object count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v7 = [object copy];
      [(NSMutableArray *)self addObject:v7];

      --countCopy;
    }

    while (countCopy);
  }
}

@end