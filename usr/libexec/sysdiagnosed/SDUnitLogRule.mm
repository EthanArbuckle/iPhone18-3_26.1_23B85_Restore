@interface SDUnitLogRule
- (BOOL)canAddToCandidateList;
- (BOOL)considerURL:(id)l forRejection:(unint64_t *)rejection;
- (SDUnitLogRule)initWithDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks;
- (id)_localUserHomeDirectories;
- (id)advanceMatchEnumerator;
- (id)applyFilters;
- (id)resolveCrashReporterPath:(id)path;
- (id)resolvePathToMobileContainer:(id)container;
- (void)_getNextVariedSet:(id)set withLogs:(id)logs;
- (void)addPathsToArray:(id)array withHighPriority:(id)priority withMaxVariety:(BOOL)variety;
- (void)generateMaxVariety:(id)variety withLogs:(id)logs withHighPriority:(id)priority;
@end

@implementation SDUnitLogRule

- (SDUnitLogRule)initWithDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks
{
  dateCopy = date;
  filterCopy = filter;
  directoryCopy = directory;
  v21.receiver = self;
  v21.super_class = SDUnitLogRule;
  v15 = [(SDUnitLogRule *)&v21 init];
  v16 = v15;
  if (v15)
  {
    [(SDUnitLogRule *)v15 setCreatedSince:dateCopy];
    [(SDUnitLogRule *)v16 setFilter:filterCopy];
    [(SDUnitLogRule *)v16 setNewestFileLimit:count];
    v17 = [NSMutableArray arrayWithCapacity:count];
    [(SDUnitLogRule *)v16 setLogArray:v17];

    v18 = [NSMutableArray arrayWithCapacity:count];
    [(SDUnitLogRule *)v16 setLogDates:v18];

    if (directoryCopy)
    {
      v19 = directoryCopy;
    }

    else
    {
      v19 = @".";
    }

    [(SDUnitLogRule *)v16 setRelative:v19];
    [(SDUnitLogRule *)v16 setMaxDepth:1024];
    [(SDUnit *)v16 setRuntimeChecks:checks];
    [(SDUnitLogRule *)v16 setMobileContainerClass:0];
    [(SDUnitLogRule *)v16 setMobileContainer:0];
    [(SDUnitLogRule *)v16 setMatchEnumerator:0];
    [(SDUnitLogRule *)v16 setHeadDir:@"."];
    [(SDUnitLogRule *)v16 setResolveHomeDirs:1];
    [(SDUnitLogRule *)v16 setPipelineFlush:0];
    [(SDUnitLogRule *)v16 setOffsets:0];
    [(SDUnitLogRule *)v16 setSizes:0];
  }

  return v16;
}

