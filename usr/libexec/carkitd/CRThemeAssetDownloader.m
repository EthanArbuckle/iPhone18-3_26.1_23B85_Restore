@interface CRThemeAssetDownloader
+ (id)assetType;
- (CRThemeAssetDownloadObserving)downloadObserver;
- (CRThemeAssetDownloader)init;
- (id)_assetQueue_installedAssets;
- (id)_assetQueue_nextRequiredCompatibilityVersionToMatchAssetRequest:(id)a3 inAssets:(id)a4;
- (void)_assetQueue_cancelUnusedDownloads;
- (void)_assetQueue_matchAssetRequests:(id)a3 withAssets:(id)a4 completion:(id)a5;
- (void)_assetQueue_notifyObserverOfAsset:(id)a3 forAssetRequest:(id)a4;
- (void)_assetQueue_notifyObserverOfDownloadAttemptForAssetRequest:(id)a3 version:(id)a4 progress:(id)a5;
- (void)_assetQueue_notifyObserverOfFailedDownloadForAssetRequest:(id)a3 version:(id)a4 error:(id)a5;
- (void)_assetQueue_notifyObserverOfFoundNoAssetForAssetRequest:(id)a3 nextRequiredCompatibilityVersion:(id)a4;
- (void)_assetQueue_queryInstalledAssetsForAssetRequests:(id)a3;
- (void)_assetQueue_queryUpdatedAssetsForRequests:(id)a3;
- (void)_assetQueue_removeAssets:(id)a3;
- (void)_assetQueue_removeAssetsBeforeVersion:(id)a3;
- (void)_assetQueue_removeUnusedAssets;
- (void)_assetQueue_requestAssetCatalogDownload;
- (void)handleDownloadHintForAssetRequest:(id)a3;
- (void)removeAssetsBeforeVersion:(id)a3;
- (void)setAssetRequests:(id)a3;
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

- (void)setAssetRequests:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D430;
  v7[3] = &unk_1000DD580;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleDownloadHintForAssetRequest:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D68C;
  v7[3] = &unk_1000DD580;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeAssetsBeforeVersion:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D868;
  v7[3] = &unk_1000DD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_assetQueue_queryInstalledAssetsForAssetRequests:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "checking already installed assets for %{public}@", buf, 0xCu);
  }

  v7 = [(CRThemeAssetDownloader *)self _assetQueue_installedAssets];
  v8 = v7;
  if (!v7)
  {
    v9 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000892BC();
    }

    goto LABEL_10;
  }

  if (![v7 count])
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
  [(CRThemeAssetDownloader *)self _assetQueue_matchAssetRequests:v4 withAssets:v8 completion:v10];
LABEL_11:
}

- (void)_assetQueue_requestAssetCatalogDownload
{
  v3 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v3);

  v4 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting theme assets catalog download", buf, 2u);
  }

  v5 = objc_alloc_init(MADownloadOptions);
  [v5 setAllowsCellularAccess:1];
  v6 = [objc_opt_class() assetType];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DC78;
  v7[3] = &unk_1000DFE40;
  v7[4] = self;
  [MAAsset startCatalogDownload:v6 options:v5 completionWithError:v7];
}

- (void)_assetQueue_queryUpdatedAssetsForRequests:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v6 = [(CRThemeAssetDownloader *)self assetQueue_queryInProgress];
    v7 = CarThemeAssetsLogging();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
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
        v27 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "starting asset query for %@", buf, 0xCu);
      }

      [(CRThemeAssetDownloader *)self setAssetQueue_queryInProgress:1];
      v10 = [MAAssetQuery alloc];
      v11 = [objc_opt_class() assetType];
      v7 = [v10 initWithType:v11];

      [v7 returnTypes:2];
      [v7 setDoNotBlockBeforeFirstUnlock:1];
      v12 = [v7 queryMetaDataSync];
      v13 = [v7 results];
      if (v12)
      {
        if (v12 == 2)
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
        v16 = [(CRThemeAssetDownloader *)self assetRequests];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_10006E1C0;
        v21 = &unk_1000DFEE0;
        v22 = self;
        v23 = v13;
        v24 = v4;
        objc_copyWeak(&v25, buf);
        [(CRThemeAssetDownloader *)self _assetQueue_matchAssetRequests:v16 withAssets:v23 completion:&v18];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      [(CRThemeAssetDownloader *)self setAssetQueue_queryInProgress:0, v18, v19, v20, v21, v22];
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
  v2 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v2);

  v3 = [MAAssetQuery alloc];
  v4 = [objc_opt_class() assetType];
  v5 = [v3 initWithType:v4];

  [v5 returnTypes:1];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  if ([v5 queryMetaDataSync])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 results];
  }

  return v6;
}

- (void)_assetQueue_cancelUnusedDownloads
{
  v3 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v3);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = self;
  v4 = [(CRThemeAssetDownloader *)self assetQueue_currentlyDownloadingAssets];
  v5 = [v4 objectEnumerator];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
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
        v11 = [v10 cr_assetVersion];
        v12 = [v11 identifier];

        if (v12)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [(CRThemeAssetDownloader *)v24 assetRequests];
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v26 + 1) + 8 * j) assetIdentifier];
                v19 = [v12 isEqualToString:v18];

                if (v19)
                {

                  v21 = CarThemeAssetsLogging();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    *buf = v22;
                    v35 = v12;
                    v36 = 2112;
                    v37 = v10;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "still need ongoing download for assetID %@: %@", buf, 0x16u);
                  }

                  goto LABEL_21;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
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
            v35 = v12;
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

