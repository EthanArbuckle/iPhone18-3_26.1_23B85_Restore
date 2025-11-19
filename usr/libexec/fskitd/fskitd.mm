void sub_100001180(void *a1)
{
  v1 = a1;
  v2 = dispatch_group_create();
  v3 = +[NSMutableArray array];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_10000136C;
  v14[4] = sub_10000137C;
  v15 = objc_alloc_init(NSCondition);
  if ((v17[3] & 1) == 0)
  {
    dispatch_group_enter(v2);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001384;
  v8[3] = &unk_100060950;
  v12 = v14;
  v13 = &v16;
  v4 = v1;
  v9 = v4;
  v5 = v3;
  v10 = v5;
  v6 = v2;
  v11 = v6;
  v7 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v8];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  [FPProviderDomain endMonitoringProviderDomainChanges:v7];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);
}

uint64_t sub_10000136C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001384(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  [*(*(*(a1 + 56) + 8) + 40) lock];
  v6 = *(*(a1 + 64) + 8);
  v22 = v5;
  if (*(v6 + 24) == 1)
  {
    [*(*(*(a1 + 56) + 8) + 40) unlock];
    goto LABEL_28;
  }

  *(v6 + 24) = 1;
  v25 = a1;
  [*(*(*(a1 + 56) + 8) + 40) unlock];
  if (!v5)
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    obj = [v23 allValues];
    v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = *v36;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 componentsSeparatedByString:@"/"];

        if ([v13 count] < 2)
        {
          v14 = 0;
          goto LABEL_24;
        }

        v14 = [v13 objectAtIndexedSubscript:1];
        v15 = [v11 providerID];
        if ([v15 isEqual:@"com.apple.SMBClientProvider.FileProvider"])
        {
        }

        else
        {
          v16 = [v11 providerID];
          v17 = [v16 isEqual:@"com.apple.filesystems.UserFS.FileProvider"];

          if (!v17)
          {
            goto LABEL_24;
          }
        }

        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 1;
        v18 = [v11 providerID];
        if (![v18 isEqual:@"com.apple.SMBClientProvider.FileProvider"])
        {

LABEL_20:
          v20 = *(v25 + 32);
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1000017A8;
          v28[3] = &unk_1000608D8;
          v14 = v14;
          v29 = v14;
          v30 = &v31;
          [v20 enumerateObjectsUsingBlock:v28];
          if (*(v32 + 24) == 1)
          {
            [*(v25 + 40) addObject:v11];
            dispatch_group_enter(*(v25 + 48));
          }

          goto LABEL_23;
        }

        v19 = [v14 length] < 7;

        if (!v19)
        {
          goto LABEL_20;
        }

        *(v32 + 24) = 0;
LABEL_23:
        _Block_object_dispose(&v31, 8);
LABEL_24:
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v8)
      {
LABEL_26:

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100001820;
        v26[3] = &unk_100060928;
        v21 = *(v25 + 40);
        v27 = *(v25 + 48);
        [v21 enumerateObjectsWithOptions:1 usingBlock:v26];
        v7 = v27;
        goto LABEL_27;
      }
    }
  }

  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100044FE8();
  }

LABEL_27:

  dispatch_group_leave(*(v25 + 48));
LABEL_28:
}

void sub_100001788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000017A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 objectForKeyedSubscript:LiveFSMounterDomainStorageKey];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_100001820(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 componentsSeparatedByString:@"/"];
  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = [v3 providerID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001948;
  v9[3] = &unk_100060900;
  v10 = v3;
  v11 = *(a1 + 32);
  v8 = v3;
  [LivefsDomainManager removeDomain:v6 provider:v7 how:0 reply:v9];
}

void sub_100001948(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100045058(a1);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100001CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001D90;
    block[3] = &unk_100060978;
    v4 = WeakRetained;
    dispatch_async(v2, block);
  }
}

void sub_100001D98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001E48;
    block[3] = &unk_100060978;
    v4 = WeakRetained;
    dispatch_async(v2, block);
  }
}

uint64_t start(int a1, char *const *a2)
{
  __endptr = 0;
  v4 = +[FSKitDaemon daemon];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100045284();
  }

  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v43[0]) = 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "main:lifs:v2:%d", buf, 8u);
  }

  if (([v4 start] & 1) == 0)
  {
    sub_1000452C0();
  }

  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Done setting up mach ports", buf, 2u);
  }

  nullsub_4();
  v8 = [v4 ownAuditToken];

  if (!v8)
  {
    v35 = fskit_std_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_100045514();
    }

    errx(71, "Unable to get own audit token. Exiting");
  }

  v9 = getuid();
  v10 = (v9 & 0xF) + 9000;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000452DC(v4);
  }

  while (1)
  {
    while (1)
    {
      v12 = getopt(a1, a2, "Ln:p:t:v");
      if (v12 <= 111)
      {
        break;
      }

      switch(v12)
      {
        case 'p':
          if (*optarg == 47)
          {
            v13 = [NSString stringWithUTF8String:?];
            [v4 setFPNfsPortStr:v13];
          }

          else
          {
            v14 = strtol(optarg, &__endptr, 10);
            if (!v14 || *__endptr)
            {
              sub_1000453B0();
            }

            v10 = v14;
LABEL_28:
            [v4 setLoopback:1];
          }

          break;
        case 't':
          strtoul(optarg, &__endptr, 10);
          if (*__endptr)
          {
            sub_100045380();
          }

          break;
        case 'v':
          [v4 setVerbose:{objc_msgSend(v4, "verbose") + 1}];
          break;
        default:
          goto LABEL_55;
      }
    }

    if (v12 == 76)
    {
      goto LABEL_28;
    }

    if (v12 != 110)
    {
      break;
    }

    strtoul(optarg, &__endptr, 10);
    if (*__endptr)
    {
      sub_1000453E0();
    }
  }

  if (v12 != -1)
  {
LABEL_55:
    sub_1000454EC();
  }

  if ([v4 loopback])
  {
    v15 = [NSString stringWithFormat:@"%d", v10];
    [v4 setFPNfsPortStr:v15];
  }

  if ([v4 verbose])
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 FPNfsPortStr];
      *buf = 67109378;
      LODWORD(v43[0]) = v9;
      WORD2(v43[0]) = 2112;
      *(v43 + 6) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Running as %d for port %@", buf, 0x12u);
    }
  }

  if ([v4 isInternalBuild])
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Running on internal build.", buf, 2u);
    }
  }

  v19 = objc_autoreleasePoolPush();
  v20 = os_transaction_create();
  v21 = qword_1000686B0;
  qword_1000686B0 = v20;

  v22 = [v4 theMountTable];

  if (!v22)
  {
    v36 = livefs_std_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000454B0();
    }

    err(1, "Could not allocate mount table");
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000261C;
  v39[3] = &unk_100060978;
  v23 = v4;
  v40 = v23;
  v24 = sub_100002534(2u, v39);
  v25 = qword_100068630;
  qword_100068630 = v24;

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100002670;
  v37[3] = &unk_100060978;
  v26 = v23;
  v38 = v26;
  v27 = sub_100002534(0xFu, v37);
  v28 = qword_100068628;
  qword_100068628 = v27;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000026C4, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot())
  {
    v30 = livefs_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43[0] = "checkIfUnlocked";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s:Device was unlocked, proceed with main flow.", buf, 0xCu);
    }

    if (qword_1000686B8 != -1)
    {
      sub_100045410();
    }
  }

  else
  {
    v34 = livefs_std_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "checkIfUnlocked - Device was never unlocked.", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v19);
  v31 = livefs_std_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    sub_100045438();
  }

  CFRunLoopRun();
  v32 = livefs_std_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_100045474();
  }

  return 70;
}

NSObject *sub_100002534(unsigned int a1, void *a2)
{
  v3 = a2;
  if (signal(a1, 1) == -1)
  {
    v7 = livefs_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000455C4();
    }

LABEL_10:

    exit(71);
  }

  v4 = dispatch_source_create(&_dispatch_source_type_signal, a1, 0, &_dispatch_main_q);
  if (!v4)
  {
    v7 = livefs_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100045550();
    }

    goto LABEL_10;
  }

  v5 = v4;
  dispatch_source_set_event_handler(v4, v3);
  dispatch_resume(v5);

  return v5;
}

void sub_10000261C(uint64_t a1)
{
  v2 = [*(a1 + 32) theMountTable];
  v3 = [*(a1 + 32) liveFilesMountPath];
  [v2 tearDownDaemon:1 withPath:v3];

  exit(0);
}

void sub_100002670(uint64_t a1)
{
  v2 = [*(a1 + 32) theMountTable];
  v3 = [*(a1 + 32) liveFilesMountPath];
  [v2 tearDownDaemon:1 withPath:v3];

  exit(0);
}

void sub_1000026C4()
{
  v0 = livefs_std_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "firstUnlockNotificationCallback: Device unlocked", v1, 2u);
  }

  if (qword_1000686B8 != -1)
  {
    sub_100045410();
  }
}

void sub_100002744(id a1)
{
  v1 = &selRef_setError_;
  v2 = +[FSKitDaemon daemon];
  v3 = [v2 verbose];
  v4 = [v2 theMountTable];
  v5 = [v2 liveFilesMountPath];
  [v4 tearDownDaemon:0 withPath:v5];

  v6 = [v2 liveFilesMountPath];
  v7 = +[NSFileManager defaultManager];
  v68 = 0;
  v78 = NSFilePosixPermissions;
  v79 = &off_100063360;
  v8 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v9 = &off_10004C000;
  if (![v7 fileExistsAtPath:v6 isDirectory:&v68])
  {
    *&buf = 0;
    v14 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:v8 error:&buf];
    v12 = buf;
    if ((v14 & 1) == 0)
    {
      v10 = livefs_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100045638();
      }

      goto LABEL_14;
    }

    v15 = 1;
    goto LABEL_16;
  }

  if ((v68 & 1) == 0)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100045888();
    }

    v12 = 0;
    goto LABEL_14;
  }

  v67 = 0;
  v10 = [v7 contentsOfDirectoryAtPath:v6 error:&v67];
  v11 = v67;
  if (v11)
  {
    v12 = v11;
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000456AC();
    }

    goto LABEL_6;
  }

  if (-[NSObject count](v10, "count") && ([v7 isWritableFileAtPath:v6] & 1) == 0 && chmod(objc_msgSend(v6, "fileSystemRepresentation"), 0x1EDu))
  {
    v52 = livefs_std_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_100045720();
    }
  }

  v53 = 0;
  *&v51 = 138543618;
  v65 = v51;
  while (1)
  {
    if (![v10 count])
    {
      v12 = 0;
LABEL_66:
      v1 = &selRef_setError_;
      v9 = &off_10004C000;
      if ([v7 isWritableFileAtPath:v6] && chmod(objc_msgSend(v6, "fileSystemRepresentation"), 0x16Du))
      {
        v58 = livefs_std_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_1000457F4();
        }
      }

      v15 = 1;
      goto LABEL_15;
    }

    v54 = livefs_std_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *v74 = v65;
      v75 = v6;
      v76 = 1024;
      v77 = v53;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}@ not empty on base system, loop %d!", v74, 0x12u);
    }

    if (v53 == 5)
    {
      break;
    }

    ++v53;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v70 = sub_1000036F4;
    v71 = &unk_100060AD0;
    v55 = v6;
    v72 = v55;
    v56 = v7;
    v73 = v56;
    [v10 enumerateObjectsUsingBlock:&buf];
    v66 = 0;
    v57 = [v56 contentsOfDirectoryAtPath:v55 error:&v66];
    v12 = v66;

    v10 = v57;
    if (v12)
    {
      v10 = v57;
      goto LABEL_66;
    }
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1000457B4();
  }

  v12 = 0;
  v1 = &selRef_setError_;
  v9 = &off_10004C000;
LABEL_6:

LABEL_14:
  v15 = 0;
LABEL_15:

LABEL_16:
  if ((v15 & 1) == 0)
  {
    v59 = livefs_std_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_1000458F8();
    }

    err(1, "Could not build LiveFiles mount path");
  }

  if (v3)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "About to tear down pre-existing mounts", &buf, 2u);
    }

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v2 FPNfsPortStr];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Creating transport on port %@", &buf, 0xCu);
    }

    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating the root (FPnfsMemFS) file system", &buf, 2u);
    }
  }

  v20 = [FPnfsMemFS alloc];
  v21 = [v2 liveFilesMountPath];
  v22 = [(FPnfsMemFS *)v20 initWithRootPath:v21];
  [v2 setTheRoot:v22];

  v23 = [v2 theRoot];

  if (!v23)
  {
    v60 = livefs_std_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_100045A58();
    }

    err(1, "Could not allocate root file system");
  }

  if (v3)
  {
    v24 = livefs_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Creating the root mountEntry", &buf, 2u);
    }
  }

  v25 = [v2 theRoot];
  v26 = [v2 liveFilesMountPath];
  v27 = [v2 theMountTable];
  v28 = [mountEntry newWithObject:v25 path:v26 mntTable:v27];
  [v2 setTheRootEntry:v28];

  v29 = [v2 theRootEntry];

  if (!v29)
  {
    v61 = livefs_std_log();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_100045A1C();
    }

    err(1, "Could not alloc/init the root mount table entry");
  }

  if ([v2 loopback])
  {
    v30 = [v2 theRootEntry];
    [v30 setIs_inet:1];
  }

  if (v3)
  {
    v31 = livefs_std_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Mount the root file system (FPnfsMemFS", &buf, 2u);
    }
  }

  v32 = [v2 theRootEntry];
  v33 = [v32 mount:0 options:0];

  if (v33)
  {
    v62 = livefs_std_log();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_100045934();
    }

    err(1, "Could not initialize the fskitd's root memory file system.");
  }

  v34 = [v2 settings];
  v35 = [v34 mounts];
  v36 = qword_1000686C0;
  qword_1000686C0 = v35;

  v37 = qword_1000686C0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = *(v9 + 474);
  v70 = sub_100003200;
  v71 = &unk_100060A08;
  v38 = v2;
  v72 = v38;
  [v37 enumerateObjectsUsingBlock:&buf];
  v39 = [v38 theMountTable];
  [v39 resetIndex];

  sub_100001180(qword_1000686C0);
  if (v3)
  {
    v40 = livefs_std_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Staring mounting service", v74, 2u);
    }
  }

  v41 = objc_alloc_init(liveFilesMountServiceDelegate);
  v42 = qword_1000686C8;
  qword_1000686C8 = v41;

  if (!qword_1000686C8)
  {
    v63 = livefs_std_log();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_1000459E0();
    }

    err(1, "Could not alloc/init mountServiceDelegate");
  }

  v43 = [[FSModuleHost alloc] initWithProbeList:1];
  [v43 setModulesLoaded:&stru_100060A48];
  [v43 setModulesUnloaded:&stru_100060A68];
  [v43 loadModulesAndMonitor];
  v44 = [v1 + 345 daemon];
  [v44 setFsModuleHost:v43];

  v45 = objc_opt_new();
  v46 = [v1 + 345 daemon];
  [v46 setOwnAuditToken:v45];

  v47 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.filesystems.fskitd"];
  v48 = qword_1000686D0;
  qword_1000686D0 = v47;

  if (!qword_1000686D0)
  {
    v64 = livefs_std_log();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_1000459A4();
    }

    err(1, "Could not obtain NSXPCListerner serviceListener");
  }

  [qword_1000686D0 setDelegate:qword_1000686C8];
  if (v3)
  {
    v49 = livefs_std_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Resuming liveFilesMountService", v74, 2u);
    }
  }

  [qword_1000686D0 resume];
  v50 = qword_1000686B0;
  qword_1000686B0 = 0;
}

void sub_100003200(uint64_t a1, void *a2)
{
  v3 = LiveFSMounterMountedOnKey;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v24 = [v4 objectForKeyedSubscript:LiveFSMounterVolumeNameKey];
  v23 = [v4 objectForKeyedSubscript:LiveFSMounterDisplayNameKey];
  v6 = [v4 objectForKeyedSubscript:LiveFSMounterDomainStorageKey];
  v7 = [v4 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
  v8 = [v4 objectForKey:LiveFSMounterDomainErrorKey];
  v9 = [v4 objectForKeyedSubscript:LiveFSMounterMountIDKey];

  v10 = [v9 intValue];
  if ([v5 isAbsolutePath])
  {
    v11 = v5;
  }

  else
  {
    v12 = [*(a1 + 32) liveFilesMountPath];
    v11 = [NSString stringWithFormat:@"%@/%@", v12, v5];
  }

  v13 = [*(a1 + 32) ownAuditToken];
  v14 = [*(a1 + 32) theMountTable];
  LODWORD(v22) = v10;
  v15 = [mountEntry newWithName:v24 fileSystem:0 displayName:v23 storageName:v6 provider:v7 path:v11 mountID:v22 auditToken:v13 mntTable:v14];

  if (v15)
  {
    v16 = [*(a1 + 32) theRoot];
    v17 = [v16 mkMountPath:v5 mountID:v10];

    if (v17)
    {
LABEL_6:
      v18 = livefs_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v17;
        v27 = 2114;
        v28 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Got error %@ reconstituting mount for provider %{public}@", buf, 0x16u);
      }

      v19 = livefs_std_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100045A94();
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    if (v17)
    {
      goto LABEL_6;
    }
  }

  if (v8)
  {
    v20 = [LivefsSettings deserializedError:v8];
    [v15 setDomainError:v20];
  }

  [v15 setCurrentState:1];
  v21 = [v15 mount:0 options:0];
LABEL_15:
}

void sub_100003544(id a1, NSArray *a2, NSDictionary *a3, NSArray *a4)
{
  v4 = a2;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = [(NSArray *)v4 count];
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Added %lu identifiers: %@", &v6, 0x16u);
  }
}

