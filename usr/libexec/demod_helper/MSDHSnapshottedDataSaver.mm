@interface MSDHSnapshottedDataSaver
- (BOOL)adjustContentUnder:(id)under userHomePath:(id)path;
- (BOOL)canDeviceHaveEnoughSpaceForItemDomainWithSize:(int64_t)size;
- (BOOL)createIntermdediateDirectoriesInPathAndRestoreAttributes:(id)attributes;
- (id)generateItemDomainsToBeSheltered;
- (id)originalPathFor:(id)for;
- (int64_t)getFileSizeForItemAtPath:(id)path;
- (void)movePreservedFilesToDataShelter:(id)shelter removeFilesOnSuccess:(BOOL)success;
- (void)rescueDataBasedOnItemDomains:(id)domains;
- (void)rescueDataToShelterFromSnapshottedVolumes;
@end

@implementation MSDHSnapshottedDataSaver

- (void)rescueDataToShelterFromSnapshottedVolumes
{
  generateItemDomainsToBeSheltered = [(MSDHSnapshottedDataSaver *)self generateItemDomainsToBeSheltered];
  [(MSDHSnapshottedDataSaver *)self rescueDataBasedOnItemDomains:generateItemDomainsToBeSheltered];
}

- (void)rescueDataBasedOnItemDomains:(id)domains
{
  domainsCopy = domains;
  v4 = +[NSFileManager defaultManager];
  v5 = sub_100021268();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v79 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rescuing needed files to data shelter at %{public}@", buf, 0xCu);
  }

  if (![v4 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter"])
  {
    v9 = 0;
    goto LABEL_7;
  }

  v76 = 0;
  v6 = [v4 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" error:&v76];
  v7 = v76;
  v8 = v7;
  if (v6)
  {
    v9 = v7;
LABEL_7:
    [(MSDHSnapshottedDataSaver *)self moveBluetoothFilesToDataShelter];
    [(MSDHSnapshottedDataSaver *)self moveSecondPartyAppFilesToDataShelter];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = domainsCopy;
    v51 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (!v51)
    {
      goto LABEL_69;
    }

    v50 = *v73;
    *&v10 = 138543874;
    v46 = v10;
    selfCopy = self;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v73 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v11;
        v12 = *(*(&v72 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v54 = +[NSMutableArray array];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v55 = v12;
        v13 = [v55 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v69;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v69 != v16)
              {
                objc_enumerationMutation(v55);
              }

              v18 = *(*(&v68 + 1) + 8 * i);
              if ([v4 fileExistsAtPath:{v18, v46}])
              {
                v19 = [(MSDHSnapshottedDataSaver *)self getFileSizeForItemAtPath:v18];
                if (v19 < 0)
                {
                  sub_100027480(v85, v18, &v86);
LABEL_52:
                  v35 = v53;
                  goto LABEL_53;
                }

                v15 = (v15 + v19);
              }
            }

            v14 = [v55 countByEnumeratingWithState:&v68 objects:v87 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v15 = 0;
        }

        v20 = sub_100021268();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v79 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Total free disk space needed for current item domain: %{public, iec-bytes}llu", buf, 0xCu);
        }

        if ([(MSDHSnapshottedDataSaver *)self canDeviceHaveEnoughSpaceForItemDomainWithSize:v15])
        {
          v65 = 0u;
          v63 = 0u;
          v64 = 0u;
          v62 = 0u;
          v55 = v55;
          v21 = [v55 countByEnumeratingWithState:&v62 objects:v84 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v63;
            v24 = v9;
            while (2)
            {
              for (j = 0; j != v22; j = j + 1)
              {
                if (*v63 != v23)
                {
                  objc_enumerationMutation(v55);
                }

                v26 = *(*(&v62 + 1) + 8 * j);
                v27 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:{v26, v46}];
                stringByDeletingLastPathComponent = [v27 stringByDeletingLastPathComponent];
                v29 = [v4 fileExistsAtPath:v26];
                v30 = sub_100021268();
                v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
                if (v29)
                {
                  if (v31)
                  {
                    *buf = 138543362;
                    v79 = v26;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, ">>> Copying item from: '%{public}@'", buf, 0xCu);
                  }

                  v61 = v24;
                  v32 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v61];
                  v9 = v61;

                  if ((v32 & 1) == 0)
                  {
                    v33 = sub_100021268();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      localizedDescription = [v9 localizedDescription];
                      *buf = 138543618;
                      v79 = stringByDeletingLastPathComponent;
                      v80 = 2114;
                      v81 = localizedDescription;
                      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to create parent folder %{public}@ with error - %{public}@", buf, 0x16u);
                    }

                    goto LABEL_50;
                  }

                  if (([v4 cloneFile:v26 to:v27 expectingHash:0 correctOwnership:0] & 1) == 0)
                  {
                    v33 = sub_100021268();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      localizedDescription2 = [v9 localizedDescription];
                      *buf = v46;
                      v79 = v26;
                      v80 = 2114;
                      v81 = v27;
                      v82 = 2114;
                      v83 = localizedDescription2;
                      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to copy item from %{public}@ to %{public}@ with error - %{public}@", buf, 0x20u);
                    }

LABEL_50:

LABEL_51:
                    self = selfCopy;
                    goto LABEL_52;
                  }

                  [v54 addObject:v27];
                  if (![MSDXattr setContentRoot:v27])
                  {
                    goto LABEL_51;
                  }

                  v24 = v9;
                }

                else
                {
                  if (v31)
                  {
                    *buf = 138543362;
                    v79 = v26;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, ">>> Skipping non-existent item: %{public}@", buf, 0xCu);
                  }
                }
              }

              v22 = [v55 countByEnumeratingWithState:&v62 objects:v84 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }

            v9 = v24;
            self = selfCopy;
          }

          goto LABEL_63;
        }

        v55 = sub_100021268();
        v35 = v53;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_1000274FC(&v66, v67, v55);
        }

