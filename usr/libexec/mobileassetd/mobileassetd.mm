id sub_100000D90(void *a1)
{
  v1 = a1;
  if (qword_1000105D8 != -1)
  {
    sub_1000067A4();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = objc_claimAutoreleasedReturnValue([qword_1000105D0 objectForKey:v2]);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_claimAutoreleasedReturnValue([qword_1000105D0 objectForKey:@"DEFAULT"]);
  }

  v6 = v5;

  return v6;
}

void sub_100000E24(id a1)
{
  v1 = objc_claimAutoreleasedReturnValue(+[SUCore sharedCore]);
  [v1 useDomain:@"com.apple.MobileAsset"];

  v15[0] = @"DEFAULT";
  v14 = os_log_create("com.apple.MobileAsset", [@"DEFAULT" UTF8String]);
  v16[0] = v14;
  v15[1] = @"V2";
  v2 = os_log_create("com.apple.MobileAsset", [@"V2" UTF8String]);
  v16[1] = v2;
  v15[2] = @"Brain";
  v3 = os_log_create("com.apple.MobileAsset", [@"Brain" UTF8String]);
  v16[2] = v3;
  v15[3] = @"SSO";
  v4 = os_log_create("com.apple.MobileAsset", [@"SSO" UTF8String]);
  v16[3] = v4;
  v15[4] = @"PushNotification";
  v5 = os_log_create("com.apple.MobileAsset", [@"PushNotification" UTF8String]);
  v16[4] = v5;
  v15[5] = @"SecureMA";
  v6 = os_log_create("com.apple.MobileAsset", [@"SecureMA" UTF8String]);
  v16[5] = v6;
  v15[6] = @"Manifest";
  v7 = os_log_create("com.apple.MobileAsset", [@"Manifest" UTF8String]);
  v16[6] = v7;
  v15[7] = @"KeyManager";
  v8 = os_log_create("com.apple.MobileAsset", [@"KeyManager" UTF8String]);
  v16[7] = v8;
  v15[8] = @"Auto";
  v9 = os_log_create("com.apple.MobileAsset", [@"Auto" UTF8String]);
  v16[8] = v9;
  v15[9] = @"AutoSet";
  v10 = os_log_create("com.apple.MobileAsset", [@"AutoSet" UTF8String]);
  v16[9] = v10;
  v15[10] = @"AutoStager";
  v11 = os_log_create("com.apple.MobileAsset", [@"AutoStager" UTF8String]);
  v16[10] = v11;
  v12 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11]);
  v13 = qword_1000105D0;
  qword_1000105D0 = v12;
}

uint64_t sub_1000010A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  if (!v4)
  {
    v22 = sub_100000D90(@"V2");
    v19 = objc_claimAutoreleasedReturnValue(v22);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v29 = "safeAtomicWriteToPath";
      v23 = "Invalid path passed to %{public}s";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
    }

