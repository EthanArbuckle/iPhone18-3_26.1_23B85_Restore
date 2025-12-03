@interface TLDMobileAssetManager
- (TLDMobileAssetManager)init;
- (void)downloadAsset:(id)asset;
- (void)findBestAssetFrom:(id)from skipDownload:(BOOL)download;
- (void)moveFileAtomically:(id)atomically toLocation:(id)location;
- (void)moveInstalledAsset:(id)asset withVersion:(unint64_t)version;
@end

@implementation TLDMobileAssetManager

- (void)moveInstalledAsset:(id)asset withVersion:(unint64_t)version
{
  assetCopy = asset;
  [(TLDMobileAssetManager *)self setInstalledAssetVersion:version];
  v7 = sub_1000581D4();
  if (v7)
  {
    getLocalFileUrl = [assetCopy getLocalFileUrl];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = getLocalFileUrl;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Read Asset at %@", &v10, 0xCu);
      if (!getLocalFileUrl)
      {
        goto LABEL_5;
      }
    }

    else if (!getLocalFileUrl)
    {
LABEL_5:

      goto LABEL_6;
    }

    v9 = [getLocalFileUrl URLByAppendingPathComponent:@"DafsaData.bin" isDirectory:0];
    [(TLDMobileAssetManager *)self moveFileAtomically:v9 toLocation:v7];

    goto LABEL_5;
  }

LABEL_6:
}

- (void)moveFileAtomically:(id)atomically toLocation:(id)location
{
  atomicallyCopy = atomically;
  locationCopy = location;
  v7 = [locationCopy URLByAppendingPathExtension:@"tmp"];
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 copyItemAtURL:atomicallyCopy toURL:v7 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = +[NSFileManager defaultManager];
    v15 = v11;
    v13 = [v12 replaceItemAtURL:locationCopy withItemAtURL:v7 backupItemName:0 options:1 resultingItemURL:0 error:&v15];
    v14 = v15;

    if ((v13 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v18 = locationCopy;
      v19 = 2112;
      v20 = v14;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Replacing a file at location %@ failed. Error %@", buf, 0x16u);
    }

    v11 = v14;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v18 = atomicallyCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Copying from a file at location %@ failed. Error %@", buf, 0x16u);
  }
}

- (void)downloadAsset:(id)asset
{
  assetCopy = asset;
  attributes = [assetCopy attributes];
  v6 = [attributes objectForKeyedSubscript:ASAttributeContentVersion];
  intValue = [v6 intValue];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Asset download requested", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100058830;
  v8[3] = &unk_1000D5958;
  v8[4] = self;
  v9 = intValue;
  [assetCopy startDownload:v8];
}

- (void)findBestAssetFrom:(id)from skipDownload:(BOOL)download
{
  fromCopy = from;
  selfCopy = self;
  installedAssetVersion = [(TLDMobileAssetManager *)self installedAssetVersion];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = fromCopy;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v6)
  {
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v7 = *v37;
    v8 = ASAttributeCompatibilityVersion;
    v9 = ASAttributeContentVersion;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        attributes = [v11 attributes];
        v13 = [attributes objectForKeyedSubscript:v8];
        intValue = [v13 intValue];

        attributes2 = [v11 attributes];
        v16 = [attributes2 objectForKeyedSubscript:v9];
        intValue2 = [v16 intValue];

        v18 = intValue2;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          state = [v11 state];
          installedAssetVersion2 = [(TLDMobileAssetManager *)selfCopy installedAssetVersion];
          *buf = 134219008;
          v41 = state;
          v42 = 2048;
          v43 = v18;
          v44 = 2048;
          v45 = installedAssetVersion2;
          v46 = 2048;
          v47 = installedAssetVersion;
          v48 = 2048;
          v49 = v32;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Asset (state %ld  Version %ld),  Current version %ld,  best installed version %ld,  best not installed version %ld", buf, 0x34u);
        }

        if (intValue == 3)
        {
          if ([v11 state] == 2)
          {
            if (installedAssetVersion < v18)
            {
              v19 = v11;
              if (v32 <= v18)
              {

                v29 = 0;
                v32 = 0;
              }

              if (v30)
              {
                attributes3 = [v30 attributes];
                v21 = [attributes3 objectForKeyedSubscript:v9];

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v41 = v21;
                  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Purging asset version %@", buf, 0xCu);
                }

                v34[0] = _NSConcreteStackBlock;
                v34[1] = 3221225472;
                v34[2] = sub_100058F28;
                v34[3] = &unk_1000D5930;
                v22 = v21;
                v35 = v22;
                [v30 purge:v34];
              }

              v30 = v19;
              installedAssetVersion = v18;
            }
          }

          else if (v32 < v18 && installedAssetVersion < v18)
          {
            v23 = v11;

            v29 = v23;
            v32 = v18;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v41 = v18;
          v42 = 2048;
          v43 = intValue;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Asset version %lu has compatibilty version set to %lu. Not supported on the current OS", buf, 0x16u);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v6);

    if (v29 && !download)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v41 = v32;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Download best not installed asset ver %lu", buf, 0xCu);
      }

      [(TLDMobileAssetManager *)selfCopy downloadAsset:v29];
    }

    if (v30)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v41 = installedAssetVersion;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Read installed asset ver %lu", buf, 0xCu);
      }

      [(TLDMobileAssetManager *)selfCopy moveInstalledAsset:v30 withVersion:installedAssetVersion];
    }

    else
    {
      v30 = 0;
    }

    v26 = v29;
  }

  else
  {

    v26 = 0;
    v30 = 0;
  }
}

- (TLDMobileAssetManager)init
{
  v10.receiver = self;
  v10.super_class = TLDMobileAssetManager;
  v2 = [(TLDMobileAssetManager *)&v10 init];
  if (v2)
  {
    v3 = sub_1000581D4();
    v4 = open([v3 fileSystemRepresentation], 0);
    v5 = v4;
    if (v4 != -1)
    {
      v12 = 0;
      v6 = read(v4, &v12, 4uLL);
      close(v5);
      if (v6 != -1)
      {
        if (v12 >= 0x10000)
        {
          v7 = v12 - 0x10000;
        }

        else
        {
          v7 = 0;
        }

        p_installedAssetVersion = &v2->_installedAssetVersion;
        if (v7 >= 0x32)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error reading the TLD Asset version", buf, 2u);
      }
    }

    p_installedAssetVersion = &v2->_installedAssetVersion;
LABEL_12:
    v7 = 50;
LABEL_13:
    *p_installedAssetVersion = v7;
  }

  return v2;
}

@end