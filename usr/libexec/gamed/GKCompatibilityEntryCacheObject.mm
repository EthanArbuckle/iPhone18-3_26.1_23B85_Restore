@interface GKCompatibilityEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKCompatibilityEntryCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2676);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[GKCompatibilityEntryInternal internalRepresentation];
  bundleID = [(GKCompatibilityEntryCacheObject *)self bundleID];
  [v9 setBundleID:bundleID];

  adamID = [(GKCompatibilityEntryCacheObject *)self adamID];
  [v9 setAdamID:adamID];

  platform = [(GKCompatibilityEntryCacheObject *)self platform];
  [v9 setPlatform:{objc_msgSend(platform, "integerValue")}];

  v13 = [NSMutableSet alloc];
  versions = [(GKCompatibilityEntryCacheObject *)self versions];
  v15 = [v13 initWithCapacity:{objc_msgSend(versions, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  versions2 = [(GKCompatibilityEntryCacheObject *)self versions];
  v17 = [versions2 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(versions2);
        }

        version = [*(*(&v36 + 1) + 8 * i) version];
        [v15 addObject:version];
      }

      v18 = [versions2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  [v9 setVersions:v15];
  v22 = [NSMutableSet alloc];
  shortVersions = [(GKCompatibilityEntryCacheObject *)self shortVersions];
  v24 = [v22 initWithCapacity:{objc_msgSend(shortVersions, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  shortVersions2 = [(GKCompatibilityEntryCacheObject *)self shortVersions];
  v26 = [shortVersions2 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(shortVersions2);
        }

        shortVersion = [*(*(&v32 + 1) + 8 * j) shortVersion];
        [v24 addObject:shortVersion];
      }

      v27 = [shortVersions2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v27);
  }

  [v9 setShortVersions:v24];

  return v9;
}

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCompatibilityEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKCompatibilityEntryCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 2699);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  managedObjectContext = [(GKCompatibilityEntryCacheObject *)self managedObjectContext];
  v60.receiver = self;
  v60.super_class = GKCompatibilityEntryCacheObject;
  [(GKCacheObject *)&v60 updateWithServerRepresentation:representationCopy];
  versions = [(GKCompatibilityEntryCacheObject *)self versions];
  [managedObjectContext _gkDeleteObjects:versions];

  v13 = [representationCopy objectForKey:@"bundle-id"];
  [(GKCompatibilityEntryCacheObject *)self setBundleID:v13];
  v14 = [representationCopy objectForKey:@"adam-id"];
  [(GKCompatibilityEntryCacheObject *)self setAdamID:v14];
  v15 = [representationCopy objectForKey:@"platform"];
  v16 = [NSNumber numberWithInteger:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v15]];
  [(GKCompatibilityEntryCacheObject *)self setPlatform:v16];

  v17 = [representationCopy objectForKey:@"versions"];
  v18 = v17;
  if (v13 && [v17 count])
  {
    v45 = v15;
    selfCopy = self;
    v50 = representationCopy;
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
            v28 = [(GKCacheObject *)[GKCompatibilityVersionCacheObject alloc] initWithManagedObjectContext:managedObjectContext];
            [(GKCompatibilityVersionCacheObject *)v28 setVersion:v27];
            [v19 addObject:v28];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v22);
    }

    self = selfCopy;
    [(GKCompatibilityEntryCacheObject *)selfCopy setVersions:v19];

    representationCopy = v50;
    v18 = v43;
    v15 = v45;
  }

  shortVersions = [(GKCompatibilityEntryCacheObject *)self shortVersions];
  [managedObjectContext _gkDeleteObjects:shortVersions];

  v30 = [representationCopy objectForKey:@"short-versions"];
  v31 = v30;
  if (v13 && [v30 count])
  {
    v44 = v18;
    v46 = v15;
    v47 = v13;
    selfCopy2 = self;
    v51 = representationCopy;
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
            v41 = [(GKCacheObject *)[GKCompatibilityShortVersionCacheObject alloc] initWithManagedObjectContext:managedObjectContext];
            [(GKCompatibilityShortVersionCacheObject *)v41 setShortVersion:v40];
            [v32 addObject:v41];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v35);
    }

    [(GKCompatibilityEntryCacheObject *)selfCopy2 setShortVersions:v32];
    representationCopy = v51;
    v13 = v47;
    v18 = v44;
    v15 = v46;
    v31 = v42;
  }
}

@end