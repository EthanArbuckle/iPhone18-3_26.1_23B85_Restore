@interface NDFileUtilities
+ (BOOL)createDataVaultDirectoryAtPath:(id)a3;
+ (id)bundleManagerPath:(id)a3;
+ (id)defaultDownloadDirectoryContainer;
+ (id)defaultDownloadDirectoryForBundleID:(id)a3;
+ (id)fetchStreamingZipModificationDate:(id)a3;
+ (id)noFollowRealURL:(id)a3;
+ (id)nsurlsessiondLaunchdPath;
+ (id)nsurlsessiondPath;
+ (id)safeDirectoryForDownloads:(id)a3 auditToken:(id *)a4;
+ (id)safeURLForDownload:(id)a3 auditToken:(id *)a4;
+ (id)sessionPath:(id)a3 forBundleID:(id)a4;
+ (void)createDirectoryAtPath:(id)a3;
+ (void)createDirectoryAtURL:(id)a3;
+ (void)removeItemAtPath:(id)a3;
+ (void)removeItemAtURL:(id)a3;
+ (void)removeStreamingZipModificationDate:(id)a3;
+ (void)setDaemonWorkState:(BOOL)a3;
+ (void)updateStreamingZipModificationDate:(id)a3;
@end

@implementation NDFileUtilities

+ (id)nsurlsessiondPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.nsurlsessiond"];

  return v4;
}

+ (id)nsurlsessiondLaunchdPath
{
  v2 = +[NDFileUtilities nsurlsessiondPath];
  v3 = [v2 stringByAppendingString:@"-launchd"];

  return v3;
}

+ (id)safeURLForDownload:(id)a3 auditToken:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByDeletingLastPathComponent];
    v8 = *&a4->var0[4];
    v13[0] = *a4->var0;
    v13[1] = v8;
    v9 = [NDFileUtilities safeDirectoryForDownloads:v7 auditToken:v13];

    if (v9)
    {
      v10 = [v6 lastPathComponent];
      v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)safeDirectoryForDownloads:(id)a3 auditToken:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [v5 path];
  v8 = [v7 hasPrefix:@"/.nofollow/"];

  v9 = v6;
  if (v8)
  {
    v10 = strdup([v6 fileSystemRepresentation] + 10);
  }

  else
  {
    v10 = realpath_DARWIN_EXTSN([v6 fileSystemRepresentation], 0);
    if (!v10)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_8;
    }
  }

  v11 = *&a4->var0[4];
  *__str = *a4->var0;
  v15 = v11;
  if (sandbox_check_by_audit_token())
  {
    free(v10);
    goto LABEL_7;
  }

  snprintf(__str, 0x40BuLL, "/.nofollow%s", v10);
  free(v10);
  v12 = [NSURL fileURLWithFileSystemRepresentation:__str isDirectory:1 relativeToURL:0];
LABEL_8:

  return v12;
}

+ (id)noFollowRealURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = realpath_DARWIN_EXTSN([v3 fileSystemRepresentation], 0);
    v6 = v5;
    if (v5)
    {
      snprintf(__str, 0x40BuLL, "/.nofollow%s", v5);
      free(v6);
      v7 = [NSURL fileURLWithFileSystemRepresentation:__str isDirectory:1 relativeToURL:0];
      goto LABEL_7;
    }

    v8 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *__str = 138412290;
      v11 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "realpath failed on %@", __str, 0xCu);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)fetchStreamingZipModificationDate:(id)a3
{
  v3 = [a3 fileSystemRepresentation];
  if (v3)
  {
    value = 0.0;
    v4 = getxattr(v3, "com.apple.nsurlsessiond.szmodtime", &value, 8uLL, 0, 0);
    v3 = 0;
    if (v4 == 8)
    {
      v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:value];
    }
  }

  return v3;
}

+ (void)removeStreamingZipModificationDate:(id)a3
{
  v4 = a3;
  v3 = [v4 fileSystemRepresentation];
  if (v3)
  {
    removexattr(v3, "com.apple.nsurlsessiond.szmodtime", 0);
  }
}

+ (void)updateStreamingZipModificationDate:(id)a3
{
  v3 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  value = v4;
  v5 = [v3 fileSystemRepresentation];
  if (v5)
  {
    setxattr(v5, "com.apple.nsurlsessiond.szmodtime", &value, 8uLL, 0, 0);
  }
}

+ (void)setDaemonWorkState:(BOOL)a3
{
  v3 = a3;
  v4 = +[NDFileUtilities nsurlsessiondLaunchdPath];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [v4 stringByAppendingString:@"/nsurlsessiond.launch"];
  v7 = v6;
  if (v3 && v6)
  {
    v8 = +[NSFileManager defaultManager];
    [v8 createFileAtPath:v7 contents:0 attributes:0];
LABEL_5:

    goto LABEL_7;
  }

  if (!v3)
  {
    if (v6)
    {
      v9 = +[NSFileManager defaultManager];
      v10 = [v9 fileExistsAtPath:v7];

      if (v10)
      {
        v8 = +[NSFileManager defaultManager];
        v11 = 0;
        [v8 removeItemAtPath:v7 error:&v11];
        goto LABEL_5;
      }
    }
  }

LABEL_7:
}

