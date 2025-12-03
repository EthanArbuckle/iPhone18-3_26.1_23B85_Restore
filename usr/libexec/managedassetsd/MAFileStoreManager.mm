@interface MAFileStoreManager
+ (id)defaultManager;
- (BOOL)cleanupPendingUpdatesFor:(id)for dir:(id)dir error:(id *)error;
- (BOOL)commitFile:(id)file topGroup:(id)group profile:(id)profile attributes:(id)attributes committed:(BOOL *)committed error:(id *)error;
- (BOOL)copyFileFrom:(const char *)from to:(id)to error:(id *)error;
- (BOOL)deleteFile:(id)file topGroup:(id)group profile:(id)profile attributes:(id)attributes error:(id *)error;
- (BOOL)deleteProfile:(id)profile error:(id *)error;
- (MAFileStoreManager)init;
- (id)filePreProcess:(id)process topGroup:(id)group profile:(id)profile mode:(unint64_t)mode isOpenFile:(BOOL)file isDirectory:(BOOL)directory attributes:(id)attributes attributesOut:(id)self0 error:(id *)self1;
- (id)getFilePathWithSbExtension:(id)extension topGroup:(id)group profile:(id)profile mode:(unint64_t)mode attributes:(id)attributes clientConn:(id)conn realpath:(id *)realpath isDirectory:(BOOL)self0 attributesOut:(id)self1 error:(id *)self2;
- (id)getPathByTopGroup:(id)group topGroup:(id)topGroup profile:(id)profile;
- (id)openFile:(id)file topGroup:(id)group profile:(id)profile mode:(unint64_t)mode attributes:(id)attributes attributesOut:(id)out error:(id *)error;
- (id)parseFileProtectionClassAttribute:(id)attribute isDir:(BOOL)dir;
- (id)queryFile:(id)file topGroup:(id)group profile:(id)profile attributes:(id)attributes pathPrefix:(id)prefix error:(id *)error;
- (void)close;
- (void)deleteAllFiles;
@end

@implementation MAFileStoreManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019E54;
  block[3] = &unk_100115D08;
  block[4] = self;
  if (qword_1001293E8 != -1)
  {
    dispatch_once(&qword_1001293E8, block);
  }

  v2 = qword_1001293F0;

  return v2;
}

- (MAFileStoreManager)init
{
  v25.receiver = self;
  v25.super_class = MAFileStoreManager;
  v2 = [(MAFileStoreManager *)&v25 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = +[MAStorage defaultManager];
    marootPath = [v4 marootPath];
    marootPath = v2->_marootPath;
    v2->_marootPath = marootPath;

    maUsersPath = [v4 maUsersPath];
    maUsersPath = v2->_maUsersPath;
    v2->_maUsersPath = maUsersPath;

    v9 = v2->_marootPath;
    v24 = 0;
    v10 = [MAStorage ensureDirectoryExists:"private/" parent:v9 fileMgr:v3 error:&v24];
    v11 = v24;
    maPrivateFileAssetPath = v2->_maPrivateFileAssetPath;
    v2->_maPrivateFileAssetPath = v10;

    if (!v2->_maPrivateFileAssetPath)
    {
      goto LABEL_7;
    }

    v13 = v2->_marootPath;
    v23 = v11;
    v14 = [MAStorage ensureDirectoryExists:"share/" parent:v13 fileMgr:v3 error:&v23];
    v15 = v23;

    maShareFileAssetPath = v2->_maShareFileAssetPath;
    v2->_maShareFileAssetPath = v14;

    if (!v2->_maShareFileAssetPath)
    {
      v20 = 0;
      v11 = v15;
      goto LABEL_9;
    }

    v17 = v2->_marootPath;
    v22 = v15;
    v18 = [MAStorage ensureDirectoryExists:"../ManagedAssets2/" parent:v17 fileMgr:v3 error:&v22];
    v11 = v22;

    maNoDVFileAssetPath = v2->_maNoDVFileAssetPath;
    v2->_maNoDVFileAssetPath = v18;

    if (v2->_maNoDVFileAssetPath)
    {
      objc_storeStrong(&v2->_fileMgr, v3);
      v20 = v2;
    }

    else
    {
LABEL_7:
      v20 = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (void)close
{
  v2 = off_100127CE0;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MAFileStoreManager is closed", v3, 2u);
  }
}

- (BOOL)deleteProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = off_100127CE0;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = profileCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "deleting profile %@", buf, 0xCu);
  }

  v8 = [(NSString *)self->_maUsersPath stringByAppendingString:profileCopy];
  v9 = sub_10001A260(v8, self->_fileMgr, error);

  profileCopy = [(NSString *)self->_maNoDVFileAssetPath stringByAppendingFormat:@"users/%@", profileCopy];
  v11 = sub_10001A260(profileCopy, self->_fileMgr, error);

  return v9 & v11;
}