LABEL_53:

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = v54;
        v36 = [v55 countByEnumeratingWithState:&v57 objects:v77 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v58;
          while (2)
          {
            for (k = 0; k != v37; k = k + 1)
            {
              if (*v58 != v38)
              {
                objc_enumerationMutation(v55);
              }

              v40 = *(*(&v57 + 1) + 8 * k);
              if ([v4 fileExistsAtPath:{v40, v46}])
              {
                v56 = v9;
                v41 = [v4 removeItemAtPath:v40 error:&v56];
                v8 = v56;

                if ((v41 & 1) == 0)
                {
                  v44 = sub_100021268();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    localizedDescription3 = [v8 localizedDescription];
                    *buf = 138543618;
                    v79 = v40;
                    v80 = 2114;
                    v81 = localizedDescription3;
                    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to clean up item %{public}@ with error - %{public}@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(context);
                  goto LABEL_73;
                }

                v9 = v8;
              }
            }

            v37 = [v55 countByEnumeratingWithState:&v57 objects:v77 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }

LABEL_63:
          v35 = v53;
        }

        objc_autoreleasePoolPop(context);
        v11 = v35 + 1;
      }

      while (v11 != v51);
      v43 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
      v51 = v43;
      if (!v43)
      {
LABEL_69:
        v8 = v9;
        goto LABEL_73;
      }
    }
  }

  obj = sub_100021268();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    sub_1000273F0(v8);
  }

LABEL_73:
}