void sub_100003604(id a1, NSArray *a2, NSDictionary *a3, NSArray *a4)
{
  v4 = a2;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSArray *)v4 count];
    v7 = [(NSArray *)v4 fs_map:&stru_100060AA8];
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removed %lu identifiers: %@", &v8, 0x16u);
  }
}

void sub_1000036F4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v4 = *(a1 + 40);
  v7 = 0;
  [v4 removeItemAtPath:v3 error:&v7];
  v5 = v7;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removal of items at %{public}@ returned %@", buf, 0x16u);
  }
}

void sub_100003834(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100003B18(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *a4 = 0;
  v7 = *(a1 + 32);
  v8 = [v6 name];
  if ([v7 localizedStandardCompare:v8])
  {
  }

  else
  {
    v9 = [v6 nascent];

    if ((v9 & 1) == 0)
    {
      v10 = 1;
      *a4 = 1;
      goto LABEL_5;
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

BOOL sub_100003D60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  v6 = [a2 name];
  v7 = [v5 localizedStandardCompare:v6];

  if (!v7)
  {
    *a4 = 1;
  }

  return v7 == 0;
}

BOOL sub_100004004(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  v6 = [a2 name];
  v7 = [v5 localizedStandardCompare:v6];

  if (!v7)
  {
    *a4 = 1;
  }

  return v7 == 0;
}

BOOL sub_10000439C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  v6 = [a2 name];
  v7 = [v5 localizedStandardCompare:v6];

  if (!v7)
  {
    *a4 = 1;
  }

  return v7 == 0;
}

void sub_100004404(uint64_t a1)
{
  v2 = [*(a1 + 32) fs];
  v3 = [*(a1 + 32) name];
  v4 = [v2 fullPathForRelativePath:v3];

  v5 = rmdir([v4 fileSystemRepresentation]);
  if (v5 && v5 != 66)
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000082F4(v4, v6);
    }
  }
}

uint64_t sub_10000482C(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v8 = strlen(__s);
  *a4 = a1;
  *(a4 + 8) = a3;
  *(a4 + 16) = (v8 + 29) & 0xFFF8;
  *(a4 + 20) = 2;
  *(a4 + 18) = v8;
  strlcpy((a4 + 21), __s, v8 + 1);
  return a4 + *(a4 + 16);
}

void sub_100005170(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 224);
  v3 = [v1 fh];
  [v2 setObject:v1 forKey:v3];
}

void sub_100005400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005428(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005440(void *a1)
{
  v2 = [*(a1[4] + 224) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100005534(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 224);
  v2 = [*(a1 + 40) fh];
  [v1 removeObjectForKey:v2];
}

void sub_100005DC4(uint64_t a1)
{
  v2 = [*(a1 + 32) rootNode];
  if ([*(a1 + 40) count] != 2)
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(a1 + 40) objectAtIndexedSubscript:v4];
      v6 = [v2 lookup:v5];

      if (!v6)
      {
        break;
      }

      v3 = [*(a1 + 32) findNode:v6];

      ++v4;
      v2 = v3;
      if (v4 >= [*(a1 + 40) count] - 2)
      {
        goto LABEL_6;
      }
    }
  }

  v3 = v2;
LABEL_6:
  v7 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "count") - 1}];
  v8 = [v3 rmDir:v7];

  if (verbose)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "count") - 1}];
      v11 = [v3 name];
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to remove %@ from %@ returned %d", &v12, 0x1Cu);
    }
  }
}

void sub_1000082F4(void *a1, NSObject *a2)
{
  v3 = [a1 fileSystemRepresentation];
  v4 = *__error();
  v5 = 136315394;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to cleanup parent %s - %{darwin.errno}d", &v5, 0x12u);
}

void sub_10000839C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "mkMountPath: %{public}@ is not contain in fskitd's root %{public}@", &v4, 0x16u);
}

void sub_100008428(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "mkMountPath:finish:%@", &v2, 0xCu);
}

void sub_1000084E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Oops! ReadDirAndAttrs on %@", &v2, 0xCu);
}

uint64_t sub_1000087A4(uint64_t a1)
{
  qword_1000686E0 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

void sub_100008A00(id a1)
{
  if (dispatch_mig_server())
  {
    v1 = livefs_std_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100008E48();
    }
  }
}

void sub_100008B7C(kern_return_t a1, NSObject *a2)
{
  v4 = 136315650;
  v5 = "[FSKitDaemon start]";
  v6 = 2080;
  v7 = bootstrap_strerror(a1);
  v8 = 1024;
  v9 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: ERROR: bootstrap_check_in() failed: %s - %d", &v4, 0x1Cu);
}

void sub_100008C2C(_DWORD *a1)
{
  *a1;
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100008CD0()
{
  sub_100008B68();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100008D4C()
{
  sub_100008B68();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100009598(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v14 = a3;
  v11 = a5;
  v12 = a6;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = [a4 base64String];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100009A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 base64String];
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[FSVolumeConnectorBridge getRootFileHandleWithError:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:reply:rootFH:%@:err:%@", &v9, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[FSVolumeConnectorBridge getRootFileHandleWithError:]_block_invoke";
      v11 = 2112;
      v12 = 0;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:reply:rootFH:%@:err:%@", &v9, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100009DAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v23 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
  }

  else
  {
    v21 = [a4 base64String];
    if (v16)
    {
      v22 = [v16 base64String];
    }

    else
    {
      v22 = 0;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

void sub_10000A040(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v14 = a3;
  v11 = a5;
  v12 = a6;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = [a4 base64String];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000A21C(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "[FSVolumeConnectorBridge makeDirectoryIn:named:attributes:requestID:reply:]_block_invoke";
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s:result:%d theItem:%@", &v17, 0x1Cu);
  }

  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = [v12 base64String];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000A5F4(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v14 = a3;
  v11 = a5;
  v12 = a6;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = [a4 base64String];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_10000AD80(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 32) = a3;
  }

  return result;
}

uint64_t sub_10000AD98(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 36) = a3;
  }

  return result;
}

uint64_t sub_10000ADB0(uint64_t result, int a2)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 44) |= 2u;
  }

  return result;
}

uint64_t sub_10000ADD0(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    v3 = *(*(result + 32) + 8);
    v4 = *(v3 + 44) & 0xFE;
    if (a3)
    {
      ++v4;
    }

    *(v3 + 44) = v4;
  }

  return result;
}

uint64_t sub_10000ADF8(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 44) = *(*(*(result + 32) + 8) + 44) & 0xFB | (4 * (a3 == 0));
  }

  return result;
}

uint64_t sub_10000AE24(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 44) = *(*(*(result + 32) + 8) + 44) & 0xF7 | (8 * (a3 != 0));
  }

  return result;
}

uint64_t sub_10000AE50(uint64_t result, int a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 40) = a3;
  }

  return result;
}

void sub_10000BF04(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v5 = a3;
    v7[0] = [v5 blockSize];
    v7[1] = [v5 totalBytes];
    v7[2] = [v5 availableBytes];
    v7[3] = [v5 freeBytes];
    v7[4] = [v5 usedBytes];
    v7[5] = [v5 totalFiles];
    v6 = [v5 freeFiles];

    v7[6] = v6;
    v4 = [NSData dataWithBytes:v7 length:56];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000CE38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4;
  v7 = *(a1 + 32);
  if (a2)
  {
    (*(v7 + 16))(v7, a2, 0, 0);
  }

  else
  {
    v8 = [a3 dataUsingEncoding:4];
    (*(v7 + 16))(v7, 0, v8, v9);
  }
}

void sub_10000D92C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 80));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10000D968(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[1] removeObjectForKey:*(a1 + 40)];

  objc_sync_exit(obj);
}

void sub_10000DE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DE84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DE9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10000DF1C(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 attributes];
  v9 = [v8 objectForKeyedSubscript:FSModuleIdentityAttributeShortName];
  v10 = v9;
  if (v9 && ![v9 caseInsensitiveCompare:a1[4]])
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E61C(a1 + 4, v11);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    *a4 = 1;
  }
}

void sub_10000E1B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v10 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && !v8)
  {
    v8 = fs_errorForPOSIXError();
  }

  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

void sub_10000E3C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!(v6 | v5))
  {
    v5 = fs_errorForPOSIXError();
  }

  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

void sub_10000E5B8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_10000E61C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "[fskitdAgentManager currentExtensionForShortName:auditToken:replyHandler:]_block_invoke_2";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: Found extension for fsShortName (%@)", &v3, 0x16u);
}

void sub_10000E6E4(id a1)
{
  qword_1000686F8 = DASessionCreate(kCFAllocatorDefault);
  v1 = dispatch_queue_create("com.apple.fskitd.da", 0);
  DASessionSetDispatchQueue(qword_1000686F8, v1);
  v2 = fskit_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = qword_1000686F8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Setup main DA session, %@", &v3, 0xCu);
  }
}

uint64_t sub_10000E8D8(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_10000EA4C(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10000F030(uint64_t a1)
{
  v2 = FSTaskPurposeFormat;
  v3 = [*(a1 + 32) taskPurpose];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [fskitdDAOperations probeDisk:v4 replyHandler:&stru_100061080];
  }
}

void sub_10000F0C8(uint64_t a1, void *a2)
{
  obj = a2;
  objc_sync_enter(obj);
  v3 = [obj ourConn];

  if (v3)
  {
    v4 = [obj ourConn];
    v5 = [v4 remoteObjectProxy];

    [v5 taskStatusUpdate:*(a1 + 32)];
  }

  objc_sync_exit(obj);
}

void sub_10000F7FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000104C0(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001052C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000105AC(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000FE38(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10000FE58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000FE74(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000FE94(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "taskID(%@) not found in our tasks dictionary", buf, 0xCu);
}

void sub_10000FEEC(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s:start:resource:%@", v4, v5, v6, v7, 2u);
}

void sub_10000FF80(void *a1, id *a2, NSObject *a3)
{
  v5 = [a1 taskExtensionInstanceID];
  v6 = [*a2 instanceID];
  v7 = [v6 fs_containerIdentifier];
  v8 = 136315650;
  v9 = "[fskitdExtensionClient taskStatusUpdate:]";
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: Task extension instance ID (%@) isn't the same as this instance ID (%@)", &v8, 0x20u);
}

void sub_100010068(void *a1)
{
  v1 = [a1 taskID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s: Killing the extension instance for task (%@)", v4, v5, v6, v7, 2u);
}

void sub_1000100FC(void *a1)
{
  v1 = [a1 taskID];
  sub_10000FE24();
  sub_10000FE74(&_mh_execute_header, v2, v3, "%s: Unknown task ID (%@) was given, can't find task", v4, v5, v6, v7, 2u);
}

void sub_100010208(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s: Checking if given resource (%@) is recognized by our instance", v4, v5, v6, v7, 2u);
}

void sub_10001029C(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE74(&_mh_execute_header, v2, v3, "%s: Given resource (%@) isn't recognized", v4, v5, v6, v7, 2u);
}

void sub_1000103A8(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE74(&_mh_execute_header, v2, v3, "%s: Given resource (%@) is not recognized by resource manager", v4, v5, v6, v7, 2u);
}

void sub_10001043C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[fskitdExtensionClient wipeResource:replyHandler:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Given device is not a block device", &v1, 0xCu);
}

void sub_10001052C()
{
  v1[0] = 136315394;
  sub_10000FE24();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: encountered error while wiping device %@", v1, 0x16u);
}

void sub_100010804(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s:start:resource(%@)", v4, v5, v6, v7, 2u);
}

void sub_100010894(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s:end:resource(%@)", v4, v5, v6, v7, 2u);
}

void sub_100010924(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s:start:resource(%@)", v4, v5, v6, v7, 2u);
}

void sub_1000109B4(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_10000FE38(&_mh_execute_header, v2, v3, "%s:end:resource(%@)", v4, v5, v6, v7, 2u);
}

void sub_100010FE8(uint64_t a1, uint64_t a2)
{
  v2 = [FSTaskDescription taskDescriptionWithID:a2 state:3 purpose:&stru_100062B08 error:*(a1 + 32) bundleID:*(*(a1 + 40) + 24) extensionID:*(*(a1 + 40) + 56) resource:0];
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100013E0C(v2, v3);
  }

  [fskitdExtensionClient postTaskStatusUpdate:v2];
}

void sub_100011084(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [gSettings resourceManager];
  v6 = [v5 getResource:v4];

  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Revoking resource (%@)", &v8, 0xCu);
  }

  if (v6)
  {
    [fskitdExtensionClient closeResource:v6 andRevoke:1];
  }
}

void sub_100011778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_sync_exit(v29);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001180C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained weDied];
    WeakRetained = v2;
  }
}

void sub_100011868(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void sub_100011C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_100011C7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got ep %@ error %@", &v13, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

void sub_10001201C(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = gSettings;
  v5 = a2;
  v6 = [v4 resourceManager];
  v7 = [v6 getResource:v5];

  if (v7)
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100014088(v7);
    }

    [fskitdExtensionClient closeResource:v7 andRevoke:1];
  }
}

void sub_1000120C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100014120(v2, v3);
    }
  }
}

void sub_100013304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001331C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 volumeIDs];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v4 instanceID];
      v10 = [v4 bundleID];
      v11 = [v4 resourceIDs];
      v13 = 136316162;
      v14 = "[fskitdExtensionManager isVolumeIDUsed:bundle:user:replyHandler:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:volumeID(%@) is being used by instance (%@:%@:%@)", &v13, 0x34u);
    }
  }

  return v6;
}

void sub_100013C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100013C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 instanceID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return v7;
}

void sub_100013DEC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_100013E0C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Killing %@", &v2, 0xCu);
}

void sub_100013F0C(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[fskitdExtensionInstance terminate]";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:start:%d", &v2, 0x12u);
}

void sub_100013F98(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[fskitdExtensionInstance terminate]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:terminate return error: %@", buf, 0x16u);
}

void sub_100014004(os_log_t log)
{
  v1 = 136315138;
  v2 = "[fskitdExtensionInstance terminate]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:end", &v1, 0xCu);
}

void sub_100014088(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100014120(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error stopping extension instance: %@", &v2, 0xCu);
}

void sub_100014198()
{
  v2 = 136315650;
  sub_10000FE24();
  sub_100013DEC(&_mh_execute_header, v0, v1, "%s: Can't find any instance using bundleID (%@) and volume ID (%@)", v2);
}

void sub_100014214(void *a1)
{
  v1 = [a1 getInstancesInfo];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000142B0()
{
  v2 = 136315650;
  sub_10000FE24();
  sub_100013DEC(&_mh_execute_header, v0, v1, "%s:volumeID(%@)bundleID(%@):start", v2);
}

void sub_10001432C()
{
  v2 = 136315650;
  sub_10000FE24();
  sub_100013DEC(&_mh_execute_header, v0, v1, "%s: Found an instance (%@) with our resource (%@)", v2);
}

void sub_1000143A8(uint64_t a1, void *a2)
{
  v7 = [a2 getResourceID];
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100014468(void *a1)
{
  v1 = [a1 getInstancesInfo];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100014E78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10001503C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "mount(2) error: %d", v2, 8u);
}

void sub_10001524C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100016264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001627C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100025954();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100016300(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100016460(id *a1)
{
  v2 = (a1 + 4);
  v3 = [a1[4] stringByAppendingPathComponent:{@".", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000259C4();
  }

  stat([v3 fileSystemRepresentation], &v7);
  if ([a1[5] isEqual:@"com.apple.filesystems.UserFS.FileProvider"] && (objc_msgSend(a1[6], "isFSKitModule") & 1) == 0)
  {
    v5 = [NSURL fileURLWithPath:*v2];
    [CSSearchableIndex volumeMountedAtURL:v5 withOptions:0];

    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100025A34(v2);
    }
  }
}

id sub_100016824(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 104);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = v2[2];
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  LODWORD(v13) = v8;
  return [v2 LiveMounterReallyMountVolume:v3 fileSystem:v4 displayName:v5 provider:v6 domainError:v7 on:v9 how:v13 options:v10 auditToken:v14 reply:*(a1 + 96)];
}

id sub_100016B58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 104);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 124);
  v14[0] = *(a1 + 108);
  v14[1] = v11;
  LODWORD(v13) = v7;
  return [v2 LiveMounterReallyMountVolume:v1 fileSystem:v3 displayName:v4 provider:v5 domainError:v6 on:v8 how:v13 options:v9 auditToken:v14 reply:v10];
}