- (id)parseFileProtectionClassAttribute:(id)attribute isDir:(BOOL)dir
{
  if (dir)
  {
    v5 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  }

  else
  {
    v5 = NSFileProtectionComplete;
  }

  v6 = v5;
  v7 = [attribute objectForKey:NSFileProtectionKey];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = NSFileProtectionCompleteUnlessOpen;
      if ([v7 isEqualToString:NSFileProtectionCompleteUnlessOpen] & 1) != 0 || (v8 = NSFileProtectionCompleteUntilFirstUserAuthentication, (objc_msgSend(v7, "isEqualToString:", NSFileProtectionCompleteUntilFirstUserAuthentication)) || (v8 = NSFileProtectionComplete, (objc_msgSend(v7, "isEqualToString:", NSFileProtectionComplete)) || (v8 = NSFileProtectionNone, objc_msgSend(v7, "isEqualToString:", NSFileProtectionNone)))
      {
        v9 = v8;

        v6 = v9;
      }
    }
  }

  v12 = NSFileProtectionKey;
  v13 = v6;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  return v10;
}

- (BOOL)cleanupPendingUpdatesFor:(id)for dir:(id)dir error:(id *)error
{
  forCopy = for;
  dirCopy = dir;
  v10 = [forCopy length];
  v11 = [(NSFileManager *)self->_fileMgr contentsOfDirectoryAtPath:dirCopy error:error];
  v12 = v11;
  if (*error)
  {
    *error = createManagedAssetError();
    if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
    {
      sub_10001C87C(dirCopy, error);
    }

    v13 = 0;
  }

  else
  {
    errorCopy = error;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          if (v10 + 43 == [v18 length] && objc_msgSend(v18, "hasPrefix:", forCopy) && objc_msgSend(v18, "hasSuffix:", @".masdtrans"))
          {
            v19 = [dirCopy stringByAppendingPathComponent:v18];
            v20 = off_100127CE0;
            if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v35 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "unlinking pending update: %@", buf, 0xCu);
            }

            if (unlink([v19 fileSystemRepresentation]) && *__error() != 2)
            {
              if (*errorCopy)
              {
                v21 = off_100127CE0;
                if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
                {
                  v22 = v21;
                  v23 = *__error();
                  *buf = 138412546;
                  v35 = v19;
                  v36 = 1024;
                  LODWORD(v37) = v23;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to unlink: %@, errno=%d", buf, 0x12u);
                }
              }

              else
              {
                v27 = v19;
                v28 = *__error();
                *errorCopy = createManagedAssetError();
                v24 = off_100127CE0;
                if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
                {
                  v25 = *errorCopy;
                  *buf = 138412546;
                  v35 = v19;
                  v36 = 2112;
                  v37 = v25;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to unlink: %@, error:%@", buf, 0x16u);
                }
              }
            }
          }
        }

        v15 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v15);
    }

    v13 = *errorCopy == 0;
  }

  return v13;
}

