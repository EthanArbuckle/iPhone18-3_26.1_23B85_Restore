@interface SDUnitLogRule
- (BOOL)canAddToCandidateList;
- (BOOL)considerURL:(id)a3 forRejection:(unint64_t *)a4;
- (SDUnitLogRule)initWithDate:(id)a3 withFilter:(id)a4 newestFileCount:(unint64_t)a5 atInternalDirectory:(id)a6 withRuntimeChecks:(unint64_t)a7;
- (id)_localUserHomeDirectories;
- (id)advanceMatchEnumerator;
- (id)applyFilters;
- (id)resolveCrashReporterPath:(id)a3;
- (id)resolvePathToMobileContainer:(id)a3;
- (void)_getNextVariedSet:(id)a3 withLogs:(id)a4;
- (void)addPathsToArray:(id)a3 withHighPriority:(id)a4 withMaxVariety:(BOOL)a5;
- (void)generateMaxVariety:(id)a3 withLogs:(id)a4 withHighPriority:(id)a5;
@end

@implementation SDUnitLogRule

- (SDUnitLogRule)initWithDate:(id)a3 withFilter:(id)a4 newestFileCount:(unint64_t)a5 atInternalDirectory:(id)a6 withRuntimeChecks:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = SDUnitLogRule;
  v15 = [(SDUnitLogRule *)&v21 init];
  v16 = v15;
  if (v15)
  {
    [(SDUnitLogRule *)v15 setCreatedSince:v12];
    [(SDUnitLogRule *)v16 setFilter:v13];
    [(SDUnitLogRule *)v16 setNewestFileLimit:a5];
    v17 = [NSMutableArray arrayWithCapacity:a5];
    [(SDUnitLogRule *)v16 setLogArray:v17];

    v18 = [NSMutableArray arrayWithCapacity:a5];
    [(SDUnitLogRule *)v16 setLogDates:v18];

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = @".";
    }

    [(SDUnitLogRule *)v16 setRelative:v19];
    [(SDUnitLogRule *)v16 setMaxDepth:1024];
    [(SDUnit *)v16 setRuntimeChecks:a7];
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
  v3 = [(SDUnitLogRule *)self matchEnumerator];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      v8 = [(SDUnitLogRule *)self matchEnumerator];
      v5 = [v8 firstObject];

      v9 = [v5 getNextMatch];
      if (v9)
      {
        break;
      }

      v10 = [(SDUnitLogRule *)self matchEnumerator];
      [v10 removeObjectAtIndex:0];

      objc_autoreleasePoolPop(v7);
      v11 = [(SDUnitLogRule *)self matchEnumerator];
      v12 = [v11 count];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_8;
      }
    }

    v13 = v9;
    objc_autoreleasePoolPop(v7);

    v5 = v13;
