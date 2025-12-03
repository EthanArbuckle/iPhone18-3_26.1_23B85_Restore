@interface MSDManifest
- (BOOL)addFilesFromPath:(id)path relativeTo:(id)to skip:(id)skip superSet:(id)set;
- (BOOL)addFilesUsingSourceManifest:(id)manifest;
- (BOOL)enumerateAndCollectMetaData:(id)data relativeTo:(id)to skip:(id)skip superSet:(id)set handler:(id)handler;
- (BOOL)folder:(id)folder contains:(id)contains;
- (BOOL)path:(id)path inSuperSet:(id)set;
- (MSDManifest)init;
- (MSDManifest)initWithDictionary:(id)dictionary andUserHomePath:(id)path;
- (NSSet)pathSet;
- (id)metadataForFile:(id)file;
- (void)dealloc;
- (void)setMetadata:(id)metadata forFile:(id)file;
@end

@implementation MSDManifest

- (MSDManifest)init
{
  v7.receiver = self;
  v7.super_class = MSDManifest;
  v2 = [(MSDManifest *)&v7 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:0];
    dict = v2->_dict;
    v2->_dict = v3;

    rootPath = v2->_rootPath;
    v2->_rootPath = 0;
  }

  return v2;
}

- (MSDManifest)initWithDictionary:(id)dictionary andUserHomePath:(id)path
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MSDManifest;
  v6 = [(MSDManifest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    rootPath = v6->_rootPath;
    v6->_rootPath = 0;

    v9 = [[NSMutableDictionary alloc] initWithDictionary:dictionaryCopy];
    dict = v7->_dict;
    v7->_dict = v9;
  }

  return v7;
}

- (void)dealloc
{
  dict = self->_dict;
  self->_dict = 0;

  rootPath = self->_rootPath;
  self->_rootPath = 0;

  v5.receiver = self;
  v5.super_class = MSDManifest;
  [(MSDManifest *)&v5 dealloc];
}

