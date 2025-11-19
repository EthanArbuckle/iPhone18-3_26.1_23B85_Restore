@interface MAFileStoreManager
+ (id)defaultManager;
- (BOOL)cleanupPendingUpdatesFor:(id)a3 dir:(id)a4 error:(id *)a5;
- (BOOL)commitFile:(id)a3 topGroup:(id)a4 profile:(id)a5 attributes:(id)a6 committed:(BOOL *)a7 error:(id *)a8;
- (BOOL)copyFileFrom:(const char *)a3 to:(id)a4 error:(id *)a5;
- (BOOL)deleteFile:(id)a3 topGroup:(id)a4 profile:(id)a5 attributes:(id)a6 error:(id *)a7;
- (BOOL)deleteProfile:(id)a3 error:(id *)a4;
- (MAFileStoreManager)init;
- (id)filePreProcess:(id)a3 topGroup:(id)a4 profile:(id)a5 mode:(unint64_t)a6 isOpenFile:(BOOL)a7 isDirectory:(BOOL)a8 attributes:(id)a9 attributesOut:(id)a10 error:(id *)a11;
- (id)getFilePathWithSbExtension:(id)a3 topGroup:(id)a4 profile:(id)a5 mode:(unint64_t)a6 attributes:(id)a7 clientConn:(id)a8 realpath:(id *)a9 isDirectory:(BOOL)a10 attributesOut:(id)a11 error:(id *)a12;
- (id)getPathByTopGroup:(id)a3 topGroup:(id)a4 profile:(id)a5;
- (id)openFile:(id)a3 topGroup:(id)a4 profile:(id)a5 mode:(unint64_t)a6 attributes:(id)a7 attributesOut:(id)a8 error:(id *)a9;
- (id)parseFileProtectionClassAttribute:(id)a3 isDir:(BOOL)a4;
- (id)queryFile:(id)a3 topGroup:(id)a4 profile:(id)a5 attributes:(id)a6 pathPrefix:(id)a7 error:(id *)a8;
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
  block[4] = a1;
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
    v5 = [v4 marootPath];
    marootPath = v2->_marootPath;
    v2->_marootPath = v5;

    v7 = [v4 maUsersPath];
    maUsersPath = v2->_maUsersPath;
    v2->_maUsersPath = v7;

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

- (BOOL)deleteProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = off_100127CE0;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "deleting profile %@", buf, 0xCu);
  }

  v8 = [(NSString *)self->_maUsersPath stringByAppendingString:v6];
  v9 = sub_10001A260(v8, self->_fileMgr, a4);

  v10 = [(NSString *)self->_maNoDVFileAssetPath stringByAppendingFormat:@"users/%@", v6];
  v11 = sub_10001A260(v10, self->_fileMgr, a4);

  return v9 & v11;
}

- (id)parseFileProtectionClassAttribute:(id)a3 isDir:(BOOL)a4
{
  if (a4)
  {
    v5 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  }

  else
  {
    v5 = NSFileProtectionComplete;
  }

  v6 = v5;
  v7 = [a3 objectForKey:NSFileProtectionKey];
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

- (BOOL)cleanupPendingUpdatesFor:(id)a3 dir:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  v11 = [(NSFileManager *)self->_fileMgr contentsOfDirectoryAtPath:v9 error:a5];
  v12 = v11;
  if (*a5)
  {
    *a5 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
    {
      sub_10001C87C(v9, a5);
    }

    v13 = 0;
  }

  else
  {
    v29 = a5;
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
          if (v10 + 43 == [v18 length] && objc_msgSend(v18, "hasPrefix:", v8) && objc_msgSend(v18, "hasSuffix:", @".masdtrans"))
          {
            v19 = [v9 stringByAppendingPathComponent:v18];
            v20 = off_100127CE0;
            if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v35 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "unlinking pending update: %@", buf, 0xCu);
            }

            if (unlink([v19 fileSystemRepresentation]) && *__error() != 2)
            {
              if (*v29)
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
                *v29 = createManagedAssetError();
                v24 = off_100127CE0;
                if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
                {
                  v25 = *v29;
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

    v13 = *v29 == 0;
  }

  return v13;
}

- (id)getPathByTopGroup:(id)a3 topGroup:(id)a4 profile:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [@"private" isEqualToString:v9];
  if (v10)
  {
    if (v11)
    {
      [NSString stringWithFormat:@"%@%@/private/%@", self->_maUsersPath, v10, v8];
    }

    else if ([qword_1001293F8 containsObject:v9])
    {
      [NSString stringWithFormat:@"%@users/%@/share/%@", self->_maNoDVFileAssetPath, v10, v8];
    }

    else
    {
      [NSString stringWithFormat:@"%@%@/share/%@", self->_maUsersPath, v10, v8];
    }
    v13 = ;
  }

  else
  {
    if (v11)
    {
      maPrivateFileAssetPath = self->_maPrivateFileAssetPath;
    }

    else if ([qword_1001293F8 containsObject:v9])
    {
      maPrivateFileAssetPath = self->_maNoDVFileAssetPath;
    }

    else
    {
      maPrivateFileAssetPath = self->_maShareFileAssetPath;
    }

    v13 = [(NSString *)maPrivateFileAssetPath stringByAppendingString:v8];
  }

  v14 = v13;

  return v14;
}

