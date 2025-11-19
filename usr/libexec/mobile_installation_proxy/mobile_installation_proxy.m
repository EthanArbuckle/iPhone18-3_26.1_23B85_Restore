uint64_t start()
{
  qword_1000107C0 = MOLogOpen();
  if (!qword_1000107C0)
  {
    syslog(3, "Failed to set up logging");
  }

  if (lockdown_checkin_xpc())
  {
    if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {
      MOLogWrite();
    }

    return 1;
  }

  else
  {
    CFRunLoopRun();
    return 0;
  }
}

void sub_100000F5C(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  v6 = 0;
  v4 = a2;
  Value = CFDictionaryGetValue(a3, kLockdownCheckinClientNameKey);
  v3 = objc_autoreleasePoolPush();
  cf = 0;
  lockdown_receive_message();
  if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
  {
    MOLogWrite();
  }

  objc_autoreleasePoolPop(v3);
  lockdown_disconnect();
}

void sub_1000022E0(uint64_t *a1, const void *a2)
{
  if (!*(a1 + 4))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      if (a2)
      {
        CFDictionarySetValue(Mutable, @"Error", a2);
      }

      v6 = *a1;
      if (lockdown_send_message() && (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3))
      {
        MOLogWrite();
      }

      CFRelease(v5);
    }

    else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {

      MOLogWrite();
    }
  }
}

uint64_t sub_100002424(const __CFDictionary *a1, uint64_t *a2)
{
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"Error"))
    {
      *(a2 + 4) = 1;
      goto LABEL_5;
    }

    if (a2)
    {
LABEL_5:
      v3 = *a2;
      result = lockdown_send_message();
      if (!result)
      {
        return result;
      }
    }
  }

  result = qword_1000107C0;
  if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
  {

    return MOLogWrite();
  }

  return result;
}

intptr_t sub_1000024C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000024E4(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"Status", @"Complete");
    if (!a1 || (v4 = *a1, lockdown_send_message()))
    {
      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    CFRelease(v3);
  }

  else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
  {

    MOLogWrite();
  }
}

CFStringRef sub_100002614()
{
  v0 = sysconf(71);
  if (v0 == -1)
  {
    v5 = *__error();
    if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {
      strerror(v5);
      MOLogWrite();
    }

    return 0;
  }

  else
  {
    v1 = v0;
    v2 = &v7 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v10, 0x400uLL);
    memset(&v9, 0, sizeof(v9));
    v8 = 0;
    v3 = getpwnam_r("mobile", &v9, v2, v1, &v8);
    if (v3)
    {
      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
      {
        strerror(v3);
        MOLogWrite();
      }

      return 0;
    }

    if (!v8)
    {
      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
      {
        MOLogWrite();
      }

      return 0;
    }

    if (!realpath_DARWIN_EXTSN(v9.pw_dir, v10))
    {
      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
      {
        v6 = __error();
        strerror(*v6);
        MOLogWrite();
      }

      return 0;
    }

    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/Media", v10);
  }
}

uint64_t sub_100002864()
{
  result = qword_1000107C0;
  if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
  {
    return MOLogWrite();
  }

  return result;
}

void sub_1000028B0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (![v7 isEqualToString:@"WaitForStorageDeletion"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100005A3C(v7, a1);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100005ADC(v7, v8);
    }

LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_11;
  }

  v9 = v8;
  if ([v9 BOOLValue])
  {
    [*(a1 + 32) setWaitForDeletion:1];
  }

LABEL_11:
}