- (id)metadataForFile:(id)file
{
  v3 = [(NSMutableDictionary *)self->_dict objectForKey:file];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MSDFileMetadata fileMetaDataWithMetadataDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMetadata:(id)metadata forFile:(id)file
{
  dict = self->_dict;
  fileCopy = file;
  dict = [metadata dict];
  [(NSMutableDictionary *)dict setObject:dict forKey:fileCopy];
}

- (BOOL)folder:(id)folder contains:(id)contains
{
  folderCopy = folder;
  containsCopy = contains;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = folderCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (![containsCopy rangeOfString:{v11, v17}])
        {
          v13 = v12;
          if (v12 == [containsCopy length] || (objc_msgSend(containsCopy, "substringFromIndex:", v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringByAppendingPathComponent:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, LOBYTE(v14) = objc_msgSend(v15, "isEqualToString:", containsCopy), v15, (v14 & 1) != 0))
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

- (BOOL)addFilesUsingSourceManifest:(id)manifest
{
  manifestCopy = manifest;
  v31 = +[NSFileManager defaultManager];
  rootPath = [(MSDManifest *)self rootPath];
  if (rootPath)
  {
    v6 = rootPath;
    rootPath2 = [manifestCopy rootPath];
    if (rootPath2)
    {
      v8 = rootPath2;
      rootPath3 = [(MSDManifest *)self rootPath];
      rootPath4 = [manifestCopy rootPath];
      v11 = [rootPath3 isEqualToString:rootPath4];

      if (v11)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = [manifestCopy dict];
        v12 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v27 = manifestCopy;
          v30 = *v33;
          v28 = 1;
          do
          {
            v14 = 0;
            do
            {
              if (*v33 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v32 + 1) + 8 * v14);
              v16 = objc_autoreleasePoolPush();
              rootPath5 = [(MSDManifest *)self rootPath];
              v18 = [rootPath5 stringByAppendingPathComponent:v15];

              if ([v31 fileExistsAtPath:v18])
              {
                v19 = [MSDFileMetadata fileMetadatatWithPath:v18];
                if (v19)
                {
                  v20 = v19;
                  getFileType = [v19 getFileType];
                  v22 = [getFileType isEqualToString:NSFileTypeSymbolicLink];

                  if (v22)
                  {
                    v23 = sub_100021268();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v37 = "[MSDManifest addFilesUsingSourceManifest:]";
                      v38 = 2114;
                      v39 = v18;
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ is a symlink. Skipping.", buf, 0x16u);
                    }
                  }

                  else
                  {
                    [(MSDManifest *)self setMetadata:v20 forFile:v15];
                  }
                }

                else
                {
                  v20 = sub_100021268();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v37 = "[MSDManifest addFilesUsingSourceManifest:]";
                    v38 = 2114;
                    v39 = v18;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to get metadata for file: %{public}@. Skipping.", buf, 0x16u);
                  }

                  v28 = 0;
                }
              }

              objc_autoreleasePoolPop(v16);
              v14 = v14 + 1;
            }

            while (v13 != v14);
            v24 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
            v13 = v24;
          }

          while (v24);
          manifestCopy = v27;
          v25 = v28;
        }

        else
        {
          v25 = 1;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  obj = sub_100021268();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    sub_10002DDD8(obj);
  }

  v25 = 0;
LABEL_29:

  return v25 & 1;
}

- (BOOL)addFilesFromPath:(id)path relativeTo:(id)to skip:(id)skip superSet:(id)set
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001564C;
  v7[3] = &unk_100050EC8;
  v7[4] = self;
  return [(MSDManifest *)self enumerateAndCollectMetaData:path relativeTo:to skip:skip superSet:set handler:v7];
}

- (BOOL)path:(id)path inSuperSet:(id)set
{
  pathCopy = path;
  setCopy = set;
  if ([pathCopy hasPrefix:@"/private"])
  {
    v7 = [pathCopy substringFromIndex:{objc_msgSend(@"/private", "length")}];

    pathCopy = v7;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = setCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) hasPrefix:{pathCopy, v13}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (BOOL)enumerateAndCollectMetaData:(id)data relativeTo:(id)to skip:(id)skip superSet:(id)set handler:(id)handler
{
  dataCopy = data;
  toCopy = to;
  skipCopy = skip;
  setCopy = set;
  handlerCopy = handler;
  if (self->_rootPath)
  {
    v17 = sub_100021268();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10002DE5C(v17);
    }

    v18 = 0;
    goto LABEL_54;
  }

  selfCopy = self;
  v59 = toCopy;
  p_rootPath = &self->_rootPath;
  objc_storeStrong(&self->_rootPath, to);
  v19 = +[NSFileManager defaultManager];
  v65 = dataCopy;
  v20 = [NSURL fileURLWithPath:dataCopy];
  v21 = [NSArray arrayWithObjects:NSURLIsRegularFileKey, NSURLIsSymbolicLinkKey, 0];
  v22 = [v19 enumeratorAtURL:v20 includingPropertiesForKeys:v21 options:0 errorHandler:&stru_100050EE8];

  v69 = v22;
  nextObject = [v22 nextObject];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v64 = 0;
  v68 = 0;
  v28 = nextObject == 0;
  v66 = setCopy;
  v63 = handlerCopy;
  while (1)
  {
    while (1)
    {
      v29 = skipCopy;
      v30 = v26;
      v31 = v25;
      v32 = v24;
      context = objc_autoreleasePoolPush();
      v17 = nextObject;
      if (v28)
      {
        v17 = [NSURL fileURLWithPath:v65];
        v68 = 1;
      }

      v75 = 0;
      v76 = 0;
      v33 = [v17 getResourceValue:&v76 forKey:NSURLIsRegularFileKey error:&v75];
      v25 = v76;

      v34 = v75;
      if ((v33 & 1) == 0)
      {
        v51 = sub_100021268();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          path = [v17 path];
          *buf = 138543618;
          v80 = NSURLIsRegularFileKey;
          v81 = 2114;
          v82 = path;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Could not get resource for key %{public}@ for %{public}@", buf, 0x16u);
        }

        v61 = 0;
        goto LABEL_42;
      }

      v73 = 0;
      v74 = 0;
      v35 = [v17 getResourceValue:&v74 forKey:NSURLIsDirectoryKey error:&v73];
      v24 = v74;

      v36 = v73;
      if ((v35 & 1) == 0)
      {
        v53 = sub_100021268();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          path2 = [v17 path];
          *buf = 138543618;
          v80 = NSURLIsDirectoryKey;
          v81 = 2114;
          v82 = path2;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Could not get resource for key %{public}@ for %{public}@", buf, 0x16u);

          v61 = 0;
          v34 = v36;
          v51 = v53;
          goto LABEL_41;
        }

        v61 = 0;
        v34 = v36;
        v32 = v24;
        v51 = v53;
LABEL_42:

        v27 = v34;
        v26 = v30;
        v24 = v32;
        skipCopy = v29;
        setCopy = v66;
        handlerCopy = v63;
        v50 = v61;
        goto LABEL_34;
      }

      v72 = 0;
      v71 = 0;
      v37 = [v17 getResourceValue:&v72 forKey:NSURLIsSymbolicLinkKey error:&v71];
      v26 = v72;

      v27 = v71;
      setCopy = v66;
      if ((v37 & 1) == 0)
      {
        v51 = sub_100021268();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        path3 = [v17 path];
        *buf = 138543618;
        v80 = NSURLIsSymbolicLinkKey;
        v81 = 2114;
        v82 = path3;
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Could not get resource for key %{public}@ for %{public}@", buf, 0x16u);
        goto LABEL_38;
      }

      skipCopy = v29;
      if (!v29 || ([v17 path], v38 = objc_claimAutoreleasedReturnValue(), v39 = [(MSDManifest *)selfCopy folder:v29 contains:v38], v38, !v39))
      {
        if (!v66)
        {
          break;
        }

        path4 = [v17 path];
        v41 = [(MSDManifest *)selfCopy path:path4 inSuperSet:v66];

        if (v41)
        {
          break;
        }
      }

      if ([v24 BOOLValue])
      {
        [v69 skipDescendants];
      }

      objc_autoreleasePoolPop(context);
      nextObject = [v69 nextObject];

      v28 = nextObject == 0;
      if (((nextObject == 0) & v68) != 0)
      {

        v18 = 1;
        v17 = v69;
        dataCopy = v65;
        toCopy = v59;
        handlerCopy = v63;
        goto LABEL_54;
      }
    }

    if (([v25 BOOLValue] & 1) == 0 && (objc_msgSend(v24, "BOOLValue") & 1) == 0 && !objc_msgSend(v26, "BOOLValue"))
    {
      v51 = sub_100021268();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
LABEL_39:
        v61 = 0;
        goto LABEL_40;
      }

      path3 = [v17 path];
      *buf = 138543362;
      v80 = path3;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ is special file. Leave it along", buf, 0xCu);
LABEL_38:

      goto LABEL_39;
    }

    path5 = [v17 path];
    v43 = [path5 rangeOfString:*p_rootPath];
    v60 = v44;

    if (v43)
    {
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v45 = 0;
        goto LABEL_28;
      }

      path6 = [v17 path];
      v47 = [path6 substringFromIndex:&v43[v60]];
      v45 = [v47 stringByReplacingOccurrencesOfString:*p_rootPath withString:&stru_1000519D0];

      path7 = path6;
    }

    else
    {
      path7 = [v17 path];
      v45 = [path7 stringByReplacingOccurrencesOfString:*p_rootPath withString:&stru_1000519D0];
    }

