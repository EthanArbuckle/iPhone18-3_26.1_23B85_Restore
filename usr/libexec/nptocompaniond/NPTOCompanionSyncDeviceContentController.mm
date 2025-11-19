@interface NPTOCompanionSyncDeviceContentController
- (NPTOCompanionSyncDeviceContentController)initWithDevice:(id)a3;
- (NPTOCompanionSyncDeviceContentControllerDelegate)delegate;
- (id)_assetForLocalIdentifier:(id)a3;
- (id)_collectionGroups;
- (id)_collectionTargetListWithLibrary:(id)a3;
- (id)_composeSyncRequest;
- (id)_contentProviderClasses;
- (id)_contentProviders;
- (id)_indexesOfAssetsRequiringExternalPowerSourceConnectedWithLibrary:(id)a3;
- (id)_libraryRepresentation;
- (id)assetForLocalIdentifier:(id)a3;
- (id)composeSyncRequest;
- (int)_assetCollectionSubtype:(int64_t)a3;
- (int)_assetCollectionType:(int64_t)a3;
- (void)_enumerateCollectionsUsingBlock:(id)a3;
- (void)_handleContentProviderDidInvalidateContent:(id)a3;
- (void)_handlePhotoLibraryDidChange:(id)a3;
- (void)composeSyncRequestWithCompletion:(id)a3;
- (void)contentProviderDidInvalidateContent:(id)a3;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation NPTOCompanionSyncDeviceContentController

- (NPTOCompanionSyncDeviceContentController)initWithDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NPTOCompanionSyncDeviceContentController;
  v6 = [(NPTOCompanionSyncDeviceContentController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.nptocompaniond.NPTOCompanionSyncDeviceContentController", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = +[PHPhotoLibrary sharedPhotoLibrary];
    [v11 registerChangeObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  [v3 unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = NPTOCompanionSyncDeviceContentController;
  [(NPTOCompanionSyncDeviceContentController *)&v4 dealloc];
}

- (id)composeSyncRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000501AC;
  v10 = sub_1000501BC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000501C4;
  v5[3] = &unk_10008B488;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)composeSyncRequestWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000502A8;
  v7[3] = &unk_10008B4B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)assetForLocalIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000501AC;
  v16 = sub_1000501BC;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050424;
  block[3] = &unk_10008B4D8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_contentProviderClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

- (id)_contentProviders
{
  dispatch_assert_queue_V2(self->_queue);
  contentProviders = self->_contentProviders;
  if (!contentProviders)
  {
    v4 = [(NPTOCompanionSyncDeviceContentController *)self _contentProviderClasses];
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(*(*(&v18 + 1) + 8 * i)) initWithDevice:self->_device];
          v12 = v11;
          if (v11)
          {
            [v11 setDelegate:self];
            [v5 addObject:v12];
            v13 = sub_10000268C();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [(IDSDevice *)self->_device name];
              *buf = 138412546;
              v23 = v12;
              v24 = 2112;
              v25 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Content] Registered new content provider: %@ for device: %@", buf, 0x16u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }

    v15 = [v5 copy];
    v16 = self->_contentProviders;
    self->_contentProviders = v15;

    contentProviders = self->_contentProviders;
  }

  return contentProviders;
}

