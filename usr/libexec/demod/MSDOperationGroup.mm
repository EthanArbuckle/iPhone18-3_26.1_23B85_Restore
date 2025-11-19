@interface MSDOperationGroup
- (MSDOperationGroup)init;
- (MSDOperationGroup)initWithOperationGroups:(id)a3;
- (MSDOperationGroup)initWithOperations:(id)a3;
- (void)_addOperationGroups:(id)a3;
- (void)_addOperations:(id)a3;
- (void)addDependency:(id)a3;
@end

@implementation MSDOperationGroup

- (MSDOperationGroup)init
{
  v10.receiver = self;
  v10.super_class = MSDOperationGroup;
  v2 = [(MSDOperationGroup *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    rootOperations = v2->_rootOperations;
    v2->_rootOperations = v3;

    v5 = objc_alloc_init(NSMutableSet);
    leafOperations = v2->_leafOperations;
    v2->_leafOperations = v5;

    v7 = objc_alloc_init(NSMutableSet);
    [(MSDOperationGroup *)v2 setAllOperations:v7];

    [(MSDOperationGroup *)v2 setIsRoot:1];
    [(MSDOperationGroup *)v2 setIsLeaf:1];
    v8 = v2;
  }

  return v2;
}

- (MSDOperationGroup)initWithOperations:(id)a3
{
  v4 = a3;
  v5 = [(MSDOperationGroup *)self init];
  v6 = v5;
  if (v5)
  {
    [(MSDOperationGroup *)v5 _addOperations:v4];
    v7 = v6;
  }

  return v6;
}

- (MSDOperationGroup)initWithOperationGroups:(id)a3
{
  v4 = a3;
  v5 = [(MSDOperationGroup *)self init];
  v6 = v5;
  if (v5)
  {
    [(MSDOperationGroup *)v5 _addOperationGroups:v4];
    v7 = v6;
  }

  return v6;
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  [v4 setIsLeaf:0];
  [(MSDOperationGroup *)self setIsRoot:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v4;
  v5 = [v4 leafOperations];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [(MSDOperationGroup *)self rootOperations];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            v15 = 0;
            do
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v17 + 1) + 8 * v15) addDependency:v10];
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)_addOperations:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isRoot])
        {
          v10 = [(MSDOperationGroup *)self rootOperations];
          [v10 addObject:v9];
        }

        if ([v9 isLeaf])
        {
          v11 = [(MSDOperationGroup *)self leafOperations];
          [v11 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [(MSDOperationGroup *)self allOperations];
  [v12 addObjectsFromArray:v4];
}

- (void)_addOperationGroups:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 isRoot])
        {
          v10 = [(MSDOperationGroup *)self rootOperations];
          v11 = [v9 rootOperations];
          [v10 unionSet:v11];
        }

        if ([v9 isLeaf])
        {
          v12 = [(MSDOperationGroup *)self leafOperations];
          v13 = [v9 leafOperations];
          [v12 unionSet:v13];
        }

        v14 = [(MSDOperationGroup *)self allOperations];
        v15 = [v9 operations];
        [v14 unionSet:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

@end