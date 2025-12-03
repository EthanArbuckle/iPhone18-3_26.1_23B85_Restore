@interface CRThemeAssetDownloader
+ (id)assetType;
- (CRThemeAssetDownloadObserving)downloadObserver;
- (CRThemeAssetDownloader)init;
- (id)_assetQueue_installedAssets;
- (id)_assetQueue_nextRequiredCompatibilityVersionToMatchAssetRequest:(id)request inAssets:(id)assets;
- (void)_assetQueue_cancelUnusedDownloads;
- (void)_assetQueue_matchAssetRequests:(id)requests withAssets:(id)assets completion:(id)completion;
- (void)_assetQueue_notifyObserverOfAsset:(id)asset forAssetRequest:(id)request;
- (void)_assetQueue_notifyObserverOfDownloadAttemptForAssetRequest:(id)request version:(id)version progress:(id)progress;
- (void)_assetQueue_notifyObserverOfFailedDownloadForAssetRequest:(id)request version:(id)version error:(id)error;
- (void)_assetQueue_notifyObserverOfFoundNoAssetForAssetRequest:(id)request nextRequiredCompatibilityVersion:(id)version;
- (void)_assetQueue_queryInstalledAssetsForAssetRequests:(id)requests;
- (void)_assetQueue_queryUpdatedAssetsForRequests:(id)requests;
- (void)_assetQueue_removeAssets:(id)assets;
- (void)_assetQueue_removeAssetsBeforeVersion:(id)version;
- (void)_assetQueue_removeUnusedAssets;
- (void)_assetQueue_requestAssetCatalogDownload;
- (void)handleDownloadHintForAssetRequest:(id)request;
- (void)removeAssetsBeforeVersion:(id)version;
- (void)setAssetRequests:(id)requests;
@end

@implementation CRThemeAssetDownloader

+ (id)assetType
{
  v2 = +[CRCarPlayPreferences isPreflightThemeAssetEnabled];
  v3 = v2;
  if (v2 && [v2 BOOLValue])
  {
    v4 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PREFLIGHT ASSETS ENABLED", v9, 2u);
    }

    v5 = &CRThemeAssetsPreflightType;
  }

  else
  {
    v5 = &CRThemeAssetsType;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (CRThemeAssetDownloader)init
{
  v9.receiver = self;
  v9.super_class = CRThemeAssetDownloader;
  v2 = [(CRThemeAssetDownloader *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.carkit.ThemeAssetDownloader", v3);
    assetQueue = v2->_assetQueue;
    v2->_assetQueue = v4;

    v6 = +[NSMapTable strongToWeakObjectsMapTable];
    assetQueue_currentlyDownloadingAssets = v2->_assetQueue_currentlyDownloadingAssets;
    v2->_assetQueue_currentlyDownloadingAssets = v6;

    [(CRThemeAssetDownloader *)v2 setAssetQueue_queryInProgress:0];
  }

  return v2;
}

- (void)setAssetRequests:(id)requests
{
  requestsCopy = requests;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D430;
  v7[3] = &unk_1000DD580;
  v8 = requestsCopy;
  selfCopy = self;
  v6 = requestsCopy;
  dispatch_async(assetQueue, v7);
}

- (void)handleDownloadHintForAssetRequest:(id)request
{
  requestCopy = request;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D68C;
  v7[3] = &unk_1000DD580;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(assetQueue, v7);
}

- (void)removeAssetsBeforeVersion:(id)version
{
  versionCopy = version;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D868;
  v7[3] = &unk_1000DD580;
  v7[4] = self;
  v8 = versionCopy;
  v6 = versionCopy;
  dispatch_async(assetQueue, v7);
}

- (void)_assetQueue_queryInstalledAssetsForAssetRequests:(id)requests
{
  requestsCopy = requests;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v12 = requestsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "checking already installed assets for %{public}@", buf, 0xCu);
  }

  _assetQueue_installedAssets = [(CRThemeAssetDownloader *)self _assetQueue_installedAssets];
  v8 = _assetQueue_installedAssets;
  if (!_assetQueue_installedAssets)
  {
    v9 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000892BC();
    }

    goto LABEL_10;
  }

  if (![_assetQueue_installedAssets count])
  {
    v9 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no installed assets", buf, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006DA30;
  v10[3] = &unk_1000DFDF0;
  v10[4] = self;
  [(CRThemeAssetDownloader *)self _assetQueue_matchAssetRequests:requestsCopy withAssets:v8 completion:v10];
LABEL_11:
}