- (id)advanceMatchEnumerator
{
  matchEnumerator = [(SDUnitLogRule *)self matchEnumerator];
  v4 = [matchEnumerator count];

  if (v4)
  {
    firstObject = 0;
    while (1)
    {
      v6 = firstObject;
      v7 = objc_autoreleasePoolPush();
      matchEnumerator2 = [(SDUnitLogRule *)self matchEnumerator];
      firstObject = [matchEnumerator2 firstObject];

      getNextMatch = [firstObject getNextMatch];
      if (getNextMatch)
      {
        break;
      }

      matchEnumerator3 = [(SDUnitLogRule *)self matchEnumerator];
      [matchEnumerator3 removeObjectAtIndex:0];

      objc_autoreleasePoolPop(v7);
      matchEnumerator4 = [(SDUnitLogRule *)self matchEnumerator];
      v12 = [matchEnumerator4 count];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_8;
      }
    }

    v13 = getNextMatch;
    objc_autoreleasePoolPop(v7);

    firstObject = v13;
LABEL_8:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)considerURL:(id)l forRejection:(unint64_t *)rejection
{
  lCopy = l;
  v7 = lCopy;
  if (!lCopy || ([lCopy path], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_6;
  }

  logArray = [(SDUnitLogRule *)self logArray];
  path = [v7 path];
  v11 = [logArray containsObject:path];

  if (!v11)
  {
    v15 = +[NSFileManager defaultManager];
    path2 = [v7 path];
    v17 = [v15 fileExistsAtPath:path2];

    if ((v17 & 1) == 0)
    {
      v42 = sub_1000278E8();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v7 lastPathComponent];
        *buf = 138412290;
        v67 = lastPathComponent;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ failed due to file not found", buf, 0xCu);
      }

      v44 = +[SDResourceManager sharedResourceManager];
      lastPathComponent2 = [v7 lastPathComponent];
      [v44 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ failed due to file not found", lastPathComponent2}];

      v12 = 0;
      v13 = 10;
      goto LABEL_6;
    }

    v65 = 0;
    v64 = 0;
    v18 = [v7 getResourceValue:&v65 forKey:NSURLCreationDateKey error:&v64];
    v19 = v65;
    v20 = v64;
    if (!v18 || !v19)
    {
      v46 = sub_1000278E8();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent3 = [v7 lastPathComponent];
        localizedDescription = [v20 localizedDescription];
        *buf = 138412546;
        v67 = lastPathComponent3;
        v68 = 2112;
        *v69 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%@ failed to get date with error %@", buf, 0x16u);
      }

      v49 = +[SDResourceManager sharedResourceManager];
      lastPathComponent4 = [v7 lastPathComponent];
      localizedDescription2 = [v20 localizedDescription];
      [v49 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ failed to get date with error %@", lastPathComponent4, localizedDescription2}];

      v12 = 0;
      *rejection = 5;
      goto LABEL_36;
    }

    createdSince = [(SDUnitLogRule *)self createdSince];

    if (createdSince && (-[SDUnitLogRule createdSince](self, "createdSince"), v22 = objc_claimAutoreleasedReturnValue(), [v19 earlierDate:v22], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23 == v19))
    {
      *rejection = 6;
      v52 = sub_1000278E8();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      lastPathComponent5 = [v7 lastPathComponent];
      [v19 timeIntervalSince1970];
      v55 = v54;
      createdSince2 = [(SDUnitLogRule *)self createdSince];
      [createdSince2 timeIntervalSince1970];
      *buf = 138412802;
      v67 = lastPathComponent5;
      v68 = 1024;
      *v69 = v55;
      *&v69[4] = 1024;
      *&v69[6] = v57;
      v58 = "%@ failed to pass date test %{time_t}d < %{time_t}d ";
    }

    else
    {
      createdUntil = [(SDUnitLogRule *)self createdUntil];

      if (!createdUntil || (-[SDUnitLogRule createdUntil](self, "createdUntil"), v25 = objc_claimAutoreleasedReturnValue(), [v19 laterDate:v25], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26 != v19))
      {
        filter = [(SDUnitLogRule *)self filter];

        if (!filter || (-[SDUnitLogRule filter](self, "filter"), v28 = objc_claimAutoreleasedReturnValue(), [v7 path], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "evaluateWithObject:", v29), v29, v28, (v30 & 1) != 0))
        {
          logArray2 = [(SDUnitLogRule *)self logArray];
          v32 = [logArray2 count];

          v33 = 0;
          if (v32)
          {
            do
            {
              logDates = [(SDUnitLogRule *)self logDates];
              v35 = [logDates objectAtIndexedSubscript:v33];
              v36 = [v35 laterDate:v19];

              if (v36 == v19)
              {
                break;
              }

              ++v33;
              logArray3 = [(SDUnitLogRule *)self logArray];
              v38 = [logArray3 count];
            }

            while (v38 > v33);
          }

          logArray4 = [(SDUnitLogRule *)self logArray];
          path3 = [v7 path];
          [logArray4 insertObject:path3 atIndex:v33];

          logDates2 = [(SDUnitLogRule *)self logDates];
          [logDates2 insertObject:v19 atIndex:v33];

          v12 = 1;
          goto LABEL_36;
        }

        *rejection = 8;
        v52 = sub_1000278E8();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent5 = [v7 lastPathComponent];
          createdSince2 = [(SDUnitLogRule *)self filter];
          *buf = 138412546;
          v67 = lastPathComponent5;
          v68 = 2112;
          *v69 = createdSince2;
          v58 = "%@ failed to pass predicate %@ ";
          v59 = v52;
          v60 = 22;
LABEL_34:
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, v58, buf, v60);
        }

LABEL_35:

        v12 = 0;
LABEL_36:

        goto LABEL_7;
      }

      *rejection = 6;
      v52 = sub_1000278E8();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      lastPathComponent5 = [v7 lastPathComponent];
      [v19 timeIntervalSince1970];
      v62 = v61;
      createdSince2 = [(SDUnitLogRule *)self createdUntil];
      [createdSince2 timeIntervalSince1970];
      *buf = 138412802;
      v67 = lastPathComponent5;
      v68 = 1024;
      *v69 = v62;
      *&v69[4] = 1024;
      *&v69[6] = v63;
      v58 = "%@ failed to pass date test %{time_t}d < %{time_t}d ";
    }

    v59 = v52;
    v60 = 24;
    goto LABEL_34;
  }

  v12 = 0;
  v13 = 9;