- (id)generateItemDomainsToBeSheltered
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[NSMutableArray array];
  if ([&off_1000564F0 count])
  {
    [v3 addObject:&off_1000564F0];
  }

  v4 = +[NSMutableArray array];
  [v4 addObject:@"/private/var/mobile/Library/Biome"];
  [v4 addObject:@"/private/var/db/biome"];
  [v3 addObject:v4];
  v34 = 1;
  v5 = container_system_group_path_for_identifier();
  if (v5)
  {
    v6 = v5;
    v7 = +[NSMutableArray array];
    v8 = [NSString stringWithUTF8String:v6];
    v9 = [v8 stringByAppendingPathComponent:@"Library"];

    [v7 addObject:v9];
    [v3 addObject:v7];
    free(v6);
  }

  else
  {
    v7 = sub_100021268();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002753C(&v34);
    }
  }

  [v3 addObject:&off_100056508];
  v10 = [NSArray arrayWithObject:@"/private/var/mobile/Library/AggregateDictionary"];
  [v3 addObject:v10];

  v11 = [v2 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" error:0];
  v12 = v11;
  if (v11 && [v11 count])
  {
    v28 = v4;
    v29 = v2;
    v13 = [NSPredicate predicateWithFormat:@"self BEGINSWITH 'log-aggregated-'"];
    v26 = [NSPredicate predicateWithFormat:@"self CONTAINS 'Analytics-'"];
    v27 = v13;
    v36[0] = v13;
    v36[1] = v26;
    v14 = [NSArray arrayWithObjects:v36 count:2];
    v15 = [NSCompoundPredicate orPredicateWithSubpredicates:v14];
    v16 = [v12 filteredArrayUsingPredicate:v15];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [@"/private/var/mobile/Library/Logs/CrashReporter" stringByAppendingPathComponent:*(*(&v30 + 1) + 8 * i)];
          v23 = [NSArray arrayWithObject:v22];
          [v3 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v19);
    }

    v4 = v28;
    v2 = v29;
  }

  v24 = +[NSMutableArray array];
  [v24 addObject:@"/private/var/db/diagnostics"];
  [v24 addObject:@"/private/var/db/uuidtext"];
  [v3 addObject:v24];

  return v3;
}

- (int64_t)getFileSizeForItemAtPath:(id)path
{
  pathCopy = path;
  memset(&v8, 0, sizeof(v8));
  if (stat([pathCopy fileSystemRepresentation], &v8))
  {
    sub_1000275B4();
LABEL_10:
    st_size = -1;
    goto LABEL_11;
  }

  v4 = v8.st_mode & 0xF000;
  if (v4 == 0x8000)
  {
    st_size = v8.st_size;
    goto LABEL_11;
  }

  if (v4 != 0x4000)
  {
    v6 = sub_100021268();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000276EC();
    }

    goto LABEL_10;
  }

  [pathCopy fileSystemRepresentation];
  if (dirstat_np())
  {
    sub_100027650();
    goto LABEL_10;
  }

  st_size = 0;
LABEL_11:

  return st_size;
}

- (BOOL)canDeviceHaveEnoughSpaceForItemDomainWithSize:(int64_t)size
{
  v4 = MGCopyAnswer();
  v5 = v4;
  if (!v4)
  {
    v6 = sub_100021268();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000277CC();
    }

    goto LABEL_13;
  }

  v6 = [v4 objectForKey:kMGQDiskUsageAmountDataAvailable];
  v7 = [v5 objectForKey:kMGQDiskUsageAmountDataReserved];
  v8 = sub_100021268();
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    sub_100027760(v8, v7);
LABEL_13:
    v12 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    longLongValue = [v6 longLongValue];
    v16 = 2048;
    longLongValue2 = [v7 longLongValue];
    v18 = 2048;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dataAvailable:  %lld - dataReserved:  %lld - itemDomainSize:  %lld", &v14, 0x20u);
  }

  longLongValue3 = [v6 longLongValue];
  v12 = longLongValue3 > ([v7 longLongValue] + size);

LABEL_9:
  return v12;
}

