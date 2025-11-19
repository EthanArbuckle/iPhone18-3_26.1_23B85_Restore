@interface NSObject
- (void)addObserver:(id)a3 forKeyPaths:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)removeObserver:(id)a3 forKeyPaths:(id)a4 context:(void *)a5;
@end

@implementation NSObject

- (void)addObserver:(id)a3 forKeyPaths:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        [self addObserver:v10 forKeyPath:*(*(&v16 + 1) + 8 * v15) options:a5 context:a6];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)removeObserver:(id)a3 forKeyPaths:(id)a4 context:(void *)a5
{
  v8 = a3;
  v9 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v9);
        }

        [self removeObserver:v8 forKeyPath:*(*(&v14 + 1) + 8 * v13) context:a5];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end