LABEL_6:
  *rejection = v13;
LABEL_7:

  return v12;
}

- (id)applyFilters
{
  v3 = +[NSMutableArray array];
  if ([(SDUnitLogRule *)self newestFileLimit])
  {
    logArray = [(SDUnitLogRule *)self logArray];
    v5 = [logArray count];
    newestFileLimit = [(SDUnitLogRule *)self newestFileLimit];

    if (v5 > newestFileLimit)
    {
      logArray2 = [(SDUnitLogRule *)self logArray];
      v7 = [logArray2 count];

      LODWORD(logArray2) = v7 - 1;
      if ([(SDUnitLogRule *)self newestFileLimit]<= (v7 - 1))
      {
        logArray2 = logArray2;
        do
        {
          logArray3 = [(SDUnitLogRule *)self logArray];
          v10 = [logArray3 objectAtIndexedSubscript:logArray2];

          logArray4 = [(SDUnitLogRule *)self logArray];
          [logArray4 removeLastObject];

          logDates = [(SDUnitLogRule *)self logDates];
          [logDates removeLastObject];

          [v3 addObject:v10];
          --logArray2;
        }

        while ([(SDUnitLogRule *)self newestFileLimit]<= logArray2);
      }
    }
  }

  return v3;
}

- (void)_getNextVariedSet:(id)set withLogs:(id)logs
{
  setCopy = set;
  logsCopy = logs;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [setCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [setCopy objectForKey:v13];
        lastObject = [v14 lastObject];
        [v7 addObject:lastObject];

        [v14 removeLastObject];
        if (![v14 count])
        {
          [setCopy removeObjectForKey:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [v7 sortedArrayUsingSelector:"compareLogDateDescending:"];
  [logsCopy addObjectsFromArray:v16];
}

- (void)generateMaxVariety:(id)variety withLogs:(id)logs withHighPriority:(id)priority
{
  varietyCopy = variety;
  logsCopy = logs;
  priorityCopy = priority;
  v53 = 0;
  v11 = [NSRegularExpression regularExpressionWithPattern:@"[.]synced$" options:1 error:&v53];
  v12 = v53;
  v46 = v11;
  if (v11)
  {
    v52 = v12;
    v13 = [NSRegularExpression regularExpressionWithPattern:@"[.][0-9]{3}[.]ips" options:1 error:&v52];
    v14 = v52;

    if (v13)
    {
      v51 = v14;
      localizedDescription5 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]{4}(-|_)[0-9]{2}(-|_)[0-9]{2}(-|_)([0-9]{6}|[0-9]{2}(-|_)[0-9]{2}(-|_)[0-9]{2}))" options:1 error:&v51];
      v16 = v51;

      if (localizedDescription5)
      {
        v39 = v16;
        selfCopy = self;
        v41 = priorityCopy;
        v42 = logsCopy;
        v45 = +[NSMutableDictionary dictionary];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v43 = varietyCopy;
        obj = [varietyCopy reverseObjectEnumerator];
        v17 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v48;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v48 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v47 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              path = [v21 path];
              path2 = [v21 path];
              v25 = [v46 stringByReplacingMatchesInString:path options:0 range:0 withTemplate:{objc_msgSend(path2, "length"), &stru_1000A67D8}];

              v26 = [v13 stringByReplacingMatchesInString:v25 options:0 range:0 withTemplate:{objc_msgSend(v25, "length"), @".ips"}];

              v27 = [localizedDescription5 stringByReplacingMatchesInString:v26 options:0 range:0 withTemplate:{objc_msgSend(v26, "length"), &stru_1000A67D8}];

              if (v27)
              {
                v28 = [v45 objectForKey:v27];
                if (v28)
                {
                  v29 = v28;
                }

                else
                {
                  v29 = +[NSMutableArray array];
                  [v45 setObject:v29 forKey:v27];
                  if (!v29)
                  {
                    goto LABEL_14;
                  }
                }

                [v29 addObject:v21];
              }

LABEL_14:

              objc_autoreleasePoolPop(v22);
            }

            v18 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
          }

          while (v18);
        }

        priorityCopy = v41;
        localizedDescription3 = v45;
        [(SDUnitLogRule *)selfCopy _getNextVariedSet:v45 withLogs:v41];
        if ([v45 count])
        {
          logsCopy = v42;
          varietyCopy = v43;
          v14 = v39;
          do
          {
            [(SDUnitLogRule *)selfCopy _getNextVariedSet:v45 withLogs:v42];
          }

          while ([v45 count]);
        }

        else
        {
          v14 = v39;
          logsCopy = v42;
          varietyCopy = v43;
        }
      }

      else
      {
        v35 = sub_1000278E8();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          [v16 localizedDescription];
          v37 = v36 = v16;
          *buf = 138412290;
          v56 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::regex with error: %@", buf, 0xCu);

          v16 = v36;
        }

        localizedDescription3 = +[SDResourceManager sharedResourceManager];
        localizedDescription = [v16 localizedDescription];
        [localizedDescription3 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::regex with error: %@", localizedDescription}];

        v14 = v16;
      }
    }

    else
    {
      v33 = sub_1000278E8();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription2 = [v14 localizedDescription];
        *buf = 138412290;
        v56 = localizedDescription2;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::stackTripleRegex with error: %@", buf, 0xCu);
      }

      localizedDescription5 = +[SDResourceManager sharedResourceManager];
      localizedDescription3 = [v14 localizedDescription];
      [localizedDescription5 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::stackTripleRegex with error: %@", localizedDescription3}];
    }

    v12 = v14;
  }

  else
  {
    v31 = sub_1000278E8();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription4 = [v12 localizedDescription];
      *buf = 138412290;
      v56 = localizedDescription4;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::syncedRegex with error: %@", buf, 0xCu);
    }

    v13 = +[SDResourceManager sharedResourceManager];
    localizedDescription5 = [v12 localizedDescription];
    [v13 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::syncedRegex with error: %@", localizedDescription5}];
  }
}