- (void)_assetQueue_requestAssetCatalogDownload
{
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v4 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting theme assets catalog download", buf, 2u);
  }

  v5 = objc_alloc_init(MADownloadOptions);
  [v5 setAllowsCellularAccess:1];
  assetType = [objc_opt_class() assetType];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DC78;
  v7[3] = &unk_1000DFE40;
  v7[4] = self;
  [MAAsset startCatalogDownload:assetType options:v5 completionWithError:v7];
}

- (void)_assetQueue_queryUpdatedAssetsForRequests:(id)requests
{
  requestsCopy = requests;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  if ([requestsCopy count])
  {
    assetQueue_queryInProgress = [(CRThemeAssetDownloader *)self assetQueue_queryInProgress];
    v7 = CarThemeAssetsLogging();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (assetQueue_queryInProgress)
    {
      if (v8)
      {
        *buf = 0;
        v9 = "asset query already in progress";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 138412290;
        v27 = requestsCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "starting asset query for %@", buf, 0xCu);
      }

      [(CRThemeAssetDownloader *)self setAssetQueue_queryInProgress:1];
      v10 = [MAAssetQuery alloc];
      assetType = [objc_opt_class() assetType];
      v7 = [v10 initWithType:assetType];

      [v7 returnTypes:2];
      [v7 setDoNotBlockBeforeFirstUnlock:1];
      queryMetaDataSync = [v7 queryMetaDataSync];
      results = [v7 results];
      if (queryMetaDataSync)
      {
        if (queryMetaDataSync == 2)
        {
          v14 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000893AC();
          }

          [(CRThemeAssetDownloader *)self _assetQueue_requestAssetCatalogDownload];
        }

        else
        {
          v17 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1000893E8();
          }
        }
      }

      else
      {
        if (([v7 isCatalogFetchedWithinThePastFewDays:3]& 1) == 0)
        {
          v15 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100089370();
          }

          [(CRThemeAssetDownloader *)self _assetQueue_requestAssetCatalogDownload];
        }

        objc_initWeak(buf, self);
        assetRequests = [(CRThemeAssetDownloader *)self assetRequests];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_10006E1C0;
        v21 = &unk_1000DFEE0;
        selfCopy = self;
        v23 = results;
        v24 = requestsCopy;
        objc_copyWeak(&v25, buf);
        [(CRThemeAssetDownloader *)self _assetQueue_matchAssetRequests:assetRequests withAssets:v23 completion:&v18];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      [(CRThemeAssetDownloader *)self setAssetQueue_queryInProgress:0, v18, v19, v20, v21, selfCopy];
    }
  }

  else
  {
    v7 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "no asset requests to query";
      goto LABEL_7;
    }
  }
}

- (id)_assetQueue_installedAssets
{
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v3 = [MAAssetQuery alloc];
  assetType = [objc_opt_class() assetType];
  v5 = [v3 initWithType:assetType];

  [v5 returnTypes:1];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  if ([v5 queryMetaDataSync])
  {
    results = 0;
  }

  else
  {
    results = [v5 results];
  }

  return results;
}