void sub_100016DE0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:LiveFSMounterDomainErrorKey];

  if (v3)
  {
    [v5 setValue:0 forKey:LiveFSMounterDomainErrorKey];
  }

  if (*(a1 + 32))
  {
    v4 = [LivefsSettings serializedError:?];
    [v5 setObject:v4 forKey:LiveFSMounterDomainErrorKey];
  }
}

void sub_100017444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017460(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100017934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017978(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100017FE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isEqual:*(a1 + 40)] & 1) == 0)
  {
    if (!v5 || (*(a1 + 88) & 1) != 0)
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001810C;
      v11[3] = &unk_100060F58;
      v10 = *(a1 + 72);
      v13 = *(a1 + 80);
      v12 = v6;
      [v7 updateErrorStateForVolume:v8 provider:v10 domainError:v9 reply:v11];

      goto LABEL_7;
    }

    [*(a1 + 48) setDomainError:*(a1 + 32)];
  }

  (*(*(a1 + 80) + 16))();
LABEL_7:
}

void sub_100018884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000188BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10001893C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [v7 bundleIdentifier];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100025B44(v7);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100018B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018B1C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 || !a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100025BFC(a1);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100018CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018CFC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 || !a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100025C7C(a1);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

BOOL sub_100019378(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 caseInsensitiveCompare:*(a1 + 32)] == 0;

  return v4;
}

void sub_1000198F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001995C(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v7 = a2;
  v8 = [FSBlockDeviceResource dynamicCast:v7];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "openWith returned err %@ dev %@", &v14, 0x16u);
  }
}

void sub_10001A4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose((v49 - 176), 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 256), 8);
  _Block_object_dispose((v49 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10001A594(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10001A614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10001A6B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24))
  {
    objc_sync_exit(v4);
  }

  else
  {
    *(v5 + 24) = 1;
    objc_sync_exit(v4);

    if (v3)
    {
      v6 = v3;
      v7 = [gSettings tasks];
      objc_sync_enter(v7);
      v8 = [gSettings tasks];
      v9 = [v6 taskID];
      v10 = [v8 objectForKey:v9];

      objc_sync_exit(v7);
      [v10 setTaskReferenceHolder:*(*(*(a1 + 56) + 8) + 40)];
      *(*(*(a1 + 64) + 8) + 24) = [v6 taskState] == 3;
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        v11 = *(*(*(a1 + 56) + 8) + 40);
        v12 = [v6 taskID];
        [v11 addTaskID:v12];

        v13 = fskit_std_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v6 taskID];
          v15 = [*(a1 + 40) getResourceID];
          v16 = 138412546;
          v17 = v14;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding taskID %@ to resource %@", &v16, 0x16u);
        }
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_10001AFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_10001B038(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [gSettings tasks];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [v7 taskPurpose];
    v9 = [v8 isEqualToString:FSTaskPurposeActivate];

    if ((v9 & 1) == 0)
    {
      v10 = fs_errorForPOSIXError();
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 32) getResourceID];
        v15 = [v7 taskPurpose];
        v16 = 136315906;
        v17 = "[fskitdXPCServer canStartUnloadTask:resource:]_block_invoke";
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v15;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s:%@: Can't start unload task, previous task (%@) runs task purpose (%@)", &v16, 0x2Au);
      }

      *a3 = 1;
    }
  }
}

void sub_10001BAE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10001C86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_10001C8C0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [gSettings tasks];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [v7 taskPurpose];
    v9 = [v8 isEqualToString:FSTaskPurposeActivate];

    if ((v9 & 1) == 0)
    {
      v10 = fs_errorForPOSIXError();
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 32) getResourceID];
        v15 = [v7 taskPurpose];
        v16 = 136315906;
        v17 = "[fskitdXPCServer canStartDeactivateTask:resource:]_block_invoke";
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v15;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s:%@: Can't start deactivate task, previous task (%@) runs task purpose (%@)", &v16, 0x2Au);
      }

      *a3 = 1;
    }
  }
}

void sub_10001D848(uint64_t a1)
{
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_100016264;
  v68 = sub_100016274;
  v69 = objc_opt_new();
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100016264;
  v62 = sub_100016274;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100016264;
  v56 = sub_100016274;
  v57 = fs_errorForPOSIXError();
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100016264;
  v50 = sub_100016274;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100016264;
  v44 = sub_100016274;
  v45 = 0;
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = gExtensionManager;
  v4 = *(a1 + 88);
  *buf = *(a1 + 72);
  *&buf[16] = v4;
  v5 = [FSAuditToken tokenWithToken:buf];
  v6 = *(a1 + 40);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10001DE44;
  v39[3] = &unk_100061540;
  v39[4] = &v40;
  v39[5] = &v58;
  v39[6] = &v46;
  [v3 existingExtensionForBundle:v2 user:v5 volume:v6 replyHandler:v39];

  if (v41[5])
  {
    goto LABEL_2;
  }

  if (v47[5])
  {
    v7 = [*(a1 + 48) canStartActivateTask:v65[5] resource:?];
    v8 = v41[5];
    v41[5] = v7;

    if (v41[5])
    {
LABEL_2:
      (*(*(a1 + 64) + 16))();
      goto LABEL_3;
    }

    v9 = *(a1 + 48);
    v10 = v47[5];
    v11 = *(a1 + 32);
    v12 = v59[5];
    v13 = *(a1 + 88);
    *buf = *(a1 + 72);
    *&buf[16] = v13;
    v14 = [FSAuditToken tokenWithToken:buf];
    v15 = [*(a1 + 48) ourConn];
    v16 = v15;
    if (v15)
    {
      [v15 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v20 = [FSAuditToken tokenWithToken:buf];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001DF5C;
    v30[3] = &unk_1000615B8;
    v33 = &v52;
    v34 = &v64;
    v35 = &v58;
    v37 = *(a1 + 72);
    v38 = *(a1 + 88);
    v29 = *(a1 + 40);
    v21 = v29.i64[0];
    v31 = vextq_s8(v29, v29, 8uLL);
    v36 = &v46;
    v32 = *(a1 + 56);
    v22 = [v9 applyResource:v10 usingIdentity:v11 instanceID:v12 initiatorAuditToken:v14 authorizingAuditToken:v20 usingBlock:v30];
    v23 = v41[5];
    v41[5] = v22;

    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v65[5];
      v26 = v41[5];
      v27 = v53[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _activateVolume:usingIdentity:options:auditToken:replyHandler:]_block_invoke_4";
      *&buf[12] = 2112;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      *&buf[24] = v26;
      v71 = 2112;
      v72 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), activate volume error (%@)", buf, 0x2Au);
    }

    if (!v41[5])
    {
      objc_storeStrong(v41 + 5, v53[5]);
      v28 = v41[5];
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100026ED8((a1 + 40));
    }

    v18 = *(a1 + 64);
    v19 = fs_errorForPOSIXError();
    (*(v18 + 16))(v18, v19);
  }

LABEL_3:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
}

void sub_10001DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 256), 8);
  _Block_object_dispose((v45 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10001DE44(void *a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v17 instanceID];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [v17 resourceIDs];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v17 resourceIDs];
      v12 = [v11 objectAtIndexedSubscript:0];

      v13 = [gSettings resourceManager];
      v14 = [v13 getResource:v12];
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

void sub_10001DF5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [v9 setState:5];
  v12 = [gSettings resourceManager];
  objc_sync_enter(v12);
  v13 = [gSettings resourceManager];
  [v13 addResource:v9];

  objc_sync_exit(v12);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001E27C;
  v40[3] = &unk_100061568;
  v42 = *(a1 + 56);
  v14 = v11;
  v41 = v14;
  v15 = [v10 remoteObjectProxyWithErrorHandler:v40];
  v16 = *(*(*(a1 + 64) + 8) + 40);
  v17 = FSTaskPurposeActivate;
  v18 = [*(*(*(a1 + 72) + 8) + 40) fs_containerIdentifier];
  v19 = [FSTaskDescription taskDescriptionWithID:v16 state:0 purpose:v17 error:0 bundleID:v33 extensionID:v18 resource:v9];

  v20 = *(a1 + 32);
  v21 = *(a1 + 104);
  v38 = *(a1 + 88);
  v39 = v21;
  v22 = [v20 getInitiatorBundleIDForToken:&v38];
  [v19 setTaskInitiatorID:v22];

  v23 = *(a1 + 32);
  v24 = *(a1 + 104);
  v38 = *(a1 + 88);
  v39 = v24;
  v25 = [v23 getInitiatorSigningIDForToken:&v38];
  [v19 setTaskSigningID:v25];

  v26 = [gSettings tasks];
  objc_sync_enter(v26);
  v27 = [gSettings tasks];
  [v27 setObject:v19 forKey:*(*(*(a1 + 64) + 8) + 40)];

  objc_sync_exit(v26);
  [gSettings updateWorkTransaction];
  v28 = *(*(*(a1 + 80) + 8) + 40);
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10001E2E8;
  v34[3] = &unk_100061590;
  v37 = *(a1 + 56);
  v35 = v19;
  v36 = v14;
  v31 = v14;
  v32 = v19;
  [v15 activateVolume:v29 resource:v28 options:v30 replyHandler:v34];
}

void sub_10001E27C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10001E2E8(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = *(a1 + 32);
  if (v6)
  {
    [gSettings removeReferencesToTask:*(*(*(a1 + 56) + 8) + 40)];
  }

  else
  {
    v5 = [*(a1 + 32) updatedDescriptionInState:3 error:0];

    [fskitdExtensionClient postTaskStatusUpdate:v5];
    v4 = v5;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001E608(uint64_t a1)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100016264;
  v42 = sub_100016274;
  v43 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100016264;
  v36 = sub_100016274;
  v37 = fs_errorForPOSIXError();
  v2 = [*(a1 + 32) canStartTask:v39[5] resource:*(a1 + 40)];
  if (v2)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = v39[5];
    v7 = *(a1 + 96);
    *buf = *(a1 + 80);
    *&buf[16] = v7;
    v8 = [FSAuditToken tokenWithToken:buf];
    v9 = [*(a1 + 32) ourConn];
    v10 = v9;
    if (v9)
    {
      [v9 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v11 = [FSAuditToken tokenWithToken:buf];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001E9E8;
    v23[3] = &unk_1000616D0;
    v28 = &v32;
    v29 = &v38;
    v12 = *(a1 + 96);
    v30 = *(a1 + 80);
    v31 = v12;
    v22 = *(a1 + 32);
    v13 = *(&v22 + 1);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v24 = v22;
    v25 = v16;
    v26 = *(a1 + 64);
    v27 = 0;
    v2 = [v3 applyResource:v4 targetBundle:v5 instanceID:v6 initiatorAuditToken:v8 authorizingAuditToken:v11 usingBlock:v23];

    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v39[5];
      v19 = v33[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _checkResource:usingBundle:options:auditToken:connection:replyHandler:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      *&buf[24] = v2;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), check resource error (%@)", buf, 0x2Au);
    }

    if (v2)
    {
      v20 = 0;
      v21 = *(a1 + 72);
    }

    else
    {
      v2 = v33[5];
      v21 = *(a1 + 72);
      if (v2)
      {
        v20 = 0;
      }

      else
      {
        v20 = v39[5];
      }
    }

    (*(v21 + 16))(v21, v20, v2);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
}

void sub_10001E9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_10001E9E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v48 = a2;
  v9 = a3;
  v49 = a4;
  v10 = a5;
  [v9 setState:2];
  v11 = [gSettings resourceManager];
  objc_sync_enter(v11);
  v12 = [gSettings resourceManager];
  [v12 addResource:v9];

  objc_sync_exit(v11);
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10001F020;
  v66[3] = &unk_100061608;
  v68 = *(a1 + 80);
  v13 = v10;
  v67 = v13;
  v46 = [v49 remoteObjectProxyWithErrorHandler:v66];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10001F0A8;
  v63[3] = &unk_100061608;
  v65 = *(a1 + 80);
  v14 = v13;
  v64 = v14;
  v47 = [v49 synchronousRemoteObjectProxyWithErrorHandler:v63];
  v15 = *(*(*(a1 + 88) + 8) + 40);
  v16 = FSTaskPurposeCheck;
  v17 = [v15 fs_containerIdentifier];
  v18 = [FSTaskDescription taskDescriptionWithID:v15 state:0 purpose:v16 error:0 bundleID:v48 extensionID:v17 resource:v9];

  [v18 setTerminateExtensionWhenFinished:1];
  v19 = *(a1 + 32);
  v20 = *(a1 + 112);
  *buf = *(a1 + 96);
  *&buf[16] = v20;
  v21 = [v19 getInitiatorBundleIDForToken:buf];
  [v18 setTaskInitiatorID:v21];

  v22 = *(a1 + 32);
  v23 = *(a1 + 112);
  *buf = *(a1 + 96);
  *&buf[16] = v23;
  v24 = [v22 getInitiatorSigningIDForToken:buf];
  [v18 setTaskSigningID:v24];

  v25 = [gSettings tasks];
  objc_sync_enter(v25);
  v26 = [gSettings tasks];
  [v26 setObject:v18 forKey:*(*(*(a1 + 88) + 8) + 40)];

  objc_sync_exit(v25);
  v27 = fskit_std_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = *(*(*(a1 + 88) + 8) + 40);
    v29 = [v9 getResourceID];
    *buf = 136315650;
    *&buf[4] = "[fskitdXPCServer _checkResource:usingBundle:options:auditToken:connection:replyHandler:]_block_invoke_2";
    *&buf[12] = 2112;
    *&buf[14] = v28;
    *&buf[22] = 2112;
    *&buf[24] = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s: About to start check task UUID (%@) on resource (%@)", buf, 0x20u);
  }

  [gSettings updateWorkTransaction];
  v30 = fskit_std_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_100026F54(v9);
  }

  v31 = objc_opt_new();
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10001F130;
  v62[3] = &unk_100061658;
  v62[4] = *(a1 + 80);
  [v47 loadResource:v9 options:v31 replyHandler:v62];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10001F270;
  v54[3] = &unk_100061680;
  v32 = *(a1 + 40);
  v54[4] = *(a1 + 32);
  v59 = *(a1 + 80);
  v55 = v32;
  v56 = *(a1 + 48);
  v33 = *(a1 + 112);
  v60 = *(a1 + 96);
  v61 = v33;
  v34 = v14;
  v58 = v34;
  v35 = v9;
  v57 = v35;
  v36 = objc_retainBlock(v54);
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v37 = *(*(*(a1 + 88) + 8) + 40);
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    v40 = *(a1 + 48);
    v41 = *(a1 + 112);
    *buf = *(a1 + 96);
    *&buf[16] = v41;
    [v38 cleanupTaskAfterError:v37 resource:v39 bundleIdentifier:v40 token:buf];
    (*(v34 + 2))(v34, 0);
  }

  else
  {
    v42 = fskit_std_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      sub_100026FF0();
    }

    v44 = *(a1 + 56);
    v43 = *(a1 + 64);
    v45 = *(*(*(a1 + 88) + 8) + 40);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10001F3E8;
    v50[3] = &unk_1000616A8;
    v51 = *(a1 + 72);
    v52 = v18;
    v53 = v36;
    [v46 checkWithOptions:v44 connection:v43 taskID:v45 replyHandler:v50];
  }
}

void sub_10001F020(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_10001F0A8(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_10001F130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001F208;
    v8[3] = &unk_100061630;
    v9 = objc_alloc_init(NSMutableArray);
    v7 = v9;
    [v5 enumerateObjectsUsingBlock:v8];
  }
}

void sub_10001F208(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 volumeName];
  v3 = [v4 string];
  [v2 addObject:v3];
}

void sub_10001F270(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  if (v6)
  {
    v7 = *(*(*(a1 + 80) + 8) + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 104);
    *v15 = *(a1 + 88);
    *&v15[16] = v11;
    [v8 cleanupTaskAfterError:v7 resource:v9 bundleIdentifier:v10 token:v15];
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(*(*(a1 + 80) + 8) + 40);
      v14 = [*(a1 + 56) getResourceID];
      *v15 = 136315650;
      *&v15[4] = "[fskitdXPCServer _checkResource:usingBundle:options:auditToken:connection:replyHandler:]_block_invoke_3";
      *&v15[12] = 2112;
      *&v15[14] = v13;
      *&v15[22] = 2112;
      *&v15[24] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Check task UUID (%@) on resource (%@) is running", v15, 0x20u);
    }

    [fskitdExtensionClient postTaskStatusUpdate:v5];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10001F3E8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = *(a1 + 40);

    v7 = v6;
  }

  else
  {
    v7 = v8;
  }

  v9 = v7;
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_10001F9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 taskBundleID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 taskBundleID];
    v5 = [v6 hasPrefix:*(a1 + 40)];
  }

  return v5;
}