- (id)getPathByTopGroup:(id)group topGroup:(id)topGroup profile:(id)profile
{
  groupCopy = group;
  topGroupCopy = topGroup;
  profileCopy = profile;
  v11 = [@"private" isEqualToString:topGroupCopy];
  if (profileCopy)
  {
    if (v11)
    {
      [NSString stringWithFormat:@"%@%@/private/%@", self->_maUsersPath, profileCopy, groupCopy];
    }

    else if ([qword_1001293F8 containsObject:topGroupCopy])
    {
      [NSString stringWithFormat:@"%@users/%@/share/%@", self->_maNoDVFileAssetPath, profileCopy, groupCopy];
    }

    else
    {
      [NSString stringWithFormat:@"%@%@/share/%@", self->_maUsersPath, profileCopy, groupCopy];
    }
    v13 = ;
  }

  else
  {
    if (v11)
    {
      maPrivateFileAssetPath = self->_maPrivateFileAssetPath;
    }

    else if ([qword_1001293F8 containsObject:topGroupCopy])
    {
      maPrivateFileAssetPath = self->_maNoDVFileAssetPath;
    }

    else
    {
      maPrivateFileAssetPath = self->_maShareFileAssetPath;
    }

    v13 = [(NSString *)maPrivateFileAssetPath stringByAppendingString:groupCopy];
  }

  v14 = v13;

  return v14;
}