void sub_1000029A8(void *a1, void *a2, void *a3)
{
  v98 = a3;
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if ([v5 count] == 1 && (objc_msgSend(v6, "objectForKeyedSubscript:", @"com.apple.mobile_installation.metadata"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, (v8 & 1) != 0))
    {
      v9 = 0;
      v10 = 0;
      v94 = 0;
      HIDWORD(v88) = 0;
      v89 = 0;
    }

    else
    {
      v11 = [v6 objectForKeyedSubscript:@"ShowPlaceholders"];

      HIDWORD(v88) = v11 != 0;
      v12 = [v6 objectForKeyedSubscript:@"ShowLaunchProhibitedApps"];

      v89 = v12 != 0;
      v13 = [v6 objectForKeyedSubscript:@"ShowAppClips"];

      v10 = v13 != 0;
      v14 = [v6 objectForKeyedSubscript:@"ShowSwiftPlaygroundsApps"];

      v9 = v14 != 0;
      v94 = 1;
    }

    v15 = [v6 objectForKeyedSubscript:@"Attribute"];
    v16 = sub_100003388(v15);

    v96 = a2;
    if (v16)
    {
      v17 = [NSSet setWithArray:v16];
    }

    else
    {
      v17 = 0;
    }

    v21 = [v6 objectForKeyedSubscript:@"BundleIDs"];
    v22 = sub_100003388(v21);

    v23 = v9;
    if (v22)
    {
      v24 = [NSSet setWithArray:v22];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"ReturnAttributes"];
    v26 = sub_100003388(v25);

    LODWORD(v88) = v23;
    if (v26)
    {
      v18 = [NSSet setWithArray:v26];
    }

    else
    {
      v18 = 0;
    }

    v19 = v24;

    v20 = v17;
    a2 = v96;
    if (!v94)
    {
LABEL_91:
      v76 = [v6 objectForKeyedSubscript:{@"com.apple.mobile_installation.metadata", v82}];
      v77 = [v76 BOOLValue];

      if (v77)
      {
        v78 = +[LSApplicationWorkspace defaultWorkspace];
        v99 = 0;
        v100 = 0;
        [v78 getKnowledgeUUID:&v100 andSequenceNumber:&v99];
        v79 = v100;
        v80 = v99;

        v110[0] = @"com.apple.mobile_installation.metadata";
        v109[0] = kCFBundleIdentifierKey;
        v109[1] = @"CacheGUID";
        v81 = [v79 UUIDString];
        v109[2] = @"SequenceNumber";
        v110[1] = v81;
        v110[2] = v80;
        v98[2](v98, @"com.apple.mobile_installation.metadata", [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3]);
      }

      goto LABEL_93;
    }
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v10 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  v95 = [v6 objectForKeyedSubscript:@"ApplicationType"];
  v19 = v19;
  v27 = v20;
  v28 = v18;
  v93 = a2;
  v91 = v98;
  if (qword_1000107E0 != -1)
  {
    sub_100005B68();
  }

  v29 = qword_1000107D8;
  v30 = v95;
  if (qword_100010808 != -1)
  {
    sub_100005B7C();
  }

  v85 = v10;
  v31 = qword_100010800;
  v87 = v19;
  if (v28)
  {
    v32 = v28;
    v33 = [v32 containsObject:@"SharedDirSize"];
    if ([v32 containsObject:@"StaticDiskUsage"])
    {
      v34 = 4;
    }

    else
    {
      v34 = 0;
    }

    v35 = v27;
    v36 = v34 | v33;
    if ([v32 containsObject:@"DynamicDiskUsage"])
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    if ([v32 containsObject:@"ApplicationSINF"])
    {
      v38 = 8;
    }

    else
    {
      v38 = 0;
    }

    v39 = v36 | v37 | v38;
    if ([v32 containsObject:@"iTunesMetadata"])
    {
      v40 = 16;
    }

    else
    {
      v40 = 0;
    }

    if ([v32 containsObject:@"iTunesArtwork"])
    {
      v41 = 32;
    }

    else
    {
      v41 = 0;
    }

    v42 = v40 | v41;
    v43 = [v32 containsObject:@"GeoJSON"];

    v44 = v43 == 0;
    v19 = v87;
    if (v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = 64;
    }

    v46 = v39 | v42 | v45;
    v27 = v35;
    v30 = v95;
  }

  else
  {
    v46 = 0;
  }

  v47 = v89;
  v86 = v6;
  v48 = v29;
  v49 = v31;
  v20 = v27;
  v50 = v28;
  v92 = v20;
  v97 = v50;
  if (v28)
  {
    v51 = v50;
    v84 = v46;
    v28 = [NSMutableSet setWithCapacity:0];
    v52 = [NSMutableSet setWithCapacity:0];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v53 = v51;
    v54 = [v53 countByEnumeratingWithState:&v105 objects:v112 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v106;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v106 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v105 + 1) + 8 * i);
          v59 = [v48 containsObject:v58];
          v60 = [v49 containsObject:v58];
          if ((v59 & 1) != 0 || (v61 = v28, v60))
          {
            v61 = v52;
            if (v60 & 1 | ((v59 & 1) == 0))
            {
              continue;
            }
          }

          [v61 addObject:v58];
        }

        v55 = [v53 countByEnumeratingWithState:&v105 objects:v112 count:16];
      }

      while (v55);
    }

    v20 = v92;
    if (v92)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v62 = v92;
      v63 = [v62 countByEnumeratingWithState:&v101 objects:v111 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v102;
        do
        {
          for (j = 0; j != v64; j = j + 1)
          {
            if (*v102 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v101 + 1) + 8 * j);
            v68 = [v48 containsObject:v67];
            v69 = [v49 containsObject:v67];
            if ((v68 & 1) != 0 || (v70 = v28, v69))
            {
              v70 = v52;
              if (v69 & 1 | ((v68 & 1) == 0))
              {
                continue;
              }
            }

            [v70 addObject:v67];
          }

          v64 = [v62 countByEnumeratingWithState:&v101 objects:v111 count:16];
        }

        while (v64);
      }

      v19 = v87;
      v47 = v89;
      v20 = v92;
    }

    else
    {
      v19 = v87;
      v47 = v89;
    }

    v30 = v95;
    v46 = v84;
  }

  else
  {
    v52 = 0;
  }

  v71 = v52;
  v72 = v28;

  v90 = v52;
  v73 = v28;
  if (([v93 isEqualToString:@"iTunes"] & 1) != 0 || objc_msgSend(v93, "isEqualToString:", @"AMPDevicesAgent"))
  {
    [v73 removeObject:@"CFBundleBuild"];
  }

  [v73 removeObject:@"UINewsstandApp"];
  if (v73 && [v73 count])
  {
    if (MGGetBoolAnswer())
    {
      if (qword_1000107C0 && *(qword_1000107C0 + 44) < 5)
      {
        goto LABEL_82;
      }

LABEL_81:
      v82 = v93;
      v83 = v73;
      MOLogWrite();
      goto LABEL_82;
    }

    if (qword_1000107C0 && *(qword_1000107C0 + 44) > 6)
    {
      goto LABEL_81;
    }
  }

