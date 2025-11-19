@interface NPTOPhotosAppContentProvider
- (NPTOPhotosAppContentProvider)initWithDevice:(id)a3;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)a3;
- (void)_invalidateContent;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation NPTOPhotosAppContentProvider

- (NPTOPhotosAppContentProvider)initWithDevice:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = NPTOPhotosAppContentProvider;
  v5 = [(NPTOPhotosAppContentProvider *)&v34 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.nptocompaniond.NPTOPhotosAppContentProvider", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v9 = [v8 deviceForIDSDevice:v4];

    v10 = [[NPTOPreferencesAccessor alloc] initWithDevice:v9];
    preferencesAccessor = v5->_preferencesAccessor;
    v5->_preferencesAccessor = v10;

    objc_storeStrong(&v5->_nrDevice, v9);
    v12 = objc_alloc_init(NSOperationQueue);
    [v12 setUnderlyingQueue:v5->_queue];
    objc_initWeak(&location, v5);
    v13 = v5->_preferencesAccessor;
    v14 = NPTOPreferencesAppPhotosSyncingEnabledKey;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100047DC0;
    v31[3] = &unk_10008B1C0;
    objc_copyWeak(&v32, &location);
    v15 = [(NPTOPreferencesAccessor *)v13 changeObserverForKey:v14 queue:v12 block:v31];
    photosSyncingEnabledPreferenceObserver = v5->_photosSyncingEnabledPreferenceObserver;
    v5->_photosSyncingEnabledPreferenceObserver = v15;

    v17 = v5->_preferencesAccessor;
    v18 = NPTOPreferencesSyncedAlbumIdentifierKey;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100047E40;
    v29[3] = &unk_10008B1C0;
    objc_copyWeak(&v30, &location);
    v19 = [(NPTOPreferencesAccessor *)v17 changeObserverForKey:v18 queue:v12 block:v29];
    syncedAlbumIdentifierPreferenceObserver = v5->_syncedAlbumIdentifierPreferenceObserver;
    v5->_syncedAlbumIdentifierPreferenceObserver = v19;

    v21 = v5->_preferencesAccessor;
    v22 = NPTOPreferencesSyncedPhotosLimitKey;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100047EC0;
    v27[3] = &unk_10008B1C0;
    objc_copyWeak(&v28, &location);
    v23 = [(NPTOPreferencesAccessor *)v21 changeObserverForKey:v22 queue:v12 block:v27];
    syncedPhotosLimitPreferenceObserver = v5->_syncedPhotosLimitPreferenceObserver;
    v5->_syncedPhotosLimitPreferenceObserver = v23;

    v25 = +[PHPhotoLibrary sharedPhotoLibrary];
    [v25 registerChangeObserver:v5];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  [v3 unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = NPTOPhotosAppContentProvider;
  [(NPTOPhotosAppContentProvider *)&v4 dealloc];
}

- (id)assetCollections
{
  if ([(NPTOPreferencesAccessor *)self->_preferencesAccessor npto_appPhotosSyncingEnabled])
  {
    assetCollections = self->_assetCollections;
    if (!assetCollections)
    {
      v4 = [(NPTOPreferencesAccessor *)self->_preferencesAccessor npto_fetchSyncedAlbum];
      v5 = self->_assetCollections;
      self->_assetCollections = v4;

      assetCollections = self->_assetCollections;
    }

    v6 = assetCollections;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)assetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PHFetchOptions);
  if (_os_feature_enabled_impl() && [v4 assetCollectionSubtype] == 101)
  {
    [v5 setExcludeSensitiveAndUnprocessedAssets:1];
    v6 = sub_10000268C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Sensitive] excludeSensitiveAndUnprocessedAssets set to YES", buf, 2u);
    }
  }

  nrDevice = self->_nrDevice;
  v8 = [[NSUUID alloc] initWithUUIDString:@"EC26A7BC-7571-457B-9DEF-6CB5CF3AB850"];
  LODWORD(nrDevice) = [(NRDevice *)nrDevice supportsCapability:v8];

  if (nrDevice)
  {
    [NSPredicate predicateWithFormat:@"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3, 2];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3, v15];
  }
  v9 = ;
  [v5 setPredicate:v9];

  v10 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v18 = v10;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  [v5 setSortDescriptors:v11];

  [v5 setFetchLimit:{-[NPTOPreferencesAccessor npto_syncedPhotosLimit](self->_preferencesAccessor, "npto_syncedPhotosLimit")}];
  v17 = PHAssetPropertySetPhotoIris;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  [v5 addFetchPropertySets:v12];

  v13 = [PHAsset fetchAssetsInAssetCollection:v4 options:v5];

  return v13;
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100048318;
  v7[3] = &unk_10008B1E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_invalidateContent
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NPTOPhotosAppContentProvider _invalidateContent]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/nptocompaniond/NPTOPhotosAppContentProvider.m";
    v10 = 1024;
    v11 = 126;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  assetCollections = self->_assetCollections;
  self->_assetCollections = 0;

  v5 = [(NPTOPhotosAppContentProvider *)self delegate];
  [v5 contentProviderDidInvalidateContent:self];
}

- (NPTOSyncContentProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end