void sub_10001FCB4(uint64_t a1)
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100016264;
  v73 = sub_100016274;
  v74 = objc_opt_new();
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_100016264;
  v67 = sub_100016274;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_100016264;
  v61 = sub_100016274;
  v62 = fs_errorForPOSIXError();
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100016264;
  v55 = sub_100016274;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100016264;
  v49 = sub_100016274;
  v50 = 0;
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = gExtensionManager;
  v4 = *(a1 + 88);
  *buf = *(a1 + 72);
  *&buf[16] = v4;
  v5 = [FSAuditToken tokenWithToken:buf];
  v6 = *(a1 + 40);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100020330;
  v44[3] = &unk_100061540;
  v44[4] = &v45;
  v44[5] = &v63;
  v44[6] = &v51;
  [v3 existingExtensionForBundle:v2 user:v5 volume:v6 replyHandler:v44];

  if (v46[5])
  {
    goto LABEL_2;
  }

  if (v52[5])
  {
    v7 = [*(a1 + 48) canStartDeactivateTask:v70[5] resource:?];
    v8 = v46[5];
    v46[5] = v7;

    if (v46[5])
    {
      goto LABEL_2;
    }

    v9 = gExtensionManager;
    v10 = *(a1 + 88);
    *buf = *(a1 + 72);
    *&buf[16] = v10;
    v11 = [FSAuditToken tokenWithToken:buf];
    v12 = *(a1 + 40);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100020448;
    v43[3] = &unk_100061478;
    v43[4] = &v45;
    v43[5] = &v63;
    [v9 existingExtensionForBundle:v2 user:v11 volume:v12 replyHandler:v43];

    if (v46[5])
    {
LABEL_2:
      (*(*(a1 + 56) + 16))();
      goto LABEL_3;
    }

    v13 = *(a1 + 48);
    v14 = v52[5];
    v15 = *(a1 + 32);
    v16 = v64[5];
    v17 = *(a1 + 88);
    *buf = *(a1 + 72);
    *&buf[16] = v17;
    v18 = [FSAuditToken tokenWithToken:buf];
    v19 = [*(a1 + 48) ourConn];
    v20 = v19;
    if (v19)
    {
      [v19 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v24 = [FSAuditToken tokenWithToken:buf];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000204DC;
    v35[3] = &unk_100061770;
    v37 = &v57;
    v38 = &v69;
    v39 = &v63;
    v25 = *(a1 + 88);
    v41 = *(a1 + 72);
    v42 = v25;
    v34 = *(a1 + 40);
    v26 = v34.i64[0];
    v36 = vextq_s8(v34, v34, 8uLL);
    v40 = *(a1 + 64);
    v27 = [v13 applyResource:v14 usingIdentity:v15 instanceID:v16 initiatorAuditToken:v18 authorizingAuditToken:v24 usingBlock:v35];
    v28 = v46[5];
    v46[5] = v27;

    v29 = fskit_std_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = v70[5];
      v31 = v46[5];
      v32 = v58[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _deactivateVolume:usingIdentity:numericOptions:auditToken:replyHandler:]_block_invoke_5";
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      *&buf[24] = v31;
      v76 = 2112;
      v77 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), deactivate volume error (%@)", buf, 0x2Au);
    }

    if (!v46[5])
    {
      objc_storeStrong(v46 + 5, v58[5]);
      v33 = v46[5];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v21 = fskit_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000270EC((a1 + 40));
    }

    v22 = *(a1 + 56);
    v23 = fs_errorForPOSIXError();
    (*(v22 + 16))(v22, v23);
  }

LABEL_3:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
}

void sub_1000202D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_100020330(void *a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v17 instanceID];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [v17 resourceIDs];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v17 resourceIDs];
      v12 = [v11 objectAtIndexedSubscript:0];

      v13 = [gSettings resourceManager];
      v14 = [v13 getResource:v12];
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

void sub_100020448(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 instanceID];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_1000204DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000207A0;
  v39[3] = &unk_100061608;
  v41 = *(a1 + 48);
  v13 = v12;
  v40 = v13;
  v14 = [v11 remoteObjectProxyWithErrorHandler:v39];
  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = FSTaskPurposeDeactivate;
  v17 = [*(*(*(a1 + 64) + 8) + 40) fs_containerIdentifier];
  v18 = [FSTaskDescription taskDescriptionWithID:v15 state:0 purpose:v16 error:0 bundleID:v9 extensionID:v17 resource:v10];

  v19 = *(a1 + 32);
  v20 = *(a1 + 96);
  v37 = *(a1 + 80);
  v38 = v20;
  v21 = [v19 getInitiatorBundleIDForToken:&v37];
  [v18 setTaskInitiatorID:v21];

  v22 = *(a1 + 32);
  v23 = *(a1 + 96);
  v37 = *(a1 + 80);
  v38 = v23;
  v24 = [v22 getInitiatorSigningIDForToken:&v37];
  [v18 setTaskSigningID:v24];

  v25 = [gSettings tasks];
  objc_sync_enter(v25);
  v26 = [gSettings tasks];
  [v26 setObject:v18 forKey:*(*(*(a1 + 56) + 8) + 40)];

  objc_sync_exit(v25);
  [gSettings updateWorkTransaction];
  v27 = *(a1 + 40);
  v28 = *(a1 + 72);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100020828;
  v32[3] = &unk_100061748;
  v36 = *(a1 + 48);
  v33 = v18;
  v34 = v10;
  v35 = v13;
  v29 = v13;
  v30 = v10;
  v31 = v18;
  [v14 deactivateVolume:v27 numericOptions:v28 replyHandler:v32];
}

void sub_1000207A0(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_100020828(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v4 = *(a1 + 32);
  if (v8)
  {
    [gSettings removeReferencesToTask:*(*(*(a1 + 64) + 8) + 40)];
  }

  else
  {
    v5 = [*(a1 + 32) updatedDescriptionInState:3 error:0];

    [fskitdExtensionClient postTaskStatusUpdate:v5];
    [*(a1 + 40) setState:0];
    v6 = [gSettings resourceManager];
    objc_sync_enter(v6);
    v7 = [gSettings resourceManager];
    [v7 updateResource:*(a1 + 40)];

    objc_sync_exit(v6);
    v4 = v5;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100020BAC(uint64_t a1)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100016264;
  v42 = sub_100016274;
  v43 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100016264;
  v36 = sub_100016274;
  v37 = fs_errorForPOSIXError();
  v2 = [*(a1 + 32) canStartTask:v39[5] resource:*(a1 + 40)];
  if (v2)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = v39[5];
    v7 = *(a1 + 96);
    *buf = *(a1 + 80);
    *&buf[16] = v7;
    v8 = [FSAuditToken tokenWithToken:buf];
    v9 = [*(a1 + 32) ourConn];
    v10 = v9;
    if (v9)
    {
      [v9 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v11 = [FSAuditToken tokenWithToken:buf];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100020F8C;
    v23[3] = &unk_1000616D0;
    v28 = &v32;
    v29 = &v38;
    v12 = *(a1 + 96);
    v30 = *(a1 + 80);
    v31 = v12;
    v22 = *(a1 + 32);
    v13 = *(&v22 + 1);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v24 = v22;
    v25 = v16;
    v26 = *(a1 + 64);
    v27 = 0;
    v2 = [v3 applyResource:v4 targetBundle:v5 instanceID:v6 initiatorAuditToken:v8 authorizingAuditToken:v11 usingBlock:v23];

    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v39[5];
      v19 = v33[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _formatResource:usingBundle:options:auditToken:connection:replyHandler:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      *&buf[24] = v2;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), format resource error (%@)", buf, 0x2Au);
    }

    if (v2)
    {
      v20 = 0;
      v21 = *(a1 + 72);
    }

    else
    {
      v2 = v33[5];
      v21 = *(a1 + 72);
      if (v2)
      {
        v20 = 0;
      }

      else
      {
        v20 = v39[5];
      }
    }

    (*(v21 + 16))(v21, v20, v2);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
}

void sub_100020F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_100020F8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v49 = a2;
  v9 = a3;
  v50 = a4;
  v10 = a5;
  [v9 setState:3];
  v11 = [gSettings resourceManager];
  objc_sync_enter(v11);
  v12 = [gSettings resourceManager];
  [v12 addResource:v9];

  objc_sync_exit(v11);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000215F4;
  v67[3] = &unk_100061608;
  v69 = *(a1 + 80);
  v13 = v10;
  v68 = v13;
  v47 = [v50 remoteObjectProxyWithErrorHandler:v67];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10002167C;
  v64[3] = &unk_100061608;
  v66 = *(a1 + 80);
  v14 = v13;
  v65 = v14;
  v48 = [v50 synchronousRemoteObjectProxyWithErrorHandler:v64];
  v15 = *(*(*(a1 + 88) + 8) + 40);
  v16 = FSTaskPurposeFormat;
  v17 = [v15 fs_containerIdentifier];
  v18 = [FSTaskDescription taskDescriptionWithID:v15 state:0 purpose:v16 error:0 bundleID:v49 extensionID:v17 resource:v9];

  [v18 setTerminateExtensionWhenFinished:1];
  v19 = *(a1 + 32);
  v20 = *(a1 + 112);
  *buf = *(a1 + 96);
  *&buf[16] = v20;
  v21 = [v19 getInitiatorBundleIDForToken:buf];
  [v18 setTaskInitiatorID:v21];

  v22 = *(a1 + 32);
  v23 = *(a1 + 112);
  *buf = *(a1 + 96);
  *&buf[16] = v23;
  v24 = [v22 getInitiatorSigningIDForToken:buf];
  [v18 setTaskSigningID:v24];

  v25 = [gSettings tasks];
  objc_sync_enter(v25);
  v26 = [gSettings tasks];
  [v26 setObject:v18 forKey:*(*(*(a1 + 88) + 8) + 40)];

  objc_sync_exit(v25);
  v27 = fskit_std_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = *(*(*(a1 + 88) + 8) + 40);
    v29 = [v9 getResourceID];
    *buf = 136315650;
    *&buf[4] = "[fskitdXPCServer _formatResource:usingBundle:options:auditToken:connection:replyHandler:]_block_invoke_2";
    *&buf[12] = 2112;
    *&buf[14] = v28;
    *&buf[22] = 2112;
    *&buf[24] = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s: About to start format task UUID (%@) on resource (%@)", buf, 0x20u);
  }

  [gSettings updateWorkTransaction];
  v30 = fskit_std_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_100027168(v9);
  }

  v31 = objc_opt_new();
  v32 = [FSTaskOption optionWithoutValue:FSTaskParameterConstantForceLoad];
  [v31 addOption:v32];

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100021704;
  v63[3] = &unk_100061658;
  v63[4] = *(a1 + 80);
  [v48 loadResource:v9 options:v31 replyHandler:v63];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100021718;
  v55[3] = &unk_100061680;
  v33 = *(a1 + 40);
  v55[4] = *(a1 + 32);
  v60 = *(a1 + 80);
  v56 = v33;
  v57 = *(a1 + 48);
  v34 = *(a1 + 112);
  v61 = *(a1 + 96);
  v62 = v34;
  v35 = v14;
  v59 = v35;
  v36 = v9;
  v58 = v36;
  v37 = objc_retainBlock(v55);
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v38 = *(*(*(a1 + 88) + 8) + 40);
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    v42 = *(a1 + 112);
    *buf = *(a1 + 96);
    *&buf[16] = v42;
    [v39 cleanupTaskAfterError:v38 resource:v40 bundleIdentifier:v41 token:buf];
    (*(v35 + 2))(v35, 0);
  }

  else
  {
    v43 = fskit_std_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_100027204();
    }

    v45 = *(a1 + 56);
    v44 = *(a1 + 64);
    v46 = *(*(*(a1 + 88) + 8) + 40);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100021890;
    v51[3] = &unk_1000616A8;
    v52 = *(a1 + 72);
    v53 = v18;
    v54 = v37;
    [v47 formatWithOptions:v45 connection:v44 taskID:v46 replyHandler:v51];
  }
}

void sub_1000215F4(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_10002167C(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_100021718(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  if (v6)
  {
    v7 = *(*(*(a1 + 80) + 8) + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 104);
    *v15 = *(a1 + 88);
    *&v15[16] = v11;
    [v8 cleanupTaskAfterError:v7 resource:v9 bundleIdentifier:v10 token:v15];
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(*(*(a1 + 80) + 8) + 40);
      v14 = [*(a1 + 56) getResourceID];
      *v15 = 136315650;
      *&v15[4] = "[fskitdXPCServer _formatResource:usingBundle:options:auditToken:connection:replyHandler:]_block_invoke_2";
      *&v15[12] = 2112;
      *&v15[14] = v13;
      *&v15[22] = 2112;
      *&v15[24] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Format task UUID (%@) on resource (%@) is running", v15, 0x20u);
    }

    [fskitdExtensionClient postTaskStatusUpdate:v5];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100021890(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = *(a1 + 40);

    v7 = v6;
  }

  else
  {
    v7 = v8;
  }

  v9 = v7;
  (*(*(a1 + 48) + 16))();
}

void sub_100021D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100021D98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_100021E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 teamID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isSystem];
  }

  return v5;
}

void sub_1000221D4(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 fs_containerIdentifier];

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100016264;
  v73 = sub_100016274;
  v74 = objc_opt_new();
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_100016264;
  v67 = sub_100016274;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_100016264;
  v61 = sub_100016274;
  v62 = fs_errorForPOSIXError();
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100016264;
  v55 = sub_100016274;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100016264;
  v49 = sub_100016274;
  v50 = 0;
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = gExtensionManager;
  v6 = *(a1 + 88);
  *buf = *(a1 + 72);
  *&buf[16] = v6;
  v7 = [FSAuditToken tokenWithToken:buf];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000227E8;
  v44[3] = &unk_100061478;
  v44[4] = &v45;
  v44[5] = &v63;
  [v5 extensionForBundle:v4 user:v7 instance:v3 replyHandler:v44];

  if (v46[5] || ([*(a1 + 40) canStartTask:v70[5] resource:*(a1 + 48)], v8 = objc_claimAutoreleasedReturnValue(), v9 = v46[5], v46[5] = v8, v9, v46[5]))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [v64[5] instanceID];
    v14 = *(a1 + 88);
    *buf = *(a1 + 72);
    *&buf[16] = v14;
    v15 = [FSAuditToken tokenWithToken:buf];
    v16 = [*(a1 + 40) ourConn];
    v17 = v16;
    if (v16)
    {
      [v16 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v18 = [FSAuditToken tokenWithToken:buf];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100022868;
    v33 = &unk_100061838;
    v39 = &v69;
    v40 = &v63;
    v19 = *(a1 + 40);
    v38 = &v57;
    v34 = v19;
    v20 = *(a1 + 88);
    v42 = *(a1 + 72);
    v43 = v20;
    v35 = *(a1 + 56);
    v41 = &v51;
    v36 = v4;
    v37 = *(a1 + 48);
    v21 = [v11 applyResource:v10 usingIdentity:v12 instanceID:v13 initiatorAuditToken:v15 authorizingAuditToken:v18 usingBlock:&v30];
    v22 = v46[5];
    v46[5] = v21;

    if (v58[5])
    {
      v23 = [v64[5] resourceIDs];
      [v23 enumerateObjectsUsingBlock:&stru_100061858];

      [v64[5] terminate];
    }

    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v70[5];
      v26 = v46[5];
      v27 = v58[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _loadResource:usingIdentity:options:auditToken:replyHandler:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      *&buf[24] = v26;
      v76 = 2112;
      v77 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), load resource error (%@)", buf, 0x2Au);
    }

    if (v46[5])
    {
      v28 = 0;
      v29 = *(a1 + 64);
    }

    else
    {
      objc_storeStrong(v46 + 5, v58[5]);
      v29 = *(a1 + 64);
      if (v46[5])
      {
        v28 = 0;
      }

      else
      {
        v28 = v52[5];
      }
    }

    (*(v29 + 16))(v29, v28);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
}

void sub_10002278C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1000227E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100022868(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [v9 setState:4];
  v12 = [gSettings resourceManager];
  objc_sync_enter(v12);
  v13 = [gSettings resourceManager];
  [v13 addResource:v9];

  objc_sync_exit(v12);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100022BB0;
  v44[3] = &unk_100061608;
  v46 = *(a1 + 64);
  v14 = v11;
  v45 = v14;
  v33 = v10;
  v15 = [v10 remoteObjectProxyWithErrorHandler:v44];
  v16 = *(*(*(a1 + 72) + 8) + 40);
  v17 = FSTaskPurposeLoad;
  v18 = [*(*(*(a1 + 80) + 8) + 40) instanceID];
  v19 = [v18 fs_containerIdentifier];
  v20 = [FSTaskDescription taskDescriptionWithID:v16 state:0 purpose:v17 error:0 bundleID:v34 extensionID:v19 resource:v9];

  v21 = *(a1 + 32);
  v22 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v22;
  v23 = [v21 getInitiatorBundleIDForToken:&v42];
  [v20 setTaskInitiatorID:v23];

  v24 = *(a1 + 32);
  v25 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v25;
  v26 = [v24 getInitiatorSigningIDForToken:&v42];
  [v20 setTaskSigningID:v26];

  v27 = [gSettings tasks];
  objc_sync_enter(v27);
  v28 = [gSettings tasks];
  [v28 setObject:v20 forKey:*(*(*(a1 + 72) + 8) + 40)];

  objc_sync_exit(v27);
  [gSettings updateWorkTransaction];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100022C38;
  v35[3] = &unk_100061810;
  v36 = v20;
  v29 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
  v40 = *(a1 + 64);
  v41 = v29;
  v30 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 56);
  v39 = v14;
  v31 = v14;
  v32 = v20;
  [v15 loadResource:v9 options:v30 replyHandler:v35];
}