- (void)movePreservedFilesToDataShelter:(id)shelter removeFilesOnSuccess:(BOOL)success
{
  successCopy = success;
  shelterCopy = shelter;
  v50 = +[NSFileManager defaultManager];
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v64 = shelterCopy;
    v65 = 1024;
    LODWORD(v66) = successCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Preserving files from %{public}@ - removeFilesOnSuccess:  %{BOOLean}d", buf, 0x12u);
  }

  v47 = successCopy;

  v7 = [NSURL fileURLWithPath:shelterCopy isDirectory:1];
  v72[0] = NSURLIsRegularFileKey;
  v72[1] = NSURLIsDirectoryKey;
  v8 = [NSArray arrayWithObjects:v72 count:2];
  v9 = [v50 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:0 errorHandler:&stru_100050CF0];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v9;
  v52 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
  v10 = 0;
  if (v52)
  {
    v51 = *v60;
    v48 = shelterCopy;
    do
    {
      v11 = 0;
      do
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v59 + 1) + 8 * v11);
        v57 = 0;
        v58 = 0;
        v13 = [v12 getResourceValue:&v58 forKey:NSURLIsRegularFileKey error:&v57];
        v14 = v58;
        v15 = v57;

        if ((v13 & 1) == 0)
        {
          v31 = sub_100021268();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            path = [v12 path];
            localizedDescription = [v15 localizedDescription];
            *buf = 138543618;
            v64 = path;
            v65 = 2114;
            v66 = localizedDescription;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "getResourceValue NSURLIsRegularFileKey failed for %{public}@ with error %{public}@", buf, 0x16u);
          }

          stringByDeletingLastPathComponent = 0;
          v22 = 0;
          v21 = 0;
          v17 = 0;
          goto LABEL_33;
        }

        v55 = 0;
        v56 = 0;
        v16 = [v12 getResourceValue:&v56 forKey:NSURLIsDirectoryKey error:&v55];
        v17 = v56;
        v10 = v55;

        if (v16)
        {
          if (([v14 BOOLValue] & 1) == 0 && !objc_msgSend(v17, "BOOLValue") || (objc_msgSend(v12, "path"), v18 = objc_claimAutoreleasedReturnValue(), v19 = +[MSDXattr isContentRoot:](MSDXattr, "isContentRoot:", v18), v18, !v19))
          {
            stringByDeletingLastPathComponent = 0;
            v22 = 0;
            v21 = 0;
            v30 = 1;
            goto LABEL_21;
          }

          path2 = [v12 path];
          v21 = [path2 substringFromIndex:{objc_msgSend(shelterCopy, "length")}];

          v22 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:v21];
          stringByDeletingLastPathComponent = [v22 stringByDeletingLastPathComponent];
          v24 = v50;
          if (([v50 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
          {
            v54 = v10;
            v25 = [v50 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v54];
            v15 = v54;

            if ((v25 & 1) == 0)
            {
              v31 = sub_100021268();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                localizedDescription2 = [v15 localizedDescription];
                *buf = 138543618;
                v64 = stringByDeletingLastPathComponent;
                v65 = 2114;
                v66 = localizedDescription2;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to create parent folder %{public}@. Error: %{public}@", buf, 0x16u);
              }

              goto LABEL_36;
            }

            v10 = v15;
            v24 = v50;
          }

          v26 = sub_100021268();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            path3 = [v12 path];
            *buf = 136315650;
            v64 = "[MSDHSnapshottedDataSaver movePreservedFilesToDataShelter:removeFilesOnSuccess:]";
            v65 = 2114;
            v66 = path3;
            v67 = 2114;
            v68 = v22;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s - Clone item %{public}@ ==> %{public}@", buf, 0x20u);

            v24 = v50;
          }

          path4 = [v12 path];
          v29 = [v24 cloneFile:path4 to:v22 expectingHash:0 correctOwnership:0];

          if (v29)
          {
            v30 = 1;
            shelterCopy = v48;
            goto LABEL_21;
          }

          v46 = sub_100021268();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            path5 = [v12 path];
            v37 = __error();
            v38 = strerror(*v37);
            *buf = 136315906;
            v64 = "[MSDHSnapshottedDataSaver movePreservedFilesToDataShelter:removeFilesOnSuccess:]";
            v65 = 2114;
            v66 = path5;
            v67 = 2114;
            v68 = v22;
            v69 = 2080;
            v70 = v38;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s - Failed to clone item %{public}@ ==> %{public}@ - Error:  %s", buf, 0x2Au);

            v15 = v10;
            v31 = v46;
LABEL_36:
            shelterCopy = v48;
            goto LABEL_33;
          }

          v15 = v10;
          shelterCopy = v48;
        }

        else
        {
          v46 = sub_100021268();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            path6 = [v12 path];
            localizedDescription3 = [v10 localizedDescription];
            *buf = 138543618;
            v64 = path6;
            v65 = 2114;
            v66 = localizedDescription3;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "getResourceValue NSURLIsDirectoryKey failed for %{public}@ with error %{public}@", buf, 0x16u);
          }

          stringByDeletingLastPathComponent = 0;
          v22 = 0;
          v21 = 0;
          v15 = v10;
        }

        v31 = v46;