- (id)_collectionGroups
{
  dispatch_assert_queue_V2(self->_queue);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = self;
  obj = [(NPTOCompanionSyncDeviceContentController *)self _contentProviders];
  v34 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v34)
  {
    v33 = *v42;
    do
    {
      v3 = 0;
      do
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v3;
        v4 = *(*(&v41 + 1) + 8 * v3);
        v5 = [(NSMapTable *)v36->_collectionGroups objectForKey:v4];
        if (!v5)
        {
          v5 = objc_alloc_init(NPTOSyncCollectionGroup);
          [(NPTOSyncCollectionGroup *)v5 setContentProvider:v4];
          v6 = [v4 assetCollections];
          [(NPTOSyncCollectionGroup *)v5 setAssetCollections:v6];

          collectionGroups = v36->_collectionGroups;
          if (!collectionGroups)
          {
            v8 = +[NSMapTable weakToStrongObjectsMapTable];
            v9 = v36->_collectionGroups;
            v36->_collectionGroups = v8;

            collectionGroups = v36->_collectionGroups;
          }

          [(NSMapTable *)collectionGroups setObject:v5 forKey:v4];
          v10 = sub_10000268C();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [(IDSDevice *)v36->_device name];
            *buf = 138412546;
            v47 = v5;
            v48 = 2112;
            v49 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Content] Registered new collection group: %@ for device: %@", buf, 0x16u);
          }
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v12 = [(NPTOSyncCollectionGroup *)v5 assetCollections];
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v38;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v37 + 1) + 8 * i);
              v18 = objc_autoreleasePoolPush();
              v19 = [(NPTOSyncCollectionGroup *)v5 collections];
              v20 = [v19 objectForKey:v17];

              if (!v20)
              {
                v20 = objc_alloc_init(NPTOSyncCollection);
                [(NPTOSyncCollection *)v20 setContentProvider:v4];
                [(NPTOSyncCollection *)v20 setAssetCollection:v17];
                v21 = [v4 assetsForAssetCollection:v17];
                [(NPTOSyncCollection *)v20 setAssets:v21];

                v22 = [v4 keyAssetsForAssetCollection:v17];
                [(NPTOSyncCollection *)v20 setKeyAssets:v22];

                if (objc_opt_respondsToSelector())
                {
                  v23 = [v4 assetsRequireExternalPowerSourceConnectedForAssetCollection:v17];
                }

                else
                {
                  v23 = 0;
                }

                [(NPTOSyncCollection *)v20 setAssetsRequireExternalPowerSourceConnected:v23];
                if (objc_opt_respondsToSelector())
                {
                  v24 = [v4 isPlaceholderAssetCollection:v17];
                }

                else
                {
                  v24 = 0;
                }

                [(NPTOSyncCollection *)v20 setPlaceholder:v24];
                v25 = [(NPTOSyncCollectionGroup *)v5 collections];

                if (!v25)
                {
                  v26 = +[NSMapTable weakToStrongObjectsMapTable];
                  [(NPTOSyncCollectionGroup *)v5 setCollections:v26];
                }

                v27 = [(NPTOSyncCollectionGroup *)v5 collections];
                [v27 setObject:v20 forKey:v17];

                v28 = sub_10000268C();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = [(IDSDevice *)v36->_device name];
                  *buf = 138412546;
                  v47 = v20;
                  v48 = 2112;
                  v49 = v29;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[Content] Registered new collection: %@ for device: %@", buf, 0x16u);
                }
              }

              objc_autoreleasePoolPop(v18);
            }

            v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v14);
        }

        v3 = v35 + 1;
      }

      while ((v35 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v34);
  }

  v30 = v36->_collectionGroups;

  return v30;
}

- (void)_enumerateCollectionsUsingBlock:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(NPTOCompanionSyncDeviceContentController *)self _contentProviders];
  v22 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v6 = *v31;
    v20 = *v31;
    v21 = self;
    v24 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v23 = v7;
        v8 = *(*(&v30 + 1) + 8 * v7);
        v9 = [(NPTOCompanionSyncDeviceContentController *)self _collectionGroups:v20];
        v10 = [v9 objectForKey:v8];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v11 = [v10 assetCollections];
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              v18 = [v10 collections];
              v19 = [v18 objectForKey:v16];

              if (v4)
              {
                v25 = 0;
                v4[2](v4, v19, &v25);
                if (v25)
                {

                  objc_autoreleasePoolPop(v17);
                  v5 = v24;
                  goto LABEL_19;
                }
              }

              objc_autoreleasePoolPop(v17);
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v23 + 1;
        v6 = v20;
        self = v21;
        v5 = v24;
      }

      while ((v23 + 1) != v22);
      v22 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }

LABEL_19:
}

- (id)_composeSyncRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(NPTOSyncRequest);
  v4 = [(NPTOCompanionSyncDeviceContentController *)self _libraryRepresentation];
  [(NPTOSyncRequest *)v3 setLibrary:v4];

  v5 = [(NPTOSyncRequest *)v3 library];
  v6 = [(NPTOCompanionSyncDeviceContentController *)self _collectionTargetListWithLibrary:v5];
  [(NPTOSyncRequest *)v3 setCollectionTargetList:v6];

  v7 = [(NPTOSyncRequest *)v3 library];
  v8 = [(NPTOCompanionSyncDeviceContentController *)self _indexesOfAssetsRequiringExternalPowerSourceConnectedWithLibrary:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100050FDC;
  v11[3] = &unk_10008B500;
  v9 = v3;
  v12 = v9;
  [v8 enumerateIndexesUsingBlock:v11];

  return v9;
}

- (id)_assetForLocalIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000501AC;
  v15 = sub_1000501BC;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100051118;
  v8[3] = &unk_10008B528;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(NPTOCompanionSyncDeviceContentController *)self _enumerateCollectionsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_libraryRepresentation
{
  dispatch_assert_queue_V2(self->_queue);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100051378;
  v15[3] = &unk_10008B550;
  v3 = objc_alloc_init(NPTOLibrary);
  v16 = v3;
  [(NPTOCompanionSyncDeviceContentController *)self _enumerateCollectionsUsingBlock:v15];
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 deviceForIDSDevice:self->_device];

  v6 = [[NSUUID alloc] initWithUUIDString:@"41714B27-B839-4AB5-8A36-6191015AA8FE"];
  v7 = [v5 supportsCapability:v6] ^ 1;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000513D0;
  v12[3] = &unk_10008B578;
  v14 = v7;
  v8 = v3;
  v13 = v8;
  [(NPTOCompanionSyncDeviceContentController *)self _enumerateCollectionsUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

- (id)_collectionTargetListWithLibrary:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005156C;
  v10[3] = &unk_10008B5A0;
  v11 = v4;
  v12 = self;
  v5 = objc_alloc_init(NPTOCollectionTargetList);
  v13 = v5;
  v6 = v4;
  [(NPTOCompanionSyncDeviceContentController *)self _enumerateCollectionsUsingBlock:v10];
  v7 = v13;
  v8 = v5;

  return v5;
}