- (id)filePreProcess:(id)process topGroup:(id)group profile:(id)profile mode:(unint64_t)mode isOpenFile:(BOOL)file isDirectory:(BOOL)directory attributes:(id)attributes attributesOut:(id)self0 error:(id *)self1
{
  directoryCopy = directory;
  fileCopy = file;
  processCopy = process;
  groupCopy = group;
  profileCopy = profile;
  attributesCopy = attributes;
  outCopy = out;
  v20 = [attributesCopy objectForKeyedSubscript:kMAFileOptionsKey];
  v21 = sub_10001B298(v20, error);

  if (!*error)
  {
    v62 = groupCopy;
    v63 = processCopy;
    v61 = profileCopy;
    v26 = [(MAFileStoreManager *)self getPathByTopGroup:processCopy topGroup:groupCopy profile:profileCopy];
    stringByDeletingLastPathComponent = [v26 stringByDeletingLastPathComponent];
    v27 = v26;
    v68 = 0;
    v28 = @"file";
    if (directoryCopy)
    {
      v28 = @"directory";
    }

    v64 = v28;
    v29 = [(NSFileManager *)self->_fileMgr fileExistsAtPath:v27 isDirectory:&v68];
    if (v29)
    {
      [MAUtilityHelper validatePathMatchingRealpath:v27 error:error];
      if (!*error)
      {
        selfCopy3 = self;
        v60 = [(NSFileManager *)self->_fileMgr attributesOfItemAtPath:v27 error:error];
        if (*error)
        {
          v31 = v27;
          v32 = off_100127CE0;
          v24 = outCopy;
          groupCopy = v62;
          v25 = processCopy;
          v22 = v61;
          if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
          {
            v44 = *error;
            *buf = 138412802;
            v70 = v64;
            v71 = 2112;
            v72 = v31;
            v73 = 2112;
            v74 = v44;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "failed to get attr for %@ %@, error:%@", buf, 0x20u);
            v34 = v64;
            v23 = 0;
            v33 = v31;
          }

          else
          {
            v23 = 0;
            v33 = v31;
            v34 = v64;
          }

          v35 = stringByDeletingLastPathComponent;
          v36 = v60;
          goto LABEL_21;
        }

        if (v68 != directoryCopy)
        {
          v43 = createManagedAssetError();
          v34 = v64;
          v23 = 0;
          *error = v43;
          v33 = v27;
          v24 = outCopy;
          v31 = v27;
          groupCopy = v62;
          v25 = processCopy;
          goto LABEL_48;
        }

        if (mode == 1 || (v21 & 1) == 0 || (directoryCopy & 1) != 0)
        {
          v39 = v27;
          if (v29)
          {
LABEL_67:
            v31 = v27;
            v24 = outCopy;
            v36 = v60;
            if ((v21 & 8) != 0 && v60)
            {
              v55 = sub_10001B34C(v60, outCopy);
            }

            v33 = v39;
            v23 = v33;
            goto LABEL_18;
          }

LABEL_59:
          v51 = [(MAFileStoreManager *)selfCopy3 parseFileProtectionClassAttribute:attributesCopy isDir:directoryCopy];
          v52 = off_100127CE0;
          if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v70 = v64;
            v71 = 2112;
            v72 = v39;
            v73 = 2112;
            v74 = v51;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "create %@ to write %@ fileAttrs=%@", buf, 0x20u);
          }

          fileMgr = selfCopy3->_fileMgr;
          if (directoryCopy)
          {
            if ([(NSFileManager *)fileMgr createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:v51 error:error])
            {
              [_TtC6server14MAPurgeUtility enableFastDirectory:v39];
LABEL_65:
              [MAUtilityHelper validatePathMatchingRealpath:v39 error:error];
              v54 = *error;

              if (!v54)
              {
                goto LABEL_67;
              }

              v23 = 0;
              v24 = outCopy;
              v31 = v27;
              groupCopy = v62;
              v25 = v63;
              v33 = v39;
              v35 = stringByDeletingLastPathComponent;
              v36 = v60;
              v22 = v61;
LABEL_74:
              v34 = v64;
              goto LABEL_21;
            }

            v31 = v27;
            v33 = v39;
          }

          else
          {
            if ([(NSFileManager *)fileMgr createFileAtPath:v39 contents:0 attributes:v51])
            {
              goto LABEL_65;
            }

            v31 = v27;
            v33 = v39;
            *__error();
          }

          createManagedAssetError();
          v24 = outCopy;
          groupCopy = v62;
          v25 = v63;
          v35 = stringByDeletingLastPathComponent;
          *error = v22 = v61;

          v23 = 0;
          v36 = v60;
          goto LABEL_74;
        }

LABEL_34:
        v58 = off_100127CE0;
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
        {
          sub_10001C94C(v27, v58);
          if ((v21 & 2) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((v21 & 2) == 0)
        {
          goto LABEL_42;
        }

        lastPathComponent = [v63 lastPathComponent];
        v41 = selfCopy3;
        v42 = lastPathComponent;
        [MAFileStoreManager cleanupPendingUpdatesFor:v41 dir:"cleanupPendingUpdatesFor:dir:error:" error:?];

        if (*error)
        {
          v23 = 0;
          v33 = v27;
          v24 = outCopy;
          v31 = v27;
          groupCopy = v62;
          v25 = v63;
          v34 = v64;
          goto LABEL_48;
        }

LABEL_42:
        v59 = [MACryptoHelper randomDataInHex:16];
        v39 = [NSString stringWithFormat:@"%@-%@.masdtrans", v27, v59];

        if (mode == 3)
        {
          v45 = v29;
        }

        else
        {
          v45 = 0;
        }

        if (v45 != 1 || !clonefile([v27 fileSystemRepresentation], objc_msgSend(v39, "fileSystemRepresentation"), 0))
        {
          v57 = v45;
          [outCopy setObject:v59 forKeyedSubscript:kMASessionIdKey];
          v46 = &kMAFileApiTypeOpenFile;
          if (!fileCopy)
          {
            v46 = &kMAFileApiTypeRequestFile;
          }

          [outCopy setObject:*v46 forKeyedSubscript:kMAFileApiTypeKey];
          v47 = kMAGroupKey;
          v48 = [attributesCopy objectForKeyedSubscript:kMAGroupKey];
          if (v48)
          {
            [outCopy setObject:v48 forKeyedSubscript:v47];
          }

          v49 = kMAGroupTypeKey;
          v50 = [attributesCopy objectForKeyedSubscript:kMAGroupTypeKey];
          if (v50)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [outCopy setObject:v50 forKeyedSubscript:v49];
            }
          }

          if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
          {
            sub_10001C9C4();
          }

          selfCopy3 = self;
          if (v57)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        v56 = *__error();
        *error = createManagedAssetError();

        v23 = 0;
        v24 = outCopy;
        v31 = v27;
        groupCopy = v62;
        v25 = v63;
        v34 = v64;
        v33 = v39;
LABEL_48:
        v35 = stringByDeletingLastPathComponent;
        v36 = v60;
        v22 = v61;
        goto LABEL_21;
      }
    }

    else
    {
      if (mode == 1)
      {
        v37 = createManagedAssetError();
        v34 = v64;
        v36 = 0;
        v23 = 0;
        v24 = outCopy;
        *error = v37;
        v33 = v27;
        v31 = v27;
        groupCopy = v62;
        v25 = processCopy;
LABEL_19:
        v35 = stringByDeletingLastPathComponent;
LABEL_20:
        v22 = v61;
LABEL_21:

        goto LABEL_22;
      }

      selfCopy3 = self;
      v35 = stringByDeletingLastPathComponent;
      if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:stringByDeletingLastPathComponent]&& ![(NSFileManager *)self->_fileMgr createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error])
      {
        createManagedAssetError();
        v36 = 0;
        v23 = 0;
        *error = v24 = outCopy;
        v33 = v27;
        v31 = v27;
        groupCopy = v62;
        v25 = v63;
        v34 = v64;
        goto LABEL_20;
      }

      [MAUtilityHelper validatePathMatchingRealpath:stringByDeletingLastPathComponent error:error];
      if (!*error)
      {
        v60 = 0;
        v39 = v27;
        if (v21 & 1) == 0 || (directoryCopy)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      }
    }

    v36 = 0;
    v23 = 0;
    v33 = v27;
    v24 = outCopy;
    v31 = v27;