LABEL_33:

        v30 = 0;
        v10 = v15;
LABEL_21:

        if (!v30)
        {
          v44 = obj;
          v43 = v10;
          goto LABEL_46;
        }

        v11 = v11 + 1;
      }

      while (v52 != v11);
      v40 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
      v52 = v40;
    }

    while (v40);
  }

  if (v47)
  {
    v41 = sub_100021268();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v64 = shelterCopy;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Remove preserved files from:  %{public}@", buf, 0xCu);
    }

    v53 = v10;
    v42 = [v50 removeItemAtPath:shelterCopy error:&v53];
    v43 = v53;

    if ((v42 & 1) == 0)
    {
      v44 = sub_100021268();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription4 = [v43 localizedDescription];
        *buf = 136315650;
        v64 = "[MSDHSnapshottedDataSaver movePreservedFilesToDataShelter:removeFilesOnSuccess:]";
        v65 = 2114;
        v66 = shelterCopy;
        v67 = 2114;
        v68 = localizedDescription4;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s - Failed to remove preserved files from:  %{public}@ - Error:  %{public}@", buf, 0x20u);
      }

LABEL_46:
    }

    v10 = v43;
  }
}

- (BOOL)createIntermdediateDirectoriesInPathAndRestoreAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MSDHSnapshottedDataSaver createIntermdediateDirectoriesInPathAndRestoreAttributes:]";
    *&buf[12] = 2112;
    *&buf[14] = attributesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - fullPath:  %@", buf, 0x16u);
  }

  v5 = +[NSFileManager defaultManager];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = sub_1000085FC;
  v19 = sub_10000860C;
  v20 = +[NSString string];
  pathComponents = [attributesCopy pathComponents];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008614;
  v9[3] = &unk_100050CB0;
  v11 = buf;
  v7 = v5;
  v10 = v7;
  v12 = &v13;
  [pathComponents enumerateObjectsUsingBlock:v9];

  LOBYTE(pathComponents) = *(v14 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v13, 8);
  return pathComponents & 1;
}

- (id)originalPathFor:(id)for
{
  forCopy = for;
  v4 = [forCopy rangeOfString:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    stringByStandardizingPath = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByStandardizingPath];
    v7 = [forCopy rangeOfString:stringByStandardizingPath];
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v5;
  }

  if (v7)
  {
    sub_100027AB0();
    v10 = 0;
  }

  else
  {
    v10 = [forCopy substringFromIndex:v9];
  }

  return v10;
}

