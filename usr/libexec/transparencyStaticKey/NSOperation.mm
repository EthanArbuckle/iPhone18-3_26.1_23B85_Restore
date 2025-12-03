@interface NSOperation
- (BOOL)isPending;
- (id)debugDescription;
- (id)description;
- (id)pendingDependenciesString:(id)string;
- (id)selfname;
- (void)addNullableDependency:(id)dependency;
- (void)linearDependencies:(id)dependencies;
- (void)linearDependenciesWithSelfFirst:(id)first;
- (void)removeDependenciesUponCompletion;
@end

@implementation NSOperation

- (id)selfname
{
  name = [(NSOperation *)self name];

  v4 = objc_opt_class();
  NSStringFromClass(v4);
  if (name)
    v5 = {;
    name2 = [(NSOperation *)self name];
    v7 = [NSString stringWithFormat:@"%@(%@)", v5, name2];
  }

  else
    v7 = {;
  }

  return v7;
}

- (void)linearDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  objc_sync_enter(dependenciesCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = dependenciesCopy;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v9 + 1) + 8 * v8) != self)
        {
          [(NSOperation *)self addDependency:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [v5 addObject:self];
  objc_sync_exit(v5);
}

- (void)linearDependenciesWithSelfFirst:(id)first
{
  firstCopy = first;
  objc_sync_enter(firstCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = firstCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9 != self)
        {
          if ([*(*(&v10 + 1) + 8 * v8) isPending])
          {
            [(NSOperation *)v9 addDependency:self];
            if ([(NSOperation *)v9 isPending])
            {
              goto LABEL_11;
            }

            [(NSOperation *)v9 removeDependency:self];
          }

          [(NSOperation *)self addDependency:v9];
        }

LABEL_11:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [v5 addObject:self];
  objc_sync_exit(v5);
}

- (id)pendingDependenciesString:(id)string
{
  stringCopy = string;
  dependencies = [(NSOperation *)self dependencies];
  v6 = [dependencies copy];

  v7 = [v6 indexesOfObjectsPassingTest:&stru_100095E78];
  v8 = [v6 objectsAtIndexes:v7];

  if ([v8 count])
  {
    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = [NSString stringWithFormat:@"%@%@", stringCopy, v9];
  }

  else
  {
    v10 = &stru_100096EB8;
  }

  return v10;
}

- (id)description
{
  if ([(NSOperation *)self isFinished])
  {
    v3 = @"finished";
  }

  else if ([(NSOperation *)self isCancelled])
  {
    v3 = @"cancelled";
  }

  else if ([(NSOperation *)self isExecuting])
  {
    v3 = @"executing";
  }

  else
  {
    isReady = [(NSOperation *)self isReady];
    v3 = @"pending";
    if (isReady)
    {
      v3 = @"ready";
    }
  }

  v5 = v3;
  selfname = [(NSOperation *)self selfname];
  v7 = [(NSOperation *)self pendingDependenciesString:@" dep:"];
  v8 = [NSString stringWithFormat:@"<%@: %@%@>", selfname, v5, v7];

  return v8;
}

- (id)debugDescription
{
  if ([(NSOperation *)self isFinished])
  {
    v3 = @"finished";
  }

  else if ([(NSOperation *)self isCancelled])
  {
    v3 = @"cancelled";
  }

  else if ([(NSOperation *)self isExecuting])
  {
    v3 = @"executing";
  }

  else
  {
    isReady = [(NSOperation *)self isReady];
    v3 = @"pending";
    if (isReady)
    {
      v3 = @"ready";
    }
  }

  v5 = v3;
  selfname = [(NSOperation *)self selfname];
  v7 = [(NSOperation *)self pendingDependenciesString:@" dep:"];
  v8 = [NSString stringWithFormat:@"<%@ (%p): %@%@>", selfname, self, v5, v7];

  return v8;
}

- (BOOL)isPending
{
  if ([(NSOperation *)self isExecuting]|| [(NSOperation *)self isFinished])
  {
    return 0;
  }

  else
  {
    return ![(NSOperation *)self isCancelled];
  }
}

- (void)addNullableDependency:(id)dependency
{
  if (dependency)
  {
    [(NSOperation *)self addDependency:?];
  }
}

- (void)removeDependenciesUponCompletion
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002AE2C;
  v3[3] = &unk_100094BA8;
  objc_copyWeak(&v4, &location);
  [(NSOperation *)self setCompletionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

@end