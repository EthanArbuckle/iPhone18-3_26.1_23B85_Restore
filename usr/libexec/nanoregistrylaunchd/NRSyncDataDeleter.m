@interface NRSyncDataDeleter
+ (id)buildQuarantineJobWithStoreUUID:(id)a3 services:(id)a4;
+ (id)getLocalPairingStorePairingID:(id)a3;
+ (id)getLocalPairingStorePath;
+ (id)quarantineBasePathWithStoreUUID:(id)a3;
+ (void)addPathJobsTo:(id)a3 basePath:(id)a4 paths:(id)a5;
- (NRSyncDataDeleter)initWithStoreUUID:(id)a3 services:(id)a4;
- (id)_quarantineDataAfterCreatingDirectoryWithBasePath:(id)a3;
- (void)deleteQuarantinedDataWithCompletion:(id)a3;
- (void)quarantineDataWithCompletion:(id)a3;
- (void)unquarantineDataWithCompletion:(id)a3;
@end

@implementation NRSyncDataDeleter

- (NRSyncDataDeleter)initWithStoreUUID:(id)a3 services:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NRSyncDataDeleter;
  v8 = [(NRSyncDataDeleter *)&v12 init];
  if (v8)
  {
    v9 = [objc_opt_class() buildQuarantineJobWithStoreUUID:v6 services:v7];
    job = v8->_job;
    v8->_job = v9;
  }

  return v8;
}

+ (id)getLocalPairingStorePath
{
  v2 = [a1 mobileLibraryPath];
  v3 = [v2 stringByAppendingPathComponent:@"DeviceRegistry"];

  return v3;
}

+ (id)getLocalPairingStorePairingID:(id)a3
{
  v4 = a3;
  v5 = [a1 getLocalPairingStorePath];
  v6 = [v4 UUIDString];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

+ (id)quarantineBasePathWithStoreUUID:(id)a3
{
  v3 = [a1 getLocalPairingStorePairingID:a3];
  v4 = [v3 stringByAppendingPathComponent:@"MigrationQuarantine"];

  return v4;
}

+ (id)buildQuarantineJobWithStoreUUID:(id)a3 services:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v31 = v6;
  [v8 setPairingStoreUUID:v6];
  v9 = objc_opt_new();
  v27 = v8;
  [v8 setItems:v9];
  v10 = [a1 deleterDataDescriptionPath];
  v11 = [NSDictionary dictionaryWithContentsOfFile:v10];
  v12 = nr_root_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v13 = nr_root_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Read plist %@ %@", buf, 0x16u);
    }
  }

  v28 = v11;
  v29 = v10;
  v14 = [v11 objectForKeyedSubscript:@"Services"];
  v15 = v14;
  if (!v7)
  {
    v16 = [v14 allKeys];
    v7 = [NSSet setWithArray:v16];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v17 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [v15 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
        v22 = [v21 objectForKeyedSubscript:@"MobileLibrary"];
        if ([v22 count])
        {
          v23 = [a1 mobileLibraryPath];
          [a1 addPathJobsTo:v9 basePath:v23 paths:v22];
        }

        v24 = [v21 objectForKeyedSubscript:@"PairingStorePath"];

        if ([v24 count])
        {
          v25 = [a1 getLocalPairingStorePairingID:v31];
          [a1 addPathJobsTo:v9 basePath:v25 paths:v24];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  return v27;
}

+ (void)addPathJobsTo:(id)a3 basePath:(id)a4 paths:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v8 stringByAppendingPathComponent:*(*(&v16 + 1) + 8 * v13)];
        v15 = [[NRSyncDataDeleterQuarantineJobItem alloc] initWithSourcePath:v14];
        [v7 addObject:v15];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)_quarantineDataAfterCreatingDirectoryWithBasePath:(id)a3
{
  v30 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [(NRSyncDataDeleterQuarantineJob *)self->_job items];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v33;
  *&v6 = 138412290;
  v29 = v6;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v32 + 1) + 8 * i);
      v12 = +[NSFileManager defaultManager];
      v13 = [v11 sourcePath];
      v14 = [v12 fileExistsAtPath:v13];

      if (v14)
      {
        v15 = [v11 quarantinePath];
        v16 = [v30 stringByAppendingPathComponent:v15];

        v17 = +[NSFileManager defaultManager];
        [v17 removeItemAtPath:v16 error:0];

        v18 = nr_root_daemon_log();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

        if (v19)
        {
          v20 = nr_root_daemon_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 sourcePath];
            *buf = 138412546;
            v37 = v21;
            v38 = 2112;
            v39 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Moving source path %@ to quarantine path %@", buf, 0x16u);
          }
        }

        v22 = +[NSFileManager defaultManager];
        v23 = [v11 sourcePath];
        v31 = 0;
        [v22 moveItemAtPath:v23 toPath:v16 error:&v31];
        v24 = v31;

        if (v24 && !v8)
        {
          v8 = v24;
        }