+ (id)defaultDownloadDirectoryForBundleID:(id)a3
{
  v3 = a3;
  v4 = +[NDFileUtilities defaultDownloadDirectoryContainer];
  v5 = [v4 URLByAppendingPathComponent:v3 isDirectory:1];

  return v5;
}

+ (id)defaultDownloadDirectoryContainer
{
  v2 = NSTemporaryDirectory();
  v3 = [NSURL fileURLWithPath:v2];

  v4 = +[Daemon sharedDaemon];
  v5 = [v4 isPrivileged];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    v14 = 0;
    v8 = [v7 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v14];
    v9 = v14;

    v10 = [NDFileUtilities noFollowRealURL:v8];

    if (v10)
    {
      [v10 URLByAppendingPathComponent:@"com.apple.nsurlsessiond/Downloads" isDirectory:1];
      v3 = v11 = v3;
    }

    else
    {
      v11 = qword_1000EB210;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 code];
        *buf = 138412546;
        v16 = v9;
        v17 = 2048;
        v18 = v13;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error getting caches directory: %@ [%ld]", buf, 0x16u);
      }
    }

    v6 = v3;
  }

  return v6;
}

+ (void)createDirectoryAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 code];
      *buf = 138412802;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Couldn't create directory at %@, error: %@ [%ld]", buf, 0x20u);
    }
  }
}

+ (void)createDirectoryAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 code];
      *buf = 138412802;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Couldn't create directory at %@, error: %@ [%ld]", buf, 0x20u);
    }
  }
}

+ (BOOL)createDataVaultDirectoryAtPath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v11 = qword_1000EB210;
    if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v12 = "Couldn't create directory.  No path provided.";
    v13 = v11;
    v14 = 2;
LABEL_28:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    goto LABEL_16;
  }

  v5 = [v3 cStringUsingEncoding:4];
  if (!v5)
  {
    v15 = qword_1000EB210;
    if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v30 = v4;
    v12 = "Couldn't create directory.  Unable to extract C-string from path argument: %@";
    v13 = v15;
    v14 = 12;
    goto LABEL_28;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v4];

  if (!v7)
  {
    v16 = [v4 stringByDeletingLastPathComponent];
    v17 = +[NSFileManager defaultManager];
    v28 = 0;
    v18 = [v17 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v28];
    v9 = v28;

    if (v18)
    {
      if (!rootless_mkdir_datavault())
      {
        v10 = 1;
        goto LABEL_23;
      }

      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *__error();
        *buf = 67109120;
        LODWORD(v30) = v20;
        v21 = "Failed to create data-vault directory.  errno=%d";
        v22 = v19;
        v23 = 8;
LABEL_30:
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      }
    }

    else
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = [v9 code];
        *buf = 138412802;
        v30 = v4;
        v31 = 2112;
        v32 = v9;
        v33 = 2048;
        v34 = v26;
        v21 = "Couldn't create directory at %@, error: %@ [%ld]";
        v22 = v19;
        v23 = 32;
        goto LABEL_30;
      }
    }

    v10 = 0;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if (chmod(v5, 0x1C0u))
  {
    v8 = qword_1000EB210;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      *buf = 136315394;
      v30 = v5;
      v31 = 1024;
      LODWORD(v32) = v25;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set mode 700 on path %s.  errno=%d", buf, 0x12u);
    }
  }

  if (rootless_check_datavault_flag() == 1 && rootless_convert_to_datavault())
  {
    v9 = qword_1000EB210;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v27 = *__error();
      *buf = 136315394;
      v30 = v5;
      v31 = 1024;
      LODWORD(v32) = v27;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to convert %s to a data-vault directory.  errno=%d", buf, 0x12u);
    }

    v10 = 0;
    goto LABEL_24;
  }

LABEL_16:
  v10 = 0;
LABEL_25:

  return v10;
}

+ (void)removeItemAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 code];
      *buf = 138412802;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error removing item at url: %@, error: %@ [%ld]", buf, 0x20u);
    }
  }
}

+ (void)removeItemAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 code];
      *buf = 138412802;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error removing item at path: %@, error: %@ [%ld]", buf, 0x20u);
    }
  }
}

+ (id)sessionPath:(id)a3 forBundleID:(id)a4
{
  v5 = a3;
  v6 = [NDFileUtilities bundleManagerPath:a4];
  v7 = sub_100002040(v5);
  v8 = [v6 stringByAppendingPathComponent:v7];

  return v8;
}

+ (id)bundleManagerPath:(id)a3
{
  v3 = a3;
  v4 = +[NDFileUtilities nsurlsessiondPath];
  v5 = sub_100002040(v3);
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

@end