@interface TLDMobileAssetManager
- (TLDMobileAssetManager)init;
- (void)downloadAsset:(id)a3;
- (void)findBestAssetFrom:(id)a3 skipDownload:(BOOL)a4;
- (void)moveFileAtomically:(id)a3 toLocation:(id)a4;
- (void)moveInstalledAsset:(id)a3 withVersion:(unint64_t)a4;
@end

@implementation TLDMobileAssetManager

- (void)moveInstalledAsset:(id)a3 withVersion:(unint64_t)a4
{
  v6 = a3;
  [(TLDMobileAssetManager *)self setInstalledAssetVersion:a4];
  v7 = sub_1000581D4();
  if (v7)
  {
    v8 = [v6 getLocalFileUrl];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Read Asset at %@", &v10, 0xCu);
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    else if (!v8)
    {
LABEL_5:

      goto LABEL_6;
    }

    v9 = [v8 URLByAppendingPathComponent:@"DafsaData.bin" isDirectory:0];
    [(TLDMobileAssetManager *)self moveFileAtomically:v9 toLocation:v7];

    goto LABEL_5;
  }

LABEL_6:
}

- (void)moveFileAtomically:(id)a3 toLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 URLByAppendingPathExtension:@"tmp"];
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 copyItemAtURL:v5 toURL:v7 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = +[NSFileManager defaultManager];
    v15 = v11;
    v13 = [v12 replaceItemAtURL:v6 withItemAtURL:v7 backupItemName:0 options:1 resultingItemURL:0 error:&v15];
    v14 = v15;

    if ((v13 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v14;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Replacing a file at location %@ failed. Error %@", buf, 0x16u);
    }

    v11 = v14;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v11;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Copying from a file at location %@ failed. Error %@", buf, 0x16u);
  }
}

- (void)downloadAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 objectForKeyedSubscript:ASAttributeContentVersion];
  v7 = [v6 intValue];

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
  v9 = v7;
  [v4 startDownload:v8];
}

- (void)findBestAssetFrom:(id)a3 skipDownload:(BOOL)a4
{
  v5 = a3;
  v28 = self;
  v33 = [(TLDMobileAssetManager *)self installedAssetVersion];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
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
        v12 = [v11 attributes];
        v13 = [v12 objectForKeyedSubscript:v8];
        v14 = [v13 intValue];

        v15 = [v11 attributes];
        v16 = [v15 objectForKeyedSubscript:v9];
        v17 = [v16 intValue];

        v18 = v17;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v11 state];
          v25 = [(TLDMobileAssetManager *)v28 installedAssetVersion];
          *buf = 134219008;
          v41 = v24;
          v42 = 2048;
          v43 = v18;
          v44 = 2048;
          v45 = v25;
          v46 = 2048;
          v47 = v33;
          v48 = 2048;
          v49 = v32;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Asset (state %ld  Version %ld),  Current version %ld,  best installed version %ld,  best not installed version %ld", buf, 0x34u);
        }

        if (v14 == 3)
        {
          if ([v11 state] == 2)
          {
            if (v33 < v18)
            {
              v19 = v11;
              if (v32 <= v18)
              {

                v29 = 0;
                v32 = 0;
              }

              if (v30)
              {
                v20 = [v30 attributes];
                v21 = [v20 objectForKeyedSubscript:v9];

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
              v33 = v18;
            }
          }

          else if (v32 < v18 && v33 < v18)
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
          v43 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Asset version %lu has compatibilty version set to %lu. Not supported on the current OS", buf, 0x16u);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v6);

    if (v29 && !a4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v41 = v32;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Download best not installed asset ver %lu", buf, 0xCu);
      }

      [(TLDMobileAssetManager *)v28 downloadAsset:v29];
    }

    if (v30)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v41 = v33;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Read installed asset ver %lu", buf, 0xCu);
      }

      [(TLDMobileAssetManager *)v28 moveInstalledAsset:v30 withVersion:v33];
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