LABEL_15:
        continue;
      }

      v25 = nr_root_daemon_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v16 = nr_root_daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v11 sourcePath];
          *buf = v29;
          v37 = v27;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Source path %@ does not exist", buf, 0xCu);
        }

        goto LABEL_15;
      }
    }

    v7 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
  }

  while (v7);
LABEL_23:

  return v8;
}

- (void)quarantineDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NRSyncDataDeleterQuarantineJob *)self->_job pairingStoreUUID];
  v7 = [v5 quarantineBasePathWithStoreUUID:v6];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  v10 = nr_root_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    if (v11)
    {
      v12 = nr_root_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Quarantine base path %@ already exists", buf, 0xCu);
      }
    }

    v13 = 0;
  }

  else
  {
    if (v11)
    {
      v14 = nr_root_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating quarantine base path %@", buf, 0xCu);
      }
    }

    v15 = +[NSFileManager defaultManager];
    v16 = 0;
    [v15 createDirectoryAtPath:v7 withIntermediateDirectories:0 attributes:0 error:&v16];
    v13 = v16;

    if (!v13)
    {
      v13 = [(NRSyncDataDeleter *)self _quarantineDataAfterCreatingDirectoryWithBasePath:v7];
    }
  }

  if (v4)
  {
    v4[2](v4, v13);
  }
}

- (void)unquarantineDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NRSyncDataDeleterQuarantineJob *)self->_job pairingStoreUUID];
  v7 = [v5 quarantineBasePathWithStoreUUID:v6];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v37 = v4;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(NRSyncDataDeleterQuarantineJob *)self->_job items];
    v10 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (!v10)
    {
      v12 = 0;
      goto LABEL_29;
    }

    v11 = v10;
    v12 = 0;
    v13 = *v42;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = [v15 quarantinePath];
        v17 = [v7 stringByAppendingPathComponent:v16];

        v18 = +[NSFileManager defaultManager];
        v19 = [v18 fileExistsAtPath:v17];

        if (v19)
        {
          v20 = +[NSFileManager defaultManager];
          v21 = [v15 sourcePath];
          [v20 removeItemAtPath:v21 error:0];

          v22 = nr_root_daemon_log();
          LODWORD(v21) = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

          if (v21)
          {
            v23 = nr_root_daemon_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v15 sourcePath];
              *buf = 138412546;
              v46 = v17;
              v47 = 2112;
              v48 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Moving quarantine path %@ to source path %@", buf, 0x16u);
            }
          }

          v25 = +[NSFileManager defaultManager];
          v26 = [v15 sourcePath];
          v40 = 0;
          [v25 moveItemAtPath:v17 toPath:v26 error:&v40];
          v27 = v40;

          if (v27 && !v12)
          {
            v27 = v27;
            v12 = v27;
          }
        }

        else
        {
          v28 = nr_root_daemon_log();
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

          if (!v29)
          {
            goto LABEL_19;
          }

          v27 = nr_root_daemon_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Quarantine path %@ does not exist", buf, 0xCu);
          }
        }

LABEL_19:
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (!v11)
      {
LABEL_29:

        v34 = nr_root_daemon_log();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

        if (v35)
        {
          v36 = nr_root_daemon_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v7;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Deleting quarantine base path %@", buf, 0xCu);
          }
        }

        v32 = +[NSFileManager defaultManager];
        v39 = v12;
        [v32 removeItemAtPath:v7 error:&v39];
        v33 = v39;

        v4 = v37;
        goto LABEL_34;
      }
    }
  }

  v30 = nr_root_daemon_log();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

  if (!v31)
  {
    v33 = 0;
    if (!v4)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v32 = nr_root_daemon_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v7;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No quarantine base path %@", buf, 0xCu);
  }

  v33 = 0;
LABEL_34:

  if (v4)
  {
LABEL_35:
    v4[2](v4, v33);
  }

LABEL_36:
}

- (void)deleteQuarantinedDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NRSyncDataDeleterQuarantineJob *)self->_job pairingStoreUUID];
  v7 = [v5 quarantineBasePathWithStoreUUID:v6];

  v8 = nr_root_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v9 = nr_root_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting quarantine base path %@", &v11, 0xCu);
    }
  }

  v10 = +[NSFileManager defaultManager];
  [v10 removeItemAtPath:v7 error:0];

  if (v4)
  {
    v4[2](v4);
  }
}

@end