@interface SDUnitLogDirectory
+ (id)logRuleWithDirectory:(id)directory;
+ (id)logRuleWithDirectory:(id)directory atInternalDirectory:(id)internalDirectory;
+ (id)logRuleWithDirectory:(id)directory withDepth:(unint64_t)depth withDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)internalDirectory withRuntimeChecks:(unint64_t)checks;
- (id)description;
- (id)getNextMatch;
- (void)resolvePaths;
@end

@implementation SDUnitLogDirectory

+ (id)logRuleWithDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [(SDUnitLogRule *)[SDUnitLogDirectory alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:0 withRuntimeChecks:0];
  v5 = v4;
  if (v4)
  {
    [(SDUnitLogDirectory *)v4 setDirectory:directoryCopy];
    [(SDUnitLogRule *)v5 setHeadDir:directoryCopy];
  }

  return v5;
}

+ (id)logRuleWithDirectory:(id)directory withDepth:(unint64_t)depth withDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)internalDirectory withRuntimeChecks:(unint64_t)checks
{
  directoryCopy = directory;
  internalDirectoryCopy = internalDirectory;
  filterCopy = filter;
  dateCopy = date;
  v18 = [(SDUnitLogRule *)[SDUnitLogDirectory alloc] initWithDate:dateCopy withFilter:filterCopy newestFileCount:count atInternalDirectory:internalDirectoryCopy withRuntimeChecks:checks];

  if (v18)
  {
    [(SDUnitLogDirectory *)v18 setDirectory:directoryCopy];
    [(SDUnitLogRule *)v18 setHeadDir:directoryCopy];
    [(SDUnitLogRule *)v18 setMaxDepth:depth];
  }

  return v18;
}

+ (id)logRuleWithDirectory:(id)directory atInternalDirectory:(id)internalDirectory
{
  directoryCopy = directory;
  internalDirectoryCopy = internalDirectory;
  v7 = [(SDUnitLogRule *)[SDUnitLogDirectory alloc] initWithDate:0 withFilter:0 newestFileCount:0 atInternalDirectory:internalDirectoryCopy withRuntimeChecks:0];

  if (v7)
  {
    [(SDUnitLogDirectory *)v7 setDirectory:directoryCopy];
    [(SDUnitLogRule *)v7 setHeadDir:directoryCopy];
  }

  return v7;
}

- (id)getNextMatch
{
  selfCopy = self;
  matchEnumerator = [(SDUnitLogRule *)self matchEnumerator];

  if (!matchEnumerator)
  {
    v4 = +[NSMutableArray array];
    [(SDUnitLogRule *)selfCopy setMatchEnumerator:v4];

    if ([(SDUnitLogRule *)selfCopy resolveHomeDirs])
    {
      directory = [(SDUnitLogDirectory *)selfCopy directory];
      v6 = [&off_1000B4C60 objectAtIndexedSubscript:0];
      if ([directory hasPrefix:v6])
      {

LABEL_6:
        directory2 = [(SDUnitLogDirectory *)selfCopy directory];
        v11 = [&off_1000B4C60 objectAtIndexedSubscript:0];
        v12 = [&off_1000B4C60 objectAtIndexedSubscript:{objc_msgSend(directory2, "hasPrefix:", v11) ^ 1}];

        [(SDUnitLogRule *)selfCopy setHeadDir:@"."];
        directory3 = [(SDUnitLogDirectory *)selfCopy directory];
        v35 = [directory3 stringByReplacingOccurrencesOfString:v12 withString:&stru_1000A67D8];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = [(SDUnitLogRule *)selfCopy _localUserHomeDirectories];
        v14 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v14)
        {
          v15 = v14;
          v33 = v12;
          v16 = selfCopy;
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
              path = [v23 path];
              v40[0] = path;
              v40[1] = v35;
              v26 = [NSArray arrayWithObjects:v40 count:2];
              v17 = [NSURL fileURLWithPathComponents:v26];

              v18 = [BFSDirectoryEnumerator BFSEnumeratorWithPath:v17 withDepth:[(SDUnitLogRule *)v16 maxDepth]];

              matchEnumerator2 = [(SDUnitLogRule *)v16 matchEnumerator];
              [matchEnumerator2 addObject:v18];

              objc_autoreleasePoolPop(v24);
              v20 = v20 + 1;
              v21 = v17;
              v22 = v18;
            }

            while (v15 != v20);
            v15 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v15);

          selfCopy = v16;
          v12 = v33;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_17;
      }

      directory4 = [(SDUnitLogDirectory *)selfCopy directory];
      v8 = [&off_1000B4C60 objectAtIndexedSubscript:1];
      v9 = [directory4 hasPrefix:v8];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    directory5 = [(SDUnitLogDirectory *)selfCopy directory];
    v12 = [(SDUnitLogRule *)selfCopy resolvePathToMobileContainer:directory5];

    v29 = +[NSURL fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:](NSURL, "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", [v12 fileSystemRepresentation], 1, 0);
    v18 = [BFSDirectoryEnumerator BFSEnumeratorWithPath:v29 withDepth:[(SDUnitLogRule *)selfCopy maxDepth]];
    matchEnumerator3 = [(SDUnitLogRule *)selfCopy matchEnumerator];
    [matchEnumerator3 addObject:v18];

LABEL_17:
  }

  advanceMatchEnumerator = [(SDUnitLogRule *)selfCopy advanceMatchEnumerator];

  return advanceMatchEnumerator;
}

- (id)description
{
  directory = [(SDUnitLogDirectory *)self directory];
  v3 = [NSString stringWithFormat:@"SDUnitLogDirectory with directory '%@'", directory];

  return v3;
}

- (void)resolvePaths
{
  headDir = [(SDUnitLogRule *)self headDir];
  v4 = [(SDUnitLogRule *)self resolveCrashReporterPath:headDir];
  [(SDUnitLogRule *)self setHeadDir:v4];

  directory = [(SDUnitLogDirectory *)self directory];
  v5 = [(SDUnitLogRule *)self resolveCrashReporterPath:directory];
  [(SDUnitLogDirectory *)self setDirectory:v5];
}

@end