LABEL_20:
    v25 = 0;
    goto LABEL_24;
  }

  if (!v3 || (v6 = objc_opt_class(NSDictionary), (objc_opt_isKindOfClass(v3, v6) & 1) == 0) && (v7 = objc_opt_class(NSData), (objc_opt_isKindOfClass(v3, v7) & 1) == 0) && (v8 = objc_opt_class(NSString), (objc_opt_isKindOfClass(v3, v8) & 1) == 0))
  {
    v24 = sub_100000D90(@"V2");
    v19 = objc_claimAutoreleasedReturnValue(v24);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v29 = "safeAtomicWriteToPath";
      v23 = "Invalid data passed to %{public}s";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v9 = objc_claimAutoreleasedReturnValue([v4 stringByDeletingLastPathComponent]);
  v10 = objc_claimAutoreleasedReturnValue(+[NSUUID UUID]);
  v11 = objc_claimAutoreleasedReturnValue([v10 UUIDString]);
  v12 = objc_claimAutoreleasedReturnValue([v9 stringByAppendingPathComponent:v11]);

  if ([v3 writeToFile:v12 atomically:0] && (v13 = objc_msgSend(v12, "fileSystemRepresentation"), v14 = objc_msgSend(v4, "fileSystemRepresentation"), rename(v13, v14, v15), !v16))
  {
    v19 = 0;
    v25 = 1;
  }

  else
  {
    v17 = sub_100000D90(@"V2");
    v18 = objc_claimAutoreleasedReturnValue(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v29 = "safeAtomicWriteToPath";
      v30 = 2114;
      v31 = v4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write item to path %{public}@", buf, 0x16u);
    }

    if ([v5 fileExistsAtPath:v12 isDirectory:0])
    {
      v27 = 0;
      [v5 removeItemAtPath:v12 error:&v27];
      v19 = v27;
      if (v19)
      {
        v20 = sub_100000D90(@"V2");
        v21 = objc_claimAutoreleasedReturnValue(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v29 = "safeAtomicWriteToPath";
          v30 = 2114;
          v31 = v12;
          v32 = 2114;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: Atomic write to path failed and failed to remove temp path(%{public}@): %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v25 = 0;
  }

LABEL_24:
  return v25;
}

id sub_100001414()
{
  if (qword_1000105E0 != -1)
  {
    sub_1000067B8();
  }

  return qword_1000105E8;
}

void sub_100001444(id a1)
{
  size = 0;
  v1 = qword_1000105E8;
  qword_1000105E8 = 0;

  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    v2 = sub_100000D90(@"V2");
    v3 = objc_claimAutoreleasedReturnValue(v2);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return;
    }

    v4 = *__error();
    v5 = __error();
    v6 = strerror(*v5);
    *buf = 67109378;
    LODWORD(v22[0]) = v4;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v6;
    v7 = "Could not look up boot session UUID: %d (%s)";
    v8 = v3;
    v9 = 18;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_5;
  }

  if (!size)
  {
    v17 = sub_100000D90(@"V2");
    v3 = objc_claimAutoreleasedReturnValue(v17);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 134217984;
    v22[0] = size;
    v7 = "Boot session UUID has an invalid length (%zu)";
    v8 = v3;
    v9 = 12;
    goto LABEL_4;
  }

  v10 = malloc_type_malloc(size, 0x5CC07005uLL);
  if (!v10)
  {
    v18 = sub_100000D90(@"V2");
    v3 = objc_claimAutoreleasedReturnValue(v18);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "Could not allocate buffer to copy boot session UUID";
    v8 = v3;
    v9 = 2;
    goto LABEL_4;
  }

  v11 = v10;
  if (sysctlbyname("kern.bootsessionuuid", v10, &size, 0, 0))
  {
    v12 = sub_100000D90(@"V2");
    v13 = objc_claimAutoreleasedReturnValue(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 67109378;
      LODWORD(v22[0]) = v14;
      WORD2(v22[0]) = 2080;
      *(v22 + 6) = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not copy boot session UUID: %d (%s)", buf, 0x12u);
    }
  }

  else
  {
    v19 = objc_claimAutoreleasedReturnValue([NSString stringWithCString:v11 encoding:4]);
    v13 = qword_1000105E8;
    qword_1000105E8 = v19;
  }

  free(v11);
}

BOOL sub_1000016C8(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v8 = objc_claimAutoreleasedReturnValue([v7 enumeratorAtPath:v5]);

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = 0;
    while (1)
    {
      v11 = v10;
      v10 = objc_claimAutoreleasedReturnValue([v8 nextObject]);

      if (!v10)
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        [v8 skipDescendants];
      }

      if ((v6[2](v6, v10) & 1) == 0)
      {
        v12 = sub_100000D90(@"Brain");
        v13 = objc_claimAutoreleasedReturnValue(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[MAB] Caller canceled enumeration", &v17, 2u);
        }

        break;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v14 = sub_100000D90(@"Brain");
    v15 = objc_claimAutoreleasedReturnValue(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[MAB] Could not create directory enumerator for %@", &v17, 0xCu);
    }
  }

  return v8 != 0;
}

uint64_t sub_100001884()
{
  result = os_variant_has_internal_content("com.apple.mobileassetd");
  if (result)
  {
    return sub_100001DD8(@"MABrainAllowUnpersonalized", 0) != 0;
  }

  return result;
}

BOOL sub_1000018BC()
{
  if (!os_variant_has_internal_content("com.apple.mobileassetd"))
  {
    return 1;
  }

  v2 = 0;
  return sub_100001DD8(@"MABrainAllowDownloaded", &v2) || v2 == 0;
}

uint64_t sub_100001910()
{
  result = os_variant_has_internal_content("com.apple.mobileassetd");
  if (result)
  {
    return sub_100001DD8(@"MABrainAllowCrossBuildGroup", 0) != 0;
  }

  return result;
}

uint64_t sub_100001948()
{
  result = os_variant_has_internal_content("com.apple.mobileassetd");
  if (result)
  {
    return sub_100001DD8(@"MABrainDisableHealthCheck", 0) != 0;
  }

  return result;
}

id sub_100001980()
{
  v0 = _NSGetMachExecuteHeader();
  memset(dst, 0, sizeof(dst));
  ncmds = v0->ncmds;
  if (ncmds)
  {
    v2 = v0;
    v3 = 0;
    v4 = 32;
    while (1)
    {
      v5 = v0 + v4;
      if (*(&v0->magic + v4) == 27)
      {
        break;
      }

      v4 += *(v5 + 1);
      if (ncmds == ++v3)
      {
        goto LABEL_9;
      }
    }

    uuid_copy(dst, v5 + 8);
    v6 = v2->ncmds;
  }

  else
  {
    v6 = 0;
    v3 = 0;
  }

  if (v3 == v6)
  {
LABEL_9:
    uuid_clear(dst);
  }

  memset(v10, 0, sizeof(v10));
  uuid_unparse_lower(dst, v10);
  v7 = objc_claimAutoreleasedReturnValue([NSString stringWithCString:v10 encoding:1]);
  v8 = objc_claimAutoreleasedReturnValue([v7 stringByReplacingOccurrencesOfString:@"-" withString:&stru_10000C6C0]);

  return v8;
}

uint64_t sub_100001A94()
{
  v2[0] = kMKBUserSessionIDKey;
  v2[1] = @"ExtendedDeviceLockState";
  v3[0] = &off_10000CE20;
  v3[1] = &__kCFBooleanTrue;
  v0 = MKBGetDeviceLockState([NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2]);
  return (v0 < 7) & (0x46u >> v0);
}

id sub_100001B3C()
{
  if (qword_1000105F8 != -1)
  {
    sub_1000067CC();
  }

  return qword_1000105F0;
}

void sub_100001B6C(id a1)
{
  v1 = dispatch_queue_create("com.apple.MobileAsset.preferencesDomain", 0);
  v2 = qword_1000105F0;
  qword_1000105F0 = v1;
}

id sub_100001B98(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100001D84;
    v21 = sub_100001D94;
    v22 = 0;
    v2 = sub_100001B3C();
    v3 = objc_claimAutoreleasedReturnValue(v2);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001D9C;
    v14[3] = &unk_10000C3C8;
    v4 = v1;
    v15 = v4;
    v16 = &v17;
    dispatch_sync(v3, v14);

    v5 = v18[5];
    if (v5)
    {
      v6 = v5;
      v7 = sub_100000D90(@"V2");
      v8 = objc_claimAutoreleasedReturnValue(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class(v6);
        v10 = NSStringFromClass(v9);
        v11 = objc_claimAutoreleasedReturnValue(v10);
        *buf = 138544130;
        v24 = @"defaults";
        v25 = 2114;
        v26 = v4;
        v27 = 2114;
        v28 = v6;
        v29 = 2114;
        v30 = v11;
      }
    }

    v12 = v5;

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100001D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D9C(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(*(a1 + 32), @"com.apple.MobileAsset");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100001DD8(void *a1, _BYTE *a2)
{
  v3 = sub_100001B98(a1);
  v4 = objc_claimAutoreleasedReturnValue(v3);
  if (v4)
  {
    v5 = objc_opt_class(NSNumber);
    isKindOfClass = objc_opt_isKindOfClass(v4, v5);
    v7 = isKindOfClass ^ 1;
    v8 = isKindOfClass & 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v7 = 1;
  if (a2)
  {
LABEL_3:
    *a2 = v8;
  }

LABEL_4:
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v4 BOOLValue];
  }

  return v9;
}

id start(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100000D90(@"Brain");
  v6 = objc_claimAutoreleasedReturnValue(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting mobileassetd built Oct 22 2025 21:21:33", v10, 2u);
  }

  v7 = objc_claimAutoreleasedReturnValue(+[MABrainLoader sharedInstance]);
  v8 = [v7 run:a1 argv:a2];

  objc_autoreleasePoolPop(v4);
  return v8;
}

NSObject *sub_100001F20(uint64_t a1)
{
  v1 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:a1]);
  v2 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v3 = [v2 fileExistsAtPath:v1];

  if (!v3)
  {
    v8 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v18 = 0;
  v4 = objc_claimAutoreleasedReturnValue([NSString stringWithContentsOfFile:v1 encoding:4 error:&v18]);
  v5 = v18;
  if (v5)
  {
    v6 = v5;
    v7 = sub_100000D90(@"Brain");
    v8 = objc_claimAutoreleasedReturnValue(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v1;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[MAB] Error loading contents of %@: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (![v4 length])
  {
    v14 = sub_100000D90(@"Brain");
    v8 = objc_claimAutoreleasedReturnValue(v14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v1;
      v15 = "[MAB] Invalid target path at %@";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
    }

LABEL_18:
    v6 = 0;
LABEL_19:

    v8 = 0;
    goto LABEL_20;
  }

  v9 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v4]);
  if (!v9)
  {
    v16 = sub_100000D90(@"Brain");
    v8 = objc_claimAutoreleasedReturnValue(v16);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v4;
      v15 = "[MAB] Allocating targetPath failed for target %@";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v8 = v9;
  v10 = objc_claimAutoreleasedReturnValue(+[NSFileManager defaultManager]);
  v11 = [v10 fileExistsAtPath:v8];

  if ((v11 & 1) == 0)
  {
    v12 = sub_100000D90(@"Brain");
    v13 = objc_claimAutoreleasedReturnValue(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[MAB] %@ does not exist", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_6:
  v6 = 0;
LABEL_20:

  return v8;
}

uint64_t sub_100002684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_claimAutoreleasedReturnValue([@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v3]);
  v5 = [[__MABuiltinBrainBundle__ alloc] initWithPath:v4];
  if ([*(a1 + 32) containsObject:v3])
  {
    v6 = sub_100000D90(@"Brain");
    v7 = objc_claimAutoreleasedReturnValue(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v3;
      v8 = "[MAB] Preserving item %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (![(__MABuiltinBrainBundle__ *)v5 isGrafted])
  {
    v10 = *(a1 + 40);
    v19 = 0;
    v11 = [v10 removeItemAtPath:v4 error:&v19];
    v7 = v19;
    v12 = sub_100000D90(@"Brain");
    v13 = objc_claimAutoreleasedReturnValue(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        *buf = 138412290;
        v21 = v3;
        v15 = "[MAB] Successfully removed item %@";
        v16 = v13;
        v17 = 12;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }

    else if (v14)
    {
      *buf = 138412546;
      v21 = v3;
      v22 = 2112;
      v23 = v7;
      v15 = "[MAB] Error removing item %@: %@";
      v16 = v13;
      v17 = 22;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v9 = sub_100000D90(@"Brain");
  v7 = objc_claimAutoreleasedReturnValue(v9);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    v8 = "[MAB] Preserving item %@ (still grafted)";
    goto LABEL_7;
  }

LABEL_15:

  return 1;
}

void sub_100003AC4(id a1)
{
  v1 = objc_alloc_init(MABrainLoader);
  v2 = qword_100010600;
  qword_100010600 = v1;
}

void sub_1000056EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_claimAutoreleasedReturnValue([*(a1 + 40) objectForKeyedSubscript:@"bundleId"]);
  [v2 recordLaunch:v3 history:*(a1 + 48)];
}

void sub_10000576C(id a1)
{
  v1 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"]);
  if ([v1 isEqualToString:&stru_10000C6C0])
  {
  }

  else
  {
    v2 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"]);
    v3 = [v2 isEqualToString:@"$SIDEBUILD_PARENT_TRAIN"];

    if ((v3 & 1) == 0)
    {
      qword_100010620 = "$SIDEBUILD_PARENT_TRAIN";
      return;
    }
  }

  v6 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%s", "LuckB"]);
  if ([v6 isEqualToString:&stru_10000C6C0])
  {
  }

  else
  {
    v4 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%s", "LuckB"]);
    v5 = [v4 isEqualToString:@"$RC_RELEASE"];

    if ((v5 & 1) == 0)
    {
      qword_100010620 = "LuckB";
    }
  }
}

void sub_100006214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000062A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000062B8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  if (!v8)
  {
    v18 = sub_100000D90(@"Brain");
    v10 = objc_claimAutoreleasedReturnValue(v18);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MAB] %@ MobileAssetBrain not found", buf, 0xCu);
    }

    goto LABEL_33;
  }

  v10 = objc_claimAutoreleasedReturnValue([v8 lastPathComponent]);
  v11 = sub_100000D90(@"Brain");
  v12 = objc_claimAutoreleasedReturnValue(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = v7;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MAB] %@ MobileAssetBrain found in bundle %@", buf, 0x16u);
  }

  v13 = [[__MABuiltinBrainBundle__ alloc] initWithPath:v9];
  v14 = v13;
  if (!v13)
  {
    v19 = sub_100000D90(@"Brain");
    v20 = objc_claimAutoreleasedReturnValue(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[MAB] Allocating bundle failed for %@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v15 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)v13 brainInfo]);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_alloc_init(NSDictionary);
  }

  v20 = v17;

  v21 = objc_claimAutoreleasedReturnValue([v20 objectForKeyedSubscript:@"boot-session-uuid"]);
  v22 = *(a1 + 32);
  if (v22 && v21 && [v22 isEqualToString:v21])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1 && ![(__MABuiltinBrainBundle__ *)v14 hasValidCurrentBootOnlyTicket])
  {
LABEL_31:

LABEL_32:
LABEL_33:
    v30 = 0;
    goto LABEL_34;
  }

  if (![*(a1 + 40) loadCryptex:*(a1 + 88) bundle:v14 bundleName:v10])
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      goto LABEL_31;
    }

    v31 = sub_100000D90(@"Brain");
    v32 = objc_claimAutoreleasedReturnValue(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v10;
      v33 = "[MAB] MobileAssetBrain bundle/cryptex %@ could not be loaded";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
    }