LABEL_18:
    groupCopy = v62;
    v25 = v63;
    v34 = v64;
    goto LABEL_19;
  }

  v22 = profileCopy;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
  {
    v25 = processCopy;
    sub_10001C8E4(processCopy, error);
    v23 = 0;
    v24 = outCopy;
  }

  else
  {
    v23 = 0;
    v24 = outCopy;
    v25 = processCopy;
  }

LABEL_22:

  return v23;
}

- (id)openFile:(id)file topGroup:(id)group profile:(id)profile mode:(unint64_t)mode attributes:(id)attributes attributesOut:(id)out error:(id *)error
{
  fileCopy = file;
  groupCopy = group;
  profileCopy = profile;
  attributesCopy = attributes;
  outCopy = out;
  v20 = off_100127CE0;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v27 = fileCopy;
    v28 = 2112;
    v29 = groupCopy;
    v30 = 2112;
    v31 = profileCopy;
    v32 = 2048;
    modeCopy = mode;
    v34 = 2112;
    v35 = attributesCopy;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "openFile name=%@ topGroup=%@ profile=%@ mode=%lu attributes=%@", buf, 0x34u);
  }

  v21 = [(MAFileStoreManager *)self filePreProcess:fileCopy topGroup:groupCopy profile:profileCopy mode:mode isOpenFile:1 isDirectory:0 attributes:attributesCopy attributesOut:outCopy error:error];
  if (v21)
  {
    v22 = [NSURL fileURLWithPath:v21 isDirectory:0];
    switch(mode)
    {
      case 3uLL:
        v23 = [NSFileHandle fileHandleForUpdatingURL:v22 error:error];
        break;
      case 2uLL:
        v23 = [NSFileHandle fileHandleForWritingToURL:v22 error:error];
        break;
      case 1uLL:
        v23 = [NSFileHandle fileHandleForReadingFromURL:v22 error:error];
        break;
      default:
        v23 = 0;
        break;
    }

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)getFilePathWithSbExtension:(id)extension topGroup:(id)group profile:(id)profile mode:(unint64_t)mode attributes:(id)attributes clientConn:(id)conn realpath:(id *)realpath isDirectory:(BOOL)self0 attributesOut:(id)self1 error:(id *)self2
{
  connCopy = conn;
  v19 = [(MAFileStoreManager *)self filePreProcess:extension topGroup:group profile:profile mode:mode isOpenFile:0 isDirectory:directory attributes:attributes attributesOut:out error:error];
  v20 = v19;
  if (v19)
  {
    [v19 fileSystemRepresentation];
    if (connCopy)
    {
      [connCopy auditToken];
    }

    v22 = sandbox_extension_issue_file_to_process();
    if (v22)
    {
      v23 = v22;
      v21 = [NSString stringWithUTF8String:v22];
      free(v23);
      v24 = v20;
      *realpath = v20;
    }

    else
    {
      createManagedAssetError();
      *error = v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)commitFile:(id)file topGroup:(id)group profile:(id)profile attributes:(id)attributes committed:(BOOL *)committed error:(id *)error
{
  fileCopy = file;
  attributesCopy = attributes;
  v16 = [(MAFileStoreManager *)self getPathByTopGroup:fileCopy topGroup:group profile:profile];
  v17 = [attributesCopy objectForKeyedSubscript:kMAFileOptionsKey];
  v18 = sub_10001B298(v17, error);

  if (!*error)
  {
    stringByDeletingLastPathComponent = [v16 stringByDeletingLastPathComponent];
    if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:stringByDeletingLastPathComponent])
    {
      if ((v18 & 4) != 0)
      {
        v19 = 1;
      }

      else
      {
        createManagedAssetError();
        *error = v19 = 0;
      }

      goto LABEL_24;
    }

    [MAUtilityHelper validatePathMatchingRealpath:stringByDeletingLastPathComponent error:error];
    if (*error)
    {
      v19 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ((~v18 & 6) == 0)
    {
      lastPathComponent = [fileCopy lastPathComponent];
      v19 = [(MAFileStoreManager *)self cleanupPendingUpdatesFor:lastPathComponent dir:stringByDeletingLastPathComponent error:error];
LABEL_23:

      goto LABEL_24;
    }

    lastPathComponent = [attributesCopy objectForKeyedSubscript:kMASessionIdKey];
    if ((MAValidHexString(lastPathComponent, 0x20, error) & 1) == 0)
    {
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
      {
        sub_10001CA2C(v16, error);
      }

      v19 = 0;
      goto LABEL_23;
    }

    v35 = lastPathComponent;
    v22 = [NSString stringWithFormat:@"%@-%@.masdtrans", v16, lastPathComponent];
    if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:v22])
    {
      if ((v18 & 4) != 0)
      {
        v19 = 1;
        v23 = v22;
      }

      else
      {
        v23 = v22;
        createManagedAssetError();
        *error = v19 = 0;
      }

      goto LABEL_21;
    }

    [MAUtilityHelper validatePathMatchingRealpath:v22 error:error];
    v23 = v22;
    if (*error)
    {
      v19 = 0;
LABEL_21:
      lastPathComponent = v35;
LABEL_22:

      goto LABEL_23;
    }

    lastPathComponent = v35;
    if ((v18 & 4) != 0)
    {
      v28 = off_100127CE0;
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "rollback atomic update for %@", buf, 0xCu);
      }

      if (unlink([v23 fileSystemRepresentation]) && *__error() != 2)
      {
        v32 = *__error();
        *error = createManagedAssetError();
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
        {
          sub_10001CA94(v23, error);
        }

        goto LABEL_46;
      }

      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
      {
        sub_10001CAFC();
      }
    }

    else
    {
      __from = [v23 fileSystemRepresentation];
      fileSystemRepresentation = [v16 fileSystemRepresentation];
      rename(__from, fileSystemRepresentation, v26);
      if (v27)
      {
        v33 = *__error();
        *error = createManagedAssetError();
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
        {
          sub_10001CB64(v16, error);
        }

LABEL_46:
        v19 = 0;
        goto LABEL_22;
      }

      *committed = 1;
      if ((v18 & 2) != 0)
      {
        lastPathComponent2 = [fileCopy lastPathComponent];
        v36 = 0;
        [(MAFileStoreManager *)self cleanupPendingUpdatesFor:lastPathComponent2 dir:stringByDeletingLastPathComponent error:&v36];
        v30 = v36;

        if (v30 && os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
        {
          sub_10001CBCC();
        }
      }

      v31 = off_100127CE0;
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
      {
        sub_10001CC34(v16, v31);
      }
    }

    v19 = 1;
    goto LABEL_22;
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (BOOL)deleteFile:(id)file topGroup:(id)group profile:(id)profile attributes:(id)attributes error:(id *)error
{
  fileCopy = file;
  groupCopy = group;
  profileCopy = profile;
  attributesCopy = attributes;
  if ([fileCopy length] >= 2 && objc_msgSend(fileCopy, "hasSuffix:", @"/"))
  {
    v16 = [fileCopy substringToIndex:{objc_msgSend(fileCopy, "length") - 1}];

    fileCopy = v16;
  }

  v17 = [(MAFileStoreManager *)self getPathByTopGroup:fileCopy topGroup:groupCopy profile:profileCopy];
  v18 = [attributesCopy objectForKeyedSubscript:kMAFileOptionsKey];

  v19 = sub_10001B298(v18, 0);
  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v17])
  {
    [MAUtilityHelper validatePathMatchingRealpath:v17 error:error];
    if (*error)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v20 = [(NSFileManager *)self->_fileMgr removeItemAtPath:v17 error:error];
      v21 = off_100127CE0;
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
      {
        v23 = "failure";
        v24 = *error;
        *buf = 138412802;
        if (v20)
        {
          v23 = "Success";
        }

        v26 = v17;
        v27 = 2080;
        v28 = v23;
        v29 = 2112;
        v30 = v24;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "deleting: %@ result:%s, error:%@", buf, 0x20u);
      }
    }
  }

  else if ((v19 & 0x10) != 0)
  {
    LOBYTE(v20) = 1;
  }

  else
  {
    createManagedAssetError();
    *error = LOBYTE(v20) = 0;
  }

  return v20;
}

