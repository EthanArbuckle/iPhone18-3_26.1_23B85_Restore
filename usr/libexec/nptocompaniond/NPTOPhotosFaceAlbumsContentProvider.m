@interface NPTOPhotosFaceAlbumsContentProvider
- (NPTOPhotosFaceAlbumsContentProvider)initWithDevice:(id)a3;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)_defaultAssetFetchOptions;
- (id)assetsForAssetCollection:(id)a3;
- (id)keyAssetsForAssetCollection:(id)a3;
- (void)_invalidateContent;
@end

@implementation NPTOPhotosFaceAlbumsContentProvider

- (NPTOPhotosFaceAlbumsContentProvider)initWithDevice:(id)a3
{
  v4 = a3;
  if (([v4 relationship] & 2) != 0)
  {
    v20 = 0;
  }

  else
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = [v5 deviceForIDSDevice:v4];

    v7 = [[NSUUID alloc] initWithUUIDString:@"41714B27-B839-4AB5-8A36-6191015AA8FE"];
    v8 = [v6 supportsCapability:v7];

    if (v8)
    {
      v27.receiver = self;
      v27.super_class = NPTOPhotosFaceAlbumsContentProvider;
      v9 = [(NPTOPhotosFaceAlbumsContentProvider *)&v27 init];
      if (v9)
      {
        v10 = [[NPTOPreferencesAccessor alloc] initWithDevice:v6];
        preferencesAccessor = v9->_preferencesAccessor;
        v9->_preferencesAccessor = v10;

        objc_initWeak(&location, v9);
        v12 = v9->_preferencesAccessor;
        v13 = NPTOPreferencesWatchFaceAlbumFetchCountsKey;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10004A39C;
        v24[3] = &unk_10008B1C0;
        objc_copyWeak(&v25, &location);
        v14 = [(NPTOPreferencesAccessor *)v12 changeObserverForKey:v13 queue:0 block:v24];
        fetchCountsPreferenceObserver = v9->_fetchCountsPreferenceObserver;
        v9->_fetchCountsPreferenceObserver = v14;

        v16 = v9->_preferencesAccessor;
        v17 = NPTOPreferencesWatchFaceAlwaysUpdatingAlbumsKey;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10004A41C;
        v22[3] = &unk_10008B1C0;
        objc_copyWeak(&v23, &location);
        v18 = [(NPTOPreferencesAccessor *)v16 changeObserverForKey:v17 queue:0 block:v22];
        alwaysUpdatingAlbumsPreferenceObserver = v9->_alwaysUpdatingAlbumsPreferenceObserver;
        v9->_alwaysUpdatingAlbumsPreferenceObserver = v18;

        objc_destroyWeak(&v23);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }

      self = v9;
      v20 = self;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)assetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NPTOPreferencesAccessor *)self->_preferencesAccessor npto_fetchCountForAssetCollection:v4];
  if (v5)
  {
    v6 = [(NPTOPhotosFaceAlbumsContentProvider *)self _defaultAssetFetchOptions];
    v7 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v6 setSortDescriptors:v8];

    [v6 setFetchLimit:v5];
    v5 = [PHAsset fetchAssetsInAssetCollection:v4 options:v6];
  }

  return v5;
}

- (id)keyAssetsForAssetCollection:(id)a3
{
  v4 = a3;
  if ([(NPTOPreferencesAccessor *)self->_preferencesAccessor npto_fetchCountForAssetCollection:v4])
  {
    v5 = [(NPTOPhotosFaceAlbumsContentProvider *)self _defaultAssetFetchOptions];
    v6 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [v5 setSortDescriptors:v7];

    [v5 setFetchLimit:1];
    v8 = [PHAsset fetchKeyAssetsInAssetCollection:v4 options:v5];
  }

  else
  {
    v8 = 0;
  }

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

- (void)_invalidateContent
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[NPTOPhotosFaceAlbumsContentProvider _invalidateContent]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/nptocompaniond/NPTOPhotosFaceAlbumsContentProvider.m";
    v9 = 1024;
    v10 = 102;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  v4 = [(NPTOPhotosFaceAlbumsContentProvider *)self delegate];
  [v4 contentProviderDidInvalidateContent:self];
}

- (NPTOSyncContentProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end