LABEL_30:

    goto LABEL_31;
  }

  if (![*(a1 + 40) verify:v14 history:*(a1 + 48)])
  {
    v34 = sub_100000D90(@"Brain");
    v32 = objc_claimAutoreleasedReturnValue(v34);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v10;
      v33 = "[MAB] MobileAssetBrain bundle %@ could not be verified";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (![*(a1 + 40) loadTrustCache:*(a1 + 88) bundle:v14 bundleName:v10 needsUnlock:a4])
  {
    goto LABEL_31;
  }

  v23 = objc_claimAutoreleasedReturnValue([(__MABuiltinBrainBundle__ *)v14 brainPath]);
  *(*(*(a1 + 72) + 8) + 24) = [v23 fileSystemRepresentation];

  v24 = [v20 mutableCopy];
  [v24 setObject:v10 forKeyedSubscript:@"bundleId"];
  [v24 setObject:v9 forKeyedSubscript:@"bundlePath"];
  [v24 setObject:&off_10000CE68 forKeyedSubscript:@"_CompatibilityVersion"];
  [v24 setObject:*(a1 + 56) forKeyedSubscript:@"mobileassetd-uuid"];
  v25 = [*(a1 + 40) getTrainName];
  if (v25)
  {
    v26 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%s", v25]);
    [v24 setObject:v26 forKeyedSubscript:@"mobileassetd-trainname"];
  }

  [v24 removeObjectForKey:@"boot-session-uuid"];
  v27 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithDictionary:v24]);
  v28 = *(*(a1 + 80) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  v30 = 1;
LABEL_34:

  return v30;
}

uint64_t amfi_load_trust_cache(char a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v10 = -1431655766;
  v13 = -1431655766;
  LOBYTE(v8[0]) = a1;
  v8[1] = a2;
  v9 = a3;
  v11 = a4;
  v12 = a5;
  v14 = a6;
  v16 = -1431655766;
  v15 = a7;
  return __sandbox_ms("AMFI", 101, v8);
}