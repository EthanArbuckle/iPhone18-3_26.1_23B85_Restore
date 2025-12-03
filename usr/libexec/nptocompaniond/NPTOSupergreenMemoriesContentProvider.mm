@interface NPTOSupergreenMemoriesContentProvider
- (NPTOSupergreenMemoriesContentProvider)initWithDevice:(id)device;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)_assetCollections;
- (id)_defaultAssetFetchOptions;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)collection;
- (id)keyAssetsForAssetCollection:(id)collection;
- (void)_invalidateContentIfNeeded;
@end

@implementation NPTOSupergreenMemoriesContentProvider

- (NPTOSupergreenMemoriesContentProvider)initWithDevice:(id)device
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
      v22.super_class = NPTOSupergreenMemoriesContentProvider;
      v9 = [(NPTOSupergreenMemoriesContentProvider *)&v22 init];
      if (v9)
      {
        v10 = dispatch_queue_create("com.apple.nanophotos.supergreenMemories", 0);
        v11 = *(v9 + 2);
        *(v9 + 2) = v10;

        v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v9 + 2));
        v13 = *(v9 + 3);
        *(v9 + 3) = v12;

        objc_initWeak(&location, v9);
        v14 = *(v9 + 3);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10004AC10;
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
    _assetCollections = [(NPTOSupergreenMemoriesContentProvider *)self _assetCollections];
    v5 = self->_assetCollections;
    self->_assetCollections = _assetCollections;

    assetCollections = self->_assetCollections;
  }

  return assetCollections;
}

- (id)assetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _defaultAssetFetchOptions = [(NPTOSupergreenMemoriesContentProvider *)self _defaultAssetFetchOptions];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v20 = v6;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  [_defaultAssetFetchOptions setSortDescriptors:v7];

  [_defaultAssetFetchOptions setFetchLimit:5];
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found %ld assets in memory %@ (%@)", &v14, 0x20u);
  }

  return v8;
}

- (id)keyAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _defaultAssetFetchOptions = [(NPTOSupergreenMemoriesContentProvider *)self _defaultAssetFetchOptions];
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
  v2 = [PHMemory fetchBestRecentMemoryWithOptions:0];
  localIdentifier2 = sub_10000268C();
  v4 = os_log_type_enabled(localIdentifier2, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      localizedTitle = [v2 localizedTitle];
      localizedSubtitle = [v2 localizedSubtitle];
      localIdentifier = [v2 localIdentifier];
      *buf = 138412802;
      v13 = localizedTitle;
      v14 = 2112;
      v15 = localizedSubtitle;
      v16 = 2112;
      v17 = localIdentifier;
      _os_log_impl(&_mh_execute_header, localIdentifier2, OS_LOG_TYPE_DEFAULT, "Best recent memory: title: %@, subtitle: %@, local id: %@", buf, 0x20u);
    }

    localIdentifier2 = [v2 localIdentifier];
    v11 = localIdentifier2;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v8 options:0];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, localIdentifier2, OS_LOG_TYPE_DEFAULT, "There were no best recent memories", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_invalidateContentIfNeeded
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[NPTOSupergreenMemoriesContentProvider _invalidateContentIfNeeded]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/nptocompaniond/NPTOSupergreenMemoriesContentProvider.m";
    v16 = 1024;
    v17 = 104;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v12, 0x1Cu);
  }

  _assetCollections = [(NPTOSupergreenMemoriesContentProvider *)self _assetCollections];
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
      delegate = [(NPTOSupergreenMemoriesContentProvider *)self delegate];
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