LABEL_8:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)considerURL:(id)a3 forRejection:(unint64_t *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6 || ([v6 path], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_6;
  }

  v9 = [(SDUnitLogRule *)self logArray];
  v10 = [v7 path];
  v11 = [v9 containsObject:v10];

  if (!v11)
  {
    v15 = +[NSFileManager defaultManager];
    v16 = [v7 path];
    v17 = [v15 fileExistsAtPath:v16];

    if ((v17 & 1) == 0)
    {
      v42 = sub_1000278E8();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v7 lastPathComponent];
        *buf = 138412290;
        v67 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ failed due to file not found", buf, 0xCu);
      }

      v44 = +[SDResourceManager sharedResourceManager];
      v45 = [v7 lastPathComponent];
      [v44 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ failed due to file not found", v45}];

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
        v47 = [v7 lastPathComponent];
        v48 = [v20 localizedDescription];
        *buf = 138412546;
        v67 = v47;
        v68 = 2112;
        *v69 = v48;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%@ failed to get date with error %@", buf, 0x16u);
      }

      v49 = +[SDResourceManager sharedResourceManager];
      v50 = [v7 lastPathComponent];
      v51 = [v20 localizedDescription];
      [v49 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ failed to get date with error %@", v50, v51}];

      v12 = 0;
      *a4 = 5;
      goto LABEL_36;
    }

    v21 = [(SDUnitLogRule *)self createdSince];

    if (v21 && (-[SDUnitLogRule createdSince](self, "createdSince"), v22 = objc_claimAutoreleasedReturnValue(), [v19 earlierDate:v22], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23 == v19))
    {
      *a4 = 6;
      v52 = sub_1000278E8();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v53 = [v7 lastPathComponent];
      [v19 timeIntervalSince1970];
      v55 = v54;
      v56 = [(SDUnitLogRule *)self createdSince];
      [v56 timeIntervalSince1970];
      *buf = 138412802;
      v67 = v53;
      v68 = 1024;
      *v69 = v55;
      *&v69[4] = 1024;
      *&v69[6] = v57;
      v58 = "%@ failed to pass date test %{time_t}d < %{time_t}d ";
    }

    else
    {
      v24 = [(SDUnitLogRule *)self createdUntil];

      if (!v24 || (-[SDUnitLogRule createdUntil](self, "createdUntil"), v25 = objc_claimAutoreleasedReturnValue(), [v19 laterDate:v25], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26 != v19))
      {
        v27 = [(SDUnitLogRule *)self filter];

        if (!v27 || (-[SDUnitLogRule filter](self, "filter"), v28 = objc_claimAutoreleasedReturnValue(), [v7 path], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "evaluateWithObject:", v29), v29, v28, (v30 & 1) != 0))
        {
          v31 = [(SDUnitLogRule *)self logArray];
          v32 = [v31 count];

          v33 = 0;
          if (v32)
          {
            do
            {
              v34 = [(SDUnitLogRule *)self logDates];
              v35 = [v34 objectAtIndexedSubscript:v33];
              v36 = [v35 laterDate:v19];

              if (v36 == v19)
              {
                break;
              }

              ++v33;
              v37 = [(SDUnitLogRule *)self logArray];
              v38 = [v37 count];
            }

            while (v38 > v33);
          }

          v39 = [(SDUnitLogRule *)self logArray];
          v40 = [v7 path];
          [v39 insertObject:v40 atIndex:v33];

          v41 = [(SDUnitLogRule *)self logDates];
          [v41 insertObject:v19 atIndex:v33];

          v12 = 1;
          goto LABEL_36;
        }

        *a4 = 8;
        v52 = sub_1000278E8();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [v7 lastPathComponent];
          v56 = [(SDUnitLogRule *)self filter];
          *buf = 138412546;
          v67 = v53;
          v68 = 2112;
          *v69 = v56;
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

      *a4 = 6;
      v52 = sub_1000278E8();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v53 = [v7 lastPathComponent];
      [v19 timeIntervalSince1970];
      v62 = v61;
      v56 = [(SDUnitLogRule *)self createdUntil];
      [v56 timeIntervalSince1970];
      *buf = 138412802;
      v67 = v53;
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
  *a4 = v13;
LABEL_7:

  return v12;
}

- (id)applyFilters
{
  v3 = +[NSMutableArray array];
  if ([(SDUnitLogRule *)self newestFileLimit])
  {
    v4 = [(SDUnitLogRule *)self logArray];
    v5 = [v4 count];
    v6 = [(SDUnitLogRule *)self newestFileLimit];

    if (v5 > v6)
    {
      v8 = [(SDUnitLogRule *)self logArray];
      v7 = [v8 count];

      LODWORD(v8) = v7 - 1;
      if ([(SDUnitLogRule *)self newestFileLimit]<= (v7 - 1))
      {
        v8 = v8;
        do
        {
          v9 = [(SDUnitLogRule *)self logArray];
          v10 = [v9 objectAtIndexedSubscript:v8];

          v11 = [(SDUnitLogRule *)self logArray];
          [v11 removeLastObject];

          v12 = [(SDUnitLogRule *)self logDates];
          [v12 removeLastObject];

          [v3 addObject:v10];
          --v8;
        }

        while ([(SDUnitLogRule *)self newestFileLimit]<= v8);
      }
    }
  }

  return v3;
}

- (void)_getNextVariedSet:(id)a3 withLogs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v5 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v5 objectForKey:v13];
        v15 = [v14 lastObject];
        [v7 addObject:v15];

        [v14 removeLastObject];
        if (![v14 count])
        {
          [v5 removeObjectForKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [v7 sortedArrayUsingSelector:"compareLogDateDescending:"];
  [v6 addObjectsFromArray:v16];
}

- (void)generateMaxVariety:(id)a3 withLogs:(id)a4 withHighPriority:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v15 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]{4}(-|_)[0-9]{2}(-|_)[0-9]{2}(-|_)([0-9]{6}|[0-9]{2}(-|_)[0-9]{2}(-|_)[0-9]{2}))" options:1 error:&v51];
      v16 = v51;

      if (v15)
      {
        v39 = v16;
        v40 = self;
        v41 = v10;
        v42 = v9;
        v45 = +[NSMutableDictionary dictionary];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v43 = v8;
        obj = [v8 reverseObjectEnumerator];
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
              v23 = [v21 path];
              v24 = [v21 path];
              v25 = [v46 stringByReplacingMatchesInString:v23 options:0 range:0 withTemplate:{objc_msgSend(v24, "length"), &stru_1000A67D8}];

              v26 = [v13 stringByReplacingMatchesInString:v25 options:0 range:0 withTemplate:{objc_msgSend(v25, "length"), @".ips"}];

              v27 = [v15 stringByReplacingMatchesInString:v26 options:0 range:0 withTemplate:{objc_msgSend(v26, "length"), &stru_1000A67D8}];

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

        v10 = v41;
        v30 = v45;
        [(SDUnitLogRule *)v40 _getNextVariedSet:v45 withLogs:v41];
        if ([v45 count])
        {
          v9 = v42;
          v8 = v43;
          v14 = v39;
          do
          {
            [(SDUnitLogRule *)v40 _getNextVariedSet:v45 withLogs:v42];
          }

          while ([v45 count]);
        }

        else
        {
          v14 = v39;
          v9 = v42;
          v8 = v43;
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

        v30 = +[SDResourceManager sharedResourceManager];
        v38 = [v16 localizedDescription];
        [v30 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::regex with error: %@", v38}];

        v14 = v16;
      }
    }

    else
    {
      v33 = sub_1000278E8();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v14 localizedDescription];
        *buf = 138412290;
        v56 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::stackTripleRegex with error: %@", buf, 0xCu);
      }

      v15 = +[SDResourceManager sharedResourceManager];
      v30 = [v14 localizedDescription];
      [v15 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::stackTripleRegex with error: %@", v30}];
    }

    v12 = v14;
  }

  else
  {
    v31 = sub_1000278E8();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v12 localizedDescription];
      *buf = 138412290;
      v56 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::syncedRegex with error: %@", buf, 0xCu);
    }

    v13 = +[SDResourceManager sharedResourceManager];
    v15 = [v12 localizedDescription];
    [v13 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::syncedRegex with error: %@", v15}];
  }
}

