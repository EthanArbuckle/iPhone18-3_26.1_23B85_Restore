@interface GKCompatibilityEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKCompatibilityEntryCacheObject

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCompatibilityEntryCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKCompatibilityEntryCacheObject internalRepresentation]", [v7 UTF8String], 2676);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[GKCompatibilityEntryInternal internalRepresentation];
  v10 = [(GKCompatibilityEntryCacheObject *)self bundleID];
  [v9 setBundleID:v10];

  v11 = [(GKCompatibilityEntryCacheObject *)self adamID];
  [v9 setAdamID:v11];

  v12 = [(GKCompatibilityEntryCacheObject *)self platform];
  [v9 setPlatform:{objc_msgSend(v12, "integerValue")}];

  v13 = [NSMutableSet alloc];
  v14 = [(GKCompatibilityEntryCacheObject *)self versions];
  v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [(GKCompatibilityEntryCacheObject *)self versions];
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v36 + 1) + 8 * i) version];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  [v9 setVersions:v15];
  v22 = [NSMutableSet alloc];
  v23 = [(GKCompatibilityEntryCacheObject *)self shortVersions];
  v24 = [v22 initWithCapacity:{objc_msgSend(v23, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = [(GKCompatibilityEntryCacheObject *)self shortVersions];
  v26 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v32 + 1) + 8 * j) shortVersion];
        [v24 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v27);
  }

  [v9 setShortVersions:v24];

  return v9;
}

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCompatibilityEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKCompatibilityEntryCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 2699);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [(GKCompatibilityEntryCacheObject *)self managedObjectContext];
  v60.receiver = self;
  v60.super_class = GKCompatibilityEntryCacheObject;
  [(GKCacheObject *)&v60 updateWithServerRepresentation:v4];
  v12 = [(GKCompatibilityEntryCacheObject *)self versions];
  [v11 _gkDeleteObjects:v12];

  v13 = [v4 objectForKey:@"bundle-id"];
  [(GKCompatibilityEntryCacheObject *)self setBundleID:v13];
  v14 = [v4 objectForKey:@"adam-id"];
  [(GKCompatibilityEntryCacheObject *)self setAdamID:v14];
  v15 = [v4 objectForKey:@"platform"];
  v16 = [NSNumber numberWithInteger:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v15]];
  [(GKCompatibilityEntryCacheObject *)self setPlatform:v16];

  v17 = [v4 objectForKey:@"versions"];
  v18 = v17;
  if (v13 && [v17 count])
  {
    v45 = v15;
    v48 = self;
    v50 = v4;
    v19 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v43 = v18;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v57;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v56 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [v25 objectForKey:@"bundle-version"];
          }

          else
          {
            v26 = v25;
          }

          v27 = v26;
          if (v26)
          {
            v28 = [(GKCacheObject *)[GKCompatibilityVersionCacheObject alloc] initWithManagedObjectContext:v11];
            [(GKCompatibilityVersionCacheObject *)v28 setVersion:v27];
            [v19 addObject:v28];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v22);
    }

    self = v48;
    [(GKCompatibilityEntryCacheObject *)v48 setVersions:v19];

    v4 = v50;
    v18 = v43;
    v15 = v45;
  }

  v29 = [(GKCompatibilityEntryCacheObject *)self shortVersions];
  [v11 _gkDeleteObjects:v29];

  v30 = [v4 objectForKey:@"short-versions"];
  v31 = v30;
  if (v13 && [v30 count])
  {
    v44 = v18;
    v46 = v15;
    v47 = v13;
    v49 = self;
    v51 = v4;
    v32 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v31, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v31;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v53;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v52 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = [v38 objectForKey:@"short-bundle-version"];
          }

          else
          {
            v39 = v38;
          }

          v40 = v39;
          if (v39)
          {
            v41 = [(GKCacheObject *)[GKCompatibilityShortVersionCacheObject alloc] initWithManagedObjectContext:v11];
            [(GKCompatibilityShortVersionCacheObject *)v41 setShortVersion:v40];
            [v32 addObject:v41];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v35);
    }

    [(GKCompatibilityEntryCacheObject *)v49 setShortVersions:v32];
    v4 = v51;
    v13 = v47;
    v18 = v44;
    v15 = v46;
    v31 = v42;
  }
}

@end