- (void)addPathsToArray:(id)array withHighPriority:(id)priority withMaxVariety:(BOOL)variety
{
  varietyCopy = variety;
  arrayCopy = array;
  priorityCopy = priority;
  v9 = +[NSMutableArray array];
  headDir = [(SDUnitLogRule *)self headDir];
  v11 = [NSURL fileURLWithPath:headDir];
  standardizedURL = [v11 standardizedURL];
  path = [standardizedURL path];

  logArray = [(SDUnitLogRule *)self logArray];
  v14 = [logArray count];

  if (v14)
  {
    v39 = varietyCopy;
    v43 = v9;
    v40 = priorityCopy;
    v15 = 0;
    stringByDeletingLastPathComponent = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = stringByDeletingLastPathComponent;
      v21 = objc_autoreleasePoolPush();
      logArray2 = [(SDUnitLogRule *)self logArray];
      v23 = [logArray2 objectAtIndexedSubscript:v15];
      stringByDeletingLastPathComponent = [v23 stringByDeletingLastPathComponent];

      headDir2 = [(SDUnitLogRule *)self headDir];
      LODWORD(v23) = [headDir2 isEqualToString:@"."];

      if (v23)
      {
        [(SDUnitLogRule *)self headDir];
        v19 = v25 = v19;
      }

      else
      {
        v25 = [stringByDeletingLastPathComponent componentsSeparatedByString:path];
        lastObject = [v25 lastObject];

        v19 = lastObject;
      }

      relative = [(SDUnitLogRule *)self relative];
      v28 = [relative stringByAppendingPathComponent:v19];

      v29 = [SDLog alloc];
      logArray3 = [(SDUnitLogRule *)self logArray];
      v31 = [logArray3 objectAtIndexedSubscript:v15];
      v32 = [(SDLog *)v29 initWithPath:v31 subdirectory:v28 error:0];

      if (v32)
      {
        offsets = [(SDUnitLogRule *)self offsets];
        [(SDLog *)v32 setOffsets:offsets];

        sizes = [(SDUnitLogRule *)self sizes];
        [(SDLog *)v32 setSizes:sizes];

        [v43 addObject:v32];
      }

      objc_autoreleasePoolPop(v21);
      ++v15;
      logArray4 = [(SDUnitLogRule *)self logArray];
      v36 = [logArray4 count];

      v17 = v32;
      v18 = v28;
    }

    while (v36 > v15);

    priorityCopy = v40;
    v9 = v43;
    varietyCopy = v39;
  }

  logArray5 = [(SDUnitLogRule *)self logArray];
  [logArray5 removeAllObjects];

  logDates = [(SDUnitLogRule *)self logDates];
  [logDates removeAllObjects];

  if (varietyCopy)
  {
    [(SDUnitLogRule *)self generateMaxVariety:v9 withLogs:arrayCopy withHighPriority:priorityCopy];
  }

  else
  {
    [arrayCopy addObjectsFromArray:v9];
  }
}