- (id)queryFile:(id)file topGroup:(id)group profile:(id)profile attributes:(id)attributes pathPrefix:(id)prefix error:(id *)error
{
  fileCopy = file;
  groupCopy = group;
  profileCopy = profile;
  prefixCopy = prefix;
  if ([fileCopy length] >= 2 && objc_msgSend(fileCopy, "hasSuffix:", @"/"))
  {
    v17 = [fileCopy substringToIndex:{objc_msgSend(fileCopy, "length") - 1}];

    fileCopy = v17;
  }

  v18 = [(MAFileStoreManager *)self getPathByTopGroup:fileCopy topGroup:groupCopy profile:profileCopy];
  v48 = 0;
  if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:v18 isDirectory:&v48])
  {
    createManagedAssetError();
    *error = v19 = 0;
    goto LABEL_8;
  }

  [MAUtilityHelper validatePathMatchingRealpath:v18 error:error];
  if (*error)
  {
    v19 = 0;
    goto LABEL_8;
  }

  fileMgr = self->_fileMgr;
  if ((v48 & 1) == 0)
  {
    v23 = [(NSFileManager *)fileMgr attributesOfItemAtPath:v18 error:error];
    v24 = v23;
    if (*error)
    {
      v19 = 0;
    }

    else
    {
      v50 = prefixCopy;
      v26 = sub_10001B34C(v23, 0);
      v51 = v26;
      v19 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    }

    goto LABEL_8;
  }

  v22 = [(NSFileManager *)fileMgr contentsOfDirectoryAtPath:v18 error:error];
  if (!*error)
  {
    if (([(__CFString *)prefixCopy hasSuffix:@"/"]& 1) != 0)
    {
      if (![(__CFString *)prefixCopy isEqualToString:@"/"])
      {
LABEL_25:
        v38 = profileCopy;
        v39 = groupCopy;
        if (([v18 hasSuffix:@"/"] & 1) == 0)
        {
          v27 = [v18 stringByAppendingString:@"/"];

          v18 = v27;
        }

        v43 = objc_opt_new();
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v37 = v22;
        obj = v22;
        v42 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v42)
        {
          v41 = *v45;
          while (2)
          {
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v45 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v44 + 1) + 8 * i);
              v30 = prefixCopy;
              v31 = [(__CFString *)prefixCopy stringByAppendingString:v29];
              v32 = self->_fileMgr;
              v33 = [v18 stringByAppendingString:v29];
              v34 = [(NSFileManager *)v32 attributesOfItemAtPath:v33 error:error];

              if (*error)
              {

                v19 = 0;
                profileCopy = v38;
                groupCopy = v39;
                prefixCopy = v30;
                v22 = v37;
                v36 = v43;
                goto LABEL_39;
              }

              v35 = sub_10001B34C(v34, 0);
              [v43 setObject:v35 forKeyedSubscript:v31];

              prefixCopy = v30;
            }

            v42 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }
        }

        v36 = v43;
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
        {
          sub_10001CD14();
        }

        v19 = v43;
        profileCopy = v38;
        groupCopy = v39;
        v22 = v37;
