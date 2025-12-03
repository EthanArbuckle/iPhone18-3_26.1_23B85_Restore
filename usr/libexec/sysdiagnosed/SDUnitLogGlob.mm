@interface SDUnitLogGlob
+ (id)logRuleWithGlob:(id)glob;
+ (id)logRuleWithGlob:(id)glob withDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks;
- (id)description;
- (id)getNextMatch;
- (void)addGlobContents:(id)contents toURLArray:(id)array;
- (void)expandHomeDirectoriesForGlob:(id)glob andAddToURLArray:(id)array;
- (void)resolvePaths;
@end

@implementation SDUnitLogGlob

+ (id)logRuleWithGlob:(id)glob
{
  globCopy = glob;
  v4 = [(SDUnitLogRule *)[SDUnitLogGlob alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  v5 = v4;
  if (v4)
  {
    [(SDUnitLogGlob *)v4 setGlob:globCopy];
  }

  return v5;
}

+ (id)logRuleWithGlob:(id)glob withDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks
{
  globCopy = glob;
  directoryCopy = directory;
  filterCopy = filter;
  dateCopy = date;
  v17 = [(SDUnitLogRule *)[SDUnitLogGlob alloc] initWithDate:dateCopy withFilter:filterCopy newestFileCount:count atInternalDirectory:directoryCopy withRuntimeChecks:checks];

  if (v17)
  {
    [(SDUnitLogGlob *)v17 setGlob:globCopy];
  }

  return v17;
}

- (void)addGlobContents:(id)contents toURLArray:(id)array
{
  contentsCopy = contents;
  arrayCopy = array;
  memset(&v13, 0, sizeof(v13));
  v13.gl_matchc = 1000;
  v7 = sub_1000278E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    fileSystemRepresentation = [contentsCopy fileSystemRepresentation];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Querying glob %s", buf, 0xCu);
  }

  v8 = +[SDResourceManager sharedResourceManager];
  [v8 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Querying glob %s", objc_msgSend(contentsCopy, "fileSystemRepresentation")}];

  glob_b([contentsCopy fileSystemRepresentation], 4264, &stru_1000A1120, &v13);
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
          [arrayCopy addObject:v12];
        }
      }

      objc_autoreleasePoolPop(v10);
      ++v9;
    }

    while (v13.gl_pathc > v9);
  }

  globfree(&v13);
}

- (void)expandHomeDirectoriesForGlob:(id)glob andAddToURLArray:(id)array
{
  globCopy = glob;
  arrayCopy = array;
  if (![(SDUnitLogRule *)self resolveHomeDirs])
  {
    goto LABEL_13;
  }

  v8 = [&off_1000B4C48 objectAtIndexedSubscript:0];
  if (![globCopy hasPrefix:v8])
  {
    v9 = [&off_1000B4C48 objectAtIndexedSubscript:1];
    v10 = [globCopy hasPrefix:v9];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_13:
    glob = [(SDUnitLogGlob *)self glob];
    v22 = [(SDUnitLogRule *)self resolvePathToMobileContainer:glob];

    [(SDUnitLogGlob *)self addGlobContents:v22 toURLArray:arrayCopy];
    goto LABEL_14;
  }

LABEL_5:
  v11 = [&off_1000B4C48 objectAtIndexedSubscript:0];
  v12 = [&off_1000B4C48 objectAtIndexedSubscript:{objc_msgSend(globCopy, "hasPrefix:", v11) ^ 1}];

  [(SDUnitLogRule *)self setHeadDir:@"."];
  v23 = v12;
  v13 = [globCopy stringByReplacingOccurrencesOfString:v12 withString:&stru_1000A67D8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  _localUserHomeDirectories = [(SDUnitLogRule *)self _localUserHomeDirectories];
  v15 = [_localUserHomeDirectories countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(_localUserHomeDirectories);
        }

        path = [*(*(&v24 + 1) + 8 * v18) path];
        v20 = [path stringByAppendingString:v13];
        [(SDUnitLogGlob *)self addGlobContents:v20 toURLArray:arrayCopy];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [_localUserHomeDirectories countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

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
    glob = [(SDUnitLogGlob *)self glob];
    [(SDUnitLogGlob *)self expandHomeDirectoriesForGlob:glob andAddToURLArray:v5];

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

          matchEnumerator2 = [(SDUnitLogRule *)self matchEnumerator];
          [matchEnumerator2 addObject:v10];

          v12 = v12 + 1;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  advanceMatchEnumerator = [(SDUnitLogRule *)self advanceMatchEnumerator];

  return advanceMatchEnumerator;
}

- (id)description
{
  glob = [(SDUnitLogGlob *)self glob];
  v3 = [NSString stringWithFormat:@"SDUnitLogGlob with glob '%@'", glob];

  return v3;
}

- (void)resolvePaths
{
  glob = [(SDUnitLogGlob *)self glob];
  v3 = [(SDUnitLogRule *)self resolveCrashReporterPath:glob];
  [(SDUnitLogGlob *)self setGlob:v3];
}

@end