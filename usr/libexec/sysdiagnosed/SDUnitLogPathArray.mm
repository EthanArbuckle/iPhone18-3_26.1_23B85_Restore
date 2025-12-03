@interface SDUnitLogPathArray
+ (id)logRuleWithMutablePaths:(id)paths;
+ (id)logRuleWithPaths:(id)paths;
+ (id)logRuleWithPaths:(id)paths withDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks;
- (id)description;
- (id)getNextMatch;
- (void)expandHomeDirectoriesAtPath:(id)path andAddToURLArray:(id)array;
- (void)resolvePaths;
@end

@implementation SDUnitLogPathArray

+ (id)logRuleWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [(SDUnitLogRule *)[SDUnitLogPathArray alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  if (v4)
  {
    v5 = [pathsCopy mutableCopy];
    [(SDUnitLogPathArray *)v4 setPaths:v5];
  }

  return v4;
}

+ (id)logRuleWithMutablePaths:(id)paths
{
  pathsCopy = paths;
  v4 = [(SDUnitLogRule *)[SDUnitLogPathArray alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  v5 = v4;
  if (v4)
  {
    [(SDUnitLogPathArray *)v4 setPaths:pathsCopy];
  }

  return v5;
}

+ (id)logRuleWithPaths:(id)paths withDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks
{
  pathsCopy = paths;
  directoryCopy = directory;
  filterCopy = filter;
  dateCopy = date;
  v17 = [(SDUnitLogRule *)[SDUnitLogPathArray alloc] initWithDate:dateCopy withFilter:filterCopy newestFileCount:count atInternalDirectory:directoryCopy withRuntimeChecks:checks];

  if (v17)
  {
    v18 = [pathsCopy mutableCopy];
    [(SDUnitLogPathArray *)v17 setPaths:v18];
  }

  return v17;
}

- (void)expandHomeDirectoriesAtPath:(id)path andAddToURLArray:(id)array
{
  pathCopy = path;
  arrayCopy = array;
  if (![(SDUnitLogRule *)self resolveHomeDirs])
  {
    goto LABEL_13;
  }

  v8 = [&off_1000B4C30 objectAtIndexedSubscript:0];
  if (![pathCopy hasPrefix:v8])
  {
    v9 = [&off_1000B4C30 objectAtIndexedSubscript:1];
    v10 = [pathCopy hasPrefix:v9];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_13:
    v22 = [(SDUnitLogRule *)self resolvePathToMobileContainer:pathCopy];
    v23 = [NSURL fileURLWithPath:v22];
    [arrayCopy addObject:v23];

    goto LABEL_14;
  }

LABEL_5:
  v11 = [&off_1000B4C30 objectAtIndexedSubscript:0];
  v12 = [&off_1000B4C30 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "hasPrefix:", v11) ^ 1}];

  [(SDUnitLogRule *)self setHeadDir:@"."];
  v24 = pathCopy;
  v13 = [pathCopy stringByReplacingOccurrencesOfString:v12 withString:&stru_1000A67D8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  _localUserHomeDirectories = [(SDUnitLogRule *)self _localUserHomeDirectories];
  v15 = [_localUserHomeDirectories countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(_localUserHomeDirectories);
        }

        path = [*(*(&v25 + 1) + 8 * i) path];
        v20 = [path stringByAppendingPathComponent:v13];
        v21 = [NSURL fileURLWithPath:v20];
        [arrayCopy addObject:v21];
      }

      v16 = [_localUserHomeDirectories countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  pathCopy = v24;
LABEL_14:
}

- (id)getNextMatch
{
  matchEnumerator = [(SDUnitLogRule *)self matchEnumerator];

  if (!matchEnumerator)
  {
    v4 = +[NSMutableArray array];
    [(SDUnitLogRule *)self setMatchEnumerator:v4];

    v5 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    paths = [(SDUnitLogPathArray *)self paths];
    v7 = [paths countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(paths);
          }

          [(SDUnitLogPathArray *)self expandHomeDirectoriesAtPath:*(*(&v25 + 1) + 8 * i) andAddToURLArray:v5];
        }

        v8 = [paths countByEnumeratingWithState:&v25 objects:v30 count:16];
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

          matchEnumerator2 = [(SDUnitLogRule *)self matchEnumerator];
          [matchEnumerator2 addObject:v14];

          v16 = v16 + 1;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }
  }

  advanceMatchEnumerator = [(SDUnitLogRule *)self advanceMatchEnumerator];

  return advanceMatchEnumerator;
}

- (id)description
{
  paths = [(SDUnitLogPathArray *)self paths];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SDUnitLogPathArray with %lu paths", [paths count]);

  return v3;
}

- (void)resolvePaths
{
  paths = [(SDUnitLogPathArray *)self paths];
  v4 = [paths count];

  if (v4)
  {
    v5 = 0;
    do
    {
      paths2 = [(SDUnitLogPathArray *)self paths];
      v7 = [paths2 objectAtIndexedSubscript:v5];
      v8 = [(SDUnitLogRule *)self resolveCrashReporterPath:v7];
      paths3 = [(SDUnitLogPathArray *)self paths];
      [paths3 setObject:v8 atIndexedSubscript:v5];

      ++v5;
      paths4 = [(SDUnitLogPathArray *)self paths];
      v11 = [paths4 count];
    }

    while (v11 > v5);
  }
}

@end