- (BOOL)adjustContentUnder:(id)under userHomePath:(id)path
{
  underCopy = under;
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  HIBYTE(v117) = 0;
  v105 = v6;
  if (![v6 fileExistsAtPath:underCopy isDirectory:&v117 + 7] || HIBYTE(v117) != 1)
  {
    v11 = 0;
    v33 = 0;
    v12 = 0;
    v34 = 0;
    goto LABEL_37;
  }

  v116 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:underCopy error:&v116];
  v8 = v116;
  if (!v7)
  {
    v40 = sub_100021268();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v8 localizedDescription];
      sub_100008A0C();
      *(v74 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
      sub_100008A18();
      *(v75 + 14) = underCopy;
      sub_100008A4C();
      sub_100008A24();
      _os_log_error_impl(v76, v77, v78, v79, v80, 0x20u);
    }

    stringByDeletingLastPathComponent = 0;
    v11 = 0;
    v33 = 0;
    v12 = 0;
    goto LABEL_73;
  }

  *v114 = 0u;
  v115 = 0u;
  *v112 = 0u;
  v113 = 0u;
  v9 = v7;
  v104 = [v9 countByEnumeratingWithState:v112 objects:v123 count:16];
  v11 = 0;
  if (!v104)
  {
    v100 = 0;
    v12 = 0;
    goto LABEL_57;
  }

  v100 = 0;
  v12 = 0;
  v103 = *v113;
  *&v10 = 138412290;
  *v98 = v10;
  *&v10 = 136315906;
  *v97 = v10;
  v99 = v9;
  do
  {
    v13 = 0;
    do
    {
      v14 = v12;
      v15 = v11;
      if (*v113 != v103)
      {
        objc_enumerationMutation(v9);
      }

      v16 = underCopy;
      v12 = [underCopy stringByAppendingPathComponent:{*(v112[1] + 8 * v13), *v97}];

      v111 = v8;
      v11 = [v105 attributesOfItemAtPath:v12 error:&v111];
      v17 = v111;

      if (!v11)
      {
        v48 = sub_100021268();
        if (sub_100005E88(v48))
        {
          localizedDescription2 = [v17 localizedDescription];
          sub_100008A0C();
          *(v50 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
          sub_100008A18();
          *(v51 + 14) = v12;
          sub_100008A4C();
          sub_100008A64(&_mh_execute_header, v52, v53, "%s: Cannot get attribute from %@ - %@", v54, v55, v56, v57, v97[0], v97[1], v98[0], v98[1], v99, v100, self, pathCopy, NSFileTypeSymbolicLink, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v113, *(&v113 + 1), v114[0], v114[1], v115, *(&v115 + 1), v116, v117, buf[0]);
        }

        goto LABEL_63;
      }

      fileType = [v11 fileType];
      v19 = [fileType isEqualToString:NSFileTypeSymbolicLink];

      if (v19)
      {
        v20 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:pathCopy];
        if (!v20 || [v12 caseInsensitiveCompare:v20])
        {

          goto LABEL_25;
        }

        v21 = sub_100021268();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          sub_100008A58();
          *(v22 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found wormhole in staging to user volume: %@", buf, 0xCu);
        }
      }

      if (![MSDXattr isNotExtracted:v12])
      {
        [(MSDHSnapshottedDataSaver *)self adjustContentUnder:v12 userHomePath:pathCopy];
LABEL_25:
        v8 = v17;
LABEL_26:
        underCopy = v16;
        goto LABEL_29;
      }

      v23 = [(MSDHSnapshottedDataSaver *)self originalPathFor:v12];

      v24 = sub_100021268();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_100008A58();
        *(v25 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ is not extracted (under a content root), should use the original content.", buf, 0xCu);
      }

      v110 = v17;
      v8 = [v105 removeItemAtPath:v12 error:&v110];
      v26 = v110;

      if ((v8 & 1) == 0)
      {
        v58 = sub_100021268();
        if (sub_100005E88(v58))
        {
          localizedDescription3 = [v26 localizedDescription];
          sub_100008A0C();
          *(v65 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
          sub_100008A18();
          *(v66 + 14) = v12;
          sub_100008A4C();
          sub_100008A64(&_mh_execute_header, v67, v68, "%s: Cannot remove item: %@ - Error:  %@", v69, v70, v71, v72, v97[0], v97[1], v98[0], v98[1], v99, v100, self, pathCopy, NSFileTypeSymbolicLink, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v113, *(&v113 + 1), v114[0], v114[1], v115, *(&v115 + 1), v116, v117, buf[0]);
        }

        v100 = v23;
        v17 = v26;
        v9 = v99;
LABEL_63:

        v40 = v9;
        stringByDeletingLastPathComponent = 0;
        v43 = 0;
        v8 = v17;
        underCopy = v16;
        v33 = v100;
        goto LABEL_64;
      }

      if ([v105 fileExistsAtPath:v23])
      {
        v109 = v26;
        v27 = [v105 moveItemAtPath:v23 toPath:v12 error:&v109];
        v8 = v109;

        if ((v27 & 1) == 0)
        {
          v28 = sub_100021268();
          v9 = v99;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            localizedDescription4 = [v8 localizedDescription];
            sub_100008A58();
            *(v30 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
            v119 = 2112;
            *(v30 + 14) = v23;
            v120 = 2112;
            v121 = v12;
            v122 = 2112;
            *(v30 + 34) = v31;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Could not move item %@ to %@.  Error:  %@", buf, 0x2Au);
          }

          v100 = v23;
          goto LABEL_26;
        }

        v100 = v23;
      }

      else
      {
        v100 = v23;
        v8 = v26;
      }

      underCopy = v16;
      v9 = v99;
LABEL_29:
      v13 = v13 + 1;
    }

    while (v104 != v13);
    v32 = [v9 countByEnumeratingWithState:v112 objects:v123 count:16];
    v104 = v32;
  }

  while (v32);
LABEL_57:

  v33 = v100;
  v34 = v8;
  v6 = v105;
LABEL_37:
  if (![MSDXattr isContentRoot:underCopy])
  {
    stringByDeletingLastPathComponent = 0;
    v43 = 1;
    goto LABEL_66;
  }

  v35 = [MSDXattr isContentRootToRemove:underCopy];
  [MSDXattr removeXattr:underCopy];
  v36 = [(MSDHSnapshottedDataSaver *)self originalPathFor:underCopy];

  if (![v6 fileExistsAtPath:v36])
  {
    goto LABEL_41;
  }

  v108 = v34;
  v33 = v36;
  v37 = [v6 removeItemAtPath:v36 error:&v108];
  v8 = v108;

  if ((v37 & 1) == 0)
  {
    v40 = sub_100021268();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      localizedDescription5 = [v8 localizedDescription];
      sub_100008A0C();
      *(v82 + 4) = v33;
      sub_100008A18();
      *(v84 + 14) = v83;
      sub_100008A24();
      _os_log_error_impl(v85, v86, v87, v88, v89, 0x16u);
    }

    stringByDeletingLastPathComponent = 0;
    goto LABEL_73;
  }

  v34 = v8;
  v6 = v105;
  v36 = v33;