LABEL_82:
  if (!v30 || ([v30 isEqualToString:@"Any"] & 1) != 0 || (objc_msgSend(v30, "isEqualToString:", @"System") & 1) != 0 || (objc_msgSend(v30, "isEqualToString:", @"Internal") & 1) != 0 || (objc_msgSend(v30, "isEqualToString:", @"User") & 1) != 0)
  {
    v74 = [LSApplicationRecord enumeratorWithOptions:0, v82, v83];
    sub_100003990(v74, v20, v19, v91, v30, v73, v85, v88, v47, v90, v48, v97, v49, v46);
    if (HIDWORD(v88))
    {
      v75 = [LSApplicationRecord enumeratorWithOptions:64];
      sub_100003990(v75, v92, v19, v91, v95, v73, v85, v88, v47, v90, v48, v97, v49, v46);
    }

    v20 = v92;
  }

  else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
  {
    v82 = v95;
    MOLogWrite();
  }

  v18 = v97;
  v6 = v86;
  if (v86)
  {
    goto LABEL_91;
  }

LABEL_93:
}

id sub_100003388(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (isKindOfClass)
  {
    v3 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (!v5)
      {

LABEL_25:
        v11 = v4;
        goto LABEL_26;
      }

      v6 = v5;
      v7 = *v15;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v8 &= objc_opt_isKindOfClass();
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);

      if (v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (qword_1000107C0 && *(qword_1000107C0 + 44) < 3)
    {
LABEL_23:
      v12 = 0;
      goto LABEL_27;
    }

LABEL_22:
    MOLogWrite();
    goto LABEL_23;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1000107C0 && *(qword_1000107C0 + 44) < 3)
    {
      goto LABEL_23;
    }

    objc_opt_class();
    goto LABEL_22;
  }

  v18 = v1;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
LABEL_26:
  v12 = v11;
LABEL_27:

  return v12;
}

id sub_1000035C0(void *a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003678;
  v7[3] = &unk_10000C528;
  v4 = objc_opt_new();
  v8 = v4;
  sub_1000029A8(a1, a2, v7);
  v5 = v4;

  return v5;
}

uint64_t sub_100003684(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4)
{
  [NSMutableArray arrayWithCapacity:10];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000037E4;
  v8 = v10[3] = &unk_10000C550;
  v11 = v8;
  v12 = &v17;
  v13 = v16;
  v14 = a2;
  v15 = a3;
  sub_1000029A8(a1, a4, v10);
  if ([v8 count])
  {
    sub_10000386C(a2, a3, v8, v18[3]);
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);

  return 1;
}