- (id)_localUserHomeDirectories
{
  v2 = +[NSMutableArray array];
  if (sub_100027804())
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [NSURL fileURLWithPath:@"/private/var/Users" isDirectory:1];
    v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:7 errorHandler:&stru_1000A10E0];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          [v2 addObject:{v11, v14}];
          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [NSURL fileURLWithPath:@"/private/var/mobile/" isDirectory:1];
    [v2 addObject:v6];
  }

  return v2;
}

- (id)resolvePathToMobileContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy hasPrefix:@"~"] && (objc_msgSend(containerCopy, "hasPrefix:", @"~~") & 1) == 0)
  {
    path = sub_100024620();
    if (path)
    {
      v10 = [containerCopy stringByReplacingOccurrencesOfString:@"~" withString:path];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SDUnitLogRule *)self setHeadDir:v10];
      }
    }

    else
    {
      v10 = [containerCopy stringByReplacingOccurrencesOfString:@"~" withString:@"/private/var/root"];
      v16 = sub_1000278E8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        mobileContainerClass2 = containerCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ cannot be resolved to user home directory. Setting to root home directory.", buf, 0xCu);
      }

      v17 = +[SDResourceManager sharedResourceManager];
      [v17 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ cannot be resolved to user home directory. Setting to root home directory.", containerCopy}];
    }
  }

  else
  {
    if ([(SDUnitLogRule *)self mobileContainerClass]&& ([(SDUnitLogRule *)self mobileContainer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      mobileContainerClass = [(SDUnitLogRule *)self mobileContainerClass];
      mobileContainer = [(SDUnitLogRule *)self mobileContainer];
      [mobileContainer UTF8String];
      if (mobileContainerClass == 2)
      {
        v8 = container_create_or_lookup_path_for_current_user();
      }

      else if (mobileContainerClass == 1)
      {
        v8 = container_system_group_path_for_identifier();
      }

      else
      {
        v8 = container_system_path_for_identifier();
      }

      v11 = v8;

      if (v11)
      {
        v12 = [NSURL fileURLWithFileSystemRepresentation:v11 isDirectory:1 relativeToURL:0];
        path = [v12 path];

        free(v11);
      }

      else
      {
        if ([(SDUnitLogRule *)self mobileContainerClass]== 2)
        {
          path = @"/private/var/mobile/";
        }

        else
        {
          path = @"/DUMMY/";
        }

        v13 = sub_1000278E8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          mobileContainerClass2 = [(SDUnitLogRule *)self mobileContainerClass];
          v20 = 2048;
          v21 = 1;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error finding container of type %lu with error %llu, setting to bogus path.", buf, 0x16u);
        }

        v14 = +[SDResourceManager sharedResourceManager];
        [v14 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Error finding container of type %lu with error %llu, setting to bogus path.", -[SDUnitLogRule mobileContainerClass](self, "mobileContainerClass"), 1}];
      }
    }

    else
    {
      path = @"/";
    }

    v10 = [(__CFString *)path stringByAppendingPathComponent:containerCopy];
  }

  return v10;
}

- (BOOL)canAddToCandidateList
{
  logArray = [(SDUnitLogRule *)self logArray];
  v4 = [logArray count];

  if (v4 >= 0x3E8)
  {
    v5 = sub_1000278E8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Hit candidate limit -- flushing the log collection pipeline", v8, 2u);
    }

    v6 = +[SDResourceManager sharedResourceManager];
    [v6 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:@"Hit candidate limit -- flushing the log collection pipeline"];

    [(SDUnitLogRule *)self setPipelineFlush:1];
  }

  return v4 < 0x3E8;
}

- (id)resolveCrashReporterPath:(id)path
{
  pathCopy = path;
  if (sub_100027804())
  {
    v4 = [pathCopy length];
    v5 = sub_100016A64(0);
    v6 = [pathCopy stringByReplacingOccurrencesOfString:@"/private/var/mobile/Library/Logs/CrashReporter" withString:v5 options:9 range:{0, v4}];

    pathCopy = v6;
  }

  return pathCopy;
}

@end