LABEL_41:
  if ((v35 & 1) == 0)
  {
    v44 = sub_100021268();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000089F4();
      *(v45 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Moving content root item %@ to %@.", buf, 0x16u);
    }

    v46 = v36;
    stringByDeletingLastPathComponent = [v36 stringByDeletingLastPathComponent];
    v6 = v105;
    if (([v105 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v117 + 7] & 1) == 0 && !-[MSDHSnapshottedDataSaver createIntermdediateDirectoriesInPathAndRestoreAttributes:](self, "createIntermdediateDirectoriesInPathAndRestoreAttributes:", stringByDeletingLastPathComponent))
    {
      v43 = 0;
      v33 = v46;
      goto LABEL_66;
    }

    v107 = v34;
    v33 = v46;
    v47 = [v105 moveItemAtPath:underCopy toPath:v46 error:&v107];
    v8 = v107;

    if (v47)
    {
      v43 = 1;
      goto LABEL_65;
    }

    v40 = sub_100021268();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v43 = 0;
      v33 = v46;
      goto LABEL_64;
    }

    localizedDescription6 = [v8 localizedDescription];
    sub_1000089F4();
    v33 = v46;
    *(v91 + 14) = v46;
    sub_100008A4C();
    sub_100008A24();
    _os_log_error_impl(v92, v93, v94, v95, v96, 0x20u);

LABEL_73:
    v43 = 0;
    goto LABEL_64;
  }

  v106 = v34;
  v38 = [v6 removeItemAtPath:underCopy error:&v106];
  v8 = v106;

  if ((v38 & 1) == 0)
  {
    v39 = sub_100021268();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [v8 localizedDescription];
      v61 = v60 = v36;
      sub_1000089F4();
      *(v63 + 14) = v62;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to remove:  %@ - Error:  %@", buf, 0x16u);

      v36 = v60;
    }
  }

  v40 = sub_100021268();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008A58();
    *(v41 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removed %@.", buf, 0xCu);
  }

  v33 = v36;
  stringByDeletingLastPathComponent = 0;
  v43 = 1;
LABEL_64:

LABEL_65:
  v34 = v8;
  v6 = v105;
LABEL_66:

  return v43;
}

@end