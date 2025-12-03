@interface NPTOPhotosFaceMemoriesContentProvider
- (NPTOPhotosFaceMemoriesContentProvider)initWithDevice:(id)device;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)_assetCollections;
- (id)_defaultAssetFetchOptions;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)collection;
- (id)keyAssetsForAssetCollection:(id)collection;
- (void)_invalidateContentIfNeeded;
@end

@implementation NPTOPhotosFaceMemoriesContentProvider

- (NPTOPhotosFaceMemoriesContentProvider)initWithDevice:(id)device
{
  deviceCopy = device;
  if (([deviceCopy relationship] & 2) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = [v5 deviceForIDSDevice:deviceCopy];

    v7 = [[NSUUID alloc] initWithUUIDString:@"76EFD58C-2211-40CE-A4BA-891FE464B629"];
    v8 = [v6 supportsCapability:v7];

    if (v8)
    {
      v22.receiver = self;
      v22.super_class = NPTOPhotosFaceMemoriesContentProvider;
      v9 = [(NPTOPhotosFaceMemoriesContentProvider *)&v22 init];
      if (v9)
      {
        v10 = dispatch_queue_create("com.apple.nanophotos.photosFaceMemories", 0);
        v11 = *(v9 + 2);
        *(v9 + 2) = v10;

        v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v9 + 2));
        v13 = *(v9 + 3);
        *(v9 + 3) = v12;

        objc_initWeak(&location, v9);
        v14 = *(v9 + 3);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100048D9C;
        v19[3] = &unk_10008B1C0;
        objc_copyWeak(&v20, &location);
        dispatch_source_set_event_handler(v14, v19);
        v15 = *(v9 + 3);
        v16 = dispatch_time(0, 3600000000000);
        dispatch_source_set_timer(v15, v16, 0x34630B8A000uLL, 0xDF8475800uLL);
        dispatch_resume(*(v9 + 3));
        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }

      self = v9;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)assetCollections
{
  assetCollections = self->_assetCollections;
  if (!assetCollections)
  {
    _assetCollections = [(NPTOPhotosFaceMemoriesContentProvider *)self _assetCollections];
    v5 = self->_assetCollections;
    self->_assetCollections = _assetCollections;

    assetCollections = self->_assetCollections;
  }

  return assetCollections;
}

- (id)assetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _defaultAssetFetchOptions = [(NPTOPhotosFaceMemoriesContentProvider *)self _defaultAssetFetchOptions];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v20 = v6;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  [_defaultAssetFetchOptions setSortDescriptors:v7];

  [_defaultAssetFetchOptions setFetchLimit:15];
  v8 = [PHAsset fetchReducedCuratedAssetsInMemory:collectionCopy options:_defaultAssetFetchOptions];
  v9 = sub_10000268C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    localizedTitle = [collectionCopy localizedTitle];
    localIdentifier = [collectionCopy localIdentifier];
    v14 = 134218498;
    v15 = v10;
    v16 = 2112;
    v17 = localizedTitle;
    v18 = 2112;
    v19 = localIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NPTOPhotosFaceMemory: Found %ld assets in memory %@ (%@)", &v14, 0x20u);
  }

  return v8;
}

- (id)keyAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _defaultAssetFetchOptions = [(NPTOPhotosFaceMemoriesContentProvider *)self _defaultAssetFetchOptions];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  [_defaultAssetFetchOptions setSortDescriptors:v7];

  [_defaultAssetFetchOptions setFetchLimit:1];
  v8 = [PHAsset fetchKeyCuratedAssetInAssetCollection:collectionCopy referenceAsset:0 options:_defaultAssetFetchOptions];

  return v8;
}

- (id)_defaultAssetFetchOptions
{
  v2 = objc_alloc_init(PHFetchOptions);
  v3 = [NSPredicate predicateWithFormat:@"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3];
  [v2 setPredicate:v3];

  v6 = PHAssetPropertySetPhotoIris;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v2 addFetchPropertySets:v4];

  return v2;
}

- (id)_assetCollections
{
  v2 = objc_alloc_init(PHFetchOptions);
  pHMemoryGreatScoreThreshold = [NSPredicate predicateWithFormat:@"score >= %f", PHMemoryGreatScoreThreshold];
  [v2 setPredicate:pHMemoryGreatScoreThreshold];

  v4 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v116 = v4;
  v5 = [NSArray arrayWithObjects:&v116 count:1];
  [v2 setSortDescriptors:v5];

  v6 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v2];
  v7 = sub_10000268C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    *buf = 134217984;
    v125 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "pickGreatMemory: %ld memories in fetch result", buf, 0xCu);
  }

  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v108;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v108 != v13)
        {
          objc_enumerationMutation(v10);
        }

        localIdentifier = [*(*(&v107 + 1) + 8 * i) localIdentifier];
        [v9 addObject:localIdentifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v12);
  }

  if (![v9 count])
  {
    v27 = 0;
    goto LABEL_96;
  }

  v16 = CFPreferencesCopyAppValue(@"PhotosFaceMemoryHistoryList", @"com.apple.nptocompaniond");
  v17 = &PHImageErrorKey_ptr;
  v93 = v2;
  v94 = v10;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = sub_10000268C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v125 = v16;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "readHistoryList: bad preference value: %@", buf, 0xCu);
      }

      v26 = 0;