void sub_1000037C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_1000037E4(uint64_t a1)
{
  [*(a1 + 32) addObject:?];
  result = [*(a1 + 32) count];
  if (result == 10)
  {
    sub_10000386C(*(a1 + 56), *(a1 + 64), *(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
    result = [*(a1 + 32) removeAllObjects];
  }

  else if (result == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

void sub_10000386C(void (*a1)(void *, uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
  v11[0] = @"Status";
  v11[1] = @"CurrentIndex";
  v12[0] = @"BrowsingApplications";
  v12[1] = v8;
  v11[2] = @"CurrentAmount";
  v11[3] = @"CurrentList";
  v12[2] = v9;
  v12[3] = v7;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  a1(v10, a2);
}

void sub_100003990(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, unsigned __int8 a9, void *a10, void *a11, void *a12, void *a13, int a14)
{
  v19 = a1;
  v132 = a2;
  v20 = a3;
  v125 = a4;
  v21 = a5;
  v152 = a6;
  v131 = a10;
  v130 = a11;
  v140 = a12;
  v129 = a13;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = v19;
  v22 = [obj countByEnumeratingWithState:&v155 objects:v171 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v156;
    v127 = v21;
    v128 = v20;
    v126 = *v156;
    do
    {
      v25 = 0;
      v133 = v23;
      do
      {
        if (*v156 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v155 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        if (!v20 || ([v26 bundleIdentifier], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v20, "containsObject:", v28), v28, v29))
        {
          v154 = v26;
          v30 = [v26 compatibilityObject];
          v31 = [v30 bundleType];
          v32 = v31;
          if (!v21 || ([v31 isEqualToString:v21] & 1) != 0 || objc_msgSend(v21, "isEqualToString:", @"Any") && ((objc_msgSend(v32, "isEqualToString:", @"System") & 1) != 0 || (objc_msgSend(v32, "isEqualToString:", @"Internal") & 1) != 0 || objc_msgSend(v32, "isEqualToString:", @"User")))
          {
            v153 = v32;
            v33 = [v154 isLaunchProhibited] ^ 1 | a9;
            v34 = [v154 appClipMetadata];

            v35 = v34 ? a7 : 1;
            v36 = [v154 isSwiftPlaygroundsApp] ^ 1 | a8;
            v37 = v33 == 1;
            v32 = v153;
            v37 = !v37 || v35 == 0;
            if (!v37 && v36 != 0)
            {
              v147 = v27;
              v148 = v25;
              v39 = [NSMutableDictionary dictionaryWithCapacity:0];
              v151 = v30;
              v40 = v30;
              v41 = v39;
              v42 = v130;
              v43 = v129;
              v44 = v152;
              v45 = v131;
              v46 = objc_autoreleasePoolPush();
              v47 = v46;
              v142 = v44;
              v145 = v45;
              if (v131)
              {
                context = v46;
                v136 = v43;
                v138 = v42;
                v174 = 0u;
                v175 = 0u;
                v172 = 0u;
                v173 = 0u;
                v48 = v45;
                v49 = [v48 countByEnumeratingWithState:&v172 objects:v176 count:16];
                if (v49)
                {
                  v50 = v49;
                  v51 = *v173;
                  do
                  {
                    v52 = 0;
                    do
                    {
                      if (*v173 != v51)
                      {
                        objc_enumerationMutation(v48);
                      }

                      v53 = *(*(&v172 + 1) + 8 * v52);
                      v54 = v40;
                      v55 = v41;
                      v56 = v53;
                      if (qword_100010818 != -1)
                      {
                        sub_100005B90();
                      }

                      v57 = [qword_100010810 indexForKey:{v56, v119}];
                      if (v57 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                        {
                          v119 = v56;
                          MOLogWrite();
                        }
                      }

                      else
                      {
                        v58 = &off_1000102E0 + 4 * v57;

                        sub_100005534(v58, v54, v55);
                      }

                      v52 = v52 + 1;
                    }

                    while (v50 != v52);
                    v50 = [v48 countByEnumeratingWithState:&v172 objects:v176 count:16];
                  }

                  while (v50);
                }

                v43 = v136;
                v42 = v138;
                v44 = v142;
                v47 = context;
              }

              else
              {
                v59 = &off_1000102E0;
                v60 = 37;
                do
                {
                  sub_100005534(v59, v40, v41);
                  v59 += 4;
                  --v60;
                }

                while (v60);
              }

              objc_autoreleasePoolPop(v47);
              if (!v152 || [v44 count])
              {
                v61 = [v40 bundleURL];
                v62 = v44;
                pthread_mutex_lock(&stru_100010780);
                Unique = _CFBundleCreateUnique();
                if (Unique)
                {
                  v64 = Unique;
                  if (v152)
                  {
                    FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
                    if (FilteredInfoPlist)
                    {
                      v66 = FilteredInfoPlist;
                      TypeID = CFDictionaryGetTypeID();
                      if (TypeID == CFGetTypeID(v66))
                      {
                        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v66);
                        CFRelease(v66);
                        goto LABEL_68;
                      }

                      v71 = CFGetTypeID(v66);
                      v72 = CFCopyTypeIDDescription(v71);
                      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                      {
                        v119 = v72;
                        MOLogWrite();
                      }

                      if (v72)
                      {
                        CFRelease(v72);
                      }

                      CFRelease(v66);
                    }

                    else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                    {
                      v119 = v62;
                      v120 = v64;
                      MOLogWrite();
                    }

                    MutableCopy = 0;
LABEL_68:
                    v44 = v142;
                  }

                  else
                  {
                    InfoDictionary = CFBundleGetInfoDictionary(Unique);
                    if (InfoDictionary)
                    {
                      v70 = CFDictionaryCreateMutableCopy(0, 0, InfoDictionary);
                      MutableCopy = v70;
                      if (v70)
                      {
                        [(__CFDictionary *)v70 removeObjectForKey:@"CFBundleInfoPlistURL"];
                      }
                    }

                    else
                    {
                      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                      {
                        v119 = v61;
                        MOLogWrite();
                      }

                      MutableCopy = 0;
                    }
                  }

                  CFRelease(v64);
                }

                else
                {
                  if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                  {
                    v119 = v61;
                    MOLogWrite();
                  }

                  MutableCopy = 0;
                }

                pthread_mutex_unlock(&stru_100010780);

                if (MutableCopy)
                {
                  *&v163 = _NSConcreteStackBlock;
                  *(&v163 + 1) = 3221225472;
                  *&v164 = sub_1000057AC;
                  *(&v164 + 1) = &unk_10000C6D0;
                  *&v165 = v42;
                  *(&v165 + 1) = v43;
                  *&v166 = v41;
                  [(__CFDictionary *)MutableCopy enumerateKeysAndObjectsUsingBlock:&v163];
                }
              }

              v73 = [v154 bundleIdentifier];
              v74 = v41;
              v75 = v132;
              v76 = v140;
              v163 = 0u;
              v164 = 0u;
              v165 = 0u;
              v166 = 0u;
              v77 = v75;
              v78 = [v77 countByEnumeratingWithState:&v163 objects:v176 count:16];
              if (v78)
              {
                v79 = v78;
                v80 = *v164;
                while (2)
                {
                  for (i = 0; i != v79; i = i + 1)
                  {
                    if (*v164 != v80)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v82 = [v74 objectForKeyedSubscript:{*(*(&v163 + 1) + 8 * i), v119}];

                    if (!v82)
                    {

                      v21 = v127;
                      v20 = v128;
                      v23 = v133;
                      v30 = v151;
                      goto LABEL_109;
                    }
                  }

                  v79 = [v77 countByEnumeratingWithState:&v163 objects:v176 count:16];
                  if (v79)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (!v140)
              {
                goto LABEL_107;
              }

              v161 = 0u;
              v162 = 0u;
              v159 = 0u;
              v160 = 0u;
              v83 = [v74 allKeys];
              v84 = [v83 countByEnumeratingWithState:&v159 objects:&v172 count:16];
              if (v84)
              {
                v85 = v84;
                v86 = *v160;
                do
                {
                  for (j = 0; j != v85; j = j + 1)
                  {
                    if (*v160 != v86)
                    {
                      objc_enumerationMutation(v83);
                    }

                    v88 = *(*(&v159 + 1) + 8 * j);
                    if (([v76 containsObject:{v88, v119}] & 1) == 0)
                    {
                      [v74 removeObjectForKey:v88];
                    }
                  }

                  v85 = [v83 countByEnumeratingWithState:&v159 objects:&v172 count:16];
                }

                while (v85);
              }

              if (a14)
              {
                v89 = [LSApplicationProxy applicationProxyForIdentifier:v73];
                v90 = [v89 bundleContainerURL];
                v30 = v151;
                if ([v89 isContainerized] && v90)
                {
                  v91 = a14;
                  if ((a14 & 1) != 0 && (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3))
                  {
                    MOLogWrite();
                  }

                  if ((a14 & 4) != 0)
                  {
                    v93 = [v89 diskUsage];
                    v94 = [v93 staticUsage];

                    if (v94)
                    {
                      [v74 setObject:v94 forKey:@"StaticDiskUsage"];
                    }

                    else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                    {
                      v119 = [v89 bundleIdentifier];
                      MOLogWrite();
                    }

                    v30 = v151;
                    if ((a14 & 2) != 0)
                    {
                      goto LABEL_123;
                    }

LABEL_100:
                    if ((a14 & 8) == 0)
                    {
                      goto LABEL_101;
                    }

LABEL_129:
                    v97 = [v89 bundleURL];
                    v98 = [v89 bundleExecutable];
                    [NSString stringWithFormat:@"SC_Info/%@.sinf", v98];
                    v100 = v99 = v90;
                    v101 = [v97 URLByAppendingPathComponent:v100];
                    sub_1000058DC(v101, v74, @"ApplicationSINF");

                    v90 = v99;
                    v91 = a14;

                    v30 = v151;
                    if ((a14 & 0x10) != 0)
                    {
                      goto LABEL_130;
                    }

LABEL_102:
                    if ((v91 & 0x20) != 0)
                    {
                      goto LABEL_157;
                    }
                  }

                  else
                  {
                    if ((a14 & 2) == 0)
                    {
                      goto LABEL_100;
                    }

LABEL_123:
                    v95 = [v89 diskUsage];
                    v96 = [v95 dynamicUsage];

                    if (v96)
                    {
                      [v74 setObject:v96 forKey:@"DynamicDiskUsage"];
                    }

                    else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                    {
                      v119 = [v89 bundleIdentifier];
                      MOLogWrite();
                    }

                    v30 = v151;
                    if ((a14 & 8) != 0)
                    {
                      goto LABEL_129;
                    }

LABEL_101:
                    if ((a14 & 0x10) == 0)
                    {
                      goto LABEL_102;
                    }

LABEL_130:
                    v102 = [v90 URLByAppendingPathComponent:{@"iTunesMetadata.plist", v119}];
                    v103 = v89;
                    v104 = v102;
                    v137 = v103;
                    v139 = v74;
                    v146 = [v103 bundleIdentifier];
                    v170 = 0;
                    v105 = [NSData dataWithContentsOfURL:v104 options:3 error:&v170];
                    v106 = v170;
                    v107 = v106;
                    if (v105)
                    {
                      contexta = v104;
                      v168 = 0;
                      v169 = 100;
                      v108 = [NSPropertyListSerialization propertyListWithData:v105 options:1 format:&v169 error:&v168];
                      v124 = v168;

                      if (v108)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                          {
                            v123 = [contexta path];
                            v116 = objc_opt_class();
                            NSStringFromClass(v116);
                            v121 = v120 = v146;
                            v119 = v123;
                            MOLogWrite();
                          }

                          goto LABEL_154;
                        }

                        v143 = v108;
                        v109 = [v108 objectForKeyedSubscript:@"title"];

                        if (v109)
                        {
                          goto LABEL_138;
                        }

                        v110 = [v137 localizedShortName];
                        if (!v110)
                        {
                          v110 = [v137 localizedName];
                        }

                        [v143 setObject:v110 forKeyedSubscript:@"title"];
                        v167 = 0;
                        v111 = [NSPropertyListSerialization dataWithPropertyList:v143 format:v169 options:0 error:&v167];
                        v122 = v167;

                        if (v111)
                        {

                          v105 = v111;
                          v124 = v122;
LABEL_138:
                          [v139 setObject:v105 forKey:@"iTunesMetadata"];
                          v108 = v143;
LABEL_154:
                          v107 = v124;
                        }

                        else
                        {
                          if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                          {
                            v119 = v146;
                            v120 = v122;
                            MOLogWrite();
                          }

                          v105 = 0;
                          v107 = v122;
                          v108 = v143;
                        }
                      }

                      else
                      {
                        if (qword_1000107C0 && *(qword_1000107C0 + 44) < 3)
                        {
                          goto LABEL_154;
                        }

                        v107 = v124;
                        v119 = v146;
                        v120 = v124;
                        MOLogWrite();
                      }

                      v104 = contexta;
                    }

                    else
                    {
                      if (v106)
                      {
                        v112 = [v106 domain];
                        if ([v112 isEqualToString:NSCocoaErrorDomain])
                        {
                          v144 = v89;
                          v113 = v91;
                          v114 = v90;
                          v115 = [v107 code];

                          v37 = v115 == 260;
                          v90 = v114;
                          v91 = v113;
                          v89 = v144;
                          if (v37)
                          {
                            goto LABEL_156;
                          }
                        }

                        else
                        {
                        }
                      }

                      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
                      {
                        v120 = v104;
                        v121 = v107;
                        v119 = v146;
                        MOLogWrite();
                      }
                    }

LABEL_156:

                    v30 = v151;
                    if ((v91 & 0x20) != 0)
                    {
LABEL_157:
                      v117 = [v90 URLByAppendingPathComponent:{@"iTunesArtwork", v119, v120, v121}];
                      sub_1000058DC(v117, v74, @"iTunesArtwork");

                      v30 = v151;
                      if ((v91 & 0x40) == 0)
                      {
                        goto LABEL_105;
                      }

LABEL_104:
                      v92 = [v90 URLByAppendingPathComponent:{@"GeoJSON", v119}];
                      sub_1000058DC(v92, v74, @"GeoJSON");

                      v30 = v151;
                      goto LABEL_105;
                    }
                  }

                  if ((v91 & 0x40) == 0)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_104;
                }

LABEL_105:
              }

              else
              {
LABEL_107:

                v30 = v151;
              }

              v73 = [v154 bundleIdentifier];
              v125[2](v125, v73, v74);
              v21 = v127;
              v20 = v128;
              v23 = v133;
LABEL_109:
              v32 = v153;

              v24 = v126;
              v27 = v147;
              v25 = v148;
            }
          }
        }

        objc_autoreleasePoolPop(v27);
        v25 = v25 + 1;
      }

      while (v25 != v23);
      v118 = [obj countByEnumeratingWithState:&v155 objects:v171 count:16];
      v23 = v118;
    }

    while (v118);
  }
}

void sub_100004A3C(id a1)
{
  v4 = [NSMutableSet setWithCapacity:37];
  for (i = 0; i != 1184; i += 32)
  {
    [v4 addObject:**(&off_1000102E0 + i)];
  }

  v2 = [v4 copy];
  v3 = qword_1000107D8;
  qword_1000107D8 = v2;
}

id sub_100004AD8(id *a1)
{
  v1 = *a1;
  v2 = [*a1 count];
  if (v2)
  {
    v2 = v1;
  }

  return v2;
}

id sub_100004B18(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v3 = [NSNumber numberWithBool:1, v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100004B78(id *a1)
{
  v1 = *a1;
  v2 = [*a1 count];
  if (v2)
  {
    v2 = v1;
  }

  return v2;
}

void *sub_100004BB8(void *a1)
{
  v1 = a1;
  v2 = [v1 entitlementValueForKey:@"com.apple.private.mobileinstall.upgrade-enabled" ofClass:objc_opt_class()];
  v3 = [v2 BOOLValue];
  v4 = [v1 bundleType];

  v5 = &__kCFBooleanTrue;
  if (([v4 isEqualToString:@"User"] & 1) == 0 && ((objc_msgSend(v4, "isEqualToString:", @"VPNPlugin") | v3) & 1) == 0)
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

id sub_100004C78(id *a1)
{
  v1 = [*a1 longLongValue];
  if (v1)
  {
    v1 = [NSNumber numberWithLongLong:v1];
  }

  return v1;
}

id sub_100004CBC(id *a1)
{
  v1 = *a1;
  v2 = [*a1 count];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v1 count]);
    v4 = v3;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = v6;
    v8 = *v18;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v16}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [NSURL URLWithString:v11];
LABEL_11:
          v13 = v12;
          if ([v12 isFileURL])
          {
            v14 = [v13 path];
            [v3 setObject:v14 forKeyedSubscript:v10];
          }

          else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
          {
            v16 = v13;
            MOLogWrite();
          }

          goto LABEL_20;
        }

        if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
        {
          MOLogWrite();
        }

        v13 = 0;
LABEL_20:
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v7)
      {
LABEL_22:

        v2 = v3;
        break;
      }
    }
  }

  return v2;
}