- (id)filePreProcess:(id)a3 topGroup:(id)a4 profile:(id)a5 mode:(unint64_t)a6 isOpenFile:(BOOL)a7 isDirectory:(BOOL)a8 attributes:(id)a9 attributesOut:(id)a10 error:(id *)a11
{
  v66 = a8;
  v11 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v67 = a10;
  v20 = [v19 objectForKeyedSubscript:kMAFileOptionsKey];
  v21 = sub_10001B298(v20, a11);

  if (!*a11)
  {
    v62 = v17;
    v63 = v16;
    v61 = v18;
    v26 = [(MAFileStoreManager *)self getPathByTopGroup:v16 topGroup:v17 profile:v18];
    v65 = [v26 stringByDeletingLastPathComponent];
    v27 = v26;
    v68 = 0;
    v28 = @"file";
    if (v66)
    {
      v28 = @"directory";
    }

    v64 = v28;
    v29 = [(NSFileManager *)self->_fileMgr fileExistsAtPath:v27 isDirectory:&v68];
    if (v29)
    {
      [MAUtilityHelper validatePathMatchingRealpath:v27 error:a11];
      if (!*a11)
      {
        v30 = self;
        v60 = [(NSFileManager *)self->_fileMgr attributesOfItemAtPath:v27 error:a11];
        if (*a11)
        {
          v31 = v27;
          v32 = off_100127CE0;
          v24 = v67;
          v17 = v62;
          v25 = v16;
          v22 = v61;
          if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
          {
            v44 = *a11;
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

          v35 = v65;
          v36 = v60;
          goto LABEL_21;
        }

        if (v68 != v66)
        {
          v43 = createManagedAssetError();
          v34 = v64;
          v23 = 0;
          *a11 = v43;
          v33 = v27;
          v24 = v67;
          v31 = v27;
          v17 = v62;
          v25 = v16;
          goto LABEL_48;
        }

        if (a6 == 1 || (v21 & 1) == 0 || (v66 & 1) != 0)
        {
          v39 = v27;
          if (v29)
          {
LABEL_67:
            v31 = v27;
            v24 = v67;
            v36 = v60;
            if ((v21 & 8) != 0 && v60)
            {
              v55 = sub_10001B34C(v60, v67);
            }

            v33 = v39;
            v23 = v33;
            goto LABEL_18;
          }

LABEL_59:
          v51 = [(MAFileStoreManager *)v30 parseFileProtectionClassAttribute:v19 isDir:v66];
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

          fileMgr = v30->_fileMgr;
          if (v66)
          {
            if ([(NSFileManager *)fileMgr createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:v51 error:a11])
            {
              [_TtC6server14MAPurgeUtility enableFastDirectory:v39];
LABEL_65:
              [MAUtilityHelper validatePathMatchingRealpath:v39 error:a11];
              v54 = *a11;

              if (!v54)
              {
                goto LABEL_67;
              }

              v23 = 0;
              v24 = v67;
              v31 = v27;
              v17 = v62;
              v25 = v63;
              v33 = v39;
              v35 = v65;
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
          v24 = v67;
          v17 = v62;
          v25 = v63;
          v35 = v65;
          *a11 = v22 = v61;

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

        v40 = [v63 lastPathComponent];
        v41 = v30;
        v42 = v40;
        [MAFileStoreManager cleanupPendingUpdatesFor:v41 dir:"cleanupPendingUpdatesFor:dir:error:" error:?];

        if (*a11)
        {
          v23 = 0;
          v33 = v27;
          v24 = v67;
          v31 = v27;
          v17 = v62;
          v25 = v63;
          v34 = v64;
          goto LABEL_48;
        }

LABEL_42:
        v59 = [MACryptoHelper randomDataInHex:16];
        v39 = [NSString stringWithFormat:@"%@-%@.masdtrans", v27, v59];

        if (a6 == 3)
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
          [v67 setObject:v59 forKeyedSubscript:kMASessionIdKey];
          v46 = &kMAFileApiTypeOpenFile;
          if (!v11)
          {
            v46 = &kMAFileApiTypeRequestFile;
          }

          [v67 setObject:*v46 forKeyedSubscript:kMAFileApiTypeKey];
          v47 = kMAGroupKey;
          v48 = [v19 objectForKeyedSubscript:kMAGroupKey];
          if (v48)
          {
            [v67 setObject:v48 forKeyedSubscript:v47];
          }

          v49 = kMAGroupTypeKey;
          v50 = [v19 objectForKeyedSubscript:kMAGroupTypeKey];
          if (v50)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v67 setObject:v50 forKeyedSubscript:v49];
            }
          }

          if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
          {
            sub_10001C9C4();
          }

          v30 = self;
          if (v57)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        v56 = *__error();
        *a11 = createManagedAssetError();

        v23 = 0;
        v24 = v67;
        v31 = v27;
        v17 = v62;
        v25 = v63;
        v34 = v64;
        v33 = v39;
LABEL_48:
        v35 = v65;
        v36 = v60;
        v22 = v61;
        goto LABEL_21;
      }
    }

    else
    {
      if (a6 == 1)
      {
        v37 = createManagedAssetError();
        v34 = v64;
        v36 = 0;
        v23 = 0;
        v24 = v67;
        *a11 = v37;
        v33 = v27;
        v31 = v27;
        v17 = v62;
        v25 = v16;
LABEL_19:
        v35 = v65;
LABEL_20:
        v22 = v61;
LABEL_21:

        goto LABEL_22;
      }

      v30 = self;
      v35 = v65;
      if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:v65]&& ![(NSFileManager *)self->_fileMgr createDirectoryAtPath:v65 withIntermediateDirectories:1 attributes:0 error:a11])
      {
        createManagedAssetError();
        v36 = 0;
        v23 = 0;
        *a11 = v24 = v67;
        v33 = v27;
        v31 = v27;
        v17 = v62;
        v25 = v63;
        v34 = v64;
        goto LABEL_20;
      }

      [MAUtilityHelper validatePathMatchingRealpath:v65 error:a11];
      if (!*a11)
      {
        v60 = 0;
        v39 = v27;
        if (v21 & 1) == 0 || (v66)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      }
    }

    v36 = 0;
    v23 = 0;
    v33 = v27;
    v24 = v67;
    v31 = v27;
LABEL_18:
    v17 = v62;
    v25 = v63;
    v34 = v64;
    goto LABEL_19;
  }

  v22 = v18;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
  {
    v25 = v16;
    sub_10001C8E4(v16, a11);
    v23 = 0;
    v24 = v67;
  }

  else
  {
    v23 = 0;
    v24 = v67;
    v25 = v16;
  }