void sub_100022BB0(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_100022C38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v7 = *(a1 + 32);
  if (v6)
  {
    [gSettings removeReferencesToTask:*(*(*(a1 + 72) + 8) + 40)];
  }

  else
  {
    v8 = [*(a1 + 32) updatedDescriptionInState:3 error:0];

    [fskitdExtensionClient postTaskStatusUpdate:v8];
    v9 = [v5 copy];
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(*(*(a1 + 88) + 8) + 40) errorFromStartingProc];
    if (v12)
    {
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *buf = 136315650;
        v20 = "[fskitdXPCServer _loadResource:usingIdentity:options:auditToken:replyHandler:]_block_invoke_5";
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Can't find instance of bundleID %@ err %@", buf, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
    }

    v15 = *(a1 + 88);
    if (*(*(v15 + 8) + 40))
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100022E9C;
      v18[3] = &unk_1000617E8;
      v18[4] = v15;
      [v5 enumerateObjectsUsingBlock:v18];
      v16 = *(*(*(a1 + 88) + 8) + 40);
      v17 = [*(a1 + 48) getResourceID];
      [v16 addResourceID:v17];
    }

    v7 = v8;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100022E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000273E8(v3);
  }

  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [v3 volumeID];
  [v5 addVolumeID:v6];
}

void sub_100022F28(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = gSettings;
  v5 = a2;
  v6 = [v4 resourceManager];
  v7 = [v6 getResource:v5];

  [fskitdExtensionClient closeResource:v7 andRevoke:1];
}

void sub_100023220(uint64_t a1)
{
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100016264;
  v55 = sub_100016274;
  v56 = objc_opt_new();
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100016264;
  v49 = sub_100016274;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100016264;
  v43 = sub_100016274;
  v44 = fs_errorForPOSIXError();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100016264;
  v37 = sub_100016274;
  v38 = [*(a1 + 32) canStartProbeTask:v52[5] resource:*(a1 + 40)];
  if (v34[5])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = +[FSModuleHost defaultInstanceUUID];
    v6 = *(a1 + 80);
    *buf = *(a1 + 64);
    *&buf[16] = v6;
    v7 = [FSAuditToken tokenWithToken:buf];
    v8 = [*(a1 + 32) ourConn];
    v9 = v8;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v10 = [FSAuditToken tokenWithToken:buf];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v11 = *(a1 + 80);
    v31 = *(a1 + 64);
    v30[2] = sub_10002374C;
    v30[3] = &unk_1000618D0;
    v30[4] = *(a1 + 32);
    v30[5] = &v39;
    v32 = v11;
    v30[6] = &v51;
    v30[7] = &v45;
    v12 = [v2 applyResource:v3 targetBundle:v4 instanceID:v5 initiatorAuditToken:v7 authorizingAuditToken:v10 usingBlock:v30];
    v13 = v34[5];
    v34[5] = v12;

    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v52[5];
      v16 = v34[5];
      v17 = v40[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _probeResource:usingBundle:auditToken:replyHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      *&buf[24] = v16;
      v58 = 2112;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), probe resource error (%@)", buf, 0x2Au);
    }

    if (!v34[5])
    {
      objc_storeStrong(v34 + 5, v40[5]);
      if (!v34[5])
      {
        v18 = gExtensionManager;
        v19 = *(a1 + 48);
        v20 = *(a1 + 80);
        *buf = *(a1 + 64);
        *&buf[16] = v20;
        v21 = [FSAuditToken tokenWithToken:buf];
        v22 = +[FSModuleHost defaultInstanceUUID];
        v23 = [v22 fs_containerIdentifier];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100023C70;
        v26[3] = &unk_1000618F8;
        v28 = &v33;
        v27 = *(a1 + 40);
        v29 = &v51;
        [v18 existingExtensionForBundle:v19 user:v21 instance:v23 replyHandler:v26];

        v24 = v34[5];
      }
    }

    v25 = v46[5];
    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
}

void sub_1000236F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10002374C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = a2;
  v9 = a3;
  v32 = a4;
  v10 = a5;
  [v9 setState:1];
  v11 = [gSettings resourceManager];
  objc_sync_enter(v11);
  v12 = [gSettings resourceManager];
  [v12 addResource:v9];

  objc_sync_exit(v11);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100016264;
  v47 = sub_100016274;
  v48 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100023AD8;
  v40[3] = &unk_100061608;
  v42 = *(a1 + 40);
  v13 = v10;
  v41 = v13;
  v14 = [v32 remoteObjectProxyWithErrorHandler:v40];
  v15 = *(*(*(a1 + 48) + 8) + 40);
  v16 = FSTaskPurposeProbe;
  v17 = +[FSModuleHost defaultInstanceUUID];
  v18 = [v17 fs_containerIdentifier];
  v19 = [FSTaskDescription taskDescriptionWithID:v15 state:0 purpose:v16 error:0 bundleID:v31 extensionID:v18 resource:v9];
  v20 = v44[5];
  v44[5] = v19;

  v21 = *(a1 + 32);
  v22 = *(a1 + 80);
  v38 = *(a1 + 64);
  v39 = v22;
  v23 = [v21 getInitiatorBundleIDForToken:&v38];
  [v44[5] setTaskInitiatorID:v23];

  v24 = *(a1 + 32);
  v25 = *(a1 + 80);
  v38 = *(a1 + 64);
  v39 = v25;
  v26 = [v24 getInitiatorSigningIDForToken:&v38];
  [v44[5] setTaskSigningID:v26];

  v27 = [gSettings tasks];
  objc_sync_enter(v27);
  v28 = [gSettings tasks];
  [v28 setObject:v44[5] forKey:*(*(*(a1 + 48) + 8) + 40)];

  objc_sync_exit(v27);
  [gSettings updateWorkTransaction];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100023B60;
  v33[3] = &unk_1000618A8;
  v35 = *(a1 + 40);
  v29 = *(a1 + 56);
  v36 = &v43;
  v37 = v29;
  v30 = v13;
  v34 = v30;
  [v14 probeResource:v9 replyHandler:v33];

  _Block_object_dispose(&v43, 8);
}

void sub_100023AA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100023AD8(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_100023B60(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  if (v12)
  {
    [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  }

  else
  {
    v6 = [*(*(a1[7] + 8) + 40) updatedDescriptionInState:3 error:0];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [fskitdExtensionClient postTaskStatusUpdate:*(*(a1[7] + 8) + 40)];
  }

  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  (*(a1[4] + 16))();
}

void sub_100023C70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100027480(a1);
    }

    v8 = [*(a1 + 32) getResourceID];
    [v5 removeResourceID:v8];

    [v5 removeTaskID:*(*(*(a1 + 48) + 8) + 40)];
  }
}

void sub_100023FDC(uint64_t a1)
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_100016264;
  v59 = sub_100016274;
  v60 = objc_opt_new();
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100016264;
  v53 = sub_100016274;
  v54 = fs_errorForPOSIXError();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100016264;
  v47 = sub_100016274;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100016264;
  v41 = sub_100016274;
  v42 = 0;
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = gExtensionManager;
  v4 = *(a1 + 88);
  *buf = *(a1 + 72);
  *&buf[16] = v4;
  v5 = [FSAuditToken tokenWithToken:buf];
  v6 = *(a1 + 40);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000244FC;
  v36[3] = &unk_100061478;
  v36[4] = &v43;
  v36[5] = &v37;
  [v3 existingExtensionForBundle:v2 user:v5 resource:v6 replyHandler:v36];

  if (v44[5] || ([*(a1 + 48) canStartUnloadTask:v56[5] resource:*(a1 + 40)], v7 = objc_claimAutoreleasedReturnValue(), v8 = v44[5], v44[5] = v7, v8, v44[5]))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = [v38[5] instanceID];
    v13 = *(a1 + 88);
    *buf = *(a1 + 72);
    *&buf[16] = v13;
    v14 = [FSAuditToken tokenWithToken:buf];
    v15 = [*(a1 + 48) ourConn];
    v16 = v15;
    if (v15)
    {
      [v15 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v17 = [FSAuditToken tokenWithToken:buf];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100024588;
    v29[3] = &unk_100061948;
    v32 = &v55;
    v33 = &v37;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v31 = &v49;
    v29[4] = v18;
    v20 = *(a1 + 88);
    v34 = *(a1 + 72);
    v35 = v20;
    v30 = v19;
    v21 = [v9 applyResource:v10 usingIdentity:v11 instanceID:v12 initiatorAuditToken:v14 authorizingAuditToken:v17 usingBlock:v29];
    v22 = v44[5];
    v44[5] = v21;

    v23 = fskit_std_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v56[5];
      v25 = v44[5];
      v26 = v50[5];
      *buf = 136315906;
      *&buf[4] = "[fskitdXPCServer _unloadResource:usingIdentity:options:auditToken:replyHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2112;
      *&buf[24] = v25;
      v62 = 2112;
      v63 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: Task UUID (%@), apply resource error (%@), unload resource error (%@)", buf, 0x2Au);
    }

    if (!v44[5])
    {
      objc_storeStrong(v44 + 5, v50[5]);
    }

    v27 = v38[5];
    if (v27)
    {
      [v27 terminate];
    }

    v28 = v44[5];
    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);
}

void sub_1000244AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1000244FC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_100024588(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10002485C;
  v39[3] = &unk_100061608;
  v41 = *(a1 + 48);
  v13 = v12;
  v40 = v13;
  v31 = v11;
  v14 = [v11 remoteObjectProxyWithErrorHandler:v39];
  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = FSTaskPurposeUnload;
  v17 = [*(*(*(a1 + 64) + 8) + 40) instanceID];
  v18 = [v17 fs_containerIdentifier];
  v32 = v9;
  v19 = [FSTaskDescription taskDescriptionWithID:v15 state:0 purpose:v16 error:0 bundleID:v9 extensionID:v18 resource:v10];

  v20 = *(a1 + 32);
  v21 = *(a1 + 88);
  v37 = *(a1 + 72);
  v38 = v21;
  v22 = [v20 getInitiatorBundleIDForToken:&v37];
  [v19 setTaskInitiatorID:v22];

  v23 = *(a1 + 32);
  v24 = *(a1 + 88);
  v37 = *(a1 + 72);
  v38 = v24;
  v25 = [v23 getInitiatorSigningIDForToken:&v37];
  [v19 setTaskSigningID:v25];

  v26 = [gSettings tasks];
  objc_sync_enter(v26);
  v27 = [gSettings tasks];
  [v27 setObject:v19 forKey:*(*(*(a1 + 56) + 8) + 40)];

  objc_sync_exit(v26);
  [gSettings updateWorkTransaction];
  v28 = *(a1 + 40);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000248E4;
  v33[3] = &unk_100061590;
  v36 = *(a1 + 48);
  v34 = v19;
  v35 = v13;
  v29 = v13;
  v30 = v19;
  [v14 unloadResource:v10 options:v28 replyHandler:v33];
}

void sub_10002485C(void *a1, void *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v4 = a2;
  [gSettings removeReferencesToTask:*(*(a1[6] + 8) + 40)];
  (*(a1[4] + 16))();
}

void sub_1000248E4(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = *(a1 + 32);
  if (v6)
  {
    [gSettings removeReferencesToTask:*(*(*(a1 + 56) + 8) + 40)];
  }

  else
  {
    v5 = [*(a1 + 32) updatedDescriptionInState:3 error:0];

    [fskitdExtensionClient postTaskStatusUpdate:v5];
    v4 = v5;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100024AC8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 40))
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100027598(v2);
    }

    v23 = 0u;
    v24 = 0u;
    v4 = *(*(a1 + 48) + 16);
    if (v4)
    {
      [v4 auditToken];
    }

    v5 = objc_opt_new();
    v6 = [[FSBlockDeviceResource alloc] initProxyForBSDName:*(a1 + 32)];
    v7 = [*(a1 + 48) canStartTask:v5 resource:v6];
    if (v7)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [v6 setState:2];
      v10 = [gSettings resourceManager];
      objc_sync_enter(v10);
      v11 = [gSettings resourceManager];
      [v11 addResource:v6];

      objc_sync_exit(v10);
      v12 = *(a1 + 48);
      v21 = v23;
      v22 = v24;
      v13 = [v12 getInitiatorBundleIDForToken:&v21];
      v14 = FSTaskPurposeCheck;
      v15 = [v5 fs_containerIdentifier];
      v16 = [FSTaskDescription taskDescriptionWithID:v5 state:1 purpose:v14 error:0 bundleID:v13 extensionID:v15 resource:v6];

      [v16 setTaskInitiatorID:v13];
      v17 = *(a1 + 48);
      v21 = v23;
      v22 = v24;
      v18 = [v17 getInitiatorSigningIDForToken:&v21];
      [v16 setTaskSigningID:v18];

      v19 = [gSettings tasks];
      objc_sync_enter(v19);
      v20 = [gSettings tasks];
      [v20 setObject:v16 forKey:v5];

      objc_sync_exit(v19);
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100027634();
    }

    v9 = *(a1 + 56);
    v5 = fs_errorForPOSIXError();
    (*(v9 + 16))(v9, 0, v5);
  }
}

void sub_100024E84(uint64_t *a1)
{
  v2 = [gSettings tasks];
  objc_sync_enter(v2);
  v3 = [gSettings tasks];
  v4 = [v3 objectForKey:a1[4]];

  objc_sync_exit(v2);
  if (v4)
  {
    v5 = a1[5];
    v6 = v5[2];
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    v10 = [v5 getInitiatorBundleIDForToken:v27];
    v11 = a1[5];
    v12 = v11[2];
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    v13 = [v11 getInitiatorSigningIDForToken:v27];
    v14 = [v4 taskInitiatorID];
    if ([v10 isEqualToString:v14])
    {
      v15 = [v4 taskSigningID];
      v16 = [v13 isEqualToString:v15];

      if (v16)
      {
        v9 = [v4 updatedDescriptionInState:3 error:0];

        [fskitdExtensionClient postTaskStatusUpdate:v9];
        v17 = [gSettings resourceManager];
        objc_sync_enter(v17);
        v18 = [gSettings resourceManager];
        v19 = [v9 taskResource];
        [v18 removeResource:v19];

        objc_sync_exit(v17);
        (*(a1[6] + 16))(a1[6], 0, v20, v21);
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v22 = fskit_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = [v4 taskInitiatorID];
      v26 = [v4 taskSigningID];
      LODWORD(v27[0]) = 136316162;
      *(v27 + 4) = "[fskitdXPCServer doneFSCKWithTask:replyHandler:]_block_invoke";
      WORD6(v27[0]) = 2112;
      *(v27 + 14) = v10;
      WORD3(v27[1]) = 2112;
      *(&v27[1] + 1) = v13;
      v28 = 2112;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Can't mark task as done, the initator (%@:%@) isn't the same initator of the task (%@:%@)", v27, 0x34u);
    }

    v23 = a1[6];
    v24 = fs_errorForPOSIXError();
    (*(v23 + 16))(v23, v24);

    v9 = v4;
    goto LABEL_18;
  }

  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000276B4(a1 + 4);
  }

  v8 = a1[6];
  v9 = fs_errorForPOSIXError();
  (*(v8 + 16))(v8, v9);
LABEL_19:
}