- (void)_assetQueue_cancelUnusedDownloads
{
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  assetQueue_currentlyDownloadingAssets = [(CRThemeAssetDownloader *)self assetQueue_currentlyDownloadingAssets];
  objectEnumerator = [assetQueue_currentlyDownloadingAssets objectEnumerator];

  obj = objectEnumerator;
  v6 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v25 = *v31;
    *&v7 = 138412546;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        cr_assetVersion = [v10 cr_assetVersion];
        identifier = [cr_assetVersion identifier];

        if (identifier)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          assetRequests = [(CRThemeAssetDownloader *)selfCopy assetRequests];
          v14 = [assetRequests countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(assetRequests);
                }

                assetIdentifier = [*(*(&v26 + 1) + 8 * j) assetIdentifier];
                v19 = [identifier isEqualToString:assetIdentifier];

                if (v19)
                {

                  v21 = CarThemeAssetsLogging();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    *buf = v22;
                    v35 = identifier;
                    v36 = 2112;
                    v37 = v10;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "still need ongoing download for assetID %@: %@", buf, 0x16u);
                  }

                  goto LABEL_21;
                }
              }

              v15 = [assetRequests countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v20 = CarThemeAssetsLogging();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v35 = identifier;
            v36 = 2112;
            v37 = v10;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "cancelling download for assetID %@: %@", buf, 0x16u);
          }

          [v10 cancelDownloadSync];
        }

LABEL_21:
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v8);
  }
}

- (void)_assetQueue_removeAssets:(id)assets
{
  assetsCopy = assets;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
        v12 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          cr_assetVersion = [v11 cr_assetVersion];
          *buf = 138543618;
          v19 = cr_assetVersion;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing asset %{public}@: %@", buf, 0x16u);
        }

        [v11 purgeSync];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)_assetQueue_removeUnusedAssets
{
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  [(CRThemeAssetDownloader *)self _assetQueue_cancelUnusedDownloads];
  _assetQueue_installedAssets = [(CRThemeAssetDownloader *)self _assetQueue_installedAssets];
  if (_assetQueue_installedAssets)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006EF20;
    v7[3] = &unk_1000DFF08;
    v7[4] = self;
    v5 = [NSPredicate predicateWithBlock:v7];
    v6 = [_assetQueue_installedAssets filteredArrayUsingPredicate:v5];

    [(CRThemeAssetDownloader *)self _assetQueue_removeAssets:v6];
  }
}

- (void)_assetQueue_removeAssetsBeforeVersion:(id)version
{
  versionCopy = version;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  _assetQueue_installedAssets = [(CRThemeAssetDownloader *)self _assetQueue_installedAssets];
  identifier = [versionCopy identifier];
  v8 = [MAAsset cr_themeAsset_filteredAssets:_assetQueue_installedAssets matchingAssetIdentifier:identifier maximumSDKVersion:0 maximumCompatibilityVersion:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006F1C4;
  v12[3] = &unk_1000DFF08;
  v13 = versionCopy;
  v9 = versionCopy;
  v10 = [NSPredicate predicateWithBlock:v12];
  v11 = [v8 filteredArrayUsingPredicate:v10];

  [(CRThemeAssetDownloader *)self _assetQueue_removeAssets:v11];
}

- (void)_assetQueue_matchAssetRequests:(id)requests withAssets:(id)assets completion:(id)completion
{
  requestsCopy = requests;
  assetsCopy = assets;
  completionCopy = completion;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = requestsCopy;
  v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v22 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        assetIdentifier = [v12 assetIdentifier];
        maximumSDKVersion = [v12 maximumSDKVersion];
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 maximumCompatibilityVersion]);
        v16 = [MAAsset cr_themeAsset_filteredAssets:assetsCopy matchingAssetIdentifier:assetIdentifier maximumSDKVersion:maximumSDKVersion maximumCompatibilityVersion:v15];

        v17 = [MAAsset cr_themeAsset_highestVersionAssetInAssets:v16];
        v18 = [MAAsset cr_installedAssetsInAssets:v16];
        v19 = [MAAsset cr_themeAsset_highestVersionAssetInAssets:v18];
        if (v17 != v19)
        {
          if (!completionCopy)
          {
            goto LABEL_9;
          }

LABEL_8:
          completionCopy[2](completionCopy, v12, v19, v17);
          goto LABEL_9;
        }

        v17 = 0;
        if (completionCopy)
        {
          goto LABEL_8;
        }

LABEL_9:

        v11 = v11 + 1;
      }

      while (v24 != v11);
      v20 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v24 = v20;
    }

    while (v20);
  }
}