- (void)addPathsToArray:(id)a3 withHighPriority:(id)a4 withMaxVariety:(BOOL)a5
{
  v5 = a5;
  v41 = a3;
  v8 = a4;
  v9 = +[NSMutableArray array];
  v10 = [(SDUnitLogRule *)self headDir];
  v11 = [NSURL fileURLWithPath:v10];
  v12 = [v11 standardizedURL];
  v42 = [v12 path];

  v13 = [(SDUnitLogRule *)self logArray];
  v14 = [v13 count];

  if (v14)
  {
    v39 = v5;
    v43 = v9;
    v40 = v8;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v16;
      v21 = objc_autoreleasePoolPush();
      v22 = [(SDUnitLogRule *)self logArray];
      v23 = [v22 objectAtIndexedSubscript:v15];
      v16 = [v23 stringByDeletingLastPathComponent];

      v24 = [(SDUnitLogRule *)self headDir];
      LODWORD(v23) = [v24 isEqualToString:@"."];

      if (v23)
      {
        [(SDUnitLogRule *)self headDir];
        v19 = v25 = v19;
      }

      else
      {
        v25 = [v16 componentsSeparatedByString:v42];
        v26 = [v25 lastObject];

        v19 = v26;
      }

      v27 = [(SDUnitLogRule *)self relative];
      v28 = [v27 stringByAppendingPathComponent:v19];

      v29 = [SDLog alloc];
      v30 = [(SDUnitLogRule *)self logArray];
      v31 = [v30 objectAtIndexedSubscript:v15];
      v32 = [(SDLog *)v29 initWithPath:v31 subdirectory:v28 error:0];

      if (v32)
      {
        v33 = [(SDUnitLogRule *)self offsets];
        [(SDLog *)v32 setOffsets:v33];

        v34 = [(SDUnitLogRule *)self sizes];
        [(SDLog *)v32 setSizes:v34];

        [v43 addObject:v32];
      }

      objc_autoreleasePoolPop(v21);
      ++v15;
      v35 = [(SDUnitLogRule *)self logArray];
      v36 = [v35 count];

      v17 = v32;
      v18 = v28;
    }

    while (v36 > v15);

    v8 = v40;
    v9 = v43;
    v5 = v39;
  }

  v37 = [(SDUnitLogRule *)self logArray];
  [v37 removeAllObjects];

  v38 = [(SDUnitLogRule *)self logDates];
  [v38 removeAllObjects];

  if (v5)
  {
    [(SDUnitLogRule *)self generateMaxVariety:v9 withLogs:v41 withHighPriority:v8];
  }

  else
  {
    [v41 addObjectsFromArray:v9];
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

- (id)resolvePathToMobileContainer:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"~"] && (objc_msgSend(v4, "hasPrefix:", @"~~") & 1) == 0)
  {
    v9 = sub_100024620();
    if (v9)
    {
      v10 = [v4 stringByReplacingOccurrencesOfString:@"~" withString:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SDUnitLogRule *)self setHeadDir:v10];
      }
    }

    else
    {
      v10 = [v4 stringByReplacingOccurrencesOfString:@"~" withString:@"/private/var/root"];
      v16 = sub_1000278E8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ cannot be resolved to user home directory. Setting to root home directory.", buf, 0xCu);
      }

      v17 = +[SDResourceManager sharedResourceManager];
      [v17 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ cannot be resolved to user home directory. Setting to root home directory.", v4}];
    }
  }

  else
  {
    if ([(SDUnitLogRule *)self mobileContainerClass]&& ([(SDUnitLogRule *)self mobileContainer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(SDUnitLogRule *)self mobileContainerClass];
      v7 = [(SDUnitLogRule *)self mobileContainer];
      [v7 UTF8String];
      if (v6 == 2)
      {
        v8 = container_create_or_lookup_path_for_current_user();
      }

      else if (v6 == 1)
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
        v9 = [v12 path];

        free(v11);
      }

      else
      {
        if ([(SDUnitLogRule *)self mobileContainerClass]== 2)
        {
          v9 = @"/private/var/mobile/";
        }

        else
        {
          v9 = @"/DUMMY/";
        }

        v13 = sub_1000278E8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v19 = [(SDUnitLogRule *)self mobileContainerClass];
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
      v9 = @"/";
    }

    v10 = [(__CFString *)v9 stringByAppendingPathComponent:v4];
  }

  return v10;
}

- (BOOL)canAddToCandidateList
{
  v3 = [(SDUnitLogRule *)self logArray];
  v4 = [v3 count];

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

- (id)resolveCrashReporterPath:(id)a3
{
  v3 = a3;
  if (sub_100027804())
  {
    v4 = [v3 length];
    v5 = sub_100016A64(0);
    v6 = [v3 stringByReplacingOccurrencesOfString:@"/private/var/mobile/Library/Logs/CrashReporter" withString:v5 options:9 range:{0, v4}];

    v3 = v6;
  }

  return v3;
}

@end