void sub_100025390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025400(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_10002541C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_100025444@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

uint64_t *sub_100025454@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100025474(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t sub_1000254A8(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  *(a2 + 22) = 1024;
  *(a2 + 24) = a3;
  return result;
}

void sub_100025500()
{
  sub_1000037F4();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002553C(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000255AC(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002561C(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002568C()
{
  sub_1000037F4();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000256C8()
{
  sub_100003800();
  v3 = 2112;
  v4 = v0;
  sub_100025474(&_mh_execute_header, v0, v1, "Created domain for volname %@, displayName %@", v2);
}

void sub_100025740()
{
  sub_100003800();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "ReallyMountVolume:connect mp for volume:%@ how: 0x%08x", v2, 0x12u);
}

void sub_1000257C4()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100025834(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000258A4()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100025954()
{
  sub_100003800();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000259C4()
{
  sub_100003800();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100025A34(uint64_t *a1)
{
  sub_100025454(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_10000381C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100025AA4()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100025AE0()
{
  sub_1000254F0();
  v2 = *(*v1 + 40);
  *v3 = 138543618;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2114;
  *(v3 + 14) = v2;
  sub_100025490();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100025B44(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 attributes];
  sub_1000254C8();
  sub_100013DDC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100025BFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100025430();
  sub_10000381C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100025C7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100025430();
  sub_10000381C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100025CFC(void *a1, NSObject *a2)
{
  v3 = [a1 bundleIdentifier];
  v4[0] = 136315394;
  sub_10000FE24();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Extension (%@) supported scheme isn't an array, resource scheme isn't supported", v4, 0x16u);
}

void sub_100025D9C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 bundleIdentifier];
  v6 = [a2 getResourceID];
  v7[0] = 136315650;
  sub_1000254C8();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: URL scheme is nil, extension (%@) doesn't support this resource (%@) scheme", v7, 0x20u);
}

void sub_100025E5C()
{
  sub_10002549C();
  *v1 = 136315394;
  sub_10002541C(v2, v1, "[fskitdXPCServer getRealResource:auditToken:reply:]");
  sub_100025474(&_mh_execute_header, v3, v4, "%s: Recieved resource (%@) is a 'real' resource, returning it.", v5);
}

void sub_100025F2C()
{
  sub_10002549C();
  *v1 = 136315394;
  sub_10002541C(v2, v1, "[fskitdXPCServer getRealResource:auditToken:reply:]");
  sub_100025474(&_mh_execute_header, v3, v4, "%s: Updating resource in resource manager %@", v5);
}

void sub_100025F7C(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "applyResource starting with resource %@ kind %ld", buf, 0x16u);
}

void sub_100025FD4()
{
  sub_1000254F0();
  *v1 = 136315650;
  sub_100025400(v2, v3, v1);
  sub_100025490();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10002602C()
{
  sub_1000254F0();
  *v1 = 136315650;
  sub_100025400(v2, v3, v1);
  sub_100025490();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100026084()
{
  sub_10002549C();
  *v1 = 136315394;
  sub_10002541C(v2, v1, "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]");
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Can't get the real resource of %@", v4, 0x16u);
}

void sub_1000260E0()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002615C()
{
  sub_10002549C();
  *v1 = 136315650;
  sub_1000254A8(v2, v1, v3);
  sub_100025490();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1000261B8()
{
  sub_10002549C();
  *v1 = 136315650;
  sub_1000254A8(v2, v1, v3);
  sub_100025490();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100026214()
{
  sub_10002549C();
  *v1 = 136315394;
  sub_10002541C(v2, v1, "[fskitdXPCServer canStartUnloadTask:resource:]");
  sub_100025474(&_mh_execute_header, v3, v4, "%s:%@: Found the resource to unload", v5);
}

void sub_100026264()
{
  sub_100025460();
  *v2 = 136315650;
  sub_100025400(v3, v4, v2);
  sub_100025490();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000262C0()
{
  sub_10000FE24();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002633C()
{
  sub_10000FE24();
  sub_10000381C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026540()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000265BC()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000266B8()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026734()
{
  sub_100025460();
  *v2 = 136315650;
  sub_100025400(v3, v4, v2);
  sub_100025490();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100026790()
{
  sub_10002549C();
  *v1 = 136315394;
  sub_10002541C(v2, v1, "[fskitdXPCServer canStartActivateTask:resource:]");
  sub_100025474(&_mh_execute_header, v3, v4, "%s:%@: Found the resource to activate", v5);
}

void sub_1000267E0()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002685C()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000268D8()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026954()
{
  sub_100025460();
  *v2 = 136315650;
  sub_100025400(v3, v4, v2);
  sub_100025490();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000269B0()
{
  sub_10002549C();
  *v1 = 136315394;
  sub_10002541C(v2, v1, "[fskitdXPCServer canStartDeactivateTask:resource:]");
  sub_100025474(&_mh_execute_header, v3, v4, "%s:%@: Found the resource to activate", v5);
}

void sub_100026A00()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026A7C()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026AF8()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026B74()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026BF0()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026C6C()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026CE8()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026D64()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026DE0()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026E5C()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026ED8(uint64_t *a1)
{
  sub_100025454(a1, __stack_chk_guard);
  sub_100025430();
  sub_10000381C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100026F54(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100027070()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000270EC(uint64_t *a1)
{
  sub_100025454(a1, __stack_chk_guard);
  sub_100025430();
  sub_10000381C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100027168(void *a1)
{
  v1 = [a1 getResourceID];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100027284()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000272C0(uint64_t a1)
{
  sub_100025444(a1, __stack_chk_guard);
  sub_1000254E4();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100027330()
{
  sub_1000037F4();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002736C()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000273E8(void *a1)
{
  v1 = [a1 volumeID];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100027480(uint64_t a1)
{
  v1 = [*(a1 + 32) getResourceID];
  sub_10000FE24();
  sub_100013DDC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002751C()
{
  sub_10000FE24();
  sub_1000037E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100027598(uint64_t *a1)
{
  sub_100025454(a1, __stack_chk_guard);
  v2 = *v1;
  v5 = 136315650;
  v6 = "[fskitdXPCServer startFSCKWithDevice:volumes:replyHandler:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v2;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s:start:deviceName(%@):volumes(%@)", &v5, 0x20u);
}

void sub_1000276B4(uint64_t *a1)
{
  sub_100025454(a1, __stack_chk_guard);
  sub_100025430();
  sub_1000037E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100027A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100027AB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100027AD0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100027FC0(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100027B54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002802C(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setConnected:completionHandler: returned %@", &v15, 0xCu);
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v3;
  v14 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100027F48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100028098(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000291F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_100029218(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [v14 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
  v8 = [v7 isEqualToString:a1[4]];

  v9 = [v14 objectForKeyedSubscript:LiveFSMounterMountedOnKey];
  if ([v9 isEqualToString:a1[5]])
  {
    goto LABEL_4;
  }

  v10 = [v14 objectForKeyedSubscript:LiveFSMounterMountIDKey];
  if ([v10 isEqualToNumber:a1[6]])
  {
LABEL_3:

LABEL_4:
LABEL_5:
    *(*(a1[9] + 8) + 24) = a3;
    *a4 = 1;
    goto LABEL_6;
  }

  if (v8)
  {
    v11 = [v14 objectForKeyedSubscript:LiveFSMounterDomainStorageKey];
    if ([v11 isEqualToString:a1[7]])
    {

      goto LABEL_3;
    }

    v12 = [v14 objectForKeyedSubscript:LiveFSMounterVolumeNameKey];
    v13 = [v12 isEqualToString:a1[8]];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

LABEL_6:
}

void sub_1000295F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 96), 8);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_100029620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100029638(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v8 = [v12 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    v10 = [v12 objectForKeyedSubscript:LiveFSMounterVolumeNameKey];
    v11 = [v10 isEqualToString:a1[5]];

    if (v11)
    {
      *(*(a1[6] + 8) + 24) = a3;
      objc_storeStrong((*(a1[7] + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_1000298B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_1000298D8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
  if ([v7 isEqualToString:a1[4]])
  {
    v8 = [v10 objectForKeyedSubscript:LiveFSMounterVolumeNameKey];
    v9 = [v8 isEqualToString:a1[5]];

    if (v9)
    {
      *(*(a1[6] + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else
  {
  }
}

uint64_t createLIFSfh(int a1, id a2, _OWORD *a3)
{
  v6 = a2;
  v7 = [a2 UTF8String];
  v8 = v7;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  if (a1 || *v7 != 47)
  {
    v9 = strlen(v7);
    memcpy(a3 + 4, v8, v9);
  }

  else
  {
    v11 = 0;
    sscanf(v7 + 1, "%x", &v11);
    *(a3 + 1) = v11;
    a1 = -1;
  }

  *a3 = a1;
  return 0;
}

id lifs_to_livefh(unsigned int *a1, _DWORD *a2, void *a3, int *a4, uint64_t a5)
{
  *a4 = 0;
  v9 = *a1;
  *a2 = v9;
  v10 = v9;
  if (v9 == -1)
  {
    v10 = a1[1];
    *a2 = v10;
  }

  v11 = [theMountTable lookup:v10];
  v12 = v11;
  *a3 = v12;
  *a4 = 70;
  if (!v12)
  {
    v13 = 0;
    goto LABEL_7;
  }

  if ([v11 is_killing_io])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 5;
LABEL_17:
    *a4 = v16;
    goto LABEL_18;
  }

  if (v9 != -1)
  {
    v22 = 0;
    v17 = [v11 ensureConnected:0 status:&v22];
    v13 = v22;
    if (v17)
    {
      *a4 = 0;
      v15 = [NSString stringWithUTF8String:a1 + 1];
      v14 = 0;
      goto LABEL_18;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000371AC();
    }

    v14 = 0;
    v15 = 0;
    v16 = 57;
    goto LABEL_17;
  }

  v23 = 0;
  v18 = [v11 ensureConnected:a5 status:&v23];
  v19 = v23;
  v13 = v19;
  if (v18)
  {
    v20 = [v11 rootLIFileHandle];
    if (v20)
    {
      *a4 = 0;
      v14 = v20;
      v15 = v14;
      goto LABEL_18;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100037224();
    }

    v14 = 0;
    v15 = 0;
    v16 = 70;
    goto LABEL_17;
  }

  if (v19)
  {
LABEL_7:
    v14 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 0;
  *a4 = 0;
LABEL_18:

  return v15;
}

uint64_t lifs_mount_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, int a6, unsigned int *a7)
{
  v32 = 0u;
  memset(v33, 0, 496);
  v12 = [NSString stringWithUTF8String:?];
  v13 = [NSString stringWithUTF8String:a4];
  v31 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30[0] = 0;
  if (a6)
  {
    v26 = 0;
    v14 = lifs_to_livefh(a7, &v31, &v26, v30, 0);
    v15 = v26;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000372E0();
    }

    v16 = 0;
    v17 = 22;
    goto LABEL_19;
  }

  v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if ((a5 & 0x400) != 0)
  {
    v21 = v12;
    if (v20)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "mounting detached lifs mount", buf, 2u);
      v21 = v12;
    }
  }

  else
  {
    v21 = v13;
    if (v20)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "mounting lifs mount", buf, 2u);
      v21 = v13;
    }
  }

  v15 = [theMountTable lookupByPath:v21];
  v14 = 0;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (([v15 is_connected] & 1) == 0)
  {
    v16 = [v15 connect];
    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100037268();
      }

      v17 = 61;
LABEL_19:
      v19 = 0;
      v18 = 0;
      *(v28 + 6) = v17;
      goto LABEL_22;
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002A2AC;
  v25[3] = &unk_1000614C8;
  v25[4] = &v27;
  v18 = [v15 fsSynchObjWithErrorHandler:v25];
  if (v18)
  {
    v19 = [v15 rootLIFileHandle];
    createLIFSfh([v15 midx], v19, v33);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002A308;
    v24[3] = &unk_100061A60;
    v24[4] = &v27;
    v24[5] = &v32;
    [v18 fileAttributes:v19 requestID:-1 reply:v24];
  }

  else
  {
    v19 = 0;
  }

  v16 = 0;
LABEL_22:
  v22 = *(v28 + 6);
  if (v22)
  {
    memset(buf, 0, 512);
    sub_10002A3C0(a2, v22, 2, buf);
  }

  else
  {
    sub_10002A3C0(a2, 0, 25, &v32);
  }

  _Block_object_dispose(&v27, 8);

  return 0;
}

void sub_10002A28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A2AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100037324();
  }

  *(*(*(a1 + 32) + 8) + 24) = 22;
}

void sub_10002A308(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!a2)
  {
    if (v5)
    {
      v20 = v5;
      v6 = [v5 length] >= 0xB8;
      v5 = v20;
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = v20;
        v9 = [v20 bytes];
        v10 = v9[3];
        v12 = *v9;
        v11 = v9[1];
        *(v7 + 112) = v9[2];
        *(v7 + 128) = v10;
        *(v7 + 80) = v12;
        *(v7 + 96) = v11;
        v13 = v9[7];
        v15 = v9[4];
        v14 = v9[5];
        *(v7 + 176) = v9[6];
        *(v7 + 192) = v13;
        *(v7 + 144) = v15;
        *(v7 + 160) = v14;
        v17 = v9[9];
        v16 = v9[10];
        v18 = *(v9 + 22);
        v19 = v9[8];
        v5 = v20;
        *(v7 + 256) = v18;
        *(v7 + 224) = v17;
        *(v7 + 240) = v16;
        *(v7 + 208) = v19;
      }
    }
  }
}

void sub_10002A3C0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  *a4 = a1;
  *(a4 + 2) = a2;
  v6 = [gUserClient callStructMethod:? inStruct:? inSize:? outStruct:? outStructSize:?];
  if (v6)
  {
    v7 = v6;
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a4;
      *buf = 136315906;
      v11 = "lifs_send_reply";
      v12 = 1024;
      v13 = a3;
      v14 = 2048;
      v15 = v9;
      v16 = 1024;
      v17 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Failed to send reply with selector: %u reqid: %llu status: %d", buf, 0x22u);
    }
  }
}

uint64_t lifs_unmount_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v24 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23[0] = 0;
  v19 = 0;
  v5 = lifs_to_livefh(a4, &v24, &v19, v23, 0);
  v6 = v19;
  v7 = v6;
  if (*(v21 + 6))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!v6)
    {
      v9 = livefs_std_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003739C();
      }

      goto LABEL_17;
    }
  }

  else if ([v6 currentState] == 2)
  {
    *(v21 + 6) = 0;
  }

  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v7 mnt_flags];
    v16 = [v7 is_in_unmount_method];
    v17 = [v7 is_killing_io];
    *buf = 67109632;
    *&buf[4] = v15;
    *&buf[8] = 1024;
    *&buf[10] = v16;
    *&buf[14] = 1024;
    LODWORD(v26) = v17;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Unmount callback fired flags %x, is_in_unmount %d killing %d", buf, 0x14u);
  }

  if (([v7 mnt_flags] & 0x100) != 0 && (objc_msgSend(v7, "is_in_unmount_method") & 1) == 0)
  {
    v9 = v7;
    objc_sync_enter(v9);
    if ([v9 is_in_unmount_method])
    {
      objc_sync_exit(v9);
LABEL_17:

      goto LABEL_22;
    }

    if (([v9 mnt_flags]& 0x200) != 0)
    {
      [v9 setIs_killing_io:1];
      v11 = 6;
    }

    else
    {
      v11 = 2;
    }

    [v9 setIs_in_unmount_syscall:1];
    objc_sync_exit(v9);

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002A844;
    v18[3] = &unk_100061A88;
    v18[4] = &v20;
    [fskitdXPCServer LiveMounterDoUnmountPreflight:v9 how:v11 reply:v18];
  }

LABEL_22:
  v12 = v7;
  objc_sync_enter(v12);
  if ([v12 is_in_unmount_syscall])
  {
    [v12 setIs_in_unmount_syscall:0];
  }

  objc_sync_exit(v12);

  v13 = *(v21 + 6);
  if (!v13)
  {
    v13 = -1;
    *(v21 + 6) = -1;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  sub_10002A3C0(a2, v13, 2, buf);
  _Block_object_dispose(&v20, 8);

  return 0;
}

void sub_10002A7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A844(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = livefs_std_log();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000373DC();
    }

    *(*(*(a1 + 32) + 8) + 24) = 22;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = 0;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "spontaneous unmount done with error %@ name %@", &v9, 0x16u);
    }
  }
}

uint64_t lifs_unmount2_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v15 = 0;
  v16 = 0;
  v5 = lifs_to_livefh(a4, &v16 + 1, &v15, &v16, 0);
  v6 = v15;
  v7 = v6;
  if (!v6)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003739C();
    }

    goto LABEL_7;
  }

  if (([v6 mnt_flags] & 0x100) == 0)
  {
LABEL_7:
    memset(v17, 0, 512);
    sub_10002A3C0(a2, v16, 2, v17);
    goto LABEL_8;
  }

  v8 = gLifsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AB04;
  block[3] = &unk_100061AF0;
  v12 = v7;
  v13 = a2;
  v14 = 2;
  dispatch_async(v8, block);

LABEL_8:
  return 0;
}

void sub_10002AB04(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10002ADA8;
  v15 = sub_10002ADB8;
  v16 = 0;
  if ([*(a1 + 32) isFSKitModule])
  {
    v2 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002ADC0;
    v10[3] = &unk_1000614C8;
    v10[4] = &v11;
    [v2 forgetModuleVolumeWithFlags:2 reply:v10];
  }

  else
  {
    v3 = [*(a1 + 32) providerName];
    v4 = [*(a1 + 32) volumeName];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002ADD0;
    v9[3] = &unk_1000614C8;
    v9[4] = &v11;
    [LIFSClientConnector forgetLiveFilesVolumeForProvider:v3 volume:v4 withFlags:2 handler:v9];
  }

  if (v12[5])
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v12[5];
      v7 = [*(a1 + 32) volumeName];
      sub_100037458(v6, v7, buf, v5);
    }
  }

  v8 = *(a1 + 40);
  memset(v18, 0, 512);
  sub_10002A3C0(v8, 0, 2, v18);
  [fskitdXPCServer LiveMounterDoUnmountCleanup:*(a1 + 32) how:*(a1 + 48) reply:&stru_100061AC8];
  _Block_object_dispose(&v11, 8);
}

void sub_10002AD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002ADA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002ADE0(id a1, NSError *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = livefs_std_log();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000374C0();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = 0;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "spontaneous unmount cleanup done with error %@ name %@", &v8, 0x16u);
  }
}

uint64_t lifs_statfs_send(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v18 = 0;
  v19 = 0;
  v4 = lifs_to_livefh(a3, &v19 + 1, &v18, &v19, 0);
  v5 = v18;
  v6 = v5;
  if (!v5)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000375B0(&v19 + 1);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = a2;
    v12 = 22;
    goto LABEL_10;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B164;
  v16[3] = &unk_100061B10;
  v17 = HIDWORD(v19);
  v16[4] = a2;
  v7 = [v5 fsObjWithErrorHandler:v16];
  if (!v7)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003753C(&v19 + 1);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = a2;
    v12 = 5;
LABEL_10:
    sub_10002A3C0(v11, v12, 2, &v20);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 rootLIFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002B258;
  v15[3] = &unk_100061B30;
  v15[4] = a2;
  [v8 volumeStatistics:v9 requestID:a2 reply:v15];

LABEL_11:
  return 0;
}

void sub_10002B164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100037624(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002B258(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (a2)
  {
    v7 = *(a1 + 32);
    memset(v47, 0, 512);
    v8 = v47;
    v9 = a2;
    v10 = 2;
  }

  else
  {
    if (v5 && [v5 length] >= 0x38)
    {
      v11 = [v6 bytes];
      v13 = v11[1];
      v12 = v11[2];
      v14 = *v11;
      *&v19 = *(v11 + 6);
      v17 = v13;
      v18 = v12;
      v16 = v14;
    }

    v7 = *(a1 + 32);
    v8 = &v15;
    v9 = 0;
    v10 = 3;
  }

  sub_10002A3C0(v7, v9, v10, v8);
}

uint64_t lifs_getfsattr_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v6 = lifs_to_livefh(a3, &v24 + 1, &v23, &v24, 0);
  v7 = v23;
  v8 = v7;
  if (!v7)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100037714(&v24 + 1);
    }

    v13 = v24;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v25 = 0u;
    v14 = a2;
    goto LABEL_10;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002B6C4;
  v21[3] = &unk_100061B10;
  v22 = HIDWORD(v24);
  v21[4] = a2;
  v9 = [v7 fsObjWithErrorHandler:v21];
  if (!v9)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000376A0(&v24 + 1);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v25 = 0u;
    v14 = a2;
    v13 = 5;
LABEL_10:
    sub_10002A3C0(v14, v13, 2, &v25);
    goto LABEL_11;
  }

  v10 = v9;
  [FSFileName nameWithCString:a4];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002B7B8;
  v18 = v17[3] = &unk_100061B58;
  v19 = v8;
  v20 = a2;
  v11 = v18;
  [v10 otherAttributeOf:v6 named:v11 requestID:a2 reply:v17];

LABEL_11:
  return 0;
}

void sub_10002B6C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100037788(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002B7B8(uint64_t a1, int a2, void *a3)
{
  v25 = 0u;
  v26 = 0u;
  v6 = [*(a1 + 32) data];
  v7 = [v6 bytes];

  if (!a2 && a3)
  {
    v8 = [a3 bytes];
    if (*v7 == 95)
    {
      v9 = v8;
      v10 = v7[1];
      if (v10 > 0x4E)
      {
        if (v10 == 79 || v10 == 83)
        {
          LODWORD(v23) = [a3 length];
          *&v24 = v9;
          if (*v7 == 95 && v7[1] == 83)
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

          v22 = v12;
          goto LABEL_43;
        }
      }

      else
      {
        if (v10 == 66)
        {
          if (![a3 length])
          {
            v11 = livefs_std_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_100037884(a3);
            }

            goto LABEL_41;
          }

          v22 = 0;
          LODWORD(v23) = *v9;
LABEL_43:
          v13 = *(a1 + 48);
          v14 = &v21;
          v15 = 0;
          v16 = 23;
          goto LABEL_24;
        }

        if (v10 == 78)
        {
          if ([a3 length] <= 7)
          {
            v11 = livefs_std_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_100037908(a3);
            }

LABEL_41:
            a2 = 22;
LABEL_22:

            goto LABEL_23;
          }

          v22 = 1;
          v17 = *v9;
          v23 = *v9;
          if (([*(a1 + 40) mnt_flags] & 0x800) != 0)
          {
            v18 = [*(a1 + 32) data];
            if ([v18 length] == 11)
            {
              v20 = *v7 != 0x6C66746E6D5F4E5FLL || *(v7 + 3) != 0x7367616C66746E6DLL;

              if (!v20)
              {
                v23 = v17 | 1;
              }
            }

            else
            {
            }
          }

          goto LABEL_43;
        }
      }
    }

    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003798C();
    }

    a2 = 45;
    goto LABEL_22;
  }

  if (!a2)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100037804();
    }

    a2 = 96;
    goto LABEL_22;
  }

LABEL_23:
  v13 = *(a1 + 48);
  memset(v27, 0, 512);
  v14 = v27;
  v15 = a2;
  v16 = 2;
LABEL_24:
  sub_10002A3C0(v13, v15, v16, v14);
}

uint64_t lifs_setfsattr_send(uint64_t a1, uint64_t a2, unsigned int *a3, const char *a4, const char *a5, unsigned int a6)
{
  v42 = 0;
  v43 = 0;
  v10 = lifs_to_livefh(a3, &v43 + 1, &v42, &v43, 0);
  v11 = v42;
  v12 = v11;
  if (v11)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10002BFF0;
    v40[3] = &unk_100061B10;
    v41 = HIDWORD(v43);
    v40[4] = a2;
    v13 = [v11 fsObjWithErrorHandler:v40];
    if (v13)
    {
      v14 = v13;
      v15 = strcmp("_O_f_preallocate", a4) == 0;
      v16 = strcmp("_S_f_vol_name", a4);
      v17 = v16 == 0;
      v18 = a6;
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = [[NSString alloc] initWithBytes:a5 length:strnlen(a5 encoding:{a6), 4}];
        if (!v19)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          sub_10002A3C0(a2, 22, 2, &v44);
          goto LABEL_21;
        }
      }

      v33 = v19;
      v24 = v17;
      v25 = v10;
      v26 = [NSData dataWithBytes:a5 length:v18];
      v27 = [FSFileName nameWithCString:a4];
      v28 = [v27 string];
      if ([v28 isEqual:@"_N_SYNC"])
      {
        v29 = *a5;

        if ((v29 & 2) != 0)
        {
          v30 = livefs_std_log();
          v10 = v25;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            sub_100037A0C(v30);
          }

          [v14 setOtherAttributeOf:v25 named:v27 value:v26 requestID:a2 reply:&stru_100061B98];
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          sub_10002A3C0(a2, 0, 2, &v44);
          v31 = v33;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10002C0E8;
      v34[3] = &unk_100061C08;
      v38 = v15;
      v37 = a2;
      v39 = v24;
      v35 = v12;
      v31 = v33;
      v36 = v33;
      v10 = v25;
      [v14 setOtherAttributeOf:v25 named:v27 value:v26 requestID:a2 reply:v34];

LABEL_20:
LABEL_21:

      goto LABEL_22;
    }

    v23 = livefs_std_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100037A90(&v43 + 1);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = a2;
    v21 = 5;
  }

  else
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100037B04(&v43 + 1);
    }

    v21 = v43;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = a2;
  }

  sub_10002A3C0(v22, v21, 2, &v44);
LABEL_22:

  return 0;
}

void sub_10002BFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100037B78(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002C0E8(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a2)
  {
    goto LABEL_2;
  }

  if (*(a1 + 56) == 1)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v41, 0, sizeof(v41));
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    if (a3 && [a3 length])
    {
      LODWORD(v41[0]) = [a3 length];
      [a3 bytes];
      __memcpy_chk();
    }

    if (v9 && [v9 length] >= 0x10)
    {
      v42 = *[v9 bytes];
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(&v42 + 1) = 0;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    if ([v10 length] >= 0x58)
    {
      v15 = [v10 bytes];
      v16 = v15[1];
      *&v41[1] = *v15;
      *&v41[3] = v16;
      v17 = *(v15 + 10);
      v18 = v15[4];
      v19 = v15[2];
      *&v41[7] = v15[3];
      *&v41[9] = v18;
      *&v41[5] = v19;
      v41[11] = v17;
LABEL_17:
      v11 = *(a1 + 48);
      v12 = 0;
      v13 = 22;
      goto LABEL_18;
    }

LABEL_16:
    v41[1] = 0;
    goto LABEL_17;
  }

  if (*(a1 + 57) != 1)
  {
LABEL_2:
    v11 = *(a1 + 48);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v41, 0, sizeof(v41));
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v12 = a2;
    v13 = 2;
LABEL_18:
    sub_10002A3C0(v11, v12, v13, &v24);
    goto LABEL_19;
  }

  v14 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C3BC;
  block[3] = &unk_100061BE0;
  v23 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  dispatch_async(v14, block);

