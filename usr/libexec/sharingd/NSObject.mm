@interface NSObject
- (void)addObserver:(id)observer forKeyPaths:(id)paths options:(unint64_t)options context:(void *)context;
- (void)removeObserver:(id)observer forKeyPaths:(id)paths context:(void *)context;
@end

@implementation NSObject

- (void)addObserver:(id)observer forKeyPaths:(id)paths options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  pathsCopy = paths;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [pathsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(pathsCopy);
        }

        [self addObserver:observerCopy forKeyPath:*(*(&v16 + 1) + 8 * v15) options:options context:context];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [pathsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)removeObserver:(id)observer forKeyPaths:(id)paths context:(void *)context
{
  observerCopy = observer;
  pathsCopy = paths;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(pathsCopy);
        }

        [self removeObserver:observerCopy forKeyPath:*(*(&v14 + 1) + 8 * v13) context:context];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end