- (id)_assetQueue_nextRequiredCompatibilityVersionToMatchAssetRequest:(id)request inAssets:(id)assets
{
  requestCopy = request;
  assetsCopy = assets;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  assetIdentifier = [requestCopy assetIdentifier];
  maximumSDKVersion = [requestCopy maximumSDKVersion];
  v22 = assetsCopy;
  v11 = [MAAsset cr_themeAsset_filteredAssets:assetsCopy matchingAssetIdentifier:assetIdentifier maximumSDKVersion:maximumSDKVersion maximumCompatibilityVersion:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        cr_themeAsset_minimumCompatibilityVersion = [*(*(&v23 + 1) + 8 * i) cr_themeAsset_minimumCompatibilityVersion];
        v18 = cr_themeAsset_minimumCompatibilityVersion;
        if (cr_themeAsset_minimumCompatibilityVersion && (!v14 || [cr_themeAsset_minimumCompatibilityVersion compare:v14] == -1))
        {
          v19 = v18;

          v14 = v19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v20 = v14;

  return v14;
}

- (void)_assetQueue_notifyObserverOfFoundNoAssetForAssetRequest:(id)request nextRequiredCompatibilityVersion:(id)version
{
  requestCopy = request;
  versionCopy = version;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v9 = CarThemeAssetsLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (versionCopy)
  {
    if (v10)
    {
      sub_1000895C8();
    }
  }

  else if (v10)
  {
    sub_10008964C();
  }

  downloadObserver = [(CRThemeAssetDownloader *)self downloadObserver];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    downloadObserver2 = [(CRThemeAssetDownloader *)self downloadObserver];
    [downloadObserver2 assetDownloader:self foundNoAssetForAssetRequest:requestCopy nextRequiredCompatibilityVersion:versionCopy];
  }
}

- (void)_assetQueue_notifyObserverOfDownloadAttemptForAssetRequest:(id)request version:(id)version progress:(id)progress
{
  requestCopy = request;
  versionCopy = version;
  progressCopy = progress;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v12 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = requestCopy;
    v18 = 2112;
    v19 = versionCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "download attempt for asset request: %@ version: %@", &v16, 0x16u);
  }

  downloadObserver = [(CRThemeAssetDownloader *)self downloadObserver];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    downloadObserver2 = [(CRThemeAssetDownloader *)self downloadObserver];
    [downloadObserver2 assetDownloader:self attemptingDownloadForAssetRequest:requestCopy version:versionCopy progress:progressCopy];
  }
}

- (void)_assetQueue_notifyObserverOfAsset:(id)asset forAssetRequest:(id)request
{
  requestCopy = request;
  assetCopy = asset;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v9 = [CARThemeAsset themeAssetFromAsset:assetCopy];

  if (v9)
  {
    v10 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "notifying observer of asset: %{public}@", &v14, 0xCu);
    }

    downloadObserver = [(CRThemeAssetDownloader *)self downloadObserver];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      downloadObserver2 = [(CRThemeAssetDownloader *)self downloadObserver];
      [downloadObserver2 assetDownloader:self hasAsset:v9 forAssetRequest:requestCopy];
    }
  }
}

- (void)_assetQueue_notifyObserverOfFailedDownloadForAssetRequest:(id)request version:(id)version error:(id)error
{
  requestCopy = request;
  versionCopy = version;
  errorCopy = error;
  assetQueue = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(assetQueue);

  v12 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543874;
    v17 = requestCopy;
    v18 = 2114;
    v19 = versionCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "download failed for asset request: %{public}@ version: %{public}@ error: %@", &v16, 0x20u);
  }

  downloadObserver = [(CRThemeAssetDownloader *)self downloadObserver];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    downloadObserver2 = [(CRThemeAssetDownloader *)self downloadObserver];
    [downloadObserver2 assetDownloader:self failedDownloadForAssetRequest:requestCopy version:versionCopy error:errorCopy];
  }
}

- (CRThemeAssetDownloadObserving)downloadObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadObserver);

  return WeakRetained;
}

@end