LABEL_19:
}

id sub_10002C3BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  memset(v4, 0, 512);
  sub_10002A3C0(v2, 0, 2, v4);
  return [*(a1 + 32) renameToName:*(a1 + 40) reply:&stru_100061BB8];
}

void sub_10002C47C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = livefs_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error setting volume name: %@", &v4, 0xCu);
    }
  }
}

uint64_t lifs_mkdir_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v8 = [NSData dataWithBytes:a5 length:184];
  v9 = [FSFileName nameWithCString:a3];
  v24 = 0;
  v25 = 0;
  v10 = lifs_to_livefh(a4, &v25 + 1, &v24, &v25, 0);
  v11 = v24;
  v12 = v11;
  if (!v11)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100037C68(&v25 + 1);
    }

    v16 = v25;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = a2;
    goto LABEL_10;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002C80C;
  v22[3] = &unk_100061B10;
  v23 = HIDWORD(v25);
  v22[4] = a2;
  v13 = [v11 fsObjWithErrorHandler:v22];
  if (!v13)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100037BF4(&v25 + 1);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = a2;
    v16 = 5;
LABEL_10:
    sub_10002A3C0(v17, v16, 2, &v26);
    goto LABEL_11;
  }

  v14 = v13;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002C900;
  v20[3] = &unk_100061C28;
  v20[4] = a2;
  v21 = HIDWORD(v25);
  [v13 makeDirectoryIn:v10 named:v9 attributes:v8 requestID:a2 reply:v20];

LABEL_11:
  return 0;
}

void sub_10002C80C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100037CDC(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002C900(uint64_t a1, int a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (!a2)
  {
    createLIFSfh(*(a1 + 40), a4, &v40);
    if (v13 && [v13 length] >= 0xB8)
    {
      v19 = [v13 bytes];
      v20 = v19[3];
      v22 = *v19;
      v21 = v19[1];
      v46 = v19[2];
      v47 = v20;
      v44 = v22;
      v45 = v21;
      v23 = v19[7];
      v25 = v19[4];
      v24 = v19[5];
      v50 = v19[6];
      v51 = v23;
      v48 = v25;
      v49 = v24;
      v27 = v19[9];
      v26 = v19[10];
      v28 = v19[8];
      *&v55[0] = *(v19 + 22);
      v53 = v27;
      v54 = v26;
      v52 = v28;
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *&v55[0] = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    if ([v12 length] >= 0xB8)
    {
      v29 = [v12 bytes];
      v30 = v29[3];
      v32 = *v29;
      v31 = v29[1];
      *(&v55[2] + 8) = v29[2];
      *(&v55[3] + 8) = v30;
      *(v55 + 8) = v32;
      *(&v55[1] + 8) = v31;
      v33 = v29[7];
      v35 = v29[4];
      v34 = v29[5];
      *(&v55[6] + 8) = v29[6];
      *(&v55[7] + 8) = v33;
      *(&v55[4] + 8) = v35;
      *(&v55[5] + 8) = v34;
      v36 = *(v29 + 22);
      v37 = v29[10];
      v38 = v29[8];
      *(&v55[9] + 8) = v29[9];
      *(&v55[10] + 8) = v37;
      *(&v55[8] + 8) = v38;
      *(&v55[11] + 1) = v36;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_12:
      if ([v14 length] >= 0x10)
      {
        v56 = *[v14 bytes];
LABEL_15:
        v15 = *(a1 + 32);
        v16 = &v39;
        v17 = 0;
        v18 = 5;
        goto LABEL_16;
      }

LABEL_14:
      *(&v56 + 1) = 0;
      goto LABEL_15;
    }

LABEL_11:
    memset(v55 + 8, 0, 184);
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v15 = *(a1 + 32);
  memset(v60, 0, 512);
  v16 = v60;
  v17 = a2;
  v18 = 2;
LABEL_16:
  sub_10002A3C0(v15, v17, v18, v16);
}

uint64_t lifs_create_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v8 = [NSData dataWithBytes:a5 length:184];
  v9 = [FSFileName nameWithCString:a3];
  v24 = 0;
  v25 = 0;
  v10 = lifs_to_livefh(a4, &v25 + 1, &v24, &v25, 0);
  v11 = v24;
  v12 = v11;
  if (!v11)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100037DCC(&v25 + 1);
    }

    v16 = v25;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = a2;
    goto LABEL_10;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002CEBC;
  v22[3] = &unk_100061B10;
  v23 = HIDWORD(v25);
  v22[4] = a2;
  v13 = [v11 fsObjWithErrorHandler:v22];
  if (!v13)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100037D58(&v25 + 1);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = a2;
    v16 = 5;
LABEL_10:
    sub_10002A3C0(v17, v16, 2, &v26);
    goto LABEL_11;
  }

  v14 = v13;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002CFB0;
  v20[3] = &unk_100061C48;
  v20[4] = a2;
  v21 = HIDWORD(v25);
  [v13 createIn:v10 named:v9 attributes:v8 requestID:a2 reply:v20];

LABEL_11:
  return 0;
}

