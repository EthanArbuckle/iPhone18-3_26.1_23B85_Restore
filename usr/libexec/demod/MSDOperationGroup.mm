@interface MSDOperationGroup
- (MSDOperationGroup)init;
- (MSDOperationGroup)initWithOperationGroups:(id)groups;
- (MSDOperationGroup)initWithOperations:(id)operations;
- (void)_addOperationGroups:(id)groups;
- (void)_addOperations:(id)operations;
- (void)addDependency:(id)dependency;
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

- (MSDOperationGroup)initWithOperations:(id)operations
{
  operationsCopy = operations;
  v5 = [(MSDOperationGroup *)self init];
  v6 = v5;
  if (v5)
  {
    [(MSDOperationGroup *)v5 _addOperations:operationsCopy];
    v7 = v6;
  }

  return v6;
}

- (MSDOperationGroup)initWithOperationGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [(MSDOperationGroup *)self init];
  v6 = v5;
  if (v5)
  {
    [(MSDOperationGroup *)v5 _addOperationGroups:groupsCopy];
    v7 = v6;
  }

  return v6;
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  [dependencyCopy setIsLeaf:0];
  [(MSDOperationGroup *)self setIsRoot:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = dependencyCopy;
  leafOperations = [dependencyCopy leafOperations];
  v6 = [leafOperations countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(leafOperations);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        rootOperations = [(MSDOperationGroup *)self rootOperations];
        v12 = [rootOperations countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(rootOperations);
              }

              [*(*(&v17 + 1) + 8 * v15) addDependency:v10];
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [rootOperations countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [leafOperations countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)_addOperations:(id)operations
{
  operationsCopy = operations;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [operationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(operationsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isRoot])
        {
          rootOperations = [(MSDOperationGroup *)self rootOperations];
          [rootOperations addObject:v9];
        }

        if ([v9 isLeaf])
        {
          leafOperations = [(MSDOperationGroup *)self leafOperations];
          [leafOperations addObject:v9];
        }
      }

      v6 = [operationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  allOperations = [(MSDOperationGroup *)self allOperations];
  [allOperations addObjectsFromArray:operationsCopy];
}

- (void)_addOperationGroups:(id)groups
{
  groupsCopy = groups;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [groupsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(groupsCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 isRoot])
        {
          rootOperations = [(MSDOperationGroup *)self rootOperations];
          rootOperations2 = [v9 rootOperations];
          [rootOperations unionSet:rootOperations2];
        }

        if ([v9 isLeaf])
        {
          leafOperations = [(MSDOperationGroup *)self leafOperations];
          leafOperations2 = [v9 leafOperations];
          [leafOperations unionSet:leafOperations2];
        }

        allOperations = [(MSDOperationGroup *)self allOperations];
        operations = [v9 operations];
        [allOperations unionSet:operations];
      }

      v6 = [groupsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

@end