@interface SDUnitLogDirectory
+ (id)logRuleWithDirectory:(id)a3;
+ (id)logRuleWithDirectory:(id)a3 atInternalDirectory:(id)a4;
+ (id)logRuleWithDirectory:(id)a3 withDepth:(unint64_t)a4 withDate:(id)a5 withFilter:(id)a6 newestFileCount:(unint64_t)a7 atInternalDirectory:(id)a8 withRuntimeChecks:(unint64_t)a9;
- (id)description;
- (id)getNextMatch;
- (void)resolvePaths;
@end

@implementation SDUnitLogDirectory

+ (id)logRuleWithDirectory:(id)a3
{
  v3 = a3;
  v4 = [(SDUnitLogRule *)[SDUnitLogDirectory alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  v5 = v4;
  if (v4)
  {
    [(SDUnitLogDirectory *)v4 setDirectory:v3];
    [(SDUnitLogRule *)v5 setHeadDir:v3];
  }

  return v5;
}

+ (id)logRuleWithDirectory:(id)a3 withDepth:(unint64_t)a4 withDate:(id)a5 withFilter:(id)a6 newestFileCount:(unint64_t)a7 atInternalDirectory:(id)a8 withRuntimeChecks:(unint64_t)a9
{
  v14 = a3;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = [(SDUnitLogRule *)[SDUnitLogDirectory alloc] initWithDate:v17 withFilter:v16 newestFileCount:a7 atInternalDirectory:v15 withRuntimeChecks:a9];

  if (v18)
  {
    [(SDUnitLogDirectory *)v18 setDirectory:v14];
    [(SDUnitLogRule *)v18 setHeadDir:v14];
    [(SDUnitLogRule *)v18 setMaxDepth:a4];
  }

  return v18;
}

+ (id)logRuleWithDirectory:(id)a3 atInternalDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [(SDUnitLogRule *)[SDUnitLogDirectory alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:v6 withRuntimeChecks:0];

  if (v7)
  {
    [(SDUnitLogDirectory *)v7 setDirectory:v5];
    [(SDUnitLogRule *)v7 setHeadDir:v5];
  }

  return v7;
}

- (id)getNextMatch
{
  v2 = self;
  v3 = [(SDUnitLogRule *)self matchEnumerator];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    [(SDUnitLogRule *)v2 setMatchEnumerator:v4];

    if ([(SDUnitLogRule *)v2 resolveHomeDirs])
    {
      v5 = [(SDUnitLogDirectory *)v2 directory];
      v6 = [&off_1000B4C60 objectAtIndexedSubscript:0];
      if ([v5 hasPrefix:v6])
      {

LABEL_6:
        v10 = [(SDUnitLogDirectory *)v2 directory];
        v11 = [&off_1000B4C60 objectAtIndexedSubscript:0];
        v12 = [&off_1000B4C60 objectAtIndexedSubscript:{objc_msgSend(v10, "hasPrefix:", v11) ^ 1}];

        [(SDUnitLogRule *)v2 setHeadDir:@"."];
        v13 = [(SDUnitLogDirectory *)v2 directory];
        v35 = [v13 stringByReplacingOccurrencesOfString:v12 withString:&stru_1000A67D8];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = [(SDUnitLogRule *)v2 _localUserHomeDirectories];
        v14 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v14)
        {
          v15 = v14;
          v33 = v12;
          v16 = v2;
          v17 = 0;
          v18 = 0;
          v19 = *v37;
          do
          {
            v20 = 0;
            v21 = v17;
            v22 = v18;
            do
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v36 + 1) + 8 * v20);
              v24 = objc_autoreleasePoolPush();
              v25 = [v23 path];
              v40[0] = v25;
              v40[1] = v35;
              v26 = [NSArray arrayWithObjects:v40 count:2];
              v17 = [NSURL fileURLWithPathComponents:v26];

              v18 = [BFSDirectoryEnumerator BFSEnumeratorWithPath:v17 withDepth:[(SDUnitLogRule *)v16 maxDepth]];

              v27 = [(SDUnitLogRule *)v16 matchEnumerator];
              [v27 addObject:v18];

              objc_autoreleasePoolPop(v24);
              v20 = v20 + 1;
              v21 = v17;
              v22 = v18;
            }

            while (v15 != v20);
            v15 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v15);

          v2 = v16;
          v12 = v33;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_17;
      }

      v7 = [(SDUnitLogDirectory *)v2 directory];
      v8 = [&off_1000B4C60 objectAtIndexedSubscript:1];
      v9 = [v7 hasPrefix:v8];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    v28 = [(SDUnitLogDirectory *)v2 directory];
    v12 = [(SDUnitLogRule *)v2 resolvePathToMobileContainer:v28];

    v29 = +[NSURL fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:](NSURL, "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", [v12 fileSystemRepresentation], 1, 0);
    v18 = [BFSDirectoryEnumerator BFSEnumeratorWithPath:v29 withDepth:[(SDUnitLogRule *)v2 maxDepth]];
    v30 = [(SDUnitLogRule *)v2 matchEnumerator];
    [v30 addObject:v18];

LABEL_17:
  }

  v31 = [(SDUnitLogRule *)v2 advanceMatchEnumerator];

  return v31;
}

- (id)description
{
  v2 = [(SDUnitLogDirectory *)self directory];
  v3 = [NSString stringWithFormat:@"SDUnitLogDirectory with directory '%@'", v2];

  return v3;
}

- (void)resolvePaths
{
  v3 = [(SDUnitLogRule *)self headDir];
  v4 = [(SDUnitLogRule *)self resolveCrashReporterPath:v3];
  [(SDUnitLogRule *)self setHeadDir:v4];

  v6 = [(SDUnitLogDirectory *)self directory];
  v5 = [(SDUnitLogRule *)self resolveCrashReporterPath:v6];
  [(SDUnitLogDirectory *)self setDirectory:v5];
}

@end