LABEL_32:

      goto LABEL_33;
    }

    if ([v16 count])
    {
      v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v119 objects:buf count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v120;
        while (2)
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v120 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v119 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v28 = sub_10000268C();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *v117 = 138412290;
                v118 = v24;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "readHistoryList: bad dictionary value in preference: %@", v117, 0xCu);
              }

              v26 = 0;
              v10 = v94;
              goto LABEL_31;
            }

            v25 = [[_HistoryItem alloc] initWithDictionary:v24];
            [v18 addObject:v25];
          }

          v21 = [v19 countByEnumeratingWithState:&v119 objects:buf count:16];
          v10 = v94;
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v18 = v18;
      v26 = v18;
LABEL_31:
      v17 = &PHImageErrorKey_ptr;
      goto LABEL_32;
    }
  }

  v26 = 0;
LABEL_33:

  v29 = [NSMutableArray arrayWithCapacity:[v26 count]];
  firstObject = [v10 firstObject];
  localIdentifier2 = [firstObject localIdentifier];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v31 = v26;
  v32 = [v31 countByEnumeratingWithState:&v103 objects:&v119 count:16];
  v97 = v29;
  v98 = v31;
  if (!v32)
  {

LABEL_67:
    v62 = sub_10000268C();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v125 = localIdentifier2;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "pickGreatMemory: there's a new great memory: %@", buf, 0xCu);
    }

    anyObject = objc_opt_new();
    [anyObject setLocalIdentifier:localIdentifier2];
    v63 = +[NSDate date];
    [anyObject setTimestamp:v63];

    [v29 insertObject:anyObject atIndex:0];
LABEL_70:

LABEL_71:
    v64 = v29;
    if ([v64 count])
    {
      v65 = [v17[69] arrayWithCapacity:{objc_msgSend(v64, "count")}];
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v66 = v64;
      v67 = [v66 countByEnumeratingWithState:&v111 objects:buf count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v112;
        do
        {
          for (k = 0; k != v68; k = k + 1)
          {
            if (*v112 != v69)
            {
              objc_enumerationMutation(v66);
            }

            asDictionary = [*(*(&v111 + 1) + 8 * k) asDictionary];
            [v65 addObject:asDictionary];
          }

          v68 = [v66 countByEnumeratingWithState:&v111 objects:buf count:16];
        }

        while (v68);
      }

      CFPreferencesSetAppValue(@"PhotosFaceMemoryHistoryList", v65, @"com.apple.nptocompaniond");
      v31 = v98;
    }

    else
    {
      CFPreferencesSetAppValue(@"PhotosFaceMemoryHistoryList", 0, @"com.apple.nptocompaniond");
    }

    CFPreferencesAppSynchronize(@"com.apple.nptocompaniond");

    goto LABEL_82;
  }

  v33 = v32;
  v34 = 0;
  v35 = *v104;
  v95 = 1;
  do
  {
    v36 = 0;
    do
    {
      if (*v104 != v35)
      {
        objc_enumerationMutation(v31);
      }

      v37 = *(*(&v103 + 1) + 8 * v36);
      localIdentifier3 = [v37 localIdentifier];
      if ([v9 containsObject:localIdentifier3])
      {
        timestamp = [v37 timestamp];
        [timestamp timeIntervalSinceNow];
        v41 = v40;

        v31 = v98;
        if (v41 > -2592000.0)
        {
          [v29 addObject:v37];
          localIdentifier4 = [v37 localIdentifier];
          v43 = localIdentifier2;
          v44 = v43;
          if (localIdentifier4 == v43 || localIdentifier4 && ([v43 isEqualToString:localIdentifier4]& 1) != 0)
          {

            v95 = 0;
          }

          else
          {
          }

          goto LABEL_48;
        }
      }

      else
      {
      }

      localIdentifier4 = sub_10000268C();
      if (os_log_type_enabled(localIdentifier4, OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier5 = [v37 localIdentifier];
        *buf = 138412290;
        v125 = localIdentifier5;
        _os_log_impl(&_mh_execute_header, localIdentifier4, OS_LOG_TYPE_DEFAULT, "pickGreatMemory: removing memory %@ from the history list", buf, 0xCu);
      }

      v34 = 1;
LABEL_48:

      v36 = v36 + 1;
    }

    while (v33 != v36);
    v46 = [v31 countByEnumeratingWithState:&v103 objects:&v119 count:16];
    v33 = v46;
  }

  while (v46);

  v10 = v94;
  v17 = &PHImageErrorKey_ptr;
  if (v95)
  {
    goto LABEL_67;
  }

  firstObject2 = [v29 firstObject];
  timestamp2 = [firstObject2 timestamp];
  [timestamp2 timeIntervalSinceNow];
  v50 = v49;

  if (v50 < -604800.0)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v51 = v29;
    v52 = [v51 countByEnumeratingWithState:&v99 objects:v117 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v100;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v100 != v54)
          {
            objc_enumerationMutation(v51);
          }

          localIdentifier6 = [*(*(&v99 + 1) + 8 * m) localIdentifier];
          [v9 removeObject:localIdentifier6];
        }

        v53 = [v51 countByEnumeratingWithState:&v99 objects:v117 count:16];
      }

      while (v53);
    }

    anyObject = [v9 anyObject];
    if (!anyObject)
    {
      lastObject = [v51 lastObject];
      anyObject = [lastObject localIdentifier];

      [v51 removeLastObject];
    }

    v59 = sub_10000268C();
    v17 = &PHImageErrorKey_ptr;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v125 = anyObject;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "pickGreatMemory: newest great memory has been shown for more than 7 days; changing to %@", buf, 0xCu);
    }

    v60 = objc_opt_new();
    [v60 setLocalIdentifier:anyObject];
    v61 = +[NSDate date];
    [v60 setTimestamp:v61];

    [v51 insertObject:v60 atIndex:0];
    v31 = v98;
    goto LABEL_70;
  }

  v92 = sub_10000268C();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "pickGreatMemory: newest great memory didn't change", buf, 2u);
  }

  v31 = v98;
  if (v34)
  {
    goto LABEL_71;
  }

