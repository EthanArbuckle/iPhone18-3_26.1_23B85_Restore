@interface SDUnitLogPathArray
+ (id)logRuleWithMutablePaths:(id)a3;
+ (id)logRuleWithPaths:(id)a3;
+ (id)logRuleWithPaths:(id)a3 withDate:(id)a4 withFilter:(id)a5 newestFileCount:(unint64_t)a6 atInternalDirectory:(id)a7 withRuntimeChecks:(unint64_t)a8;
- (id)description;
- (id)getNextMatch;
- (void)expandHomeDirectoriesAtPath:(id)a3 andAddToURLArray:(id)a4;
- (void)resolvePaths;
@end

@implementation SDUnitLogPathArray

+ (id)logRuleWithPaths:(id)a3
{
  v3 = a3;
  v4 = [(SDUnitLogRule *)[SDUnitLogPathArray alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  if (v4)
  {
    v5 = [v3 mutableCopy];
    [(SDUnitLogPathArray *)v4 setPaths:v5];
  }

  return v4;
}

+ (id)logRuleWithMutablePaths:(id)a3
{
  v3 = a3;
  v4 = [(SDUnitLogRule *)[SDUnitLogPathArray alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  v5 = v4;
  if (v4)
  {
    [(SDUnitLogPathArray *)v4 setPaths:v3];
  }

  return v5;
}

+ (id)logRuleWithPaths:(id)a3 withDate:(id)a4 withFilter:(id)a5 newestFileCount:(unint64_t)a6 atInternalDirectory:(id)a7 withRuntimeChecks:(unint64_t)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = [(SDUnitLogRule *)[SDUnitLogPathArray alloc] initWithDate:v16 withFilter:v15 newestFileCount:a6 atInternalDirectory:v14 withRuntimeChecks:a8];

  if (v17)
  {
    v18 = [v13 mutableCopy];
    [(SDUnitLogPathArray *)v17 setPaths:v18];
  }

  return v17;
}

- (void)expandHomeDirectoriesAtPath:(id)a3 andAddToURLArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SDUnitLogRule *)self resolveHomeDirs])
  {
    goto LABEL_13;
  }

  v8 = [&off_1000B4C30 objectAtIndexedSubscript:0];
  if (![v6 hasPrefix:v8])
  {
    v9 = [&off_1000B4C30 objectAtIndexedSubscript:1];
    v10 = [v6 hasPrefix:v9];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_13:
    v22 = [(SDUnitLogRule *)self resolvePathToMobileContainer:v6];
    v23 = [NSURL fileURLWithPath:v22];
    [v7 addObject:v23];

    goto LABEL_14;
  }

LABEL_5:
  v11 = [&off_1000B4C30 objectAtIndexedSubscript:0];
  v12 = [&off_1000B4C30 objectAtIndexedSubscript:{objc_msgSend(v6, "hasPrefix:", v11) ^ 1}];

  [(SDUnitLogRule *)self setHeadDir:@"."];
  v24 = v6;
  v13 = [v6 stringByReplacingOccurrencesOfString:v12 withString:&stru_1000A67D8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [(SDUnitLogRule *)self _localUserHomeDirectories];
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

        v19 = [*(*(&v25 + 1) + 8 * i) path];
        v20 = [v19 stringByAppendingPathComponent:v13];
        v21 = [NSURL fileURLWithPath:v20];
        [v7 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v6 = v24;
LABEL_14:
}

- (id)getNextMatch
{
  v3 = [(SDUnitLogRule *)self matchEnumerator];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    [(SDUnitLogRule *)self setMatchEnumerator:v4];

    v5 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [(SDUnitLogPathArray *)self paths];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(SDUnitLogPathArray *)self expandHomeDirectoriesAtPath:*(*(&v25 + 1) + 8 * i) andAddToURLArray:v5];
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v22;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v14 = [BFSDirectoryEnumerator BFSEnumeratorWithPath:*(*(&v21 + 1) + 8 * v16) withDepth:1, v21];

          v18 = [(SDUnitLogRule *)self matchEnumerator];
          [v18 addObject:v14];

          v16 = v16 + 1;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }
  }

  v19 = [(SDUnitLogRule *)self advanceMatchEnumerator];

  return v19;
}

- (id)description
{
  v2 = [(SDUnitLogPathArray *)self paths];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SDUnitLogPathArray with %lu paths", [v2 count]);

  return v3;
}

- (void)resolvePaths
{
  v3 = [(SDUnitLogPathArray *)self paths];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(SDUnitLogPathArray *)self paths];
      v7 = [v6 objectAtIndexedSubscript:v5];
      v8 = [(SDUnitLogRule *)self resolveCrashReporterPath:v7];
      v9 = [(SDUnitLogPathArray *)self paths];
      [v9 setObject:v8 atIndexedSubscript:v5];

      ++v5;
      v10 = [(SDUnitLogPathArray *)self paths];
      v11 = [v10 count];
    }

    while (v11 > v5);
  }
}

@end