LABEL_22:

  return v23;
}

- (id)openFile:(id)a3 topGroup:(id)a4 profile:(id)a5 mode:(unint64_t)a6 attributes:(id)a7 attributesOut:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = off_100127CE0;
  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2048;
    v33 = a6;
    v34 = 2112;
    v35 = v18;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "openFile name=%@ topGroup=%@ profile=%@ mode=%lu attributes=%@", buf, 0x34u);
  }

  v21 = [(MAFileStoreManager *)self filePreProcess:v15 topGroup:v16 profile:v17 mode:a6 isOpenFile:1 isDirectory:0 attributes:v18 attributesOut:v19 error:a9];
  if (v21)
  {
    v22 = [NSURL fileURLWithPath:v21 isDirectory:0];
    switch(a6)
    {
      case 3uLL:
        v23 = [NSFileHandle fileHandleForUpdatingURL:v22 error:a9];
        break;
      case 2uLL:
        v23 = [NSFileHandle fileHandleForWritingToURL:v22 error:a9];
        break;
      case 1uLL:
        v23 = [NSFileHandle fileHandleForReadingFromURL:v22 error:a9];
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

- (id)getFilePathWithSbExtension:(id)a3 topGroup:(id)a4 profile:(id)a5 mode:(unint64_t)a6 attributes:(id)a7 clientConn:(id)a8 realpath:(id *)a9 isDirectory:(BOOL)a10 attributesOut:(id)a11 error:(id *)a12
{
  v18 = a8;
  v19 = [(MAFileStoreManager *)self filePreProcess:a3 topGroup:a4 profile:a5 mode:a6 isOpenFile:0 isDirectory:a10 attributes:a7 attributesOut:a11 error:a12];
  v20 = v19;
  if (v19)
  {
    [v19 fileSystemRepresentation];
    if (v18)
    {
      [v18 auditToken];
    }

    v22 = sandbox_extension_issue_file_to_process();
    if (v22)
    {
      v23 = v22;
      v21 = [NSString stringWithUTF8String:v22];
      free(v23);
      v24 = v20;
      *a9 = v20;
    }

    else
    {
      createManagedAssetError();
      *a12 = v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)commitFile:(id)a3 topGroup:(id)a4 profile:(id)a5 attributes:(id)a6 committed:(BOOL *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a6;
  v16 = [(MAFileStoreManager *)self getPathByTopGroup:v14 topGroup:a4 profile:a5];
  v17 = [v15 objectForKeyedSubscript:kMAFileOptionsKey];
  v18 = sub_10001B298(v17, a8);

  if (!*a8)
  {
    v20 = [v16 stringByDeletingLastPathComponent];
    if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:v20])
    {
      if ((v18 & 4) != 0)
      {
        v19 = 1;
      }

      else
      {
        createManagedAssetError();
        *a8 = v19 = 0;
      }

      goto LABEL_24;
    }

    [MAUtilityHelper validatePathMatchingRealpath:v20 error:a8];
    if (*a8)
    {
      v19 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ((~v18 & 6) == 0)
    {
      v21 = [v14 lastPathComponent];
      v19 = [(MAFileStoreManager *)self cleanupPendingUpdatesFor:v21 dir:v20 error:a8];
LABEL_23:

      goto LABEL_24;
    }

    v21 = [v15 objectForKeyedSubscript:kMASessionIdKey];
    if ((MAValidHexString(v21, 0x20, a8) & 1) == 0)
    {
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
      {
        sub_10001CA2C(v16, a8);
      }

      v19 = 0;
      goto LABEL_23;
    }

    v35 = v21;
    v22 = [NSString stringWithFormat:@"%@-%@.masdtrans", v16, v21];
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
        *a8 = v19 = 0;
      }

      goto LABEL_21;
    }

    [MAUtilityHelper validatePathMatchingRealpath:v22 error:a8];
    v23 = v22;
    if (*a8)
    {
      v19 = 0;
LABEL_21:
      v21 = v35;
LABEL_22:

      goto LABEL_23;
    }

    v21 = v35;
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
        *a8 = createManagedAssetError();
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
        {
          sub_10001CA94(v23, a8);
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
      v25 = [v16 fileSystemRepresentation];
      rename(__from, v25, v26);
      if (v27)
      {
        v33 = *__error();
        *a8 = createManagedAssetError();
        if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
        {
          sub_10001CB64(v16, a8);
        }

LABEL_46:
        v19 = 0;
        goto LABEL_22;
      }

      *a7 = 1;
      if ((v18 & 2) != 0)
      {
        v29 = [v14 lastPathComponent];
        v36 = 0;
        [(MAFileStoreManager *)self cleanupPendingUpdatesFor:v29 dir:v20 error:&v36];
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

- (BOOL)deleteFile:(id)a3 topGroup:(id)a4 profile:(id)a5 attributes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v12 length] >= 2 && objc_msgSend(v12, "hasSuffix:", @"/"))
  {
    v16 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 1}];

    v12 = v16;
  }

  v17 = [(MAFileStoreManager *)self getPathByTopGroup:v12 topGroup:v13 profile:v14];
  v18 = [v15 objectForKeyedSubscript:kMAFileOptionsKey];

  v19 = sub_10001B298(v18, 0);
  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v17])
  {
    [MAUtilityHelper validatePathMatchingRealpath:v17 error:a7];
    if (*a7)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v20 = [(NSFileManager *)self->_fileMgr removeItemAtPath:v17 error:a7];
      v21 = off_100127CE0;
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_DEBUG))
      {
        v23 = "failure";
        v24 = *a7;
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
    *a7 = LOBYTE(v20) = 0;
  }

  return v20;
}