LABEL_82:
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v72 = v10;
  v73 = [v72 countByEnumeratingWithState:&v111 objects:buf count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v112;
    while (2)
    {
      for (n = 0; n != v74; n = n + 1)
      {
        if (*v112 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v111 + 1) + 8 * n);
        localIdentifier7 = [v77 localIdentifier];
        firstObject3 = [v97 firstObject];
        localIdentifier8 = [firstObject3 localIdentifier];
        v81 = localIdentifier7;
        v82 = localIdentifier8;
        v83 = v82;
        if (v81 == v82 || v81 && ([v82 isEqualToString:v81] & 1) != 0)
        {

          v27 = v77;
          v10 = v94;
          v31 = v98;
          goto LABEL_95;
        }

        v31 = v98;
      }

      v74 = [v72 countByEnumeratingWithState:&v111 objects:buf count:16];
      v27 = 0;
      v10 = v94;
      if (v74)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_95:

  v2 = v93;
LABEL_96:

  localIdentifier10 = sub_10000268C();
  v85 = os_log_type_enabled(localIdentifier10, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v85)
    {
      localizedTitle = [v27 localizedTitle];
      localizedSubtitle = [v27 localizedSubtitle];
      localIdentifier9 = [v27 localIdentifier];
      *buf = 138412802;
      v125 = localizedTitle;
      v126 = 2112;
      v127 = localizedSubtitle;
      v128 = 2112;
      v129 = localIdentifier9;
      _os_log_impl(&_mh_execute_header, localIdentifier10, OS_LOG_TYPE_DEFAULT, "NPTOPhotosFaceMemory: great memory: title: %@, subtitle: %@, local id: %@", buf, 0x20u);
    }

    localIdentifier10 = [v27 localIdentifier];
    v115 = localIdentifier10;
    v89 = [NSArray arrayWithObjects:&v115 count:1];
    v90 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v89 options:0];
  }

  else
  {
    if (v85)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, localIdentifier10, OS_LOG_TYPE_DEFAULT, "NPTOPhotosFaceMemory: there were no great memories", buf, 2u);
    }

    v90 = 0;
  }

  return v90;
}

- (void)_invalidateContentIfNeeded
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[NPTOPhotosFaceMemoriesContentProvider _invalidateContentIfNeeded]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/nptocompaniond/NPTOPhotosFaceMemoriesContentProvider.m";
    v16 = 1024;
    v17 = 302;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v12, 0x1Cu);
  }

  _assetCollections = [(NPTOPhotosFaceMemoriesContentProvider *)self _assetCollections];
  v5 = _assetCollections;
  if (self->_assetCollections)
  {
    firstObject = [_assetCollections firstObject];
    localIdentifier = [firstObject localIdentifier];
    firstObject2 = [(PHFetchResult *)self->_assetCollections firstObject];
    localIdentifier2 = [firstObject2 localIdentifier];
    v10 = [localIdentifier isEqual:localIdentifier2];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_assetCollections, v5);
      delegate = [(NPTOPhotosFaceMemoriesContentProvider *)self delegate];
      [delegate contentProviderDidInvalidateContent:self];
    }
  }
}

- (NPTOSyncContentProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end