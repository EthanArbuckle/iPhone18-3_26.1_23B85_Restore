@interface NSOperation
- (BOOL)isPending;
- (id)debugDescription;
- (id)description;
- (id)pendingDependenciesString:(id)a3;
- (id)selfname;
- (void)addNullableDependency:(id)a3;
- (void)linearDependencies:(id)a3;
- (void)linearDependenciesWithSelfFirst:(id)a3;
- (void)removeDependenciesUponCompletion;
@end

@implementation NSOperation

- (id)selfname
{
  v3 = [(NSOperation *)self name];

  v4 = objc_opt_class();
  NSStringFromClass(v4);
  if (v3)
    v5 = {;
    v6 = [(NSOperation *)self name];
    v7 = [NSString stringWithFormat:@"%@(%@)", v5, v6];
  }

  else
    v7 = {;
  }

  return v7;
}

- (void)linearDependencies:(id)a3
{
  v4 = a3;
  objc_sync_enter(v4);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

- (void)linearDependenciesWithSelfFirst:(id)a3
{
  v4 = a3;
  objc_sync_enter(v4);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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

- (id)pendingDependenciesString:(id)a3
{
  v4 = a3;
  v5 = [(NSOperation *)self dependencies];
  v6 = [v5 copy];

  v7 = [v6 indexesOfObjectsPassingTest:&stru_100095E78];
  v8 = [v6 objectsAtIndexes:v7];

  if ([v8 count])
  {
    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = [NSString stringWithFormat:@"%@%@", v4, v9];
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
    v4 = [(NSOperation *)self isReady];
    v3 = @"pending";
    if (v4)
    {
      v3 = @"ready";
    }
  }

  v5 = v3;
  v6 = [(NSOperation *)self selfname];
  v7 = [(NSOperation *)self pendingDependenciesString:@" dep:"];
  v8 = [NSString stringWithFormat:@"<%@: %@%@>", v6, v5, v7];

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
    v4 = [(NSOperation *)self isReady];
    v3 = @"pending";
    if (v4)
    {
      v3 = @"ready";
    }
  }

  v5 = v3;
  v6 = [(NSOperation *)self selfname];
  v7 = [(NSOperation *)self pendingDependenciesString:@" dep:"];
  v8 = [NSString stringWithFormat:@"<%@ (%p): %@%@>", v6, self, v5, v7];

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

- (void)addNullableDependency:(id)a3
{
  if (a3)
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