- (id)queryFile:(id)a3 topGroup:(id)a4 profile:(id)a5 attributes:(id)a6 pathPrefix:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if ([v13 length] >= 2 && objc_msgSend(v13, "hasSuffix:", @"/"))
  {
    v17 = [v13 substringToIndex:{objc_msgSend(v13, "length") - 1}];

    v13 = v17;
  }

  v18 = [(MAFileStoreManager *)self getPathByTopGroup:v13 topGroup:v14 profile:v15];
  v48 = 0;
  if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:v18 isDirectory:&v48])
  {
    createManagedAssetError();
    *a8 = v19 = 0;
    goto LABEL_8;
  }

  [MAUtilityHelper validatePathMatchingRealpath:v18 error:a8];
  if (*a8)
  {
    v19 = 0;
    goto LABEL_8;
  }

  fileMgr = self->_fileMgr;
  if ((v48 & 1) == 0)
  {
    v23 = [(NSFileManager *)fileMgr attributesOfItemAtPath:v18 error:a8];
    v24 = v23;
    if (*a8)
    {
      v19 = 0;
    }

    else
    {
      v50 = v16;
      v26 = sub_10001B34C(v23, 0);
      v51 = v26;
      v19 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    }

    goto LABEL_8;
  }

  v22 = [(NSFileManager *)fileMgr contentsOfDirectoryAtPath:v18 error:a8];
  if (!*a8)
  {
    if (([(__CFString *)v16 hasSuffix:@"/"]& 1) != 0)
    {
      if (![(__CFString *)v16 isEqualToString:@"/"])
      {
LABEL_25:
        v38 = v15;
        v39 = v14;
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
              v30 = v16;
              v31 = [(__CFString *)v16 stringByAppendingString:v29];
              v32 = self->_fileMgr;
              v33 = [v18 stringByAppendingString:v29];
              v34 = [(NSFileManager *)v32 attributesOfItemAtPath:v33 error:a8];

              if (*a8)
              {

                v19 = 0;
                v15 = v38;
                v14 = v39;
                v16 = v30;
                v22 = v37;
                v36 = v43;
                goto LABEL_39;
              }

              v35 = sub_10001B34C(v34, 0);
              [v43 setObject:v35 forKeyedSubscript:v31];

              v16 = v30;
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
        v15 = v38;
        v14 = v39;
        v22 = v37;
LABEL_39:

        goto LABEL_40;
      }

      v25 = &stru_10011AC38;
    }

    else
    {
      v25 = [(__CFString *)v16 stringByAppendingString:@"/"];
    }

    v16 = v25;
    goto LABEL_25;
  }

  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
  {
    sub_10001CCAC(v18, a8);
  }

  v19 = 0;
LABEL_40:

LABEL_8:

  return v19;
}

- (BOOL)copyFileFrom:(const char *)a3 to:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 stringByDeletingLastPathComponent];
  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v8])
  {
    [MAUtilityHelper validatePathMatchingRealpath:v8 error:a5];
    if (!*a5)
    {
      v10 = [v8 fileSystemRepresentation];
      unlink(v10);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v9]|| [(NSFileManager *)self->_fileMgr createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:a5])
  {
    [MAUtilityHelper validatePathMatchingRealpath:v9 error:a5];
    if (!*a5)
    {
      v10 = [v8 fileSystemRepresentation];
LABEL_8:
      v11 = 3;
      do
      {
        if (!clonefile(a3, v10, 0))
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
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "dest file %s exists, delete and retry cloning", buf, 0xCu);
        }

        unlink(v10);
        --v11;
      }

      while (v11);
      v16 = *__error();
      *a5 = createManagedAssetError();
      v13 = off_100127CE0;
      if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
      {
        sub_10001CDE4(a3, v10, v13);
      }
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(off_100127CE0, OS_LOG_TYPE_ERROR))
  {
    sub_10001CD7C(v9, a5);
  }

  createManagedAssetError();
  *a5 = v14 = 0;
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