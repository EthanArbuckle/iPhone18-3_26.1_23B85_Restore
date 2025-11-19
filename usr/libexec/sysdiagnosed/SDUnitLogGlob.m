@interface SDUnitLogGlob
+ (id)logRuleWithGlob:(id)a3;
+ (id)logRuleWithGlob:(id)a3 withDate:(id)a4 withFilter:(id)a5 newestFileCount:(unint64_t)a6 atInternalDirectory:(id)a7 withRuntimeChecks:(unint64_t)a8;
- (id)description;
- (id)getNextMatch;
- (void)addGlobContents:(id)a3 toURLArray:(id)a4;
- (void)expandHomeDirectoriesForGlob:(id)a3 andAddToURLArray:(id)a4;
- (void)resolvePaths;
@end

@implementation SDUnitLogGlob

+ (id)logRuleWithGlob:(id)a3
{
  v3 = a3;
  v4 = [(SDUnitLogRule *)[SDUnitLogGlob alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  v5 = v4;
  if (v4)
  {
    [(SDUnitLogGlob *)v4 setGlob:v3];
  }

  return v5;
}

+ (id)logRuleWithGlob:(id)a3 withDate:(id)a4 withFilter:(id)a5 newestFileCount:(unint64_t)a6 atInternalDirectory:(id)a7 withRuntimeChecks:(unint64_t)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = [(SDUnitLogRule *)[SDUnitLogGlob alloc] initWithDate:v16 withFilter:v15 newestFileCount:a6 atInternalDirectory:v14 withRuntimeChecks:a8];

  if (v17)
  {
    [(SDUnitLogGlob *)v17 setGlob:v13];
  }

  return v17;
}

- (void)addGlobContents:(id)a3 toURLArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(&v13, 0, sizeof(v13));
  v13.gl_matchc = 1000;
  v7 = sub_1000278E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = [v5 fileSystemRepresentation];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Querying glob %s", buf, 0xCu);
  }

  v8 = +[SDResourceManager sharedResourceManager];
  [v8 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Querying glob %s", objc_msgSend(v5, "fileSystemRepresentation")}];

  glob_b([v5 fileSystemRepresentation], 4264, &stru_1000A1120, &v13);
  if (v13.gl_pathc)
  {
    v9 = 0;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v13.gl_pathv[v9];
      if (v11)
      {
        v12 = [NSURL fileURLWithFileSystemRepresentation:v11 isDirectory:0 relativeToURL:0];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      objc_autoreleasePoolPop(v10);
      ++v9;
    }

    while (v13.gl_pathc > v9);
  }

  globfree(&v13);
}

- (void)expandHomeDirectoriesForGlob:(id)a3 andAddToURLArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SDUnitLogRule *)self resolveHomeDirs])
  {
    goto LABEL_13;
  }

  v8 = [&off_1000B4C48 objectAtIndexedSubscript:0];
  if (![v6 hasPrefix:v8])
  {
    v9 = [&off_1000B4C48 objectAtIndexedSubscript:1];
    v10 = [v6 hasPrefix:v9];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_13:
    v21 = [(SDUnitLogGlob *)self glob];
    v22 = [(SDUnitLogRule *)self resolvePathToMobileContainer:v21];

    [(SDUnitLogGlob *)self addGlobContents:v22 toURLArray:v7];
    goto LABEL_14;
  }

LABEL_5:
  v11 = [&off_1000B4C48 objectAtIndexedSubscript:0];
  v12 = [&off_1000B4C48 objectAtIndexedSubscript:{objc_msgSend(v6, "hasPrefix:", v11) ^ 1}];

  [(SDUnitLogRule *)self setHeadDir:@"."];
  v23 = v12;
  v13 = [v6 stringByReplacingOccurrencesOfString:v12 withString:&stru_1000A67D8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(SDUnitLogRule *)self _localUserHomeDirectories];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * v18) path];
        v20 = [v19 stringByAppendingString:v13];
        [(SDUnitLogGlob *)self addGlobContents:v20 toURLArray:v7];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

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
    v6 = [(SDUnitLogGlob *)self glob];
    [(SDUnitLogGlob *)self expandHomeDirectoriesForGlob:v6 andAddToURLArray:v5];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 = [BFSDirectoryEnumerator BFSEnumeratorWithPath:*(*(&v17 + 1) + 8 * v12) withDepth:1, v17];

          v14 = [(SDUnitLogRule *)self matchEnumerator];
          [v14 addObject:v10];

          v12 = v12 + 1;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = [(SDUnitLogRule *)self advanceMatchEnumerator];

  return v15;
}

- (id)description
{
  v2 = [(SDUnitLogGlob *)self glob];
  v3 = [NSString stringWithFormat:@"SDUnitLogGlob with glob '%@'", v2];

  return v3;
}

- (void)resolvePaths
{
  v4 = [(SDUnitLogGlob *)self glob];
  v3 = [(SDUnitLogRule *)self resolveCrashReporterPath:v4];
  [(SDUnitLogGlob *)self setGlob:v3];
}

@end