LABEL_39:

        goto LABEL_40;
      }

      v25 = &stru_10011AC38;
    }

    else
    {
      v25 = [(__CFString *)prefixCopy stringByAppendingString:@"/"];
    }

    prefixCopy = v25;
    goto LABEL_25;
  }

  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
  {
    sub_10001CCAC(v18, error);
  }

  v19 = 0;
LABEL_40:

LABEL_8:

  return v19;
}

- (BOOL)copyFileFrom:(const char *)from to:(id)to error:(id *)error
{
  toCopy = to;
  stringByDeletingLastPathComponent = [toCopy stringByDeletingLastPathComponent];
  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:toCopy])
  {
    [MAUtilityHelper validatePathMatchingRealpath:toCopy error:error];
    if (!*error)
    {
      fileSystemRepresentation = [toCopy fileSystemRepresentation];
      unlink(fileSystemRepresentation);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:stringByDeletingLastPathComponent]|| [(NSFileManager *)self->_fileMgr createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error])
  {
    [MAUtilityHelper validatePathMatchingRealpath:stringByDeletingLastPathComponent error:error];
    if (!*error)
    {
      fileSystemRepresentation = [toCopy fileSystemRepresentation];
LABEL_8:
      v11 = 3;
      do
      {
        if (!clonefile(from, fileSystemRepresentation, 0))
        {
          v14 = 1;
          goto LABEL_17;
        }

        if (*__error() != 17)
        {
          break;
        }

        v12 = off_100127CE0;
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v18 = fileSystemRepresentation;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "dest file %s exists, delete and retry cloning", buf, 0xCu);
        }

        unlink(fileSystemRepresentation);
        --v11;
      }

      while (v11);
      v16 = *__error();
      *error = createManagedAssetError();
      v13 = off_100127CE0;
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
      {
        sub_10001CDE4(from, fileSystemRepresentation, v13);
      }
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
  {
    sub_10001CD7C(stringByDeletingLastPathComponent, error);
  }

  createManagedAssetError();
  *error = v14 = 0;
LABEL_17:

  return v14;
}

- (void)deleteAllFiles
{
  [MAUtilityHelper recreatePath:self->_maUsersPath logger:off_100127CE0];
  [MAUtilityHelper recreatePath:self->_maPrivateFileAssetPath logger:off_100127CE0];
  [MAUtilityHelper recreatePath:self->_maShareFileAssetPath logger:off_100127CE0];
  maNoDVFileAssetPath = self->_maNoDVFileAssetPath;
  v4 = off_100127CE0;

  [MAUtilityHelper recreatePath:maNoDVFileAssetPath logger:v4];
}

@end