LABEL_28:
    if ([(__CFString *)v45 length])
    {
      v61 = v45;
    }

    else
    {

      v61 = @"/";
    }

    path8 = [v17 path];
    v49 = [MSDFileMetadata fileMetadatatWithPath:path8];

    if (!v49)
    {
      v51 = sub_100021268();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_10002DF38(v77, v17, &v78, v51);
      }

      v64 = 0;
LABEL_40:
      v34 = v27;
      v30 = v26;
LABEL_41:
      v32 = v24;
      goto LABEL_42;
    }

    handlerCopy = v63;
    v50 = v61;
    if ((v63[2](v63, v49, v61) & 1) == 0)
    {
      break;
    }

    v64 = v49;
LABEL_34:

    objc_autoreleasePoolPop(context);
    nextObject = [v69 nextObject];

    v28 = nextObject == 0;
    if (((nextObject == 0) & v68) != 0)
    {

      v18 = 1;
      v17 = v69;
      goto LABEL_55;
    }
  }

  v57 = sub_100021268();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    sub_10002DEA0(v17, v57);
  }

  objc_autoreleasePoolPop(context);
  v18 = 0;
LABEL_55:
  dataCopy = v65;
  toCopy = v59;
LABEL_54:

  return v18;
}

- (NSSet)pathSet
{
  allKeys = [(NSMutableDictionary *)self->_dict allKeys];
  v3 = [NSSet setWithArray:allKeys];

  return v3;
}

@end