- (void)_assetQueue_removeAssets:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
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
          v13 = [v11 cr_assetVersion];
          *buf = 138543618;
          v19 = v13;
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
  v3 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v3);

  [(CRThemeAssetDownloader *)self _assetQueue_cancelUnusedDownloads];
  v4 = [(CRThemeAssetDownloader *)self _assetQueue_installedAssets];
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006EF20;
    v7[3] = &unk_1000DFF08;
    v7[4] = self;
    v5 = [NSPredicate predicateWithBlock:v7];
    v6 = [v4 filteredArrayUsingPredicate:v5];

    [(CRThemeAssetDownloader *)self _assetQueue_removeAssets:v6];
  }
}

- (void)_assetQueue_removeAssetsBeforeVersion:(id)a3
{
  v4 = a3;
  v5 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CRThemeAssetDownloader *)self _assetQueue_installedAssets];
  v7 = [v4 identifier];
  v8 = [MAAsset cr_themeAsset_filteredAssets:v6 matchingAssetIdentifier:v7 maximumSDKVersion:0 maximumCompatibilityVersion:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006F1C4;
  v12[3] = &unk_1000DFF08;
  v13 = v4;
  v9 = v4;
  v10 = [NSPredicate predicateWithBlock:v12];
  v11 = [v8 filteredArrayUsingPredicate:v10];

  [(CRThemeAssetDownloader *)self _assetQueue_removeAssets:v11];
}

- (void)_assetQueue_matchAssetRequests:(id)a3 withAssets:(id)a4 completion:(id)a5
{
  v8 = a3;
  v23 = a4;
  v9 = a5;
  v10 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v10);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
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
        v13 = [v12 assetIdentifier];
        v14 = [v12 maximumSDKVersion];
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 maximumCompatibilityVersion]);
        v16 = [MAAsset cr_themeAsset_filteredAssets:v23 matchingAssetIdentifier:v13 maximumSDKVersion:v14 maximumCompatibilityVersion:v15];

        v17 = [MAAsset cr_themeAsset_highestVersionAssetInAssets:v16];
        v18 = [MAAsset cr_installedAssetsInAssets:v16];
        v19 = [MAAsset cr_themeAsset_highestVersionAssetInAssets:v18];
        if (v17 != v19)
        {
          if (!v9)
          {
            goto LABEL_9;
          }

LABEL_8:
          v9[2](v9, v12, v19, v17);
          goto LABEL_9;
        }

        v17 = 0;
        if (v9)
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

- (id)_assetQueue_nextRequiredCompatibilityVersionToMatchAssetRequest:(id)a3 inAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 assetIdentifier];
  v10 = [v6 maximumSDKVersion];
  v22 = v7;
  v11 = [MAAsset cr_themeAsset_filteredAssets:v7 matchingAssetIdentifier:v9 maximumSDKVersion:v10 maximumCompatibilityVersion:0];
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

        v17 = [*(*(&v23 + 1) + 8 * i) cr_themeAsset_minimumCompatibilityVersion];
        v18 = v17;
        if (v17 && (!v14 || [v17 compare:v14] == -1))
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

- (void)_assetQueue_notifyObserverOfFoundNoAssetForAssetRequest:(id)a3 nextRequiredCompatibilityVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v8);

  v9 = CarThemeAssetsLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v7)
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

  v11 = [(CRThemeAssetDownloader *)self downloadObserver];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CRThemeAssetDownloader *)self downloadObserver];
    [v13 assetDownloader:self foundNoAssetForAssetRequest:v6 nextRequiredCompatibilityVersion:v7];
  }
}

- (void)_assetQueue_notifyObserverOfDownloadAttemptForAssetRequest:(id)a3 version:(id)a4 progress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v11);

  v12 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "download attempt for asset request: %@ version: %@", &v16, 0x16u);
  }

  v13 = [(CRThemeAssetDownloader *)self downloadObserver];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CRThemeAssetDownloader *)self downloadObserver];
    [v15 assetDownloader:self attemptingDownloadForAssetRequest:v8 version:v9 progress:v10];
  }
}

- (void)_assetQueue_notifyObserverOfAsset:(id)a3 forAssetRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [CARThemeAsset themeAssetFromAsset:v7];

  if (v9)
  {
    v10 = CarThemeAssetsLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "notifying observer of asset: %{public}@", &v14, 0xCu);
    }

    v11 = [(CRThemeAssetDownloader *)self downloadObserver];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CRThemeAssetDownloader *)self downloadObserver];
      [v13 assetDownloader:self hasAsset:v9 forAssetRequest:v6];
    }
  }
}

- (void)_assetQueue_notifyObserverOfFailedDownloadForAssetRequest:(id)a3 version:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRThemeAssetDownloader *)self assetQueue];
  dispatch_assert_queue_V2(v11);

  v12 = CarThemeAssetsLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "download failed for asset request: %{public}@ version: %{public}@ error: %@", &v16, 0x20u);
  }

  v13 = [(CRThemeAssetDownloader *)self downloadObserver];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CRThemeAssetDownloader *)self downloadObserver];
    [v15 assetDownloader:self failedDownloadForAssetRequest:v8 version:v9 error:v10];
  }
}

- (CRThemeAssetDownloadObserving)downloadObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadObserver);

  return WeakRetained;
}

@end