void sub_10002CEBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100037E40(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002CFB0(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (!a2)
  {
    createLIFSfh(*(a1 + 40), a4, &v39);
    if (v12 && [v12 length] >= 0xB8)
    {
      v18 = [v12 bytes];
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v45 = v18[2];
      v46 = v19;
      v43 = v21;
      v44 = v20;
      v22 = v18[7];
      v24 = v18[4];
      v23 = v18[5];
      v49 = v18[6];
      v50 = v22;
      v47 = v24;
      v48 = v23;
      v26 = v18[9];
      v25 = v18[10];
      v27 = v18[8];
      *&v54[0] = *(v18 + 22);
      v52 = v26;
      v53 = v25;
      v51 = v27;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *&v54[0] = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    if ([v11 length] >= 0xB8)
    {
      v28 = [v11 bytes];
      v29 = v28[3];
      v31 = *v28;
      v30 = v28[1];
      *(&v54[2] + 8) = v28[2];
      *(&v54[3] + 8) = v29;
      *(v54 + 8) = v31;
      *(&v54[1] + 8) = v30;
      v32 = v28[7];
      v34 = v28[4];
      v33 = v28[5];
      *(&v54[6] + 8) = v28[6];
      *(&v54[7] + 8) = v32;
      *(&v54[4] + 8) = v34;
      *(&v54[5] + 8) = v33;
      v35 = *(v28 + 22);
      v36 = v28[10];
      v37 = v28[8];
      *(&v54[9] + 8) = v28[9];
      *(&v54[10] + 8) = v36;
      *(&v54[8] + 8) = v37;
      *(&v54[11] + 1) = v35;
      if (!v13)
      {
        goto LABEL_14;
      }

LABEL_12:
      if ([v13 length] >= 0x10)
      {
        v55 = *[v13 bytes];
LABEL_15:
        v14 = *(a1 + 32);
        v15 = &v38;
        v16 = 0;
        v17 = 4;
        goto LABEL_16;
      }

LABEL_14:
      *(&v55 + 1) = 0;
      goto LABEL_15;
    }

LABEL_11:
    memset(v54 + 8, 0, 184);
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = *(a1 + 32);
  memset(v59, 0, 512);
  v15 = v59;
  v16 = a2;
  v17 = 2;
LABEL_16:
  sub_10002A3C0(v14, v16, v17, v15);
}

uint64_t lifs_clonefile_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v12 = [NSData dataWithBytes:a7 length:184];
  v13 = [FSFileName nameWithCString:a3];
  v30 = 0;
  v31 = 0;
  v14 = lifs_to_livefh(a5, &v31 + 1, &v30, &v31, 0);
  v15 = v30;
  v29 = v15;
  v16 = lifs_to_livefh(a4, &v31 + 1, &v29, &v31, 0);
  v17 = v29;

  if (!v17)
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100037F30(&v31 + 1);
    }

    v21 = v31;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v32 = 0u;
    v22 = a2;
    goto LABEL_10;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002D5C4;
  v27[3] = &unk_100061B10;
  v28 = HIDWORD(v31);
  v27[4] = a2;
  v18 = [v17 fsObjWithErrorHandler:v27];
  if (!v18)
  {
    v23 = livefs_std_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100037EBC(&v31 + 1);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v32 = 0u;
    v22 = a2;
    v21 = 5;
LABEL_10:
    sub_10002A3C0(v22, v21, 2, &v32);
    goto LABEL_11;
  }

  v19 = v18;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002D6B8;
  v25[3] = &unk_100061C48;
  v25[4] = a2;
  v26 = HIDWORD(v31);
  [v18 makeCloneOf:v14 named:v13 inDirectory:v16 attributes:v12 usingFlags:a6 requestID:a2 reply:v25];

LABEL_11:
  return 0;
}

void sub_10002D5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100037FA4(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002D6B8(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (!a2)
  {
    createLIFSfh(*(a1 + 40), a4, &v39);
    if (v12 && [v12 length] >= 0xB8)
    {
      v18 = [v12 bytes];
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v45 = v18[2];
      v46 = v19;
      v43 = v21;
      v44 = v20;
      v22 = v18[7];
      v24 = v18[4];
      v23 = v18[5];
      v49 = v18[6];
      v50 = v22;
      v47 = v24;
      v48 = v23;
      v26 = v18[9];
      v25 = v18[10];
      v27 = v18[8];
      *&v54[0] = *(v18 + 22);
      v52 = v26;
      v53 = v25;
      v51 = v27;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *&v54[0] = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    if ([v11 length] >= 0xB8)
    {
      v28 = [v11 bytes];
      v29 = v28[3];
      v31 = *v28;
      v30 = v28[1];
      *(&v54[2] + 8) = v28[2];
      *(&v54[3] + 8) = v29;
      *(v54 + 8) = v31;
      *(&v54[1] + 8) = v30;
      v32 = v28[7];
      v34 = v28[4];
      v33 = v28[5];
      *(&v54[6] + 8) = v28[6];
      *(&v54[7] + 8) = v32;
      *(&v54[4] + 8) = v34;
      *(&v54[5] + 8) = v33;
      v35 = *(v28 + 22);
      v36 = v28[10];
      v37 = v28[8];
      *(&v54[9] + 8) = v28[9];
      *(&v54[10] + 8) = v36;
      *(&v54[8] + 8) = v37;
      *(&v54[11] + 1) = v35;
      if (!v13)
      {
        goto LABEL_14;
      }

LABEL_12:
      if ([v13 length] >= 0x10)
      {
        v55 = *[v13 bytes];
LABEL_15:
        v14 = *(a1 + 32);
        v15 = &v38;
        v16 = 0;
        v17 = 26;
        goto LABEL_16;
      }

LABEL_14:
      *(&v55 + 1) = 0;
      goto LABEL_15;
    }

LABEL_11:
    memset(v54 + 8, 0, 184);
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = *(a1 + 32);
  memset(v59, 0, 512);
  v15 = v59;
  v16 = a2;
  v17 = 2;
LABEL_16:
  sub_10002A3C0(v14, v16, v17, v15);
}

uint64_t lifs_lookupsmall_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v8 = [FSFileName nameWithCString:?];
  v12 = 0;
  v13 = 0;
  v9 = lifs_to_livefh(a4, &v13 + 1, &v12, &v13, 0);
  v10 = v12;
  lookup_fh(a2, SHIDWORD(v13), v9, v8, v10, a5);

  return 0;
}

void lookup_fh(uint64_t a1, int a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v13)
  {
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100038094();
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = a1;
    v19 = 22;
    goto LABEL_10;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002DD80;
  v24[3] = &unk_100061B10;
  v25 = a2;
  v24[4] = a1;
  v15 = [v13 fsObjWithErrorHandler:v24];
  if (!v15)
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100038020();
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = a1;
    v19 = 5;
LABEL_10:
    sub_10002A3C0(v18, v19, 2, &v26);
    goto LABEL_11;
  }

  v16 = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002DE74;
  v21[3] = &unk_100061C68;
  v21[4] = a1;
  v22 = a2;
  v23 = a6;
  [v15 lookupIn:v11 name:v12 usingFlags:a6 requestID:a1 reply:v21];

LABEL_11:
}

uint64_t lifs_lookupmed_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v8 = [FSFileName nameWithCString:?];
  v12 = 0;
  v13 = 0;
  v9 = lifs_to_livefh(a4, &v13 + 1, &v12, &v13, 0);
  v10 = v12;
  lookup_fh(a2, SHIDWORD(v13), v9, v8, v10, a5);

  return 0;
}

void sub_10002DD80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100038108(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002DE74(uint64_t a1, int a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  memset(v51, 0, 512);
  if (!a2)
  {
    if (!v18 || [v18 length] <= 0xB7)
    {
      v24 = *(a1 + 32);
      v85 = 0u;
      v84 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v25 = &v54;
      v26 = 96;
      goto LABEL_6;
    }

    v28 = [v18 bytes];
    v30 = v28[9];
    v29 = v28[10];
    v31 = v28[8];
    *&v51[260] = *(v28 + 22);
    v32 = v28[2];
    v33 = v28[3];
    v34 = v28[1];
    *&v51[84] = *v28;
    *&v51[132] = v33;
    *&v51[116] = v32;
    *&v51[100] = v34;
    v35 = v28[6];
    v36 = v28[7];
    v37 = v28[5];
    *&v51[148] = v28[4];
    *&v51[196] = v36;
    *&v51[180] = v35;
    *&v51[164] = v37;
    *&v51[212] = v31;
    *&v51[244] = v29;
    *&v51[228] = v30;
    createLIFSfh(*(a1 + 40), v17, &v51[20]);
    v38 = *(a1 + 44);
    if (v22 && (v38 & 0x10000000) != 0)
    {
      v39 = [v22 length] / 0x18;
      if (v39 >= 2)
      {
        LODWORD(v39) = 2;
      }

      v52 = v39;
      [v22 bytes];
      __memcpy_chk();
      v38 = *(a1 + 44);
    }

    else
    {
      v52 = 0;
    }

    if (!a3 && (v38 & 0x20000000) != 0)
    {
      if (v20 && [v20 length] >= 0xB8)
      {
        v40 = [v20 bytes];
        v41 = v40[3];
        v43 = *v40;
        v42 = v40[1];
        *&v51[364] = v40[2];
        *&v51[380] = v41;
        *&v51[332] = v43;
        *&v51[348] = v42;
        v44 = v40[7];
        v46 = v40[4];
        v45 = v40[5];
        *&v51[428] = v40[6];
        *&v51[444] = v44;
        *&v51[396] = v46;
        *&v51[412] = v45;
        v48 = v40[9];
        v47 = v40[10];
        v49 = v40[8];
        *&v51[508] = *(v40 + 22);
        *&v51[476] = v48;
        *&v51[492] = v47;
        *&v51[460] = v49;
        createLIFSfh(*(a1 + 40), v19, &v51[268]);
        if (v23)
        {
          v50 = [v23 length] / 0x18;
          if (v50 >= 2)
          {
            LODWORD(v50) = 2;
          }

          v53 = v50;
          [v23 bytes];
          __memcpy_chk();
          a3 = 0;
          goto LABEL_24;
        }

        a3 = 0;
      }

      else
      {
        a3 = 96;
      }

      v53 = 0;
    }

LABEL_24:
    *&v51[16] = a3;
    v24 = *(a1 + 32);
    v25 = v51;
    v26 = 0;
    v27 = 6;
    goto LABEL_7;
  }

  v24 = *(a1 + 32);
  v85 = 0uLL;
  v84 = 0uLL;
  v83 = 0uLL;
  v82 = 0uLL;
  v81 = 0uLL;
  v80 = 0uLL;
  v79 = 0uLL;
  v78 = 0uLL;
  v77 = 0uLL;
  v76 = 0uLL;
  v75 = 0uLL;
  v74 = 0uLL;
  v73 = 0uLL;
  v72 = 0uLL;
  v71 = 0uLL;
  v70 = 0uLL;
  v69 = 0uLL;
  v68 = 0uLL;
  v67 = 0uLL;
  v66 = 0uLL;
  v65 = 0uLL;
  v64 = 0uLL;
  v63 = 0uLL;
  v62 = 0uLL;
  v61 = 0uLL;
  v60 = 0uLL;
  v59 = 0uLL;
  v58 = 0uLL;
  v57 = 0uLL;
  v56 = 0uLL;
  v55 = 0uLL;
  v54 = 0uLL;
  v25 = &v54;
  v26 = a2;
LABEL_6:
  v27 = 2;
LABEL_7:
  sub_10002A3C0(v24, v26, v27, v25);
}

uint64_t lifs_lookup_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v8 = [FSFileName nameWithCString:?];
  v12 = 0;
  v13 = 0;
  v9 = lifs_to_livefh(a4, &v13 + 1, &v12, &v13, 0);
  v10 = v12;
  lookup_fh(a2, SHIDWORD(v13), v9, v8, v10, a5);

  return 0;
}

uint64_t lifs_open_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v6 = lifs_to_livefh(a3, &v20 + 1, &v19, &v20, 0);
  v7 = v19;
  v8 = v7;
  if (!v7)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000381F8(&v20 + 1);
    }

    v12 = v20;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = a2;
    goto LABEL_10;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002E608;
  v17[3] = &unk_100061B10;
  v18 = HIDWORD(v20);
  v17[4] = a2;
  v9 = [v7 fsObjWithErrorHandler:v17];
  if (!v9)
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100038184(&v20 + 1);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = a2;
    v12 = 5;
LABEL_10:
    sub_10002A3C0(v13, v12, 2, &v21);
    goto LABEL_11;
  }

  v10 = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002E6FC;
  v16[3] = &unk_100061C88;
  v16[4] = a2;
  [v9 open:v6 withMode:a4 requestID:a2 reply:v16];

LABEL_11:
  return 0;
}

void sub_10002E608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003826C(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002E6FC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  memset(v3, 0, 512);
  sub_10002A3C0(v2, a2, 2, v3);
}

uint64_t lifs_close_send(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v6 = lifs_to_livefh(a3, &v20 + 1, &v19, &v20, 0);
  v7 = v19;
  v8 = v7;
  if (!v7)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003835C(&v20 + 1);
    }

    v12 = v20;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = a2;
    goto LABEL_10;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002EA2C;
  v17[3] = &unk_100061B10;
  v18 = HIDWORD(v20);
  v17[4] = a2;
  v9 = [v7 fsObjWithErrorHandler:v17];
  if (!v9)
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000382E8(&v20 + 1);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = a2;
    v12 = 5;
LABEL_10:
    sub_10002A3C0(v13, v12, 2, &v21);
    goto LABEL_11;
  }

  v10 = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002EB20;
  v16[3] = &unk_100061C88;
  v16[4] = a2;
  [v9 close:v6 keepingMode:a4 requestID:a2 reply:v16];

LABEL_11:
  return 0;
}

void sub_10002EA2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000383D0(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002EB20(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  memset(v3, 0, 512);
  sub_10002A3C0(v2, a2, 2, v3);
}

uint64_t lifs_rename_send(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5, uint64_t a6, unsigned int *a7, unsigned int *a8, int a9)
{
  v15 = [FSFileName nameWithCString:?];
  v16 = [FSFileName nameWithCString:a6];
  v39 = 0;
  v40 = 0;
  v17 = lifs_to_livefh(a5, &v40 + 1, &v39, &v40, 0);
  v18 = v39;
  v38 = v18;
  v19 = lifs_to_livefh(a4, &v40 + 1, &v38, &v40, 0);
  v20 = v38;

  memset(__s1, 0, sizeof(__s1));
  if (!memcmp(__s1, a7, 0x40uLL))
  {
    v21 = 0;
  }

  else
  {
    v37 = v20;
    v21 = lifs_to_livefh(a7, &v40 + 1, &v37, &v40, 0);
    v22 = v37;

    v20 = v22;
  }

  v36 = v20;
  v23 = lifs_to_livefh(a8, &v40 + 1, &v36, &v40, 0);
  v24 = v36;

  if (!v24)
  {
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000384C0(&v40 + 1);
    }

    v28 = v40;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = a2;
    goto LABEL_13;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10002EF7C;
  v34[3] = &unk_100061B10;
  v35 = HIDWORD(v40);
  v34[4] = a2;
  v25 = [v24 fsObjWithErrorHandler:v34];
  if (!v25)
  {
    v30 = livefs_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10003844C(&v40 + 1);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = a2;
    v28 = 5;
LABEL_13:
    sub_10002A3C0(v29, v28, 2, &v42);
    goto LABEL_14;
  }

  v26 = v25;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10002F070;
  v33[3] = &unk_100061CA8;
  v33[4] = a2;
  LODWORD(v32) = a9;
  [v25 renameItemIn:v17 named:v15 item:v19 toDirectory:v23 newName:v16 toItem:v21 usingFlags:v32 requestID:a2 reply:v33];

LABEL_14:
  return 0;
}

void sub_10002EF7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100038534(a1);
  }

  v5 = *(a1 + 32);
  memset(v6, 0, 512);
  sub_10002A3C0(v5, 5, 2, v6);
}

void sub_10002F070(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(v74, 0, sizeof(v74));
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (!a2)
  {
    if (v13 && [v13 length] >= 0xB8)
    {
      v22 = [v13 bytes];
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v65 = v22[2];
      v66 = v23;
      v63 = v25;
      v64 = v24;
      v26 = v22[7];
      v28 = v22[4];
      v27 = v22[5];
      v69 = v22[6];
      v70 = v26;
      v67 = v28;
      v68 = v27;
      v30 = v22[9];
      v29 = v22[10];
      v31 = v22[8];
      *&v74[0] = *(v22 + 22);
      v72 = v30;
      v73 = v29;
      v71 = v31;
      if (!v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *&v74[0] = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      if (!v15)
      {
        goto LABEL_10;
      }
    }

    if ([v15 length] >= 0xB8)
    {
      v32 = [v15 bytes];
      v33 = v32[3];
      v35 = *v32;
      v34 = v32[1];
      v77 = v32[2];
      v78 = v33;
      v75 = v35;
      v76 = v34;
      v36 = v32[7];
      v38 = v32[4];
      v37 = v32[5];
      v81 = v32[6];
      v82 = v36;
      v79 = v38;
      v80 = v37;
      v40 = v32[9];
      v39 = v32[10];
      v41 = v32[8];
      v86 = *(v32 + 22);
      v84 = v40;
      v85 = v39;
      v83 = v41;
LABEL_11:
      if (v14 && [v14 length] >= 0xB8)
      {
        v42 = [v14 bytes];
        v43 = v42[7];
        v45 = v42[4];
        v44 = v42[5];
        *(&v74[6] + 8) = v42[6];
        *(&v74[7] + 8) = v43;
        *(&v74[4] + 8) = v45;
        *(&v74[5] + 8) = v44;
        v46 = *(v42 + 22);
        v47 = v42[10];
        v48 = v42[8];
        *(&v74[9] + 8) = v42[9];
        *(&v74[10] + 8) = v47;
        *(&v74[8] + 8) = v48;
        v49 = v42[2];
        v50 = v42[3];
        v51 = v42[1];
        *(v74 + 8) = *v42;
        *(&v74[3] + 8) = v50;
        *(&v74[2] + 8) = v49;
        *(&v74[1] + 8) = v51;
        *(&v74[11] + 1) = v46;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        memset(v74 + 8, 0, 184);
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      if ([v16 length] >= 0xB8)
      {
        v52 = [v16 bytes];
        v53 = v52[3];
        v55 = *v52;
        v54 = v52[1];
        v89 = v52[2];
        v90 = v53;
        v87 = v55;
        v88 = v54;
        v56 = v52[7];
        v58 = v52[4];
        v57 = v52[5];
        v93 = v52[6];
        v94 = v56;
        v91 = v58;
        v92 = v57;
        v59 = *(v52 + 22);
        v60 = v52[10];
        v61 = v52[8];
        v96 = v52[9];
        v97 = v60;
        v95 = v61;
        v98 = v59;
        if (v17)
        {
LABEL_20:
          v99 = *[v17 bytes];
          goto LABEL_21;
        }

LABEL_18:
        *(&v99 + 1) = 0;
LABEL_21:
        v18 = *(a1 + 32);
        v19 = &v62;
        v20 = 0;
        v21 = 7;
        goto LABEL_22;
      }

LABEL_19:
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      v98 = 0;
      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_10:
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    goto LABEL_11;
  }

  v18 = *(a1 + 32);
  memset(v100, 0, 512);
  v19 = v100;
  v20 = a2;
  v21 = 2;
LABEL_22:
  sub_10002A3C0(v18, v20, v21, v19);
}