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

- (void)removeDependenciesUponCompletion
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10018F16C;
  v3[3] = &unk_1003452E8;
  objc_copyWeak(&v4, &location);
  [(NSOperation *)self setCompletionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)addNullableDependency:(id)a3
{
  if (a3)
  {
    [(NSOperation *)self addDependency:?];
  }
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

- (id)pendingDependenciesString:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSOperation *)self dependencies];
  v7 = [v6 copy];

  v8 = [v7 indexesOfObjectsPassingTest:&stru_1003434E0];
  v9 = [v7 objectsAtIndexes:v8];

  if ([v9 count])
  {
    off_10039D5E0();
    if (*v10 < 0x15u)
    {
      v12 = v10;
      v24 = v5;
      ++*v10;
      v13 = +[NSMutableArray array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            v20 = objc_autoreleasePoolPush();
            v21 = [v19 description];
            [v13 addObject:v21];

            objc_autoreleasePoolPop(v20);
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      --*v12;
      v22 = [v13 componentsJoinedByString:{@", "}];
      v11 = [NSString stringWithFormat:@"%@%@", v4, v22];

      v5 = v24;
    }

    else
    {
      v11 = [NSString stringWithFormat:@"<recursion too deep>"];
    }
  }

  else
  {
    v11 = &stru_100348050;
  }

  objc_autoreleasePoolPop(v5);

  return v11;
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

- (void)linearDependencies:(id)a3
{
  v4 = a3;
  objc_sync_enter(v4);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        if (*(*(&v10 + 1) + 8 * v8) != self)
        {
          [(NSOperation *)self addDependency:v10];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  [v5 addObject:self];
  if ([v5 count] >= 0x65)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = 100;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ckks-operation: linear dependencies exceeds %d operations", buf, 8u);
    }
  }

  objc_sync_exit(v5);
}

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

@end