id sub_100004F20(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = [v1 objectForInfoDictionaryKey:@"SBMatchingApplicationGenres" ofClass:v2 valuesOfClass:objc_opt_class()];

  return v3;
}

id sub_100004F9C(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForInfoDictionaryKey:@"LSApplicationCategoryType" ofClass:objc_opt_class()];

  return v2;
}

void *sub_100005004(void *a1)
{
  v1 = a1;
  v2 = [v1 appState];
  if ([v2 isPlaceholder])
  {
    if ([v1 installType] == 7)
    {

LABEL_7:
      v3 = &__kCFBooleanTrue;
      goto LABEL_8;
    }

    v4 = [v1 installType];

    if (v4 == 8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v3 = &__kCFBooleanFalse;
LABEL_8:

  return v3;
}

void *sub_100005094(void *a1)
{
  v1 = a1;
  v2 = [LSApplicationRecord alloc];
  v3 = [v1 bundleIdentifier];
  v10 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;

  if (!v4)
  {
    if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {
      v9 = [v1 bundleIdentifier];
      MOLogWrite();
    }

    goto LABEL_7;
  }

  v6 = [v4 appClipMetadata];

  if (!v6)
  {
LABEL_7:
    v7 = &__kCFBooleanFalse;
    goto LABEL_8;
  }

  v7 = &__kCFBooleanTrue;
LABEL_8:

  return v7;
}

void *sub_1000051AC(void *a1)
{
  v1 = a1;
  if (qword_1000107F8 != -1)
  {
    sub_100005BB8();
  }

  v2 = [v1 bundleIdentifier];
  v3 = [v1 managedPersonas];
  v4 = v3;
  if (!v3 || ![v3 count])
  {
LABEL_13:
    v12 = 0;
    v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v2 allowPlaceholder:1 error:&v12];
    v7 = v12;
    if (v6)
    {
      v8 = [v6 appClipMetadata];

      if (v8 || ([v6 managementDomain], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasPrefix:", @"swift-playgrounds"), v9, (v10 & 1) != 0))
      {
        v5 = &__kCFBooleanFalse;
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {
      MOLogWrite();
    }

    v5 = &__kCFBooleanTrue;
    goto LABEL_21;
  }

  if (!qword_1000107E8 || !qword_1000107F0)
  {
    if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_13;
  }

  if ([v4 containsObject:?] & 1) != 0 || (objc_msgSend(v4, "containsObject:", qword_1000107F0))
  {
    goto LABEL_13;
  }

  v5 = &__kCFBooleanFalse;
LABEL_22:

  return v5;
}

void sub_100005388(id a1)
{
  v1 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v2 = [v1 userPersonaUniqueString];
  v3 = qword_1000107E8;
  qword_1000107E8 = v2;

  if (!qword_1000107E8 && (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3))
  {
    MOLogWrite();
  }

  v4 = [UMUserPersonaAttributes personaAttributesForPersonaType:3];
  v5 = [v4 userPersonaUniqueString];
  v6 = qword_1000107F0;
  qword_1000107F0 = v5;

  if (!qword_1000107F0 && (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3))
  {

    MOLogWrite();
  }
}

void sub_1000054A4(id a1)
{
  qword_100010800 = [NSSet setWithObjects:@"SharedDirSize", @"DynamicDiskUsage", @"StaticDiskUsage", @"ApplicationSINF", @"iTunesArtwork", @"GeoJSON", @"iTunesMetadata", 0];

  _objc_release_x1();
}

void sub_100005534(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = v6(v24);
    v8 = v7;
    v9 = 0;
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_3;
  }

  v10 = [NSString stringWithUTF8String:*(a1 + 8)];
  v11 = NSSelectorFromString(v10);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (qword_1000107C0 && *(qword_1000107C0 + 44) < 3)
    {
      goto LABEL_17;
    }

    v23 = *(a1 + 8);
    goto LABEL_16;
  }

  v12 = [v24 methodSignatureForSelector:v11];
  if (!v12)
  {
    if (qword_1000107C0 && *(qword_1000107C0 + 44) < 3)
    {
      goto LABEL_17;
    }

    v21 = *(a1 + 8);
LABEL_16:
    MOLogWrite();
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [NSInvocation invocationWithMethodSignature:v12];
  [v14 setSelector:v11];
  [v14 invokeWithTarget:v24];
  v9 = malloc_type_malloc([v13 methodReturnLength], 0x1A3B06E9uLL);
  [v14 getReturnValue:v9];
  v15 = *(a1 + 16);
  if (v15)
  {
    v7 = v15(v9);
    v16 = v7;
  }

  else
  {
    v17 = [v13 methodReturnType];
    v18 = *v17;
    if (v18 == 64)
    {
      v19 = -v17[1];
    }

    else
    {
      v19 = 64 - v18;
    }

    if (v19)
    {
      if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
      {
        v22 = *(a1 + 8);
        MOLogWrite();
      }

      goto LABEL_18;
    }

    v7 = *v9;
    v20 = *v9;
  }

  if (v7)
  {
LABEL_3:
    [v5 setObject:v7 forKey:**a1];
  }

LABEL_18:
  free(v9);
}

void sub_1000057AC(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (([a1[4] containsObject:v8] & 1) == 0 && (objc_msgSend(a1[5], "containsObject:", v8) & 1) == 0)
  {
    [a1[6] setValue:v7 forKey:v8];
  }

  *a4 = 0;
}

void sub_100005840(id a1)
{
  v4 = [NSMutableArray arrayWithCapacity:37];
  for (i = 0; i != 1184; i += 32)
  {
    [v4 addObject:**(&off_1000102E0 + i)];
  }

  v2 = [[NSKnownKeysMappingStrategy alloc] initForKeys:v4];
  v3 = qword_100010810;
  qword_100010810 = v2;
}

void sub_1000058DC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v13 = 0;
  v8 = [NSData dataWithContentsOfURL:v5 options:2 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    [v6 setObject:v8 forKey:v7];
  }

  else
  {
    if (v9)
    {
      v11 = [v9 domain];
      if ([v11 isEqualToString:NSCocoaErrorDomain])
      {
        v12 = [v10 code];

        if (v12 == 260)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    if (!qword_1000107C0 || *(qword_1000107C0 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

LABEL_11:
}

void sub_100005A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(*(a2 + 56) + 8);
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unsupported uninstall option %@ in %@ (client: %@)", &v4, 0x20u);
}

void sub_100005ADC(uint64_t a1, uint64_t a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unsupported value for %@ : %@", &v2, 0x16u);
}