- (int)_assetCollectionType:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_assetCollectionSubtype:(int64_t)a3
{
  if (a3 > 100)
  {
    if (a3 != 101)
    {
      if (a3 == 203)
      {
        return 203;
      }

      return 0;
    }

    return 101;
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 100)
      {
        return 100;
      }

      return 0;
    }

    return 2;
  }
}

- (id)_indexesOfAssetsRequiringExternalPowerSourceConnectedWithLibrary:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  +[NSMutableIndexSet indexSet];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100051B08;
  v5 = v17[3] = &unk_10008B5F0;
  v18 = v5;
  v6 = v4;
  v19 = v6;
  [(NPTOCompanionSyncDeviceContentController *)self _enumerateCollectionsUsingBlock:v17];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100051C18;
  v14 = &unk_10008B5F0;
  v15 = v5;
  v16 = v6;
  v7 = v6;
  v8 = v5;
  [(NPTOCompanionSyncDeviceContentController *)self _enumerateCollectionsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

- (void)_handleContentProviderDidInvalidateContent:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(NSMapTable *)self->_collectionGroups removeObjectForKey:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 controllerDidInvalidateContent:self];
  }
}

- (void)_handlePhotoLibraryDidChange:(id)a3
{
  v42 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v40 = self;
  v4 = [(NPTOCompanionSyncDeviceContentController *)self _contentProviders];
  v37 = [v4 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v37)
  {
    v5 = 0;
    obj = v4;
    v36 = *v48;
    do
    {
      v6 = 0;
      do
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NSMapTable *)v40->_collectionGroups objectForKey:*(*(&v47 + 1) + 8 * v6)];
        v8 = [v7 assetCollections];
        v9 = [v42 changeDetailsForFetchResult:v8];

        if (v9)
        {
          v10 = [v9 fetchResultAfterChanges];
          [v7 setAssetCollections:v10];

          [v7 setCollections:0];
          v11 = sub_10000268C();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [(IDSDevice *)v40->_device name];
            *buf = 138412546;
            v53 = v7;
            v54 = 2112;
            v55 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Content] Updated collection group: %@ for device: %@", buf, 0x16u);
          }

          v5 = 1;
        }

        v38 = v9;
        v39 = v6;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = [v7 assetCollections];
        v13 = [v41 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v44;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v44 != v15)
              {
                objc_enumerationMutation(v41);
              }

              v17 = *(*(&v43 + 1) + 8 * i);
              v18 = objc_autoreleasePoolPush();
              v19 = [v7 collections];
              v20 = [v19 objectForKey:v17];

              v21 = [v20 assets];

              if (v21)
              {
                v22 = [v20 assets];
                v23 = [v42 npto_relevantChangeDetailsForFetchResult:v22];

                if (v23)
                {
                  v24 = [v23 fetchResultAfterChanges];
                  [v20 setAssets:v24];

                  v25 = sub_10000268C();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = [(IDSDevice *)v40->_device name];
                    *buf = 138412546;
                    v53 = v20;
                    v54 = 2112;
                    v55 = v26;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Content] Updated collection assets: %@ for device: %@", buf, 0x16u);
                  }

                  v5 = 1;
                }
              }

              v27 = [v20 keyAssets];

              if (v27)
              {
                v28 = [v20 keyAssets];
                v29 = [v42 npto_relevantChangeDetailsForFetchResult:v28];

                if (v29)
                {
                  v30 = [v29 fetchResultAfterChanges];
                  [v20 setKeyAssets:v30];

                  v31 = sub_10000268C();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    v32 = [(IDSDevice *)v40->_device name];
                    *buf = 138412546;
                    v53 = v20;
                    v54 = 2112;
                    v55 = v32;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[Content] Updated collection key assets: %@ for device: %@", buf, 0x16u);
                  }

                  v5 = 1;
                }
              }

              objc_autoreleasePoolPop(v18);
            }

            v14 = [v41 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v14);
        }

        v6 = v39 + 1;
      }

      while ((v39 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v37);

    if (v5)
    {
      v33 = sub_10000268C();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Photo library did change, content providers have relevant changes.", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&v40->_delegate);
      [WeakRetained controllerDidInvalidateContent:v40];
      goto LABEL_38;
    }
  }

  else
  {
  }

  WeakRetained = sub_10000268C();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Photo library did change, but we don't care about the changes.", buf, 2u);
  }

LABEL_38:
}

- (void)contentProviderDidInvalidateContent:(id)a3
{
  v4 = a3;
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "contentProviderDidInvalidateContent: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005246C;
  v8[3] = &unk_10008B618;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[NPTOCompanionSyncDeviceContentController photoLibraryDidChange:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/nptocompaniond/NPTOCompanionSyncDeviceContentController.m";
    v15 = 1024;
    v16 = 403;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052630;
  v8[3] = &unk_10008B618;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (NPTOCompanionSyncDeviceContentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end