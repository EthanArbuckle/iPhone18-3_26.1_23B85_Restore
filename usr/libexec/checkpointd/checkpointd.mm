void start()
{
  MOXPCTransportOpen();
  MOXPCTransportSetMessageHandler();
  MOXPCTransportResume();
  dispatch_main();
}

void sub_100000BDC(id a1, OS_xpc_object *a2, __CFDictionary *a3)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"command"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0xFFFFFFFFLL;
LABEL_8:
    v19 = objc_autoreleasePoolPush();
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    v21 = [v20 lastPathComponent];

    v22 = [NSString stringWithFormat:@"%@:%d: unknown command %d", v21, 437, v9];
    syslog(5, "%s", [v22 UTF8String]);

    v23 = v19;
LABEL_9:
    objc_autoreleasePoolPop(v23);
LABEL_10:
    v24 = +[NSDictionary dictionary];
    goto LABEL_11;
  }

  v8 = [v7 intValue];
  if (v8 == 1)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    v27 = [v26 lastPathComponent];

    v28 = [NSString stringWithFormat:@"%@:%d: shutting down...", v27, 427];
    syslog(5, "%s", [v28 UTF8String]);

    objc_autoreleasePoolPop(v25);
    v29 = dispatch_time(0, 2000000000);
    dispatch_after(v29, &_dispatch_main_q, &stru_10005C270);
    goto LABEL_10;
  }

  v9 = v8;
  if (v8)
  {
    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
  v12 = [v11 lastPathComponent];

  v13 = [NSString stringWithFormat:@"%@:%d: rebuilding checkpoint", v12, 401];
  syslog(5, "%s", [v13 UTF8String]);

  objc_autoreleasePoolPop(v10);
  v14 = objc_autoreleasePoolPush();
  v15 = +[NSMutableDictionary dictionary];
  v16 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/Checkpoint.xml"];
  if (!v16)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    [v31 lastPathComponent];
    v33 = v32 = v14;

    v34 = [NSString stringWithFormat:@"%@:%d: failed to create dictionary from %s", v33, 339, "/System/Library/CoreServices/Checkpoint.xml"];
    syslog(5, "%s", [v34 UTF8String]);

    objc_autoreleasePoolPop(v30);
    v23 = v32;
    goto LABEL_9;
  }

  v17 = v16;
  v18 = +[FigCheckpointSupport makeDictionary];
  v144 = v18;
  v145 = v14;
  if (v18)
  {
    [v17 addEntriesFromDictionary:v18];
  }

  else
  {
    contexta = objc_autoreleasePoolPush();
    v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    v36 = [v35 lastPathComponent];

    v37 = [NSString stringWithFormat:@"%@:%d: no checkpoint info from EmbeddedMedia", v36, 348];
    syslog(5, "%s", [v37 UTF8String]);

    objc_autoreleasePoolPop(contexta);
  }

  v146 = v7;
  [v17 setObject:v15 forKeyedSubscript:@"__removals__"];
  v38 = v17;
  v39 = MGCopyAnswer();
  v40 = v39;
  if (v39)
  {
    v41 = [v39 intValue];
  }

  else
  {
    v41 = -1;
  }

  v163 = 0u;
  v164 = 0u;
  LOBYTE(v163) = v41 == 5;
  BYTE1(v163) = v41 == 3;
  BYTE2(v163) = v41 == 1;
  v42 = MGCopyAnswer();
  v43 = v42;
  if (v42)
  {
    v44 = [v42 intValue] != 0;
  }

  else
  {
    v44 = 0;
  }

  BYTE6(v163) = v44;
  v45 = MGCopyAnswer();
  v46 = v45;
  if (v45)
  {
    v47 = [v45 intValue] > 1;
  }

  else
  {
    v47 = 0;
  }

  BYTE7(v163) = v47;
  v48 = MGCopyAnswer();
  v49 = v48;
  if (v48)
  {
    v50 = [v48 intValue] != 0;
  }

  else
  {
    v50 = 0;
  }

  BYTE8(v163) = v50;
  if (v41 == 1)
  {
    v51 = 1;
  }

  else
  {
    v52 = MGCopyAnswer();
    v53 = v52;
    if (v52)
    {
      v51 = [v52 intValue] != 0;
    }

    else
    {
      v51 = 0;
    }
  }

  BYTE9(v163) = v51;
  v54 = MGCopyAnswer();
  v55 = v54;
  if (v54)
  {
    v56 = [v54 intValue];
  }

  else
  {
    v56 = 0;
  }

  HIDWORD(v163) = v56;
  v57 = MGCopyAnswer();
  v58 = v57;
  if (v57)
  {
    v59 = [v57 intValue];
  }

  else
  {
    v59 = -1;
  }

  LODWORD(v164) = v59;
  BYTE3(v163) = v59 == 5;
  BYTE4(v163) = v59 == 8;
  BYTE5(v163) = v59 == 9;
  v60 = MGCopyAnswer();
  if (v60)
  {
    v61 = v60;
    v165.length = CFStringGetLength(v60);
    v165.location = 0;
    CFStringGetBytes(v61, v165, 0x600u, 0, 0, &v164 + 4, 10, 0);
    CFRelease(v61);
    if (BYTE4(v164))
    {
      v62 = [NSString stringWithCString:&v164 + 4 encoding:1];
      [v38 setObject:v62 forKeyedSubscript:@"MinITunesVersion"];
    }
  }

  if (BYTE6(v163) == 1)
  {
    [v38 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SupportsCarrierBundleInstall"];
  }

  obj = v15;
  if ((v163 & 1) == 0)
  {
    v155 = 0;
    sub_1000328CC(&v155 + 4, &v155);
    if (v63)
    {
      v64 = v63;
      v65 = objc_autoreleasePoolPush();
      v66 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
      [v66 lastPathComponent];
      v68 = v67 = v38;

      v69 = [NSString stringWithFormat:@"%@:%d: Can't get stuff: %d", v68, 120, v64, v144, v145];
      syslog(5, "%s", [v69 UTF8String]);

      v38 = v67;
      objc_autoreleasePoolPop(v65);
    }

    else
    {
      v70 = [NSNumber numberWithInt:HIDWORD(v155)];
      [v38 setObject:v70 forKeyedSubscript:@"FairPlayDeviceType"];

      v71 = [NSNumber numberWithInt:v155];
      [v38 setObject:v71 forKeyedSubscript:@"KeyTypeSupportVersion"];
    }

    sub_100048BF0();
    if (v72)
    {
      v73 = v72;
      v74 = objc_autoreleasePoolPush();
      v75 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
      [v75 lastPathComponent];
      v77 = v76 = v38;

      v78 = [NSString stringWithFormat:@"%@:%d: Can't get CB stuff: %d", v77, 127, v73];
      syslog(5, "%s", [v78 UTF8String]);

      v38 = v76;
      objc_autoreleasePoolPop(v74);
    }

    else
    {
      v79 = [NSNumber numberWithInt:0];
      [v38 setObject:v79 forKeyedSubscript:@"FairPlayCBMinVersion"];

      v80 = [NSNumber numberWithInt:0];
      [v38 setObject:v80 forKeyedSubscript:@"FairPlayCBMaxVersion"];
    }
  }

  if (HIDWORD(v163))
  {
    v81 = [NSNumber numberWithInt:?];
    [v38 setObject:v81 forKeyedSubscript:@"FamilyID"];
  }

  v82 = MGCopyAnswer();
  if (v82)
  {
    v83 = v82;
    [v38 setObject:v82 forKeyedSubscript:@"ScreenWidth"];
  }

  v84 = MGCopyAnswer();
  if (v84)
  {
    v85 = v84;
    [v38 setObject:v84 forKeyedSubscript:@"ScreenHeight"];
  }

  v86 = MGCopyAnswer();
  if (v86)
  {
    v87 = v86;
    [v38 setObject:v86 forKeyedSubscript:@"ScreenScaleFactor"];
  }

  if (BYTE1(v163))
  {
    [v38 setObject:&off_1000620D0 forKeyedSubscript:@"HomeScreenIconWidth"];
    [v38 setObject:&off_1000620D0 forKeyedSubscript:@"HomeScreenIconHeight"];
    v88 = &off_1000620A0;
LABEL_63:
    v89 = &off_100062088;
    goto LABEL_64;
  }

  [v38 setObject:&off_100062070 forKeyedSubscript:@"HomeScreenIconWidth"];
  [v38 setObject:&off_100062070 forKeyedSubscript:@"HomeScreenIconHeight"];
  if (BYTE3(v163))
  {
    v88 = &off_1000620B8;
    goto LABEL_63;
  }

  v88 = &off_1000620B8;
  v89 = &off_1000620A0;
  if ((BYTE4(v163) & 1) == 0 && !BYTE5(v163))
  {
    v89 = &off_1000620B8;
  }

LABEL_64:
  [v38 setObject:v89 forKeyedSubscript:@"HomeScreenIconRows"];
  [v38 setObject:&off_1000620B8 forKeyedSubscript:@"HomeScreenIconColumns"];
  [v38 setObject:v88 forKeyedSubscript:@"HomeScreenIconDockMaxCount"];
  if (BYTE1(v163))
  {
    sub_100001FA8(v38, @"AlbumArt", @"3001");
    v90 = @"3002";
    v91 = v38;
    v92 = @"AlbumArt";
  }

  else
  {
    sub_100001FA8(v38, @"AlbumArt", @"3013");
    sub_100001FA8(v38, @"AlbumArt", @"3018");
    sub_100001FA8(v38, @"AlbumArt", @"3019");
    sub_100001FA8(v38, @"AlbumArt", @"3020");
    sub_100001FA8(v38, @"AlbumArt", @"3021");
    v92 = @"ChapterImageSpecs";
    v91 = v38;
    v90 = @"3013";
  }

  sub_100001FA8(v91, v92, v90);
  if (BYTE7(v163))
  {
    v93 = @"3001";
  }

  else
  {
    v93 = @"3101";
  }

  if (BYTE7(v163))
  {
    v94 = @"3002";
  }

  else
  {
    v94 = @"3102";
  }

  if (BYTE7(v163))
  {
    v95 = @"3005";
  }

  else
  {
    v95 = @"3105";
  }

  if (BYTE7(v163))
  {
    v96 = @"3006";
  }

  else
  {
    v96 = @"3106";
  }

  if (BYTE7(v163))
  {
    v97 = @"3007";
  }

  else
  {
    v97 = @"3107";
  }

  if (BYTE7(v163))
  {
    v98 = @"3012";
  }

  else
  {
    v98 = @"3112";
  }

  sub_100001FA8(v38, @"AlbumArt", v93);
  sub_100001FA8(v38, @"AlbumArt", v94);
  sub_100001FA8(v38, @"AlbumArt", v95);
  sub_100001FA8(v38, @"AlbumArt", v96);
  sub_100001FA8(v38, @"AlbumArt", v97);
  sub_100001FA8(v38, @"ChapterImageSpecs", v98);
  sub_100001FA8(v38, @"ChapterImageSpecs", v95);
  v147 = v6;
  v148 = v5;
  v149 = v4;
  if (BYTE7(v163) == 1)
  {
    v99 = @"4040";
    v100 = @"4032";
    v101 = @"3041";
    v102 = @"3034";
    v103 = @"4036";
    v104 = obj;
    if (BYTE1(v163))
    {
      v105 = @"4035";
      goto LABEL_98;
    }

    v105 = @"4140";
    v106 = @"4132";
    v107 = @"4037";
    goto LABEL_96;
  }

  v104 = obj;
  if ((BYTE1(v163) & 1) == 0)
  {
    sub_100001FA8(v38, @"ImageSpecifications", @"4040");
    v99 = @"4140";
    v100 = @"4132";
    v101 = @"4131";
    v102 = @"3141";
    v103 = @"3143";
    v105 = @"4037";
    v106 = @"4035";
    v107 = @"4032";
LABEL_96:
    sub_100001FA8(v38, @"ImageSpecifications", v107);
    goto LABEL_97;
  }

  v99 = @"4140";
  v100 = @"4132";
  v101 = @"4131";
  v102 = @"3141";
  v103 = @"3143";
  v105 = @"4037";
  v106 = @"4036";
LABEL_97:
  sub_100001FA8(v38, @"ImageSpecifications", v106);
LABEL_98:
  sub_100001FA8(v38, @"ImageSpecifications", v105);
  sub_100001FA8(v38, @"ImageSpecifications", v103);
  sub_100001FA8(v38, @"ImageSpecifications", v102);
  sub_100001FA8(v38, @"ImageSpecifications", v101);
  sub_100001FA8(v38, @"ImageSpecifications", v100);
  sub_100001FA8(v38, @"ImageSpecifications", v99);
  if ((BYTE8(v163) & 1) == 0)
  {
    v108 = [v38 objectForKeyedSubscript:@"ImageSpecifications"];
    v109 = v108;
    if (v108)
    {
      v110 = [v108 count];
      if (v110)
      {
        v111 = v110;
        v112 = v104;
        v113 = v38;
        v114 = 0;
        v115 = 0;
        do
        {
          v116 = v115;
          v115 = [v109 objectAtIndex:v114];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v115 removeObjectForKey:@"PreserveSourceColorSpace"];
          }

          ++v114;
        }

        while (v111 != v114);

        v38 = v113;
        v104 = v112;
      }

      [v38 setObject:v109 forKeyedSubscript:@"ImageSpecifications"];
    }
  }

  if (BYTE9(v163) == 1)
  {
    [v38 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Ringtones"];
  }

  v117 = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 1);
  if (!v117)
  {
    v120 = objc_autoreleasePoolPush();
    v121 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    v122 = [v121 lastPathComponent];

    [NSString stringWithFormat:@"%@:%d: couldn't dlopen UIKit", v122, 322];
    v124 = LABEL_116:;
    syslog(5, "%s", [v124 UTF8String]);

    objc_autoreleasePoolPop(v120);
    goto LABEL_119;
  }

  v118 = dlsym(v117, "UIKeyboardGetSupportedInputModes");
  if (!v118)
  {
    v120 = objc_autoreleasePoolPush();
    v123 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    v122 = [v123 lastPathComponent];

    [NSString stringWithFormat:@"%@:%d: couldn't look up UIKeyboardGetSupportedInputModes", v122, 319];
    goto LABEL_116;
  }

  v119 = v118();
  if (v119)
  {
    [v38 setObject:v119 forKeyedSubscript:@"SupportedKeyboards"];
  }

  else
  {
    v125 = objc_autoreleasePoolPush();
    v126 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
    [v126 lastPathComponent];
    v128 = v127 = v38;

    v129 = [NSString stringWithFormat:@"%@:%d: UIKeyboardGetSupportedInputModes returned NULL", v128, 316];
    syslog(5, "%s", [v129 UTF8String]);

    v38 = v127;
    objc_autoreleasePoolPop(v125);
  }

LABEL_119:
  v161 = 0u;
  v162 = 0u;
  v159 = 0;
  v160 = 0u;
  obja = v104;
  context = [obja countByEnumeratingWithState:&v159 objects:&v158 count:16];
  if (context)
  {
    v150 = *v160;
    do
    {
      for (i = 0; i != context; i = i + 1)
      {
        if (*v160 != v150)
        {
          objc_enumerationMutation(obja);
        }

        v131 = *(*&v159.tv_usec + 8 * i);
        v132 = [obja objectForKeyedSubscript:v131];
        v133 = v38;
        v134 = [v38 objectForKeyedSubscript:v131];
        v135 = +[NSMutableArray array];
        v136 = [v134 count];
        if (v136 >= 1)
        {
          v137 = v136;
          for (j = 0; j < v137; j += 2)
          {
            v139 = [v134 objectAtIndex:j];
            if (([v132 containsObject:v139] & 1) == 0)
            {
              [v135 addObject:v139];
              v140 = [v134 objectAtIndex:j + 1];
              [v135 addObject:v140];
            }
          }
        }

        v38 = v133;
        [v133 setObject:v135 forKey:v131];
      }

      context = [obja countByEnumeratingWithState:&v159 objects:&v158 count:16];
    }

    while (context);
  }

  [v38 removeObjectForKey:@"__removals__"];
  v141 = v38;

  objc_autoreleasePoolPop(v145);
  v142 = [NSPropertyListSerialization dataWithPropertyList:v141 format:200 options:0 error:0];
  v5 = v148;
  v4 = v149;
  v6 = v147;
  if ([v142 writeToFile:@"/var/mobile/Library/Caches/Checkpoint.plist.tmp" atomically:1])
  {
    memset(&v158, 0, sizeof(v158));
    if (!stat("/System/Library/CoreServices/Checkpoint.xml", &v158))
    {
      v159.tv_sec = v158.st_mtimespec.tv_sec;
      *(&v159.tv_usec + 1) = 0;
      v159.tv_usec = SLODWORD(v158.st_mtimespec.tv_nsec) / 1000;
      *&v160 = v158.st_mtimespec.tv_sec;
      *(&v160 + 1) = (SLODWORD(v158.st_mtimespec.tv_nsec) / 1000);
      if (!utimes("/var/mobile/Library/Caches/Checkpoint.plist.tmp", &v159))
      {
        rename("/var/mobile/Library/Caches/Checkpoint.plist.tmp", "/var/mobile/Library/Caches/Checkpoint.plist", v143);
      }
    }
  }

  v156 = @"checkpoint";
  v157 = v141;
  v24 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];

  v7 = v146;
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_11:
  MOXPCTransportSendMessageOnConnection();

  objc_autoreleasePoolPop(v5);
}

void sub_100001F08(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/MobileCheckpoint/checkpointd.m"];
  v3 = [v2 lastPathComponent];

  v4 = [NSString stringWithFormat:@"%@:%d: done", v3, 430];
  syslog(5, "%s", [v4 UTF8String]);

  objc_autoreleasePoolPop(v1);
  exit(0);
}

void sub_100001FA8(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v10 objectForKeyedSubscript:@"__removals__"];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v8 = +[NSMutableSet set];
    v9 = [v10 objectForKeyedSubscript:@"__removals__"];
    [v9 setObject:v8 forKeyedSubscript:v5];
  }

  [v8 addObject:v6];
}

uint64_t sub_1000020A8(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_100002308(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_10000249C(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_100002690(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_100002810(uint64_t a1)
{
  v1 = *(&off_1000610D0 + ((107 * ((qword_100064130 + dword_100064108) ^ 0xF9)) ^ byte_10004D1E0[byte_10005A5B0[(107 * ((qword_100064130 + dword_100064108) ^ 0xF9))] ^ 0x75]) + 28);
  v2 = 107 * ((qword_100064130 + *v1) ^ 0xF9);
  v3 = *(&off_1000610D0 + (byte_10004D4E8[(byte_10005A7B8[v2 - 8] ^ 0x33) - 8] ^ v2) - 25);
  v4 = &v6[*(v3 - 4) - *v1];
  *v1 = 1010482283 * v4 - 0x29E5798DF8B489EDLL;
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7 = a1;
  v8 = (143681137 * ((&v7 - 490642394 - 2 * (&v7 & 0xE2C16426)) ^ 0x8399EFF6)) ^ 0x3E3;
  LOBYTE(v3) = 107 * ((*(v3 - 4) + *v1) ^ 0xF9);
  (*(*(&off_1000610D0 + ((107 * (dword_100064108 ^ 0xF9 ^ qword_100064130)) ^ byte_100052980[byte_10004D2E0[(107 * (dword_100064108 ^ 0xF9 ^ qword_100064130))] ^ 0xB7]) + 58) + (byte_100052980[byte_10004D2E8[v3 - 8] ^ 0xC4] ^ v3) + 1979))(&v7);
  return v9;
}

uint64_t sub_100002B40(uint64_t a1)
{
  v1 = *(&off_1000610D0 + ((107 * (dword_100064148 ^ 0xF9 ^ qword_100064130)) ^ byte_1000577F0[byte_100052B80[(107 * (dword_100064148 ^ 0xF9 ^ qword_100064130))] ^ 0x45]) - 55);
  v2 = *(v1 - 4);
  v3 = *(&off_1000610D0 + (byte_1000577F0[byte_100052B80[(107 * (v2 ^ qword_100064130 ^ 0xF9))] ^ 0x3E] ^ (107 * (v2 ^ qword_100064130 ^ 0xF9))) - 87);
  v4 = 1010482283 * ((*(v3 - 4) - v2) ^ &v6 ^ 0xABAF40B6402B16F9);
  *(v1 - 4) = v4;
  *(v3 - 4) = v4;
  v8 = 1785193651 * (&v7 ^ 0x2CB75BE8) + 669;
  v7 = a1;
  LOBYTE(v3) = 107 * (*(v1 - 4) ^ 0xF9 ^ *(v3 - 4));
  return (*(*(&off_1000610D0 + ((107 * (dword_100064148 ^ 0xF9 ^ qword_100064130)) ^ byte_1000577F0[byte_100052B80[(107 * (dword_100064148 ^ 0xF9 ^ qword_100064130))] ^ 0x3E]) + 31) + (v3 ^ byte_1000577F0[byte_100052B80[v3] ^ 0x3E]) + 2068))(&v7);
}

uint64_t sub_100002E48(uint64_t a1)
{
  v1 = *(&off_1000610D0 + ((107 * (dword_100064110 ^ 0xF9 ^ qword_100064130)) ^ byte_100052980[byte_10004D2E0[(107 * (dword_100064110 ^ 0xF9 ^ qword_100064130))] ^ 0xA0]) - 11);
  v2 = *(v1 - 4);
  v3 = *(&off_1000610D0 + (byte_100052980[byte_10004D2E8[(107 * ((qword_100064130 - v2) ^ 0xF9)) - 8] ^ 0xC4] ^ (107 * ((qword_100064130 - v2) ^ 0xF9))) - 149);
  v4 = v2 ^ &v6 ^ *(v3 - 4);
  *(v1 - 4) = 1010482283 * v4 - 0x5450BF49BFD4E907;
  *(v3 - 4) = 1010482283 * (v4 ^ 0xABAF40B6402B16F9);
  v7 = 1222 - 143681137 * (((&v7 | 0x5BBAFE82) - &v7 + (&v7 & 0xA4450178)) ^ 0x3AE27552);
  v8 = a1;
  LOBYTE(v3) = 107 * (*(v1 - 4) ^ 0xF9 ^ *(v3 - 4));
  return (*(*(&off_1000610D0 + ((107 * (dword_100064110 ^ 0xF9 ^ qword_100064130)) ^ byte_10004D1E0[byte_10005A5B0[(107 * (dword_100064110 ^ 0xF9 ^ qword_100064130))] ^ 0x75]) + 136) + (byte_10004D1EC[(byte_10005A5BC[v3 - 12] ^ 0x74) - 12] ^ v3) + 2141))(&v7);
}

uint64_t sub_1000031F8()
{
  v4 = 50899313 * ((((v3 - 144) | 0x5A3CD886) - ((v3 - 144) & 0x5A3CD886)) ^ 0x925D1CD0);
  *(v3 - 112) = ((v0 | 0x240) + 753) ^ v4;
  *(v3 - 128) = (v8 + 683394823 + (((v0 | 0x240) - 121) | 1)) ^ v4;
  *(v3 - 120) = v2;
  *(v3 - 136) = v6;
  (*(v1 + 8 * ((v0 | 0x240) ^ 0xB89)))(v3 - 144);
  *v7 = v8;
  result = v9;
  *(v9 + 24) = 1982089928;
  return result;
}

void sub_1000032E0()
{
  v0 = *(&off_1000610D0 + ((107 * ((qword_100064130 - dword_100064140) ^ 0xF9)) ^ byte_10004D3E0[byte_10005A6B0[(107 * ((qword_100064130 - dword_100064140) ^ 0xF9))] ^ 0x50]) - 64);
  v1 = *(v0 - 4);
  v2 = *(&off_1000610D0 + (byte_10004D4E0[byte_10005A7B0[(107 * (v1 ^ qword_100064130 ^ 0xF9))] ^ 0x33] ^ (107 * (v1 ^ qword_100064130 ^ 0xF9))) - 25);
  v3 = 1010482283 * (&v7[*(v2 - 4) ^ v1] ^ 0xABAF40B6402B16F9);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  LOBYTE(v3) = 107 * ((v3 - *(v0 - 4)) ^ 0xF9);
  **(&off_1000610D0 + (byte_10004D3E0[byte_10005A6B0[v3] ^ 0x50] ^ v3) - 86) = 1982089928;
  v4 = *(&off_1000610D0 + ((107 * ((qword_100064130 - dword_100064140) ^ 0xF9)) ^ byte_100052980[byte_10004D2E0[(107 * ((qword_100064130 - dword_100064140) ^ 0xF9))] ^ 0xB7]) + 58);
  v5 = (*(v4 + 8 * (((107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9)) ^ byte_10004D4E0[byte_10005A7B0[(107 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xF9))] ^ 0x33]) + 2051)))(512, 0x100004077774924);
  v6 = 107 * (*(v0 - 4) ^ 0xF9 ^ *(v2 - 4));
  *(*(&off_1000610D0 + (byte_10004D1EC[(byte_10005A5BC[v6 - 12] ^ 0x75) - 12] ^ v6) + 123) - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100003540(uint64_t a1)
{
  v8 = (251 * (v5 ^ 0x729u) - 487) & v4;
  *(a1 + v4) = *(v6 + v4) ^ *(v3 + v8) ^ *(v8 + v1 + 2) ^ *(v2 + v8) ^ (125 * v8) ^ 0xC7;
  return (*(v7 + 8 * ((210 * (v4 == 335)) ^ v5)))();
}

uint64_t sub_1000035DC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8.i64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v8.i64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v9.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v9.i64[1] = 0xC7C7C7C7C7C7C7C7;
  v10 = vaddq_s8(vsubq_s8(v6[1], vandq_s8(vaddq_s8(v6[1], v6[1]), v8)), v9);
  *(a2 + v7 - 228) = vaddq_s8(vsubq_s8(*v6, vandq_s8(vaddq_s8(*v6, *v6), v8)), v9);
  *(a2 + v7 - 228 + 16) = v10;
  return (*(v4 + 8 * ((((v3 & 0x60) != 32) * (103 * (v2 ^ (v5 - 7)) - 704)) ^ (a1 + v2 + 1442))))();
}

uint64_t sub_10000365C()
{
  STACK[0x358] = v0 - 1824;
  LODWORD(STACK[0x3AC]) = v2;
  return (*(v3 + 8 * (((((v1 - 1924) | 0x480) ^ (v1 - 194822239) & 0xB9CBDF7 ^ 0x1B6) * (STACK[0x458] == 0)) ^ (v1 - 634))))();
}

uint64_t sub_1000036AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = (a5 + v7) > 0xD0815DCC;
  if ((v5 + 415101360) < 0x2F7EA233 == v8)
  {
    v8 = (((a2 - 771) | 0x11) ^ 0x2F7EA6A0u) + a5 + v7 > v5 + 415101360;
  }

  return (*(v6 + 8 * ((v8 * ((6 * (a2 ^ 0x776)) ^ 0x5A0)) | a2)))();
}

uint64_t sub_100003CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, int a12)
{
  v16 = *(v12 + 16);
  v17 = 1785193651 * ((2 * (&a9 & 0x619C1130) - &a9 + 509865673) ^ 0x32D4B521);
  a9 = v12;
  a10 = v16 - v17 + 57117982;
  a11 = 250455715 - v17;
  a12 = v15 - v17 + 1134;
  v18 = (*(v14 + 8 * (v15 ^ 0x9BA)))(&a9);
  return (*(v14 + 8 * ((1737 * (*(v12 + 24) == (((v15 + 1019) | 0x14) ^ (v13 + 1303)))) ^ v15)))(v18);
}

uint64_t sub_100003E84()
{
  *(v4 - 112) = v3 + ((v4 - 128) ^ 0x9B47F68A) * v2 - 216;
  *(v4 - 128) = v6;
  *(v4 - 120) = v0;
  return (*(v1 + 8 * (v3 ^ 0xDE8)))(v4 - 128);
}

uint64_t sub_100003F88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 1032930960;
  v4 = *(a1 + 12) + 1567287762;
  v5 = v3 < v2 + 1765446626;
  v6 = v3 > v4;
  if (v5 == v4 < 0x693A9AAB)
  {
    v5 = v6;
  }

  return (*(v1 + 8 * ((v5 * ((v2 - 1530) ^ 0xCA)) ^ v2)))();
}

uint64_t sub_100003FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 8) = v3;
  *(a2 + 16) = v2;
  return nullsub_7();
}

uint64_t sub_1000041B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, int8x16_t a10@<Q4>, int8x16_t a11@<Q5>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = (a4 + v20);
  v25 = vaddq_s8(vsubq_s8(v24[1], vandq_s8(vaddq_s8(v24[1], v24[1]), a10)), a11);
  *&STACK[0x274] = vaddq_s8(vsubq_s8(*v24, vandq_s8(vaddq_s8(*v24, *v24), a10)), a11);
  *&STACK[0x284] = v25;
  return (*(v23 + 8 * ((((a9 & 0xB9E917B7 ^ v21) == -5) * v22) ^ a9 & 0xB9E917B7)))(a1, a2, a3, a4, a5, a6, a7, a8, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100004308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v62 = STACK[0x410];
  v63 = LODWORD(STACK[0x2B4]);
  LODWORD(STACK[0x400]) = 1;
  STACK[0x478] = v62;
  STACK[0x288] = a46;
  LODWORD(STACK[0x284]) = -880333533;
  return sub_100009188(a1, a2, a3, a4, a5, a6, a7, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1000043F4@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0x52EF293B) & (2 * (v2 & (v4 + 1))) ^ v2 & (v4 + 1);
  v6 = ((v3 ^ 0x65B) - 677757738) & (2 * (v2 ^ 0x53756B7B)) ^ ((2 * (v2 ^ 0x53756B7B)) ^ 0xAF348582) & (v2 ^ 0x53756B7B);
  v7 = v6 ^ 0x508A4241;
  v8 = (v6 ^ 0x47120080) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x5E690B04) & v7 ^ (4 * v7) & 0xD79A42C0;
  v10 = (v9 ^ 0x56080200) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x819240C1)) ^ 0x79A42C10) & (v9 ^ 0x819240C1) ^ (16 * (v9 ^ 0x819240C1)) & 0xD79A42C0;
  v12 = v10 ^ 0xD79A42C1 ^ (v11 ^ 0x51800000) & (v10 << 8);
  v13 = v2 ^ (2 * ((v12 << 16) & 0x579A0000 ^ v12 ^ ((v12 << 16) ^ 0x42C10000) & (((v11 ^ 0x861A42C1) << 8) & 0x579A0000 ^ 0x45980000 ^ (((v11 ^ 0x861A42C1) << 8) ^ 0x1A420000) & (v11 ^ 0x861A42C1)))) ^ 0x19C86005;
  v14 = 210068311 * (&v16 ^ 0xF28BAFE8);
  v18 = v14 + v3 - 241;
  v17 = v1;
  v16 = v13 - v14;
  return (*(a1 + 8 * (v3 ^ 0xB15)))(&v16);
}

uint64_t sub_1000045B4(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((1563 * ((v2 ^ 0x1E9) == (v3 & 0x30))) ^ v2)))();
}

void sub_1000046DC()
{
  if ((*(v2 + 4) - 922138988) >= 0x7FFFFFFF)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 12) = v3;
}

uint64_t sub_1000047B8@<X0>(int a1@<W1>, int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v62 = *(v60 + v59 * a1 + 36);
  v63 = ((a3 + 1685656554) & 0x9B86ECDB ^ 0xC9C8171) + v62;
  v64 = v62 != a2 + ((a3 + 1597196652) & 0xA0CCB759) - 1112;
  if (v63 <= -1213619475 || v63 >= a59)
  {
    v64 = 0;
  }

  return (*(v61 + 8 * ((44 * v64) ^ a3)))();
}

uint64_t sub_10000487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v21 = 388 * (v19 ^ 0x387);
  v22 = (((((v20 - 128) | 0x9AAAB59E) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0x65554A61)) ^ 0xFE12BCEB) * v17;
  *(v20 - 112) = v19 - v22 + 1039;
  *(v20 - 120) = &a13;
  *(v20 - 128) = v22 + v21 + (v15 ^ 0x1EF3559E) + ((2 * v15) & 0x3DE6AB3C) - 8586906;
  (*(v16 + 8 * (v19 ^ 0xBFF)))(v20 - 128);
  *(v20 - 128) = v21 - ((v20 - 128) ^ 0x9B47F68A) * v17 + 260;
  *(v20 - 120) = a12;
  *(v20 - 104) = &a15;
  v23 = (*(v16 + 8 * (v21 + 612)))(v20 - 128);
  return (*(v16 + 8 * (((*(v20 - 112) > v18 + ((v21 - 1758929010) & 0x68D71BFDu) + 487) * (70 * (v21 ^ 0x617) - 244)) ^ v21)))(v23);
}

uint64_t sub_1000049BC@<X0>(int8x16_t *a1@<X2>, int a2@<W3>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v11 = v4;
  v12 = (a3 + a4);
  v13 = veorq_s8(*a1, *v12);
  v14 = veorq_s8(a1[1], v12[1]);
  return (*(v6 + 8 * ((141 * (((81 * (v5 ^ 0x5EBu)) ^ 0x30ALL) != ((v5 ^ 0xFFFFFA01) & a2))) ^ v5 ^ 0x8D)))(vorrq_s8(vqtbl1q_s8(v13, v7), v11), vorrq_s8(vqtbl1q_s8(v13, v8), 0), vorrq_s8(vqtbl1q_s8(v13, v9), 0), vorrq_s8(vqtbl1q_s8(v13, v10), 0), vorrq_s8(vqtbl1q_s8(v14, v7), 0), vorrq_s8(vqtbl1q_s8(v14, v9), 0), vorrq_s8(vqtbl1q_s8(v14, v8), 0), vorrq_s8(vqtbl1q_s8(v14, v10), 0));
}

uint64_t sub_100004B24@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x274] + a2 + 72);
  v7 = (v6 >> ((7 * (v3 ^ 0xCE)) ^ 0x32)) ^ 0xFFFFFF9C;
  v8 = ((2 * a2) & 0x6BFEEFF8) + (a2 ^ 0xB5FF77FF) + v2;
  *(a1 + v8) = v7 - ((2 * v7) & 0x8F) - 57;
  *(a1 + v8 + 1) = (BYTE2(v6) ^ 0x3A) - ((2 * (BYTE2(v6) ^ 0x3A)) & 0x8F) - 57;
  *(a1 + v8 + 2) = (BYTE1(v6) ^ 0x37) - ((2 * (BYTE1(v6) ^ 0x37)) & 0x8F) - 57;
  *(a1 + v8 + 3) = v6 ^ 0x8C;
  return (*(v5 + 8 * (((a2 + 4 < LODWORD(STACK[0x2D0])) * v4) ^ v3)))();
}

uint64_t sub_100004BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 + 1294)))(1576, 0x105004009637391);
  STACK[0x278] = v67;
  return (*(a65 + 8 * (((v67 == 0) * ((v65 + 127) ^ v65 ^ 0x84)) ^ v65)))(v67, v68, v69, v70, v71, v72, 2312835345, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

void sub_100004C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46)
{
  LODWORD(STACK[0x400]) = 1;
  STACK[0x478] = a37;
  STACK[0x288] = a46;
  LODWORD(STACK[0x284]) = -880333534;
  JUMPOUT(0x100009198);
}

uint64_t sub_100004D4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int8x16_t *a7@<X8>)
{
  *a7 = veorq_s8(*v8, xmmword_10005A910);
  STACK[0x480] += ((v7 + 190) ^ 0xFFFFFFFFFFFFFE92) + (v7 + 516);
  STACK[0x490] = a1;
  STACK[0x488] = a1;
  return (*(v9 + 8 * (v7 ^ (834 * (a7 != a1)))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100004E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unsigned __int8 *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a55 - 19;
  v212 = a42 ^ 0x88BA769F;
  v211 = (a55 + 2069201517) ^ a37;
  LODWORD(a54) = a39 ^ 0x620F18DE;
  LODWORD(a53) = __ROR4__(__ROR4__(((a64 << 24) | (a47 << 8) | (a46 << 16) | a49) ^ 0xB35F9800, 22) ^ 0xA2EBB8AD, 10) ^ 0x3CF43D6E;
  v213 = (v66 + 16);
  v214 = v65 + 16;
  v68 = *(a21 + (a48[15] ^ 0xD3));
  LODWORD(a55) = (a55 - 1988896639) & 0x768C277E;
  LODWORD(a52) = v65 + 16 + a55;
  v69 = v68 ^ (v68 >> 5) ^ (v68 >> 3);
  LOBYTE(v68) = *(a22 + (*(a19 + a52) ^ 0x3FLL));
  v70 = *(a21 + (a48[23] ^ 0xC3));
  v71 = (v68 ^ 0xD1) - 98;
  LOBYTE(a49) = ((2 * v68) & 0xC4 ^ 0x44) + v71;
  v72 = v70 ^ (v70 >> 5) ^ (v70 >> 3);
  v73 = *(a22 + (a48[16] ^ 0xEELL));
  v74 = (v73 ^ 0x6C49FF86) & ((v69 << 8) ^ 0x6C497A87) | v73 & 0x78;
  v75 = *(a25 + (a48[22] ^ 0xFLL));
  v76 = ((((19 * v75 - 76) ^ 0xFFFFFFB5) + ((38 * v75 + 104) & 0x6A)) << (v71 & 2) << (v71 & 2 ^ 2)) ^ (19 * v75 - 2 * ((19 * v75 - 76) & 0x2F ^ (19 * v75) & 1) + 98);
  v77 = *(a20 + (a48[17] ^ 0xAALL));
  v215 = v77 ^ (v77 >> 3) ^ (v77 >> 2);
  v78 = *(a25 + (a48[10] ^ 0xDLL));
  v79 = (a23 + 76 * v78) ^ (HIDWORD(a24) + 19 * v78);
  v80 = ((((v79 >> 4) ^ 0xFFFFFFFFFFFFFFE7) & ((*(a22 + (a48[12] ^ 0x87)) << 12) ^ 0x1490FF8BD254F429) | (v79 >> 4) & 6) ^ 0x316031DD2AA1B8C4) & ((v79 << 28) ^ 0x37F7FFFF9FFFFCEFLL);
  LODWORD(a50) = (v80 >> 12) ^ 0xE565D3A3;
  v81 = (v80 << 20) ^ 0x45D00000 | a50;
  v82 = *(a21 + (a48[19] ^ 8)) ^ (*(a21 + (a48[19] ^ 8)) >> 5) ^ (*(a21 + (a48[19] ^ 8)) >> 3);
  v83 = *(a20 + ((a48[13] - ((2 * a48[13]) & 0x1A4u) + 210) ^ 0x71));
  v84 = v83 ^ (v83 >> 3) ^ (v83 >> 2);
  v85 = *(a20 + (a48[21] ^ 0x9FLL));
  v86 = v85 ^ (v85 >> 3) ^ (v85 >> 2) ^ 0x6F;
  v87 = *(a21 + (a48[11] ^ 0x3FLL));
  LOBYTE(v79) = *(a25 + (a48[18] ^ 0x9DLL));
  v88 = v81 ^ ((v87 ^ (v87 >> 5) ^ (v87 >> 3)) << 8);
  v89 = (BYTE4(a24) + 19 * v79) ^ (a23 + 76 * v79);
  v90 = *(a22 + (a48[24] ^ 0x4BLL));
  v91 = *(a25 + (a48[14] ^ 0xF7));
  v92 = v89;
  v93 = ((v86 << 24) ^ 0xE5373A43) & ((((v76 << 16) ^ 0xF529903A) & ((v72 << 8) ^ 0xF5FFB73A) | (v72 << 8) & 0x6F00) ^ 0xA49A5C9) ^ (((v76 << 16) ^ 0xF529903A) & ((v72 << 8) ^ 0xF5FFB73A) & 0x14C8C530 | (v72 << 8) & 0x4500);
  v94 = (v93 ^ 0xC6EBAF2B) & (v90 ^ 0xFFFFFF02) ^ v90 & 0xA7;
  v210 = a48 + 16;
  v95 = (((BYTE4(a24) + 19 * v91) ^ (a23 + 76 * v91)) ^ 0x15) << 16;
  v96 = *(a20 + (*(v210 - 7) ^ 0xD6));
  v97 = ((((v84 << 24) ^ 0x458446BC) & ~v95 | v95 & 0x7B0000) ^ 0xD41B3D5) & (v74 ^ 0x93B6E382);
  v98 = ((v96 >> 2) | (v96 << 6)) ^ 0xFFFFFFA2 ^ (((16 * (v96 ^ (v96 >> 1))) | 0x16) & (((v96 ^ (v96 >> 1)) >> 4) ^ 0xFFFFFFD9) | ((v96 ^ (v96 >> 1)) >> 4) & 0xFFFFFFF9);
  LODWORD(a39) = (((v98 & 0xC0) << 18) | (v98 << 26)) ^ v88;
  v99 = *(&off_1000610D0 + (v67 ^ 0x44E)) - 12;
  v100 = *(&off_1000610D0 + (v67 ^ 0x461)) - 8;
  v101 = v97 ^ v74 & 0x20010A96;
  LODWORD(a47) = v82;
  LODWORD(a51) = v67;
  v102 = *(&off_1000610D0 + (v67 - 1120)) - 12;
  v103 = *&v102[4 * (v73 ^ 0xB7)] - ((v97 ^ v74 & 0x96) ^ 0x21C17698);
  v104 = *(&off_1000610D0 + (v67 ^ 0x42C)) - 4;
  v93 >>= 24;
  v105 = *&v104[4 * (v82 ^ 0x2C)] ^ v103 ^ (*&v100[4 * (v76 ^ 0xFA)] - 1409877230) ^ (*&v99[4 * (BYTE3(a39) ^ 0x8D)] + (BYTE3(a39) ^ 0xA095C526) - 1127862069);
  LODWORD(a49) = a49;
  v106 = *&v104[4 * (v72 ^ 0x32)] ^ (*&v100[4 * (BYTE2(v81) ^ 0x7C)] - 1409877230) ^ (*&v99[4 * (HIBYTE(v101) ^ 0xB8)] + (HIBYTE(v101) ^ 0xA095C513) - 1127862069) ^ (*&v102[4 * (a49 ^ 0xAE)] - (a49 ^ 0x21C17607));
  LODWORD(a42) = v94;
  v107 = *&v104[4 * (BYTE1(v88) ^ 0x28)] ^ ((v215 ^ 0xA095C59B) - 1127862069 + *&v99[4 * (v215 ^ 0x30)]) ^ (*&v100[4 * ((v97 >> 15) | 0xFFFFFF07) + 500 + 4 * (BYTE2(v101) ^ 0xFC)] - 1409877230);
  v108 = *&v99[4 * (v93 ^ 0x30)];
  v109 = v107 ^ (*&v102[4 * (v90 ^ 0x32)] - (v94 ^ 0x21C1769B));
  LODWORD(a46) = v92;
  v110 = *&v100[4 * (v92 ^ 0xE3)];
  LODWORD(a37) = v101;
  LODWORD(v90) = (v110 - 1409877230) ^ *&v104[4 * (BYTE1(v101) ^ 0x9D)] ^ (*&v102[4 * ((v80 >> 12) ^ 0x15)] - ((v80 >> 12) ^ 0x21C176BC)) ^ ((v93 ^ 0x5F6A3A64) - 1127862070 - 2 * (v93 ^ 0x5F6A3A64) + v108);
  v111 = *&v100[4 * (BYTE2(v90) ^ 0xC5)];
  v112 = *&v104[4 * (BYTE1(v109) ^ 0xF9)] ^ ((HIBYTE(v105) ^ 0xA095C535) - 1127862069 + *&v99[4 * (HIBYTE(v105) ^ 0x9E)]) ^ (*&v102[4 * (v106 ^ 0x68)] - (v106 ^ 0x21C176C1)) ^ ((__ROR4__(__ROR4__(v111, 7) ^ 0x76896904, 25) ^ 0xEF427929) + ((2 * v111) & 0x57EDF624));
  v113 = (*&v100[4 * (BYTE2(v105) ^ 0x96)] - 1409877230) ^ ((HIBYTE(v106) ^ 0xA095C503) - 1127862069 + *&v99[4 * (HIBYTE(v106) ^ 0xA8)]) ^ *&v104[4 * ((((v110 - 1262) ^ *&v104[4 * (BYTE1(v101) ^ 0x9D)] ^ (*&v102[4 * ((v80 >> 12) ^ 0x15)] - ((v80 >> 12) ^ 0x76BC)) ^ ((v93 ^ 0x3A64) + 12490 - 2 * (v93 ^ 0x3A64) + v108)) >> 8) ^ 0x6E)] ^ (*&v102[4 * (v109 ^ 0xFA)] - (v109 ^ 0x21C17653));
  v114 = (*&v100[4 * (((BYTE2(v106) ^ 5) - (BYTE2(v106) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v106) ^ 5)] - 1409877230) ^ ((HIBYTE(v109) ^ 0xA095C50D) - 1127862069 + *&v99[4 * (HIBYTE(v109) ^ 0xA6)]) ^ *&v104[4 * (BYTE1(v105) ^ 0xE0)] ^ (*&v102[4 * (v90 ^ 0x40)] - (v90 ^ 0x21C176E9));
  BYTE1(v105) = BYTE1(v113) ^ 0xA2;
  v115 = (*&v100[4 * (BYTE2(v109) ^ 0xA3)] - 1409877230) ^ *&v104[4 * (BYTE1(v106) ^ 0x9A)] ^ ((BYTE3(v90) ^ 0xA095C5DF) - 1127862069 + *&v99[4 * (BYTE3(v90) ^ 0x74)]) ^ (*&v102[4 * (v105 ^ 0x9A)] - (v105 ^ 0x21C17633));
  BYTE2(v90) = BYTE2(v114) ^ 0xEC;
  v116 = *&v104[4 * (BYTE1(v114) ^ 0xBB)];
  v117 = (v114 ^ 0xCFECEC50) >> 24;
  v118 = (*&v100[4 * (BYTE2(v115) ^ 0x2C)] - 1409877230) ^ v116 & 0xFFFFFFBF ^ (v116 & 0x40 | 0x94F5230B) ^ (*&v102[4 * (v113 ^ 0xE0)] - (v113 ^ 0x21C17649)) ^ ((((v112 ^ 0xC29E1175) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v112 ^ 0xC29E1175) >> 24) ^ 0x8A)]);
  v119 = *&v102[4 * (v114 ^ 0x80)] - (v114 ^ 0x21C17629);
  v120 = ((v113 ^ 0xF7D9A230) >> 16) - (((v113 ^ 0xF7D9A230) >> 15) & 0xF8);
  v121 = (*&v100[4 * (BYTE2(v112) ^ 0xE2)] - 1409877230) ^ ((((v113 ^ 0xF7D9A230) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v113 ^ 0xF7D9A230) >> 24) ^ 0x8A)]) ^ *&v104[4 * (BYTE1(v115) ^ 0x4F)] ^ v119;
  v122 = (*&v100[4 * v120 + 496] - 1409877230) ^ ((v117 ^ 0xA095C521) - 1127862069 + *&v99[4 * (v117 ^ 0x8A)]) ^ *&v104[4 * (BYTE1(v112) ^ 0x46)] ^ (*&v102[4 * (v115 ^ 0xA8)] - (v115 ^ 0x21C17601));
  LODWORD(v90) = (*&v100[4 * (BYTE2(v90) ^ 0x7C)] - 1409877230) ^ ((((v115 ^ 0x13501878) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v115 ^ 0x13501878) >> 24) ^ 0x8A)]) ^ *&v104[4 * BYTE1(v105)] ^ (*&v102[4 * (v112 ^ 0xA5)] - (v112 ^ 0x21C1760C));
  v123 = (v122 ^ 0xF97FC1A2) >> 24;
  v124 = (*&v100[4 * ((v90 ^ 0x1DF67BEA) >> 16)] - 1409877230) ^ *&v104[4 * (((*&v100[4 * v120 + 496] - 1262) ^ ((v117 ^ 0xC521) + 12491 + *&v99[4 * (v117 ^ 0x8A)]) ^ *&v104[4 * (BYTE1(v112) ^ 0x46)] ^ (*&v102[4 * (v115 ^ 0xA8)] - (v115 ^ 0x7601)) ^ 0xC1A2) >> 8)] ^ (*&v102[4 * (v121 ^ 0x57)] - (v121 ^ 0x21C176FE)) ^ ((((v118 ^ 0xFB60CFE9) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v118 ^ 0xFB60CFE9) >> 24) ^ 0x8A)]);
  v125 = ((((v121 ^ 0xF40D6B87) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v121 ^ 0xF40D6B87) >> 24) ^ 0x8A)]) ^ 0x94F5230B ^ *&v104[4 * (BYTE1(v90) ^ 0x2C)] ^ (*&v102[4 * (v122 ^ 0x72)] - (v122 ^ 0x21C176DB)) ^ (*&v100[4 * ((((v118 ^ 0xFB60CFE9) >> 16) - (((v118 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * ((v118 ^ 0xFB60CFE9) >> 16)] - 1409877230);
  v126 = v123 ^ 0xDE;
  v127 = (*&v100[4 * ((v121 ^ 0xF40D6B87) >> 16)] - 1409877230) ^ *&v104[4 * ((v118 ^ 0xCFE9) >> 8)] ^ (-1127862070 - (v123 ^ 0x5F6A3ADE) + *&v99[4 * (v123 ^ 0x8A)]);
  v128 = (v90 ^ 0x1DF67BEA) >> 24;
  LODWORD(v130) = __ROR4__(v125, 24) ^ 0xF7A7AFD3;
  HIDWORD(v130) = v130;
  v129 = v130 >> 8;
  v131 = v127 ^ (*&v102[4 * (v90 ^ 0x3A)] - (v90 ^ 0x21C17693));
  v132 = v118 ^ 0xE9;
  v133 = v118 ^ 0x39;
  v134 = v124 ^ 0xFBC8137;
  v135 = (*&v100[4 * (BYTE2(v122) ^ 0x7F)] - 1409877230) ^ (-1127862070 - ((1600797406 - (v128 & 2)) ^ v128 & 0xFFFFFFFD) + *&v99[4 * (v128 ^ 0x8A)]) ^ (*&v102[4 * v133] - (v132 ^ 0x21C17679)) ^ *&v104[4 * ((((v121 ^ 0x6B87) >> 8) - 1853103297 - (((v121 ^ 0xF40D6B87) >> 7) & 0x7E)) ^ 0x918BE368)];
  v136 = v135 ^ 0x25BF358A;
  v137 = (*&v100[4 * (((v135 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ ((HIBYTE(v134) ^ 0xA095C521) - 1127862069 + *&v99[4 * (HIBYTE(v134) ^ 0x8A)]) ^ *&v104[4 * (BYTE1(v131) ^ 0x25)] ^ (*&v102[4 * (BYTE1(v130) ^ 0xD3)] - (BYTE1(v130) ^ 0x21C1767A));
  if (((v124 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v138 = (v124 ^ 0xFBC8137) >> 16;
  }

  else
  {
    v138 = ((v124 ^ 0xFBC8137) >> 16) & 0xC0;
  }

  v139 = (*&v100[4 * (v138 ^ 0x7C)] - 1409877230) ^ *&v104[4 * BYTE1(v136)] ^ (*&v102[4 * (v131 ^ 0x37)] - (v131 ^ 0x21C1769E)) ^ ((((v129 ^ 0x1DD0DB03u) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v129 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)]);
  v140 = (*&v100[4 * (BYTE2(v129) ^ 0xAC)] - 1409877230) ^ ((((v131 ^ 0xCC4472E7) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v131 ^ 0xCC4472E7) >> 24) ^ 0x8A)]) ^ *&v104[4 * BYTE1(v134)] ^ (*&v102[4 * (v135 ^ 0x5A)] - (v135 ^ 0x21C176F3));
  v141 = (*&v100[4 * (BYTE2(v131) ^ 0x38)] - 1409877230) ^ ((HIBYTE(v136) ^ 0xA095C521) - 1127862069 + *&v99[4 * (HIBYTE(v136) ^ 0x8A)]) ^ (*&v102[4 * (v124 ^ 0xE7)] - (v124 ^ 0x21C1764E)) ^ *&v104[4 * (BYTE1(v129) ^ 0x8C)];
  v142 = v139 ^ 0x94240652;
  v143 = (*&v100[4 * ((v141 ^ 0x28B1C8AF) >> 16)] - 1409877230) ^ *&v104[4 * ((v140 ^ 0xF582) >> 8)] ^ ((((v137 ^ 0x3AB33250) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v137 ^ 0x3AB33250) >> 24) ^ 0x8A)]) ^ (*&v102[4 * (v139 ^ 0x82)] - (v139 ^ 0x21C1762B));
  v144 = (*&v100[4 * (BYTE2(v137) ^ 0xCF)] - 1409877230) ^ *&v104[4 * ((v141 ^ 0xC8AF) >> 8)] ^ (*&v102[4 * (v140 ^ 0x52)] - (v140 ^ 0x21C176FB)) ^ ((((v139 ^ 0x94240652) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v139 ^ 0x94240652) >> 24) ^ 0x8A)]);
  v145 = (*&v100[4 * BYTE2(v142)] - 1409877230) ^ ((((v140 ^ 0x57A0F582) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v140 ^ 0x57A0F582) >> 24) ^ 0x8A)]) ^ *&v104[4 * ((v137 ^ 0x3250) >> 8)] ^ (*&v102[4 * (v141 ^ 0x7F)] - (v141 ^ 0x21C176D6));
  v146 = v144 ^ 0x6FA1BBC0;
  v147 = (*&v100[4 * (BYTE2(v140) ^ 0xDC)] - 1409877230) ^ ((((v141 ^ 0x28B1C8AF) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v141 ^ 0x28B1C8AF) >> 24) ^ 0x8A)]) ^ *&v104[4 * (BYTE1(v142) ^ 0x57)] ^ (*&v102[4 * (v137 ^ 0x80)] - (v137 ^ 0x21C17629));
  v148 = (*&v100[4 * ((v147 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v104[4 * ((v145 ^ 0x7C12) >> 8)] ^ ((((v143 ^ 0xDBAE4527) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v143 ^ 0xDBAE4527) >> 24) ^ 0x8A)]) ^ (*&v102[4 * (v144 ^ 0x10)] - (v144 ^ 0x21C176B9));
  v149 = (((v144 ^ 0x6FA1BBC0) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v144 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)];
  v150 = (v147 ^ 0xBE27B2EF) >> 24;
  v151 = (*&v100[4 * (BYTE2(v143) ^ 0xD2)] - 1409877230) ^ *&v104[4 * (BYTE1(v147) ^ 0xE5)] ^ v149 ^ (*&v102[4 * (v145 ^ 0xC2)] - (v145 ^ 0x21C1766B));
  v152 = (*&v100[4 * BYTE2(v146)] - 1409877230) ^ *&v104[4 * ((v143 ^ 0x4527) >> 8)] ^ ((((v145 ^ 0x2B27C12) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v145 ^ 0x2B27C12) >> 24) ^ 0x8A)]) ^ (*&v102[4 * (v147 ^ 0x3F)] - (v147 ^ 0x21C17696));
  v153 = (*&v100[4 * ((v145 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *&v104[4 * BYTE1(v146)] ^ ((v150 ^ 0xA095C521) - 1127862069 + *&v99[4 * (v150 ^ 0x8A)]) ^ (*&v102[4 * (v143 ^ 0xF7)] - (v143 ^ 0x21C1765E));
  v154 = (*&v100[4 * ((v153 ^ 0x7DDF413F) >> 16)] - 1409877230) ^ *&v104[4 * (BYTE1(v152) ^ 0x1F)] ^ ((((v148 ^ 0x179F0454) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v148 ^ 0x179F0454) >> 24) ^ 0x8A)]) ^ (*&v102[4 * (v151 ^ 0xF5)] - (v151 ^ 0x21C1765C));
  v155 = (*&v100[4 * ((v148 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v104[4 * ((v153 ^ 0x413F) >> 8)] ^ ((((v151 ^ 0x75457125u) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v151 ^ 0x75457125u) >> 24) ^ 0x8A)]) ^ (*&v102[4 * (v152 ^ 0xC0)] - (v152 ^ 0x21C17669));
  v156 = *&v104[4 * (BYTE1(v148) ^ 0x53)];
  v157 = v156 ^ -v156 ^ (-1795874037 - (__ROR4__(__ROR4__(v156, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v158 = BYTE2(v152) ^ 0x59;
  v159 = (*&v100[4 * (BYTE2(v151) ^ 0x39)] - 1409877230) ^ (*&v102[4 * (v153 ^ 0xEF)] - (v153 ^ 0x21C17646)) ^ ((((v152 ^ 0xAC254810) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v152 ^ 0xAC254810) >> 24) ^ 0x8A)]) ^ (((2 * v157) & 0x29EA4616) + (v157 ^ 0x94F5230B));
  v160 = v154 ^ 0x8EBD9B97;
  v161 = (*&v100[4 * v158] - 1409877230) ^ *&v104[4 * (BYTE1(v151) ^ 0x26)] ^ ((((v153 ^ 0x7DDF413F) >> 24) ^ 0xA095C521) - 1127862069 + *&v99[4 * (((v153 ^ 0x7DDF413F) >> 24) ^ 0x8A)]) ^ (*&v102[4 * (v148 ^ 0x84)] - (v148 ^ 0x21C1762D));
  v162 = v159 ^ 0x8CA395FC;
  v163 = v155 ^ 0xA3ECFAB3;
  v164 = v161 ^ 0x10CC86ED;
  v165 = *&v102[4 * (v155 ^ 0x63)] - (v155 ^ 0x21C176CA);
  v166 = (*&v100[4 * ((v161 ^ 0x10CC86ED) >> 16)] - 1409877230) ^ ((HIBYTE(v160) ^ 0xA095C521) - 1127862069 + *&v99[4 * (HIBYTE(v160) ^ 0x8A)]) ^ 0x94F5230B ^ *&v104[4 * (BYTE1(v159) ^ 0xC2)];
  v167 = (v166 ^ -v166 ^ (v165 - (v166 ^ v165))) + v165;
  if (((v159 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v168 = -16;
  }

  else
  {
    v168 = 16;
  }

  v169 = (*&v100[4 * (BYTE2(v154) ^ 0xC1)] - 1409877230) ^ *&v104[4 * ((v161 ^ 0x86ED) >> 8)] ^ ((HIBYTE(v163) ^ 0xA095C521) - 1127862069 + *&v99[4 * (HIBYTE(v163) ^ 0x8A)]) ^ (*&v102[4 * ((v168 + v162) ^ 0xC0)] - ((v168 + v162) ^ 0x21C17669));
  v170 = ((HIBYTE(v162) ^ 0xA095C521) - 1127862069 + *&v99[4 * (HIBYTE(v162) ^ 0x8A)]) ^ (*&v100[4 * BYTE2(v163)] - 1409877230) ^ *&v104[4 * BYTE1(v160)] ^ (*&v102[4 * (v161 ^ 0x3D)] - (v161 ^ 0x21C17694));
  v171 = (*&v100[4 * (BYTE2(v159) ^ 0xDF)] - 1409877230) ^ ((HIBYTE(v164) ^ 0xA095C521) - 1127862069 + *&v99[4 * (HIBYTE(v164) ^ 0x8A)]) ^ *&v104[4 * (BYTE1(v155) ^ 0xAD)] ^ (*&v102[4 * (v154 ^ 0x47)] - (v154 ^ 0x21C176EE));
  v172 = BYTE2(v170) ^ 0xCB;
  v173 = *(&off_1000610D0 + (v67 ^ 0x4D4)) - 4;
  v174 = *(&off_1000610D0 + (v67 - 1016)) - 8;
  v175 = *&v174[4 * ((v171 ^ 0x66EB169A) >> 16)] ^ 0x4D522762;
  v176 = *(&off_1000610D0 + (v67 ^ 0x4F0)) - 8;
  v177 = *(&off_1000610D0 + (v67 - 1078));
  v178 = ((v169 ^ 0xA4) - 1352815326) ^ *&v176[4 * (BYTE1(v170) ^ 0x57)] ^ *&v173[4 * (HIBYTE(v167) ^ 0xBE)] ^ *(v177 + 4 * (v169 ^ 0x91u)) ^ (((v175 >> (v126 & 3) >> (v126 & 3 ^ 3)) ^ v175) >> 2);
  v179 = *&v174[4 * (BYTE2(v167) ^ 0xBF)] ^ 0x4D522762u;
  v180 = *&v173[4 * (HIBYTE(v169) ^ 0x43)] ^ ((v170 ^ 0xC4) - 1352815326) ^ *&v176[4 * (BYTE1(v171) ^ 0x7C)] ^ v179 ^ *(v177 + 4 * (v170 ^ 0xF1u)) ^ (v179 >> 2) ^ (v179 >> 5);
  v181 = *&v173[4 * (HIBYTE(v170) ^ 0xD5)];
  v182 = *&v173[4 * ((v171 ^ 0x66EB169A) >> 24)];
  LODWORD(v173) = *&v174[4 * (BYTE2(v169) ^ 0x20)];
  v183 = v175 ^ a54 ^ (v178 - ((2 * v178) & 0x78EBC9D2) - 1133124375);
  v184 = *&v174[4 * v172] ^ 0x4D522762;
  v185 = v181 ^ ((v171 ^ 0x9A) - 1352815326) ^ *(v177 + 4 * (v171 ^ 0xAFu)) ^ *&v176[4 * ((v167 ^ 0x84FF) >> 8)] ^ ((v173 ^ 0x4D522762) >> 2) ^ ((v173 ^ 0x4D522762) >> 5);
  v186 = v182 ^ (~v167 - 1352815326) ^ v184 ^ *&v176[4 * (BYTE1(v169) ^ 0x2D)] ^ (v184 >> 2) ^ (v184 >> 5) ^ *(v177 + 4 * (v167 ^ 0xCAu));
  v187 = (v180 - ((2 * v180) & 0x6A9002D6) - 1253572245) ^ v211;
  v188 = v185 - ((2 * v185) & 0xB7CC478) + 96363068;
  v189 = v186 ^ 0x23A4540;
  v190 = (v186 ^ 0x23A4540) & 0x6B844D;
  v191 = v186 & 8;
  HIDWORD(v193) = (v189 + 7046213 - 2 * (v190 ^ v191)) ^ v212;
  LODWORD(v193) = (v189 + 1684767813 - 2 * (v189 & 0x646B844D ^ v191)) ^ v212;
  v192 = v193 >> 24;
  v194 = v173 ^ 0x4D522762 ^ a53 ^ v188;
  v195 = *(&off_1000610D0 + (v67 - 956)) - 8;
  v213[1] = (-97 * v195[BYTE3(v194) ^ 0x4CLL]) ^ ((-97 * v195[BYTE3(v194) ^ 0x4CLL]) >> 5) ^ ((-97 * v195[BYTE3(v194) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v213 - 3) = (-97 * v195[HIBYTE(v187) ^ 0x61]) ^ ((-97 * v195[HIBYTE(v187) ^ 0x61]) >> 5) ^ ((-97 * v195[HIBYTE(v187) ^ 0x61]) >> 1) ^ 0xD8;
  v196 = *(&off_1000610D0 + (v67 - 974)) - 8;
  v213[3] = ((((((v194 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v194 ^ 0xD2C1) >> 8) ^ 0xDA) + v196[((v194 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v197 = *(&off_1000610D0 + (v67 ^ 0x451)) - 8;
  LOBYTE(v189) = v197[((((v194 ^ 0xA619D2C1) >> 16) ^ -((v194 ^ 0xA619D2C1) >> 16) ^ (510 - ((v194 ^ 0xA619D2C1) >> 16) - ((2 * ((v194 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v198 = ((((v194 ^ 0xA619D2C1) >> 16) ^ -((v194 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v194 ^ 0xA619D2C1) >> 16) - ((2 * ((v194 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v199 = v198 & 8 ^ v189;
  v200 = (v198 & 8 & v189) == 0;
  v201 = v189 - (v198 & 8);
  if (v200)
  {
    v201 = v199;
  }

  v213[2] = v201 ^ v198 & 0xF7;
  HIDWORD(v203) = v192 ^ 0x8829CA87;
  LODWORD(v203) = v192 ^ 0x8829CA87;
  v202 = v203 >> 8;
  *(v213 - 1) = (v196[BYTE1(v187) ^ 0x94] + (((BYTE1(v187) ^ 0x22) + 99) ^ BYTE1(v187) ^ 0x22)) ^ 0xA8;
  *(v213 - 2) = BYTE2(v187) ^ 0x9E ^ v197[BYTE2(v187) ^ 0xD5];
  v204 = *(&off_1000610D0 + (v67 & 0xDC57074)) - 4;
  v205 = v204[v183 ^ 0xE7] - 24;
  *(v213 - 4) = v205 ^ 0x5D ^ (v205 >> 1) & 0x1E;
  v213[5] = (-97 * v195[HIBYTE(v202) ^ 0x60]) ^ ((-97 * v195[HIBYTE(v202) ^ 0x60]) >> 5) ^ ((-97 * v195[HIBYTE(v202) ^ 0x60]) >> 1) ^ 0xFE;
  v206 = v204[((180 - (v194 ^ 0x56) + (v194 ^ 0xE2) - 2 * ((180 - (v194 ^ 0x56)) & (v194 ^ 0xE2))) ^ -(v194 ^ 0xE2)) + 180] - 24;
  *(a18 + a52) = v206 ^ 0x62 ^ (v206 >> 1) & 0x1E;
  v213[7] = (v196[((v203 >> 8) >> 8) ^ 0x4FLL] + (((((v203 >> 8) >> 8) ^ 0xF9) + 99) ^ ((v203 >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v213 - 5) = (v196[BYTE1(v183) ^ 0x1FLL] + (((BYTE1(v183) ^ 0xA9) + 99) ^ BYTE1(v183) ^ 0xA9)) ^ 0x84;
  v207 = v204[v187 ^ 0xDDLL];
  *v213 = (((v207 + ((v207 - 24) ^ 0xAE) - 23) ^ 0xFE) + v207 - 24) ^ ((v207 - 24) >> 1) & 0x1E;
  LOBYTE(v207) = -97 * v195[HIBYTE(v183) ^ 0x67];
  *(v213 - 7) = v207 ^ (v207 >> 5) ^ (v207 >> 1) ^ 0xE1;
  v213[6] = BYTE2(v202) ^ 0x8E ^ v197[BYTE2(v202) ^ 0x55];
  *(v213 - 6) = BYTE2(v183) ^ 0xD3 ^ v197[BYTE2(v183) ^ 0x7DLL];
  v208 = v204[BYTE1(v203) ^ 0xF7] - 24;
  v213[8] = v208 ^ ((v208 & (v208 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(a65 + 8 * ((234 * ((v214 + 1137) < 0x140)) ^ v67)))(4294967199, v194, v196, v67, v204, 190, v179, v177, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, v210, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_100004FB0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1545));

  return v3(v1);
}

uint64_t sub_100004FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  STACK[0x358] = v8 - 112;
  switch(a8)
  {
    case -880333534:
      return (*(v11 + 8 * ((((v10 - 338) ^ 0x80F) * (v9 == -1982131951)) ^ (v10 - 338))))(a1, a2, a3, a4, a5, a6, a7, 2438492840);
    case -880333533:
      return (*(v11 + 8 * (((((v10 - 474) | 0x11) ^ (v9 + 529)) != -1982131951) ^ (v10 - 1570))))(a1, a2, a3, a4, a5, a6, a7, 2438492840);
    case -880333536:
      return (*(v11 + 8 * ((1288 * (((v10 - 457) ^ (v9 - 639) ^ (v10 + 1813862110) & 0x93E2A5D7) == -1982131951)) ^ (v10 - 1569))))(a1, a2, a3, a4, a5, a6, a7, 2438492840);
  }

  return sub_100009188();
}

void sub_10000527C(uint64_t a1)
{
  v1 = *a1 ^ (210068311 * (((a1 | 0x9E1CD4) - a1 + (a1 & 0xFF61E32B)) ^ 0xF215B33C));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9[0] = 0x36F6B96B00000082;
  v9[1] = &v12;
  v10[0] = 0x36F6B96B00000082;
  v10[1] = &v11;
  v6 = v2[1];
  v17 = (1785193651 * ((&v13 + 500925757 - 2 * (&v13 & 0x1DDB853D)) ^ 0x316CDED5)) ^ (v1 - 302);
  v13 = v5;
  v14 = v6;
  v15 = v9;
  v16 = v4;
  v18 = v2;
  v7 = *(&off_1000610D0 + v1 - 1641);
  (*(v7 + 8 * (v1 + 334)))(&v13);
  v8 = *v2;
  LODWORD(v15) = v1 + 1082434553 * ((&v13 & 0x8630BE61 | ~(&v13 | 0x8630BE61)) ^ 0xE288B714) - 590;
  v13 = v10;
  v14 = v8;
  (*(v7 + 8 * (v1 + 306)))(&v13);
  LODWORD(v15) = (1563904627 * (((&v13 | 0x9909EC6) - (&v13 & 0x9909EC6)) ^ 0x205F29FA)) ^ (v1 - 1096);
  v14 = v3;
  (*(v7 + 8 * (v1 ^ 0xF9C)))(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000054C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = ((v2 - 106) ^ 0x67) + *(v1 + v5) - ((2 * *(v1 + v5)) & 0x8F);
  return (*(v4 + 8 * (((16 * (v5 != 0)) | (32 * (v5 != 0))) ^ v2)))();
}

uint64_t sub_100005548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, _DWORD *a60, void *a61)
{
  v69 = (-((((v66 - 2010) ^ 0xFFFFFFFFFFFFEC00) + v62) ^ (((v66 - 2010) ^ 0xFFFFEC00) + v62)) | (((v66 - 2010) ^ 0xFFFFFFFFFFFFEC00) + v62)) >> 63;
  *v67 = v66 - 2009 + v62;
  v70 = v66 - 1728;
  v71 = ((v61 ^ (v61 >> 11)) << 7) & 0x9D2C5680 ^ v61 ^ (v61 >> 11);
  v72 = (v71 << (((v66 + 64) ^ 0x15) - (v66 + 38))) & 0xEFC60000;
  v73 = (v66 - 2009) ^ v69 ^ v71 ^ v72 ^ (((v66 - 2009) ^ v69 ^ v71 ^ v72) >> 18);
  v74 = (v64 + (v65 - 1));
  v75 = 840099951 * ((*(*a61 + (*a60 & (((v66 - 1728) ^ 0x6C0) - 1558943582))) ^ v74) & 0x7FFFFFFF);
  v76 = 840099951 * (v75 ^ HIWORD(v75));
  LOBYTE(v76) = *(*(v63 + 8 * (v70 ^ 0x1B9)) + (v76 >> 24)) ^ v73 ^ *(*(v63 + 8 * (v70 ^ 0x18E)) + (v70 ^ 0x11Eu) + (v76 >> 24) - 8) ^ *(*(v63 + 8 * (v70 ^ 0x15A)) + (v76 >> 24) - 11) ^ v76;
  *v74 = (-113 * BYTE3(v76)) ^ v76;
  return (*(v68 + 8 * ((1928 * (v65 == (v76 != (-113 * BYTE3(v76))))) ^ (v66 - 1728))))();
}

uint64_t sub_1000056E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X5>, uint64_t a3@<X6>, unsigned int a4@<W8>)
{
  v14 = ((((43 * (v13 ^ 0x4B4)) ^ 0x692u) + v6) ^ HIDWORD(a2)) + (*(a3 + 4 * v7) ^ a4);
  v15 = v14 - (v9 & (2 * v14)) + v10;
  *(a3 + 4 * a1) = v15 ^ v11;
  *(a3 + 4 * v7) = HIDWORD(v15) ^ v12;
  return (*(v8 + 8 * (v13 | (16 * (v5 + 1 == v4)))))();
}

uint64_t sub_10000594C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  v66 = v62 - 606;
  v67 = STACK[0x448];
  v68 = STACK[0x460];
  v69 = &v63[6 * v60];
  v69[2] = v64;
  v69[3] = v68;
  *(v69 + 2) = v67;
  v69[6] = a60;
  *v63 = a1 + 1;
  LODWORD(STACK[0x234]) = v61;
  v71 = v61 + 1615579353 > (((v66 + 371453204) & 0xE9DC15FF) + 190374176) || v61 + 1615579353 < a54;
  return (*(v65 + 8 * ((473 * v71) ^ v66)))();
}

uint64_t sub_1000059D4(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, int a6, int8x16_t *a7)
{
  v11 = (v10 + v7);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a4)), a1);
  *a7 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a4)), a1);
  a7[1] = v12;
  return (*(v9 + 8 * (a6 + v8 + 1195)))();
}

uint64_t sub_100005A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 - 200) = -875956098 - 1361651671 * ((((v66 - 200) | 0x45FA0EB7) + (~(v66 - 200) | 0xBA05F148)) ^ 0x96D8FE3A) + v65 + 1523;
  (*(v67 + 8 * (v65 + 1701)))(v66 - 200);
  *(v66 - 200) = &STACK[0x340];
  *(v66 - 184) = &STACK[0x33C];
  LOBYTE(STACK[0x1800]) = (67 * ((-2 - ((~(v66 + 56) | 0xA3) + ((v66 + 56) | 0x5C))) ^ 0xB0)) ^ 0x36;
  *(v66 - 192) = v65 - 1564307779 * ((-2 - ((~(v66 - 200) | 0xA87EF8A3) + ((v66 - 200) | 0x5781075C))) ^ 0x3F7334B0) + 252;
  (*(a65 + 8 * (v65 + 1760)))(v66 - 200);
  LODWORD(STACK[0x3A8]) = *(v66 - 172);
  return sub_100048548();
}

uint64_t sub_100005BBC(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -v7;
  v12.val[0].i64[0] = (v6 - v7 - 1) & 0xF;
  v12.val[0].i64[1] = (v6 - v7 + 14) & 0xF;
  v12.val[1].i64[0] = (v6 - v7 + 13) & 0xF;
  v12.val[1].i64[1] = (v6 - v7 + 12) & 0xF;
  v12.val[2].i64[0] = (v6 - v7 + 11) & 0xF;
  v12.val[2].i64[1] = (v6 - v7 + (((a3 + 92) | 1) ^ 0xFB)) & 0xF;
  v12.val[3].i64[0] = (v6 - v7 + 9) & 0xF;
  v12.val[3].i64[1] = (v6 - v7) & 0xF ^ 8;
  *(v6 + v9 - 8 + v10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v6 + v9 - 8 + v10), *(v3 + v12.val[0].i64[0] - 7)), veor_s8(*(v12.val[0].i64[0] + v4 - 4), *(v12.val[0].i64[0] + v5 - 2)))), 0xC7C7C7C7C7C7C7C7), vmul_s8(*&vqtbl4q_s8(v12, xmmword_10005A930), 0x6161616161616161)));
  return (*(v8 + 8 * (((8 - (v6 & 0x18) != v10) | (2 * (8 - (v6 & 0x18) != v10))) ^ (a3 - 139))))(xmmword_10005A930);
}

uint64_t sub_100005D18@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v63 = (v59 + 27) | 0x6C8;
  LODWORD(STACK[0x264]) = a1;
  v64 = (*(v58 + 8 * (v59 + 1948)))(a57 + 16, 0);
  v65 = *(a57 + 16);
  *(a57 + 4) = *(a57 + 24);
  *(a57 + 8) = v65;
  v66 = v59 + 1938;
  *(a57 + 12) = (*(a58 + 8 * v66))(v64);
  *a57 = (*(a58 + 8 * v66))();
  v60[1] = *a57 + ((1664525 * (*v60 ^ (*v60 >> 30))) ^ v60[1]);
  *(v62 - 172) = 1 - v61;
  *(v62 - 168) = (v63 - 611653343) & 0xDBBEF68E ^ v61;
  *(v62 - 160) = 2 - v61;
  *(v62 - 176) = v61 + v63 + 1212453558;
  *(v62 - 196) = v63 - 611653343 + v61;
  *(v62 - 192) = (v63 - 611653429) ^ v61;
  *(v62 - 184) = a55;
  v67 = (*(a58 + 8 * (v63 + 120)))(v62 - 200);
  return (*(a58 + 8 * *(v62 - 200)))(v67);
}

uint64_t sub_100006420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, int a19, int a20)
{
  v23 = (v22 ^ 0x631 ^ (a6 + 993) ^ a18) + a19;
  v24 = a15 < 0xB976C06;
  if (v24 == v23 > 0xF46893F9)
  {
    v24 = v23 + (((v22 ^ 0x252) + 49) ^ 0xB976C35) < a15;
  }

  return (*(v21 + 8 * ((!v24 * ((259 * (v22 ^ 0x252)) ^ 0x202)) | v22 ^ 0x631)))(a1, a20 + (v20 ^ a6), a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10000651C(uint64_t a1)
{
  v1 = 1564307779 * (a1 ^ 0x970DCC13);
  v2 = *(a1 + 8) + v1;
  return (*(*(&off_1000610D0 + v2 - 357) + (((((((*(a1 + 12) + v1) ^ 0x8167AAEE) + 2123912466) ^ (((*(a1 + 12) + v1) ^ 0x73C0047A) - 1941963898) ^ (((*(a1 + 12) + v1) ^ 0x8483E45C) + 2071731108)) - 165393720 < 0x80000064) * ((v2 - 221) ^ 0x427)) ^ v2)))();
}

uint64_t sub_1000066A0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v3 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v2 + (v8 & 0xF)) ^ ((v8 & 0xF) * (((a1 + 62) | 0x44) + 47)) ^ *(v4 + (v8 & 0xF));
  return (*(v6 + 8 * ((106 * (v8 == 0)) | (a1 + 321))))();
}

uint64_t sub_100006700(uint64_t a1, int a2, uint64_t a3)
{
  *(&STACK[0x248] + v4) = a2;
  v6 = v4 + (v3 + 366) - 839 == a3;
  return (*(v5 + 8 * (((2 * v6) | (4 * v6)) ^ (v3 + 545))))();
}

uint64_t sub_100006774@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char *a17, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v30 = 131 * (v24 ^ 0x2E2);
  v31 = 742307843 * (((v29 - 144) & 0xB8F0AAD0 | ~((v29 - 144) | 0xB8F0AAD0)) ^ 0x1A732A55);
  *(v29 - 144) = a1;
  *(v29 - 136) = &a13;
  *(v29 - 128) = v25 - v31 + (v30 ^ 0xF85709EE);
  *(v29 - 124) = v24 - v31 + 446;
  (*(v26 + 8 * (v24 + 1473)))(v29 - 144);
  a17 = &a24;
  a18 = &a22;
  *(v29 - 128) = v27;
  *(v29 - 144) = &a17;
  *(v29 - 136) = (v30 - 53) ^ (1082434553 * (((((v29 - 144) | 0xC225B9F8) ^ 0xFFFFFFFE) - (~(v29 - 144) | 0x3DDA4607)) ^ 0xA69DB08D));
  (*(v26 + 8 * (v30 + 1766)))(v29 - 144);
  *(v29 - 128) = v27;
  *(v29 - 120) = &a17;
  *(v29 - 112) = (v30 + 81) ^ (1564307779 * (((((v29 - 144) | 0x60A03EAA) ^ 0xFFFFFFFE) - (~(v29 - 144) | 0x9F5FC155)) ^ 0x8520D46));
  *(v29 - 144) = &a13;
  *(v29 - 136) = &a20;
  (*(v26 + 8 * (v30 ^ 0x9C0)))(v29 - 144);
  v32 = a18;
  *(v29 - 104) = &a17;
  *(v29 - 112) = (v30 + 1125) ^ (1785193651 * ((((v29 - 144) | 0x310C9DB4) - ((v29 - 144) & 0x310C9DB4)) ^ 0x1DBBC65C));
  *(v29 - 128) = &a20;
  *(v29 - 120) = &a20;
  *(v29 - 144) = v27;
  *(v29 - 136) = v32;
  (*(v26 + 8 * (v30 ^ 0x9E3)))(v29 - 144);
  *(v29 - 144) = v30 - 191 + 1361651671 * ((((v29 - 144) | 0x8EEAA310) - ((v29 - 144) & 0x8EEAA310)) ^ 0x5DC8539C);
  *(v29 - 104) = &a17;
  *(v29 - 136) = a8;
  *(v29 - 128) = &a20;
  *(v29 - 120) = v27;
  *(v29 - 112) = &a20;
  (*(v26 + 8 * (v30 + 1801)))(v29 - 144);
  *(v29 - 136) = (v30 - 53) ^ (1082434553 * ((((v29 - 144) | 0x80BC27C6) - (v29 - 144) + ((v29 - 144) & 0x7F43D838)) ^ 0x1BFBD14C));
  *(v29 - 128) = v28;
  *(v29 - 144) = &a17;
  (*(v26 + 8 * (v30 ^ 0x9E6)))(v29 - 144);
  *(v29 - 144) = &a13;
  *(v29 - 136) = &a15;
  *(v29 - 128) = v28;
  *(v29 - 120) = &a17;
  *(v29 - 112) = (v30 + 81) ^ (1564307779 * (((v29 - 144) & 0x95427E9C | ~((v29 - 144) | 0x95427E9C)) ^ 0xFDB04D70));
  (*(v26 + 8 * (v30 ^ 0x9C0)))(v29 - 144);
  v33 = a18;
  *(v29 - 112) = (v30 + 1125) ^ (1785193651 * (((((v29 - 144) | 0xB8BA289E) ^ 0xFFFFFFFE) - (~(v29 - 144) | 0x4745D761)) ^ 0x6BF28C89));
  *(v29 - 104) = &a17;
  *(v29 - 128) = &a15;
  *(v29 - 120) = &a15;
  *(v29 - 144) = v28;
  *(v29 - 136) = v33;
  (*(v26 + 8 * (v30 ^ 0x9E3)))(v29 - 144);
  *(v29 - 144) = v30 - 191 + 1361651671 * ((v29 + 488194534 - 2 * ((v29 - 144) & 0x1D194276)) ^ 0xCE3BB2FA);
  *(v29 - 120) = v28;
  *(v29 - 112) = &a15;
  *(v29 - 104) = &a17;
  *(v29 - 136) = a6;
  *(v29 - 128) = &a15;
  (*(v26 + 8 * (v30 + 1801)))(v29 - 144);
  *(v29 - 128) = v30 + 210068311 * ((1453926904 - ((v29 - 144) | 0x56A929F8) + ((v29 - 144) | 0xA956D607)) ^ 0x5BDD79EF) + 515;
  *(v29 - 144) = &a15;
  *(v29 - 136) = &a20;
  (*(v26 + 8 * (v30 + 1834)))(v29 - 144);
  *(v29 - 136) = v30 - 1388665877 * ((v29 - 144) ^ 0x8DAD62EC) + 356;
  *(v29 - 144) = &a15;
  v34 = (*(v26 + 8 * (v30 + 1829)))(v29 - 144);
  return (*(v26 + 8 * (((*(v29 - 132) < ((v30 + 1087) ^ 0x2CC6706u)) * (((v30 - 73) | 0x488) ^ 0x5CB)) ^ v30)))(v34);
}

uint64_t sub_100006C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v26 - 112) = v24 + 728 - 1564307779 * ((((v26 - 144) | 0x3F70BEAA) - (v26 - 144) + ((v26 - 144) & 0xC08F4150)) ^ 0xA87D72B9);
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a22;
  *(v26 - 128) = v22;
  *(v26 - 120) = a14;
  (*(v23 + 8 * (v24 + 1435)))(v26 - 144);
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a22;
  *(v26 - 128) = v22;
  *(v26 - 120) = a14;
  *(v26 - 112) = v24 + 728 - 1564307779 * ((~((v26 - 144) | 0x84D2DBB1) + ((v26 - 144) & 0x84D2DBB1)) ^ 0xEC20E85D);
  (*(v23 + 8 * (v24 ^ 0xBAB)))(v26 - 144);
  v27 = 1388665877 * ((((2 * (v26 - 144)) | 0x25FBA100) - (v26 - 144) + 1828859776) ^ 0x1F50B26C);
  *(v26 - 124) = (((4 * v24) ^ 0x587CD9ED ^ ((v24 - 740) | 0x98)) * v25 - 2112846173) ^ v27;
  *(v26 - 144) = v27 + v24 + 408;
  *(v26 - 136) = a15;
  v28 = (*(v23 + 8 * (v24 ^ 0xB89)))(v26 - 144);
  return (*(v23 + 8 * ((97 * (*(v26 - 128) == -1955771696)) ^ v24)))(v28);
}

uint64_t sub_100006F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 104) = v15;
  *(v20 - 120) = &a15;
  *(v20 - 128) = v16 - ((((v20 - 128) | 0x6A4441F0) - (v20 - 128) + ((v20 - 128) & 0x95BBBE08)) ^ 0xF103B77A) * v18 + 1527;
  v21 = (*(v17 + 8 * (v16 ^ 0x969)))(v20 - 128);
  return (*(v17 + 8 * (((*(v20 - 112) > v19) * (((v16 + 1102702226) & 0xBE461A75) + 53)) ^ v16)))(v21);
}

uint64_t sub_100007198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v68 + 8 * (v65 + 476)))(*a32, v66, 2048);
  v69 = *(a65 + 8 * ((357 * ((*(a65 + 8 * (v65 ^ 0xE32)))(*a32, &STACK[0x248], (LODWORD(STACK[0x43C]) + v67), 1) == ((v65 - 1525) | 9) - 201)) ^ v65));
  return v69();
}

uint64_t sub_100007348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = *STACK[0x238];
  STACK[0x388] = *(v61 + 8 * a8);
  return sub_10003C5B0(a1, a2, a3, a4, a5, a6, a7, v62, 1387448774, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a57, a61);
}

uint64_t sub_1000073A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v30 = a1[3];
  v37 = a1[1];
  v31 = a1[5];
  v32 = v31[1];
  *(v29 - 104) = v31;
  v36 = (v27 + 1099) ^ (1785193651 * ((v29 - 144) ^ 0x2CB75BE8));
  *(v29 - 112) = v36;
  *(v29 - 128) = &a14;
  *(v29 - 120) = a2;
  *(v29 - 144) = v30;
  *(v29 - 136) = v32;
  (*(v26 + 8 * (v27 + 1735)))(v29 - 144);
  *(v29 - 112) = v27 - 1564307779 * ((v29 - 269165964 - 2 * ((v29 - 144) & 0xEFF4DB04)) ^ 0x78F91717) + 1085;
  *(v29 - 128) = v30;
  *(v29 - 120) = v31;
  *(v29 - 144) = &a10;
  *(v29 - 136) = &a14;
  (*(v26 + 8 * (v27 + 1792)))(v29 - 144);
  *(v29 - 112) = (v27 + 1099) ^ (1785193651 * (((v29 - 144) & 0xB819FE62 | ~((v29 - 144) | 0xB819FE62)) ^ 0x6B515A75));
  *(v29 - 128) = &a24;
  *(v29 - 120) = &a10;
  *(v29 - 104) = v31;
  *(v29 - 144) = v30;
  *(v29 - 136) = &a14;
  (*(v26 + 8 * (v27 + 1735)))(v29 - 144);
  *(v29 - 104) = v31;
  *(v29 - 112) = (v27 + 1099) ^ (1785193651 * ((v29 - 1149176979 - 2 * ((v29 - 144) & 0xBB80F3FD)) ^ 0x9737A815));
  *(v29 - 144) = v30;
  *(v29 - 136) = &a24;
  *(v29 - 128) = &a20;
  *(v29 - 120) = &a10;
  (*(v26 + 8 * (v27 + 1735)))(v29 - 144);
  *(v29 - 104) = v31;
  *(v29 - 128) = &a26;
  *(v29 - 120) = &a10;
  *(v29 - 112) = (v27 + 1099) ^ (1785193651 * ((((v29 - 144) | 0xCE06447) + (~(v29 - 144) | 0xF31F9BB8)) ^ 0x20573FAE));
  *(v29 - 144) = v30;
  *(v29 - 136) = &a20;
  (*(v26 + 8 * (v27 ^ 0x9C9)))(v29 - 144);
  *(v29 - 104) = v31;
  *(v29 - 144) = v30;
  *(v29 - 136) = &a26;
  *(v29 - 112) = (v27 + 1099) ^ (1785193651 * (((((v29 - 144) | 0xC38E3526) ^ 0xFFFFFFFE) - (~(v29 - 144) | 0x3C71CAD9)) ^ 0x10C69131));
  *(v29 - 128) = &a18;
  *(v29 - 120) = &a10;
  (*(v26 + 8 * (v27 + 1735)))(v29 - 144);
  *(v29 - 144) = v30;
  *(v29 - 136) = &a18;
  *(v29 - 112) = (v27 + 1099) ^ (1785193651 * ((((v29 - 144) | 0x361A904F) + (~(v29 - 144) | 0xC9E56FB0)) ^ 0x1AADCBA6));
  *(v29 - 104) = v31;
  *(v29 - 128) = &a22;
  *(v29 - 120) = &a10;
  (*(v26 + 8 * (v27 ^ 0x9C9)))(v29 - 144);
  *(v29 - 104) = v31;
  *(v29 - 144) = v30;
  *(v29 - 136) = &a22;
  *(v29 - 112) = v36;
  *(v29 - 128) = &a12;
  *(v29 - 120) = &a10;
  (*(v26 + 8 * (v27 ^ 0x9C9)))(v29 - 144);
  *(v29 - 104) = v31;
  *(v29 - 144) = v30;
  *(v29 - 136) = &a12;
  *(v29 - 112) = (v27 + 1099) ^ (1785193651 * ((((v29 - 144) | 0x513AB473) - ((v29 - 144) & 0x513AB473)) ^ 0x7D8DEF9B));
  *(v29 - 128) = &a10;
  *(v29 - 120) = &a10;
  (*(v26 + 8 * (v27 ^ 0x9C9)))(v29 - 144);
  v33 = *v31;
  *(v29 - 128) = v27 + 1082434553 * ((v29 - 144) ^ 0x9B47F68A) + 811;
  *(v29 - 144) = &a16;
  *(v29 - 136) = v33;
  (*(v26 + 8 * (v27 ^ 0x9ED)))(v29 - 144);
  *(v29 - 128) = (v27 + 305) ^ (1563904627 * ((151503863 - ((v29 - 144) | 0x907C3F7) + ((v29 - 144) | 0xF6F83C08)) ^ 0xDF378B34));
  *(v29 - 136) = v37;
  v34 = (*(v26 + 8 * (v27 + 1757)))(v29 - 144);
  return (*(v26 + 8 * ((((*(v29 - 144) - 894999276) > 0x7FFFFFFE) * (v28 ^ 0x78E ^ (v27 - 1467325159) & 0x57759DF7)) ^ v27)))(v34);
}

void sub_10000781C(_DWORD *a1)
{
  v1 = a1[2] ^ (1785193651 * ((1896591278 - (a1 | 0x710BAFAE) + (a1 | 0x8EF45051)) ^ 0xA2430BB9));
  v2 = *a1;
  v3 = *(*a1 + 4);
  if (v3 - 922138987 < 0)
  {
    v4 = 922138987 - v3;
  }

  else
  {
    v4 = v3 - 922138987;
  }

  v7 = v1 - 1388665877 * (((&v6 ^ 0x20B489A | 0xF4B0B461) + (&v6 ^ 0xB0808041 | 0xB4F4B9E)) ^ 0x3F26AA36) - 1022;
  v6 = v2;
  v5 = *(&off_1000610D0 + (v1 - 1592));
  (*(v5 + 8 * (v1 + 451)))(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100007BF4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v12 = (v8 + 4 * v6);
  v13 = HIDWORD(v3) + (*v12 ^ v2) + HIDWORD(v4) + v10 * (*(v9 + 4 * v6) ^ v2);
  *(v12 - 1) = v2 + v11 + v13 - (a1 & (2 * v13)) - 362;
  return (*(v7 + 8 * ((56 * (v6 + 1 == a2)) ^ v5)))();
}

uint64_t sub_100007CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2B0]) = 619974254;
  LODWORD(STACK[0x464]) = 128;
  v69 = STACK[0x398] + 528;
  v70 = STACK[0x398] + 800;
  v71 = STACK[0x210];
  v72 = 742307843 * ((((v67 - 200) | 0xB8078D57) - ((v67 - 200) & 0xB8078D57)) ^ 0xE57BF22D);
  *(v67 - 176) = STACK[0x268];
  *(v67 - 168) = 0;
  *(v67 - 136) = (v65 + 1190) ^ v72;
  *(v67 - 128) = v70;
  *(v67 - 160) = 424876130 - v72;
  *(v67 - 152) = v71;
  *(v67 - 144) = 0;
  *(v67 - 200) = &STACK[0x464];
  *(v67 - 192) = v69;
  v73 = (*(v68 + 8 * (v65 + 1369)))(v67 - 200);
  return (*(a65 + 8 * (((*(v67 - 184) == ((v65 + 1164) ^ (v66 + 586))) * ((v65 - 69) ^ 0x853)) ^ v65)))(v73);
}

uint64_t sub_100007DD0()
{
  v2 = STACK[0x3F4];
  v3 = STACK[0x3D0];
  STACK[0x408] = (LODWORD(STACK[0x3F4]) - 1641671677);
  return (*(v1 + 8 * ((433 * (v2 != 1641671677)) ^ (v0 - 1823))))(v3);
}

uint64_t sub_100007E14(uint64_t a1)
{
  v1 = 1388665877 * ((((2 * a1) | 0x4889DF1C) - a1 - 608497550) ^ 0xA9E98D62);
  v2 = *a1 - v1;
  v3 = -1116517487 * (*(a1 + 20) ^ v1);
  v5 = v3 + 1973445056;
  v4 = v3 + 1973445056 < 0;
  v6 = -1973445056 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 922138987;
  v4 = v7 - 922138987 < 0;
  v9 = 922138987 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_1000610D0 + (v2 ^ 0x413)) + ((99 * ((v6 >> 5) < v9)) ^ v2)))();
}

uint64_t sub_100007F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2 - 1;
  STACK[0x408] = v7;
  *(a1 + v7) = ((v2 + 1) ^ v4) * (v2 + 18);
  return (*(v6 + 8 * (((STACK[0x408] != 0) * v5) ^ v3)))();
}

void sub_100007F2C(uint64_t a1)
{
  v1 = *(a1 + 16) - 210068311 * ((-1787573181 - (a1 | 0x9573CC43) + (a1 | 0x6A8C33BC)) ^ 0x98079C54);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10000808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = a21 + 2071861013 + (a16 & 0x5E6DD6F1) - 176;
  v27 = v26 < 0x7B7E1715;
  v28 = v26 > a18;
  if (a18 < 0x7B7E1715 != v27)
  {
    v28 = v27;
  }

  return (*(v25 + 8 * (v28 | (a7 + 168))))(a1, a2, a3, a25);
}

uint64_t sub_100008104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(v8 + ((v7 - 1335) ^ a2) + a4) = *(v6 + ((v7 - 1335) ^ a2) + a4);
  v10 = v9 == a2;
  v11 = a2 + 8;
  v12 = v10;
  return (*(a3 + 8 * ((v12 * v4) ^ v5)))(a1, v11);
}

uint64_t sub_1000081E4@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>, int8x8_t a7@<D2>)
{
  v14 = a4 - 8;
  v16.val[0].i64[0] = (v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v14 + (((a2 ^ 1) * v7) ^ 4)) & 0xF;
  v16.val[1].i64[1] = (v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v14 + 9) & 0xF;
  v16.val[3].i64[1] = v14 & 0xF ^ 8;
  *(v11 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v12 + v14), *(v10 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 2), *(v16.val[0].i64[0] + v9 - 5)))), a7), vmul_s8(*&vqtbl4q_s8(v16, a5), a6)));
  return (*(v13 + 8 * (((a1 == v14) * a3) ^ a2)))();
}

uint64_t sub_1000081EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = 1037613739 * (((((v17 - 144) | 0xAB9D0E76) ^ 0xFFFFFFFE) - (~(v17 - 144) | 0x5462F189)) ^ 0x8560DCF6);
  *(v17 - 136) = &a14;
  *(v17 - 128) = v14 - v18 - 971;
  *(v17 - 144) = v18 + 1981441926;
  v19 = (*(v15 + 8 * (v14 + 165)))(v17 - 144);
  return (*(v15 + 8 * (((v14 - 1991) * (v16 != 0)) ^ (v14 - 1180))))(v19);
}

uint64_t sub_1000082B0(int a1)
{
  v4 = v2 < 0x30D7E907;
  if (v4 == (v1 + 1) > 0xFFFFFFFFCF2816F8)
  {
    v4 = ((a1 + 63358462) & 0xFC393B6B ^ 0x30D7EB61uLL) + v1 < v2;
  }

  return (*(v3 + 8 * ((502 * !v4) ^ a1)))();
}

uint64_t sub_100008360@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v9 = STACK[0x2F8];
  v10 = *(a7 + 72);
  v11 = a3 + v7;
  *(v9 + v11) = v10 ^ a6;
  *(v9 + v11 + 1) = ((v10 >> ((a1 + 70) ^ a4)) ^ a5) - ((2 * ((v10 >> ((a1 + 70) ^ a4)) ^ a5)) & 0x8F) - 57;
  *(v9 + v11 + 2) = (BYTE2(v10) ^ 0x3A) - ((2 * (BYTE2(v10) ^ 0x3A)) & 0x8F) - 57;
  *(v9 + v11 + 3) = (HIBYTE(v10) ^ 0x9C) - ((2 * (HIBYTE(v10) ^ 0x9C)) & 0x8F) - 57;
  return (*(v8 + 8 * (((*(a7 + 92) > 4u) * a2) ^ a1)))();
}

void sub_10000841C(uint64_t a1)
{
  v2 = *(&off_1000610D0 + ((107 * (dword_1000642F8 ^ 0xF9 ^ qword_100064130)) ^ byte_1000577F0[byte_100052B80[(107 * (dword_1000642F8 ^ 0xF9 ^ qword_100064130))] ^ 0xEF]) - 81);
  v3 = 107 * (*v2 ^ qword_100064130 ^ 0xF9);
  v4 = *(&off_1000610D0 + (byte_100052980[byte_10004D2E8[v3 - 8] ^ 0xC4] ^ v3) - 149);
  v5 = &v9[*v2 + *(v4 - 4)];
  v6 = 1010482283 * (v5 + 0x5450BF49BFD4E907);
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *v2 = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_1000610D0 + ((107 * ((qword_100064130 + dword_1000642F8) ^ 0xF9)) ^ byte_1000577F0[byte_100052B80[(107 * ((qword_100064130 + dword_1000642F8) ^ 0xF9))] ^ 0xF5]) + 128);
  (*(v8 + 8 * ((byte_1000577F0[byte_100052B88[(107 * (v4 ^ 0xF9 ^ v7)) - 8] ^ 0xF5] ^ (107 * (v4 ^ 0xF9 ^ v7))) + 2102)))(*(&off_1000610D0 + (byte_10004D1EC[(byte_10005A5BC[(107 * ((v7 + v4) ^ 0xF9)) - 12] ^ 0x16) - 12] ^ (107 * ((v7 + v4) ^ 0xF9))) - 150) - 8, sub_100032D18);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000085F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = v17 - ((((v19 - 136) | 0xD3F5051) - ((v19 - 136) & 0xD3F5051)) ^ 0x9678A6DB) * v15 + 1390;
  *(v19 - 128) = &a15;
  *(v19 - 112) = v18;
  v20 = (*(v16 + 8 * (v17 ^ 0x9D2)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 120) > ((v17 + 1730918449) & 0x98D447BF) + 1112915012) * (v17 + 267)) ^ v17)))(v20);
}

uint64_t sub_1000086A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(a46 + 52);
  v72 = STACK[0x3C4];
  v73 = (v71 ^ 0xC625BF08) & (2 * ((((v67 ^ 0x63D) - 835) ^ 0x9749BB95) & v71)) ^ (((v67 ^ 0x63D) - 835) ^ 0x9749BB95) & v71;
  v74 = ((2 * (v71 ^ 0xE4A68F08)) ^ 0xE7DE6014) & (v71 ^ 0xE4A68F08) ^ (2 * (v71 ^ 0xE4A68F08)) & 0x73EF300A;
  v75 = v74 ^ 0x1021100A;
  v76 = (v74 ^ 0x634E2002) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0xCFBCC028) & v75 ^ (4 * v75) & 0x73EF3008;
  v78 = v76 ^ 0x73EF300A ^ (v77 ^ 0x43AC0000) & (16 * v76);
  v79 = (16 * (v77 ^ 0x30433002)) & 0x73EF3000 ^ 0x410C300A ^ ((16 * (v77 ^ 0x30433002)) ^ 0x3EF300A0) & (v77 ^ 0x30433002);
  v80 = (v78 << 8) & 0x73EF3000 ^ v78 ^ ((v78 << 8) ^ 0xEF300A00) & v79;
  v81 = 1785193651 * ((((2 * (v69 - 200)) | 0xC344B16E) - (v69 - 200) + 509454153) ^ 0xCD15035F);
  *(v69 - 196) = v67 - v81 - 474;
  *(v69 - 192) = (a18 ^ 0x4894C1C2) + v81;
  *(v69 - 168) = a37;
  *(v69 - 160) = (v71 ^ (2 * ((v80 << 16) & 0x73EF0000 ^ v80 ^ ((v80 << 16) ^ 0x300A0000) & ((v79 << 8) & 0x73EF0000 ^ 0x10CF0000 ^ ((v79 << 8) ^ 0xEF300000) & v79))) ^ 0xF0A61341) - v81;
  *(v69 - 156) = (v72 ^ 0x6F7FFFEE) - v81 + ((2 * v72) & 0xDEFFFFDC) - 587228942;
  *(v69 - 184) = v66;
  *(v69 - 176) = &STACK[0x4E0];
  v82 = (*(v70 + 8 * (v67 + 1699)))(v69 - 200);
  v83 = *(v69 - 200);
  LODWORD(STACK[0x3A8]) = v83;
  return (*(a66 + 8 * ((1958 * (v83 == v68)) ^ v67)))(v82);
}

uint64_t sub_1000089C8(_OWORD *a1)
{
  v6 = *v3;
  *(a1 - 1) = *(v3 - 1);
  *a1 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))(a1 + 2);
}

uint64_t sub_100008A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v20 = v18 + 16;
  v21 = (v20 ^ a4 ^ (v16 + 130)) + v15;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v24.i64[1] = a11;
  v25 = vrev64q_s8(vmulq_s8(v24, a12));
  *(v17 + v21) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v22 - 15), *(a1 + v21)), veorq_s8(*(v12 + v22 - 15), *(v14 + v22 - 15))), vextq_s8(v25, v25, 8uLL));
  return (*(v19 + 8 * (((a3 == v20) * a5) ^ v16)))();
}

uint64_t sub_100008A38@<X0>(char a1@<W8>)
{
  v6 = (v4 + v1 + 16);
  v7 = v2[1];
  *(v6 - 1) = *v2;
  *v6 = v7;
  return (*(v5 + 8 * ((((a1 & 0x60) == 32) * ((v3 + 658) ^ 0x39E)) ^ v3)))(v4 + v1 + 48);
}

void sub_100008BD8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a5 = (v7 - 304) ^ ((&a3 ^ 0xD1022D7F) * v8);
  a6 = v9;
  a3 = a1;
  a4 = v9;
  (*(v6 + 8 * (v7 ^ 0xB2C)))(&a3);
  sub_100028394();
}

uint64_t sub_100008C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x330];
  v73 = 50899313 * ((((v70 - 200) | 0xA4C781F5) + (~(v70 - 200) | 0x5B387E0A)) ^ 0x6CA645A2);
  *(v70 - 152) = v73 + 246615891 * LODWORD(STACK[0x344]) + 1037154084;
  *(v70 - 168) = v66;
  *(v70 - 160) = a44;
  *(v70 - 192) = v72;
  *(v70 - 200) = a43;
  *(v70 - 180) = (v65 ^ 0xD1FDFFFF) - v73 + v67 + ((v68 + 1129) | 0x18A) + 2129014370;
  *(v70 - 176) = (v68 + 1421512026) ^ v73;
  v74 = (*(v71 + 8 * (v68 ^ 0x97F)))(v70 - 200);
  v75 = *(v70 - 184);
  LODWORD(STACK[0x3A8]) = v75;
  return (*(a65 + 8 * ((1207 * (v75 == v69)) ^ v68)))(v74);
}

uint64_t sub_100008E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v14 = ((v11 - 126) ^ 0x3FC ^ (v8 + 814) ^ *(v12 + 4 * v13)) + v10;
  *(v12 + 4 * v13) = v14 + v8 - (((a6 ^ (4 * (v11 - 126))) + v9) & (2 * v14));
  return (*(v7 + 8 * (((HIDWORD(v14) == 0) * a7) ^ (v11 - 126))))();
}

uint64_t sub_100008E20@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3E4]) = 2;
  STACK[0x458] = 0;
  LODWORD(STACK[0x3BC]) = 0;
  LODWORD(STACK[0x2C4]) = 0;
  return (*(v2 + 8 * (((((67 * (a1 ^ 0x610) + 1733513253) & 0x98ACAFDA) - 1964) * ((v1 >> 1) & 1)) ^ a1)))();
}

void sub_100008E78(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  v2 = *(a1 + 24) > *(a1 + 40);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_100008FC0@<X0>(char a1@<W2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(a4 + v8) = *(a3 + v8) - ((*(a3 + v8) << (((v5 - 34) | a1) - 66)) & v6) - 57;
  return (*(v7 + 8 * (((v8 == 0) * a2) ^ v5)))();
}

uint64_t sub_1000090B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(a7 + 8 * (v65 ^ 0x9D2)))();
  LODWORD(STACK[0x4A0]) = v66;
  return (*(a65 + 8 * ((1139 * (v66 == ((v65 - 534505864) & 0x1FDBEFDF ^ (v67 + 586)))) ^ v65)))(v68);
}

uint64_t sub_10000910C@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x3A4]) = a2;
  LODWORD(STACK[0x2D4]) = a1;
  LODWORD(STACK[0x244]) = v3;
  LODWORD(STACK[0x20C]) = v2;
  LODWORD(STACK[0x454]) = 1153774390;
  v4 = STACK[0x4B8];
  v5 = (((a2 ^ 0x91354B16) + 1858778346) ^ ((a2 ^ 0x9CEE1776) + 1662118026) ^ ((a2 ^ 0x91E16B2B) + 1847497941)) + (((*(v4 + 72) ^ 0xF17B4F83) + 243576957) ^ ((*(v4 + 72) ^ 0xAF3DEEB2) + 1354895694) ^ ((*(v4 + 72) ^ 0xC27C967A) + 1032022406)) - 1908608603;
  v6 = (v5 ^ 0x2B678FC) & (2 * (v5 & 0xAA377CF1)) ^ v5 & 0xAA377CF1;
  v7 = ((2 * (v5 ^ 0x2B4A0FC)) ^ 0x5107B81A) & (v5 ^ 0x2B4A0FC) ^ (2 * (v5 ^ 0x2B4A0FC)) & 0xA883DC0C;
  v8 = v7 ^ 0xA8804405;
  v9 = (v7 ^ 0x39008) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xA20F7034) & v8 ^ (4 * v8) & 0xA883DC0C;
  v11 = (v10 ^ 0xA0035000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x8808C09)) ^ 0x883DC0D0) & (v10 ^ 0x8808C09) ^ (16 * (v10 ^ 0x8808C09)) & 0xA883DC00;
  v13 = v11 ^ 0xA883DC0D ^ (v12 ^ 0x8801C000) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x28830000 ^ v13 ^ ((v13 << 16) ^ 0x5C0D0000) & (((v12 ^ 0x20821C0D) << 8) & 0x28830000 ^ 0x28030000 ^ (((v12 ^ 0x20821C0D) << 8) ^ 0x3DC0000) & (v12 ^ 0x20821C0D)))) ^ 0x7708F3A0;
  v15 = (((v3 ^ 0xE8B5C6AD) + 390740307) ^ ((v3 ^ 0x33273AD5) - 858208981) ^ ((v3 ^ 0x47A8CB33) - 1202244403)) + (((*(v4 + 76) ^ 0x4655BA7A) - 1180023418) ^ ((*(v4 + 76) ^ 0xB3FBEDCA) + 1275335222) ^ ((*(v4 + 76) ^ 0x699460FB) - 1771331835)) - 2064869536;
  *(v4 + 72) = v14;
  *(v4 + 76) = v15 ^ ((v15 ^ 0xB593ED) - 1288551207) ^ ((v15 ^ 0xBC33A56F) + 263483995) ^ ((v15 ^ 0x9F1169B7) + 748076675) ^ ((v15 ^ 0x6FEF77FF) - 597122869) ^ 0xD0421F81;
  v16 = STACK[0x4B8];
  v17 = (((LODWORD(STACK[0x2D4]) ^ 0xB0A0A4EA) + 1331649302) ^ ((LODWORD(STACK[0x2D4]) ^ 0x714A11B1) - 1900679601) ^ ((LODWORD(STACK[0x2D4]) ^ 0x5DD08210) - 1573945872)) + 1309036605 + (((*(STACK[0x4B8] + 80) ^ 0x2C193160) - 739848544) ^ ((*(STACK[0x4B8] + 80) ^ 0x3474D4E) - 55004494) ^ ((*(STACK[0x4B8] + 80) ^ 0xB3644B65) + 1285272731));
  v18 = (v17 ^ 0xC86F5C58) & (2 * (v17 & 0xEA6E1E59)) ^ v17 & 0xEA6E1E59;
  v19 = ((2 * (v17 ^ 0x48374CE8)) ^ 0x44B2A562) & (v17 ^ 0x48374CE8) ^ (2 * (v17 ^ 0x48374CE8)) & 0xA25952B0;
  v20 = v19 ^ 0xA2495291;
  v21 = (v19 ^ 0x100020) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x89654AC4) & v20 ^ (4 * v20) & 0xA25952B0;
  v23 = (v22 ^ 0x80414280) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x22181031)) ^ 0x25952B10) & (v22 ^ 0x22181031) ^ (16 * (v22 ^ 0x22181031)) & 0xA25952B0;
  v25 = v23 ^ 0xA25952B1 ^ (v24 ^ 0x20110200) & (v23 << 8);
  v26 = v17 ^ 0x36C48C70 ^ (2 * ((v25 << 16) & 0x22590000 ^ v25 ^ ((v25 << 16) ^ 0x52B10000) & (((v24 ^ 0x824850A1) << 8) & 0x22590000 ^ 0x22090000 ^ (((v24 ^ 0x824850A1) << 8) ^ 0x59520000) & (v24 ^ 0x824850A1))));
  v27 = (((LODWORD(STACK[0x20C]) ^ 0xB4645E71) + 1268490639) ^ ((LODWORD(STACK[0x20C]) ^ 0x12011A4A) - 302062154) ^ ((LODWORD(STACK[0x20C]) ^ 0x3A5F7370) - 979334000)) + 1312883585 + (((*(STACK[0x4B8] + 84) ^ 0x2634C9B1) - 640993713) ^ ((*(STACK[0x4B8] + 84) ^ 0x4F6533DE) - 1332032478) ^ ((*(STACK[0x4B8] + 84) ^ 0xF56BCD24) + 177484508));
  *(v16 + 80) = v26;
  *(v16 + 84) = v27 ^ ((v27 ^ 0x2C92A3C3) - 962475816) ^ ((v27 ^ 0x184AA08E) - 226899045) ^ ((v27 ^ 0x56EB69D8) - 1126694195) ^ ((v27 ^ 0x77FFFE7E) - 1647536789) ^ 0x89F6A3A0;
  STACK[0x358] -= 320;
  return (STACK[0x308])();
}

void sub_10000913C()
{
  v0 = STACK[0x468];
  v1 = STACK[0x250];
  LODWORD(STACK[0x400]) = 1;
  STACK[0x478] = v0;
  STACK[0x288] = v1;
  JUMPOUT(0x10000917CLL);
}

uint64_t sub_100009188()
{
  v6 = (v0 - 1397) | 0x40;
  STACK[0x358] = v4 + 112;
  STACK[0x2A0] = v1;
  if (v1)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v5 + 8 * ((v8 * (((15 * (v6 ^ v3)) ^ 0xAE) - 1875)) ^ v6)))();
}

uint64_t sub_100009204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 112) = v17 - 50 + 210068311 * ((1983668020 - ((v20 - 128) | 0x763C5F34) + ((v20 - 128) | 0x89C3A0CB)) ^ 0x7B480F23) + 83;
  *(v20 - 128) = &a15;
  *(v20 - 120) = &a17;
  v21 = (*(v18 + 8 * ((v17 - 50) ^ 0xB8A)))(v20 - 128);
  return (*(v18 + 8 * ((82 * (v19 != ((v17 - 236) ^ 0xEF) - 655)) ^ (v17 - 50))))(v21);
}

uint64_t sub_1000094CC@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(a2) = (v58 ^ 0x16) - v57;
  *a3 = a1;
  v59 = (*(v56 + 48 * v54 + 8))(a4);
  return (*(v55 + 8 * ((41 * (v59 + 1982089928 - ((v59 << ((2 * (v58 ^ 0x16)) ^ 0x11)) & (HIDWORD(a2) - 36367694)) == 1982089928)) ^ v58)))(v59, v60, v61, v62, 2147483652, 4017604474, 2653295619, 2576568559, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1000096A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = (v13 - 154) | 2;
  *(*(a13 + 96) + 1568) = 0;
  v16 = *(a13 + 72) == ((v15 + 2099239880) & 0xAAFFFFF7 ^ 0x49C631F4);
  return (*(v14 + 8 * ((4 * v16) | (v16 << 6) | v15)))();
}

uint64_t sub_100009CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + (v11 ^ 4)) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a3 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v8 + v16.val[0].i64[0] - 7), *(a4 - 8 + v10)), veor_s8(*(v7 + v16.val[0].i64[0] - 7), *(v9 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 != v14) * a5) ^ v12)))();
}

uint64_t sub_100009D48()
{
  v6 = *(v4 + 4 * (v3 - 1));
  *(v4 + 4 * v3) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v4 + 4 * v3)) - v3;
  v7 = 50899313 * ((((v5 - 152) ^ 0xE63DEA76302E61E0 | 0x9415E2C85538FD8DLL) - (((v5 - 152) ^ 0xE63DEA76302E61E0) & 0x9415E2C85538FD8DLL)) ^ 0xB14D651EAD77583BLL);
  STACK[0x5A8] = 623 - v7;
  *(v5 - 120) = (v1 - 1082899342) & 0x4F77F552 ^ v7;
  *(v5 - 148) = v1 - 1082899342 + v7;
  *(v5 - 144) = (v1 - 1082899399) ^ v7;
  *(v5 - 128) = v7 + v1 - 1203574407;
  *(v5 - 124) = 1 - v7;
  STACK[0x5C0] = v3 + 1 - v7;
  v8 = (*(v2 + 8 * (v1 ^ (v0 + 2094))))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 152)))(v8);
}

uint64_t sub_100009F24@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) + 327759562;
  v5 = (v2 + 327759562 < -897585099) ^ (v4 < ((a1 - 816) | 0x120) - 897585389);
  v6 = v2 + 327759562 > v4;
  if (v5)
  {
    v7 = v2 + 327759562 < -897585099;
  }

  else
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((v7 * (((a1 - 530) | 2) + 741)) ^ a1)))();
}

uint64_t sub_100009F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v21 - 128) = v16;
  *(v21 - 136) = a10 * v15 + 510678293;
  *(v21 - 120) = v20 - a10 * v15 + 768;
  (*(v17 + 8 * (v20 + 1002)))(v21 - 136);
  *(v21 - 120) = v20 + ((~(v18 | 0xA115D599) + (v18 & 0xA115D599)) ^ 0xC5ADDCEC) * v15 + 60;
  *(v21 - 136) = v19;
  *(v21 - 128) = a15;
  (*(v17 + 8 * (v20 ^ 0xCDC)))(v21 - 136);
  *(v21 - 136) = v20 - ((515109042 - (v18 | 0x1EB3F0B2) + a9) ^ 0x7A0BF9C7) * v15 + 642;
  *(v21 - 128) = a15;
  *(v21 - 112) = v16;
  v22 = (*(v17 + 8 * (v20 + 994)))(v21 - 136);
  return (*(v17 + 8 * (((*(v21 - 120) > 0x4255BDDBu) * (((v20 - 425090215) & 0x195658F7 ^ 0x9A) + v20 - 1004)) ^ v20)))(v22);
}

uint64_t sub_10000A0D4()
{
  v5 = *(*(v1 + 24) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0xDEEDF7EF) + 2044385370 + ((2 * v5) & 0xBDDBEFDE);
  v8 = v0 + 1 == ((2 * v3) ^ 0x446u) - 26 || v6 != 1489555529;
  return (*(v2 + 8 * ((125 * v8) ^ v3)))();
}

uint64_t sub_10000A14C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v63 = STACK[0x380];
  v64 = 1564307779 * ((-1070698842 - ((v61 - 200) | 0xC02E6EA6) + ((v61 - 200) | 0x3FD19159)) ^ 0xA8DC5D4A);
  *(v61 - 172) = ((LODWORD(STACK[0x344]) ^ 0x7EDBB95F) - 1073774596 + ((2 * LODWORD(STACK[0x344])) & 0xFDB772BE)) ^ v64;
  *(v61 - 192) = a1;
  *(v61 - 200) = a37;
  *(v61 - 168) = v63;
  *(v61 - 160) = a36;
  *(v61 - 184) = (v58 | 0x11577EF0) ^ v64;
  *(v61 - 180) = v59 - v64 - 2013067027;
  v65 = (*(v62 + 8 * (v59 ^ 0x957)))(v61 - 200);
  v66 = *(v61 - 176);
  LODWORD(STACK[0x3A8]) = v66;
  return (*(a58 + 8 * ((1919 * (v66 == v60 + ((v59 - 1909453320) & 0x71CFF7FA) - 2010)) ^ v59)))(v65);
}

void sub_10000A2D8(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1469561024;
  v3 = *(*(a1 + 8) + 4) - 1469561024;
  v4 = (v2 < 1600061611) ^ (v3 < 1600061611);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 1600061611;
  }

  v1 = *a1 + 1082434553 * (((a1 | 0x4C545AC7) - a1 + (a1 & 0xB3ABA538)) ^ 0xD713AC4D);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10000A3B8(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10000A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v28 - 128) = v22;
  *(v28 - 120) = v25;
  *(v28 - 144) = &a22;
  *(v28 - 136) = &a22;
  *(v28 - 112) = v26 - 1564307779 * ((v28 - 144 + v24 - 2 * ((v28 - 144) & v24)) ^ 0x664898BD) + 300;
  (*(v23 + 8 * (v26 ^ 0xC17)))(v28 - 144);
  v29 = 1388665877 * ((2 * ((v28 - 144) & 0x76435E30) - (v28 - 144) - 1984126520) ^ 0x411C324);
  *(v28 - 124) = (1484576113 * (v27 - 1) + 856306053) ^ v29;
  *(v28 - 144) = v29 + v26 - 20;
  *(v28 - 136) = a15;
  v30 = (*(v23 + 8 * (v26 + 973)))(v28 - 144);
  return (*(v23 + 8 * ((112 * (*(v28 - 128) == ((v26 + 55965994) & 0xFCAA02EB) - 1955771898)) ^ v26)))(v30);
}

uint64_t sub_10000A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v64 = (v63 + 4 * v59);
  v65 = v60 & 0x80000000;
  v66 = (((v58 - 641) | 0x10u) ^ 0x15DLL) + v59;
  v67 = *(v63 + 4 * v66);
  v68 = v64[397] ^ ((v67 & 0x7FFFFFFE | v65) >> 1);
  *v64 = (v68 + v61 - (a5 & (2 * v68))) ^ *(&a58 + (v67 & 1));
  return (*(v62 + 8 * (((8 * (v66 == 227)) | (32 * (v66 == 227))) ^ v58)))();
}

uint64_t sub_10000A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x394];
  LODWORD(STACK[0x424]) = STACK[0x394];
  v70 = 1785193651 * ((((v67 - 200) | 0x348A4CF4) - (v67 - 200) + ((v67 - 200) & 0xCB75B308)) ^ 0x183D171C);
  *(v67 - 176) = &STACK[0x1790];
  *(v67 - 192) = &STACK[0x380];
  *(v67 - 200) = a32;
  *(v67 - 184) = v70 + (v69 ^ 0x7E7BFBB7) + ((2 * v69) & 0xFCF7F76E) - 605054996;
  *(v67 - 152) = &STACK[0x3C4];
  *(v67 - 144) = &STACK[0x1778];
  *(v67 - 168) = v70 + 1465649469 * a31 + 1517324686;
  *(v67 - 164) = v66 - v70 - 1877;
  v71 = (*(v68 + 8 * (v66 ^ 0xF6F)))(v67 - 200);
  v72 = *(v67 - 160);
  LODWORD(STACK[0x3A8]) = v72;
  return (*(a66 + 8 * ((1639 * (v72 == 1982089928)) ^ (v66 - 1752))))(v71);
}

uint64_t sub_10000A8BC@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 220 + a2 + 72);
  v8 = ((((v2 + 2111274366) & 0xEF2BDFFF) - 26468169) & (2 * a2)) + (a2 ^ 0xB5B7BFDB) + v4;
  *(a1 + v8) = (HIBYTE(v7) ^ 0x9C) - ((2 * (HIBYTE(v7) ^ 0x9C)) & 0x8F) - 57;
  *(a1 + v8 + 1) = (BYTE2(v7) ^ 0x3A) - ((2 * (BYTE2(v7) ^ 0x3A)) & 0x8F) - 57;
  *(a1 + v8 + 2) = (BYTE1(v7) ^ 0x37) - ((2 * (BYTE1(v7) ^ 0x37)) & 0x8F) - 57;
  *(a1 + v8 + 3) = v7 ^ 0x8C;
  return (*(v5 + 8 * (((a2 + 4 < *(v6 - 128)) * v3) ^ v2)))();
}

uint64_t sub_10000A994()
{
  v5 = ((v1 - 777782509) & 0x2E5C07EF ^ (v0 - 794)) + v2;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  if (v3 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = -v3;
  }

  return (*(v4 + 8 * ((1737 * (v6 > v7)) ^ v1)))();
}

void sub_10000A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a45 + 360) = v69;
  v76 = (*(v75 + 8 * (v68 + 164)))(a1, 2, &STACK[0x3E4], v71, (v73 - 1641671677), v70, &STACK[0x458], &STACK[0x3BC]);
  LODWORD(STACK[0x314]) = v76;
  if (v76 == 268435459)
  {
    LODWORD(STACK[0x3AC]) = -1982131728;
    JUMPOUT(0x100039700);
  }

  if (v76)
  {
    v80 = 1564307779 * ((-2 - (((v74 - 200) ^ 0x202029C0 | 0xD1D9D63D) + ((v74 - 200) ^ 0x80815034 | 0x2E2629C2))) ^ 0xC8534A18);
    *(v74 - 200) = &STACK[0x3AC];
    *(v74 - 192) = v72 - v80 - 1474;
    *(v74 - 188) = 1982089928 - v80 + v76 - ((2 * v76) & 0xEC489590);
    (*(a65 + 8 * (v72 + 160)))(v74 - 200);
    sub_10002D3BC();
  }

  else
  {
    sub_10000AA94(v76, v77, v78, 3572687419, 1840732354, 722279876, 2312835345, v79, &STACK[0x240], &STACK[0x404], &a68, &STACK[0x2C4], a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
  }
}

uint64_t sub_10000AA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  LODWORD(STACK[0x2B0]) = -410737402;
  v51 = STACK[0x458];
  v48 = (LODWORD(STACK[0x3BC]) ^ 0xE1FDEFFF) + 2145123326 + ((2 * LODWORD(STACK[0x3BC])) & 0xC3FBDFFE);
  STACK[0x210] = v45;
  STACK[0x368] = v46;
  v49 = &STACK[0x500] + v47;
  STACK[0x268] = &STACK[0x500] + v47;
  STACK[0x398] = &STACK[0x500] + v47 + 128;
  *v49 = 0x6370646600;
  v49[8] = 1;
  return sub_10000AB1C(a1, a2, a3, a4, a5, a6, a7, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, v51, a38, a39, a40, a41, a42, a43, a44, a45, &STACK[0x500] + v47 + 128);
}

void sub_10000AD74(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 198160601;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10000AE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 + 4 * (v66 - 1));
  *(v67 + 4 * v66) = ((1566083941 * (v69 ^ (v69 >> 30))) ^ *(v67 + 4 * v66)) - v66;
  v70 = 50899313 * ((v68 - 0x6BFEEB98F9CDEFD1 - 2 * ((v68 - 200) & 0x94011467063210F7)) ^ 0x576479C7CE53D4A1);
  *(v68 - 160) = v66 + 1 - v70;
  *(v68 - 184) = 623 - v70;
  v71 = (50899313 * ((v68 + 103944239 - 2 * ((v68 - 200) & 0x63210F7)) ^ 0xCE53D4A1)) ^ (v65 - 78190527);
  *(v68 - 196) = v65 - 78190527 + 50899313 * ((v68 + 103944239 - 2 * ((v68 - 200) & 0x63210F7)) ^ 0xCE53D4A1);
  *(v68 - 192) = v71 ^ 0x18;
  *(v68 - 176) = 50899313 * ((v68 + 103944239 - 2 * ((v68 - 200) & 0x63210F7)) ^ 0xCE53D4A1) + v65 + 1212453558;
  *(v68 - 172) = 1 - 50899313 * ((v68 + 103944239 - 2 * ((v68 - 200) & 0x63210F7)) ^ 0xCE53D4A1);
  *(v68 - 168) = v71 ^ 0x7F;
  v72 = (*(a3 + 8 * (v65 + 120)))(v68 - 200);
  return (*(a65 + 8 * *(v68 - 200)))(v72);
}

uint64_t sub_10000AFD8@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q4>, int8x16_t a3@<Q5>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v21 = (a4 + a1);
  v22 = vaddq_s8(vsubq_s8(v20[1], vandq_s8(vaddq_s8(v20[1], v20[1]), a2)), a3);
  v21[-1] = vaddq_s8(vsubq_s8(*v20, vandq_s8(vaddq_s8(*v20, *v20), a2)), a3);
  *v21 = v22;
  return (*(v19 + 8 * ((((((146 * (v18 ^ 0x79E)) ^ 0x70A) & a18) != 32) * (146 * (v18 ^ 0x79E) - 1649)) ^ (146 * (v18 ^ 0x79E)))))();
}

uint64_t sub_10000B050(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v11 - 132);
  if (v12 == 2)
  {
    v14 = *(v11 - 136) != ((225 * (v10 ^ (v10 - 2))) ^ 0x1C2);
    return (*(v9 + 8 * (((2 * v14) | (4 * v14)) ^ (a2 + v10 + 380))))(a9);
  }

  else if (v12 == 1)
  {
    return (*(v9 + 8 * ((39 * (((*(v11 - 136) == 0) ^ ((v10 ^ (v10 - 66)) + 1)) & 1)) ^ (a2 + v10 + 380))))(a9);
  }

  else
  {
    return sub_10000B160(a9);
  }
}

uint64_t sub_10000B160@<X0>(int a1@<W8>)
{
  v8 = v4 - v1;
  *(v8 + 91) = ((v1 + v2) ^ v3) * (v1 + v2 + 17);
  *(v8 + 90) = ((v1 + v2) ^ 0xBB) * (v1 + v2 + 18);
  return (*(v7 + 8 * (((v1 + 2 == v5) * v6) ^ a1)))(0);
}

uint64_t sub_10000B3B8(uint64_t result)
{
  v1 = 1361651671 * ((~result & 0xF64E4E49F4C8DED6 | result & 0x9B1B1B60B372129) ^ 0x25E33D7027EA2E5ALL);
  v2 = *(result + 24) + v1;
  v3 = *(result + 8) - v1;
  v4 = v3 == v2;
  v5 = v3 >= v2;
  v6 = !v4;
  if (((*result + v1) & 1) == 0)
  {
    v5 = v6;
  }

  v4 = !v5;
  v7 = 32;
  if (!v4)
  {
    v7 = 40;
  }

  *(result + 16) = (*(result + v7) + v1) ^ (*(result + 36) + v1);
  return result;
}

uint64_t sub_10000B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16, __int16 a17, char a18, __int16 a19, char a20, char *a21, int a22, int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a15 = -1577141553;
  v30 = *(a2 + 4);
  v31 = *(a2 + 8);
  v32 = 1082434553 * ((-163193307 - (&a21 | 0xF645DE25) + (&a21 | 0x9BA21DA)) ^ 0x92FDD750);
  a24 = &a18;
  a28 = v31;
  a21 = &a20;
  a23 = (v28 ^ 0x230) - 1259944826 + v30 + v32 - 928;
  a26 = &a16;
  a27 = &a15;
  a25 = v32 + v28 + 1058;
  v34 = (*(v29 + 8 * (v28 ^ 0x9DA)))(&a21);
  return (*(v29 + 8 * ((1376 * (a22 == 1982089928)) ^ v28)))(v34, a2);
}

void sub_10000B960(uint64_t a1)
{
  v1 = *(a1 + 8) + 143681137 * ((-2 - ((a1 | 0xE35D4AC9) + (~a1 | 0x1CA2B536))) ^ 0x7DFA3EE6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10000BA1C()
{
  v2 = 1388665877 * ((~((v1 - 152) | 0x3F2014FDCA729643) + ((v1 - 152) & 0x3F2014FDCA729643)) ^ 0xF5A57B4DB8200B50);
  STACK[0x598] = dword_100064D88 + v2;
  *(v1 - 120) = v2 - 806568872;
  *(v1 - 116) = v2;
  STACK[0x5B0] = v2;
  *(v1 - 144) = v2 - 806568908;
  *(v1 - 140) = -806568887 - v2;
  *(v1 - 136) = -2030744672 - v2;
  v3 = (*(v0 + 17648))(v1 - 152);
  return (*(v0 + 8 * *(v1 - 132)))(v3);
}

uint64_t sub_10000BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  if (v18 + a16 + 1 >= 0)
  {
    v19 = v18 + a16 + 1;
  }

  else
  {
    v19 = ~(v18 + a16);
  }

  return (*(v17 + 8 * ((746 * (((v19 ^ 0x7FFEFD6B) - 1225278464 + ((v19 << (((v16 + 93) & 0xCF) + 56)) & 0xFFFDFAD6) + v18) > ((((v16 + 1347837533) & 0xAFA9A5CF) - 1007) ^ 0xFFFFFE25))) ^ (v16 + 1347837533) & 0xAFA9A5CF)))(2263469134);
}

uint64_t sub_10000BEE4@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, int a4@<W7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t (*a15)(void))
{
  v17 = (((v15 ^ 0x3BE1BDEE) - 1004649966) ^ ((v15 ^ 0xD5D0050E) + 707787506) ^ ((v15 ^ 0x720B8FAB) - 1913360299)) + 958226703 + (((a13 ^ 0x36E12AE3) - 920726243) ^ ((a13 ^ 0x7EFBA621) - 2130421281) ^ ((a13 ^ 0xD420BB89) + 736050542 + a2));
  v18 = (v17 ^ 0xFE564D07) & (2 * (v17 & 0xFF570D87)) ^ v17 & 0xFF570D87;
  v19 = ((2 * (v17 ^ 0x32DA560D)) ^ 0x9B1AB714) & (v17 ^ 0x32DA560D) ^ (2 * (v17 ^ 0x32DA560D)) & 0xCD8D5B8A;
  v20 = v19 ^ 0x4485488A;
  v21 = (v19 ^ 0x89081200) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x36356E28) & v20 ^ (4 * v20) & 0xCD8D5B88;
  v23 = (v22 ^ 0x4054A00) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0xC9881182)) ^ 0xD8D5B8A0) & (v22 ^ 0xC9881182) ^ (16 * (v22 ^ 0xC9881182)) & 0xCD8D5B80;
  v25 = v23 ^ 0xCD8D5B8A ^ (v24 ^ 0xC8851800) & (v23 << 8);
  *(v16 - 140) = v17 ^ (2 * ((v25 << 16) & 0x4D8D0000 ^ v25 ^ ((v25 << 16) ^ 0x5B8A0000) & (((v24 ^ 0x508430A) << 8) & 0x4D8D0000 ^ 0x40840000 ^ (((v24 ^ 0x508430A) << 8) ^ 0xD5B0000) & (v24 ^ 0x508430A)))) ^ 0x6B678DD8;
  return sub_10002C208(a1, a3, a15, a4, a5);
}

uint64_t sub_10000C11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 112) = v17 - 1564307779 * ((((2 * (v19 - 144)) | 0xDD2A462C) - (v19 - 144) - 1855267606) ^ 0xF998EF05) - 603;
  *(v19 - 144) = &a13;
  *(v19 - 136) = &a13;
  *(v19 - 128) = v15;
  *(v19 - 120) = v14;
  (*(v16 + 8 * (v17 ^ 0x98)))(v19 - 144);
  v20 = 1388665877 * ((((v19 - 144) | 0x1F0D8F42) - (v19 - 144) + ((v19 - 144) & 0xE0F270B8)) ^ 0x92A0EDAE);
  *(v19 - 136) = v18;
  *(v19 - 124) = (1484576113 * (v13 - 1) + 856306053) ^ v20;
  *(v19 - 144) = v20 + v17 - 923;
  v21 = (*(v16 + 8 * (v17 ^ 0xBA)))(v19 - 144);
  return (*(v16 + 8 * (((*(v19 - 128) == -1955771696) * (v17 - 287 + v17 - 495 - 3307)) ^ v17)))(v21);
}

void sub_10000C238(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v2 << (v3 + 6)) & 0xDD3989C) - 2031498162;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_10000C278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v15 = 1785193651 * ((2 * ((v14 - 168) & 0x675F74F8) - (v14 - 168) - 1734309119) ^ 0xB417D0E9);
  *(v14 - 168) = v12 - v15 + 778;
  *(v14 - 160) = a2;
  *(v14 - 152) = v15 ^ a12;
  v16 = (*(v13 + 8 * (v12 ^ 0x874)))(v14 - 168);
  v17 = STACK[0x2B8];
  *(&STACK[0x274] + (v17 & 0x3F)) = 71;
  return (*(v13 + 8 * ((1048 * ((v17 & 0x3Fu) > ((((v12 + 1020068883) & 0xC332FBFE) + 407) ^ 0x1F6))) ^ v12)))(v16);
}

void sub_10000C370(uint64_t a1)
{
  v1 = 143681137 * ((a1 & 0x89CE664E | ~(a1 | 0x89CE664E)) ^ 0x17691261);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10000C440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int32x4_t a19, int32x4_t a20)
{
  v22 = (a6 - 699);
  a19 = vdupq_n_s32(0x86E9CC4E);
  a20 = a19;
  v23 = *(v21 + 8 * ((((v20 & 0xFFFFFFF8) == 8) * ((a6 - 1095) ^ 0x7A8)) ^ v22));
  return v23(a1, a2, (v20 & 0xFFFFFFF8) - 8, v22, &a19, 8, v23, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10000C498(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  HIDWORD(v17) = a5 ^ v15;
  LODWORD(v17) = a5 ^ v8;
  v18 = (v17 >> 27) + (a4 ^ v16 ^ a3 ^ v10) + (((a2 ^ 0x22F9C9ED) - 586795501) ^ ((a2 ^ 0xB20B55E5) + 1307879963) ^ ((a2 ^ (v9 + 214477438)) - 214477635)) - 1127622047 + (((*(v11 + 4 * (a8 + v14)) ^ 0x74D76B55) - 1960274773) ^ ((*(v11 + 4 * (a8 + v14)) ^ 0x8180862D) + 2122283475) ^ ((*(v11 + 4 * (a8 + v14)) ^ 0x8373A7B0) + 2089572432));
  return (*(v13 + 8 * ((52 * (a8 + 1 == v12 + 24)) ^ v9)))(a1, a3, a4, a7 ^ __ROR4__(v10, 2), v18 ^ ((v18 ^ 0x507E945D) - 1810888944) ^ ((v18 ^ 0x4DE3B5B5) - 1987238168) ^ ((v18 ^ 0xD973F2BA) + 488464873) ^ ((v18 ^ 0xFF7FBFFF) + 990981294) ^ 0xA7AB5BE6);
}

uint64_t sub_10000C634@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v10 = (v4 ^ v6) * v7;
  v11 = (v10 ^ v8) + a4;
  *(v5 + v11) = *(a3 + v11);
  return (*(v9 + 8 * (((v11 == ((v10 - 1929) ^ a1)) * ((v10 - 1977) ^ a2)) ^ (v10 - 931))))();
}

uint64_t sub_10000C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x290] + 128;
  STACK[0x378] = v68;
  v69 = 742307843 * ((((v66 - 200) | 0x1FA95E6A) - (v66 - 200) + ((v66 - 200) & 0xE056A190)) ^ 0x42D52110);
  *(v66 - 180) = -990918455 - v69;
  *(v66 - 200) = -473373701 - v69 + v65 + 6;
  *(v66 - 192) = v68;
  (*(v67 + 8 * (v65 ^ 0x89B)))(v66 - 200);
  STACK[0x2C8] = *(a65 + 8 * v65);
  return sub_10002EC38(17);
}

void sub_10000C788(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1037613739 * (((a1 | 0x27A6E) - a1 + (a1 & 0xFFFD8591)) ^ 0xD1005711));
  if (*(*(a1 + 16) + 4) - 922138987 >= 0)
  {
    v2 = *(*(a1 + 16) + 4) - 922138987;
  }

  else
  {
    v2 = 922138987 - *(*(a1 + 16) + 4);
  }

  if (*(*(a1 + 24) + 4) - 922138987 >= 0)
  {
    v3 = *(*(a1 + 24) + 4) - 922138987;
  }

  else
  {
    v3 = 922138987 - *(*(a1 + 24) + 4);
  }

  v6 = *(a1 + 16);
  v7 = v1 - 1388665877 * ((&v6 - 829797113 - 2 * (&v6 & 0xCE8A4D07)) ^ 0x43272FEB) + 209;
  v4 = *(&off_1000610D0 + (v1 ^ 0x2AF));
  (*(v4 + 8 * (v1 + 1682)))(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X0, X17 }
}

uint64_t sub_10000CAE4@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(&off_1000610D0 + v28 - 316) - 8;
  v32 = *(&off_1000610D0 + (v28 ^ 0x1CBu)) - 8;
  v33 = v32[a1[15] ^ 0x92];
  v34 = v28;
  v35 = v31[a1[5] ^ 0xE2] << (v28 - 92);
  v36 = v31[a1[13] ^ 0xB9];
  v37 = a1[7];
  *(v30 - 148) = v29;
  v38 = v32[((v37 & 0xC0 ^ 0xA3B3C36FC1A70AF3) & (v37 & 0x3F ^ 0xA3B3C36FC5EF0ADDLL) | v37 & 0xC) ^ 0xA3B3C36FC1A70A62];
  v39 = ((v36 << 16) ^ 0x2BFD8909) & (v33 ^ 0xFBFFBFC0) | v33 & 0xF6;
  v40 = *(&off_1000610D0 + (v34 ^ 0x13Eu)) - 8;
  v41 = (v38 ^ 0x3FF1DC0) & (v35 ^ 0x38C1DC2) | v38 & 0x3D;
  v42 = ((-1459617792 * v40[a1[4] ^ 0x57] + 1644167168) ^ 0x3EE458C4) & (v41 ^ 0xFC76473F);
  v43 = v41 & 0x21B003B;
  v44 = (-87 * v40[a1[12] ^ 0x68] + 98) ^ 0xFFFFFF88;
  v45 = *(&off_1000610D0 + (v34 ^ 0x1C8u));
  v46 = *(v45 + (a1[14] ^ 0xD6)) + 63;
  v47 = ((*(v45 + (a1[6] ^ 0x87)) + 63) ^ 0x30) << 8;
  v48 = (v47 & 0x100 | (v43 ^ 0x46D0A6B6 ^ v42) & ~v47) ^ 0x12CFE50;
  v49 = (((-87 * v40[a1[8] ^ 0xB9] + 98) ^ 0xBC) << 24) | ((v31[a1[9] ^ 0x3BLL] ^ 0x65) << 16) | v32[a1[11] ^ 0x62] ^ 0x91;
  v50 = (((v44 << 24) ^ 0x7A2C466) & ~((v46 ^ 0x27) << 8) & 0x98A2DE04 | ((v46 ^ 0x27) << 8) & 0x1A00) ^ 0xC5AB2221 ^ ((((v44 << 24) ^ 0x7A2C466) & ~((v46 ^ 0x27) << 8) | ((v46 ^ 0x27) << 8) & 0x3B00) ^ 0x4C5D2199) & (v39 ^ 0x4CCFA882);
  LODWORD(v40) = ((v32[a1[3] ^ 0x29] ^ 0xD2) & 0xFFFF00FF | ((v31[a1[1] ^ 8] ^ 0x94) << 16) | (((-87 * v40[*a1 ^ 0xE1] + 98) ^ 0xDA) << 24) | (((*(v45 + (a1[2] ^ 0x8FLL)) + 63) ^ 0xD8) << 8)) ^ 0x1B;
  v51 = *(&off_1000610D0 + (v34 ^ 0x136u)) - 4;
  v52 = *(&off_1000610D0 + v34 - 273) - 4;
  v53 = v49 & 0xFFFF00FF | (((*(v45 + (a1[10] ^ 0xB7)) + 63) ^ 0xE7) << 8);
  LODWORD(v31) = *&v51[4 * (BYTE2(v50) ^ 0xBA)] ^ *&v52[4 * (v46 ^ 0x7E)] ^ 0xB6034A7D;
  *(v30 - 140) = v34;
  v54 = *(&off_1000610D0 + v34 - 280) - 4;
  LODWORD(v31) = (v31 - ((2 * v31) & 0x435824BC) - 1582558626) ^ *&v54[4 * v44];
  v55 = *(&off_1000610D0 + (v34 ^ 0x155u)) - 12;
  v56 = *&v55[4 * (v33 ^ 0x4C)];
  *(v30 - 208) = v40;
  v57 = v56 ^ v40 ^ (v31 - ((2 * v31) & 0x5A831B44) - 1388212830);
  *(v30 - 196) = v48;
  LODWORD(v31) = v57 ^ v48;
  v58 = v57;
  v502 = v57;
  *(v30 - 200) = v53;
  v59 = v57 ^ v48 ^ v53;
  LODWORD(v45) = v31;
  v505 = v31;
  LODWORD(v31) = v59 ^ v50;
  v60 = v59;
  v497 = v59;
  v507 = (v59 ^ v39 ^ 0xA7);
  v61 = *&v55[4 * (v507 ^ 0x35)];
  LODWORD(v31) = v31 ^ 0xF83672DE;
  *(v30 - 152) = BYTE1(v31);
  v62 = *&v52[4 * (BYTE1(v31) ^ 0x9E)] ^ v61;
  v513 = v31 >> 24;
  v63 = ((v62 ^ 0xB27FDC64) - 2 * ((v62 ^ 0xB27FDC64) & 0x21AC125F ^ v62 & 1) - 1582558626) ^ *&v54[4 * ((v31 >> 24) ^ 0x86)];
  v510 = BYTE2(v31);
  v64 = v58 ^ *&v51[4 * (BYTE2(v31) ^ 0xBA)] ^ (v63 - ((2 * v63) & 0x527A3776) - 1455612997);
  v501 = BYTE2(v45) ^ 0x5B;
  LODWORD(v31) = v64 ^ v45 ^ 0xA25B684D;
  *(v30 - 224) = v31;
  v65 = v64;
  *(v30 - 248) = v64;
  v66 = v31 ^ 0xF73EC34E;
  *(v30 - 204) = v50;
  v67 = v31 ^ 0xF73EC34E ^ v50;
  LODWORD(v45) = v67 ^ 0x7E4FB786;
  LODWORD(v31) = (v67 ^ 0x7E4FB786) >> 24;
  *(v30 - 212) = v31;
  LODWORD(v31) = *&v54[4 * (v31 ^ 0x86)];
  v68 = ((v67 ^ 0x7E4FB786) >> 16);
  *(v30 - 232) = v68;
  v69 = v31 ^ *&v51[4 * (v68 ^ 0xBA)];
  v70 = ((v67 ^ 0xB786) >> 8);
  *(v30 - 240) = v70;
  v71 = ((v69 ^ 0x89109E5) - ((2 * (v69 ^ 0x89109E5)) & 0x3E7CA38C) + 524177862) ^ *&v52[4 * (v70 ^ 0x9E)];
  *(v30 - 156) = v67;
  v72 = (v71 - ((2 * v71) & 0x5A831B44) - 1388212830) ^ *&v55[4 * (v67 ^ 0x6D)] ^ v65;
  *(v30 - 120) = v72;
  v72 ^= 0xFEB4AEEu;
  LODWORD(v40) = v72 ^ v60 ^ 0xF83672DE;
  v73 = v72;
  *(v30 - 168) = v40;
  LODWORD(v40) = v40 ^ v45;
  *(v30 - 176) = BYTE2(v40);
  v74 = *&v51[4 * (BYTE2(v40) ^ 0xBA)];
  *(v30 - 164) = BYTE1(v40);
  LODWORD(v32) = v74 ^ *&v52[4 * (BYTE1(v40) ^ 0x9E)] ^ 0xB6034A7D;
  *(v30 - 172) = v40 >> 24;
  LODWORD(v32) = (v32 - ((2 * v32) & 0x435824BC) - 1582558626) ^ *&v54[4 * ((v40 >> 24) ^ 0x86)];
  *(v30 - 160) = v40;
  v480 = BYTE2(v73);
  v75 = v73 ^ *&v55[4 * (v40 ^ 0xEB)] ^ (v32 - ((2 * v32) & 0x5A831B44) - 1388212830);
  *(v30 - 252) = v66 ^ v60 ^ 0xF83672DE;
  v76 = v75 ^ v66 ^ v60 ^ 0xF83672DE;
  *(v30 - 124) = v76;
  v77 = v76 ^ 0x598844C8;
  v407 = v76 ^ 0xC8;
  LODWORD(v33) = v76 ^ 0x598844C8 ^ v40;
  v452 = v33;
  v78 = *&v55[4 * (v33 ^ 0x83)];
  LODWORD(v32) = (v33 ^ 0xCD2CB9A0) >> 24;
  *(v30 - 256) = v32;
  LODWORD(v32) = *&v54[4 * (v32 ^ 0x86)];
  *(v30 - 116) = 0;
  v450 = ((v33 ^ 0xCD5DCD68) >> 16);
  v79 = ((v78 ^ v32 ^ 0xCED9FFC) - ((2 * (v78 ^ v32 ^ 0xCED9FFC)) & 0x527A3776) - 1455612997) ^ *&v51[4 * (v450 ^ 0xBA)];
  v410 = BYTE1(v33) ^ 0xCD;
  v80 = (v79 - ((2 * v79) & 0x3E7CA38C) + 524177862) ^ *&v52[4 * (((v33 ^ 0xCD68) >> 8) ^ 0x9E)];
  v481 = v73 ^ v66;
  v81 = v73 ^ v66 ^ 0x7E4FB786;
  *(v30 - 132) = v81;
  v475 = v80 ^ v81;
  v82 = v80 ^ v81 ^ 0xF39A3E26;
  v437 = v75;
  v476 = ((v82 ^ v40) >> 16);
  v472 = v82 ^ v40;
  LODWORD(v31) = *&v54[4 * (((v82 ^ v40) >> (v437 & 0x18) >> (v437 & 0x18 ^ 0x18)) ^ 0x86)] ^ *&v51[4 * (v476 ^ 0xBA)] ^ 0x89109E5;
  v470 = ((v82 ^ v40) >> 8);
  LODWORD(v31) = (v31 - ((2 * v31) & 0x3E7CA38C) + 524177862) ^ *&v52[4 * (v470 ^ 0x9E)];
  v465 = v80 ^ v75;
  v469 = BYTE2(v82);
  v83 = v82 ^ v77;
  v462 = v82 ^ v77;
  v84 = v80 ^ v75 ^ *&v55[4 * ((v82 ^ v77 ^ v33 ^ 0x68) ^ 0x83)] ^ (v31 - ((2 * v31) & 0x5A831B44) - 1388212830);
  v85 = v84 ^ 0x53DB0D92 ^ v82;
  v86 = v85 ^ 0xF73EC34E ^ v33 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  v483 = v85 ^ 0x4E ^ v33 ^ 0x68;
  v87 = *&v51[4 * (BYTE2(v86) ^ 0xBA)] ^ *&v55[4 * (v483 ^ 0x11)] ^ 0x47C9619;
  v88 = HIBYTE(v86);
  v89 = (v87 - ((2 * v87) & 0x435824BC) - 1582558626) ^ *&v54[4 * (HIBYTE(v86) ^ 0x86)];
  LODWORD(v33) = v84 ^ 0x53DB0D92 ^ *&v52[4 * (BYTE1(v86) ^ 0x9E)] ^ (v89 - ((2 * v89) & 0x3E7CA38C) + 524177862);
  *(v30 - 136) = v33;
  v461 = BYTE2(v83) ^ 0x5D;
  LODWORD(v45) = v85 ^ 0xF73EC34E ^ v83 ^ 0xCD5DCD68;
  v405 = v33 ^ 0x85DB0D92 ^ v85;
  v420 = BYTE2(v33) ^ 0xDB;
  v421 = v405 ^ 0x484133B4 ^ v45;
  LODWORD(v31) = v421 ^ 0xBDE5CEDC ^ v86;
  LOBYTE(v86) = v31 ^ 0x26;
  v423 = (v31 ^ 0x29A3E26) >> 24;
  v440 = ((v31 ^ 0x3E26) >> 8);
  LODWORD(v40) = *&v54[4 * (v423 ^ 0x86)] ^ *&v52[4 * (v440 ^ 0x9E)] ^ 0xBE924398;
  v416 = ((v31 ^ 0x29A3E26) >> 16);
  LODWORD(v40) = (v40 - ((2 * v40) & 0x527A3776) - 1455612997) ^ *&v51[4 * (v416 ^ 0xBA)];
  v400 = v31;
  v398 = v40 - ((2 * v40) & 0x5A831B44) - 1388212830;
  v424 = v33 ^ 0x85DB0D92 ^ *&v55[4 * (v31 ^ 0xCD)];
  v435 = v424 ^ v398 ^ v405 ^ 0x484133B4;
  *(v30 - 128) = v424 ^ v398;
  LODWORD(v40) = v435 ^ 0x19868409 ^ v421 ^ 0xBDE5CEDC;
  *(v30 - 144) = v40;
  v493 = v435 ^ 0x19868409;
  LODWORD(v31) = v40 ^ 0xC130088F ^ v31 ^ 0x29A3E26;
  v391 = (v31 ^ 0x7B68C86) >> 24;
  v394 = ((v31 ^ 0x8C86) >> 8);
  v90 = *&v52[4 * (v394 ^ 0x9E)] ^ *&v54[4 * (v391 ^ 0x86)];
  v388 = ((v31 ^ 0x7B68C86) >> 16);
  v91 = ((v90 ^ 0xBE924398) - 2 * ((v90 ^ 0xBE924398) & 0x293D1BBF ^ v90 & 4) - 1455612997) ^ *&v51[4 * (v388 ^ 0xBA)];
  v396 = v40 ^ 0x8F ^ v86;
  v414 = v424 ^ v398 ^ *&v55[4 * (v396 ^ 0x6D)] ^ (v91 - ((2 * v91) & 0x5A831B44) - 1388212830);
  v487 = v414 ^ 0x7B68C86;
  v408 = v414 ^ 0x7B68C86 ^ v435 ^ 0x19868409;
  v412 = v408 ^ v40 ^ 0xC130088F;
  v491 = v412 ^ 0xC104CD8D;
  v429 = v412 ^ 0x8D ^ v31 ^ 0x86;
  v489 = v412 ^ 0xC104CD8D ^ v31 ^ 0x7B68C86 ^ 0xA91877A2;
  v92 = *&v55[4 * (v429 ^ 0x49)] ^ 0xCED9FFC ^ *&v54[4 * (HIBYTE(v489) ^ 0x86)];
  v93 = (v92 - ((2 * v92) & 0x3E7CA38C) + 524177862) ^ *&v52[4 * (BYTE1(v489) ^ 0x9E)];
  v486 = (v93 - ((2 * v93) & 0x527A3776) - 1455612997) ^ *&v51[4 * (BYTE2(v489) ^ 0xBA)];
  LODWORD(v52) = v507 ^ 0xEF;
  v94 = *(v30 - 140);
  v95 = *(&off_1000610D0 + v94 - 260) - 12;
  LODWORD(v33) = (BYTE2(v60) ^ 0xFD84E2D8) - 1819290596 + *&v95[4 * (BYTE2(v60) ^ 0x48)];
  v500 = BYTE1(v502) ^ 0x6F;
  v96 = *(&off_1000610D0 + (v94 ^ 0x1FDu)) - 4;
  LODWORD(v32) = ((v501 ^ 0xFD84E273) - 1819290596 + *&v95[4 * (v501 ^ 0xE3)]) ^ (-1974868763 * *&v96[4 * (HIBYTE(v505) ^ 0xE7)] + 1641025899);
  v97 = *(&off_1000610D0 + (v94 ^ 0x124u)) - 8;
  LODWORD(v31) = (v33 - ((2 * v33) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v497 ^ 0x33)];
  LODWORD(v54) = (-1974868763 * *&v96[4 * (HIBYTE(v502) ^ 0xCB)] + 1641025899) ^ ((((v502 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (((v502 ^ 0x6AB66F6C) >> 16) ^ 0x7B)]);
  v98 = *(&off_1000610D0 + v94 - 225) - 12;
  v99 = (v32 - ((2 * v32) & 0x9109A1EC) - 930819850) ^ *&v98[4 * (BYTE1(v505) ^ 0x4B)];
  LODWORD(v32) = (v54 - ((2 * v54) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v502 ^ 0x1C)];
  v508 = v99 - ((2 * v99) & 0xDC8395E4);
  LODWORD(v33) = (v510 ^ 0xFD84E215) - 1819290596 + *&v95[4 * (v510 ^ 0x85)];
  v498 = *&v98[4 * (BYTE1(v497) ^ 0xE4)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v497) ^ 0x54)] + 1641025899) ^ (v31 - ((2 * v31) & 0x9109A1EC) - 930819850);
  v100 = (-1974868763 * *&v96[4 * (v513 ^ 0xBE)] + 1641025899) ^ *&v97[4 * v52] ^ (v33 - ((2 * v33) & 0xDC8395E4) - 297678094);
  v503 = v32 - ((2 * v32) & 0x9109A1EC);
  v495 = v100 - ((2 * v100) & 0x9109A1EC);
  LODWORD(v33) = (((v84 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 1819290596 + *&v95[4 * (((v84 ^ 0xB89A99EC) >> 16) ^ 0x34)];
  v447 = v45 ^ 0xBFAB50FA;
  LODWORD(v45) = ((BYTE2(v447) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (BYTE2(v447) ^ 0x7B)]) ^ *&v97[4 * (v45 ^ 0x5F)] ^ (-1974868763 * *&v96[4 * (BYTE3(v45) ^ 0xD2)] - ((345229770 * *&v96[4 * (BYTE3(v45) ^ 0xD2)] - 1012915498) & 0xDC8395E4) + 1343347805);
  v456 = v505 ^ 0x25;
  LODWORD(v32) = *&v96[4 * (v88 ^ 0xB6)];
  LODWORD(v32) = (-1974868763 * v32 - ((345229770 * v32 - 1012915498) & 0x9109A1EC) + 710206049) ^ *&v98[4 * (BYTE1(v86) ^ 0x25)];
  v514 = v32 - ((2 * v32) & 0xDC8395E4);
  v101 = *&v98[4 * ((v84 ^ 0x99EC) >> 8)] ^ (v33 - ((2 * v33) & 0x9109A1EC) - 930819850);
  LODWORD(v32) = (((v85 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 1819290596 + *&v95[4 * (((v85 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v506 = v101 - ((2 * v101) & 0xDC8395E4);
  v446 = v45 - ((2 * v45) & 0x9109A1EC);
  v427 = BYTE1(v85) ^ 0x2D;
  v102 = (v32 - ((2 * v32) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v85 ^ 0xA4)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v85) ^ 0x40)] + 1641025899);
  v443 = v102 - ((2 * v102) & 0x9109A1EC);
  v511 = (BYTE2(v86) ^ 0xFD84E217) - 1819290596 + *&v95[4 * (BYTE2(v86) ^ 0x87)];
  LODWORD(v33) = (((v437 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 1819290596 + *&v95[4 * (((v437 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v432 = v75 ^ *(v30 - 132);
  v103 = *&v96[4 * (HIBYTE(v432) ^ 0x39)];
  v104 = (1641025899 - 499480561 * v103 - 1475388202 * v103 - 2 * ((1641025899 - 499480561 * v103 - 1475388202 * v103) & 0x4884D0F7 ^ (1641025899 - 499480561 * v103) & 1) - 930819850) ^ *&v98[4 * ((v432 ^ 0xDA26) >> 8)];
  v105 = (v450 ^ 0xFD84E284) - 1819290596 + *&v95[4 * (v450 ^ 0x14)];
  LODWORD(v33) = (v33 - ((2 * v33) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v437 ^ 0x7D)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v437) ^ 0x5D)] + 1641025899);
  v403 = *(v30 - 124) ^ 0xAF58D76C;
  v106 = (BYTE2(v403) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (BYTE2(v403) ^ 0x7B)];
  v438 = v104 - ((2 * v104) & 0xDC8395E4);
  v107 = (v106 - ((2 * v106) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v407 ^ 0xD4)];
  HIDWORD(v406) = v107 - ((2 * v107) & 0x9109A1EC);
  v451 = (((v432 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (((v432 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  v108 = (v105 - ((2 * v105) & 0x9109A1EC) - 930819850) ^ *&v98[4 * (v410 ^ 0xE5)] ^ (-1974868763 * *&v96[4 * (*(v30 - 256) ^ 0xF0)] + 1641025899);
  LODWORD(v404) = v33 - ((2 * v33) & 0x9109A1EC);
  v411 = v452 ^ 0xC3;
  *(v30 - 256) = v108 - ((2 * v108) & 0xDC8395E4);
  LODWORD(v33) = *(v30 - 240) ^ 0x93;
  LODWORD(v54) = *(v30 - 248);
  *(v30 - 240) = v54 ^ 0xD1;
  v109 = (*(v30 - 232) ^ 0xFD84E219) - 1819290596 + *&v95[4 * (*(v30 - 232) ^ 0x89)];
  LODWORD(v33) = (v109 - ((2 * v109) & 0x9109A1EC) - 930819850) ^ *&v98[4 * v33];
  *(v30 - 232) = v33 - ((2 * v33) & 0xDC8395E4);
  LODWORD(v40) = *(v30 - 252);
  LODWORD(v33) = *&v96[4 * ((v40 >> 24) ^ 0xDE)];
  v110 = *(v30 - 224);
  v111 = (((v110 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (((v110 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  v112 = (v111 - ((2 * v111) & 0x9109A1EC) - 930819850) ^ *&v98[4 * ((v110 ^ 0x30D) >> 8)];
  LODWORD(v33) = ((BYTE2(v40) ^ 0xFD84E243) - 1819290596 + *&v95[4 * (BYTE2(v40) ^ 0xD3)]) ^ *&v98[4 * (BYTE1(v40) ^ 0xDB)] ^ (-1974868763 * v33 - ((345229770 * v33 - 1012915498) & 0x9109A1EC) + 710206049);
  v393 = BYTE1(v54) ^ 0x9D;
  v453 = (((v54 ^ 0x37B09DC8) >> 16) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (((v54 ^ 0x37B09DC8) >> 16) ^ 0x7B)];
  v401 = v112 - ((2 * v112) & 0xDC8395E4);
  v382 = (v54 >> 24) ^ 0x96;
  *(v30 - 252) = v40 ^ 0x6A;
  *(v30 - 248) = v33 - ((2 * v33) & 0xDC8395E4);
  LODWORD(v33) = (-1974868763 * *&v96[4 * (v391 ^ 0xAC)] + 1641025899) ^ ((v388 ^ 0xFD84E2A8) - 1819290596 + *&v95[4 * (v388 ^ 0x38)]);
  LODWORD(v33) = (v33 - ((2 * v33) & 0x9109A1EC) - 930819850) ^ *&v98[4 * (v394 ^ 0xD9)];
  v113 = (BYTE2(*(v30 - 144)) ^ 0xFD84E256) - 1819290596 + *&v95[4 * (BYTE2(*(v30 - 144)) ^ 0xC6)];
  v114 = *&v96[4 * ((v424 ^ ~v398) >> 24)];
  LODWORD(v31) = -1974868763 * v114 - ((345229770 * v114 - 1012915498) & 0x9109A1EC) + 710206049;
  v115 = *(v30 - 128) ^ 0xDDA7A6D4;
  v116 = v31 ^ *&v98[4 * BYTE1(v115)];
  v395 = v396 ^ 0xF9;
  v117 = (v113 - ((2 * v113) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (*(v30 - 144) ^ 0x67)] ^ (-1974868763 * *&v96[4 * (HIBYTE(*(v30 - 144)) ^ 0x3E)] + 1641025899);
  HIDWORD(v397) = v33 - ((2 * v33) & 0xDC8395E4);
  LODWORD(v397) = v116 - ((2 * v116) & 0xDC8395E4);
  v381 = BYTE1(v435) ^ 0x9E;
  LODWORD(v33) = *&v96[4 * (HIBYTE(v435) ^ 0xCD)];
  LODWORD(v33) = *&v97[4 * (v435 ^ 0xC9)] ^ (-1974868763 * v33 - ((345229770 * v33 - 1012915498) & 0xDC8395E4) + 1343347805);
  v389 = v33 - ((2 * v33) & 0x9109A1EC);
  LODWORD(v425) = (BYTE2(v115) ^ 0xFD84E2A5) - 1819290596 + *&v95[4 * (BYTE2(v115) ^ 0x35)];
  v385 = v117 - ((2 * v117) & 0x9109A1EC);
  v436 = (BYTE2(v435) ^ 0xFD84E2FB) - 1819290596 + *&v95[4 * (BYTE2(v435) ^ 0x6B)];
  LODWORD(v33) = (BYTE2(v405) ^ 0xFD84E271) - 1819290596 + *&v95[4 * (BYTE2(v405) ^ 0xE1)];
  LODWORD(v33) = (v33 - ((2 * v33) & 0x9109A1EC) - 930819850) ^ *&v98[4 * (BYTE1(v405) ^ 0x28)];
  v387 = v405 ^ 0xAE;
  v118 = *&v96[4 * (HIBYTE(v421) ^ 0x22)];
  v119 = (1641025899 - 499480561 * v118 - 1475388202 * v118 - 2 * ((1641025899 - 499480561 * v118 - 1475388202 * v118) & 0x4884D0F7 ^ (1641025899 - 499480561 * v118) & 1) - 930819850) ^ *&v98[4 * ((v421 ^ 0x4AFA) >> 8)];
  v384 = v421 ^ 0xE4;
  LODWORD(v399) = v33 - ((2 * v33) & 0xDC8395E4);
  HIDWORD(v390) = v119 - ((2 * v119) & 0xDC8395E4);
  LODWORD(v422) = (((v421 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 1819290596 + *&v95[4 * (((v421 ^ 0xBF864AFA) >> 16) ^ 0x35)];
  v378 = v423 ^ 0x67;
  HIDWORD(v422) = (v416 ^ 0xFD84E291) - 1819290596 + *&v95[4 * (v416 ^ 1)];
  LODWORD(v40) = *(v30 - 136);
  LODWORD(v33) = *&v96[4 * ((v40 >> 24) ^ 0x82)];
  v375 = HIBYTE(v405) ^ 0xD7;
  LODWORD(v33) = ((v420 ^ 0xFD84E2FE) - 1819290596 + *&v95[4 * (v420 ^ 0x6E)]) ^ *&v98[4 * (BYTE1(v40) ^ 5)] ^ (1641025899 - 499480561 * v33 - 1475388202 * v33 - 2 * ((1641025899 - 499480561 * v33 - 1475388202 * v33) & 0x4884D0F7 ^ (1641025899 - 499480561 * v33) & 1) - 930819850);
  v419 = v33 - ((2 * v33) & 0xDC8395E4);
  LODWORD(v32) = (((v408 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 1819290596 + *&v95[4 * (((v408 ^ 0x23AAC875) >> 16) ^ 0x27)];
  LODWORD(v406) = v440 ^ 0x72;
  LODWORD(v33) = (v32 - ((2 * v32) & 0x9109A1EC) - 930819850) ^ *&v98[4 * ((v408 ^ 0xC875) >> 8)];
  HIDWORD(v370) = v412 ^ 0x68D34E2A;
  LODWORD(v32) = *&v96[4 * (HIBYTE(v412) ^ 0x27)];
  LODWORD(v32) = (-1974868763 * v32 - ((345229770 * v32 - 1012915498) & 0xDC8395E4) + 1343347805) ^ *&v97[4 * (v412 ^ 0x5A)];
  v417 = v408 ^ 5;
  v441 = v33 - ((2 * v33) & 0xDC8395E4);
  v377 = BYTE1(v414) ^ 0x82;
  LODWORD(v33) = (((v414 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (((v414 ^ 0xC1698200) >> 16) ^ 0x7B)];
  LODWORD(v45) = (-1974868763 * *&v96[4 * (HIBYTE(v414) ^ 0x60)] + 1641025899) ^ *&v97[4 * (v414 ^ 0x72)] ^ (v33 - ((2 * v33) & 0xDC8395E4) - 297678094);
  v120 = *&v96[4 * (HIBYTE(v489) ^ 0x21)];
  v121 = *&v97[4 * (v429 ^ 0x12)] ^ ((BYTE2(v489) ^ 0xFD84E2A2) - 1819290596 + *&v95[4 * (BYTE2(v489) ^ 0x32)]) ^ (-1974868763 * v120 - ((345229770 * v120 - 1012915498) & 0xDC8395E4) + 1343347805);
  v379 = v110 ^ 0x7D;
  v415 = v45 - ((2 * v45) & 0x9109A1EC);
  HIDWORD(v372) = v32 - ((2 * v32) & 0x9109A1EC);
  v373 = v121 - ((2 * v121) & 0x9109A1EC);
  *(v30 - 224) = (((v412 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 1819290596 + *&v95[4 * (((v412 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  LODWORD(v32) = *(v30 - 212) ^ 0x32;
  LODWORD(v45) = (BYTE2(v465) ^ 0xFD84E2A2) - 1819290596 + *&v95[4 * (BYTE2(v465) ^ 0x32)];
  v122 = (v461 ^ 0xFD84E216) - 1819290596 + *&v95[4 * (v461 ^ 0x86)];
  v459 = v470 ^ 0x6E;
  v123 = (v122 - ((2 * v122) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v462 ^ 0x15)];
  LODWORD(v31) = (v469 ^ 0xFD84E2B1) - 1819290596 + *&v95[4 * (v469 ^ 0x21)];
  LODWORD(v45) = (v45 - ((2 * v45) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v465 ^ 0x54)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v465) ^ 0xEA)] + 1641025899);
  LODWORD(v369) = BYTE1(v465) ^ 0x83;
  LODWORD(v370) = v45 - ((2 * v45) & 0x9109A1EC);
  HIDWORD(a3) = BYTE1(v462) ^ 0xCC;
  HIDWORD(v369) = v123 - ((2 * v123) & 0x9109A1EC);
  HIDWORD(v371) = v472 ^ 0x81;
  LODWORD(v371) = v475 ^ 0xB;
  v124 = (v31 - ((2 * v31) & 0x9109A1EC) - 930819850) ^ *&v98[4 * (BYTE1(v475) ^ 0x56)] ^ (-1974868763 * *&v96[4 * (HIBYTE(v475) ^ 0x6D)] + 1641025899);
  LODWORD(v372) = v124 - ((2 * v124) & 0xDC8395E4);
  *(v30 - 212) = (v476 ^ 0xFD84E2DC) - 1819290596 + *&v95[4 * (v476 ^ 0x4C)];
  v125 = (*(v30 - 176) ^ 0xFD84E246) - 1819290596 + *&v95[4 * (*(v30 - 176) ^ 0xD6)];
  v126 = v125 - ((2 * v125) & 0x9109A1EC);
  v127 = *(v30 - 120);
  LODWORD(v33) = (-1974868763 * *&v96[4 * (HIBYTE(v127) ^ 0x41)] + 1641025899) ^ ((v480 ^ 0xFD84E273) - 1819290596 + *&v95[4 * (v480 ^ 0xE3)]);
  LODWORD(v45) = (v33 - ((2 * v33) & 0x9109A1EC) - 930819850) ^ *&v98[4 * (BYTE1(v127) ^ 0x6F)];
  LODWORD(v33) = BYTE2(*(v30 - 132));
  LODWORD(v54) = *&v96[4 * (HIBYTE(v84) ^ 0x48)];
  v128 = *&v96[4 * (HIBYTE(*(v30 - 124)) ^ 0xE)];
  LODWORD(v33) = (v33 ^ 0xFD84E2B8) - 1819290596 + *&v95[4 * (v33 ^ 0x28)];
  v129 = *&v96[4 * v382];
  v130 = *&v96[4 * (HIBYTE(v110) ^ 0xE6)];
  v131 = *&v96[4 * v32];
  LODWORD(v33) = (v33 - ((2 * v33) & 0xDC8395E4) - 297678094) ^ *&v97[4 * (v481 ^ 0xCE)];
  LODWORD(v52) = *&v96[4 * v378];
  LODWORD(v40) = *&v96[4 * v375];
  *(v30 - 124) = v33 - ((2 * v33) & 0x9109A1EC);
  LODWORD(v33) = *&v96[4 * (HIBYTE(v408) ^ 0x82)];
  LODWORD(v31) = *&v96[4 * (HIBYTE(v462) ^ 0x5B)];
  LODWORD(v32) = *(v30 - 168);
  v132 = *&v96[4 * (HIBYTE(v472) ^ 0x17)];
  v133 = *&v96[4 * ((v32 >> 24) ^ 0x18)];
  v134 = *&v96[4 * (*(v30 - 172) ^ 7)];
  LODWORD(v96) = *&v96[4 * (HIBYTE(v481) ^ 0x2E)];
  HIDWORD(v426) = -1974868763 * v54 + 1641025899;
  *(v30 - 176) = -1974868763 * v128 + 1641025899;
  v467 = -1974868763 * v129 + 1641025899;
  *(v30 - 172) = -1974868763 * v130 + 1641025899;
  LODWORD(v413) = -1974868763 * v40 + 1641025899;
  v479 = -1974868763 * v33 + 1641025899;
  v463 = -1974868763 * v31 + 1641025899;
  v455 = -1974868763 * v132 + 1641025899;
  LODWORD(v31) = (-1974868763 * v133 - ((345229770 * v133 - 1012915498) & 0xDC8395E4) + 1343347805) ^ *&v97[4 * (v32 ^ 0xBC)];
  v135 = *&v98[4 * (*(v30 - 164) ^ 0xB0)] ^ (-1974868763 * v134 + 1641025899);
  LODWORD(v409) = *&v98[4 * v500];
  LODWORD(v383) = *&v98[4 * (*(v30 - 152) ^ 0xD0)];
  *(v30 - 164) = *&v98[4 * BYTE1(v447)];
  v466 = *&v98[4 * v427];
  *(v30 - 152) = *&v98[4 * BYTE1(v403)];
  v499 = *&v98[4 * (BYTE1(v75) ^ 0x36)];
  HIDWORD(v376) = *&v98[4 * v393];
  v477 = *&v98[4 * v381];
  v473 = *&v98[4 * (BYTE1(*(v30 - 144)) ^ 0x4F)];
  v471 = *&v98[4 * v406];
  HIDWORD(v425) = *&v98[4 * v377];
  LODWORD(v426) = *&v98[4 * (BYTE1(v489) ^ 0x7D)];
  v136 = *&v98[4 * BYTE5(v370)];
  v448 = *&v98[4 * v459];
  v430 = *&v98[4 * v369];
  v460 = *&v98[4 * HIDWORD(a3)];
  *(v30 - 144) = *&v98[4 * (BYTE1(v481) ^ 0x74)];
  v428 = *&v98[4 * (BYTE1(v32) ^ 0xF4)];
  HIDWORD(v380) = v503 - 930819850;
  LODWORD(v406) = v446 - 930819850;
  HIDWORD(v404) = v443 - 930819850;
  LODWORD(v392) = v389 - 930819850;
  HIDWORD(v402) = v385 - 930819850;
  LODWORD(v390) = v415 - 930819850;
  v482 = v373 - 930819850;
  HIDWORD(v413) = *(v30 - 124) - 930819850;
  v444 = v31 - ((2 * v31) & 0x9109A1EC) - 930819850;
  LODWORD(v33) = BYTE2(v32);
  LODWORD(v32) = *&v95[4 * (BYTE2(v32) ^ 0xF4)];
  LODWORD(v374) = *&v97[4 * v456];
  LODWORD(v55) = *&v97[4 * (v483 ^ 0xBF)];
  v137 = *&v97[4 * (v84 ^ 0x9C)];
  v433 = *&v97[4 * (v432 ^ 0x3D)];
  HIDWORD(v409) = *&v97[4 * v411];
  v138 = *&v97[4 * *(v30 - 240)];
  v139 = *&v97[4 * (*(v30 - 156) ^ 0xC9)];
  *(v30 - 168) = *&v97[4 * v379];
  *(v30 - 156) = *&v97[4 * *(v30 - 252)];
  LODWORD(v386) = *&v97[4 * v395];
  v140 = *&v97[4 * (*(v30 - 128) ^ 0x1C)];
  LODWORD(v380) = *&v97[4 * (v400 ^ 0x97)];
  HIDWORD(v399) = (v33 ^ 0xFD84E264) - 1819290596 + v32;
  v141 = *&v97[4 * v387];
  HIDWORD(v386) = *&v97[4 * v384];
  HIDWORD(v383) = *&v97[4 * (*(v30 - 136) ^ 0x33)];
  v484 = *&v97[4 * v417];
  v457 = *&v97[4 * HIDWORD(v371)];
  LODWORD(v376) = *&v97[4 * v371];
  LODWORD(v418) = *&v97[4 * (*(v30 - 120) ^ 0x45)];
  *(v30 - 160) = *&v97[4 * (*(v30 - 160) ^ 0xF2)];
  v142 = v508 - 297678094;
  LODWORD(v95) = v514 - 297678094;
  HIDWORD(v374) = *(v30 - 256) - 297678094;
  HIDWORD(v392) = v401 - 297678094;
  LODWORD(v402) = *(v30 - 248) - 297678094;
  LODWORD(v54) = v419 - 297678094;
  v143 = v441 - 297678094;
  HIDWORD(v418) = v45 - ((2 * v45) & 0xDC8395E4) - 297678094;
  v442 = ((v126 - 930819850) ^ v135) - ((2 * ((v126 - 930819850) ^ v135)) & 0xDC8395E4) - 297678094;
  LODWORD(v97) = (HIDWORD(v372) - 930819850) ^ v136 ^ *(v30 - 224) ^ 0xC38F08C7;
  LODWORD(v98) = v139 ^ (-1974868763 * v131 + 1641025899) ^ 0xADE18B96 ^ (*(v30 - 232) - 297678094);
  LODWORD(v40) = *(v30 - 140);
  v144 = *(&off_1000610D0 + (v40 ^ 0x1FF)) - 8;
  v145 = *(&off_1000610D0 + (v40 ^ 0x1DA)) - 12;
  v146 = *(&off_1000610D0 + (v40 ^ 0x133)) - 4;
  v147 = (((v144[*(v30 - 111) ^ 0xD5] + 16) ^ 0xED) << 16) | ((v146[*(v30 - 112) ^ 1] ^ 0xC4) << 24);
  v148 = ((v145[*(v30 - 102) ^ 0x49] ^ 0x65) << 8) & 0xFF00FFFF | (((v144[*(v30 - 103) ^ 0xB3] + 16) ^ 0x59) << 16);
  v149 = (((v144[*(v30 - 99) ^ 0xDLL] + 16) ^ 0xA9) << 16) | ((v146[*(v30 - 100) ^ 0xCALL] ^ 0x56) << 24);
  v150 = *(v30 - 107) ^ 0x45;
  v151 = ((v145[*(v30 - 106) ^ 0xD5] ^ 0x46) << 8) | ((v146[*(v30 - 108) ^ 0xC2] ^ 0xE) << 24);
  *(v30 - 232) = v145;
  *(v30 - 224) = v144;
  v152 = v151 & 0xFF00FFFF | (((v144[v150] + 16) ^ 0x16) << 16);
  v153 = *(&off_1000610D0 + v40 - 180);
  LODWORD(v150) = v149 & 0xFFFFFF00 | ((v145[*(v30 - 98) ^ 0xC6] ^ 0x38) << 8) | (53 * *(v153 + (*(v30 - 97) ^ 0xCBLL)) + 78) ^ 0x79;
  v154 = v147 & 0xFFFFFF00 | ((v145[*(v30 - 110) ^ 0xE7] ^ 0xDC) << 8) | (53 * *(v153 + (*(v30 - 109) ^ 0x8ALL)) + 78) ^ 0xC9;
  v155 = v152 & 0xFFFFFF00 | (53 * *(v153 + (*(v30 - 105) ^ 0xB9)) + 78) ^ 0x3C;
  v156 = *(v30 - 104) ^ 0x8ALL;
  v157 = *(v30 - 101) ^ 6;
  *(v30 - 248) = v153;
  *(v30 - 240) = v146;
  LOBYTE(v157) = *(v153 + v157);
  *(v30 - 252) = 78;
  v158 = v148 & 0xFFFFFF00 | (53 * v157 + 78) ^ 0x87 | ((v146[v156] ^ 0x29) << 24);
  *(v30 - 132) = v154 ^ 0x37373737;
  *(v30 - 128) = v150 ^ 0x37373737;
  *(v30 - 124) = v155 ^ 0x37373737;
  *(v30 - 136) = v158 ^ 0x37373737;
  *(v30 - 256) = (v397 - 297678094) ^ v140 ^ v425;
  v515 = (v399 - 297678094) ^ v141 ^ v413;
  v512 = v95 ^ v55 ^ v511;
  v509 = (v506 - 297678094) ^ v137 ^ HIDWORD(v426);
  v504 = HIDWORD(v376) ^ v138 ^ v453 ^ v467;
  v496 = (v495 - 930819850) ^ v383;
  *(v30 - 120) = (((*(v30 - 148) ^ 0x8368FD5B) + 1021940273) ^ ((*(v30 - 148) ^ 0xDDA7A3ED) + 1646709895) ^ ((*(v30 - 148) ^ 0x38450AE) - 1140506682)) + 229295218;
  LODWORD(v145) = v486 ^ v493;
  LODWORD(v32) = v491 ^ v486 ^ v493;
  v494 = v32 ^ v489 ^ 0x15F1020B;
  v492 = v145 ^ 0xB530938F;
  v490 = v32 ^ 0xB9519DD8;
  v488 = v487 ^ v486 ^ 0xD960783;
  v485 = v484 ^ v143 ^ v479;
  HIDWORD(v478) = v477 ^ v392 ^ v436;
  LODWORD(v478) = HIDWORD(v402) ^ v473;
  HIDWORD(v474) = v380 ^ v471 ^ (-1974868763 * v52 + 1641025899) ^ HIDWORD(v422);
  LODWORD(v474) = HIDWORD(v386) ^ v422 ^ (HIDWORD(v390) - 297678094);
  HIDWORD(v468) = HIDWORD(v383) ^ v54;
  LODWORD(v468) = (v446 - 930819850) ^ *(v30 - 164);
  HIDWORD(v464) = v466 ^ HIDWORD(v404);
  LODWORD(v464) = v460 ^ (HIDWORD(v369) - 930819850) ^ v463;
  HIDWORD(v458) = v376 ^ (v372 - 297678094);
  LODWORD(v458) = v448 ^ v457 ^ v455 ^ *(v30 - 212);
  LODWORD(v32) = *(v30 - 116);
  HIDWORD(v454) = v430 ^ (v370 - 930819850);
  LODWORD(v454) = HIDWORD(v409) ^ HIDWORD(v374);
  HIDWORD(v449) = v433 ^ v451 ^ (v438 - 297678094);
  LODWORD(v449) = *(v30 - 152) ^ *(v30 - 176) ^ (HIDWORD(v406) - 930819850);
  HIDWORD(v445) = v418 ^ HIDWORD(v418);
  LODWORD(v445) = v428 ^ HIDWORD(v399) ^ v444;
  HIDWORD(v439) = *(v30 - 160) ^ v442;
  LODWORD(v439) = *(v30 - 144) ^ HIDWORD(v413) ^ (-1974868763 * v96 + 1641025899);
  HIDWORD(v434) = *(v30 - 168) ^ HIDWORD(v392) ^ *(v30 - 172);
  LODWORD(v434) = *(v30 - 156) ^ v402;
  *(v30 - 212) = v98;
  LODWORD(v431) = v498 - ((2 * v498) & 0xB1815C6) + 93063907;
  HIDWORD(v431) = 46032142 - v98 - v97;
  HIDWORD(a28) = HIDWORD(v431) ^ v97;
  *(v30 - 116) = v32;
  *(v30 - 176) = 0;
  *(v30 - 140) = *(v30 - 120) < 0xF07525E6;
  v159 = (*(v30 - 184) + v32);
  v161 = *(v30 - 232);
  v160 = *(v30 - 224);
  LOBYTE(v153) = *(v160 + (v159[5] ^ 0x87));
  v162 = v159[4] ^ 2;
  *(v30 - 156) = (v40 - 328) | 0x148;
  v164 = *(v30 - 248);
  v163 = *(v30 - 240);
  v165 = *(v30 - 252);
  v166 = v40 - 72;
  v167 = (((((v40 - 72) | 0x48) + v153 - 92) ^ 0x74) << 16) | ((*(v163 + v162) ^ 0x1E) << 24) | ((*(v161 + (v159[6] ^ 0xE2)) ^ 0x1A) << 8) | (v165 + 53 * *(v164 + (v159[7] ^ 0xBFLL))) ^ 0xFA;
  v168 = ((v165 + 53 * *(v164 + (v159[15] ^ 0x3CLL))) ^ 0x68 | ((*(v161 + (v159[14] ^ 8)) ^ 0x5E) << 8)) & 0xFF00FFFF | ((*(v163 + (v159[12] ^ 0xBDLL)) ^ 0x36) << 24) | (((*(v160 + (v159[13] ^ 0xCALL)) + 16) ^ 0xFD) << 16);
  v169 = (v165 + 53 * *(v164 + (v159[3] ^ 0x19))) ^ 0x38 | ((*(v163 + (*v159 ^ 0x50)) ^ 0x2B) << 24) | (((*(v160 + (v159[1] ^ 0x1ELL)) + 16) ^ 0x68) << 16) | ((*(v161 + (v159[2] ^ 6)) ^ 0x22) << 8);
  v170 = ((*(v163 + v159[8]) ^ 0x15) << 24) | (((*(v160 + (v159[9] ^ 0xB0)) + 16) ^ 0x86) << 16) | ((*(v161 + (v159[10] ^ 0x42)) ^ 0xDF) << 8) | (v165 + 53 * *(v164 + (v159[11] ^ 0x60))) ^ 0xDA;
  if ((((v165 + 53 * *(v164 + (v159[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v171 = -2;
  }

  else
  {
    v171 = 2;
  }

  *(v30 - 168) = v167;
  *(v30 - 164) = v168;
  v172 = v492 ^ (v171 + v167);
  *(v30 - 160) = v170;
  *(v30 - 172) = v169;
  v173 = v488 ^ v169;
  v174 = *(&off_1000610D0 + (v166 ^ 0x115)) - 8;
  v175 = *&v174[4 * ((v490 ^ v170) >> 8)];
  HIDWORD(v177) = v175 ^ 0x2F2D;
  LODWORD(v177) = v175 ^ 0x33C24000;
  v176 = v177 >> 14;
  v178 = *(&off_1000610D0 + (v166 ^ 0x14A)) - 4;
  v179 = *&v174[4 * BYTE1(v173)];
  HIDWORD(v177) = v179 ^ 0x2F2D;
  LODWORD(v177) = v179 ^ 0x33C24000;
  v180 = *&v178[4 * HIBYTE(v172)] - 1231993873;
  *(v30 - 144) = v166;
  v181 = *(&off_1000610D0 + (v166 ^ 0x1B8)) - 4;
  v182 = (1907693741 - 21582785 * *&v181[4 * (v490 ^ v170)]) ^ v180;
  v183 = (1907693741 - 21582785 * *&v181[4 * v172]) ^ v176;
  v184 = *(&off_1000610D0 + v166 - 149) - 12;
  v185 = (*&v178[4 * ((v490 ^ v170) >> 24)] - 1231993873) ^ (v177 >> 14);
  v186 = *&v184[4 * BYTE2(v172)];
  v187 = *&v174[4 * BYTE1(v172)];
  HIDWORD(v177) = v187 ^ 0x2F2D;
  LODWORD(v177) = v187 ^ 0x33C24000;
  v188 = (v185 + 93063907 - ((2 * v185) & 0xB1815C6)) ^ v186 ^ (1907693741 - 21582785 * *&v181[4 * (v494 ^ v168)]);
  v189 = (*&v178[4 * ((v494 ^ v168) >> 24)] - 1231993873) ^ (v177 >> 14);
  v190 = *&v174[4 * ((v494 ^ v168) >> 8)];
  HIDWORD(v177) = v190 ^ 0x2F2D;
  LODWORD(v177) = v190 ^ 0x33C24000;
  v191 = v189 ^ (1907693741 - 21582785 * *&v181[4 * v173]);
  v192 = v191 + 93063907 - ((2 * v191) & 0xB1815C6);
  v193 = HIDWORD(a28) ^ (v188 + HIDWORD(v431) - 2 * (v188 & HIDWORD(v431)));
  v194 = HIDWORD(v425) ^ v390 ^ *&v184[4 * ((v494 ^ v168) >> 16)] ^ (*&v178[4 * HIBYTE(v173)] - 1231993873) ^ 0x8E1E9161 ^ (v183 + 93063907 - ((2 * v183) & 0xB1815C6));
  v195 = v485 ^ *&v184[4 * BYTE2(v173)] ^ (v177 >> 14) ^ 0x7A8BED94 ^ (v182 + 93063907 - ((2 * v182) & 0xB1815C6));
  v196 = v426 ^ v482 ^ *&v184[4 * ((v490 ^ v170) >> 16)] ^ 0x342D1067 ^ v192;
  v197 = *&v174[4 * ((v193 ^ 0xAB13) >> 8)];
  HIDWORD(v177) = v197 ^ 0x2F2D;
  LODWORD(v177) = v197 ^ 0x33C24000;
  v198 = *&v178[4 * HIBYTE(v195)];
  v199 = (v177 >> 14) ^ (*&v178[4 * HIBYTE(v194)] - 1231993873);
  v200 = v199 + 93063907 - ((2 * v199) & 0xB1815C6);
  v201 = v198 - 1138929966 - ((2 * v198 + 220366814) & 0xB1815C6);
  v202 = *&v174[4 * BYTE1(v196)];
  HIDWORD(v177) = v202 ^ 0x2F2D;
  LODWORD(v177) = v202 ^ 0x33C24000;
  v203 = v177 >> 14;
  v204 = *&v178[4 * ((v193 ^ 0xC04AB13u) >> 24)];
  v205 = v204 - 1138929966 - ((2 * v204 + 220366814) & 0xB1815C6);
  v206 = (1907693741 - 21582785 * *&v181[4 * v194]) ^ (*&v178[4 * HIBYTE(v196)] - 1231993873);
  v207 = *&v174[4 * BYTE1(v194)];
  HIDWORD(v177) = v207 ^ 0x2F2D;
  LODWORD(v177) = v207 ^ 0x33C24000;
  v208 = v177 >> 14;
  v209 = *&v174[4 * BYTE1(v195)];
  HIDWORD(v177) = v209 ^ 0x2F2D;
  LODWORD(v177) = v209 ^ 0x33C24000;
  v210 = 1907693741 - 21582785 * *&v181[4 * (v193 ^ 0x33)];
  v211 = *&v184[4 * ((v193 ^ 0xC04AB13u) >> 16)];
  v212 = *(v30 - 256) ^ *&v184[4 * BYTE2(v196)] ^ (1907693741 - 21582785 * *&v181[4 * v195]) ^ v200;
  v213 = v386 ^ (HIDWORD(v397) - 297678094) ^ v211 ^ (v177 >> 14) ^ 0xD9D684A ^ (v206 + 93063907 - ((2 * v206) & 0xB1815C6));
  v214 = HIDWORD(v478) ^ *&v184[4 * BYTE2(v194)] ^ v201 ^ v203 ^ 0x87DD46DC ^ v210;
  v215 = v478 ^ *&v184[4 * BYTE2(v195)] ^ (1907693741 - 21582785 * *&v181[4 * v196]) ^ v208 ^ 0x96521C3F ^ v205;
  v216 = *&v174[4 * ((v212 ^ 0xB36B) >> 8)];
  HIDWORD(v177) = v216 ^ 0x2F2D;
  LODWORD(v177) = v216 ^ 0x33C24000;
  v217 = v177 >> 14;
  v218 = *&v174[4 * BYTE1(v213)];
  v219 = 1907693741 - 21582785 * *&v181[4 * ((BYTE4(v478) ^ v184[4 * BYTE2(v194)] ^ v201 ^ v203) ^ 0xDC ^ v210)];
  HIDWORD(v177) = v218 ^ 0x2F2D;
  LODWORD(v177) = v218 ^ 0x33C24000;
  v220 = v177 >> 14;
  v221 = *&v174[4 * BYTE1(v214)];
  HIDWORD(v177) = v221 ^ 0x2F2D;
  LODWORD(v177) = v221 ^ 0x33C24000;
  v222 = (1907693741 - 21582785 * *&v181[4 * v213]) ^ v217;
  v223 = (*&v178[4 * HIBYTE(v214)] - 1231993873) ^ v220 ^ (1907693741 - 21582785 * *&v181[4 * v215]);
  v224 = *&v184[4 * BYTE2(v214)];
  v225 = (*&v178[4 * HIBYTE(v213)] - 1231993873) ^ (v177 >> 14);
  v226 = *&v174[4 * BYTE1(v215)];
  HIDWORD(v177) = v226 ^ 0x2F2D;
  LODWORD(v177) = v226 ^ 0x33C24000;
  v227 = v225 ^ (1907693741 - 21582785 * *&v181[4 * (v212 ^ 0x6B)]);
  v228 = v515 ^ *&v184[4 * ((v212 ^ 0x2F7BB36B) >> 16)] ^ (v223 + 93063907 - ((2 * v223) & 0xB1815C6));
  v229 = HIDWORD(v474) ^ *&v184[4 * BYTE2(v215)] ^ 0x2C8CDF59 ^ (v227 + 93063907 - ((2 * v227) & 0xB1815C6));
  v230 = v474 ^ v224 ^ (*&v178[4 * HIBYTE(v215)] - 1231993873) ^ 0xD8A932B2 ^ (v222 + 93063907 - ((2 * v222) & 0xB1815C6));
  BYTE2(v223) = BYTE2(v228) ^ 0x6F;
  v231 = HIDWORD(v468) ^ *&v184[4 * BYTE2(v213)] ^ (*&v178[4 * (HIBYTE(v212) ^ 0xEE)] - 1231993873) ^ 0xDBC82169 ^ (((v177 >> 14) ^ v219) + 93063907 - ((2 * ((v177 >> 14) ^ v219)) & 0xB1815C6));
  v232 = *&v184[4 * BYTE2(v229)];
  v233 = *&v174[4 * ((v228 ^ 0x9E59) >> 8)];
  v234 = *&v174[4 * BYTE1(v231)];
  HIDWORD(v177) = v233 ^ 0x2F2D;
  LODWORD(v177) = v233 ^ 0x33C24000;
  v235 = v177 >> 14;
  HIDWORD(v177) = v234 ^ 0x2F2D;
  LODWORD(v177) = v234 ^ 0x33C24000;
  v236 = (1907693741 - 21582785 * *&v181[4 * v230]) ^ (*&v178[4 * ((v228 ^ 0xD16F9E59) >> 24)] - 1231993873) ^ (*&v174[4 * BYTE1(v229)] >> 14) ^ (*&v174[4 * BYTE1(v229)] << 18) ^ 0xBCB4CF09;
  v237 = *&v184[4 * BYTE2(v230)];
  v238 = (*&v178[4 * HIBYTE(v229)] - 1231993873) ^ v235 ^ (1907693741 - 21582785 * *&v181[4 * v231]);
  v239 = *&v181[4 * (v228 ^ 0x79)];
  v240 = (v177 >> 14) ^ (*&v178[4 * HIBYTE(v230)] - 1231993873) ^ (1907693741 - 21582785 * *&v181[4 * v229]);
  v241 = *&v174[4 * BYTE1(v230)];
  HIDWORD(v177) = v241 ^ 0x2F2D;
  LODWORD(v177) = v241 ^ 0x33C24000;
  v242 = v512 ^ v237 ^ (v238 + 93063907 - ((2 * v238) & 0xB1815C6));
  v243 = v242 ^ 0xE0349DAE;
  v244 = v468 ^ *&v184[4 * BYTE2(v223)] ^ 0xF4361671 ^ (v240 + 93063907 - ((2 * v240) & 0xB1815C6));
  v245 = v509 ^ v232 ^ (*&v178[4 * HIBYTE(v231)] - 1231993873) ^ (v177 >> 14) ^ (-21582785 * v239 + 2000757648 - ((225269886 * v239 + 57291098) & 0xB1815C6));
  v246 = HIDWORD(v464) ^ *&v184[4 * BYTE2(v231)] ^ 0x7E1E5010 ^ (v236 + 93063907 - ((2 * v236) & 0xB1815C6));
  v247 = (1907693741 - 21582785 * *&v181[4 * (v242 ^ 0x8E)]) ^ (*&v178[4 * HIBYTE(v244)] - 1231993873);
  v248 = *&v178[4 * ((v242 ^ 0xE0349DAE) >> 24)];
  v249 = *&v184[4 * BYTE2(v246)];
  v250 = *&v174[4 * BYTE1(v243)];
  HIDWORD(v177) = v250 ^ 0x2F2D;
  LODWORD(v177) = v250 ^ 0x33C24000;
  v251 = v177 >> 14;
  v252 = *&v184[4 * BYTE2(v244)];
  v253 = *&v174[4 * BYTE1(v246)];
  HIDWORD(v177) = v253 ^ 0x2F2D;
  LODWORD(v177) = v253 ^ 0x33C24000;
  v254 = v177 >> 14;
  v255 = v251 ^ (1907693741 - 21582785 * *&v181[4 * v244]) ^ (*&v178[4 * HIBYTE(v246)] - 1231993873);
  v256 = *&v174[4 * ((v245 ^ 0x500A) >> 8)];
  HIDWORD(v177) = v256 ^ 0x2F2D;
  LODWORD(v177) = v256 ^ 0x33C24000;
  v257 = v177 >> 14;
  v258 = *&v174[4 * BYTE1(v244)];
  HIDWORD(v177) = v258 ^ 0x2F2D;
  LODWORD(v177) = v258 ^ 0x33C24000;
  v259 = *&v184[4 * BYTE2(v243)];
  v260 = (1907693741 - 21582785 * *&v181[4 * v246]) ^ (*&v178[4 * ((v245 ^ 0x6754500Au) >> 24)] - 1231993873) ^ (v177 >> 14);
  v261 = v255 + 93063907 - ((2 * v255) & 0xB1815C6);
  v262 = v260 + 93063907 - ((2 * v260) & 0xB1815C6);
  v263 = 1907693741 - 21582785 * *&v181[4 * (v245 ^ 0x2A)];
  v264 = v464 ^ v249 ^ v257 ^ (v247 + 93063907 - ((2 * v247) & 0xB1815C6)) ^ 0x541774FA;
  v265 = HIDWORD(v458) ^ *&v184[4 * ((v245 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ v261;
  v266 = v458 ^ v252 ^ (v248 - 1138929966 - ((2 * v248 + 220366814) & 0xB1815C6)) ^ v263 ^ 0x713017E6 ^ v254;
  v267 = HIDWORD(v454) ^ v259 ^ 0x8EB61C45 ^ v262;
  v268 = *&v174[4 * BYTE1(v265)];
  HIDWORD(v177) = v268 ^ 0x2F2D;
  LODWORD(v177) = v268 ^ 0x33C24000;
  v269 = *&v184[4 * BYTE2(v264)];
  v270 = (v177 >> 14) + 93063907 - ((2 * (v177 >> 14)) & 0xB1815C6);
  v271 = *&v181[4 * (v264 - ((2 * v264) & 0x40)) + 128];
  v272 = *&v174[4 * BYTE1(v267)];
  HIDWORD(v177) = v272 ^ 0x2F2D;
  LODWORD(v177) = v272 ^ 0x33C24000;
  v273 = (v177 >> 14) ^ (*&v178[4 * HIBYTE(v264)] - 1231993873);
  v274 = -21582785 * v271 + 2000757648 - ((225269886 * v271 + 57291098) & 0xB1815C6);
  v275 = *&v174[4 * BYTE1(v264)];
  HIDWORD(v177) = v275 ^ 0x2F2D;
  LODWORD(v177) = v275 ^ 0x33C24000;
  v276 = v177 >> 14;
  v277 = *&v174[4 * BYTE1(v266)];
  HIDWORD(v177) = v277 ^ 0x2F2D;
  LODWORD(v177) = v277 ^ 0x33C24000;
  v278 = *&v178[4 * HIBYTE(v265)] - 1231993873;
  v279 = *&v184[4 * BYTE2(v265)];
  v280 = v499 ^ (v404 - 930819850) ^ *&v184[4 * BYTE2(v266)] ^ v276 ^ (*&v178[4 * HIBYTE(v267)] - 1231993873) ^ (-21582785 * *&v181[4 * v265] + 2000757648 + ((43165570 * *&v181[4 * v265] + 211144357) | 0xF4E7EA39) + 1);
  v281 = v454 ^ v269 ^ (*&v178[4 * HIBYTE(v266)] - 1231993873) ^ v270 ^ (1907693741 - 21582785 * *&v181[4 * v267]) ^ 0x7C892C4A;
  v282 = HIDWORD(v449) ^ *&v184[4 * BYTE2(v267)] ^ v278 ^ (v177 >> 14) ^ 0x190B7FE4 ^ v274;
  v283 = v449 ^ v279 ^ (1907693741 - 21582785 * *&v181[4 * v266]) ^ 0xCFA132BA ^ (v273 + 93063907 - ((2 * v273) & 0xB1815C6));
  v284 = v280 ^ 0x402CF460;
  v285 = *&v184[4 * BYTE2(v283)];
  v286 = *&v174[4 * BYTE1(v281)];
  v287 = (v280 ^ 0x402CF460u) >> 24;
  HIDWORD(v177) = v286 ^ 0x2F2D;
  LODWORD(v177) = v286 ^ 0x33C24000;
  v288 = v177 >> 14;
  v289 = *&v174[4 * BYTE1(v283)];
  HIDWORD(v177) = v289 ^ 0x2F2D;
  LODWORD(v177) = v289 ^ 0x33C24000;
  v290 = HIBYTE(v283);
  v291 = *&v181[4 * (v280 ^ 0x40)];
  v292 = -21582785 * v291 + 2000757648 - ((225269886 * v291 + 57291098) & 0xB1815C6);
  v293 = (1907693741 - 21582785 * *&v181[4 * v282]) ^ (*&v178[4 * v287] - 1231993873) ^ (v177 >> 14);
  v294 = *&v174[4 * BYTE1(v282)];
  HIDWORD(v177) = v294 ^ 0x2F2D;
  LODWORD(v177) = v294 ^ 0x33C24000;
  v295 = v177 >> 14;
  v296 = *&v184[4 * BYTE2(v284)];
  v297 = (*&v178[4 * HIBYTE(v282)] - 1231993873) ^ v288 ^ (1907693741 - 21582785 * *&v181[4 * v283]);
  v298 = (1907693741 - 21582785 * *&v181[4 * v281]) ^ (*&v178[4 * v290] - 1231993873);
  v299 = *&v174[4 * BYTE1(v284)];
  HIDWORD(v177) = v299 ^ 0x2F2D;
  LODWORD(v177) = v299 ^ 0x33C24000;
  v300 = *&v178[4 * HIBYTE(v281)] - 1231993873;
  v301 = HIDWORD(v445) ^ *&v184[4 * BYTE2(v281)] ^ 0x2655A6B2 ^ (v293 + 93063907 - ((2 * v293) & 0xB1815C6));
  v302 = v445 ^ *&v184[4 * BYTE2(v282)] ^ (v177 >> 14) ^ 0x354150DE ^ (v298 + 93063907 - ((2 * v298) & 0xB1815C6));
  v303 = HIDWORD(v439) ^ v285 ^ v295 ^ v300 ^ 0x6005D395 ^ v292;
  v304 = v439 ^ v296 ^ 0xD6EF510D ^ (v297 + 93063907 - ((2 * v297) & 0xB1815C6));
  v305 = *&v184[4 * BYTE2(v301)];
  v306 = *&v174[4 * BYTE1(v303)];
  HIDWORD(v177) = v306 ^ 0x2F2D;
  LODWORD(v177) = v306 ^ 0x33C24000;
  v307 = (v177 >> 14) + 93063907 - ((2 * (v177 >> 14)) & 0xB1815C6);
  v308 = *&v178[4 * HIBYTE(v301)];
  v309 = (1907693741 - 21582785 * *&v181[4 * v301]) ^ (*&v178[4 * HIBYTE(v303)] - 1231993873);
  v310 = *&v174[4 * BYTE1(v302)];
  HIDWORD(v177) = v310 ^ 0x2F2D;
  LODWORD(v177) = v310 ^ 0x33C24000;
  v311 = v177 >> 14;
  v312 = *&v174[4 * BYTE1(v301)];
  HIDWORD(v177) = v312 ^ 0x2F2D;
  LODWORD(v177) = v312 ^ 0x33C24000;
  v313 = v177 >> 14;
  v314 = *&v174[4 * BYTE1(v304)];
  HIDWORD(v177) = v314 ^ 0x2F2D;
  LODWORD(v177) = v314 ^ 0x33C24000;
  v315 = *&v178[4 * HIBYTE(v302)] - 1231993873;
  v316 = *&v184[4 * BYTE2(v302)] ^ *(v30 - 212) ^ (v177 >> 14) ^ (v309 + 93063907 - ((2 * v309) & 0xB1815C6));
  v317 = v504 ^ *&v184[4 * BYTE2(v303)] ^ v311 ^ (v308 - 1138929966 - ((2 * v308 + 220366814) & 0xB1815C6)) ^ (1907693741 - 21582785 * *&v181[4 * v304]);
  v318 = HIDWORD(v434) ^ v305 ^ (*&v178[4 * HIBYTE(v304)] - 1231993873) ^ v307 ^ (1907693741 - 21582785 * *&v181[4 * v302]) ^ 0xDE12593A;
  v319 = v434 ^ v315 ^ *&v184[4 * BYTE2(v304)] ^ (-21582785 * *&v181[4 * v303] + 2000757648 - ((225269886 * *&v181[4 * v303] + 57291098) & 0xB1815C6)) ^ v313 ^ 0x8D19C5A6;
  v320 = *&v174[4 * BYTE1(v319)];
  HIDWORD(v177) = v320 ^ 0x2F2D;
  LODWORD(v177) = v320 ^ 0x33C24000;
  v321 = 1907693741 - 21582785 * *&v181[4 * (v316 ^ 0x30)];
  v322 = *&v184[4 * ((v316 ^ 0x911C5930) >> 16)];
  v323 = (v177 >> 14) + 93063907 - ((2 * (v177 >> 14)) & 0xB1815C6);
  v324 = *&v174[4 * ((v316 ^ 0x5930) >> 8)];
  HIDWORD(v177) = v324 ^ 0x2F2D;
  LODWORD(v177) = v324 ^ 0x33C24000;
  v325 = (v177 >> 14) + 93063907 - ((2 * (v177 >> 14)) & 0xB1815C6);
  v326 = (*&v178[4 * (HIBYTE(v316) ^ 0x50)] - 1231993873) ^ (1907693741 - 21582785 * *&v181[4 * (v317 ^ 0x62)]);
  v327 = *&v174[4 * ((v317 ^ 0x3362) >> 8)];
  HIDWORD(v177) = v327 ^ 0x2F2D;
  LODWORD(v177) = v327 ^ 0x33C24000;
  v328 = v177 >> 14;
  LODWORD(v174) = *&v174[4 * BYTE1(v318)];
  HIDWORD(v177) = v174 ^ 0x2F2D;
  LODWORD(v177) = v174 ^ 0x33C24000;
  v329 = v142 ^ v374 ^ *&v184[4 * ((v317 ^ 0x1F1D3362) >> 16)] ^ (*&v178[4 * HIBYTE(v318)] - 1231993873) ^ (1907693741 - 21582785 * *&v181[4 * v319]) ^ v325;
  v330 = (*&v178[4 * HIBYTE(v319)] - 1231993873) ^ v431 ^ v328 ^ *&v184[4 * BYTE2(v318)] ^ v321;
  v331 = HIDWORD(v380) ^ v409 ^ v322 ^ v323 ^ (1907693741 - 21582785 * *&v181[4 * v318]) ^ (*&v178[4 * (HIBYTE(v317) ^ 0xDE)] - 1231993873);
  v332 = v496 ^ *&v184[4 * BYTE2(v319)] ^ (v177 >> 14) ^ (v326 + 93063907 - ((2 * v326) & 0xB1815C6));
  v333 = v332 ^ 0x644667A6;
  LODWORD(v184) = v331 ^ 0x7EC2C88;
  LODWORD(v178) = v329 ^ 0x9A25D878;
  v334 = *(v30 - 144);
  v335 = *(&off_1000610D0 + (v334 ^ 0x12F)) - 8;
  v336 = *&v335[4 * ((v332 ^ 0x644667A6u) >> 24)];
  HIDWORD(v177) = v336 ^ 0x3A;
  LODWORD(v177) = v336 ^ 0xA1F2E300;
  v337 = v330 ^ 0xAD089B63;
  v338 = *(&off_1000610D0 + (v334 ^ 0x169)) - 4;
  *(v30 - 148) = *&v338[4 * ((v331 ^ 0x7EC2C88u) >> 16)];
  v339 = *(&off_1000610D0 + (v334 ^ 0x1AD)) - 4;
  v340 = ((v331 ^ 0x88) - 1037222449 - 2 * ((v331 ^ 0x7EC2C88) & 0xDF ^ v331 & 0x10)) ^ *&v339[4 * (v331 ^ 0xDB)] ^ (v177 >> 7);
  v341 = *&v338[4 * ((v332 ^ 0x644667A6u) >> 16)];
  *(v30 - 152) = ((2 * v341) & 0xBB708860 ^ 0xD7FFFFFF) - 1850083791 + (((v341 ^ 0x7B4972FB) - 2068411131) ^ ((v341 ^ 0xF58CA212) + 175332846) ^ ((v341 ^ 0xBAC462E9) + 1161534743));
  v342 = (v329 ^ 0x78) - 1037222449 + (~(2 * (v329 ^ 0x9A25D878)) | 0xFFFFFE61);
  v343 = v340 + 872526336 - ((2 * v340) & 0x68036400);
  v344 = *&v338[4 * ((v330 ^ 0xAD089B63) >> 16)];
  LODWORD(v338) = *&v338[4 * ((v329 ^ 0x9A25D878) >> 16)];
  v345 = *(&off_1000610D0 + (v334 ^ 0x142)) - 4;
  v346 = ((v332 ^ 0xA6) - 1037222449 - 2 * ((v332 ^ 0x644667A6) & 0xDF ^ v332 & 0x10)) ^ (BYTE1(v184) - 1158709115 - ((v184 >> 7) & 0x10A)) ^ *&v345[4 * (BYTE1(v184) ^ 0xF5)] ^ *&v339[4 * (v332 ^ 0xF5)];
  v347 = *&v335[4 * ((v329 ^ 0x9A25D878) >> 24)];
  HIDWORD(v177) = v347 ^ 0x3A;
  LODWORD(v177) = v347 ^ 0xA1F2E300;
  v348 = v177 >> 7;
  v349 = ((v330 ^ 0x9B63) >> 8);
  v350 = v349 - 1158709115 - (((v330 ^ 0xAD089B63) >> 7) & 0x10A);
  v351 = *&v335[4 * (HIBYTE(v330) ^ 0xBD)];
  HIDWORD(v177) = v351 ^ 0x3A;
  LODWORD(v177) = v351 ^ 0xA1F2E300;
  v352 = v177 >> 7;
  v353 = *&v339[4 * (v329 ^ 0x2B)];
  v354 = *&v339[4 * (v330 ^ 0x30)];
  v355 = *&v345[4 * (v349 ^ 0xF5)];
  v356 = *&v345[4 * (BYTE1(v333) ^ 0xF5)];
  v357 = BYTE1(v178) ^ 0xF5u;
  v358 = *&v345[4 * v357];
  v359 = BYTE1(v178) - 1158709115 - ((v178 >> 7) & 0x10A);
  LODWORD(v184) = *&v335[4 * (v184 >> 24)];
  HIDWORD(v177) = v184 ^ 0x3A;
  LODWORD(v177) = v184 ^ 0xA1F2E300;
  LODWORD(v184) = *(v30 - 136) ^ *(v30 - 200) ^ v338 ^ v352 ^ (v346 + 872526336 - ((2 * v346) & 0x68036400));
  LODWORD(v178) = *(v30 - 132) ^ *(v30 - 208) ^ v350 ^ (v342 + 1) ^ v353 ^ v355 ^ (v177 >> 7) ^ *(v30 - 152);
  v360 = *(v30 - 128) ^ *(v30 - 204) ^ v359 ^ v344 ^ v358 ^ v343;
  LODWORD(v174) = *(v30 - 124) ^ *(v30 - 196) ^ (v337 - 1037222449 - ((2 * v337) & 0x19E)) ^ *(v30 - 148) ^ (BYTE1(v333) - 1158709115 - ((v333 >> 7) & 0x10A)) ^ v354 ^ v356 ^ (v348 + 872526336 - ((2 * v348) & 0x68036400));
  v361 = (*(v30 - 132) ^ *(v30 - 208) ^ v350 ^ (v342 + 1) ^ v353 ^ v355 ^ (v177 >> 7) ^ *(v30 - 152)) ^ 0xDFLL;
  v362 = *(&off_1000610D0 + (v334 ^ 0x172)) - 8;
  v159[3] = v362[v361] ^ 0x34;
  v363 = *(&off_1000610D0 + v334 - 135) - 8;
  v159[4] = (v363[(v174 >> 24) ^ 0x2CLL] + 97) ^ 0x78;
  *v159 = (v363[(v178 >> 24) ^ 0x57] + 97) ^ 0xC8;
  v364 = *(&off_1000610D0 + v334 - 258) - 8;
  v159[13] = (v364[BYTE2(v360) ^ 0x5CLL] + 93) ^ 0xC7;
  v159[11] = v362[v184 ^ 0x46] ^ 0x70;
  v365 = *(&off_1000610D0 + v334 - 262) - 8;
  v159[14] = ((BYTE1(v360) ^ 0xEE) - ((2 * (BYTE1(v360) ^ 0xEE)) & 0x9C) + 78) ^ 0x75 ^ v365[BYTE1(v360)];
  v159[2] = ((BYTE1(v178) ^ 3) - ((2 * (BYTE1(v178) ^ 3)) & 0x9C) + 78) ^ 0x8B ^ v365[BYTE1(v178) ^ 0xE6];
  v159[10] = ((BYTE1(v184) ^ 0xAB) - ((2 * (BYTE1(v184) ^ 0xAB)) & 0x9C) + 78) ^ 0x6D ^ v365[BYTE1(v184) ^ 0x84];
  v159[15] = v362[v360 ^ 0x11] ^ 0xC7;
  v159[5] = (v364[BYTE2(v174) ^ 0x44] + 93) ^ 0xE2;
  v159[8] = (v363[(v184 >> 24) ^ 0x26] + 97) ^ 0xA2;
  v159[7] = v362[v174 ^ 0x3DLL] ^ 0xCD;
  v159[12] = (v363[HIBYTE(v360) ^ 0x44] + 97) ^ 0x23;
  v159[1] = (v364[BYTE2(v178) ^ 0xA3] + 93) ^ 0x17;
  v159[6] = (BYTE1(v174) - ((v174 >> 7) & 0x9C) + 78) ^ 0xD0 ^ v365[BYTE1(v174) ^ 0x58];
  v366 = *(v30 - 120);
  LODWORD(v174) = *(v30 - 116);
  v159[9] = (v364[BYTE2(v184) ^ 0xF8] + 93) ^ 0x90;
  v367 = v174 - 260758026 < v366;
  if (*(v30 - 140) != (v174 - 260758026) < 0xF07525E6)
  {
    v367 = *(v30 - 140);
  }

  LODWORD(v399) = v372 - 297678094;
  LODWORD(v404) = HIDWORD(v369) - 930819850;
  HIDWORD(v406) = v370 - 930819850;
  return (*(*(v30 - 192) + 8 * ((79 * v367) ^ v334)))(v365, 109, v358, v354, v334, v159, v355, v357, a2, a3, v369, v370, v371, v372, v374, v376, v380, v383, v386, v390, v392, v397, v399, v402, v404, v406, v409, v413, v418, v422, v425, v426, a26, a27, a28, v431, v434, v439, v445, v449, v454, v458, v464, v468, v474, v478);
}

uint64_t sub_1000107B0(int8x16_t a1, int8x16_t a2)
{
  v9 = v2 + 2;
  v10 = v4 + 2;
  v11 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v10[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v10 = v11;
  return (*(v8 + 8 * (((v3 == 32) * (((v5 + 1039) | v6) ^ v7)) ^ (v5 + 2760))))();
}

uint64_t sub_1000107C0@<X0>(uint64_t a1@<X8>)
{
  v8 = v3 - 2;
  v9 = v2 + 2;
  *(v8 + 14) = (v9 ^ v5) * (v9 + 17);
  *(v8 + a1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v4 != 2) * v6) ^ v1)))();
}

uint64_t sub_100010874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  v24 = (v17 + 1078067544) & 0xBFBDFDD7;
  v25 = ((v23 + 676358272 - 2 * ((v23 - 128) & 0x28506900)) ^ 0xB3179F8A) * v19;
  *(v23 - 120) = &a15;
  *(v23 - 128) = v25 + (v22 ^ 0x5EF57534) + ((v24 ^ 0xBDEAEB3C) & (2 * v22)) - 1082466336;
  *(v23 - 112) = v17 - v25 + 1389;
  (*(v18 + 8 * (v17 + 1623)))(v23 - 128);
  *(v23 - 128) = v24 - ((v23 - 128 + v20 - 2 * ((v23 - 128) & v20)) ^ 0xC0CDE039) * v19 + 1471;
  *(v23 - 120) = a14;
  *(v23 - 104) = &a17;
  v26 = (*(v18 + 8 * (v24 + 1823)))(v23 - 128);
  return (*(v18 + 8 * ((14 * (*(v23 - 112) > ((95 * (v24 ^ 0x156)) ^ (v21 - 277)))) ^ v24)))(v26);
}

uint64_t sub_100010B38(uint64_t a1)
{
  v1 = ((*a1 ^ (2066391179 * ((-2 - ((a1 | 0xF47B8614) + (~a1 | 0xB8479EB))) ^ 0xA4A3FBF3))) + 86) | 1;
  v2 = (v1 ^ 0xC90943DC) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_1000610D0 + v1 - 1174) + ((868 * (v2 > (v1 ^ 0x1BB) - 1266)) ^ v1)))();
}

uint64_t sub_100010D78(int a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = *(v10 + 8);
  v14 = *(v13 + 4 * (a3 + v12)) ^ v8;
  *(v13 + 4 * (a7 - 1)) = ((v14 >> v9) & a4 | (a8 ^ a1) & ~(v14 >> v9)) ^ a1;
  return (*(v11 + 8 * (((v12 > 1) * a6) ^ a2)))();
}

uint64_t sub_100010D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t (*a28)(void))
{
  v34 = (((v32 ^ 0xE8F54EC8) + 386576696) ^ ((v32 ^ 0x49A1EDE7) - 1235348967) ^ ((v32 ^ 0x3D6E9464) - 1030657124)) + 1734240910 + (((LODWORD(STACK[0x2CC]) ^ 0xC799F26C) + 946212244) ^ ((LODWORD(STACK[0x2CC]) ^ 0x7E8E52E9) - 2123256553) ^ (v33 - 623745542 + (LODWORD(STACK[0x2CC]) ^ 0x252D97CE)));
  v35 = ((v34 ^ 0x54D592A7) & (2 * (v34 & 0xD1160408)) | 0x50384A9) ^ v34 & 0xD1160408;
  v36 = (2 * (v34 ^ 0x54D592A7)) & 0x85C396AE ^ 0x844092A1 ^ ((2 * (v34 ^ 0x54D592A7)) ^ 0xB872D5E) & (v34 ^ 0x54D592A7);
  v37 = ((4 * v35) ^ 0x140E12A4) & v36 ^ v35 ^ ((4 * v35) & 0x84C212A4 | 0x1000008);
  v38 = (4 * v36) & 0x85C396AC ^ 0x80C18403 ^ ((4 * v36) ^ 0x170E5ABC) & v36;
  v39 = (16 * v37) & 0x85C396A0 ^ v37 ^ ((16 * v37) ^ 0x196050) & v38;
  v40 = (16 * v38) & 0x85C396A0 ^ 0x81C2940F ^ ((16 * v38) ^ 0x5C396AF0) & v38;
  v41 = v39 ^ (v39 << 8) & 0x85C39600 ^ ((v39 << 8) ^ 0x960500) & v40 ^ 0x854104AA;
  LODWORD(STACK[0x2CC]) = v34 ^ (2 * ((v41 << 16) & 0x5C30000 ^ v41 ^ ((v41 << 16) ^ 0x16AF0000) & ((v40 << 8) & 0x5C30000 ^ 0x4410000 ^ ((v40 << 8) ^ 0x43960000) & v40))) ^ 0x4FAD1E1D;
  v42 = (((v31 ^ 0x64390CD7) - 1681460439) ^ ((v31 ^ 0x1E878730) - 512198448) ^ ((v31 ^ 0xE684BCAC) + 427508564)) + (((LODWORD(STACK[0x2BC]) ^ 0xDF7CBCD2) + 545473326) ^ ((LODWORD(STACK[0x2BC]) ^ 0xEE0F9704) + 300968188) ^ ((LODWORD(STACK[0x2BC]) ^ 0xAD491C9D) + 1387717475)) + 1704554409;
  v43 = (((v30 ^ 0x9A04C54E) + 1710963378) ^ ((v30 ^ 0x7CE7716E) - 2095542638) ^ ((v30 ^ 0x7AD9836B) - 2061075307)) + (((LODWORD(STACK[0x2C0]) ^ 0x701F2E7C) - 1881091708) ^ ((LODWORD(STACK[0x2C0]) ^ 0xB7032C0) - 191902400) ^ ((LODWORD(STACK[0x2C0]) ^ 0xE7552BF7) + 413848585)) - 2082319758;
  LODWORD(STACK[0x2BC]) = v42 ^ ((v42 ^ 0x79F11BF8) - 1423186667) ^ ((v42 ^ 0xE4FAD919) + 908077046) ^ ((v42 ^ 0x4FF13C4C) - 1658076511) ^ ((v42 ^ 0xFFDFFFBE) + 755302739) ^ 0xB11F3658;
  LODWORD(STACK[0x2C0]) = v43 ^ ((v43 ^ 0x8A351CFB) + 1051132121) ^ ((v43 ^ 0xC152F338) + 1975578396) ^ ((v43 ^ 0x5FB5FEF0) - 349707564) ^ ((v43 ^ 0x5FBFF2EF) - 349311283) ^ 0xD757D497;
  v44 = (((v29 ^ 0xFC43BC58) + 62669736) ^ ((v29 ^ 0x344A96B2) - 877303474) ^ ((v29 ^ 0x54331DA1) - 1412636065)) + (((LODWORD(STACK[0x2C4]) ^ 0xB3F75EB7) + 1275633993) ^ ((LODWORD(STACK[0x2C4]) ^ 0x7254344E) - 1918121038) ^ ((LODWORD(STACK[0x2C4]) ^ 0x5D995DB2) - 1570332082)) + 1378493147;
  v45 = (v44 ^ 0xD7214BBA) & (2 * (v44 & 0xE64A4BBB)) ^ v44 & 0xE64A4BBB;
  v46 = ((2 * (v44 ^ 0x5B25D9EC)) ^ 0x7ADF24AE) & (v44 ^ 0x5B25D9EC) ^ (2 * (v44 ^ 0x5B25D9EC)) & 0xBD6F9256;
  v47 = v46 ^ 0x85209251;
  v48 = (v46 ^ 0x384B0004) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0xF5BE495C) & v47 ^ (4 * v47) & 0xBD6F9254;
  v50 = (v49 ^ 0xB52E0050) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x8419203)) ^ 0xD6F92570) & (v49 ^ 0x8419203) ^ (16 * (v49 ^ 0x8419203)) & 0xBD6F9250;
  v52 = v50 ^ 0xBD6F9257 ^ (v51 ^ 0x94690000) & (v50 << 8);
  v53 = (((v28 ^ 0x16C2040) - 23863360) ^ ((v28 ^ 0x9E5B620A) + 1638178294) ^ ((v28 ^ 0x30D7501) - 51213569)) + (((LODWORD(STACK[0x2C8]) ^ 0xDB709E8E) + 613376370) ^ ((LODWORD(STACK[0x2C8]) ^ 0xDBA55DCC) + 609919540) ^ ((LODWORD(STACK[0x2C8]) ^ 0x9CEFF409) + 1661996023)) + 1658358520;
  LODWORD(STACK[0x2C4]) = v44 ^ (2 * ((v52 << 16) & 0x3D6F0000 ^ v52 ^ ((v52 << 16) ^ 0x12570000) & (((v51 ^ 0x29069207) << 8) & 0x3D6F0000 ^ 0x106D0000 ^ (((v51 ^ 0x29069207) << 8) ^ 0x6F920000) & (v51 ^ 0x29069207)))) ^ 0x2021585E;
  LODWORD(STACK[0x2C8]) = v53 ^ ((v53 ^ 0xDFAEA568) + 171263734) ^ ((v53 ^ 0xABD8F786) + 2118325276) ^ ((v53 ^ 0xA9E9F1F3) + 2087850607) ^ ((v53 ^ 0xF7FBBF7F) + 576740579) ^ 0xB65E2B29;
  return a28();
}

uint64_t sub_1000115B4@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v7 = vmovl_u8(a2).u64[0];
  *(a1 + v5) = vuzp1_s8(v7, v7).u32[0];
  return (*(v6 + 8 * (((v5 == (v4 & 3)) * (3 * (v3 ^ 0xAD2) - 269)) ^ v3 ^ 0xA1E)))();
}

uint64_t sub_10001161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = -828364709 * v21 - 935207138;
  v24 = (v23 ^ 0x84A2B570) & (2 * (v23 & 0x96AB3979)) ^ v23 & 0x96AB3979;
  v25 = ((2 * (v23 ^ (((a7 + 310) | 0x40A) - 1935494696))) ^ 0x34131C76) & (v23 ^ (((a7 + 310) | 0x40A) - 1935494696)) ^ (2 * (v23 ^ (((a7 + 310) | 0x40A) - 1935494696))) & 0x1A098E3A;
  v26 = v25 ^ 0xA088209;
  v27 = (v25 ^ 0x10010C20) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x682638EC) & v26 ^ (4 * v26) & 0x1A098E38;
  v29 = (v28 ^ 0x8000820) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x12098613)) ^ 0xA098E3B0) & (v28 ^ 0x12098613) ^ (16 * (v28 ^ 0x12098613)) & 0x1A098E30;
  v31 = v29 ^ 0x1A098E3B ^ (v30 ^ 0x88200) & (v29 << 8);
  HIDWORD(a18) = v23 ^ (2 * ((v31 << 16) & 0x1A090000 ^ v31 ^ ((v31 << 16) ^ 0xE3B0000) & (((v30 ^ 0x1A010C0B) << 8) & 0x1A090000 ^ 0x12010000 ^ (((v30 ^ 0x1A010C0B) << 8) ^ 0x98E0000) & (v30 ^ 0x1A010C0B)))) ^ 0xFFFFFFC8;
  return (*(v22 + 8 * ((58 * ((STACK[0x2B8] & 0x3F) > 0x3B)) ^ (a7 + 1519))))(a1, a2, a3, *(a1 + 8), a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1000118DC@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3)
{
  v7 = (v4 - 99974706) & 0x5F57B7E;
  v8 = (v7 + 168) | 0x541;
  v9 = (*(v6 + 8 * (v7 ^ 0x9EB)))(**(a1 + 8 * (v7 ^ 0x1DF)), *v5, (v8 + v3 + *(v5 + 8)));
  *(v5 + 31) = (&a3 + ((v8 + 19) & 0xFB ^ 0x63)) * (&a3 ^ 0xBA);
  *(v5 + 30) = (&a3 ^ 0xBB) * (&a3 + 18);
  return (*(v6 + 8 * v8))(v9);
}

uint64_t sub_100011BE8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((712 * (v5 == 0)) ^ (v2 - 662))))();
}

uint64_t sub_100011CA8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 20) - 18429 * (((result | 0x61B4) - result + (result & 0x9E4B)) ^ 0x1ECE);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0xCB;
  v3 = v2 ^ 0xCB;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = 1609094843;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0x73F79CC2FB7F144ALL;
    *(v1 + 80) = 0x8C08633D0480EBB5;
    *(v1 + 92) = v4;
  }

  *(result + 16) = 1389937080;
  return result;
}

void sub_100011F40(uint64_t a1)
{
  v1 = 210068311 * ((-2 - ((~a1 | 0x908C503E) + (a1 | 0x6F73AFC1))) ^ 0x6207FFD6);
  v2 = *(a1 + 20) ^ v1;
  v3 = (*(a1 + 16) + v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 16092;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100012018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v31 - 144) = v30 + 1564307779 * ((v31 - 144) ^ 0x970DCC13) - 825;
  *(v31 - 136) = v27;
  *(v31 - 128) = v29;
  (*(v28 + 8 * (v30 ^ 0xD79)))(v31 - 144);
  v32 = a25;
  *(v31 - 144) = v29;
  *(v31 - 136) = v32;
  *(v31 - 128) = &a22;
  *(v31 - 120) = &a22;
  *(v31 - 112) = (v30 + 38) ^ (1785193651 * ((v31 - 144) ^ 0x2CB75BE8));
  *(v31 - 104) = &a24;
  (*(v28 + 8 * (v30 + 674)))(v31 - 144);
  *(v31 - 104) = &a24;
  *(v31 - 128) = &a22;
  *(v31 - 120) = a14;
  *(v31 - 144) = v29;
  *(v31 - 136) = &a22;
  *(v31 - 112) = (v30 + 38) ^ (1785193651 * ((v31 + 1361164511 - 2 * ((v31 - 144) & 0x5121B96F)) ^ 0x7D96E287));
  (*(v28 + 8 * (v30 + 674)))(v31 - 144);
  *(v31 - 144) = &a22;
  *(v31 - 136) = a15;
  *(v31 - 128) = v30 - 1082434553 * ((v31 - 144) ^ 0x9B47F68A) - 562360332;
  (*(v28 + 8 * (v30 ^ 0xD5C)))(v31 - 144);
  *(v31 - 136) = &a22;
  *(v31 - 128) = &a27;
  *(v31 - 144) = v30 + 1564307779 * ((((v31 - 144) | 0x89CDA27D) + (~(v31 - 144) | 0x76325D82)) ^ 0x1EC06E6F) - 825;
  (*(v28 + 8 * (v30 ^ 0xD79)))(v31 - 144);
  *(v31 - 128) = v30 + 1082434553 * (((v31 - 144) & 0x9063366C | ~((v31 - 144) | 0x9063366C)) ^ 0xF4DB3F19) - 250;
  *(v31 - 144) = &a27;
  *(v31 - 136) = &a22;
  v33 = (*(v28 + 8 * (v30 ^ 0xD86)))(v31 - 144);
  return (*(v28 + 8 * (((((a19 == 0) ^ (v30 - 15)) & 1) * (((v30 - 952) | 0x1E9) ^ 0x3EC)) ^ (v30 + 348))))(v33);
}

uint64_t sub_10001205C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = v6 < v4;
  if (v8 == ((a4 + 7) ^ 0x273uLL) + v5 > 0xFFFFFFFF604BE04DLL)
  {
    v8 = v4 + v5 + 1 < v6;
  }

  return (*(v7 + 8 * ((234 * v8) ^ a4)))();
}

uint64_t sub_1000120C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 120) = a12;
  *(v17 - 104) = &a13;
  *(v17 - 128) = v16 - ((((v17 - 128) | 0x73A9444D) + (~(v17 - 128) | 0x8C56BBB2)) ^ 0xE8EEB2C6) * v14 + 913;
  v18 = (*(v13 + 8 * (v16 ^ 0xBF7)))(v17 - 128);
  return (*(v13 + 8 * ((1587 * (*(v17 - 112) > ((16 * v16) ^ 0x3E20 ^ (v15 + 372)))) ^ v16)))(v18);
}

uint64_t sub_100012160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = LOBYTE(STACK[0x2C4]);
  if (v7 == 2)
  {
    return (*(v6 + 8 * (((LODWORD(STACK[0x2C0]) != 0) * ((10 * (a6 ^ 0x63)) ^ 0x4EE)) | (a6 + 1087))))();
  }

  if (v7 != 1)
  {
    JUMPOUT(0x100012234);
  }

  return (*(v6 + 8 * ((1936 * (LODWORD(STACK[0x2C0]) == (a6 ^ 0xD))) ^ (a6 + 975))))();
}

uint64_t sub_1000122F0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v3 + 226147362 < v5 + 1148286349;
  if (v5 > (a3 ^ 0x3B8E89F6) != v3 + 226147362 < -999197299)
  {
    v6 = v5 > (a3 ^ 0x3B8E89F6);
  }

  return (*(v4 + 8 * ((v6 * (12 * (a3 ^ 0x3CF) - 298)) | a3 ^ 0x7A5)))();
}

uint64_t sub_10001249C()
{
  v3 = *(v0 + 16) - 158579282;
  v4 = *(v0 + 12) + 375777528;
  v5 = (v3 < 0x223599D1) ^ (v4 < 0x223599D1);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x223599D1;
  }

  return (*(v2 + 8 * ((1365 * v6) ^ v1)))();
}

uint64_t sub_100012504@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((3529 * (v5 == (v3 ^ 0x576))) ^ (v3 + 36))))();
}

uint64_t sub_100012544@<X0>(int a1@<W4>, unint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = (v14[1] ^ (v10 + ((2 * (a3 - 10)) ^ 0xA2E) - 1276)) + ((v13 + 1703) ^ HIDWORD(a2)) + v17 * (*(*(a10 + 8) + 4) ^ v10);
  *v14 = (v18 + v12 - (v11 & (2 * v18))) ^ v16;
  return (*(v15 + 8 * (((a4 != 2) * a1) ^ (a3 - 10))))();
}

uint64_t sub_1000125C4@<X0>(int a1@<W8>)
{
  v5 = 1785193651 * ((((v3 - 200) | 0xE32DDE78) - (v3 - 200) + ((v3 - 200) & 0x1CD22180)) ^ 0xCF9A8590);
  *(v3 - 192) = v1;
  *(v3 - 200) = v2 - v5 - 1208;
  *(v3 - 184) = ((a1 ^ 0x69FFEBFF) - 684302342 + ((2 * a1) & 0xD3FFD7FE)) ^ v5;
  v6 = (*(v4 + 8 * (v2 ^ 0xFB6)))(v3 - 200);
  return (STACK[0x2C8])(v6);
}

uint64_t sub_100012674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x448];
  v74 = 1082434553 * ((v71 - 200) ^ 0x9B47F68A);
  *(v71 - 184) = &STACK[0x3CC];
  *(v71 - 176) = v74 + v70 + 841;
  *(v71 - 200) = &a69;
  *(v71 - 160) = &a67;
  *(v71 - 152) = v73;
  *(v71 - 168) = &STACK[0x3B8];
  *(v71 - 188) = v69 + v74 + ((v70 + 1393) ^ 0xB4E6C35C);
  v75 = (*(v72 + 8 * (v70 + 1505)))(v71 - 200);
  return (*(a65 + 8 * (((*(v71 - 192) == 1982089928) * ((v70 ^ 0x759) - 1163)) ^ v70)))(v75, 48, 0);
}

void sub_100012918(_DWORD *a1)
{
  v2 = *(*a1 + 4) - 922138987;
  if (v2 < 0)
  {
    v2 = 922138987 - *(*a1 + 4);
  }

  v1 = a1[8] ^ (1564307779 * ((2 * (a1 & 0x780DCAC5) - a1 + 133313850) ^ 0x90FFF929));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100012A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = (a3 - 1251) | 0x500;
  v15 = (((a12 + 1040502855) & 0xA9B94E05) << (a3 + 121)) & ((a12 + 1040502855) ^ 0x8D314A25 ^ *(v12 - 124)) ^ (a12 + 1040502855) & 0xA9B94E05;
  v16 = ((2 * ((a12 + 1040502855) ^ 0xDD41C445)) ^ 0xE9F11480) & ((a12 + 1040502855) ^ 0xDD41C445) ^ (2 * ((a12 + 1040502855) ^ 0xDD41C445)) & 0x74F88A40;
  v17 = v16 ^ 0x14088A40;
  v18 = (v16 ^ 0x70E08240) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xD3E22900) & v17 ^ (4 * v17) & 0x74F88A40;
  v20 = v18 ^ 0x74F88A40 ^ (v19 ^ 0x50E00800) & (16 * v18);
  v21 = (16 * (v19 ^ 0x24188240)) & 0x74F88A40 ^ 0x30700A40 ^ ((16 * (v19 ^ 0x24188240)) ^ 0x4F88A400) & (v19 ^ 0x24188240);
  v22 = (v20 << 8) & 0x74F88A00 ^ v20 ^ ((v20 << 8) ^ 0xF88A4000) & v21;
  v23 = (a12 + 1040502855) ^ (2 * ((v22 << 16) & 0x74F80000 ^ v22 ^ ((v22 << 16) ^ 0xA400000) & ((v21 << 8) & 0x74F80000 ^ 0x4700000 ^ ((v21 << 8) ^ 0xF88A0000) & v21)));
  v24 = 3 * (v14 ^ 0x585);
  v26 = (v23 & 0xF) != 5 || v23 == ((v14 - 921) | 0x51) - 1579657688;
  v27 = *(v13 + 8 * ((v26 * (v24 ^ 0x66F)) ^ v14));
  *(v12 - 128) = -42899;
  *(v12 - 124) = v24;
  return v27();
}

uint64_t sub_100012BF8@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[4]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((a2 - 1265) ^ 0x4F7) - 2005)) ^ (a2 - 333))))();
}

uint64_t sub_100012CA0@<X0>(int8x16_t *a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v8.i64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v8.i64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v9.i64[0] = 0xC8C8C8C8C8C8C8C8;
  v9.i64[1] = 0xC8C8C8C8C8C8C8C8;
  v10 = vaddq_s8(vaddq_s8(a1[1], v9), vmvnq_s8(vandq_s8(vaddq_s8(a1[1], a1[1]), v8)));
  v11 = (v6 - 220 + a3);
  *v11 = vaddq_s8(vaddq_s8(*a1, v9), vmvnq_s8(vandq_s8(vaddq_s8(*a1, *a1), v8)));
  v11[1] = v10;
  return (*(v5 + 8 * ((533 * ((a2 & 0x60) - (v4 - 580) == -325)) ^ (v7 + v3 - 234))))();
}

uint64_t sub_100012DC8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF924 ^ (v3 - 222)) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((4010 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_100012F54()
{
  *(v4 - 160) = 0x9908B0DF00000000;
  v5 = **(v1 + 8 * (v0 - 1682));
  v6 = 1388665877 * ((~((v4 - 152) | v3) + ((v4 - 152) & v3)) ^ 0x6AEFDFF8D6D6B15ELL);
  *(v4 - 120) = v0 - 312698516 + v6;
  *(v4 - 116) = v6;
  *(v4 - 152) = v6;
  *(v4 - 128) = v5 ^ v6;
  *(v4 - 144) = ((v0 - 312698516) ^ 0x4C) + v6;
  *(v4 - 140) = ((v0 - 312698516) ^ 0x28) - v6;
  *(v4 - 136) = v0 - v6 - 2030746369;
  v7 = (*(v2 + 8 * (v0 ^ 0xE3F)))(v4 - 152);
  return (*(v2 + 8 * *(v4 - 132)))(v7);
}

uint64_t sub_10001311C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, char a3@<W8>)
{
  v8 = v3 - 1;
  STACK[0x440] = v8;
  *(a1 + v8) = (a3 + 1 + v6) * ((a3 + 1) ^ v5);
  return (*(a2 + 8 * (((v8 == 0) * v7) ^ v4)))();
}

uint64_t sub_100013338@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v6 = v3 - 1388665877 * ((((2 * &v6) | 0x5912FDF6) - &v6 + 1400275205) ^ 0x21241C17) + 423;
  result = (*(v2 + 8 * (v3 + 1680)))(&v6);
  *(v1 + 36) = v4;
  return result;
}

uint64_t sub_100013394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, __int16 a17, char a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a23 = v23 + 455 + 210068311 * (&a20 ^ 0xF28BAFE8);
  a20 = a15;
  a21 = &a18;
  (*(v25 + 8 * (v23 + 1861)))(&a20);
  a20 = a15;
  a21 = &a16;
  a23 = v23 + 455 + 210068311 * ((&a20 - 2059203077 - 2 * (&a20 & 0x85430DFB)) ^ 0x77C8A213);
  (*(v25 + 8 * (v23 ^ 0x947)))(&a20);
  a23 = v23 + 455 + 210068311 * (((&a20 | 0xFB2CE6C7) - (&a20 & 0xFB2CE6C7)) ^ 0x9A7492F);
  a20 = a15;
  a21 = &a11;
  (*(v25 + 8 * (v23 ^ 0x947)))(&a20);
  a23 = v23 + 455 + 210068311 * ((2 * ((&a20 ^ 0xEF30D2DA) & 0x2D0A64C0) - (&a20 ^ 0xEF30D2DA) - 755655877) ^ 0xCF4EE609);
  a20 = a15;
  a21 = &a14;
  (*(v25 + 8 * (v23 + 1861)))(&a20);
  a20 = a15;
  HIDWORD(a21) = v23 + 1037613739 * ((-2109869873 - (&a20 | 0x823DF0CF) + (&a20 | 0x7DC20F30)) ^ 0xACC0224F) + 585;
  v26 = (*(v25 + 8 * (v23 + 1892)))(&a20);
  return (*(v25 + 8 * (((a21 == v24) * ((v23 - 765719042) ^ 0xD25C0AF3)) ^ v23)))(v26);
}

uint64_t sub_100013594()
{
  v5 = (v2 + v4 - 220 + 8);
  *(v5 - 1) = 0xC7C7C7C7C7C7C7C7;
  *v5 = 0xC7C7C7C7C7C7C7C7;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (v1 ^ 0x845)) ^ v1)))();
}

uint64_t sub_1000135E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v19 = (v13 - a2 - 1960250085) & 0x7F683B7F;
  v15 = 1785193651 * ((~((v14 - 128) | 0xD544C807) + ((v14 - 128) & 0xD544C807)) ^ 0x60C6C10);
  *(v14 - 128) = v13 - v15 + 732;
  *(v14 - 120) = v14 - 228;
  *(v14 - 112) = (a12 + 1036874287) ^ v15;
  v16 = (*(v12 + 8 * (v13 ^ 0x82A)))(v14 - 128);
  v17 = *(v14 - 160) & (v19 ^ 0x305);
  *(v14 - 228 + v17) = 71;
  return (*(v12 + 8 * ((609 * (v17 > 0x37)) ^ v13)))(v16, 177286567);
}

uint64_t sub_10001373C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = v5 + v6 + 1009349699;
  if (v5 > 0x61FC9FBF != v7 < 0x9E036040)
  {
    v8 = v5 > 0x61FC9FBF;
  }

  else
  {
    v8 = ((((a4 - 214) | 0x4B2) - 1227) ^ 0x9E0360A7) + v5 > v7;
  }

  return (*(v4 + 8 * (((2 * !v8) | (32 * !v8)) ^ a4)))();
}

uint64_t sub_1000137C0(uint64_t a1, uint64_t a2)
{
  v5 = v3[1];
  v6 = v3[398] ^ ((v3[2] & 0x7FFFFFFE | v5 & 0x80000000) >> 1) ^ *(v2 + 4 * (v3[2] & 1));
  *v3 = v3[(v4 ^ 0x347) - 784] ^ ((v5 & 0x7FFFFFFE | *v3 & 0x80000000) >> 1) ^ *(v2 + 4 * (v5 & 1));
  v3[1] = v6;
  return (*(a2 + 8 * (v4 ^ 0x5AB)))();
}

void sub_1000137C8()
{
  v0 = *(&off_1000610D0 + ((107 * (dword_100064300 ^ 0xF9 ^ qword_100064130)) ^ byte_1000576F0[byte_100052A80[(107 * (dword_100064300 ^ 0xF9 ^ qword_100064130))] ^ 0x41]) - 124);
  v1 = *(v0 - 4);
  v2 = *(&off_1000610D0 + (byte_1000577F0[byte_100052B88[(107 * ((qword_100064130 - v1) ^ 0xF9)) - 8] ^ 0xEF] ^ (107 * ((qword_100064130 - v1) ^ 0xF9))) - 52);
  v3 = 1010482283 * ((*(v2 - 4) - v1 - &v5) ^ 0xABAF40B6402B16F9);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v6[1] = 1785193651 * ((1844521804 - (v6 ^ 0xD23C3D75 | 0x6DF12B4C) + (v6 ^ 0xD23C3D75 | 0x920ED4B3)) ^ 0x6C85B22E) - 1776823281;
  LOBYTE(v2) = 107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9);
  v4 = *(&off_1000610D0 + ((107 * ((qword_100064130 + dword_100064300) ^ 0xF9)) ^ byte_1000576F0[byte_100052A80[(107 * ((qword_100064130 + dword_100064300) ^ 0xF9))] ^ 0xE8]) - 58);
  (*(v4 + 8 * ((byte_100052980[byte_10004D2E8[v2 - 8] ^ 0xF6] ^ v2) + 2127)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100013A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  STACK[0x358] = v46 - 1824;
  LODWORD(STACK[0x3AC]) = 1982089928;
  return (*(v47 + 8 * (((*(a45 + 360) > 1u) * (((v45 + 501) | 0x582) - 107)) ^ v45)))();
}

uint64_t sub_100013A68(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8) ^ *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v1 + 2) ^ (125 * (v8 & 0xF)) ^ *(v2 + (v8 & 0xF)) ^ 0xC7;
  return (*(v7 + 8 * ((225 * (v8 == ((2 * v5) ^ 0xE30))) | v5)))();
}

uint64_t sub_100013B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v66 + 8 * (v65 - 396));
  STACK[0x1788] = 0x9908B0DF00000000;
  LODWORD(STACK[0x264]) = *v69;
  *(v67 - 200) = **(v66 + 8 * ((v65 + 1460) ^ 0x7D5)) + a53;
  *(v67 - 184) = -2030746682 - a53 + v65 + 1460;
  *(v67 - 176) = a53;
  v70 = v65 - 1666047255 + a53;
  *(v67 - 168) = v70;
  *(v67 - 164) = a53;
  *(v67 - 192) = v70 + 109;
  *(v67 - 188) = v65 - 1666047255 - a53 + 49;
  v71 = (*(v68 + 8 * ((v65 + 1460) ^ 0xF44)))(v67 - 200);
  return (*(a65 + 8 * *(v67 - 180)))(v71);
}

void sub_100013C74(_DWORD *a1)
{
  v1 = *a1 - 742307843 * ((2 * (a1 & 0xBB72D496) - a1 + 1150102377) ^ 0x19F15413);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100013DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *(v10 + 8);
  v13 = ((2 * (*(v12 + ((a2 + ((a1 + a4) << 32)) >> 30)) ^ v4)) << ~v8) | ((*(v12 + 4 * (a1 + a4)) ^ v4) >> v8);
  *(v12 + 4 * a1) = v13 + v4 - ((v9 ^ (v5 + 1205)) & (2 * v13));
  return (*(v11 + 8 * (((a1 + 1 == v6) * a3) ^ v7)))();
}

uint64_t sub_100013EEC@<X0>(int a1@<W5>, uint64_t a2@<X7>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q2>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v63 = v57 + v58;
  *a6.i8 = veor_s8(*(a55 + v63), *(a2 + (a3 + v59)));
  return (*(v60 + 8 * (((v55 == v63) * a1) ^ v56)))(vorrq_s8(vqtbl1q_s8(a6, v62), a4), vorrq_s8(vqtbl1q_s8(a6, v61), a5));
}

uint64_t sub_100013EF8()
{
  v8 = v5 - 27;
  v9 = (v5 - 276279323) & 0x1077AFFF;
  v10 = (v3 + v7 - 16);
  v16.val[1].i64[0] = ((v8 ^ 0xFB) + v3) & 0xF;
  v16.val[1].i64[1] = (v3 + 12) & 0xF;
  v16.val[2].i64[0] = (v3 + 11) & 0xF;
  v11 = *(v6 - 192);
  v16.val[2].i64[1] = (v3 + 10) & 0xF;
  v16.val[3].i64[0] = (v3 + 9) & 0xF;
  v16.val[3].i64[1] = v3 & 0xF ^ 8;
  v17.val[0].i64[0] = (v3 + 7) & 0xF;
  v17.val[0].i64[1] = (v3 + 6) & 0xF;
  v17.val[1].i64[0] = (v3 + 5) & 0xF;
  v17.val[1].i64[1] = (v3 + 4) & 0xF;
  v17.val[2].i64[0] = (v3 + 3) & 0xF;
  v17.val[2].i64[1] = (v3 + 2) & 0xF;
  v17.val[3].i64[0] = (v3 + 1) & 0xF;
  v17.val[3].i64[1] = v3 & 0xF;
  v12.i64[0] = 0x6161616161616161;
  v12.i64[1] = 0x6161616161616161;
  v13.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v13.i64[1] = 0xC7C7C7C7C7C7C7C7;
  v16.val[0].i64[0] = v4 & 0xF;
  v16.val[0].i64[1] = (v3 + 14) & 0xF;
  v14.i64[0] = vqtbl4q_s8(v16, xmmword_10005A920).u64[0];
  v14.i64[1] = vqtbl4q_s8(v17, xmmword_10005A920).u64[0];
  v17.val[0] = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*v10, *(v0 + v16.val[0].i64[0] - 15)), *(v16.val[0].i64[0] + v2 - 10)), *(v1 + v16.val[0].i64[0] + (v9 ^ 0x1B5) - 15)));
  v17.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v17.val[0], v17.val[0], 8uLL), v13), vmulq_s8(v14, v12)));
  *v10 = vextq_s8(v17.val[0], v17.val[0], 8uLL);
  return (*(v11 + 8 * ((103 * ((v3 & 0x10) != 16)) ^ v9)))();
}

uint64_t sub_100014074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v66 = 0x3838383838383838;
  v66[1] = 0xC7C7C7C7C1C7C7D5;
  v70 = 1563904627 * ((((v68 - 200) | 0x8A0002D6) - ((v68 - 200) & 0x8A0002D6)) ^ 0xA3CFB5EA);
  *(v68 - 200) = 1256471420 - v70;
  *(v68 - 196) = v65 - v70 + 68670257;
  STACK[0x258] = v67;
  (*(v69 + 8 * (v65 ^ 0xEE7)))(v68 - 200);
  LODWORD(STACK[0x3C0]) = 1641672013;
  v71 = (*(a65 + 8 * (v65 ^ 0xED5)))(336, 0x100004077774924);
  STACK[0x2E0] = v71;
  return (*(a65 + 8 * ((v71 == 0) | v65)))(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_100014208@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v65 = ((~(v59 | 0xC2163B1) + (v59 & 0xC2163B1)) ^ 0x20FC6CC2) * v58;
  *(v63 - 168) = 0;
  *(v63 - 176) = a1 ^ v65;
  *(v63 - 184) = &STACK[0x224];
  *(v63 - 192) = &STACK[0x468];
  *(v63 - 200) = v61 - v65 + 121;
  (*(v64 + 8 * (v61 + 1664)))(v63 - 200);
  v66 = *(v63 - 172);
  STACK[0x430] = v60;
  return (*(a58 + 8 * ((2022 * (v66 == (((v61 ^ 0x562) + 310) ^ (v62 + 529)))) ^ v61)))(2188772612, 48, 2106195795, 3572687419, 1840732354, 722279876, 2312835345, 0);
}

uint64_t sub_10001430C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 198160602;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 199)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 71)
  {
    v12 = 1982089928;
    v13 = *(v3 + 16);
    v14 = *(v3 + 24) ^ v4;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 85)
    {
      v15 = 707477071;
    }

    else
    {
      v15 = 707477070;
    }

    *(result + 16) = 732517411;
    *(result + 20) = v15;
    *(result + 24) = 1982089928;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0xC40)))();
    v12 = -1982131951;
  }

  *(v3 + 8) = v12;
  return result;
}

uint64_t sub_10001470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 + 1831707807 < a12 + 1774504661;
  if ((a12 + 1774504661) < 0x6D2DA49F != v12 > ((v13 - 44) ^ 0x92D25B26))
  {
    v15 = (a12 + 1774504661) < 0x6D2DA49F;
  }

  return (*(v14 + 8 * ((232 * !v15) ^ v13)))();
}

uint64_t sub_100014800@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v8 = a1 + ((2 * v4) ^ 0x900) - 1493;
  *(*(a2 + 8) + 4 * (a1 + v3)) = (v7 + v5) ^ v6;
  v9 = 7 * ((2 * v4) ^ 0xC1A);
  *(a2 + 4) = v8;
  v10 = v8 + v3;
  if (v8 + v3 < 0)
  {
    v10 = -v10;
  }

  return (*(v2 + 8 * ((13 * (((v10 ^ 0xB6F7FBEF) + ((v9 ^ 0x6DEFF24A) & (2 * v10)) + 1225260360 + ((v9 - 716) | 0x400)) >= 0)) ^ v9)))();
}

uint64_t sub_100014C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = 50899313 * ((~((v68 - 200) | 0x424D88C133E71A54) + ((v68 - 200) & 0x424D88C133E71A54)) ^ 0x7ED71A9E047921FDLL);
  *(v68 - 184) = 3 - v69;
  *(v68 - 160) = (v66 + 1) - v69;
  *(v68 - 176) = v69 + v67 + 1212453558;
  *(v68 - 172) = 1 - v69;
  *(v68 - 168) = v69 ^ (v67 - 2009) ^ 0xE64B4EE8;
  *(v68 - 196) = ((v67 - 2009) ^ 0xE64B4EDD) + v69;
  *(v68 - 192) = v69 ^ (v67 - 2009) ^ 0xE64B4EBD;
  v70 = (*(v65 + 8 * (v67 + 120)))(v68 - 200);
  return (*(a65 + 8 * *(v68 - 200)))(v70);
}

uint64_t sub_100014E8C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x398];
  STACK[0x428] = STACK[0x398];
  STACK[0x410] = 0;
  LODWORD(STACK[0x2B4]) = 1641671677;
  STACK[0x468] = 0;
  LODWORD(STACK[0x224]) = 1641671677;
  STACK[0x278] = 0;
  return (*(v1 + 8 * ((((((a1 + 338) ^ (v2 == 0)) & 1) == 0) * (a1 ^ 0x6AB)) | a1)))();
}

uint64_t sub_100014F24(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = (a16 & 0x6A53276 ^ (a2 + v19 + 1009644050)) + v18;
  v21 = v20 < 0x3C2DF1EA;
  v22 = v20 > a17;
  if (a17 < 0x3C2DF1EA != v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  return (*(v17 + 8 * (((8 * v23) | (32 * v23)) ^ (a2 + v19 + 1347))))();
}

uint64_t sub_10001539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v15 + 210068311 * ((v19 + 187352743 - 2 * ((v19 - 136) & 0xB2AC72F)) ^ 0xF9A168C7) + 501;
  *(v19 - 136) = v18;
  *(v19 - 128) = &a15;
  v20 = (*(v17 + 8 * (v15 + 1820)))(v19 - 136);
  return (*(v17 + 8 * ((49 * ((((v15 + 881) ^ (v16 == v15 - 406)) & 1) == 0)) ^ v15)))(v20);
}

uint64_t sub_100015690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v14 - 144) = v15;
  v16 = v12 ^ 0xA2;
  v17 = v13;
  v18 = *(&off_1000610D0 + v12 - 1107) - 8;
  v19 = *(&off_1000610D0 + (v12 ^ 0x4C8)) - 4;
  v20 = (v19[v11[4] ^ 0xF7] << 24) + 301989888;
  v21 = *(&off_1000610D0 + v12 - 1059) - 4;
  v22 = v21[v11[14] ^ 0x82];
  v23 = *(&off_1000610D0 + v12 - 1114);
  v24 = *(v23 + (v11[5] ^ 0x6DLL)) << 16;
  v25 = ((v21[v11[6]] << 8) ^ 0x4ACCA440) & (v20 ^ 0x6CEEFFE0) | v20 & 0xB5000000;
  v26 = (v11[15] - ((2 * v11[15]) & 0x20) + 16) ^ v18[v11[15] ^ 0xFDLL];
  v27 = (v19[v11[8] ^ 0x70] << 24) + 301989888;
  v28 = *(v23 + (v11[13] ^ 0xC7));
  v29 = v18[v11[11] ^ 0xD3] ^ v11[11];
  v30 = (((v27 ^ 0x84C0FF74) & ((v21[v11[10] ^ 0x48] << 8) ^ 0x8DC06F74) | v27 & 0x72000000) ^ 0xDA078DD) & (v29 ^ 0xFFF4FFB5);
  v31 = ((*(v23 + (v11[1] ^ 0x40)) << 16) ^ 0x345853F7) & ((v18[v11[3] ^ v12 ^ 0x83] ^ v11[3]) ^ 0x3CFF5340) ^ ((v18[v11[3] ^ v12 ^ 0x83] ^ v11[3]) & 8 | 0x8620000);
  v32 = (v19[v11[12] ^ 0xBDLL] + 18) ^ 0x1B;
  v33 = ((v19[v11[12] ^ 0xBDLL] + 18) ^ 0x1B) << 24;
  LODWORD(v23) = (*(v23 + (v11[9] ^ 0x7CLL)) ^ 0x11) << 16;
  v34 = (v23 | 0x5EC6D0D3) ^ ((v29 & 0x56 | v30) ^ 0xCEA6443A) & ~v23;
  v35 = ((((v21[v11[2] ^ 0x87] << 8) ^ 0xF1DA98F8) & (v31 ^ 0xCD99AC0A) | v31 & 0xC250007) ^ 0xFDFF91FF) + (((v19[*v11 ^ 9] + 18) ^ 0x85) << 24);
  v36 = (v11[7] - ((2 * v11[7]) & 0x20) + 16) ^ v18[v11[7] ^ 0x2FLL];
  v37 = ((((v28 << 16) ^ 0x6B02E21F) & ~v33 | v33 & 0x94000000) ^ 0x14081DE0) & (((*&v26 | 0xFFFFFF01) & ((v22 << 8) ^ 0x25094CA) | v26 & 0x35) ^ 0x753CBE95) ^ (((v28 << 16) ^ 0x6B02E21F) & ~v33 & 0x88938001 | v33 & 0x80000000);
  v38 = (v36 & 0xD | 0xE6581A0) ^ (v24 & 0x55555555 ^ 0x3B9F036A ^ (v25 ^ 0x5B6613D8) & (v24 ^ 0xFF2FFFF9)) & ~v36;
  v39 = *(&off_1000610D0 + v12 - 1057) - 4;
  v40 = *&v39[4 * (v28 ^ 0x7F)];
  HIDWORD(v41) = v40 ^ 0x4A620D5;
  LODWORD(v41) = v40 ^ 0x68000000;
  v42 = *(&off_1000610D0 + (v12 ^ 0x437)) - 8;
  v43 = *&v42[4 * (v32 ^ 0xB4)];
  v44 = v26 ^ 0x78u;
  v45 = *(&off_1000610D0 + (v12 ^ 0x4CA)) - 4;
  LODWORD(v28) = *&v45[4 * v44];
  *(v14 - 152) = v35;
  v46 = v35 ^ (v41 >> 27) ^ (690312999 * v28 - 782012662);
  v47 = *(&off_1000610D0 + v12 - 994) - 8;
  v48 = v46 ^ (-219980569 * v43 + 426926507) ^ (-36060539 * *&v47[4 * (v22 ^ 0xBC)] + 589495444) ^ 0x1A;
  *(v14 - 148) = v34;
  *(v14 - 168) = v48 ^ v38;
  v49 = v48 ^ v38 ^ v34;
  *(v14 - 156) = v37;
  v50 = *&v39[4 * (((v49 ^ v37 ^ 0x1EAC5F26) >> 16) ^ 0x6B)];
  HIDWORD(v41) = v50 ^ 0x4A620D5;
  LODWORD(v41) = v50 ^ 0x68000000;
  v51 = (690312999 * *&v45[4 * ((v49 ^ v37) ^ 0x67)] - 782012662) ^ (v41 >> 27) ^ (-36060539 * *&v47[4 * (((v49 ^ v37 ^ 0x5F26) >> 8) ^ 0xAF)] + 589495444) ^ (-219980569 * *&v42[4 * (((v49 ^ v37) >> 24) ^ 0x3F)] + 426926507);
  *(v14 - 176) = v49 ^ v37;
  *(v14 - 172) = v49;
  LODWORD(v22) = v49 ^ v37 ^ 0xEA1EB9AD;
  *(v14 - 160) = v38;
  v218 = v51 ^ v38 ^ v49;
  v52 = (690312999 * *&v45[4 * (v218 ^ 0x1F ^ v22 ^ 0xAB)] - 782012662) ^ (-219980569 * *&v42[4 * (((v218 ^ 0xC1D6411F ^ v22) >> 24) ^ 0x20)] + 426926507);
  v217 = v218 ^ 0xC1D6411F ^ v22;
  v53 = *&v39[4 * (BYTE2(v217) ^ 0xBF)];
  HIDWORD(v41) = v53 ^ 0x4A620D5;
  LODWORD(v41) = v53 ^ 0x68000000;
  *(v14 - 164) = v48;
  v216 = v51 ^ v48;
  v54 = v52 ^ v51 ^ v48 ^ (-36060539 * *&v47[4 * (BYTE1(v217) ^ 0xE9)] + 589495444) ^ (v41 >> 27);
  *(v14 - 180) = v51 ^ v38;
  v214 = v54 ^ v51 ^ v38;
  v55 = v214 ^ 0xF78131F4 ^ v22 ^ 0x68E79195;
  v56 = *&v39[4 * (BYTE2(v55) ^ 0xD9)];
  HIDWORD(v41) = v56 ^ 0x4A620D5;
  LODWORD(v41) = v56 ^ 0x68000000;
  v213 = v214 ^ 0xF78131F4 ^ v22;
  v215 = v54;
  v57 = (-36060539 * *&v47[4 * (BYTE1(v55) ^ 0x49)] + 589495444) ^ (690312999 * *&v45[4 * (v214 ^ 0xF4 ^ v22 ^ 0x5F)] - 782012662) ^ v54 ^ (v41 >> 27) ^ (-219980569 * *&v42[4 * (HIBYTE(v213) ^ 0xBD)] + 426926507);
  v210 = v57 ^ v214 ^ 0xF78131F4;
  v211 = v214 ^ 0xF78131F4 ^ v218 ^ 0xC1D6411F;
  v58 = v210 ^ 0x5F64A794 ^ v211 ^ 0xC733F746;
  v59 = v58 ^ v55;
  v60 = v58 ^ v55 ^ 0x81B0C147;
  v61 = *&v39[4 * (BYTE2(v60) ^ 0xD9)];
  HIDWORD(v41) = v61 ^ 0x4A620D5;
  LODWORD(v41) = v61 ^ 0x68000000;
  v212 = v57;
  v62 = (-36060539 * *&v47[4 * (BYTE1(v59) ^ 0x88)] + 589495444) ^ (v41 >> 27) ^ v57 ^ (690312999 * *&v45[4 * (v59 ^ 0x8D)] - 782012662) ^ (-219980569 * *&v42[4 * (HIBYTE(v59) ^ 0x54)] + 426926507);
  v209 = v62 ^ v210 ^ 0x5F64A794;
  v63 = v209 ^ 0xD5833601 ^ v58 ^ v60;
  v64 = *&v39[4 * (BYTE2(v63) ^ 0x8C)];
  HIDWORD(v41) = v64 ^ 0x4A620D5;
  LODWORD(v41) = v64 ^ 0x68000000;
  v65 = __PAIR64__(v59, v62);
  v66 = (-36060539 * *&v47[4 * (BYTE1(v63) ^ 0x1E)] + 589495444) ^ (-219980569 * *&v42[4 * (HIBYTE(v63) ^ 0xE7)] + 426926507) ^ v62 ^ (v41 >> 27) ^ (690312999 * *&v45[4 * (v63 ^ 0xED)] - 782012662);
  v205 = v66 ^ v209 ^ 0xD5833601;
  v207 = v63;
  v208 = v209 ^ 0xD5833601 ^ v58;
  HIDWORD(v204) = v205 ^ 0xE8131F4 ^ v208;
  v67 = HIDWORD(v204) ^ 0xC00207F5 ^ v63 ^ 0x32555727;
  v68 = *&v39[4 * (BYTE2(v67) ^ 0x6B)];
  HIDWORD(v41) = v68 ^ 0x4A620D5;
  LODWORD(v41) = v68 ^ 0x68000000;
  v206 = v66;
  HIDWORD(v203) = (-36060539 * *&v47[4 * (BYTE1(v67) ^ 0x8F)] + 589495444) ^ (690312999 * *&v45[4 * (BYTE4(v204) ^ 0xF5 ^ v63 ^ 0x5F)] - 782012662) ^ v66 ^ (v41 >> 27) ^ (-219980569 * *&v42[4 * (((HIDWORD(v204) ^ 0xC00207F5 ^ v63) >> 24) ^ 0x63)] + 426926507);
  LODWORD(v204) = HIDWORD(v204) ^ 0xC00207F5 ^ v63;
  LODWORD(v203) = HIDWORD(v203) ^ 0x5F64A794 ^ v205 ^ 0xE8131F4;
  v69 = *&v39[4 * (((v203 ^ HIDWORD(v204) ^ 0xC00207F5 ^ v204 ^ 0xB6E79195) >> 16) ^ 0x8E)];
  HIDWORD(v41) = v69 ^ 0x4A620D5;
  LODWORD(v41) = v69 ^ 0x68000000;
  LODWORD(v202) = v203 ^ HIDWORD(v204) ^ 0xC00207F5 ^ v204 ^ 0xB6E79195;
  v70 = (690312999 * *&v45[4 * ((v203 ^ BYTE4(v204) ^ 0xF5 ^ v204 ^ 0x95) ^ 0x18)] - 782012662) ^ (-36060539 * *&v47[4 * (((v203 ^ WORD2(v204) ^ 0x7F5 ^ v204 ^ 0x9195) >> 8) ^ 0x19)] + 589495444) ^ (v41 >> 27) ^ (-219980569 * *&v42[4 * (BYTE3(v202) ^ 0x98)] + 426926507);
  v71 = v70 ^ v205 ^ 0xE8131F4;
  v72 = v71 ^ v204 ^ 0xB6E79195;
  LODWORD(v22) = *&v39[4 * (((v72 ^ 0x76E59660) >> 16) ^ 0x3C)];
  HIDWORD(v41) = v22 ^ 0x4A620D5;
  LODWORD(v41) = v22 ^ 0x68000000;
  HIDWORD(v201) = v70 ^ HIDWORD(v203) ^ 0x5F64A794;
  v73 = (-219980569 * *&v42[4 * (HIBYTE(v72) ^ 0xD8)] + 426926507) ^ HIDWORD(v201) ^ (690312999 * *&v45[4 * (v72 ^ 0xCA)] - 782012662) ^ (-36060539 * *&v47[4 * (((v72 ^ 0x9660) >> 8) ^ 0xDF)] + 589495444) ^ (v41 >> 27);
  HIDWORD(v202) = v203 ^ HIDWORD(v204) ^ 0xC00207F5;
  HIDWORD(v199) = v73 ^ HIDWORD(v202) ^ 0xBFE59660;
  LODWORD(v199) = HIDWORD(v199) ^ v72 ^ 0x52B2C6B2;
  LODWORD(v39) = *&v39[4 * (((HIDWORD(v199) ^ v72) >> 16) ^ 0x6B)];
  HIDWORD(v41) = v39 ^ 0x4A620D5;
  LODWORD(v41) = v39 ^ 0x68000000;
  LODWORD(v18) = (v41 >> 27) ^ (690312999 * *&v45[4 * ((BYTE4(v199) ^ v72) ^ 0x78)] - 782012662) ^ (-219980569 * *&v42[4 * (((HIDWORD(v199) ^ v72) >> 24) ^ 0x87)] + 426926507) ^ (-36060539 * *&v47[4 * (((WORD2(v199) ^ v72) >> 8) ^ 0x8F)] + 589495444);
  v74 = *(&off_1000610D0 + (v12 ^ 0x4EC)) - 12;
  v75 = v73 ^ HIDWORD(v202) ^ 0x64000000;
  v76 = *(&off_1000610D0 + (v12 & 0x45C94101)) - 4;
  v77 = v76[*(v14 - 97) ^ 0xC9] ^ 0x15 | ((v74[*(v14 - 99) ^ 0x76] ^ 0x35) << 16);
  v78 = *(&off_1000610D0 + v12 - 984) - 12;
  v79 = v76[*(v14 - 105) ^ 0xDLL] ^ 0xFF | ((v78[*(v14 - 106) ^ 0x17] ^ (*(v14 - 106) - ((2 * *(v14 - 106)) & 0x22) - 111) ^ 0xA0) << 8);
  LODWORD(v39) = v76[*(v14 - 101) ^ 0xCCLL] ^ 0x92 | ((v78[*(v14 - 102) ^ 0x4ELL] ^ (*(v14 - 102) - ((2 * *(v14 - 102)) & 0x22) - 111) ^ 0x16) << 8);
  v198 = v76;
  LODWORD(v42) = v76[*(v14 - 109) ^ 0x30] ^ 0x64;
  v80 = *(&off_1000610D0 + (v12 ^ 0x47B));
  v81 = v42 | ((94 - *(v80 + (*(v14 - 112) ^ 0xF4))) << 24) | ((v78[*(v14 - 110) ^ 0xDELL] ^ (*(v14 - 110) - ((2 * *(v14 - 110)) & 0x22) - 111) ^ 0x98) << 8) | ((v74[*(v14 - 111) ^ 0x39] ^ 0xDF) << 16);
  v196 = v80;
  v197 = v78;
  LODWORD(v78) = (v77 | (((*(v80 + (*(v14 - 100) ^ 0x17)) - 95) ^ 0x52) << 24) | ((v78[*(v14 - 98) ^ 0xECLL] ^ (*(v14 - 98) - ((2 * *(v14 - 98)) & 0x22) - 111) ^ 0xBC) << 8)) ^ 0xD2D2D211;
  v82 = (v79 | ((v74[*(v14 - 107) ^ 0xEFLL] ^ 0x85) << 16) | (((*(v80 + (*(v14 - 108) ^ 0x9CLL)) - 95) ^ 0x1C) << 24)) ^ 0xD2D2D2D2;
  LODWORD(v39) = (v39 | (((*(v80 + (*(v14 - 104) ^ 9)) - 95) ^ 0xDA) << 24) | ((v74[*(v14 - 103) ^ 0x1BLL] ^ 0x89) << 16)) ^ 0xD2D2D2D2;
  HIDWORD(v195) = (((v17 ^ 0x602ECE33) - 351844468) ^ ((v17 ^ 0x25357E36) - 1373833329) ^ ((v17 ^ 0xE4C3EA80) + 1877631801)) + 881950478;
  LODWORD(v201) = v71;
  LODWORD(v195) = v71 ^ 0xD000000 ^ v18;
  v200 = __PAIR64__(v72, v73);
  LODWORD(v194) = v18 ^ v73;
  *(v14 - 120) = v16;
  *(v14 - 116) = 0;
  *(v14 - 128) = 0;
  v83 = *(v14 - 136);
  v84 = v74[v83[13] ^ 0x90];
  LOBYTE(v77) = v83[9];
  *(v14 - 124) = (v16 - 223) | 0x240;
  v85 = v198[v83[11] ^ 9] ^ 0x12 | ((v74[(v77 ^ (((v16 + 33) | 0x40) + 114))] ^ 0x10) << 16) | ((v197[v83[10] ^ 0xA9] ^ (v83[10] - ((2 * v83[10]) & 0x22) - 111) ^ 0xC2) << 8) | (((*(v80 + (v83[8] ^ 2)) - 95) ^ 0xE2) << 24);
  v86 = *(v14 - 160) ^ v82 ^ 0xEC741AF2 ^ (((v197[v83[6] ^ 8] ^ (v83[6] - ((2 * v83[6]) & 0x22) - 111) ^ 0x19) << 8) | (((*(v80 + (v83[4] ^ 0xC5)) - 95) ^ 0xFFFFFFFB) << 24) | v198[v83[7] ^ 0xFDLL] ^ 0x15 | ((v74[v83[5] ^ 0xF5] ^ 0x32) << 16));
  v87 = *(v14 - 152) ^ v81 ^ 0xD2D2D2D2 ^ 0x4D036472 ^ (v198[v83[3] ^ 0x75] ^ 0xB8 | (((*(v80 + (*v83 ^ 0xB0)) - 95) ^ 0x16) << 24) | ((v74[v83[1] ^ 0x93] ^ 0xF8) << 16) | ((v197[v83[2] ^ 0x1CLL] ^ (v83[2] + (~(2 * v83[2]) | 0xDD) - 110) ^ 0x5D) << 8));
  v88 = *(v14 - 156) ^ v78 ^ 0x9A048B74 ^ (((v84 ^ 0x86) << 16) | (((*(v80 + (v83[12] ^ 0x80)) - 95) ^ 0x31) << 24) | ((v197[v83[14] ^ 5] ^ (v83[14] - ((2 * v83[14]) & 0x22) - 111) ^ 0x99) << 8) | v198[v83[15] ^ 8] ^ 0x15);
  v89 = *(v14 - 148) ^ v39 ^ 0x5C01E192 ^ v85;
  v90 = *(&off_1000610D0 + (v16 & 0xFC687232)) - 8;
  v91 = *&v90[4 * ((*(v14 - 160) ^ v82 ^ 0x1AF2 ^ (((v197[v83[6] ^ 8] ^ (v83[6] - ((2 * v83[6]) & 0x22) - 111) ^ 0x19) << 8) | v198[v83[7] ^ 0xFDLL] ^ 0x15)) >> 8)];
  v92 = *(&off_1000610D0 + (v16 & 0x921F88B5)) - 4;
  v93 = *(&off_1000610D0 + (v16 ^ 0x4DE)) - 12;
  LODWORD(v39) = v91 ^ 0x6FA0372F ^ *&v93[4 * HIBYTE(v88)];
  v94 = *&v92[4 * BYTE2(v87)];
  LODWORD(v22) = (2 * v39) & 0x9DDF9DFA;
  LODWORD(v47) = v39 + 1324338941;
  v95 = *(&off_1000610D0 + (v16 & 0x37C9B012)) - 4;
  LODWORD(v22) = v47 - v22;
  LODWORD(v80) = *&v93[4 * HIBYTE(v89)] ^ 0x6FA0372F ^ *&v90[4 * BYTE1(v87)];
  LODWORD(v47) = *&v95[4 * v89] - 190468687;
  v96 = (*&v95[4 * v88] + 1133870254 - ((2 * *&v95[4 * v88] - 380937374) & 0x9DDF9DFA)) ^ *&v92[4 * BYTE2(v86)];
  LODWORD(v45) = (v96 - 554847121 - ((2 * v96) & 0xBDDB68DE)) ^ *&v93[4 * HIBYTE(v87)];
  v97 = *&v93[4 * HIBYTE(v86)] ^ *&v92[4 * BYTE2(v89)] ^ (*&v95[4 * v87] - 190468687);
  v98 = (v97 ^ 0x90027A92) - 1320320192 - 2 * ((v97 ^ 0x90027A92) & 0x314D834D ^ v97 & 0xD);
  LODWORD(v45) = *&v90[4 * BYTE1(v89)] ^ *(v14 - 164) ^ (v45 - 1320320192 - ((2 * v45) & 0x629B0680));
  v99 = *&v92[4 * BYTE2(v88)] ^ *(v14 - 172) ^ (*&v95[4 * v86] - 190468687) ^ (v80 + 1324338941 - ((2 * v80) & 0x9DDF9DFA));
  LODWORD(v80) = *&v90[4 * BYTE1(v88)] ^ *(v14 - 168) ^ v98;
  v100 = v80 ^ 0xBF80DD5E;
  v101 = (v45 ^ 0xD7674CCB) >> 24;
  v102 = *(v14 - 176) ^ v94 ^ v47 ^ 0xE33F9EF5 ^ v22;
  LODWORD(v22) = *&v93[4 * HIBYTE(v102)] ^ 0x90027A92 ^ *&v92[4 * ((v45 ^ 0xD7674CCB) >> 16)];
  LODWORD(v47) = *&v90[4 * ((v99 ^ 0xDD4) >> 8)] ^ (*&v95[4 * v102] - 1510788879 - ((2 * *&v95[4 * v102] + 1766546274) & 0x629B0680));
  LODWORD(v80) = *&v95[4 * (v80 ^ 0x48)];
  LODWORD(v80) = (v80 - 745315808 - ((2 * v80 - 380937374) & 0xBDDB68DE)) ^ *&v93[4 * ((v99 ^ 0x16B10DD4u) >> 24)];
  LODWORD(v80) = (v80 - 1320320192 - ((2 * v80) & 0x629B0680)) ^ *&v90[4 * ((v45 ^ 0x4CCB) >> 8)];
  LODWORD(v45) = *&v95[4 * (v45 ^ 0xDD)];
  LODWORD(v45) = (v45 - 1510788879 - ((2 * v45 + 1766546274) & 0x629B0680)) ^ *&v90[4 * BYTE1(v102)];
  LODWORD(v47) = *&v93[4 * v101] ^ (v47 - 554847121 - ((2 * v47) & 0xBDDB68DE));
  v103 = *&v90[4 * BYTE1(v100)];
  LODWORD(v45) = (v45 - 554847121 - ((2 * v45) & 0xBDDB68DE)) ^ *&v93[4 * HIBYTE(v100)];
  LODWORD(v80) = *&v92[4 * BYTE2(v102)] ^ v218 ^ (v80 + 1324338941 - ((2 * v80) & 0x9DDF9DFA));
  LODWORD(v41) = __ROR4__(__ROR4__(*&v92[4 * BYTE2(v100)] ^ 0xB9AB301 ^ (v47 + 1324338941 - ((2 * v47) & 0x9DDF9DFA)), 5) ^ 0x50D2ECF9, 27);
  v104 = v216 ^ v41 ^ 0x6EDAF696;
  v105 = (v22 - 1320320192 - ((2 * v22) & 0x629B0680)) ^ v217 ^ v103 ^ (*&v95[4 * (v99 ^ 0xC2)] - 190468687);
  LODWORD(v22) = *(v14 - 180) ^ *&v92[4 * ((v99 ^ 0x16B10DD4u) >> 16)] ^ 0x2201ECBC ^ (v45 + 1324338941 - ((2 * v45) & 0x9DDF9DFA));
  v106 = *&v95[4 * (v80 ^ 0x37)];
  LODWORD(v47) = (v106 + 1133870254 - ((2 * v106 - 380937374) & 0x9DDF9DFA)) ^ *&v92[4 * (((v216 ^ v41) >> 16) ^ 0x45)];
  v107 = *&v90[4 * BYTE1(v104)] ^ 0x6FA0372F ^ *&v93[4 * ((v80 ^ 0xD62C0A37) >> 24)];
  LODWORD(v47) = (v47 - 1320320192 - ((2 * v47) & 0x629B0680)) ^ *&v90[4 * ((*(v14 - 180) ^ *&v92[4 * ((v99 ^ 0x16B10DD4u) >> 16)] ^ 0xECBC ^ (v45 - 12547 - ((2 * v45) & 0x9DFA))) >> 8)];
  LODWORD(v45) = *&v92[4 * BYTE2(v22)] ^ *&v90[4 * ((v80 ^ 0xA37) >> 8)] ^ 0xFFA24DBD;
  LODWORD(v80) = *&v93[4 * BYTE3(v22)] ^ *&v92[4 * (BYTE2(v80) ^ 0xB3)] ^ 0x90027A92 ^ (*&v95[4 * ((v216 ^ v41) ^ 0x96)] - 190468687);
  v108 = *&v90[4 * (BYTE1(v105) ^ 0x87)];
  v109 = (v107 + 1324338941 - ((2 * v107) & 0x9DDF9DFA)) ^ v211 ^ *&v92[4 * ((v105 ^ 0xFC47C039) >> 16)] ^ (*&v95[4 * v22] - 190468687);
  v110 = v213 ^ *&v93[4 * ((v105 ^ 0xFC47C039) >> 24)] ^ 0x61C6B6CD ^ (v47 - 554847121 - ((2 * v47) & 0xBDDB68DE));
  BYTE1(v105) = (((v107 - 12547 - ((2 * v107) & 0x9DFA)) ^ v211 ^ *&v92[4 * ((v105 ^ 0xFC47C039) >> 16)] ^ (*&v95[4 * v22] - 21071)) >> 8) ^ 0xDA;
  LODWORD(v45) = (v45 - 554847121 - ((2 * v45) & 0xBDDB68DE)) ^ v215 ^ *&v93[4 * HIBYTE(v104)] ^ (*&v95[4 * (v105 ^ 0x39)] - 190468687);
  LODWORD(v80) = v108 ^ v214 ^ (v80 - 1320320192 - ((2 * v80) & 0x629B0680));
  BYTE2(v47) = BYTE2(v80) ^ 0x65;
  LODWORD(v22) = (v80 ^ 0x7D650C28) >> 24;
  v111 = *&v95[4 * (v80 ^ 0x28)];
  v112 = *&v95[4 * (v45 ^ 0xDD)];
  v113 = (v111 - 745315808 - ((2 * v111 - 380937374) & 0xBDDB68DE)) ^ *&v93[4 * ((v109 ^ 0x7F82DAAB) >> 24)];
  v114 = (v113 - 1320320192 - ((2 * v113) & 0x629B0680)) ^ *&v90[4 * (((v45 ^ 0x35DF) >> 8) ^ 0x79)];
  v115 = (v112 - 1510788879 - ((2 * v112 + 1766546274) & 0x629B0680)) ^ *&v90[4 * BYTE1(v110)];
  v116 = *&v92[4 * BYTE2(v110)];
  LODWORD(v80) = *&v90[4 * (BYTE1(v80) ^ 0x4B)] ^ 0xFFA24DBD ^ *&v92[4 * (((v45 ^ 0x13FC35DF) >> 16) ^ 0x9B)];
  LODWORD(v45) = *&v93[4 * ((v45 >> 24) ^ 0xBD)] ^ *&v92[4 * BYTE2(v47)];
  LODWORD(v47) = *&v92[4 * ((v109 ^ 0x7F82DAAB) >> 16)] ^ (v115 + 1324338941 - ((2 * v115) & 0x9DDF9DFA));
  v117 = *&v93[4 * HIBYTE(v110)];
  v118 = v45 ^ (*&v95[4 * v110] - 190468687);
  LODWORD(v22) = *&v93[4 * v22] ^ v210 ^ (v47 - 554847121 - ((2 * v47) & 0xBDDB68DE));
  v119 = v116 ^ v210 ^ 0x5F64A794 ^ v211 ^ (v114 + 1324338941 - ((2 * v114) & 0x9DDF9DFA));
  v120 = v22 ^ 0x66654B3E;
  LODWORD(v45) = (v80 - 554847121 - ((2 * v80) & 0xBDDB68DE)) ^ HIDWORD(v65) ^ v117 ^ (*&v95[4 * (v109 ^ 0xBD)] - 190468687);
  LOBYTE(v109) = (v80 + 111 - ((2 * v80) & 0xDE)) ^ BYTE4(v65) ^ v117 ^ (v95[4 * (v109 ^ 0xBD)] - 79) ^ 0x1F;
  LODWORD(v80) = v212 ^ *&v90[4 * BYTE1(v105)] ^ 0xE82DABD ^ ((v118 ^ 0x90027A92) - 1320320192 - 2 * ((v118 ^ 0x90027A92) & 0x314D8348 ^ v118 & 8));
  v121 = BYTE3(v80);
  LODWORD(v47) = *&v93[4 * ((v45 ^ 0x880EE61F) >> 24)];
  v122 = *&v95[4 * (v22 ^ 0x28)];
  v123 = (*&v95[4 * v80] - 1510788879 - ((2 * *&v95[4 * v80] + 1766546274) & 0x629B0680)) ^ *&v90[4 * ((v45 ^ 0xE61F) >> 8)];
  LODWORD(v22) = (v123 - 554847121 - ((2 * v123) & 0xBDDB68DE)) ^ *&v93[4 * ((v22 ^ 0x66654B3E) >> 24)];
  v124 = (v122 - 1510788879 - ((2 * v122 + 1766546274) & 0x629B0680)) ^ *&v90[4 * BYTE1(v80)];
  LODWORD(v45) = (v124 + 1324338941 - ((2 * v124) & 0x9DDF9DFA)) ^ *&v92[4 * (BYTE2(v45) ^ 0x91)];
  LODWORD(v47) = v47 ^ 0xA4DD6EEA ^ *&v90[4 * BYTE1(v120)];
  LODWORD(v80) = *&v92[4 * BYTE2(v80)] ^ 0x8E082439;
  LODWORD(v80) = v80 + v47 - 2 * (v80 & v47);
  v125 = (*&v95[4 * v109] + 1133870254 - ((2 * *&v95[4 * v109] - 380937374) & 0x9DDF9DFA)) ^ *&v92[4 * BYTE2(v120)];
  v126 = (v125 - 554847121 - ((2 * v125) & 0xBDDB68DE)) ^ *&v93[4 * v121];
  v127 = v126 - 1320320192 - ((2 * v126) & 0x629B0680);
  v128 = v22 + 1324338941 - ((2 * v22) & 0x9DDF9DFA);
  v129 = (*&v95[4 * (v119 ^ 0x48)] - 190468687) ^ v207 ^ v80;
  v130 = *&v93[4 * ((v119 ^ 0xA480DD5E) >> 24)] ^ v208 ^ (v45 - 554847121 - ((2 * v45) & 0xBDDB68DE));
  LODWORD(v22) = *&v90[4 * ((v119 ^ 0xDD5E) >> 8)] ^ v65 ^ v127;
  v131 = v209 ^ *&v92[4 * ((v119 ^ 0xA480DD5E) >> 16)] ^ 0x84654B28 ^ v128;
  v132 = *&v95[4 * (((v95[4 * (v119 ^ 0x48)] - 79) ^ v207 ^ v80) ^ 0x7E)];
  v133 = *&v95[4 * (v22 ^ 0xDD)];
  LODWORD(v47) = *&v93[4 * (HIBYTE(v129) ^ 0x30)] ^ 0x90027A92 ^ *&v92[4 * (BYTE2(v22) ^ 0x67)] ^ (*&v95[4 * (v130 ^ 0x6E)] - 190468687);
  v134 = (v133 - 745315808 - ((2 * v133 - 380937374) & 0xBDDB68DE)) ^ *&v93[4 * HIBYTE(v131)];
  LODWORD(v80) = (v134 + 1324338941 - ((2 * v134) & 0x9DDF9DFA)) ^ *&v92[4 * (((v130 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v135 = *&v92[4 * BYTE2(v131)] ^ (v132 + 1133870254 - ((2 * v132 - 380937374) & 0x9DDF9DFA));
  LODWORD(v45) = *&v93[4 * ((v130 ^ 0xD0C9FB6E) >> 24)] ^ *&v92[4 * (BYTE2(v129) ^ 0xEE)] ^ 0x90027A92 ^ (*&v95[4 * v131] - 190468687);
  v136 = *&v90[4 * (BYTE1(v130) ^ 0xBC)];
  v137 = (v135 - 554847121 - ((2 * v135) & 0xBDDB68DE)) ^ *&v93[4 * (BYTE3(v22) ^ 0x5F)];
  v138 = v137 - 1320320192 - ((2 * v137) & 0x629B0680);
  LODWORD(v22) = *&v90[4 * (BYTE1(v22) ^ 0x4C)] ^ HIDWORD(v204) ^ (v45 - 1320320192 - ((2 * v45) & 0x629B0680));
  v139 = (v47 - 1320320192 - ((2 * v47) & 0x629B0680)) ^ v204 ^ *&v90[4 * BYTE1(v131)];
  v140 = v136 ^ v206 ^ v138;
  v141 = v205 ^ *&v90[4 * (BYTE1(v129) ^ 0xC3)] ^ 0x9A674CDD ^ (v80 - 1320320192 - ((2 * v80) & 0x629B0680));
  v142 = *&v95[4 * ((v205 ^ v90[4 * (BYTE1(v129) ^ 0xC3)]) ^ 0xDD ^ (v80 + 64 - ((2 * v80) & 0x80)))];
  v143 = (v142 - 1510788879 - ((2 * v142 + 1766546274) & 0x629B0680)) ^ *&v90[4 * ((v140 ^ 0xDAAB) >> 8)];
  LODWORD(v45) = (v143 + 1324338941 - ((2 * v143) & 0x9DDF9DFA)) ^ *&v92[4 * ((v139 ^ 0xBFC6B6DB) >> 16)];
  v144 = *&v93[4 * ((v139 ^ 0xBFC6B6DB) >> 24)] ^ 0x6FA0372F ^ (*&v95[4 * (v22 ^ 0xE)] - 190468687) ^ *&v90[4 * BYTE1(v141)];
  v145 = *&v90[4 * (BYTE1(v22) ^ 0x2A)] ^ 0x6FA0372F ^ *&v93[4 * ((v140 ^ 0x2982DAABu) >> 24)];
  LODWORD(v80) = *&v90[4 * ((v139 ^ 0xB6DB) >> 8)] ^ 0x6FA0372F ^ *&v93[4 * HIBYTE(v141)];
  LODWORD(v47) = BYTE2(v141);
  v146 = v145 + 1324338941 - ((2 * v145) & 0x9DDF9DFA);
  v147 = *&v95[4 * (v140 ^ 0xBD)] - 190468687;
  v148 = (v144 + 1324338941 - ((2 * v144) & 0x9DDF9DFA)) ^ v202 ^ *&v92[4 * ((v140 ^ 0x2982DAABu) >> 16)];
  v149 = HIDWORD(v203) ^ *&v92[4 * v47] ^ (*&v95[4 * (v139 ^ 0xCD)] - 190468687) ^ v146 ^ 0x2674CDD;
  v150 = HIDWORD(v202) ^ *&v93[4 * (BYTE3(v22) ^ 0xA6)] ^ 0xAF54BB9B ^ (v45 - 554847121 - ((2 * v45) & 0xBDDB68DE));
  LODWORD(v22) = v203 ^ *&v92[4 * (BYTE2(v22) ^ 0xB3)] ^ v147 ^ 0x2BE67D3F ^ (v80 + 1324338941 - ((2 * v80) & 0x9DDF9DFA));
  v151 = *&v95[4 * (v148 ^ 0x8A)];
  v152 = (*&v95[4 * v150] + 1133870254 - ((2 * *&v95[4 * v150] - 380937374) & 0x9DDF9DFA)) ^ *&v92[4 * BYTE2(v149)];
  v153 = (v152 - 1320320192 - ((2 * v152) & 0x629B0680)) ^ *&v90[4 * BYTE1(v22)];
  LODWORD(v45) = *&v93[4 * ((v148 ^ 0x44E9778Au) >> 24)];
  LODWORD(v47) = *&v90[4 * ((v148 ^ 0x778A) >> 8)] ^ *&v93[4 * BYTE3(v22)] ^ 0x6FA0372F;
  v154 = *&v92[4 * BYTE2(v150)];
  LODWORD(v80) = *&v93[4 * HIBYTE(v150)] ^ *&v90[4 * BYTE1(v149)] ^ 0x6FA0372F ^ (*&v95[4 * (v22 ^ 0x16)] - 190468687);
  v155 = *&v93[4 * HIBYTE(v149)] ^ (v151 - 745315808 - ((2 * v151 - 380937374) & 0xBDDB68DE));
  v156 = *&v92[4 * (BYTE2(v148) ^ 0x76)];
  v157 = BYTE1(v150);
  v158 = (v155 + 1324338941 - ((2 * v155) & 0x9DDF9DFA)) ^ *&v92[4 * BYTE2(v22)];
  LODWORD(v22) = *&v90[4 * v157];
  v159 = v154 ^ v201 ^ (*&v95[4 * v149] - 190468687) ^ (v47 + 1324338941 - ((2 * v47) & 0x9DDF9DFA));
  LODWORD(v45) = v45 ^ v72 ^ (v153 - 554847121 - ((2 * v153) & 0xBDDB68DE));
  v160 = HIDWORD(v201) ^ v22 ^ 0x26E67D29 ^ (v158 - 1320320192 - ((2 * v158) & 0x629B0680));
  LOBYTE(v22) = v45 ^ 0x58;
  v161 = HIDWORD(v202) ^ v201 ^ v156 ^ 0xA254BB9B ^ (v80 + 1324338941 - ((2 * v80) & 0x9DDF9DFA));
  v162 = *&v95[4 * (v159 ^ 0x49)];
  v163 = (*&v95[4 * v160] - 1510788879 - ((2 * *&v95[4 * v160] + 1766546274) & 0x629B0680)) ^ *&v90[4 * ((v45 ^ 0x2758) >> 8)];
  LODWORD(v47) = *&v93[4 * ((v45 ^ 0x4BE2758) >> 24)];
  LODWORD(v45) = (v162 + 1133870254 - ((2 * v162 - 380937374) & 0x9DDF9DFA)) ^ *&v92[4 * (BYTE2(v45) ^ 0x21)];
  LODWORD(v45) = (v45 - 554847121 - ((2 * v45) & 0xBDDB68DE)) ^ *&v93[4 * HIBYTE(v161)];
  v164 = (v163 + 1324338941 - ((2 * v163) & 0x9DDF9DFA)) ^ *&v92[4 * BYTE2(v161)];
  LODWORD(v80) = (*&v95[4 * v22] - 745315808 - ((2 * *&v95[4 * v22] - 380937374) & 0xBDDB68DE)) ^ *&v93[4 * HIBYTE(v160)];
  LODWORD(v80) = (v80 - 1320320192 - ((2 * v80) & 0x629B0680)) ^ *&v90[4 * BYTE1(v161)];
  v165 = *(v14 - 120);
  LODWORD(v95) = v47 ^ *&v90[4 * (BYTE1(v159) ^ 0xEB)] ^ 0x6FA0372F ^ (*&v95[4 * v161] - 190468687);
  LODWORD(v95) = *&v92[4 * BYTE2(v160)] ^ v199 ^ (v95 + 1324338941 - ((2 * v95) & 0x9DDF9DFA));
  LODWORD(v90) = *&v90[4 * BYTE1(v160)] ^ HIDWORD(v199) ^ (v45 - 1320320192 - ((2 * v45) & 0x629B0680));
  LODWORD(v80) = *&v92[4 * (BYTE2(v159) ^ 3)] ^ v200 ^ (v80 + 1324338941 - ((2 * v80) & 0x9DDF9DFA));
  v166 = v200 ^ v201 ^ *&v93[4 * (HIBYTE(v159) ^ 0xEF)] ^ (v164 - 554847121 - ((2 * v164) & 0xBDDB68DE));
  v167 = v166 ^ 0xBD9E3C06;
  v168 = v80 ^ 0xB0693C07;
  v169 = *(&off_1000610D0 + (v165 & 0x31ECE32F)) - 4;
  LODWORD(v45) = *&v169[4 * (v166 ^ 7)];
  LODWORD(v93) = HIBYTE(v166) ^ 0xD2;
  v170 = *(&off_1000610D0 + v165 - 1178);
  LODWORD(v93) = 1909043885 * *(v170 + 4 * v93) - ((-476879526 * *(v170 + 4 * v93) + 1030245338) & 0x9888FC86);
  v171 = *(&off_1000610D0 + v165 - 1110) - 4;
  v172 = *&v171[4 * ((v90 ^ 0xFAB5) >> 8)];
  HIDWORD(v41) = v172 ^ 0x7C48A49;
  LODWORD(v41) = v172 ^ 0x30000000;
  LODWORD(v80) = (v41 >> 28) ^ (*&v169[4 * (v95 ^ 0x16)] - 799098614) ^ (1909043885 * *(v170 + 4 * (BYTE3(v80) ^ 0xDF)) - 1632360979);
  v173 = *&v171[4 * ((v95 ^ 0xF016) >> 8)];
  HIDWORD(v41) = v173 ^ 0x7C48A49;
  LODWORD(v41) = v173 ^ 0x30000000;
  v174 = v41 >> 28;
  v175 = *&v171[4 * BYTE1(v167)];
  HIDWORD(v41) = v175 ^ 0x7C48A49;
  LODWORD(v41) = v175 ^ 0x30000000;
  v176 = *(&off_1000610D0 + (v165 ^ 0x48D)) - 4;
  LODWORD(v47) = *&v176[4 * ((v90 ^ 0x422CFAB5) >> 16)];
  LODWORD(v92) = *&v176[4 * ((v95 ^ 0xF6BCF016) >> 16)];
  LODWORD(v22) = (v41 >> 28) ^ (*&v169[4 * (v90 ^ 0xB5)] - 799098614);
  v177 = BYTE2(v167);
  v178 = *&v169[4 * v168];
  v179 = *&v176[4 * v177];
  LODWORD(v169) = *&v176[4 * (BYTE2(v168) ^ 0xF7)];
  v180 = v22 + 1279557187 - ((2 * v22) & 0x9888FC86);
  v181 = *&v171[4 * BYTE1(v168)];
  LODWORD(v90) = *(v170 + 4 * ((v90 >> 24) ^ 0x2D));
  LODWORD(v170) = *(v170 + 4 * ((v95 >> 24) ^ 0x99));
  HIDWORD(v41) = v181 ^ 0x7C48A49;
  LODWORD(v41) = v181 ^ 0x30000000;
  LODWORD(v95) = v194 ^ v179 ^ (v80 + 1279557187 - ((2 * v80) & 0x9888FC86));
  LODWORD(v80) = v47 ^ v195 ^ v174 ^ (v178 - 799098614);
  v182 = (v93 - 352803792);
  v183 = v45 - ((2 * v45 - 1598197228) & 0x9888FC86) + 480458573;
  LODWORD(v92) = v183 ^ v75 ^ v195 ^ v92 ^ (1909043885 * v90 - 1632360979) ^ (v41 >> 28);
  v184 = v75 ^ v195 ^ v199 ^ v169 ^ (1909043885 * v170 - 1632360979) ^ v180;
  v185 = *(&off_1000610D0 + (v165 & 0x81705181)) - 12;
  v83[10] = v185[BYTE1(v92) ^ 0x79] ^ 0x2D;
  v186 = *(&off_1000610D0 + v165 - 1121) - 8;
  v187 = v80 ^ v182;
  v83[13] = v186[BYTE2(v184) ^ 0xF0] ^ 0xB5;
  v188 = *(&off_1000610D0 + v165 - 1244);
  v83[15] = (*(v188 + (v184 ^ 0x45)) - 97) ^ 0x8F;
  v83[6] = v185[((v80 ^ v182) >> 8) ^ 0x1BLL] ^ 0xD1;
  v83[1] = v186[BYTE2(v95) ^ 0x3ELL] ^ 0xD3;
  v189 = *(&off_1000610D0 + (v165 ^ 0x454)) - 8;
  v83[12] = v189[BYTE3(v184) ^ 0x41] ^ 0x85;
  v83[8] = v189[(v92 >> 24) ^ 0xB6] ^ 0x43;
  v83[3] = (*(v188 + (v95 ^ 0xDFLL)) - 97) ^ 0x17;
  v83[14] = v185[BYTE1(v184) ^ 0x5ELL] ^ 0x90;
  v190 = *(v14 - 116);
  v83[11] = (*(v188 + (v92 ^ 0x54)) - 97) ^ 0x67;
  v191 = BYTE1(v95) ^ 0x13;
  v83[2] = v185[v191] ^ 0xDD;
  v83[7] = (*(v188 + (v187 ^ 0xDELL)) - 97) ^ 0x84;
  v83[5] = v186[BYTE2(v187) ^ 0x7ALL] ^ 0x14;
  *v83 = v189[(v95 >> 24) ^ 0xB5] ^ 0xA3;
  v83[9] = v186[BYTE2(v92) ^ 0x6FLL] ^ 0x66;
  v83[4] = v189[HIBYTE(v187) ^ 0x49] ^ 0xD7;
  v192 = (v190 + 1602441820) < HIDWORD(v195);
  if (HIDWORD(v195) < 0x5F83524C != (v190 + 1602441820) < 0x5F83524C)
  {
    v192 = HIDWORD(v195) < 0x5F83524C;
  }

  HIDWORD(v194) = v75 ^ v195;
  return (*(*(v14 - 144) + 8 * ((471 * v192) ^ v165)))(v191, v183, v180, v184, 1909043885, 45, v182, v179, a9, a10, a11, v194, v195, v196, v197, v198, v74, v199, v200, v201, v202, v203, v204);
}

uint64_t sub_100017A1C@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x264] + a1 + 72);
  v6 = (((v2 + 796089363) & 0xD08C9FAD) - 113) ^ HIBYTE(v5);
  v7 = ((2 * a1) & 0x6FEFE7F8) + (a1 ^ 0xB7F7F3FF) + v1;
  *(v3 + v7) = v6 - ((2 * v6) & 0x8F) - 57;
  *(v3 + v7 + 1) = (BYTE2(v5) ^ 0x3A) - ((2 * (BYTE2(v5) ^ 0x3A)) & 0x8F) - 57;
  *(v3 + v7 + 2) = (BYTE1(v5) ^ 0x37) - ((2 * (BYTE1(v5) ^ 0x37)) & 0x8F) - 57;
  *(v3 + v7 + 3) = v5 ^ 0x8C;
  return (*(v4 + 8 * ((162 * (a1 + 4 < LODWORD(STACK[0x2C0]))) | v2)))();
}

uint64_t sub_100017AF8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = a1 - 1;
  v27 = (v26 - 562270549) & 0x218397F5;
  if (((a12 - v26) | (v26 - a12)) > (v27 ^ 0xFFFFF95E))
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = 0x80000000;
  }

  *v23 = v28 + (v26 ^ 1);
  (*(v24 + 8 * (v26 + 2128)))(a23);
  v29 = v23[1];
  v30 = v23[398] ^ ((v23[2] & ((v27 ^ 0x60E) + 2147483471) | v29 & 0x80000000) >> 1) ^ *(v25 - 160 + 4 * (v23[2] & 1));
  *v23 = v23[397] ^ ((v29 & 0x7FFFFFFE | *v23 & 0x80000000) >> 1) ^ *(v25 - 160 + 4 * (v29 & 1));
  v23[1] = v30;
  return (*(v24 + 8 * (v27 - 717)))();
}

uint64_t sub_100017C1C@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v8.i64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v9.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v9.i64[1] = 0xC7C7C7C7C7C7C7C7;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((v1 == 96) * ((v2 - 748) ^ 0xF1)) ^ v2)))();
}

uint64_t sub_100017D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  if (a19 < 0x8DA6456F != (a16 - 1918483025) < 0x8DA6456F)
  {
    v20 = (a16 - 1918483025) < 0x8DA6456F;
  }

  else
  {
    v20 = a16 - 1918483025 > a19;
  }

  return (*(v19 + 8 * ((v20 * (((a6 + a7 + 1056) | 0x340) + a8 - 1486)) ^ (a6 + a7 + 1757))))(a1, 1791, 25);
}

uint64_t sub_100017ED4(double a1, int8x16_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = (v18 + 908);
  v20 = vld1q_dup_f32(v19);
  v21 = (v17 + v15 + 750);
  a2.i32[0] = *(v18 + 4 * (v21 ^ 0x5B9));
  a2.i32[1] = *(v18 + 916);
  a2.i32[2] = *(v18 + 920);
  v22 = vextq_s8(v20, a2, 0xCuLL);
  v23 = a2;
  v23.i32[3] = *(v18 + 924);
  v24 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v23, a6), vandq_s8(v22, a5)), 1uLL), *v18);
  v22.i32[0] = *(a15 + 4 * (*(v18 + 4 * (v21 ^ 0x5B9)) & 1));
  v22.i32[1] = *(a15 + 4 * (*(v18 + 916) & 1));
  v22.i32[2] = *(a15 + 4 * (*(v18 + 920) & 1));
  v22.i32[3] = *(a15 + 4 * (v23.i8[12] & 1));
  *(v18 + 908) = veorq_s8(vaddq_s32(vsubq_s32(v24, vandq_s8(vaddq_s32(v24, v24), a7)), a8), v22);
  return (*(v16 + 8 * ((v17 + v15 + 568) ^ 0x73)))();
}

uint64_t sub_100017FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v40 + 1088) = (v41 + 1) - a38;
  *(v43 - 120) = a35 ^ a38;
  *(v43 - 148) = a33 + a38;
  *(v43 - 144) = a37 ^ a38;
  *(v40 + 1064) = a32;
  *(v43 - 128) = a38 + 1212455568;
  *(v43 - 124) = 1 - a38;
  v44 = (*(a40 + 8 * (v42 - 1878935814)))(v43 - 152);
  return (*(a40 + 8 * *(v43 - 152)))(v44);
}

uint64_t sub_100018060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7 - 1;
  *(a1 + v10) = *(v9 + v10);
  return (*(a7 + 8 * ((56 * (v10 == ((v8 + 1051172797) & 0xC1585C79 ^ 0x411))) ^ (v8 - 1034))))();
}

uint64_t sub_1000180B0()
{
  v7 = v4 + v0;
  *v3 = (v4 + v0) ^ v13 ^ 0xA47845E7;
  *v2 = v12 ^ v5;
  *v1 = v9 ^ v5;
  v14 = 765719570 - 1388665877 * (&v14 ^ 0x8DAD62EC) + v4 + v0;
  v15 = v11;
  (*(v6 + 8 * ((v4 + v0) ^ (v0 - 1785))))(&v14);
  v15 = v10;
  v14 = v7 + 765719570 - 1388665877 * ((&v14 + 1525074328 - 2 * (&v14 & 0x5AE6C998)) ^ 0xD74BAB74);
  (*(v6 + 8 * (v7 + 765720827)))(&v14);
  return v5 ^ 0x76244AC8u;
}

uint64_t sub_1000182A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v46 = v38 ^ a2;
  v47 = a4 ^ 0xB2C4206D9D21B373 ^ v44;
  v48 = v47 ^ v45;
  v49 = a4 & 0x962FB9E2C93A8CF9 ^ 0x820AA0E0C0208C31 ^ (v47 ^ v45 ^ 0x1FD69D8FF96E6093) & (a4 ^ 0xAA0AA6F5E4A0CE33);
  v50 = (a2 ^ a3) & 0x8000000;
  v51 = v49 + (v46 ^ 0xC24232D57F769EB6) - 2 * (v49 & (v46 ^ 0xC24232D57F769EB6));
  v52 = (__ROR8__(__ROR8__(v46 ^ 0x5323904767987D61, 58) ^ 0x691741DA783D3084, 6) ^ 0x766DAAB7CB5F6FF2) & (a4 ^ 0x55F5590A1B5F31CCLL);
  v53 = a4 & 0x957AADD45AE8718 ^ 0x1550808010E0108 ^ v52;
  if ((v52 & v50) != 0)
  {
    v54 = -v50;
  }

  else
  {
    v54 = (a2 ^ a3) & 0x8000000;
  }

  v55 = (v54 + v53) ^ (a2 ^ a3) & 0xFFFFFFFFF7FFFFFFLL ^ 0xF3DB7F38B6446F69;
  v56 = v48 & 0xF38DD6A5F76F4803 ^ v47 ^ (v48 ^ 0x7606DB92CFAB1395) & (a3 ^ 0x6F87FD90E5F91688) ^ v51;
  v57 = __ROR8__(__ROR8__(a3 ^ v46 & 0x3F8615AC4662FE46 ^ (v46 ^ 0xC24232D57F769EB6) & (a2 ^ a3 ^ 0x9E82B877FAE722F2) ^ (a2 ^ 0xC2F1791151EC7DC0) & (a3 ^ 0x30BE3BD284A77CDFLL) ^ a2 & 0x534BEF1869CEDDABLL ^ v48 ^ 0xD7FB64B21A95DCD7, 49) ^ 0x91610FC0BE5E994, 15);
  return (*(a38 + 8 * (((a7 > (((v44 + v40) & v41 ^ v42) & (2 * v39)) + ((v44 - 1489) ^ v39)) * v43) ^ v44)))(0xB451A12FF4286E7ELL, (v55 << 23) ^ 0x12BE67188417DEE5 ^ ((v55 >> 41) | (v55 << 57)) ^ ((v55 >> 7) + v55 - 2 * ((v55 >> 7) & v55)), v57 ^ 0xA79DE1A8B4903C35 ^ ((v57 ^ 0xA79DE1A8B4903C35) << 47) ^ 0xC402EE28FED24712 ^ ((v57 >> 17) ^ (v57 >> 10) | ((v57 ^ 0xA79DE1A8B4903C35) << 54)), __ROR8__((((v56 >> 51) & 0x3FF ^ 0xD16A4C870B43453ELL) & (((v56 ^ 0xD47A0C3E6578F39CLL) << 13) ^ 0x6DD64686D73E37FFLL) | ((v56 ^ 0xD47A0C3E6578F39CLL) << 13) & 0x2E95B378F4BCA000) ^ __ROR8__(v56 ^ 0xD47A0C3E6578F39CLL ^ (v56 >> 61) ^ __ROR8__(v56 ^ 0xD47A0C3E6578F39CLL, 39) ^ 0x843FC77571F54BFBLL, 54) ^ 0xF191A4B383F966EELL, 10) ^ 0xB0E9EB9B3D409E5BLL);
}

uint64_t sub_10001871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v13 + 550869216 < a13 + 493666070;
  if ((a13 + 493666070) < 0x20D598E0 != v13 > 0xDF2A671F)
  {
    v16 = (a13 + 493666070) < 0x20D598E0;
  }

  return (*(v15 + 8 * ((v16 * ((v14 - 729) ^ 0x2D)) ^ v14)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_100018788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, void *a29, int *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v42 = 4 * v37;
  v43 = 840099951 * ((*(*a29 + (*a30 & 0xFFFFFFFFD4ABAC50)) ^ (a36 + 4 * v37)) & ((v40 + 1878938398) ^ 0x7FFFFBCA));
  v44 = v43 ^ ((((v38 - 620) ^ v37) & v37) >> (__clz((v38 - 620) ^ v37 | 1) ^ 0x1F)) & 1 ^ HIWORD(v43);
  v45 = (840099951 * v44) >> 24;
  *(a37 + v42) ^= *(a36 + v42) ^ *(*(&off_1000610D0 + v38 - 538) + v45) ^ *(*(&off_1000610D0 + a28) + v45 + 5) ^ *(*(&off_1000610D0 + (v40 ^ (v40 + 142))) + v45 + 5) ^ (-395378688 * v44) ^ (840099951 * v44) ^ (1876530667 * v45);
  return (*(v39 + 8 * ((((v40 + 1878938398) ^ 0x563) * (v41 == 1)) ^ (v40 + 1878938398))))();
}

uint64_t sub_100018920(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int32x4_t a17, int8x16_t a18, int8x16_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v61 = vld1q_dup_f32(v60);
  v62.i64[0] = 0x8000000080000000;
  v62.i64[1] = 0x8000000080000000;
  a2.i64[0] = *(v60 + 4);
  a2.i32[2] = *(v60 + 12);
  v63 = vextq_s8(v61, a2, 0xCuLL);
  v64 = a2;
  v64.i32[3] = *(v60 + 16);
  v65 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v64, a19), vandq_s8(v63, v62)), 1uLL), *(v60 + 1588));
  v63.i32[0] = *(&a58 + (*(v60 + 4) & 1));
  v63.i32[1] = *(&a58 + (*(v60 + 8) & 1));
  v63.i32[2] = *(&a58 + (*(v60 + 12) & 1));
  v63.i32[3] = *(&a58 + (v64.i8[12] & 1));
  *v60 = veorq_s8(vaddq_s32(vsubq_s32(v65, vandq_s8(vaddq_s32(v65, v65), a18)), a17), v63);
  return (*(v58 + 8 * ((v59 - 1878937216) ^ 0x3E)))(2416029975, 2416025133, a24, 4029748023, 3764528750, 731, &a58, 4114);
}

uint64_t sub_10001892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *(a45 + 52) += (v45 + 772) ^ 0x7DB;
  LODWORD(STACK[0x424]) = *(a45 + 360);
  STACK[0x358] -= 2432;
  LODWORD(STACK[0x3A8]) = 1982089928;
  return (*(v46 + 8 * ((1910 * (((v45 + 772) ^ 0x76244D12) == 1982089928)) ^ (v45 - 751))))();
}

uint64_t sub_1000189B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = v8 - 1;
  *(v9 + v11) = *(v7 + (v11 & 0xF)) ^ *(v4 + v11) ^ (a4 - 106) ^ *((v11 & 0xF) + v5 + 5) ^ (89 * (v11 & 0xF)) ^ *((v11 & 0xF) + v6 + 2);
  return (*(v10 + 8 * ((57 * (v11 != 0)) ^ (a4 + 223))))();
}

uint64_t sub_100018A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unsigned int a62, uint64_t a63)
{
  (*(v68 + 8 * (v65 ^ 0xF8A)))();
  LODWORD(STACK[0x3AC]) = v66;
  return (*(a65 + 8 * (((v65 - 1711) * v67) ^ (v65 - 772))))(a62);
}

uint64_t sub_100018BE4@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v60 = (v54 + 81) | 0x28;
  *a19 = a2;
  v61 = ((v57 ^ ((v56 + v57) >> 11) ^ v55 ^ ((v57 ^ ((v56 + v57) >> 11)) << 7) & 0x9D2C5680) << 15) & 0xEFC60000 ^ v57 ^ ((v56 + v57) >> 11) ^ v55 ^ ((v57 ^ ((v56 + v57) >> 11)) << 7) & 0x9D2C5680;
  v62 = (v61 >> (v60 + 21)) ^ v61;
  v63 = &a54 + (a1 - 1);
  v64 = ((*(*v59 + (*a24 & 0x5CE4C580)) ^ v63) & 0x7FFFFFFF) * (((v60 ^ 0x519) + 672) ^ 0x3212ECEB);
  v65 = 840099951 * (v64 ^ HIWORD(v64));
  v66 = *(*(&off_1000610D0 + (v60 ^ 0x4D6)) + (v65 >> 24) - 8);
  v67 = *(*(&off_1000610D0 + v60 - 1277) + (v65 >> 24) - 12);
  v68 = (127 - v62) ^ *(*(&off_1000610D0 + (v60 ^ 0x4C2)) + (v65 >> 24) - 8) ^ v66 ^ v67 ^ v65 ^ (-7 * (v65 >> 24));
  LODWORD(v65) = ((127 - v62) ^ *(*(&off_1000610D0 + (v60 ^ 0x4C2)) + (v65 >> 24) - 8) ^ v66 ^ v67 ^ v65 ^ (-7 * BYTE3(v65)));
  *v63 = v68 ^ 0x7F;
  return (*(v58 + 8 * ((510 * (a1 != (v65 != 127))) ^ v60)))();
}

uint64_t sub_100018D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, char *a15, unsigned int a16)
{
  a16 = 2066391179 * (&a14 ^ 0xAF278218) + 1009;
  a15 = &a11;
  v19 = (*(v17 + 17872))(&a14);
  return (*(v17 + 8 * (((a14 == v16) | (8 * (a14 == v16))) ^ v18)))(v19);
}

uint64_t sub_100018EE0()
{
  v5 = v1 + v3 - 1305 - 256;
  v6 = v0 + v1 + 1 < v2;
  if (v2 < v0 != v5 > 0xFFFFFFFF1ADC9196)
  {
    v6 = v2 < v0;
  }

  return (*(v4 + 8 * ((38 * v6) ^ v3)))();
}

uint64_t sub_100019000()
{
  v7 = *(v1 + v3 + 16);
  v8 = (v5 + v0);
  *v8 = *(v1 + v3);
  v8[1] = v7;
  return (*(v6 + 8 * ((1353 * (((v4 + 814) ^ 0x60CLL) == (v2 & 0xFFFFFFFFFFFFFFE0))) ^ v4)))();
}

uint64_t sub_10001906C@<X0>(uint64_t a1@<X8>)
{
  v7 = (v5 + 1962047642) & 0x8B0D87C1;
  v8 = v4 + v7 - 768;
  *(*(a1 + 8) + 4 * (v4 + v2)) = v6 ^ (v3 + 1622);
  *(a1 + 4) = v8;
  v9 = v8 + v2;
  if (v8 + v2 < 0)
  {
    v9 = -v9;
  }

  return (*(v1 + 8 * ((13 * (((v9 ^ (v7 - 17384342)) + ((2 * v9) & 0xFDED7ED6) + 17383572) <= ((((v7 + 577) | 0xC) - 265) ^ 0xFFFFFBBA))) ^ (v7 + 578))))();
}

uint64_t sub_100019128(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a4 - 8;
  v14 = (v9 + v13 + v10 + 46) & 0xF;
  v16.val[0].i64[0] = v14;
  v16.val[0].i64[1] = (v9 + v13 + 22) & 0xF;
  v16.val[1].i64[0] = (v9 + v13 + 21) & 0xF;
  v16.val[1].i64[1] = (v9 + v13 + 20) & 0xF;
  v16.val[2].i64[0] = (v9 + v13 + 19) & 0xF;
  v16.val[2].i64[1] = (v9 + v13 + 18) & 0xF;
  v16.val[3].i64[0] = (v9 + v13 + 17) & 0xF;
  v16.val[3].i64[1] = (v9 + v13 + 8) & 0xF ^ 8;
  *(a5 + v13 + v10 - 729) = veor_s8(veor_s8(veor_s8(*(v6 + v14 - 7), *(a5 + v13 + v10 - 729)), veor_s8(*(v8 + v14 - 7), *(v14 + v7 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v12 + 8 * ((31 * (v11 == v13)) ^ a6)))();
}

uint64_t sub_100019134(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v16 = (*(v15 + 4 * v14) ^ v8) + v10 + a4 * (*(*(v11 + 8) + a2) ^ v8);
  *(v15 + 4 * v14) = v16 + v8 - ((v16 << ((a7 + 99) ^ v13)) & ((7 * ((a7 - 157) ^ v12)) ^ (v9 + 1389)));
  return (*(v7 + 8 * ((a7 - 157) ^ ((8 * (a5 == 0)) | ((a5 == 0) << 6)))))();
}

uint64_t sub_1000193B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = v17 - ((742449850 - ((v18 - 136) | 0x2C40E2BA) + ((v18 - 136) | 0xD3BF1D45)) ^ 0x48F8EBCF) * v16 + 1545;
  *(v18 - 128) = a14;
  *(v18 - 112) = &a15;
  v19 = (*(v15 + 8 * (v17 ^ 0x97F)))(v18 - 136);
  v20 = *(v18 - 120) > ((489 * (v17 ^ 0x108)) ^ 0x4255B867u);
  return (*(v15 + 8 * ((v20 | (4 * v20)) ^ v17)))(v19);
}

uint64_t sub_1000194B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25)
{
  v27 = ((3 * a24) ^ 0x65AAB8AF) + v26;
  v28 = v27 < 0x65AAB7F3;
  v29 = v27 > a25;
  if (a25 < 0x65AAB7F3 != v28)
  {
    v29 = v28;
  }

  return (*(v25 + 8 * ((975 * !v29) ^ (a6 + 463))))(a1, a2, a3, a4, 199);
}

void sub_1000195E4(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0xBCFB0D90BCFB0D9;
  *(a1 + 16) = 0x2A2B3E4C2BA95423;
  *(a1 + 24) = 1982089928;
  *v2 = a1;
  JUMPOUT(0x10001961CLL);
}

uint64_t sub_100019630@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55)
{
  v57 = (a2 ^ 0xA48144C0) & (2 * (a2 & (a1 + 1))) ^ a2 & (a1 + 1);
  v58 = (((a2 ^ v55 ^ 0x3691463A) << (((a51 + 53) & 0xDA) + 39)) ^ 0xFF300EEA) & (a2 ^ v55 ^ 0x3691463A) ^ ((a2 ^ v55 ^ 0x3691463A) << (((a51 + 53) & 0xDA) + 39)) & 0xFF980774;
  v59 = ((4 * (v58 ^ 0x880115)) ^ 0xFE601DD4) & (v58 ^ 0x880115) ^ (4 * (v58 ^ 0x880115)) & 0xFF980774;
  v60 = (v59 ^ 0xFE000550) & (16 * ((v58 ^ 0x6C800760) & (4 * v57) ^ v57)) ^ (v58 ^ 0x6C800760) & (4 * v57) ^ v57;
  v61 = ((16 * (v59 ^ 0x1980221)) ^ 0xF9807750) & (v59 ^ 0x1980221) ^ (16 * (v59 ^ 0x1980221)) & 0xFF980770;
  v62 = v60 ^ 0xFF980775 ^ (v61 ^ 0xF9800700) & (v60 << 8);
  return (*(v56 + 8 * ((1469 * ((a55 ^ (4 * a2) ^ (8 * ((v62 << 16) & 0x1F980000 ^ v62 ^ ((v62 << 16) ^ 0x7750000) & (((v61 ^ 0x6180025) << 8) & 0xFF980000 ^ 0x7980000 ^ (((v61 ^ 0x6180025) << 8) ^ 0x18070000) & (v61 ^ 0x6180025))))) == -530243076)) ^ a51)))();
}

uint64_t sub_100019800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 922138987;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v5 = *(a2 + 8) + (*(a2 + 4) - v3);
  v6 = 1388665877 * ((&v8 & 0x35F61E53 | ~(&v8 | 0x35F61E53)) ^ 0x47A48340);
  v8 = *(a1 + 96) + 800;
  v10 = v3 - v6 + ((v4 + 1442) ^ 0xF93E3128);
  v11 = v5;
  v12 = v6 + 1713;
  (*(a3 + 17528))(&v8);
  return v9 ^ 0xFC04D6CB;
}

uint64_t sub_100019910()
{
  *(v2 + 4) = v0;
  *(v5 - 128) = v4 - 609 + (((v5 - 144) & 0x61CF6EE2 | ~((v5 - 144) | 0x61CF6EE2)) ^ 0x5776797) * v1 + 1028;
  *(v5 - 144) = v2;
  *(v5 - 136) = &v7;
  return (*(v3 + 8 * ((v4 - 609) ^ 0x884)))(v5 - 144);
}

uint64_t sub_100019920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, unsigned int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  v65 = ((*v64 & 0x7FFFFFFE | v64[623] & 0x80000000) >> (v63 + v59 + 82 - 110)) ^ v64[396];
  v64[623] = (v65 + v60 - (a5 & (2 * v65))) ^ *(&a59 + (*v64 & ((v59 - 1878938030) ^ v62)));
  return (*(v61 + 8 * ((492 * (a41 < 0x270)) ^ v59)))();
}

uint64_t sub_100019B34(uint64_t a1)
{
  v7 = *(v6 - 228 + v1 + 72);
  v8 = (v5 + v3 - 450) ^ HIBYTE(v7) ^ 3;
  v9 = ((2 * v1) & 0xEFFE6FD8) + (v1 ^ 0xF7FF37EF) + v2;
  *(a1 + v9) = v8 - ((2 * v8) & 0x8F) - 57;
  *(a1 + v9 + 1) = (BYTE2(v7) ^ 0x3A) - ((2 * (BYTE2(v7) ^ 0x3A)) & 0x8F) - 57;
  *(a1 + v9 + 2) = (BYTE1(v7) ^ 0x37) - ((2 * (BYTE1(v7) ^ 0x37)) & 0x8F) - 57;
  *(a1 + v9 + 3) = v7 ^ 0x8C;
  v10 = v1 + 4 < *(v6 - 136);
  return (*(v4 + 8 * (((2 * v10) | (4 * v10)) ^ v3)))();
}

uint64_t sub_100019BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, uint64_t, uint64_t, const char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 124);
  if (v25 == 1)
  {
    v34 = *(v23 - 156);
    v33 = *(v23 - 152);
    v31 = v24 + a5 + 749;
    *(v23 - 164) = (8 * (v33 - 2 * (v33 & 1)) - 120) ^ (v24 + a5 - 44);
    *(v23 - 163) = (v33 >> 5) ^ 0xC7;
    *(v23 - 162) = (v33 >> 13) ^ 0xC7;
    *(v23 - 161) = (v33 >> 21) ^ 0xC7;
    *(v23 - 160) = ((__PAIR64__(v34, v33) >> 29) - ((2 * (__PAIR64__(v34, v33) >> 29)) & 0x4C) - 90) ^ 0x61;
    *(v23 - 159) = (v34 >> 5) ^ 0xC7;
    *(v23 - 158) = (v34 >> 13) ^ 0xC7;
    v32 = (v34 >> 21) ^ 0xFFFFFFC7;
    goto LABEL_5;
  }

  v26 = 1828937465;
  if (v25 == 2)
  {
    v27 = *(v23 - 156);
    v28 = *(v23 - 152);
    *(v23 - 164) = ((v27 >> 20) & 0x8E ^ (v24 + a5 - 124)) + (v27 >> 21) - 56;
    v29 = (v27 >> 5) - ((v27 >> 4) & 0x8E);
    v30 = __PAIR64__(v27, v28) >> 29;
    *(v23 - 163) = (~(v27 >> 12) | 0x71) + (v27 >> 13) - 56;
    v31 = v24 + a5 + 749;
    *(v23 - 162) = v29 - 57;
    *(v23 - 161) = v30 - ((2 * v30) & 0x8F) - 57;
    *(v23 - 160) = (v28 >> 21) - ((v28 >> 20) & 0x8E) - 57;
    *(v23 - 159) = (~(v28 >> 12) | 0x71) + (v28 >> 13) - 56;
    *(v23 - 158) = (v28 >> 5) - ((v28 >> 4) & 0x8E) - 57;
    LOBYTE(v32) = (8 * (v28 - ((2 * v28) & 4)) - 112) ^ 0x57;
LABEL_5:
    v26 = (v31 + 1140999817) | 0x29011408;
    *(v23 - 157) = v32;
  }

  return sub_10003DC2C(a3, a5, v24 + v26 - 354, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100019DF8(unint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13, _BYTE *a14, uint64_t a15, uint64_t a16, _BYTE *a17, uint64_t a18, _BYTE *a19, uint64_t a20, _BYTE *a21, uint64_t a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, _BYTE *a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *a12 = v58;
  *a17 = BYTE3(v58);
  a12[1] = BYTE6(a8);
  a11[1] = (a34 - 40) ^ BYTE4(v58);
  a14[20] = v60;
  *a19 = BYTE5(a8);
  a14[64] = BYTE2(v58);
  a14[50] = BYTE3(v59);
  *a21 = BYTE1(v58);
  *a24 = v59;
  a14[26] = BYTE6(v59);
  *a27 = BYTE4(v59);
  a11[2] = BYTE1(a2);
  a14[45] = BYTE5(v59);
  *a28 = HIBYTE(v59);
  a14[11] = BYTE2(a2);
  *a29 = BYTE1(v60);
  *a11 = HIBYTE(a8);
  *a23 = BYTE2(v60);
  a14[52] = BYTE4(v60);
  *a26 = BYTE3(v60);
  v61 = *(a9 + 526 + (((a7 >> 33) & 0x80 | (v60 >> 41) & 0x7F) ^ 0x1D));
  a14[9] = BYTE6(v60);
  *a25 = (((v61 >> 4) | (16 * v61)) ^ 0xB ^ (((v61 >> 4) | (16 * v61)) >> 1) & 0x55) + 95;
  v62 = (*(a10 + (((v60 >> 51) & 0xE0 | (a7 >> 59)) ^ 0xF3)) ^ 0xBC) + 74;
  a14[39] = a3 ^ 0x53;
  *a31 = v62;
  v63 = *(a10 + (((a3 >> 3) & 0xE0 | (a3 >> 11)) ^ 0xEF));
  v64 = (a1 >> 38) ^ 0xB0;
  a14[49] = BYTE5(a3) ^ 0xBB;
  a14[63] = BYTE3(a3) ^ 0xC1;
  a14[13] = BYTE6(a3) ^ 0x15;
  *a30 = BYTE2(a3) ^ 0x1D;
  *a32 = (v63 ^ 0xBC) + 74;
  a14[36] = BYTE4(a3) ^ 0xF2;
  a14[60] = BYTE1(a1) ^ 0x54;
  a14[27] = BYTE2(a1) ^ 0x11;
  a14[40] = (a3 ^ 0x4F15BBF2C11DE053) >> (a2 & 0x38) >> (a2 & 0x38 ^ 0x38u);
  a14[53] = BYTE3(a1) ^ 5;
  a14[59] = a1 ^ 0x4C;
  a14[22] = BYTE4(a1) ^ 0x2D;
  v65 = *(a13 + ((v64 & 0xFC | (a1 >> 46) & 3) ^ 0x97));
  a14[37] = -35 * ((((v64 & 0xFC | (a1 >> 46) & 3) ^ 0x86) - ((2 * v64) & 0xD0) + (v65 ^ 0xB2) + ((2 * v65) & 0x64) + 79) ^ 0x85);
  v66 = *(a9 + 526 + (((a1 >> 41) & 0x80 | (a1 >> 49) & 0x7F) ^ 0x56));
  a14[29] = HIBYTE(a1) ^ 0x30;
  a14[57] = (((v66 >> 4) | (16 * v66)) ^ 0xB) + ((((v66 >> 4) | (16 * v66)) >> 1) & 0x55) - 2 * ((((v66 >> 4) | (16 * v66)) >> 1) & 0x55 & (((v66 >> 4) | (16 * v66)) ^ 0xB)) + 95;
  **a22 = a15 + 1;
  v67 = *a22;
  v68 = v67[15] | (v67[32] << 8) | (v67[7] << 16) | (v67[34] << 24) | (v67[61] << 40);
  v69 = *(&off_1000610D0 + a34 - 203);
  v70 = (*(v69 + 10 + (((((69 * v67[55]) - ((69 * v67[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v67[55])) ^ 0xD5)) - 18) ^ 0x57;
  v71 = (v70 >> 2) | (v70 << 6);
  v72 = ((*(*a22 + 51) << 56) | (v67[56] << 48)) ^ 0x12BE67188417DEE5 ^ (((0xFFFFFFFF00000000 * v71) ^ (v68 - (v67[15] | (v67[32] << 8) | (v67[7] << 16) | (v67[34] << 24) | (v67[61] << 40) | (v71 << 32))) ^ ((v71 << 32) - ((v71 << 33) & 0x13200000000) + 0x6C0F039922613281) ^ 0x6C0F039922613281) + v68);
  LOBYTE(v61) = (*(v69 + 10 + ((69 * *(*a22 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v73 = ((v61 >> 2) | (v61 << 6)) << 32;
  v74 = *(*a22 + 8) << 24;
  v75 = ((v67[4] >> 4) | (16 * v67[4])) ^ 0x5CLL;
  v76 = ((v74 & 0x5A000000 ^ 0xFCA33984386DC73ALL ^ (((((((*(v69 + 541 + v75) >> 5) | (8 * *(v69 + 541 + v75))) << 8) ^ 0xFA6D614B9AE683A6) & (*(*a22 + 19) ^ 0xFA6F695BFFF7FFFELL) | *(*a22 + 19) & 0x59) ^ 0x1F0834899193B4BLL) & ((v67[33] << 16) ^ 0xFBFFEF5FFFFFFFFFLL) ^ 0x411A46C2A61C9415) & (v74 ^ 0xFBFFFFDFFFFFFFFFLL)) & ~v73 | v73 & 0xBA00000000) ^ ((v67[38] << 40) | (v67[43] << 48));
  return sub_10001A5F4(0xFFFFFF0000000000 * v67[12], v72, ((v76 & 0x4AF54021979D7FCDLL ^ (v67[46] << 56) & 0x4A00000000000000 ^ 0xBD8ABFFE6A62843ALL) & ((v67[46] << 56) & 0xB500000000000000 ^ 0xD8849FBABF8EAEAALL ^ v76 & 0xB50ABFDE68628032) | (v76 & 0x4AF54021979D7FCDLL ^ (v67[46] << 56) & 0x4A00000000000000) & 0x271400100115145) ^ 0xDEA402FFB78CAEE8, ((*(*a22 + 17) << 32) | (*(*a22 + 16) << 40) | (*(*a22 + 30) << 48)) ^ __ROR8__(((*(*a22 + 21) << 51) | (*(*a22 + 35) << 43) | (*(*a22 + 6) << 35) | __ROR8__(*(*a22 + 54), 5)) ^ 0x8D6825791C1C01B5, 35) ^ (*(*a22 + 42) << 56) ^ 0x82AED4E46AE29FE8, 250, (a34 + 1567), a40, a58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_10001AB0C(uint64_t a1)
{
  v7 = v6 + 4 * (v3 + a1);
  *(v6 + 4 * (v3 + a1 + ((v1 - 1540273458) & 0x5BCEB7EE)) - 7472) = __ROR4__(*(v7 - 12) ^ v4 ^ *(v7 - 32) ^ *(v7 - 56) ^ *(v7 - 64), 31) ^ 0x4E50245F;
  return (*(v2 + 8 * ((833 * (a1 + 1 == v5 + 80)) ^ v1)))();
}

uint64_t sub_10001AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = 9 * (v22 ^ (v22 + 173));
  (*(v21 + 8 * (v23 + v22 + 1514)))(a11 + a12, 0x100004077774924);
  v26 = (*(v21 + 8 * (v23 + v22 + 1562)))();
  *v24 = v26;
  v24[1] = (v26 ^ (v26 >> 30)) * ((184 * (v25 ^ 0x769)) ^ 0x6C078815) + 1;
  return (*(v21 + 8 * (v25 | 4)))(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_10001AE50(uint64_t a1, int a2)
{
  v5 = v3 - 1480842018 < ((a2 - 1280254566) ^ 0x60D59D94u);
  if (v5 == (v4 ^ 0x89DBB537) > ((a2 - 1280254566) & 0x4C4F1FD3u) + 748323269)
  {
    v5 = v3 - 1480842018 > (v4 ^ 0x89DBB537) - 748324615;
  }

  return (*(v2 + 8 * (((4 * v5) | (32 * v5)) ^ a2)))();
}

uint64_t sub_10001AEE4()
{
  v0 = *(&off_1000610D0 + (byte_10004D4E8[(byte_10005A7B8[(107 * ((qword_100064130 - dword_1000642F0) ^ 0xF9)) - 8] ^ 0x33) - 8] ^ (107 * ((qword_100064130 - dword_1000642F0) ^ 0xF9))) + 56);
  v1 = *(&off_1000610D0 + (byte_1000577F0[byte_100052B80[(107 * ((qword_100064130 - *v0) ^ 0xF9))] ^ 0x45] ^ (107 * ((qword_100064130 - *v0) ^ 0xF9))) - 184);
  v2 = *v0 ^ &v6 ^ *(v1 - 4);
  *v0 = 1010482283 * (v2 + 0x5450BF49BFD4E907);
  *(v1 - 4) = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v8 = (143681137 * ((&v7 + 1872624635 - 2 * (&v7 & 0x6F9DFBFB)) ^ 0xEC5702B)) ^ 0x3E3;
  v7 = *(&off_1000610D0 + (byte_100052980[byte_10004D2E0[(107 * (*v0 ^ 0xF9 ^ *(v1 - 4)))] ^ 0xA0] ^ (107 * (*v0 ^ 0xF9 ^ *(v1 - 4)))) - 126) - 4;
  LOBYTE(v2) = 107 * ((*(v1 - 4) - *v0) ^ 0xF9);
  v3 = *(&off_1000610D0 + ((107 * (dword_1000642F0 ^ 0xF9 ^ qword_100064130)) ^ byte_10004D1E0[byte_10005A5B0[(107 * (dword_1000642F0 ^ 0xF9 ^ qword_100064130))] ^ 0x74]) + 163);
  (*(v3 + 8 * ((byte_1000576F4[(byte_100052A8C[v2 - 12] ^ 0x41) - 4] ^ v2) + 2006)))(&v7);
  v8 = (143681137 * (&v7 ^ 0x61588BD0)) ^ 0x3E3;
  v7 = *(&off_1000610D0 + ((107 * ((*(v1 - 4) + *v0) ^ 0xF9)) ^ byte_1000577F0[byte_100052B80[(107 * ((*(v1 - 4) + *v0) ^ 0xF9))] ^ 0x81]) - 75) - 4;
  (*(v3 + 8 * (((107 * ((*(v1 - 4) + *v0) ^ 0xF9)) ^ byte_100052980[byte_10004D2E0[(107 * ((*(v1 - 4) + *v0) ^ 0xF9))] ^ 0xB7]) + 2068)))(&v7);
  v4 = 1037613739 * ((((2 * &v7) | 0xE2E43E14) - &v7 - 1903304458) ^ 0xA0703275);
  HIDWORD(v7) = v4 + 2080;
  LOBYTE(v7) = 11 - v4;
  return (*(v3 + 8 * ((byte_10004D3E0[byte_10005A6B0[(107 * ((*(v1 - 4) + *v0) ^ 0xF9))] ^ 0x50] ^ (107 * ((*(v1 - 4) + *v0) ^ 0xF9))) + 2085)))(&v7);
}

uint64_t sub_10001B290(uint64_t a1)
{
  v2 = 1037613739 * ((((2 * a1) | 0x619AD0E0) - a1 + 1328715664) ^ 0x61CF450F);
  v3 = *(a1 + 16) - v2;
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = 1513206285 * (*(a1 + 12) - v2) - 322400371;
  v7 = (*(a1 + 8) ^ v2) + 735904173;
  v8 = 742307843 * (((v10 | 0xB06828D9) - (v10 & 0xB06828D9)) ^ 0xED1457A3);
  v12 = (v6 ^ ((v6 ^ 0x935F2FEF) + 829908886) ^ ((v6 ^ 0x50E00B4) - 1490663217) ^ ((v6 ^ 0xACF8E521) + 248556892) ^ ((v6 ^ 0x677E7DFF) - 984205946) ^ 0x3326BA10) - v8;
  v13 = v3 + v8 + 1197044420;
  v14 = v4;
  v10[0] = v8 ^ v7;
  v11 = v5;
  result = (*(*(&off_1000610D0 + (v3 ^ 0xB8A695A5)) + (v3 ^ 0xB8A69DBC)))(v10);
  *(a1 + 20) = v10[1];
  return result;
}

uint64_t sub_10001B4B4()
{
  v8 = (**(v6 + 8) ^ v2) - (**(v5 + 8) ^ v2);
  **(v0 + 8) = v8 + v2 - ((v4 + ((v7 - 1045025377) & 0x3E49D52D) - 1321) & (2 * v8));
  return (*(v3 + 8 * ((1135 * (v1 == 1)) ^ (v7 - 150))))(1045026093, 0xFFFFFFFFLL);
}

void sub_10001B5F8(uint64_t a1)
{
  v1 = *(a1 + 32) + 1564307779 * (a1 ^ 0x970DCC13);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10001B79C()
{
  v3 = (v1 ^ 0xFBBF7FEB) + 1995440118 + ((2 * v1) & 0x3D6);
  v4 = ((v3 & 0x801F) << ((((v2 + 105) ^ 0x5E) + 52) ^ (3 * ((v2 + 105) ^ 0x5E)) ^ 0xA7u)) & (v3 ^ 0xC18651E) ^ v3 & 0x801F;
  v5 = ((2 * (v3 ^ 0x1C996538)) ^ 0x2393CA4E) & (v3 ^ 0x1C996538) ^ (2 * (v3 ^ 0x1C996538)) & 0x91C9E526;
  v6 = (v5 ^ 0x81882505) & (4 * v4) ^ v4;
  v7 = ((4 * (v5 ^ 0x90482521)) ^ 0x4727949C) & (v5 ^ 0x90482521) ^ (4 * (v5 ^ 0x90482521)) & 0x91C9E524;
  v8 = (v7 ^ 0x1018403) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x90C86123)) ^ 0x1C9E5270) & (v7 ^ 0x90C86123) ^ (16 * (v7 ^ 0x90C86123)) & 0x91C9E520;
  return (*(v0 + 8 * ((15 * ((v3 ^ (2 * ((((v9 ^ 0x8141A507) << 8) & 0x91C9E500 ^ 0x1C1C027 ^ (((v9 ^ 0x8141A507) << 8) ^ 0xC9E52700) & (v9 ^ 0x8141A507)) & (((v9 ^ 0x10884007) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x10884007) & (v8 << 8) ^ v8))) != -1924104161)) ^ (v2 + 522215529))))();
}

uint64_t sub_10001B9A0@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 ^ 0x249));
  v9 = *(v6 + 8 * (a1 ^ 0x24B));
  v10 = *v8;
  v11 = *v9;
  v22[0] = **v9 - 30;
  v22[1] = v11[1] - 30;
  v22[2] = v11[2] - 30;
  v22[3] = v11[3] - 30;
  v22[4] = v11[4] - 30;
  v22[5] = v11[5] - 30;
  v22[6] = v11[6] - 30;
  v22[7] = v11[7] - 30;
  v22[8] = v11[8] - 30;
  v22[9] = v11[9] - 30;
  v22[10] = v11[10] - 30;
  v22[11] = v11[11] - 30;
  v22[12] = v11[12] - 30;
  v22[13] = v11[13] - 30;
  v22[14] = v11[14] - 30;
  v22[15] = v11[15] - 30;
  v22[16] = v11[16] - 30;
  v22[17] = v11[17] - 30;
  v22[18] = v11[18] - 30;
  v22[19] = v11[19] - 30;
  v12 = *v9;
  v22[20] = v12[20] - 30;
  v22[21] = v12[21] - 30;
  v22[22] = v12[22] - 30;
  v22[23] = v12[23] - 30;
  v22[24] = v12[24] - 30;
  v22[25] = v12[25] - 30;
  v22[26] = v12[26] - 30;
  v22[27] = v12[27] - 30;
  v22[28] = v12[28] - 30;
  v22[29] = v12[29] - 30;
  result = (*(v4 + 8 * (a1 + 1428)))(v10, v22, v2);
  if (result == 1102)
  {
    v15 = *v8;
    v16 = *(v6 + 8 * (v5 - 630));
    v17 = *(v16 - 4);
    v23[0] = 101 * *v17 + 126;
    v23[1] = 101 * v17[1] + 126;
    v23[2] = 101 * v17[2] + 126;
    v23[3] = v17[3] * (v5 - 126) + 126;
    v23[4] = 101 * v17[4] + 126;
    v23[5] = 101 * v17[5] + 126;
    v23[6] = 101 * v17[6] + 126;
    v23[7] = 101 * v17[7] + 126;
    v23[8] = 101 * v17[8] + 126;
    v23[9] = 101 * v17[9] + 126;
    v23[10] = 101 * v17[10] + 126;
    v23[11] = 101 * v17[11] + 126;
    v23[12] = 101 * v17[12] + 126;
    v23[13] = 101 * v17[13] + 126;
    v23[14] = 101 * v17[14] + 126;
    v23[15] = 101 * v17[15] + 126;
    v23[16] = 101 * v17[16] + 126;
    v18 = *(v16 - 4);
    v23[17] = 101 * v18[17] + 126;
    v23[18] = 101 * v18[18] + 126;
    v23[19] = 101 * v18[19] + 126;
    v19 = *(v4 + 8 * ((v5 + 109) ^ (4 * ((*(v4 + 8 * (v5 ^ 0xA94)))(v15, v23, v2) == 0))));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v21 = -1982131728;
  }

  else
  {
    v14 = (v5 - 467) | 0x240;
    *(v7 + 356) |= v14 - 838;
    *(v7 + 56) = 263373551;
    result = (*(v4 + 8 * (v5 ^ 0xA25)))(*v2, v7 + 344, v7 + 348, v7 + 352, v3);
    v20 = *(v1 + 16);
    **v1 = *v2;
    *v20 = ((v14 - 173) | 0x40) + *v3 - ((2 * *v3) & 0xA37ED9E4) - 775984625;
    v21 = 1982089928;
  }

  *(v1 + 28) = v21;
  return result;
}

uint64_t sub_10001BD7C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  *a24 = a40 + 1;
  *(v42 + 1056) = *a3 - a14;
  v45 = v40 - 1726983547 - a14;
  *(v44 - 128) = v45 - 2;
  *(v44 - 112) = (v40 + 1336540045) ^ a14;
  *(v44 - 108) = v40 - 1726983547 + a14;
  *(v42 + 1080) = a13;
  *(v44 - 136) = a14;
  *(v44 - 152) = v45 + 108;
  v46 = (*(v41 + 8 * (v43 + v40 - 750 + 1550)))(v44 - 152);
  return (*(v41 + 8 * *(v44 - 132)))(v46);
}

uint64_t sub_10001BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = 210068311 * ((2 * ((v74 - 200) & 0x4621A000) - (v74 - 200) + 970874878) ^ 0xCB55F016);
  *(v74 - 184) = 16096 - v76;
  *(v74 - 180) = ((v73 ^ 0x4A5) + 434) ^ v76;
  *(v74 - 192) = &a70;
  v77 = (*(v75 + 8 * ((v73 ^ 0x4A5) + 902)))(v74 - 200);
  v78 = (a70 << 24) | (a71 << 16) | a73 | (a72 << (v73 ^ 0x42));
  LODWORD(STACK[0x354]) = v78 - 2 * (v78 & 0x3E98D19F ^ a73 & 0xA) + 1050202517;
  return (*(a65 + 8 * ((((STACK[0x33C] & 8) == 0) | (16 * ((STACK[0x33C] & 8) == 0))) ^ v73 ^ 0x4A5)))(v77);
}

uint64_t sub_10001BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v66 == 8 || v66 == 5)
  {
    LOBYTE(STACK[0x4EF]) = LOBYTE(STACK[0x1787]) ^ 0xC7;
    LOBYTE(STACK[0x4EE]) = LOBYTE(STACK[0x1786]) ^ 0xC7;
    LOBYTE(STACK[0x4ED]) = LOBYTE(STACK[0x1785]) ^ 0xC7;
    LOBYTE(STACK[0x4EC]) = LOBYTE(STACK[0x1784]) ^ 0xC7;
    LOBYTE(STACK[0x4EB]) = LOBYTE(STACK[0x1783]) ^ 0xC7;
    LOBYTE(STACK[0x4EA]) = LOBYTE(STACK[0x1782]) ^ 0xC7;
    LOBYTE(STACK[0x4E9]) = LOBYTE(STACK[0x1781]) ^ 0xC7;
    LOBYTE(STACK[0x4E8]) = LOBYTE(STACK[0x1780]) ^ 0xC7;
    LOBYTE(STACK[0x4E7]) = LOBYTE(STACK[0x177F]) ^ 0xC7;
    LOBYTE(STACK[0x4E6]) = LOBYTE(STACK[0x177E]) ^ 0xC7;
    LOBYTE(STACK[0x4E5]) = LOBYTE(STACK[0x177D]) ^ 0xC7;
    LOBYTE(STACK[0x4E4]) = LOBYTE(STACK[0x177C]) ^ 0xC7;
    LOBYTE(STACK[0x4E3]) = LOBYTE(STACK[0x177B]) ^ 0xC7;
    LOBYTE(STACK[0x4E2]) = LOBYTE(STACK[0x177A]) ^ 0xC7;
    LOBYTE(STACK[0x4E1]) = LOBYTE(STACK[0x1779]) ^ 0xC7;
    LOBYTE(STACK[0x4E0]) = LOBYTE(STACK[0x1778]) ^ 0xC7;
  }

  v69 = (*(v68 + 8 * (v67 + 199)))(LODWORD(STACK[0x340]), v66, a18 ^ 0x6EF10D95u, LODWORD(STACK[0x354]) ^ 0x3E98D195u, &STACK[0x4E0], STACK[0x380], LODWORD(STACK[0x3C4]), &STACK[0x4F0]);
  v70 = (v69 ^ 0xFFFFD1FC) + 2142469884 + ((2 * v69) & 0xFFFFA3F8);
  v71 = (*(a66 + 8 * (v67 + 183)))(*a33, STACK[0x380], LODWORD(STACK[0x3C4]));
  return (*(a66 + 8 * (((2 * ((((v67 - 1752) ^ (v70 == 2142458104)) & 1) == 0)) & 0xDF | (32 * (((v67 + 40) ^ ~(v70 == 2142458104)) & 1))) ^ (v67 - 13))))(v71);
}

uint64_t sub_10001C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v48 = *(a45 + 56);
  *(a45 + 56) = v48 + 1;
  return (*(v47 + 8 * ((((v48 - 263373556) < 0xFFFFFFFA) * ((v46 - 1713427048) & 0xEFFBDB9F ^ (v45 + 2045))) ^ (v46 - 1939))))();
}

uint64_t sub_10001C250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62, uint64_t a63)
{
  STACK[0x2F8] = a62;
  v65 = *(v63 + 68) & ((a8 + 1901) ^ 0x7B2u);
  *(v63 + v65) = 71;
  return (*(v64 + 8 * ((1239 * (v65 > 0x37)) ^ a8)))(a1, a2, a3, a4, a62, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10001C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, int a35, int a36)
{
  if (v38 - (v36 + 1878937944) < ~(v36 + 1878937944))
  {
    v41 = 0;
  }

  else
  {
    v41 = -1;
  }

  v42 = 1082434553 * ((0x65D8DCCA9ACFE7C7 - ((v40 - 152) | 0x65D8DCCA9ACFE7C7) + a31) ^ 0x2A7BED42FE77EEB2);
  *(v40 - 152) = a32 - v42;
  *(v40 - 136) = v42;
  STACK[0x5B8] = 3 - v42;
  *(v40 - 112) = v42 ^ 0xDFABAF92;
  *(v40 - 108) = a36 + v42;
  STACK[0x5A0] = (v41 + v39 + 1 + a34) - v42;
  *(v40 - 128) = (a36 | 0x10) - v42;
  v43 = (*(v37 + 17384))(v40 - 152);
  return (*(v37 + 8 * *(v40 - 132)))(v43);
}

uint64_t sub_10001C3F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v20 = (a4 ^ 0x40B) - 1014;
  v21 = 1785193651 * ((((v19 - 168) | 0x8A2BD371) + (~(v19 - 168) | 0x75D42C8E)) ^ 0xA69C8898);
  *(v19 - 168) = a4 - v21 + 794;
  *(v19 - 152) = v21 ^ a18;
  *(v19 - 160) = a3;
  v22 = (*(v18 + 8 * (a4 ^ 0x864)))(v19 - 168);
  v23 = STACK[0x2A8];
  *(&STACK[0x264] + (v23 & 0x3F)) = 71;
  return (*(v18 + 8 * ((((v23 & 0x3Fu) > 0x37) * (v20 ^ 0x7F5)) ^ a4)))(v22);
}

uint64_t sub_10001C524()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_10001C54C@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3)
{
  v7 = (a3 + (v4 & 0x3F));
  *(v7 - 1) = v6;
  *v7 = v6;
  return (*(v5 + 8 * ((((a1 & 0x30) == 16) * (v3 ^ 0x169)) ^ v3)))();
}

uint64_t sub_10001C654(uint64_t result)
{
  v1 = 1082434553 * ((result - 2 * (result & 0xC1DEFD2D12ABA9EELL) - 0x3E2102D2ED545612) ^ 0x7182335A89EC5F64);
  v2 = *(result + 24) + 1082434553 * ((result - 2 * (result & 0x12ABA9EE) + 313240046) ^ 0x89EC5F64);
  v3 = *(result + 8) + v1;
  v4 = *(result + 32) + v1;
  v5 = v4 >= v3;
  v6 = v4 < v3;
  v7 = !v5;
  if ((*(result + 16) - 1082434553 * ((result - 2 * (result & 0x12ABA9EE) + 313240046) ^ 0x89EC5F64)))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v2 = *(result + 44) - 1082434553 * ((result - 2 * (result & 0x12ABA9EE) + 313240046) ^ 0x89EC5F64);
  }

  *(result + 20) = v2 ^ (*result + 1082434553 * ((result - 2 * (result & 0x12ABA9EE) + 313240046) ^ 0x89EC5F64));
  return result;
}

void sub_10001C6E8(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1785193651 * ((2 * (a1 & 0x44D41073) - a1 - 1154748532) ^ 0x979CB464));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_10001C89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4 ^ 0x1E8;
  v6 = v3 - (**(a2 + 8) == ((v4 ^ 0xE8) - 4));
  v7 = ((v4 ^ 0x1E8) + 1828715159) & 0xD7E9FAFC;
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 922138987;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v8 = *(a1 + 96) + 528;
  v9 = *(a2 + 8) + (*(a2 + 4) - v6);
  v10 = 1388665877 * (&v15 ^ 0x8DAD62EC);
  v19 = v10 + v5 + 941;
  v17 = v6 - v10 - 1526926733;
  v15 = v8;
  v18 = v9;
  (*(a3 + 8 * (v5 ^ 0xB8B)))(&v15);
  v13 = v16;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v6);
  return v13 ^ (v7 - 1222975949);
}

uint64_t sub_10001C9D4()
{
  v6 = (v3 + v0);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((29 * (((v2 - 1116) ^ 0xD1) == (v1 & 0x30))) ^ (v2 - 1116))))();
}

uint64_t sub_10001CA90()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v0 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5) ^ 0xC7;
  return (*(v5 + 8 * ((1532 * (v7 == 0)) ^ (v4 - 92))))();
}

uint64_t sub_10001CB70(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = v6 - a3;
  if (a2 > v6 - a3)
  {
    v8 = a2;
  }

  return (*(v7 + 8 * ((28 * (a6 + 191 + v8 + ((a6 - 1101) ^ 0xFFFFFAF5) < 0x24)) ^ a6)))();
}

uint64_t sub_10001CBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = *(*(a2 + 8) + v9);
  v10 = *(a2 + 4) + v6;
  v11 = v4 + v9 + 1 < v10;
  if (v5 + v9 - 1370 > v7 != v10 < v4)
  {
    v11 = v10 < v4;
  }

  return (*(a3 + 8 * ((v11 * v8) ^ v5)))();
}

uint64_t sub_10001CC6C@<X0>(int a1@<W6>, int a2@<W7>, uint64_t a3@<X8>)
{
  v10 = v9 + a1 + 683;
  *(*(a3 + 8) + 4 * (v6 + v4)) = ((v10 ^ a1) + v5) ^ v8;
  return (*(v3 + 8 * ((((v10 & a2) + 633) * (v7 == 0)) ^ v9)))();
}

uint64_t sub_10001CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 1361651671 * ((((v66 - 200) | 0x87937B9C) - ((v66 - 200) & 0x87937B9C)) ^ 0x54B18B10);
  *(v66 - 200) = v65 - v68 + 213;
  *(v66 - 176) = v68 ^ 0x28DBA722;
  *(v66 - 184) = &STACK[0x2B4];
  *(v66 - 192) = &STACK[0x410];
  *(v66 - 168) = 0;
  v69 = (*(v67 + 8 * (v65 ^ 0x964)))(v66 - 200);
  return (*(a65 + 8 * (((*(v66 - 172) != 3 * (v65 ^ 0x1CE) + 1982089487) * ((v65 ^ 0xE4) - 247)) ^ v65)))(v69);
}

uint64_t sub_10001CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v6 = (((v4 + 412) - 1335) ^ v3) + a3;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(a2 + 8 * ((1324 * ((a3 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

void sub_10001CE10(int a1@<W8>, uint64_t a2, int a3, unsigned int a4)
{
  v7 = 1785193651 * (((&a2 | 0xA8AD4414) - (&a2 & 0xA8AD4414)) ^ 0x841A1FFC);
  a3 = (a1 + 1343) ^ v7;
  a4 = (v6 ^ ((v6 ^ 0xDFCAFF08) + 1044731364) ^ ((v6 ^ 0xB25A32BB) + 1406507089) ^ ((v6 ^ 0xFFFFE6FF) + 510675989) ^ 0x720B24FA ^ ((((a1 - 170) | 0x690) ^ 0x6D90D326) + (v6 ^ 0x8C1F7E58))) - v7;
  a2 = v5;
  (*(v4 + 8 * (a1 + 1816)))(&a2);
  sub_1000404F4();
}

uint64_t sub_10001CF0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, __int16 a24, char a25, __int16 a26, char a27, uint64_t a28, char a29)
{
  v34 = 1082434553 * ((v33 - 160) ^ 0x9B47F68A);
  STACK[0x2F0] = &a25;
  STACK[0x2E0] = &a23;
  STACK[0x2F8] = &a27;
  *(v33 - 148) = v34 + a3 - 1259944826;
  *(v33 - 136) = v34 + v32 + 1141;
  STACK[0x2D0] = &a29;
  STACK[0x300] = v29;
  HIDWORD(a10) = a3;
  v35 = (*(v30 + 8 * (v32 ^ 0x977)))(v33 - 160);
  return (*(v30 + 8 * ((112 * ((((v32 + 89) ^ (*(v33 - 152) == ((v32 - 80) ^ (v31 - 163)))) & 1) == 0)) ^ v32)))(v35, 772660226, HIDWORD(a10), 2920143874, 2337801697, 2116205490, 2178760767, 1957165361, a9, a10);
}

uint64_t sub_10001D0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x200];
  v71 = STACK[0x364];
  v72 = 1563904627 * ((v69 - 200 - 2 * ((v69 - 200) & 0x6FBD40B1) + 1874673841) ^ 0x4672F78D);
  *(v69 - 184) = a15;
  *(v69 - 176) = a44;
  *(v69 - 152) = -1563904627 * ((v69 - 200 - 2 * ((v69 - 200) & 0x6FBD40B1) + 1874673841) ^ 0x4672F78D) + 75991345 * v71 + 1153423787;
  *(v69 - 144) = v70;
  *(v69 - 160) = a43;
  *(v69 - 200) = &STACK[0x3B0];
  *(v69 - 168) = (v66 ^ 0xF9CFFF7F) - v72 + v67 + ((v65 + 1744657058) & 0x9802A657) + 519423860;
  LOBYTE(STACK[0x1828]) = -111 - 115 * ((v69 + 56 - 2 * ((v69 + 56) & 0xB1) - 79) ^ 0x8D);
  *(v69 - 192) = v65 - v72 - 960;
  v73 = (*(a4 + 8 * (v65 ^ 0xDC5)))(v69 - 200);
  v74 = *(v69 - 164);
  LODWORD(STACK[0x3A8]) = v74;
  return (*(a65 + 8 * (((v74 == v68) * (((v65 - 704) | 0x501) ^ 0x7A9)) ^ v65)))(v73);
}

uint64_t sub_10001D1DC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  v5 = v4 - 922139137 + 25 * (v3 ^ 0x4C8) == (((v3 ^ 0x759) - 1989200825) & 0x7690CCEF) - 1230;
  return (*(v2 + 8 * (((4 * v5) | (8 * v5)) ^ v3 ^ 0x759)))();
}

void sub_10001D2C4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = v6 ^ 0x1B3;
  a5 = v6 + 1082434553 * ((&a3 + 1138028876 - 2 * (&a3 & 0x43D4F14C)) ^ 0xD89307C6) + 1113;
  a3 = v7;
  a4 = a1;
  (*(v5 + 8 * (v6 + 2009)))(&a3);
  *(v7 + 4) = ((2 * v8) ^ 0x6DED715A) - *(v7 + 4);
  sub_100028394();
}

uint64_t sub_10001D448()
{
  v2 = *(v1 + 16448);

  return v2(v0);
}

uint64_t sub_10001D50C()
{
  v4 = 131 * (v0 ^ 0x139);
  *(*(v2 + 96) + 1428) = 32;
  v5 = 742307843 * ((v3 - 128) ^ 0x5D7C7F7A);
  *(v3 - 108) = -990918456 - v5;
  *(v3 - 128) = v4 - v5 - 473375105;
  *(v3 - 120) = v3 - 228;
  v6 = (*(v1 + 8 * (v4 ^ 0xD25)))(v3 - 128);
  return (*(v1 + 8 * ((110 * (*v2 - 57203210 + (*(v3 - 160) & (v4 ^ 0x59Eu)) < ((117 * (v4 ^ 0x5A4)) ^ 0xFFFFFD89))) ^ v4)))(v6, 177286567);
}

uint64_t sub_10001D530@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v59 = *(v57 + a2 * a1 + 36);
  LODWORD(STACK[0x234]) = v59;
  v60 = v59 - 2061319886;
  v62 = v60 > ((v56 + 287) | 0x452) + 808441628 || v60 < a56;
  return (*(v58 + 8 * ((1577 * v62) ^ v56)))();
}

uint64_t sub_10001D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 - 200) = v66 - 1361651671 * ((((v67 - 200) ^ 0x3E6A8167 | 0xFB1180DC) - (((v67 - 200) ^ 0x3E6A8167) & 0xFB1180DC)) ^ 0x1659F137) + 1106177862;
  (*(v68 + 8 * (v66 + 1982134138)))(v67 - 200);
  if (((v65 - v66) | (v66 - v65)) >= 0)
  {
    v69 = 53;
  }

  else
  {
    v69 = 54;
  }

  *(v67 - 184) = &STACK[0x33C];
  *(v67 - 192) = v66 + 1982132689 - 1564307779 * ((v67 - 200) ^ 0x970DCC13);
  LOBYTE(STACK[0x1800]) = (((((v66 - 23) & 0xDE) + 57) ^ v66) + v69) ^ (67 * ((v67 + 56) ^ 0x13));
  *(v67 - 200) = &STACK[0x340];
  v70 = (*(a65 + 8 * (v66 + 1982134197)))(v67 - 200);
  return (*(a65 + 8 * (((STACK[0x380] != 0) * (((v66 + 788668137) & 0x4722D7DE ^ 0x6D8) + 1704)) ^ (((v66 + 788668137) & 0x4722D7DE) - 997))))(v70);
}

void sub_10001D6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20)
{
  v24 = 1785193651 * ((((v23 - 144) | 0x533E8A25) - (v23 - 144) + ((v23 - 144) & 0xACC175D8)) ^ 0x7F89D1CD);
  *(v23 - 136) = v24 + v21 - 225;
  *(v23 - 128) = a20;
  *(v23 - 120) = a18 - v24 + 23 * (v21 ^ 0x3DE) - 36619198;
  *(v23 - 144) = v22;
  (*(v20 + 8 * (v21 ^ 0xBB6)))(v23 - 144);
  JUMPOUT(0x10000328CLL);
}

uint64_t sub_10001D894@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v11 = v6 - 1;
  *(a5 + v11) = *(a1 + v11) ^ ((v11 & 0xF) * (a2 - 109)) ^ *(*(a4 + 8 * v7) + (v11 & 0xF) - 8) ^ *(*(a4 + 8 * v8) + (v11 & 0xF) - 10) ^ *((v11 & 0xF) + *(a4 + 8 * v9) + 3) ^ 0xC7;
  return (*(a3 + 8 * (((v11 == 0) * v10) ^ a2)))();
}

uint64_t sub_10001D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v41 = (*(v38 + 8 * (a12 + 1525)))(&a37, 0);
  (*(v38 + 8 * (a12 + 1515)))(v41);
  *a31 = (*(v38 + 8 * (a12 + 1515)))();
  v37[1] = *a31 + ((1664525 * (*v37 ^ (*v37 >> 30))) ^ v37[1]);
  *(v40 - 144) = 2 - a29;
  v42 = a12 - 8899591 - a29;
  *(v40 - 152) = v42 + 90;
  *(v40 - 112) = (a12 - 542397196) ^ a29;
  *(v40 - 108) = a12 - 8899591 + a29;
  *(v39 + 32) = a26;
  *(v40 - 136) = a29;
  *(v40 - 128) = v42 + 49;
  v43 = (*(v38 + 8 * ((a12 + 1027) ^ 0xEDC)))(v40 - 152);
  return (*(v38 + 8 * *(v40 - 132)))(v43);
}

uint64_t sub_10001DA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, char *a18, int a19, unsigned int a20)
{
  a17 = a13;
  a18 = &a10;
  a20 = v22 + 89 + 210068311 * (&a17 ^ 0xF28BAFE8);
  (*(v20 + 8 * (v22 + 1495)))(&a17);
  a20 = v22 + 89 + 210068311 * (&a17 ^ 0xF28BAFE8);
  a17 = a13;
  a18 = &a16;
  (*(v20 + 8 * (v22 ^ 0xAE9)))(&a17);
  a17 = a13;
  a18 = &a12;
  a20 = v22 + 89 + 210068311 * ((((&a17 | 0xA4FB9AEA) ^ 0xFFFFFFFE) - (~&a17 | 0x5B046515)) ^ 0xA98FCAFD);
  (*(v20 + 8 * (v22 ^ 0xAE9)))(&a17);
  HIDWORD(a18) = v22 + 1037613739 * ((&a17 & 0x46CD75C1 | ~(&a17 | 0x46CD75C1)) ^ 0x6830A741) + 219;
  a17 = a13;
  v23 = (*(v20 + 8 * (v22 ^ 0xA0A)))(&a17);
  return (*(v20 + 8 * ((469 * (a18 == ((v22 - v21) ^ 0x98D0235D))) ^ v22)))(v23);
}

void sub_10001DB68(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) - 2116613;
  v3 = *(a1 + 12) - v1 - 1960985018;
  v4 = v2 < 0xA1DE6EC9;
  v5 = v2 > v3;
  if (v3 < 0xA1DE6EC9 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_10001DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 128) = v19 - ((v20 - 608038158 - 2 * ((v20 - 128) & 0xDBC21372)) ^ 0x4085E5F8) * v18 + 1173;
  *(v20 - 104) = &a17;
  *(v20 - 120) = a14;
  v21 = (*(v17 + 8 * (v19 + 1525)))(v20 - 128);
  return (*(v17 + 8 * ((239 * ((((v19 ^ 0x45) + 1) ^ (((v19 - 623) | 0x280u) + *(v20 - 112) - 1112916077 < 0xD009CAAE)) & 1)) ^ v19)))(v21);
}

uint64_t sub_10001DD48@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W8>)
{
  v11 = v9 < v8;
  v12 = *(a4 + v5);
  v13 = v5 + 1;
  *(a2 + a5) = v12 + ~(((v6 ^ a3) + 118) & (2 * v12)) - 56;
  if (v11 == v13 > v7 + 24)
  {
    v11 = v13 + v8 < v9;
  }

  return (*(v10 + 8 * ((v11 * a1) ^ v6)))();
}

uint64_t sub_10001DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = ((v68 - 536925971) & 0x2000D539) + a67 - 1792692560;
  v71 = ((v67 - 716538181) < 0x37246AB8) ^ (v70 < ((v68 - 169) ^ 0x372468D1u));
  v72 = v70 < v67 - 716538181;
  if (v71)
  {
    v72 = (v67 - 716538181) < 0x37246AB8;
  }

  return (*(v69 + 8 * ((13 * v72) | v68)))();
}

uint64_t sub_10001DE38(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  HIDWORD(v39) = HIDWORD(a11) + 952440864;
  HIDWORD(a18) = (v34 - 2030567720) & 0x83992FEB;
  v37.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v37.i64[1] = 0xC7C7C7C7C7C7C7C7;
  LODWORD(v39) = v34 + 65796956;
  return sub_10002BAD4(v37, vdupq_n_s32(0x76244ACAu), vdupq_n_s32(0x76244AC8u), a1, a2, (v36 - 228), a4, a5, 97, a7, a8, a9, a10, a11, a12, a13, a14, a15, v39, a17, a18, v35 - 16, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_10001DF18(uint64_t result)
{
  v1 = 1388665877 * ((-2 - ((~result | 0xC4042FC552976C84) + (result | 0x3BFBD03AAD68937BLL))) ^ 0xF17EBF8ADF3A0E68);
  v2 = *(result + 36) ^ v1;
  v3 = *(result + 32) - v1;
  v4 = *result - v1;
  v5 = *(result + 24) ^ v1;
  v6 = *(result + 8) - v1;
  v7 = *(result + 12) + v1;
  v8 = v5 == v4;
  v9 = v5 > v4;
  v10 = v8;
  if (v2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v7 = v3;
  }

  *(result + 20) = v7 ^ v6;
  return result;
}

void sub_10001DFE8(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (143681137 * ((a1 - 1108669275 - 2 * (a1 & 0xBDEB0CA5)) ^ 0xDCB38775));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001E0BC@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int32x4_t a6@<Q4>, int8x16_t a7@<Q5>)
{
  v13 = v12 + 4 * v10;
  a7.i64[0] = *(v13 + 4);
  a7.i32[2] = *(v13 + 12);
  v14 = vextq_s8(a2, a7, 0xCuLL);
  v15 = a7;
  v15.i32[3] = *(v12 + 4 * (v10 + 4));
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a4), vandq_s8(v14, a3)), 1uLL), *(v13 + 1588));
  v14.i32[0] = *(v8 + 4 * (*(v13 + 4) & v7));
  v14.i32[1] = *(v8 + 4 * (*(v13 + 8) & 1));
  v14.i32[2] = *(v8 + 4 * (*(v13 + 12) & 1));
  v14.i32[3] = *(v8 + 4 * (v15.i8[12] & 1));
  *v13 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a5)), a6), v14);
  return (*(v11 + 8 * (((v10 == 220) * v9) ^ a1)))();
}

void sub_10001E124(uint64_t a1)
{
  v1 = 1563904627 * ((~a1 & 0x93770F27 | a1 & 0x6C88F0D8) ^ 0xBAB8B81B);
  v2 = *(a1 + 8) + v1;
  v3 = *(a1 + 32) + v1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48) + v1;
  v7 = 50899313 * ((2 * (v9 & 0x67B52A88) - v9 + 407557489) ^ 0xD02B1127);
  v13 = *(a1 + 56);
  v14 = v4;
  v9[0] = v5;
  v9[1] = v13;
  v15 = v7 + 389726147 * v6 + 243946723;
  v11 = v3 - v7 + 941517044;
  v12 = v7 ^ (v2 + 1421512103);
  v8 = *(&off_1000610D0 + v2 - 231);
  (*(v8 + 8 * (v2 + 1790)))(v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001E294()
{
  v7 = v2 - 1388665877 * (&v7 ^ 0x8DAD62EC) + v3 + 162;
  v8 = v6;
  (*(v1 + 8 * (v2 + v3 + 1419)))(&v7);
  return v4 ^ v0;
}

uint64_t sub_10001E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v48 = (((v46 ^ 0x4D41E1EE) - 1296163310) ^ ((v46 ^ 0x394C7F4B) - 961314635) ^ ((v46 ^ 0x229D46D) - 36295789)) + (((LODWORD(STACK[0x49C]) ^ 0xE974B427) + 378227673) ^ ((LODWORD(STACK[0x49C]) ^ 0x7648EBD9) - 1984490457) ^ ((((v45 - 1994) | 0x105) ^ 0x16E7EBDF) + (LODWORD(STACK[0x49C]) ^ 0xE9181536))) - 330787440;
  *(a45 + 52) = ((v48 % 0x2710) ^ 0x6CFFD2FE) - 71930368 + ((2 * (v48 % 0x2710)) & 0x25FC);
  v49 = STACK[0x4A4];
  STACK[0x358] -= 1616;
  LODWORD(STACK[0x3AC]) = v49;
  return (*(v47 + 8 * ((1078 * (v49 == 1982089928)) ^ (v45 - 1733))))();
}

uint64_t sub_10001E46C@<X0>(int a1@<W8>)
{
  v4 = ((v1 + 1216) ^ 0x7AA67018) + a1;
  v6 = v4 > 632525858 || v4 < v2;
  return (*(v3 + 8 * ((1206 * v6) ^ v1)))();
}

uint64_t sub_10001E564@<X0>(unsigned int a1@<W8>)
{
  v6 = *(&STACK[0x264] + a1 + 72);
  v7 = (((v2 - 1354591839) & 0x50BD6A8F ^ 0xDFB9FF74) & (2 * a1)) + (a1 ^ 0x6FDCFFBC) + v1;
  *(v4 + v7) = v6 ^ 0x8C;
  *(v4 + v7 + 1) = (BYTE1(v6) ^ 0x37) - ((2 * (BYTE1(v6) ^ 0x37)) & 0x8F) - 57;
  *(v4 + v7 + 2) = (BYTE2(v6) ^ 0x3A) - ((2 * (BYTE2(v6) ^ 0x3A)) & 0x8F) - 57;
  *(v4 + v7 + 3) = (HIBYTE(v6) ^ 0x9C) - ((2 * (HIBYTE(v6) ^ 0x9C)) & 0x8F) - 57;
  return (*(v5 + 8 * (((a1 + 4 >= LODWORD(STACK[0x2C0])) * v3) ^ v2)))();
}

uint64_t sub_10001E63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(v23 + 8 * a13))(a14 + a15, 0x100004077774924);
  v24 = (*(v23 + 8 * SHIDWORD(a12)))();
  *v22 = v24;
  return sub_10001E690(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10001E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(*(a13 + 96) + 1568) = 1;
  v15 = *(a13 + 72) == ((v13 + 2099239880) & 0xAAFFFFF7 ^ 0x49C631F4);
  return (*(v14 + 8 * ((4 * v15) | (v15 << 6) | v13)))();
}

void sub_10001E71C(uint64_t a1)
{
  v1 = 1082434553 * ((a1 - 287178545 - 2 * (a1 & 0xEEE200CF)) ^ 0x75A5F645);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_10001E8B0(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -29042;
  a1.n128_u8[2] = -114;
  a1.n128_u8[3] = -114;
  a1.n128_u8[4] = -114;
  a1.n128_u8[5] = -114;
  a1.n128_u8[6] = -114;
  a1.n128_u8[7] = -114;
  a2.n128_u16[0] = -14136;
  a2.n128_u8[2] = -56;
  a2.n128_u8[3] = -56;
  a2.n128_u8[4] = -56;
  a2.n128_u8[5] = -56;
  a2.n128_u8[6] = -56;
  a2.n128_u8[7] = -56;
  return sub_10001E8E4(a1, a2);
}

void sub_10001E928()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 20) - 742307843 * (v0 ^ 0x5D7C7F7A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001EA20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = v7 - a3;
  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  return (*(v8 + 8 * (((((813 * (a6 ^ 0x1A5)) ^ 0xFFFFFC46) + 66 * (a6 ^ 0x1B0)) * ((v10 + 1) > 0x23)) ^ a6)))();
}

uint64_t sub_10001EA88@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 + 1 - v4;
  v10 = v1 + v9;
  v11 = v1 + v8 + 1;
  v12 = v3 + v9;
  v13 = v3 + v8 + 1;
  v14 = v8 + v2 + 2;
  v16 = v13 > v5 && v12 < v7;
  if (v11 > v5 && v10 < v7)
  {
    v16 = 1;
  }

  v19 = v14 > v5 && v14 - v4 < v7 || v16;
  return (*(v6 + 8 * (((((a1 - 1325) | 0x518) - 1286) * (v19 ^ 1)) ^ a1)))();
}

uint64_t sub_10001EE14@<X0>(int a1@<W8>)
{
  v5 = (32 * v2) ^ 0x3260;
  v6 = *(v3 + 4);
  if (v6 + 1225344661 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = -a1;
  }

  *(v3 + 4) = v7 + v6;
  v8 = v1 - 819582694;
  v9 = v8 < (v5 ^ 0x861DEBD5);
  **(v3 + 8) = *(*(v3 + 8) + 4 * a1);
  if (v8 >= (v5 ^ 0x861DEBD5))
  {
    v9 = v8 > 102623510;
  }

  return (*(v4 + 8 * ((1095 * v9) ^ v5)))();
}

uint64_t sub_10001EEB8(uint64_t a1, uint64_t a2, int a3)
{
  *(*(a1 + 96) + 1424) = ((a3 - 410) ^ (v3 + 253)) + *(a2 + 4);
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_10001EFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v25 - 104) = v24;
  *(v25 - 112) = (v23 + 1316) ^ (1785193651 * ((((2 * (v25 - 144)) | 0x784F037E) - (v25 - 144) + 1138261569) ^ 0x9090DA57));
  *(v25 - 144) = a13;
  *(v25 - 136) = &a22;
  *(v25 - 128) = &a22;
  *(v25 - 120) = &a16;
  v26 = (*(v22 + 8 * (v23 ^ 0x8A0)))(v25 - 144);
  return sub_10001FC9C(v26);
}

uint64_t sub_10001F0D4()
{
  v8 = v6;
  v7 = v4 - ((&v7 & 0xCEEDFDAE | ~(&v7 | 0xCEEDFDAE)) ^ 0xBCBF60BD) * v2 - 612;
  (*(v1 + 8 * (v4 + 645)))(&v7);
  return v3 ^ v0;
}

uint64_t sub_10001F1FC(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 ^ 0xB5C)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1133)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_10001F27C@<X0>(int a1@<W8>, int8x16_t a2@<Q5>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (v19 + 908);
  v21 = vld1q_dup_f32(v20);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  v24 = (a1 + 361);
  a2.i64[0] = *(a17 + 4);
  a2.i32[2] = *(v19 + 4 * (v24 ^ 0x223));
  v25 = vextq_s8(v21, a2, 0xCuLL);
  v26 = a2;
  v26.i32[3] = *(a17 + 16);
  v27 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v26, vnegq_f32(v23)), vandq_s8(v25, v22)), 1uLL), *(a17 - 908));
  v25.i32[0] = *(v17 + 4 * (*(a17 + 4) & 1));
  v25.i32[1] = *(v17 + 4 * (*(a17 + 8) & 1));
  v25.i32[2] = *(v17 + 4 * (*(v19 + 4 * (v24 ^ 0x223)) & 1));
  v25.i32[3] = *(v17 + 4 * (v26.i8[12] & 1));
  *a17 = veorq_s8(vaddq_s32(vsubq_s32(v27, vandq_s8(vaddq_s32(v27, v27), vdupq_n_s32(0x6C3AB09Eu))), vdupq_n_s32(0x361D584Fu)), v25);
  return (*(v18 + 8 * a1))();
}

uint64_t sub_10001F368()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v0 - v3 + v8 + 1;
  v10 = v0 + v8 + 1;
  v11 = v1 + v8 - v3 + (((v4 - 214) | 0x284u) ^ 0x2C0);
  v12 = v8 + v1 + 4;
  v13 = v2 + ((v4 + 287) ^ 0x233) + v8 - v3;
  v14 = v8 + v2 + 6;
  v16 = v10 > v6 && v9 < v7;
  if (v12 > v6 && v11 < v7)
  {
    v16 = 1;
  }

  v19 = v14 > v6 && v13 < v7 || v16;
  return (*(v5 + 8 * ((55 * v19) ^ v4)))();
}

uint64_t sub_10001F45C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 127 * (v3 ^ 0x311u) - 1652;
  *(v1 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0x8F) - 57;
  return (*(v4 + 8 * ((1550 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_10001F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v23 = (((a21 ^ 0xE2E6E04A) + 488185782) ^ ((a21 ^ 0xCE115658) + 837724584) ^ (((3 * a16 + 1523841957) ^ a21) - 1523842266)) - 1516171260;
  v24 = (((v23 ^ 0x7A9280) - 788944828) ^ v23 ^ ((v23 ^ 0x9DDE49BF) + 1297970045) ^ ((v23 ^ 0x4D25A41F) - 1650024739) ^ ((v23 ^ 0xFFFDBA1C) + 796819680)) != a7;
  return (*(v21 + 8 * (((16 * v24) | (v24 << 7)) ^ (v22 + 21))))(a1, a2, 66);
}

void sub_10001F5B4()
{
  if (v0 == 111680173)
  {
    v2 = 1982089928;
  }

  else
  {
    v2 = -1982131952;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_10001F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30)
{
  *v33 = (v31 - 1074) & 0xC43FC891 ^ v33[623] ^ (v32 - (v31 - 1074) < ~(v31 - 1074));
  v36 = 1082434553 * ((((v35 - 152) | 0x87C7CD906BF473B6) - ((v35 - 152) & 0x87C7CD906BF473B6)) ^ 0x379B03E7F0B3853CLL);
  *(v35 - 152) = a28 - v36;
  *(v35 - 144) = (v30 + 1) - v36;
  *(v35 - 120) = 3 - v36;
  *(v35 - 128) = a29 - v36;
  *(v35 - 136) = v36;
  *(v35 - 112) = (v31 - 542398223) ^ v36;
  *(v35 - 108) = a30 + v36;
  v37 = (*(v34 + 8 * (v31 ^ 0xEDC)))(v35 - 152);
  return (*(v34 + 8 * *(v35 - 132)))(v37);
}

uint64_t sub_10001F6FC(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v13 = a2 > 0xF && (1 - v8 + v3 - v5 + v9) > 0xF && (1 - v8 + v2 - v5 + v9) > 0xF && -v8 - v5 + v4 + v9 + ((v6 - 218859857) & 0xD0B87F7 ^ 0x2C5uLL) >= ((v6 - 868055529) & 0x33BD77CB ^ 0x210uLL);
  return (*(v7 + 8 * ((92 * v13) ^ v6)))();
}

uint64_t sub_10001F824@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v7 = (v5 + 378) - 2130 + v4;
  v8 = *(a1 + v7 - 15);
  v9 = *(a1 + v7 - 31);
  v10 = a2 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), a3)), a4);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), a3)), a4);
  return (*(v6 + 8 * ((54 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v5 + 191))))();
}

uint64_t sub_10001F92C()
{
  v4.i64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v4.i64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v5.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v5.i64[1] = 0xC7C7C7C7C7C7C7C7;
  *(v2 - 610 + ((v1 + 2041128622) & 0x8656DEEE)) = vaddq_s8(vsubq_s8(*(v0 - 1758 + ((v1 + 2041128622) & 0x8656DEEE)), vandq_s8(vaddq_s8(*(v0 - 1758 + ((v1 + 2041128622) & 0x8656DEEE)), *(v0 - 1758 + ((v1 + 2041128622) & 0x8656DEEE))), v4)), v5);
  return (*(v3 + 8 * (v1 ^ 0x471)))();
}

uint64_t sub_10001FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = 4 * a2 - 3688555952;
  v13 = (((*(*(v7 + 8) + v12) ^ 0xC2BF3910) + 1027655408) ^ ((*(*(v7 + 8) + v12) ^ 0xEF040AB7) + 284947785) ^ ((*(*(v7 + 8) + v12) ^ (((a7 + 1799964099) & 0x94B6B6FE) + 1078) ^ 0xAB52F8FD) + 1420623895)) + v11;
  v14 = (((*(*(v8 + 8) + v12) ^ 0xFF8C7C62) + 7570334) ^ ((*(*(v8 + 8) + v12) ^ 0x9C3D16FD) + 1673718019) ^ ((*(*(v8 + 8) + v12) ^ 0xE558A6D1) + 447174959)) + v11;
  v15 = v13 < v10;
  v16 = v13 > v14;
  if (v15 != v14 < v10)
  {
    v16 = v15;
  }

  return (*(v9 + 8 * ((92 * v16) ^ a7)))();
}

uint64_t sub_10001FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char *a17, unsigned int a18)
{
  a18 = 2066391179 * (((&a16 | 0xC3B34444) - (&a16 & 0xC3B34444)) ^ 0x6C94C65C) + 1009;
  a17 = &a11;
  v21 = (*(v19 + 17872))(&a16);
  return (*(v19 + 8 * ((1955 * (a16 == v18)) ^ v20)))(v21);
}

uint64_t sub_10001FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  *(v25 - 112) = (v24 + 1330) ^ (1785193651 * ((~((v25 - 144) | 0x9DFB0387) + ((v25 - 144) & 0x9DFB0387)) ^ 0x4EB3A790));
  *(v25 - 104) = a14;
  *(v25 - 128) = &a22;
  *(v25 - 120) = &a20;
  *(v25 - 144) = v22;
  *(v25 - 136) = &a22;
  v26 = (*(v23 + 8 * (v24 + 1966)))(v25 - 144);
  return sub_10001FC9C(v26);
}

uint64_t sub_100020100@<X0>(int a1@<W8>)
{
  v4 = 1361651671 * ((((v3 - 168) | 0xD44AC328C7800E30) - ((v3 - 168) | 0x2BB53CD7387FF1CFLL) + 0x2BB53CD7387FF1CFLL) ^ 0x7E7B01114A2FEBCLL);
  v5 = a1 + 1562984788 - v4;
  *(v3 - 168) = -1361651671 * ((((v3 - 168) | 0xC7800E30) - ((v3 - 168) | 0x387FF1CF) + 947909071) ^ 0x14A2FEBC);
  *(v3 - 136) = ((a1 + 1562984788) ^ 0x32) - v4;
  *(v3 - 132) = v5 - 95;
  *(v3 - 160) = v4 + 1489555529;
  *(v3 - 144) = v1 - v4;
  *(v3 - 128) = v5;
  *(v3 - 124) = a1 - v4 + 55969896;
  v6 = (*(v2 + 8 * (a1 | 0x894)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 152)))(v6);
}

uint64_t sub_1000201DC(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v19 = a13 | 0xDu;
  v20 = (a3 + v13);
  *v20 = v14;
  v20[1] = v15;
  *(a3 + (v19 ^ 0xF) + v13) = v16;
  v20[3] = a1;
  v21 = 1785193651 * ((((2 * (v18 - 168)) | 0x3A05A524) - (v18 - 168) + 1660759406) ^ 0xB1B5897A);
  *(v18 - 152) = v21 ^ 0x41364BFD;
  *(v18 - 168) = v19 - v21 + 789;
  *(v18 - 160) = a3;
  v22 = (*(v17 + 8 * (v19 + 2143)))(v18 - 168);
  return a2(v22);
}

uint64_t sub_10002030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, unint64_t *))
{
  v27 = (a2 + v24);
  *v27 = v23;
  v27[1] = v25;
  *(a2 + (a7 ^ 0x28) + v24) = v22;
  v27[3] = v26;
  return sub_100023940(a2, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000203B8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v69 = *(v25 + 8 * a6);
  v30 = STACK[0x2B4];
  v31 = STACK[0x2B8];
  v32 = LOBYTE(STACK[0x2C4]);
  if (v32 == 2)
  {
    v35 = (a3 + 11) | 0x203;
    v36 = (v24 + v26 + 243574986);
    v37 = ((*v36 ^ 0xFFFFFFC7) << 24) | ((v36[1] ^ a2) << 16) | ((v36[2] ^ (((v35 - 9) | 4) - 79)) << 8);
    *v28 = (v37 | v36[3] ^ a2) + v29 - 2 * ((v37 | v36[3] ^ a2) & (v29 + 2) ^ (v36[3] ^ a2) & 2);
    v38 = *(v25 + 8 * ((1429 * ((v26 + 243574990) < 0x40)) ^ v35));
    return v38(243574990, v27 + 16, v38, 1650720768, 2067053209, a3, 70924107, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else if (v32 == 1)
  {
    v33 = (v24 + v26 + 243574986);
    v34 = *v33 ^ a2;
    LODWORD(v33) = (((v33[2] ^ a2) << 16) | ((v33[3] ^ 0xFFFFFFC7) << 24)) + (((v33[1] ^ a2) << a24) | v34);
    v28[(((v27 - 243574986) ^ 0xE84A8CAu) >> 2) ^ 0x3A12A32] = v33 + v29 - 2 * (v33 & (v29 + 2) ^ v34 & 2);
    return (*(v25 + 8 * ((828 * ((v26 + 243574990) < 0x40)) ^ (a3 + 1127))))(60893746, 0, 243574986, a1, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    v39 = (((LODWORD(STACK[0x2AC]) ^ 0x90F608C1) + 1862924095) ^ ((LODWORD(STACK[0x2AC]) ^ 0x7C38087A) - 2084046970) ^ ((LODWORD(STACK[0x2AC]) ^ 0x70F437F0) - 1895053296)) + (((LODWORD(STACK[0x2AC]) ^ 0xCB56BA24) + 883508700) ^ ((LODWORD(STACK[0x2AC]) ^ 0x3AEC34BB) - 988558523) ^ ((LODWORD(STACK[0x2AC]) ^ 0x6D80B9D4) - 1837152724)) + 1799390619;
    v40 = (v39 ^ 0xAC2BCEF2) & (2 * (v39 & 0xCD33E8FB)) ^ v39 & 0xCD33E8FB;
    v41 = ((2 * (v39 ^ 0x362CDEA2)) ^ 0xF63E6CB2) & (v39 ^ 0x362CDEA2) ^ (2 * (v39 ^ 0x362CDEA2)) & 0xFB1F3658;
    v42 = v41 ^ 0x9011249;
    v43 = (v41 ^ 0x701E2410) & (4 * v40) ^ v40;
    v44 = ((4 * v42) ^ 0xEC7CD964) & v42 ^ (4 * v42) & 0xFB1F3658;
    v45 = (v44 ^ 0xE81C1040) & (16 * v43) ^ v43;
    v46 = ((16 * (v44 ^ 0x13032619)) ^ 0xB1F36590) & (v44 ^ 0x13032619) ^ (16 * (v44 ^ 0x13032619)) & 0xFB1F3650;
    v47 = v45 ^ 0xFB1F3659 ^ (v46 ^ 0xB1132400) & (v45 << 8);
    v48 = v39 ^ (2 * ((v47 << 16) & 0x7B1F0000 ^ v47 ^ ((v47 << 16) ^ 0x36590000) & (((v46 ^ 0x4A0C1249) << 8) & 0x7B1F0000 ^ 0x60090000 ^ (((v46 ^ 0x4A0C1249) << 8) ^ 0x1F360000) & (v46 ^ 0x4A0C1249))));
    v49 = (((LODWORD(STACK[0x2B0]) ^ 0x21071D90) - 554114448) ^ ((LODWORD(STACK[0x2B0]) ^ 0xDB838E51) + 612135343) ^ ((LODWORD(STACK[0x2B0]) ^ 0x66BEA48A) - 1723769994)) + (((LODWORD(STACK[0x2B0]) ^ 0xFCF298D4) + 51210028) ^ ((LODWORD(STACK[0x2B0]) ^ 0x6F8D70D5) - 1871540437) ^ ((LODWORD(STACK[0x2B0]) ^ 0xF45DF4A) - 256237386)) + 1133740258;
    v50 = (v49 ^ 0xE6ECED20) & (2 * (v49 & 0xF4E0EDB4)) ^ v49 & 0xF4E0EDB4;
    v51 = ((2 * (v49 ^ 0x6EDF600)) ^ 0xE41A3768) & (v49 ^ 0x6EDF600) ^ (2 * (v49 ^ 0x6EDF600)) & 0xF20D1BB4;
    v52 = v51 ^ 0x12050894;
    v53 = (v51 ^ 0xE0001320) & (4 * v50) ^ v50;
    v54 = ((4 * v52) ^ 0xC8346ED0) & v52 ^ (4 * v52) & 0xF20D1BB4;
    v55 = (v54 ^ 0xC0040A80) & (16 * v53) ^ v53;
    v56 = ((16 * (v54 ^ 0x32091124)) ^ 0x20D1BB40) & (v54 ^ 0x32091124) ^ (16 * (v54 ^ 0x32091124)) & 0xF20D1BB0;
    v57 = v55 ^ 0xF20D1BB4 ^ (v56 ^ 0x20011B00) & (v55 << 8);
    LODWORD(STACK[0x2AC]) = v48 ^ 0xC305B302;
    LODWORD(STACK[0x2B0]) = v49 ^ (2 * ((v57 << 16) & 0x720D0000 ^ v57 ^ ((v57 << 16) ^ 0x1BB40000) & (((v56 ^ 0xD20C00B4) << 8) & 0x720D0000 ^ 0x72040000 ^ (((v56 ^ 0xD20C00B4) << 8) ^ 0xD1B0000) & (v56 ^ 0xD20C00B4)))) ^ 0xA8C8ED97;
    v58 = (((v30 ^ 0x4A24155C) - 1243878748) ^ ((v30 ^ 0x6A783EA) - 111641578) ^ ((v30 ^ 0xD0B9A1FD) + 793140739)) + (((LODWORD(STACK[0x2B4]) ^ 0x543326E8) - 1412638440) ^ ((LODWORD(STACK[0x2B4]) ^ 0x5D5BD3A5) - 1566299045) ^ ((LODWORD(STACK[0x2B4]) ^ 0x9552C206) + 1789738490)) - 2121496284;
    v59 = (v58 ^ 0x34E7F46B) & (2 * (v58 & 0xB6E7E572)) ^ v58 & 0xB6E7E572;
    v60 = ((2 * (v58 ^ 0x3963B6AB)) ^ 0x1F08A7B2) & (v58 ^ 0x3963B6AB) ^ (2 * (v58 ^ 0x3963B6AB)) & 0x8F8453D8;
    v61 = v60 ^ 0x80845049;
    v62 = (v60 ^ 0xF000390) & (4 * v59) ^ v59;
    v63 = ((4 * v61) ^ 0x3E114F64) & v61 ^ (4 * v61) & 0x8F8453D8;
    v64 = (v63 ^ 0xE004340) & (16 * v62) ^ v62;
    v65 = ((16 * (v63 ^ 0x81841099)) ^ 0xF8453D90) & (v63 ^ 0x81841099) ^ (16 * (v63 ^ 0x81841099)) & 0x8F8453D0;
    v66 = v64 ^ 0x8F8453D9 ^ (v65 ^ 0x88041100) & (v64 << 8);
    v67 = (((v31 ^ 0x4B95B703) - 1268102915) ^ ((v31 ^ 0x44FC8F8A) - 1157402506) ^ ((v31 ^ 0x93530FC2) + 1823273022)) + (((LODWORD(STACK[0x2B8]) ^ 0x67D35B9D) - 1741904797) ^ ((LODWORD(STACK[0x2B8]) ^ 0x68CAF0B8) - 1758130360) ^ ((LODWORD(STACK[0x2B8]) ^ 0x93239C6E) + 1826382738)) + 1459846020;
    LODWORD(STACK[0x2B4]) = v58 ^ (2 * ((v66 << 16) & 0xF840000 ^ v66 ^ ((v66 << 16) ^ 0x53D90000) & (((v65 ^ 0x7804249) << 8) & 0xF840000 ^ 0xB840000 ^ (((v65 ^ 0x7804249) << 8) ^ 0x4530000) & (v65 ^ 0x7804249)))) ^ 0x32D5758B;
    LODWORD(STACK[0x2B8]) = v67 ^ ((v67 ^ 0xC8FC3CC6) + 697094104) ^ ((v67 ^ 0xB5716680) + 1409389970) ^ ((v67 ^ 0x94FD9977) + 1972202087) ^ ((v67 ^ 0xF7FFCFDF) + 378485967) ^ 0x82B53BA5;
    return v69(1913454592, 4213126744, &STACK[0x264], a1, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }
}

void sub_10002075C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = &a17;
  *(v18 - 104) = v17;
  *(v18 - 144) = a6;
  *(v18 - 136) = &a15;
  *(v18 - 112) = (a1 + 1330) ^ (1785193651 * ((((v18 - 144) | 0x47AEADA9) - ((v18 - 144) & 0x47AEADA9)) ^ 0x6B19F641));
  JUMPOUT(0x1000207C4);
}

void sub_1000207EC()
{
  v3 = *(v0 + 48);
  **(v0 + 8) = v2;
  *v3 = v4;
  *(v0 + 40) = v1;
}

uint64_t sub_1000208D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((41 * (v3 ^ 0x305u)) ^ 0xFFFFFFFFFFFFF91CLL) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((1360 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3 ^ 0x101)))();
}

void sub_100021500()
{
  *v7 = *v2;
  *v6 = v1;
  *v2 = 0;
  *(v2 + 8) = 0xBCFB0D90BCFB0D9;
  v3 = ((v0 - 71909887) & 0x4494354) - 591;
  v4 = *(v2 + 24);
  v5 = *(v2 + 20) | v3;
  *(v2 + 16) = 732517411;
  *(v2 + 20) = v5;
  *(v8 + 28) = v4;
}

uint64_t sub_1000215E4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v25 = a1 + 575;
  v26 = 1388665877 * ((2 * ((v24 - 144) & 0x1FACB1D0) - (v24 - 144) + 1616072237) ^ 0xEDFE2CC1);
  *(v24 - 120) = v26 + a1 + 1225;
  *(v24 - 144) = &a12;
  *(v24 - 128) = v21;
  *(v24 - 132) = v18 - v26 + ((a1 + 575) ^ 0xED83C2A9);
  (*(v19 + 8 * (a1 ^ 0x967)))(v24 - 144);
  a9 = &a14;
  a10 = &a18;
  *(v24 - 136) = (v25 - 723) ^ (1082434553 * ((v24 - 144) ^ 0x9B47F68A));
  *(v24 - 128) = v20;
  *(v24 - 144) = &a9;
  (*(v19 + 8 * (v25 + 1096)))(v24 - 144);
  *(v24 - 112) = &a9;
  *(v24 - 104) = v23;
  *(v24 - 144) = (v25 + 757) ^ (210068311 * ((v24 - 144) ^ 0xF28BAFE8));
  *(v24 - 128) = &a12;
  *(v24 - 120) = &a16;
  *(v24 - 136) = v20;
  v27 = (*(v19 + 8 * (v25 + 1141)))(v24 - 144);
  return (*(v19 + 8 * (((((v25 + 1462915792) & 0xA8CDABAF) - 662) * (v22 != 0)) ^ v25)))(v27);
}

uint64_t sub_10002174C()
{
  *(v5 - 136) = v0 - 1082434553 * ((((2 * v3) | 0xB95A6B3C) - v3 + 592628322) ^ 0x47EAC314) + 1585;
  *(v5 - 128) = v4;
  *(v5 - 112) = v1;
  v6 = (*(v2 + 8 * (v0 + 1937)))(v5 - 136);
  return (*(v2 + 8 * (((*(v5 - 120) - 1112915420 < ((v0 - 1214781413) & 0x48681775 ^ 0xE120F763)) * (((v0 + 479) | 0x100) ^ 0x5DB)) ^ v0)))(v6);
}

uint64_t sub_10002202C(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_100022040@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W7>, unsigned int a4@<W8>)
{
  v11 = HIDWORD(v6) + HIDWORD(v8) + (*(v10 + 4 * v4) ^ a4);
  *(v10 + 4 * a2) = v11 + a4 - (a1 & (2 * v11));
  *(v10 + 4 * v4) = HIDWORD(v11) + a4 - ((HIDWORD(v11) << ((a3 ^ 0xF9) + 68)) & 4);
  return (*(v9 + 8 * (a3 | (57 * (v7 + 1 != v5)))))();
}

uint64_t sub_100022354()
{
  *v2 = **(v3 + 8);
  v5 = ((v1 + 128423718) & 0xF85867D7) - 214 == v0;
  return (*(v4 + 8 * ((v5 | (2 * v5)) ^ v1)))();
}

uint64_t sub_1000223A0()
{
  v4 = (v3 - 1579) | 0x123;
  v5 = v2 + 6 * (v4 ^ 0x148) - 487557176;
  v6 = v5 < 0x84EF3847;
  v7 = v5 > v0 + 1848543172;
  if ((v0 + 1848543172) < 0x84EF3847 != v6)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((123 * v7) ^ v4)))();
}

void sub_100022528(unsigned int *a1)
{
  v7 = v5 + v2;
  v8 = v7 + ((v6 + 878796055) ^ (v1 - 1));
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v2) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  JUMPOUT(0x10002F328);
}

void sub_1000225DC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a3 = v6;
  a4 = v5;
  a5 = v7 + 1082434553 * ((((2 * &a3) | 0x608AD02A) - &a3 + 1337628651) ^ 0x2B029E9F) + 1034;
  (*(a1 + 8 * (v7 ^ 0x88A)))(&a3);
  sub_100042618();
}

uint64_t sub_1000226CC(uint64_t a1, int a2)
{
  v5 = v4 ^ 0x7EC;
  v6 = v3 + 1212718367;
  v7 = v6 < (((v5 + 1015219836) & 0xC37CFF9F) + ((v5 + 486) ^ 0xFF3F4DA8));
  v8 = a2 + 1212718367 < v6;
  if (a2 + 1212718367 < -12626294 != v7)
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((509 * v8) ^ v5)))();
}

uint64_t sub_100022758@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X6>, char a6@<W7>, int a7@<W8>)
{
  v12 = (v11 + 4 * v8);
  v13 = v8 + 1;
  v14 = *(v11 + 4 * v13);
  v15 = v12[397] ^ ((v14 & 0x7FFFFFFE | v7 & 0x80000000) >> 1);
  *v12 = (v15 + a3 - ((v15 << (((a7 + a2) | a6) ^ (a1 - 1))) & a4)) ^ *(a5 + 4 * (v14 & 1));
  return (*(v10 + 8 * (((v13 == 227) * v9) ^ a7)))();
}

uint64_t sub_1000228E8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, unsigned int *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  *a13 = a26 + 1;
  *(v28 - 144) = *a15 - a11;
  *(v27 + 32) = a10;
  *(v28 - 152) = ((a1 + 1561652720) ^ 0x36) - a11;
  *(v28 - 136) = a11;
  *(v28 - 128) = a1 + 1561652720 - a11 + 57;
  *(v28 - 112) = (a1 - 542398223) ^ a11;
  *(v28 - 108) = a1 + 1561652720 + a11;
  v29 = (*(v26 + 8 * (a1 ^ 0xEDC)))(v28 - 152);
  return (*(v26 + 8 * *(v28 - 132)))(v29);
}

uint64_t sub_100022A04@<X0>(int a1@<W8>)
{
  v10 = v3 - 2679381939;
  v12 = ((**v2 - (((a1 - 37) | 0xB0) ^ 0x34 ^ *v1)) ^ v4) + (v9 & (2 * (**v2 - (((a1 - 37) | 0xB0) ^ 0x34 ^ *v1)))) + v5 != v7 || v10 == 0;
  return (*(v8 + 8 * ((v12 * v6) ^ a1)))();
}

uint64_t sub_100022A70@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v6 = (a1 + a2);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((55 * (((v2 + 72) | 0x180u) - 1424 == (v3 & 0xFFFFFFFFFFFFFFF0))) ^ v2)))();
}

uint64_t sub_100022AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 136) = v19 - ((((2 * (v20 - 136)) | 0x5163CCEA) - (v20 - 136) - 682747509) ^ 0xB3F610FF) * v16 + 1304;
  *(v20 - 112) = v17;
  *(v20 - 128) = &a15;
  v21 = (*(v18 + 8 * (v19 ^ 0x988)))(v20 - 136);
  return (*(v18 + 8 * ((1862 * (*(v20 - 120) > (v15 + v19 - 241 + v19 - 2 - 773))) ^ v19)))(v21);
}

uint64_t sub_100022B58@<X0>(int a1@<W8>)
{
  v7 = (v3 - 2);
  v8 = v1 + 2;
  *v7 = (v2 + 2) * (v8 ^ v5);
  *(v7 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v6 + 8 * ((60 * (v4 == 2)) ^ a1)))();
}

uint64_t sub_100022CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v6 ^ 0x51;
  v8 = v6 & (2 * ((((a3 - 46) | 1) ^ 0x86) & a5)) ^ (((a3 - 46) | 1) ^ 0x86) & a5 ^ (2 * ((((a3 - 46) | 1) ^ 0x86) & a5 & 1));
  v9 = (2 * v7) & 0x52 ^ 0x52 ^ ((2 * v7) ^ 0xA4) & v7;
  v10 = v8 ^ (4 * v8) & 0x50 ^ (4 * v8) & v9 ^ 0x52;
  v11 = (a5 ^ (2 * ((16 * v10) & 0x10 ^ v10 ^ ((16 * v10) ^ 0x20) & ((4 * v9) & 0x50 ^ 0x12 ^ ((4 * v9) ^ 0x48) & v9)))) & 0x7F;
  v13 = v11 != 39 && (v11 ^ 0x27u) < 5;
  return (*(v5 + 8 * ((3476 * v13) ^ a3)))();
}

void sub_100022DF4()
{
  v7 = *(v5 + 8);
  v8 = (*(v7 + 4 * (v6 - 1)) ^ v0) >> v1;
  *(v7 + 4 * v3) = v8 + v0 - (((v4 ^ 0xCD) + v2) & (2 * v8));
  JUMPOUT(0x100017E24);
}

uint64_t sub_100022EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 104) = &a15;
  *(v19 - 120) = a14;
  *(v19 - 128) = v18 - (((((v19 - 128) | 0xFFBF7112) ^ 0xFFFFFFFE) - (~(v19 - 128) | 0x408EED)) ^ 0x9B077867) * v16 + 1263;
  v20 = (*(v15 + 8 * (v18 ^ 0xA51)))(v19 - 128);
  return (*(v15 + 8 * (((*(v19 - 112) > (v17 + 1)) * ((v18 - 345015856) & 0x1490855F ^ 0x121)) ^ v18)))(v20);
}

uint64_t sub_100022F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 - 124);
  if (v13 == 2)
  {
    return (*(v10 + 8 * ((230 * (*(v11 - 128) != ((a5 - 79986430) & 0x97C1217F ^ 0x17B))) ^ (a5 + v12))))(1828937465, a10);
  }

  if (v13 != 1)
  {
    JUMPOUT(0x100023098);
  }

  return (*(v10 + 8 * ((887 * (((*(v11 - 128) == 0) ^ (a5 + v12)) & 1)) ^ (a5 + v12))))(1828937465);
}

uint64_t sub_10002318C(char a1, char a2)
{
  v14.val[1].i64[0] = (v6 + 13) & 0xF;
  v14.val[1].i64[1] = (v6 + 12) & 0xF;
  v14.val[2].i64[0] = (v6 + 11) & 0xF;
  v14.val[2].i64[1] = (v6 + 10) & 0xF;
  v14.val[3].i64[0] = (v6 + 9) & 0xF;
  v14.val[3].i64[1] = a1 & 0xF;
  v15.val[0].i64[0] = (v6 + 7) & 0xF;
  v15.val[0].i64[1] = (v6 + 6) & 0xF;
  v15.val[1].i64[0] = (v6 + 5) & 0xF;
  v15.val[1].i64[1] = (v6 + 4) & 0xF;
  v15.val[2].i64[0] = (v6 + 3) & 0xF;
  v15.val[2].i64[1] = (v6 + 2) & 0xF;
  v15.val[3].i64[0] = (v6 + 1) & 0xF;
  v15.val[3].i64[1] = v6 & 0xF;
  v10.i64[0] = 0x5959595959595959;
  v10.i64[1] = 0x5959595959595959;
  v11.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v11.i64[1] = 0xC7C7C7C7C7C7C7C7;
  v14.val[0].i64[0] = ((v7 ^ 0x562) - 1648) & (v6 - 1);
  v14.val[0].i64[1] = (v6 + 14) & 0xF;
  v12.i64[0] = vqtbl4q_s8(v14, xmmword_10005A920).u64[0];
  v12.i64[1] = vqtbl4q_s8(v15, xmmword_10005A920).u64[0];
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v2 + v6 - 16), *(v5 + v14.val[0].i64[0] - 15)), veorq_s8(*(v14.val[0].i64[0] + v3 - 10), *(v14.val[0].i64[0] + v4 - 13))));
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15.val[0], v15.val[0], 8uLL), v11), vmulq_s8(v12, v10)));
  *(v8 + v6 - 16) = vextq_s8(v15.val[0], v15.val[0], 8uLL);
  return (*(v9 + 8 * ((1860 * ((a2 & 0x10) == 16)) ^ v7)))();
}

uint64_t sub_1000232E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27)
{
  v31 = &a27 + v29 + 8;
  *(v31 - 1) = 0xC7C7C7C7C7C7C7C7;
  *v31 = 0xC7C7C7C7C7C7C7C7;
  return (*(v30 + 8 * ((((v27 & 0xFFFFFFFFFFFFFFF0) == 16) * (v28 ^ 0x85F)) ^ v28)))();
}

uint64_t sub_100023368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  v64 = (v60 + 1455789341) & 0x4A9D952F;
  v65 = *a21;
  if ((*a21 & 3) != v64 - 1283 || (v66 = *(&off_1000610D0 + (v60 ^ 0x5E9CDA81)), *v66))
  {
    *a10 = -1982131849;
    return sub_100025A10(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    *v66 = v65;
    **(&off_1000610D0 + (v64 ^ 0x51A)) = 255;
    *v65 |= ~v65[*v65 & 0x3ELL] << 16;
    v65[4] |= ~v65[v65[4] & 0x3ELL] << 16;
    v65[8] |= (v64 ^ 0xFAFC ^ v65[v65[8] & 0x3ELL]) << 16;
    v65[12] |= ~v65[v65[12] & 0x3ELL] << 16;
    v65[16] |= ~v65[v65[16] & 0x3ELL] << 16;
    v65[20] |= ~v65[v65[20] & 0x3ELL] << 16;
    v65[24] |= ~v65[v65[24] & 0x3ELL] << 16;
    v65[28] |= ~v65[v65[28] & 0x3ELL] << 16;
    v65[32] |= ~v65[v65[32] & 0x3ELL] << 16;
    v65[36] |= ~v65[v65[36] & 0x3ELL] << 16;
    v67 = v64 ^ 0x187;
    v65[40] |= ~v65[v65[40] & 0x3ELL] << 16;
    v65[44] |= ~v65[v65[44] & 0x3ELL] << 16;
    v65[48] |= ~v65[v65[48] & 0x3ELL] << 16;
    v65[52] |= ~v65[v65[52] & 0x3ELL] << 16;
    v65[56] |= ~v65[v65[56] & 0x3ELL] << 16;
    v65[60] |= ~v65[v65[60] & 0x3ELL] << 16;
    v68 = (*(v61 + 8 * (v64 + 916)))(&a60, 0, 1024);
    *v62 = &a60;
    return (*(v61 + 8 * (((v63 + v67 - 1878938477 - 475) | 0x469) ^ 0x724 ^ v67)))(v68);
  }
}

uint64_t sub_100023714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, unsigned int a17)
{
  a16 = 12 - -85 * (((&a16 ^ 0x22) - 2 * ((&a16 ^ 0x22) & 0x5E) + 94) ^ 3);
  a17 = 1037613739 * (((&a16 ^ 0x9943AE22) - 2 * ((&a16 ^ 0x9943AE22) & 0xF765CC5E) - 144323490) ^ 0xBF244F03) + v18 + 1341;
  (*(v17 + 8 * (v18 ^ 0xA37)))(&a16);
  return sub_10000A868();
}

uint64_t sub_100023790(uint64_t a1, int a2, int a3)
{
  if (a2 + 1225344400 + (a3 ^ 0x3DB) >= 0)
  {
    a2 = 1844277974 - a2;
  }

  return (*(v3 + 8 * ((1446 * ((a3 ^ 0x3DB) + 1303 + a2 - 922140552 > ((6 * (a3 ^ 0x3F0)) ^ 0xFFFFF8EB))) ^ a3 ^ 0x3DB)))();
}

void sub_10002387C(uint64_t a1@<X8>, uint64_t a2, int a3, unsigned int a4)
{
  v7 = 1785193651 * ((2 * (&a2 & 0x7F5C0190) - &a2 - 2136736146) ^ 0xAC14A586);
  a2 = v4;
  a3 = (v6 + 826) ^ v7;
  a4 = -410236876 - (v7 + v5) - ((((v6 - 1979205042) & 0x75F847EA ^ 0xF621A966) - 2 * v5) & 0xD8F6E3DC);
  (*(a1 + 8 * (v6 ^ 0xB75u)))(&a2);
  JUMPOUT(0x100004588);
}

uint64_t sub_100023940@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, unint64_t *))
{
  v18 = 1785193651 * ((v17 - 168) ^ 0x2CB75BE8);
  *(v17 - 160) = a1;
  *(v17 - 168) = a2 - v18 + 760;
  *(v17 - 152) = v18 ^ 0x41364BFD;
  v19 = (*(v16 + 8 * (a2 ^ 0x846)))(v17 - 168);
  return a16(v19, &STACK[0x274]);
}

uint64_t sub_1000239FC@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x8F) - 57;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

uint64_t sub_100023A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (a5 - 32);
  v11 = *v10;
  v12 = (a4 - 32 + v8);
  *v12 = *(v10 - 1);
  v12[1] = v11;
  return (*(v6 + 8 * (((a3 == 32) * a6) ^ (v7 + v9 + 421))))();
}

uint64_t sub_100023BD4@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 ^ 0x56E;
  v5 = a1 - v1 + ((398 * (v4 ^ 0x499) - 635) | 0x140u) - 1933 < 0x20;
  return (*(v3 + 8 * (((32 * v5) | (v5 << 6)) ^ v4)))();
}

uint64_t sub_100023D98@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = (*(*(v9 + 8) + 4 * v4) ^ v8) + v3;
  *(*(a3 + 8) + 4 * v4) = (v12 - (v6 & (2 * v12)) + v7) ^ a1;
  return (*(v11 + 8 * (((v10 > v4 + 1) * a2) ^ (v5 + 1282))))();
}

uint64_t sub_100024280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16, __int16 a17, char a18, __int16 a19, char a20, char *a21, int a22, unsigned int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a15 = -1577141553;
  v30 = *(a2 + 4);
  v31 = *(a2 + 8);
  v32 = 1082434553 * (((&a21 | 0x4CB224FA) - (&a21 & 0x4CB224FA)) ^ 0xD7F5D270);
  a25 = v32 + v28 + 1063;
  a24 = &a18;
  a23 = v32 + v30 - 1259944826;
  a26 = &a16;
  a27 = &a15;
  a28 = v31;
  a21 = &a20;
  v34 = (*(v29 + 8 * (v28 + 1727)))(&a21);
  return (*(v29 + 8 * (((a22 == 1982089928) * (32 * (v28 ^ 0x196) + 1061)) ^ v28)))(v34, a2);
}

uint64_t sub_100024364@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 < 0x30D7E907;
  v5 = a1 + 1;
  if (v4 == v5 > ((v2 - 944243698) & 0x384803CD ^ 0xFFFFFFFFCF2817B5))
  {
    v4 = v5 + 819456263 < v1;
  }

  return (*(v3 + 8 * ((v4 * (3 * (v2 ^ 0x13E) - 233)) ^ v2)))();
}

uint64_t sub_1000243E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v11 + v10 * v8 + 36);
  v14 = v12 + a2 < ((v6 - a6 - 1276) ^ 0x1DD403Cu) && v12 != v7 + 31 * (v6 ^ 0xE0) - 403;
  return (*(v9 + 8 * ((379 * v14) ^ v6)))();
}

void sub_100024580(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, _BYTE *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = a3 ^ (a4 | (a34 << 32));
  v39 = v36 ^ v38 ^ 0x13F3F9E2D9FFCFF8;
  v40 = ((v35 - 1878938811) + 0x492EA3917BBD9B0DLL) ^ a1;
  v41 = (v40 - ((2 * v40) & 0x16D6FD83EA13D08ELL) + 0xB6B7EC1F509E847) ^ a2;
  v42 = v41 ^ 0xCD42B98B2A525BA6;
  if ((v40 & 0x82EE1687ACCADB62) != 0)
  {
    v43 = ((v35 - 1878938811) + 0x492EA3917BBD9B0DLL) ^ a1;
  }

  else
  {
    v43 = v41 ^ 0xCD42B98B2A525BA6;
  }

  v44 = v43 & (a2 ^ 0x39D638B520A44C1ELL);
  v45 = v44 ^ v39;
  v46 = (v40 - 0x23AF0E14A84208ABLL - 2 * (v40 & 0x5C50F1EB57BDF75FLL ^ a1 & 0xA)) ^ v34;
  v47 = v39 ^ 0xF3A78FA944F894CLL;
  if (v46 != 0x68040451F630332FLL)
  {
    v47 = v44 ^ v39 ^ 0x70C587056BB076B3;
  }

  v48 = (v44 ^ v39 ^ 0xE5C33990D1ADDD1DLL) + 2 * (v44 & (v39 ^ 0x65C33990D1ADDD1DLL)) - 2 * ((v47 ^ 0x6AF9416A45E25451) & v44);
  v49 = v39 & 0x897C927E32B7F01CLL ^ (v39 ^ 0xE5C33990D1ADDD1DLL) & (v38 ^ 0xB6D87D14A9E2C8CCLL) ^ v46 ^ 0x5F562ABBBF7FCD3CLL;
  *(&v51 + 1) = ~v45;
  *&v51 = v48;
  v50 = v51 >> 1;
  *(&v51 + 1) = v39 & 0xA69FA0A36425CD51 ^ v38 ^ 0x13F3F9E2D9FFCFF8 ^ (v39 ^ 0x1A3CC66F2E5222E2) & (a2 ^ 0x60B667E9BB7E7EB0) ^ v49 ^ 0xE2EF4D2B799A113ELL;
  *&v51 = v39 & 0xA69FA0A36425CD51 ^ v38 ^ 0x13F3F9E2D9FFCFF8 ^ (v39 ^ 0x1A3CC66F2E5222E2) & (a2 ^ 0x60B667E9BB7E7EB0) ^ v49;
  v52 = *(&v51 + 1) ^ __ROR8__(*(&v51 + 1), 61) ^ (v51 >> 39);
  v53 = __ROR8__(v52 ^ 0xC14F589A7B8B01D1 ^ (v48 >> 6) ^ v50 ^ v48 ^ 0xB528157D996BB21ELL ^ ((v48 ^ 0xB528157D996BB21ELL) << 58) ^ 0xA26E47E747108590, 31) ^ 0x23AF984A73FE8EE7;
  v54 = a2 ^ 0x94E0107ABB4CCC0 ^ ((v46 ^ 0x16FC2028A94A2BD9) & (v41 ^ 0x32BD4674D5ADA459) | v42 & 0x7EF824795F7A18F6);
  v55 = (-v48 ^ (v54 - (v48 ^ v54)) ^ 0x230E7153EC67C861 ^ (v48 - ((2 * v48) & 0x461CE2A7D8CF90C2) + 0x230E7153EC67C861)) + v54;
  v56 = v55 ^ __ROR8__(v55, 17) ^ (v55 << 54) ^ (v55 >> 10);
  v57 = v38 & 0xAC5FA6738FB679ABLL ^ v42 ^ (v46 ^ 0x3BA45DDD8679B57BLL) & (v38 ^ 0xC05B109564AAC72FLL) ^ 0x3E1271EBDB55BE78;
  *&v51 = __ROR8__(__ROR8__(v57, 48) ^ 0x5322CA72C0EDEE4, 16);
  v58 = (v51 ^ 0x16614C9F8F5AACF4) << 57;
  v59 = v58 & 0xA600000000000000;
  v60 = v58 ^ 0x4DFFFFFFFFFFFFFFLL;
  v61 = __ROR8__(v53, 33);
  v62 = v51 ^ 0x16614C9F8F5AACF4 ^ ((v51 ^ 0x16614C9F8F5AACF4) << 23) ^ (((v51 >> 41) ^ (v51 >> 7) ^ 0x58C670C04AB291ADLL) & v60 | v59);
  v63 = (v56 & 0x96986826C88A542FLL | (v62 ^ 0x78120D3F7CD08ED7) & ~v56) ^ v61;
  v64 = v62 ^ 0xB261F26463D1755;
  v65 = v57 ^ v49;
  *(&v51 + 1) = v65 ^ 0xDA971B6572EED6D4;
  *&v51 = v65;
  v66 = v56 ^ 0xD4EF1C7D1DAEC6E3 ^ v62 ^ 0xB261F26463D1755;
  v67 = v65 ^ 0xDA971B6572EED6D4 ^ __ROR8__(v65 ^ 0xDA971B6572EED6D4, 28) ^ (v51 >> 19) ^ v64;
  *(&v51 + 1) = v66 & 0x3738F52FF2D72DBELL ^ v56 ^ 0xD4EF1C7D1DAEC6E3 ^ v63 ^ (v66 ^ 0xCEBC99BD1036F4B1) & (v67 ^ 0x169AC38366D3F9FALL) ^ 0x4821CFA7DE144F59;
  *&v51 = v66 & 0x3738F52FF2D72DBELL ^ v56 ^ 0xD4EF1C7D1DAEC6E3 ^ v63 ^ (v66 ^ 0xCEBC99BD1036F4B1) & (v67 ^ 0x169AC38366D3F9FALL);
  v68 = v51 >> 17;
  *&v51 = __ROR8__(*(&v51 + 1), 10);
  v69 = v67 & 0xC81461E2E3286072 ^ (v67 ^ 0xDE5DC9536BFB2BBBLL) & (v52 ^ 0x4A3ECF247CB072A6) ^ 0x2EA5BB52059F9C8ALL ^ v66;
  v70 = (v69 & 0xF2F0F93CF1701AFDLL ^ 0xD266225CC1F34B7DLL) & (v69 & 0xD0F06C30E8FE502 ^ 0xFBF4FFBCFFF1DEFDLL) | v69 & 0xD0904830E0CA402;
  v71 = __ROR8__(v70 ^ 0x3142509473F43C69, 7);
  v72 = ((v68 ^ v51 ^ 0x909EB5A48653C40BLL) - ((2 * (v68 ^ v51 ^ 0x909EB5A48653C40BLL)) & 0x9DBCE452CBBA5834) + 0x4EDE722965DD2C1ALL) ^ *(&v51 + 1);
  *&v51 = __ROR8__(v70 ^ 0x3142509473F43C69, 41);
  v73 = ((v71 ^ v51 ^ 0x5E00A47E16A28100) - 2 * ((v71 ^ v51 ^ 0x5E00A47E16A28100) & 0x2EECD222BAFBB4AFLL ^ (v71 ^ v51) & 8) - 0x51132DDD45044B59) ^ v70 ^ 0x3142509473F43C69;
  v74 = v52 & 0xDFF5B819FA2AAA8ELL ^ v67 ^ 0x5F03D635F2C06E5BLL ^ (v61 ^ 0x9FCA457A5999AF07) & (v52 ^ 0x7DD551396067ED2BLL);
  v75 = v70 ^ v74 ^ ((v70 ^ v74 ^ 0x6AFA3067EAF1F7D3) >> 19) ^ ((v70 ^ v74 ^ 0x6AFA3067EAF1F7D3) >> 28) ^ ((v70 ^ v74 ^ 0xAE90ED6C7966409ELL) << 36) ^ ((v70 ^ v74 ^ 0xAE90ED6C7966409ELL) << 45) ^ 0x8B3FBF814A53364ALL;
  *(&v51 + 1) = v74 ^ v52 ^ 0xC14F589A7B8B01D1;
  *&v51 = v74 ^ v52;
  v76 = (v56 ^ 0x8E242650EFFE08E6) & (v61 ^ 0xBFC0029C5C4CFA76) ^ v61 & 0x8E242650EFFE08E6 ^ __ROR8__((v51 >> 54) ^ 0x5CD66B140312E530, 10);
  v77 = *(v37 + ((v76 >> 61) ^ 0x56));
  LOBYTE(v71) = (v77 ^ ((v77 ^ 0x3C) - ((2 * (v77 ^ 0x3C) + 2) & 0x12) + 10) ^ 0xCA ^ ((v77 ^ (57 - (v77 ^ 0xFA)) ^ 0x7D ^ ((v77 ^ 0x3C) - ((2 * (v77 ^ 0x3C) + 2) & 0x83) + 66)) + 1)) - 62;
  v78 = v71 ^ (v76 >> 39) ^ v76 ^ 0xAB39A5BEB37D01A8 ^ (8 * (v76 ^ 0xAB39A5BEB37D01A8)) ^ ((v76 ^ 0xAB39A5BEB37D01A8) << 25);
  v79 = (v73 - ((2 * v73) & 0x74A259131AE63AB4) + 0x3A512C898D731D5ALL) ^ v75;
  v80 = v72 ^ 0x147D2CDEEA4 ^ v73;
  v81 = (~(2 * v79) + v79) & (v78 ^ 0x1A85DA8AA17274D9) ^ v80;
  v82 = ((v81 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v81 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v81 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v81 ^ 0x26974B18501E2B14) - (((v81 ^ 0x26974B18501E2B14) << 58) & (2 * (v81 ^ 0x26974B18501E2B14))));
  v83 = ((v72 ^ 0x147D2CDEEA4) - ((2 * (v72 ^ 0x147D2CDEEA4)) & 0x74A259131AE63AB4) + 0x3A512C898D731D5ALL) ^ v75;
  if (!v71)
  {
    v83 = v79;
  }

  v84 = v83 & ~v80;
  v85 = (v63 >> 1) ^ 0x5CF1716D613348CELL;
  v86 = v63 ^ (v63 << 58);
  v87 = v86 ^ 0xC9E2E2DAC266919CLL;
  if ((v85 & 0x100000000000 & v86) != 0)
  {
    v88 = -(v85 & 0x100000000000);
  }

  else
  {
    v88 = v85 & 0x100000000000;
  }

  v89 = v85 & 0xFFFFEFFFFFFFFFFFLL ^ ((v63 >> 6) | (v63 << 63)) ^ (v88 + v87);
  v90 = (v73 & (v72 ^ 0xFFFFFEB82D32115BLL)) - ((2 * (v73 & (v72 ^ 0xFFFFFEB82D32115BLL))) & 0xC1D664A6F38CF70) + 0x60EB325379C67B8;
  v91 = v72 ^ v84 ^ 0x7370AD2F82FD2592;
  v92 = v78 ^ v89;
  v93 = v90 ^ v78 ^ v89;
  v94 = v91 ^ v93 ^ 0x1E6CE224FDE78927;
  v95 = __ROR8__(v94, 10);
  v96 = (v94 ^ v95 ^ (v94 >> 17)) + (v94 << 47) - 2 * ((v94 ^ v95 ^ (v94 >> 17)) & (v94 << 47));
  v97 = v78 & 0x5F9EE0CC807F1B90 ^ 0x451A2044000D0B00 ^ (v78 ^ 0xE57A25755E8D8B26) & (v89 ^ 0x5D796B47EB7681D6);
  v98 = (v79 ^ -v79 ^ (v97 - (v79 ^ v97))) + v97;
  v99 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v78 ^ (((v92 ^ 0xE79DAEFE35841160) & (v72 ^ 0x147D2CDEEA4)) - ((2 * ((v92 ^ 0xE79DAEFE35841160) & (v72 ^ 0x147D2CDEEA4))) & 0xB23A52421860B0C2) + 0x591D29210C305861) ^ v98 ^ 0x71E00B935301FE04, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v100 = v99 ^ 0x93DD7BE3C3310A2CLL ^ ((v99 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v99 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v99 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v99 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v101 = (((((2 * (0x34CDB152F4A04500 - ((v93 ^ 0x673908C8B0AF312BLL) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v93 ^ 0x673908C8B0AF312BLL) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v93 ^ 0x673908C8B0AF312BLL) << 58) ^ ((v93 ^ 0x673908C8B0AF312BLL) - ((((v93 ^ 0x673908C8B0AF312BLL) << 58) & 0xF800000000000000 ^ (v93 ^ 0x673908C8B0AF312BLL) & 0xF9BFE541A2368FBELL | (v93 ^ 0x673908C8B0AF312BLL) & 0x6401ABE5DC97041) ^ ((v93 ^ 0x673908C8B0AF312BLL) << 58) & 0x400000000000000))) + (v93 ^ 0x673908C8B0AF312BLL)) ^ ((v93 ^ 0x1E6CE224FDE78927) << 63) ^ __ROR8__(((v93 ^ 0x673908C8B0AF312BLL) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v100, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v102 = v101 & 0xA8F512753D8F931ELL ^ ((v93 ^ 0x673908C8B0AF312BLL) >> 1) & 0x28F512753D8F931ELL | (v101 ^ ((v93 ^ 0x673908C8B0AF312BLL) >> 1)) & 0x570AED8AC2706CE1;
  v103 = v102 ^ v82 & ~v96;
  *(&v104 + 1) = v103;
  *&v104 = v103 ^ 0xD3DA1E3360BF843ALL;
  v105 = ((v104 >> 1) ^ v103 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v103 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v104 >> 1) ^ v103 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v103 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  v106 = v81 ^ 0x6E04C15915AB860ALL ^ v98 ^ __ROR8__(v81 ^ 0x6E04C15915AB860ALL ^ v98, 19) ^ ((v81 ^ 0x6E04C15915AB860ALL ^ v98) << 36) ^ ((v81 ^ 0x6E04C15915AB860ALL ^ v98) >> 28) ^ v82;
  v107 = ((v102 ^ v100) + (v102 | ~v100) + 1) ^ v106;
  v108 = v100 ^ v96 & ~v102 ^ 0x425764BB5877DA25 ^ v107;
  v109 = v108 ^ (v108 >> 61) ^ (v108 >> 39) ^ (8 * v108) ^ (v108 << 25);
  *(&v104 + 1) = v103;
  *&v104 = v103 ^ 0xD3DA1E3360BF843ALL;
  v110 = v96 ^ v82;
  v111 = v100 & ~v106 ^ v96 ^ v82;
  v112 = v111 ^ 0xFD;
  v113 = v111 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v111 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v111 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v111 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v114 = v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107 ^ __ROR8__(v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107, 19) ^ ((v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107) << 36) ^ ((v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107) >> 28);
  *&v104 = __ROR8__((v104 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v109 ^ v105, 3) ^ 0x55413C453664FDCDLL, 61);
  v115 = ((v114 | v113) ^ v113 & v114) & 0x2D23D578E308995FLL | (v114 ^ v113) & 0xD2DC2A871CF766A0;
  v116 = v106 & ~v110;
  v117 = (v104 ^ 0xAA09E229B327EE6ALL) & ~v109 ^ v115;
  v118 = v96 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103 ^ ((v96 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) >> 10) ^ ((v96 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) << 47) ^ ((v96 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) << 54) ^ ((v96 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) >> 17);
  v119 = ((v117 ^ v109) + ((v104 ^ 0x55F61DD64CD81195) & v118) - 2 * ((v117 ^ v109) & (v104 ^ 0x55F61DD64CD81195) & v118)) ^ 0x6005BE354A5BB0B2;
  v120 = v119 >> (v56 & 0x3D) >> (v56 & 0x3D ^ 0x3D);
  v121 = (8 * v119) ^ (v119 >> 39) ^ ((v119 ^ (v119 << 25)) & 0xF21553F3FD140018 ^ v120 & 0x18 | (v119 ^ (v119 << 25)) & 0xDEAAC0C02EBFFE7 ^ v120 & 0xE7);
  v122 = v109 & ~v115 ^ v118 ^ v113;
  v123 = v122 ^ 0x2DB5B6AF87F64351 ^ ((v122 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v122 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v122 ^ 0x2DB5B6AF87F64351) >> 41) | ((v122 ^ 0x2DB5B6AF87F64351) << 57));
  v124 = v122 ^ 0x93C23431B76D41FLL ^ v117;
  v125 = (v124 ^ (v124 >> 28)) + (v124 >> 19) - 2 * ((v124 ^ (v124 >> 28)) & (v124 >> 19));
  v126 = v124 << 36;
  v127 = v125 ^ (v124 << 45);
  v128 = v115 & ~(v118 ^ v113);
  v129 = v127 ^ v126;
  v130 = v104 ^ 0xAA09E229B327EE6ALL ^ v113 & ~v118;
  v131 = v127 ^ v126 ^ v123;
  v132 = v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130 ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) >> 10) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) << 47) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) << 54) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) >> 17);
  v133 = v132 ^ v123;
  v134 = v121 & ~v131 ^ v132 ^ v123;
  v135 = v130 ^ 0x6DC4FB0BD4FFFF44;
  *(&v104 + 1) = v130;
  *&v104 = v130 ^ 0x6DC4FB0BD4FFFF44;
  v136 = (v104 >> 1) ^ v130 ^ 0x6DC4FB0BD4FFFF44 ^ ((v130 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v121;
  v137 = v135 >> 6;
  if (v126 == v127)
  {
    v138 = v137;
  }

  else
  {
    v138 = ~(v137 ^ v136);
  }

  v139 = v136 + v137 - 2 * (v138 & v136);
  v140 = v139 ^ (((~v132 | 0xFFFFFFFFEFFFFFFFLL) - (v132 & 0x4000000000)) ^ v132 & 0xFFFFFFBFEFFFFFFFLL) & v133;
  v141 = v133 == -1;
  v142 = __ROR8__(((v131 << (v125 & 0x2B) << (v125 & 0x2B ^ 0x2B)) + (v131 >> 21)) ^ __ROR8__(v139 & ~v121, 21) ^ 0x6D12C2B6EED373A6, 43);
  v143 = v132 & ~v139 ^ v121 ^ v142;
  v144 = v134 ^ 0x5035F38BF1002A3ALL ^ v142;
  v145 = v144 ^ (v144 >> 19);
  v146 = v145 & 0xD99EEE0927173347 ^ (v144 << 45) & 0xD99EE00000000000 | v145 & 0x266111F6D8E8CCB8 ^ (v144 << 45) & 0x2661000000000000;
  v147 = (((v144 << 45) ^ (0xFFFFE00000000000 * v144) ^ (v146 + v145 - 2 * v146)) + v145) ^ (v144 >> 28);
  v148 = v147 & 0x78E134634F73AA70 ^ (v144 << 36) & 0x78E1346000000000;
  v149 = v147 & 0x871ECB9CB08C558FLL ^ (v144 << 36) & 0x871ECB9000000000;
  v150 = v143 ^ 0xE013161F571CC4C5 ^ ((v143 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v143 ^ 0xE013161F571CC4C5));
  v151 = v150 ^ (((v143 ^ 0xE013161F571CC4C5) >> 61) | (v143 << 25));
  v152 = (v148 | v149) - 0x23AF0E14A84208ABLL - 2 * ((v148 | v149) & 0x5C50F1EB57BDF757 ^ v147 & 2);
  a5[65] = ((v148 | v149) + 85 - 2 * ((v148 | v149) & 0x57 ^ v147 & 2)) ^ 0x55;
  v153 = *(a31 + ((69 * ((v152 ^ 0xDC50F1EB57BDF755) >> (v147 & 8) >> (v147 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v154 = (((v153 ^ 0x57) + v153 - 2 * (v153 ^ 0x57)) ^ 0xFE) + v153;
  a5[54] = ((v150 ^ (((v143 ^ 0xE013161F571CC4C5) >> 61) | (v143 << 25))) >> 24) ^ 0x8A;
  a5[28] = (((v148 | v149) + 1472067413 - 2 * ((v148 | v149) & 0x57BDF757 ^ v147 & 2)) >> 16) ^ 0xBD;
  a5[41] = (v154 >> 2) | (v154 << 6);
  a5[35] = BYTE1(v150);
  a5[21] = BYTE2(v150);
  a5[58] = (v152 ^ 0xDC50F1EB57BDF755) >> (v112 & 0x20) >> (v112 & 0x20 ^ 0x20u);
  a5[17] = BYTE4(v151) ^ 0x89;
  v155 = v129 ^ v132;
  if (v141)
  {
    v156 = 0;
  }

  else
  {
    v156 = v155;
  }

  a5[5] = (((v148 | v149) + 1472067413 - 2 * ((v148 | v149) & 0x57BDF757 ^ v147 & 2)) >> 24) ^ 0x57;
  a5[47] = BYTE5(v152) ^ 0xF1;
  v157 = v140 - ((2 * v140) & 0x5A47EBDAAC1EB792);
  a5[14] = HIBYTE(v152) ^ 0xDC;
  a5[48] = BYTE6(v152) ^ 0x50;
  a5[16] = (v151 ^ 0x3EAE39898A000000) >> (v143 & 0x28) >> (v143 & 0x28 ^ 0x28);
  v158 = v157 + 0x2D23F5ED560F5BC9;
  v159 = v157 - 0x5BDA183C59819C5ELL;
  v160 = 0x88FE0E29AF90F827;
  if (v158 < 0x88FE0E29AF90F827)
  {
    v159 = v158;
    v160 = 0;
  }

  if (v159)
  {
    v161 = v158;
  }

  else
  {
    v161 = v160;
  }

  *(&v162 + 1) = v161;
  *&v162 = v158;
  a5[6] = v151;
  v163 = *(v37 + (BYTE6(v151) ^ 0xF9));
  v164 = (v162 >> 1) ^ v158 ^ (v161 << 58) ^ (v161 >> 6);
  a5[10] = BYTE1(v164);
  a5[18] = BYTE4(v164);
  a5[25] = BYTE2(v164);
  v165 = v132 ^ v156 & v131 ^ 0x29E1AB0124FF49E7 ^ v140;
  *&v162 = __ROR8__(v165, 10);
  a5[42] = HIBYTE(v151) ^ 0x3E;
  a5[12] = BYTE5(v164);
  a5[23] = BYTE6(v164);
  v166 = (v165 ^ v162 ^ (v165 << 47)) + (v165 >> 17) - 2 * ((v165 ^ v162 ^ (v165 << 47)) & (v165 >> 17));
  a5[24] = BYTE3(v164);
  a5[30] = (v163 ^ 0xFA) - 119;
  a5[44] = v164;
  a5[62] = HIBYTE(v164);
  a5[19] = (v165 ^ v162) + (v165 >> 17) - 2 * ((v165 ^ v162) & (v165 >> 17));
  v167 = *(a33 + ((((v165 ^ v162) + (v165 >> 17) - 2 * ((v165 ^ v162) & (v165 >> 17))) >> 8) ^ 0x27) + 279);
  a5[8] = ((v165 ^ v162) + (v165 >> 17) - 2 * ((v165 ^ v162) & (v165 >> 17))) >> 24;
  a5[33] = ((v165 ^ v162) + (v165 >> 17) - 2 * ((v165 ^ v162) & (v165 >> 17))) >> 16;
  a5[4] = (v167 ^ BYTE1(v166) ^ 0x2D ^ ((BYTE1(v166) ^ 0x2D) + 72) ^ 0x41) + 15;
  v168 = *(a32 + (((v166 >> 28) & 0xF0 | (v166 >> 36) & 0xF) ^ 0x5C));
  a5[46] = HIBYTE(v166);
  v169 = v134 ^ __ROR8__(v134 ^ 0x4734313A1F2B2857, 41) ^ ((v134 ^ 0x4734313A1F2B2857) >> 7);
  a5[43] = BYTE6(v166);
  a5[38] = BYTE5(v166);
  a5[31] = ((v168 >> 5) | (8 * v168)) ^ 0xC1;
  LOBYTE(v166) = *(v37 + ((((((4 * v169) | (v169 >> 6)) ^ 0xA) >> 2) | ((((4 * v169) | (v169 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a5[55] = BYTE4(v169) ^ 0x3A;
  a5[34] = BYTE3(v169) ^ 0x1F;
  a5[32] = BYTE1(v169) ^ 0x28;
  v170 = v169 ^ ((v134 ^ 0x4734313A1F2B2857) << 57);
  a5[15] = (v166 ^ 0xFA) - 119;
  a5[7] = (v170 ^ 0x4734313A1F2B2857uLL) >> (v66 & 0x10 ^ 0x10) >> (v66 & 0x10);
  a5[61] = BYTE5(v169) ^ 0x31;
  a5[56] = (*(v37 + (BYTE6(v169) ^ 0x63)) ^ 0xFA) - 119;
  a5[51] = HIBYTE(v170) ^ 0x47;
  JUMPOUT(0x100025A0CLL);
}

uint64_t sub_100025A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int32x4_t a8@<Q2>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v91 = *(v43 + 8 * (a2 + a5 + 1095));
  if (BYTE4(a38) == 2)
  {
    v92 = vld4q_s8(v40);
    v82 = a2 + a3 + 1928;
    v83 = veorq_s8(v92.val[1], a6);
    _Q21 = vmovl_high_u8(v83);
    _Q20 = vmovl_u8(*v83.i8);
    v86 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v87 = vmovl_u8(*&veorq_s8(v92.val[2], a6)).u64[0];
    v92.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v92.val[3], a6)));
    v88 = vorrq_s8(vorrq_s8(vorrq_s8(v86, vshll_n_u16(v87, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v92.val[0], a6))), 0x18uLL)), v92.val[2]);
    v92.val[2] = veorq_s8(vandq_s8(v88, a7), (*&v92.val[2] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v41 = vaddq_s32(vsubq_s32(v88, vaddq_s32(v92.val[2], v92.val[2])), a8).u32[0];
    v89 = v41[((a2 + a3 + 1618) ^ (v45 + 431)) + 176687670];
    v41[v45 + 176687670] = __ROR4__(v41[v45 + 176687667] ^ v46 ^ v41[v45 + 176687662] ^ v41[v45 + 176687656] ^ v89, 31) ^ 0x4E50245F;
    v90 = *(v43 + 8 * ((158 * (v42 != 176687607)) ^ v82));
    return v90(a1, v90, a37, HIDWORD(a36), HIDWORD(a35), v89, 2067053209, a4, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v91, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
  }

  else if (BYTE4(a38) == 1)
  {
    v93 = vld4q_s8(v40);
    v47 = a3 ^ (a3 + 1078);
    v48 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v93.val[0], a6)));
    v49 = veorq_s8(v93.val[2], a6);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v93.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v93.val[3], a6))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v93.val[1], a6)), 8uLL), v48));
    v58 = veorq_s8(vandq_s8(v93.val[2], a7), (*&v48 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v41 = vaddq_s32(vsubq_s32(v93.val[2], vaddq_s32(v58, v58)), a8).u32[0];
    v59 = *(&off_1000610D0 + (v47 ^ 0x47F)) - 8;
    v60 = (HIDWORD(a36) & 0xCD1EA12D ^ 0x8C1A2109 ^ (a36 ^ 0x51249666) & (HIDWORD(a36) ^ v46) | a36 & 0x8DE8358F ^ 0x1C00084 ^ (a36 ^ (v47 + 1673905258)) & (a37 ^ 0x11D202C4)) + (HIDWORD(a35) ^ v46) + *&v59[4 * a21 + 4 * v45] + (v41[(*(*(&off_1000610D0 + v47 - 1075) + a21 + v45 - 8) - 43)] ^ v44);
    v61 = (v60 ^ 0xA57457F3) & (2 * (v60 & 0xB58457E3)) ^ v60 & 0xB58457E3;
    v62 = ((2 * (v60 ^ 0xA4747137)) ^ 0x23E04DA8) & (v60 ^ 0xA4747137) ^ (2 * (v60 ^ 0xA4747137)) & 0x11F026D4;
    v63 = v62 ^ 0x10102254;
    v64 = (v62 ^ 0x200480) & (4 * v61) ^ v61;
    v65 = ((4 * v63) ^ 0x47C09B50) & v63 ^ (4 * v63) & 0x11F026D4;
    v66 = (v65 ^ 0x1C00254) & (16 * v64) ^ v64;
    v67 = ((16 * (v65 ^ 0x10302484)) ^ 0x1F026D40) & (v65 ^ 0x10302484) ^ (16 * (v65 ^ 0x10302484)) & 0x11F026D0;
    v68 = v66 ^ 0x11F026D4 ^ (v67 ^ 0x11002400) & (v66 << 8);
    v69 = *(*(&off_1000610D0 + (v47 ^ 0x474)) + a21 + v45 - 8);
    LOBYTE(v63) = (v69 + 16) ^ 0x2E;
    v70 = ((2 * ((v69 + 16) & 0x87)) & 0xF9 | (v69 + 16) & 0x87) ^ (2 * ((v69 + 16) & 0x87)) & v63;
    v71 = ((2 * v63) ^ 0x52) & v63 ^ (2 * v63) & 0xA8;
    v72 = (v69 + 16) ^ (2 * (((4 * v71) & 0xA8 ^ 0xA9 ^ ((4 * v71) ^ 0xA4) & v71) & (16 * (v71 & (4 * v70) ^ v70)) ^ v71 & (4 * v70) ^ v70)) ^ 0x52;
    v73 = v60 ^ (2 * ((v68 << 16) & 0x11F00000 ^ v68 ^ ((v68 << 16) ^ 0x26D40000) & (((v67 ^ 0xF00294) << 8) & 0x11F00000 ^ 0x1D00000 ^ (((v67 ^ 0xF00294) << 8) ^ 0x70260000) & (v67 ^ 0xF00294)))) ^ 0x97C41A4B;
    v74 = (((a36 ^ 0x4818DBB7) - 1209588663) ^ ((a36 ^ 0x81423158) + 2126368424) ^ ((a36 ^ 0x5560DDA4) - 1432411556)) - 1341306372 + ((v73 << (v72 & 0x1D ^ 0x15) << (v72 & 2)) | (v73 >> (a1 - v69)));
    v75 = (v74 ^ 0xCC2CEC0E) & (2 * (v74 & 0xEC2CED4F)) ^ v74 & 0xEC2CED4F;
    v76 = ((2 * (v74 ^ 0x547C3E9C)) ^ 0x70A1A7A6) & (v74 ^ 0x547C3E9C) ^ (2 * (v74 ^ 0x547C3E9C)) & 0xB850D3D2;
    v77 = v76 ^ 0x88505051;
    v78 = (v76 ^ 0x30008300) & (4 * v75) ^ v75;
    v79 = ((4 * v77) ^ 0xE1434F4C) & v77 ^ (4 * v77) & 0xB850D3D0;
    v80 = (v79 ^ 0xA0404340) & (16 * v78) ^ v78 ^ 0xB850D3D3 ^ (((16 * (v79 ^ 0x18109093)) ^ 0x850D3D30) & (v79 ^ 0x18109093) ^ (16 * (v79 ^ 0x18109093)) & 0xB850D3D0 ^ 0x80001100) & (((v79 ^ 0xA0404340) & (16 * v78) ^ v78) << 8);
    return (*(v43 + 8 * ((487 * (a21 + 1 == v42)) ^ v47)))(a1, HIDWORD(a36), a37, (v80 << 16) & 0x38500000, (v80 << 16) ^ 0x53D30000, v59, 944766976, 176687670, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v91, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
  }

  else
  {
    return v91(a1, a37, a37, HIDWORD(a36), HIDWORD(a35), a2, a3, a4, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v91, a21, a22, a23, a24, a25, a26, a27, a28);
  }
}

uint64_t sub_100026970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == ((((v5 + 616928671) & 0xDB3A6BFD) - 1129) ^ (19 * (v5 ^ 0x65E))))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return (*(v7 + 8 * ((28 * v8) ^ v5)))();
}

uint64_t sub_100026F44@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v13 = (*(*(v12 + 8) + 4 * v7) ^ v8) + v3 + (*(*(v10 + 8) + 4 * v7) ^ v8);
  *(*(a3 + 8) + 4 * v7) = v13 + v8 - ((v13 << ((3 * a1) ^ a2)) & v9);
  return (*(v11 + 8 * (((v7 + 1 == v4) * v5) ^ v6)))();
}

uint64_t sub_100027084@<X0>(char a1@<W8>)
{
  v5 = (v4 - 228 + v1 + 9);
  *(v5 - 1) = 0xC7C7C7C7C7C7C7C7;
  *v5 = 0xC7C7C7C7C7C7C7C7;
  return (*(v3 + 8 * ((((a1 & 0x30) == 16) * (v2 ^ 0x554)) ^ v2)))();
}

uint64_t sub_1000273B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(a11 + 16) = -v15;
  v22 = 1037613739 * ((((2 * (v21 - 136)) | 0x73504DDC) - (v21 - 136) - 967321326) ^ 0xE8AA0B91);
  *(v21 - 128) = v20;
  *(v21 - 136) = v22 + 1981376390;
  *(v21 - 120) = v18 - v22 - 420;
  (*(v17 + 8 * (v18 + 716)))(v21 - 136);
  v23 = ((v21 - 1817825698 - 2 * ((v21 - 136) & 0x93A62EE6)) ^ 0x8E1D86C) * v16;
  *(v21 - 128) = v20;
  *(v21 - 120) = v18 - v23 + 453;
  *(v21 - 136) = v23 + ((v19 << 6) & 0xFCFEFA00) + ((32 * v19) ^ 0xFE7F7D14) + 535877210 + ((v18 - 234836950) & 0xDFF4F5C) + 82;
  (*(v17 + 8 * (v18 + 687)))(v21 - 136);
  *(v21 - 120) = v18 + ((2 * ((v21 - 136) & 0x17C0BD50) - (v21 - 136) - 398507350) ^ 0x7378B420) * v16 - 255;
  *(v21 - 136) = &a15;
  *(v21 - 128) = a14;
  (*(v17 + 8 * (v18 + 641)))(v21 - 136);
  *(v21 - 128) = a14;
  *(v21 - 112) = v20;
  *(v21 - 136) = v18 - ((((v21 - 136) | 0x5E8C0C59) - ((v21 - 136) & 0x5E8C0C59)) ^ 0xC5CBFAD3) * v16 + 327;
  v24 = (*(v17 + 8 * (v18 + 679)))(v21 - 136);
  return (*(v17 + 8 * ((925 * ((*(v21 - 120) - 1112915420) >= 0xF9FA130A)) ^ v18)))(v24);
}

uint64_t sub_1000277D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15)
{
  *(v18 - 104) = v17 + 174 - 1564307779 * a10 + 1164;
  *(v18 - 120) = a15;
  *(v18 - 112) = a12;
  *(v18 - 136) = v15;
  *(v18 - 128) = v15;
  v19 = (*(v16 + 8 * ((v17 + 174) ^ 0x9F7)))(v18 - 136);
  return (*(v16 + 8 * ((254 * (((a13 >> ((v17 - 20) ^ 0x93)) & a11) == 0)) ^ (v17 + 966))))(v19);
}

uint64_t sub_1000277E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, int a20, char *a21)
{
  v24 = 1037613739 * ((1151636072 - (&a16 | 0x44A49268) + (&a16 | 0xBB5B6D97)) ^ 0x6A5940E8);
  a21 = &a13;
  a18 = v24 - 611812363;
  a19 = v24 + v23 - 1197042856;
  a16 = a11;
  a17 = v24 ^ 0x3920E16A;
  v25 = (*(v21 + 8 * (v23 + 1746)))(&a16);
  return (*(v21 + 8 * ((956 * (((v23 + 115) ^ (a20 == ((v23 - v22 + 387) ^ 0xA47845E7))) & 1)) ^ v23)))(v25);
}

uint64_t sub_1000278C0(__n128 a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v9 = (a6 + 4 * a7);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((a4 == a7) * v7) ^ a5)))();
}

void sub_10002795C(uint64_t a1)
{
  v1 = *(a1 + 4) - 1037613739 * (((a1 | 0xBC4B3E54) - (a1 | 0x43B4C1AB) + 1135919531) ^ 0x6D49132B);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100027B1C@<X0>(int a1@<W8>, __int16 a2, char a3, char a4, char a5, __int16 a6, char a7, int a8, int a9, uint64_t a10, int a11, char *a12, char *a13, char a14, unsigned int a15, char *a16)
{
  v20 = v17 - 33;
  v21 = *(v18 + 32);
  v22 = ((2 * (&a9 & 0x38E13218) - &a9 + 1193201125) ^ 0x943C3D69) * a1;
  a15 = (((v16 ^ 0x6198F5E8) - 1637414376) ^ ((v16 ^ 0xBE0C7A96) + 1106478442) ^ ((v16 ^ 0xF64F285F) + 162583919 + ((v20 - 1778080286) & 0x69FB5A3E))) - v22 + 1804159052;
  a14 = v22 - 99;
  a10 = v21;
  a16 = &a5;
  a11 = v22 + 1986157747 + v20;
  a12 = &a4;
  a13 = &a7;
  v23 = (*(v19 + 8 * (v20 + 1711)))(&a9);
  return (*(v19 + 8 * ((35 * (a9 != 1982089928)) ^ v20)))(v23);
}

uint64_t sub_100027DB0(_DWORD *a1)
{
  v1 = *a1 + 1361651671 * ((a1 & 0xE571BFA1 | ~(a1 | 0xE571BFA1)) ^ 0xC9ACB0D2);
  v4 = *(*(&off_1000610D0 + (v1 ^ 0xCBCA0014)) - 4);
  v3 = v1 + 875955310 - 143681137 * ((-614142009 - (&v3 | 0xDB64EFC7) + (&v3 | 0x249B1038)) ^ 0x45C39BE8);
  return (*(*(&off_1000610D0 + (v1 ^ 0xCBCA00EB)) + (v1 + 875956245)))(&v3);
}

uint64_t sub_100027EE0(__n128 a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = v5 + 2;
  v7[-1] = a1;
  *v7 = a1;
  return (*(v6 + 8 * (((a3 == 8) * a4) ^ v4)))();
}

uint64_t sub_100027EEC(int *a1)
{
  v2 = a1[1] - 1785193651 * ((a1 & 0x63D26EBF | ~(a1 | 0x63D26EBF)) ^ 0xB09ACAA8);
  v3 = v2 + 1776823370;
  result = (*(*(&off_1000610D0 + (v2 ^ 0x9617D4BC)) + (v2 + 1776825434)))(*(&off_1000610D0 + (v2 ^ 0x9617D490)) - 8, sub_1000032E0);
  v5 = **(&off_1000610D0 + v3);
  if (result)
  {
    v5 = -1982132106;
  }

  *a1 = v5;
  return result;
}

void sub_100028008(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 1225344661 >= 0)
  {
    a1 = (((v1 - 1109) | 0x4C9) ^ 0x6EB) - a1;
  }

  sub_100034C6C(a1 + v3);
}

uint64_t sub_1000280B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v20 = *(a1 + 4) + 1785193651 * (((a1 | 0x34BCADF9) - (a1 & 0x34BCADF9)) ^ 0x180BF611);
  v21 = 742307843 * (((&v26 | 0x24865E6B) + (~&v26 | 0xDB79A194)) ^ 0x79FA2110);
  v26 = v20 - v21 - 473373677;
  v27 = v25;
  v28 = -990918455 - v21;
  (*(*(&off_1000610D0 + v20 + 166) + v20 + 2167))(&v26);
  return sub_1000318E0(v25, v22, 199, v20, v23, 2550136832, v20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100028334@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a4 = (v7 - 368) ^ (((2 * (&a3 & 0x51E90738) - &a3 + 773257413) ^ 0xFF14D5BA) * v8);
  a5 = v9;
  a6 = a1;
  a3 = v9;
  v10 = (*(v6 + 8 * (v7 ^ 0xB41)))(&a3);
  return sub_100028394(v10);
}

uint64_t sub_1000283C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x8F) - 57;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((1503 * v4) ^ 0x204u)))(0);
}

uint64_t sub_100028470()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

void sub_100028498(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v58[31] = 0x36F6B96B00000040;
  v58[32] = v58 + 33;
  v58[65] = 0x36F6B96B00000040;
  v58[66] = v58 + 67;
  v75 = v58 + 65;
  v76 = v58 + 99;
  v58[99] = 0x36F6B96B00000040;
  v58[100] = v58 + 101;
  v77 = v58 + 133;
  v58[133] = 0x36F6B96B00000040;
  v58[134] = v58 + 135;
  v78 = v58 + 167;
  v58[167] = 0x36F6B96B00000040;
  v58[168] = v58 + 169;
  v63 = STACK[0x3D0] + 4;
  v64 = a1 - 34;
  v65 = 742307843 * ((v61 - 200) ^ 0x5D7C7F7A);
  *(v61 - 184) = (((v60 ^ 0x9BFE9D8B) + 1677812341) ^ ((v60 ^ 0xF09C354F) + 258198193) ^ ((v60 ^ (a1 - 580228322) & 0x229597FA ^ 0x1D46E5D6) - 491184652)) - v65 - 2044516908;
  *(v61 - 180) = a1 - 34 - v65;
  *(v61 - 200) = v63;
  *(v61 - 192) = a19;
  v66 = a1 ^ 0xC63;
  (*(v62 + 8 * (a1 ^ 0xC63)))(v61 - 200);
  v67 = v60 ^ v59;
  v68 = v63 + v67;
  v69 = 742307843 * ((((v61 - 200) | 0x568090E2) - (v61 - 200) + ((v61 - 200) & 0xA97F6F18)) ^ 0xBFCEF98);
  *(v61 - 200) = v68;
  *(v61 - 192) = v75;
  *(v61 - 184) = (((v60 ^ 0x5DE36561) - 1575183713) ^ ((v60 ^ 0x6CCA8017) - 1825210391) ^ ((v60 ^ 0x470DAFBE) - 1192079294)) - v69 - 2044516908;
  *(v61 - 180) = v64 - v69;
  (*(a58 + 8 * v66))(v61 - 200);
  v70 = v68 + v67;
  v71 = 742307843 * ((-2024541598 - ((v61 - 200) | 0x8753F262) + ((v61 - 200) | 0x78AC0D9D)) ^ 0x25D072E7);
  *(v61 - 184) = (((v60 ^ 0x67778894) - 1735886996) ^ ((v60 ^ 0x7C2F93AF) - 2083492783) ^ ((v60 ^ 0x6D7C51F3) - 1836863987)) - v71 - 2044516908;
  *(v61 - 180) = v64 - v71;
  *(v61 - 200) = v70;
  *(v61 - 192) = v76;
  (*(a58 + 8 * v66))(v61 - 200);
  v72 = v70 + v67;
  v73 = 742307843 * (((((v61 - 200) | 0x1EC15A82) ^ 0xFFFFFFFE) - (~(v61 - 200) | 0xE13EA57D)) ^ 0xBC42DA07);
  *(v61 - 200) = v72;
  *(v61 - 192) = v77;
  *(v61 - 184) = (((v60 ^ 0xDBDE9AD3) + 606168365) ^ ((v60 ^ 0xB95B4DD3) + 1185198637) ^ ((v60 ^ 0x14A19DC8) - 346136008)) - v73 - 2044516908;
  *(v61 - 180) = v64 - v73;
  (*(a58 + 8 * v66))(v61 - 200);
  v74 = 742307843 * ((v61 + 1216167381 - 2 * ((v61 - 200) & 0x487D3E9D)) ^ 0x150141E7);
  *(v61 - 200) = v72 + v67;
  *(v61 - 192) = v78;
  *(v61 - 184) = (((v60 ^ 0xE3474FAC) + 481865812) ^ ((v60 ^ 0x2282C5C) - 36187228) ^ ((v60 ^ 0x974B2938) + 1756681928)) - v74 - 2044516908;
  *(v61 - 180) = v64 - v74;
  (*(a58 + 8 * v66))(v61 - 200);
  JUMPOUT(0x100007DE0);
}

uint64_t sub_100028924()
{
  v1.n128_u64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v1.n128_u64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v2.n128_u64[0] = 0xC7C7C7C7C7C7C7C7;
  v2.n128_u64[1] = 0xC7C7C7C7C7C7C7C7;
  return sub_100028940(v0 | 0x81010100, v1, v2);
}

uint64_t sub_100028940@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v11 = ~v10 + v7;
  v12 = *(v5 + v11 - 15);
  v13 = *(v5 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a3)), a4);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  LODWORD(v14) = v10 + 6 * (a1 ^ (v9 + 101)) - 2014 != v8;
  return (*(v4 + 8 * (((8 * v14) | (16 * v14)) ^ (a1 + v6))))();
}

uint64_t sub_100028D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = (*(v68 + 8 * (v67 ^ 0xF8A)))();
  STACK[0x358] -= 16;
  return (*(a65 + 8 * ((1697 * (v65 == ((v67 - 1386) ^ (v66 - 528)))) ^ (v67 - 1386))))(v69);
}

uint64_t sub_100028DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *v60 = v58 - 1;
  v63 = &v60[6 * v58 - 0x2924C26FCLL + 6 * ((v59 + 305) | 2u)];
  v64 = *v63;
  LODWORD(STACK[0x460]) = v63[1];
  STACK[0x448] = *&v60[6 * ((v59 - 599265120) & 0x23B80FE9 ^ 0x9248A554) + 4 + 6 * v58];
  v65 = *(v61 + (v64 + a4) * a2 + 36);
  LODWORD(STACK[0x234]) = v65;
  return (*(v62 + 8 * ((1186 * (v65 == a6)) ^ v59)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_100028EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t (*a39)(void), uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  STACK[0x2B8] = v63;
  STACK[0x470] = a63;
  return a39();
}

uint64_t sub_100028F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 112) = v17 - 2 + 210068311 * ((2 * ((v20 - 128) & 0x3CBBAB0) - (v20 - 128) - 63683249) ^ 0xEBFEAA7) + 625;
  *(v20 - 128) = &a17;
  *(v20 - 120) = &a15;
  v21 = (*(v18 + 8 * (v17 + 1942)))(v20 - 128);
  return (*(v18 + 8 * (((2 * (((v17 + 8) ^ (v19 == (((v17 + 263) | 1) ^ 0x224))) & 1)) & 0xFB | (4 * (((v17 + 8) ^ (v19 == (((v17 + 263) | 1) ^ 0x224))) & 1))) ^ (v17 - 2))))(v21);
}

uint64_t sub_1000292FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 120) = v15 + ((78703253 - ((v18 - 136) | 0x4B0EA95) + ((v18 - 136) | 0xFB4F156A)) ^ 0x6008E3E0) * v16 - 237;
  *(v18 - 136) = &a15;
  *(v18 - 128) = a14;
  (*(v17 + 8 * (v15 ^ 0xDF5)))(v18 - 136);
  v19 = ((((v18 - 136) | 0xF0A9FE71) - ((v18 - 136) & 0xF0A9FE71)) ^ 0x6BEE08FB) * v16;
  *(v18 - 120) = v15 - v19 + 471;
  *(v18 - 136) = v19 + 510678293;
  *(v18 - 128) = a13;
  (*(v17 + 8 * (v15 ^ 0xDC7)))(v18 - 136);
  *(v18 - 136) = v15 - ((2 * ((v18 - 136) & 0x52F299A8) - (v18 - 136) + 755852883) ^ 0xB64A90D9) * v16 + 345;
  *(v18 - 128) = a14;
  *(v18 - 112) = a13;
  v20 = (*(v17 + 8 * (v15 ^ 0xDCF)))(v18 - 136);
  return (*(v17 + 8 * ((75 * (*(v18 - 120) <= ((v15 - 1319) | 0x168u) + 1112914911)) ^ v15)))(v20);
}

uint64_t sub_100029470(int a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, int8x16_t *a8)
{
  v11 = (a7 + v8);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a5)), a4);
  *a8 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a5)), a4);
  a8[1] = v12;
  return (*(v10 + 8 * (((((6 * (v9 ^ 0x203u)) ^ 0x10) == 64) * a1) | v9)))();
}

uint64_t sub_1000294E0()
{
  LOBYTE(STACK[0x1800]) = (67 * ((~(v3 + 56) & 0x2E | (v3 + 56) & 0xD1) ^ 0x3D)) ^ 0x35;
  *(v3 - 200) = &STACK[0x340];
  *(v3 - 192) = v1 - 1564307779 * ((~(v3 - 200) & 0xA1DCF22E | (v3 - 200) & 0x5E230DD1) ^ 0x36D13E3D) - 274;
  *(v3 - 184) = &STACK[0x33C];
  v7 = v0;
  v4 = (*(v0 + 8 * (v1 ^ 0xB32)))(v3 - 200);
  v5 = *(v3 - 172);
  LODWORD(STACK[0x3A8]) = v5;
  return (*(v7 + 8 * (((v5 == v2) * (((v1 - 939) ^ 0xFFFFFCA7) + ((v1 - 939) | 0x790))) ^ v1)))(v4);
}

uint64_t sub_100029728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  LOBYTE(STACK[0x274]) = *(&a30 + v30);
  v33 = v30 + 1 == ((7 * (v31 ^ 0x6C7u)) ^ 0xFFFFFFFFFFFFF80CLL) + ((v31 + 1329733950) & 0xB0BDDFDE);
  return (*(v32 + 8 * (((4 * v33) | (8 * v33)) ^ v31)))();
}

uint64_t sub_100029790@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = *(v6 + v2 * v3 + 36);
  v9 = v7 != v4 && (v7 + a1) < 0x80000003;
  return (*(v5 + 8 * ((v9 * (a2 ^ 0x4A3 ^ (a2 - 1111004857) & 0x4238927F)) ^ a2)))();
}

uint64_t sub_100029DE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = a3 + ((a5 - 1710725228) & 0x65F797FF) - 1518;
  if (v5 > v7)
  {
    v7 = v5;
  }

  return (*(v6 + 8 * (((v7 > 0x7FFFFFFE) * ((a5 + 1467293605) & 0xA88ADFEE ^ 0x5D3)) ^ a5)))();
}

uint64_t sub_100029EA4()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v0 + (v7 & 0xF)) ^ *(v2 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 1);
  return (*(v6 + 8 * ((113 * (v7 == 0)) ^ (v4 - 124))))();
}

uint64_t sub_100029F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 112) = v13 + 210068311 * ((((v18 - 128) | 0xD3C5D4B3) - (v18 - 128) + ((v18 - 128) & 0x2C3A2B48)) ^ 0x214E7B5B) + 431;
  *(v18 - 128) = v15;
  *(v18 - 120) = &a13;
  v19 = (*(v14 + 8 * (v13 + 1750)))(v18 - 128);
  return (*(v14 + 8 * (((v17 ^ 0x3B4) * (v16 != 1)) ^ v13)))(v19);
}

uint64_t sub_100029FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16)
{
  *v18 = a10 ^ v19;
  *v17 = a11 ^ (v19 + v16 + 918 - 1968);
  a16 = a13;
  a15 = v16 + 918 - 1388665877 * (((&a15 | 0xF11E8530) - &a15 + (&a15 & 0xEE17AC8)) ^ 0x7CB3E7DC) - 1135;
  (*(v20 + 8 * (v16 + 1040)))(&a15);
  return sub_10001F0D4();
}

uint64_t sub_10002A100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x3C0]) = v9;
  v11 = ((v8 + 241) ^ (a8 - 43)) + v10 < ((v8 + 430777082) & 0xE652D71F ^ 0x107);
  return (*(a7 + 8 * ((v11 | (4 * v11)) ^ v8)))();
}

uint64_t sub_10002A270@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = (v8 + v9 + 1905 - 2011);
  *(a1 + v11) = *(a5 + v11) ^ *(v6 + (v11 & 0xF)) ^ *((v11 & 0xF) + v7 + 5) ^ *((v11 & 0xF) + a6 + 1) ^ ((v11 & 0xF) * a4) ^ 0xC7;
  return (*(v10 + 8 * (((v11 != ((v9 + 1905) ^ a2) - 105) * a3) ^ (v9 + 1105))))();
}

uint64_t sub_10002A2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4[623];
  if (v3 - (v5 - 1387) >= ~(v5 - 1387))
  {
    ++v7;
  }

  *v4 = v7;
  return sub_10004772C(a3, v6);
}

uint64_t sub_10002A3F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35, uint64_t a36, int a37, uint64_t a38)
{
  v40 = __ROR8__((((a1 << 27) ^ v38 ^ 0x63172A8437FFFE2CLL) & ((a1 >> 37) ^ 0x63177AC73D6198A1) | ((v38 + 910) ^ 0x9CE88538C0000000) & (a1 << 27)) ^ 0x18CF9E05C5EB01A5, 27);
  v41 = v40 ^ a7 ^ 0xC9F6618CDA0C6E98;
  v42 = a3 ^ a36 ^ v39;
  v43 = (v41 & 0x5F475BB92CE82A28 ^ (v40 ^ a8 ^ 0x5481DF6C3EEA9AALL) & (v40 ^ a7 ^ 0xD7459CD3B9B644FELL) ^ 0xE1FCA6E6DF57D5DFLL) - (v40 ^ a8 ^ 0x44BCBB108CBCA9E4 ^ v41);
  v44 = v42 & 0x36204ABFF85543CDLL ^ (v42 ^ 0x97BF2545BBF94436) & (a3 ^ a36 ^ 0x3CFAF1E742C135E0) ^ v40 ^ a8 ^ 0x9A5442EBDF90B412;
  v45 = v40 & 0x238F8BE713F8744ALL ^ v42 ^ (v40 ^ 0x2F4BC2B74C11D513) & (a7 ^ 0x247E2A7C19A01A58);
  v46 = a3 ^ a36 ^ 0xDCA1BFF9325301B9 ^ v44;
  v47 = v41 ^ (a3 ^ a36) & 0x9AAEDB8188C84BB1 ^ (v40 ^ a8 ^ 0xC0A19DCE67CEC833) & (a3 ^ a36 ^ 0xF52544A7456B89D2);
  v48 = v42 & 0x39131236ECE8CB31 ^ 0x2800123244008B01 ^ (v42 ^ 0x6840DABA4406BBC9) & (a7 ^ 0xC11D4C52194F5ADCLL);
  v49 = v47 ^ v44;
  v50 = v47 ^ v44 ^ 0x760158FFEA4F74F8;
  v51 = v46 & 1;
  if ((v46 & 1u & v48) + 0x5BBE95C18F6313D6 - 2 * (v46 & 1u & v48) != 0x5BBE95C18F6313D6)
  {
    v51 = -v51;
  }

  v52 = (v51 + v48) ^ v46 & 0xFFFFFFFFFFFFFFFELL;
  v53 = v52 ^ 0x445F59FB81823494 ^ (8 * (v52 ^ 0x445F59FB81823494));
  *(&v54 + 1) = v52 ^ 0x445F59FB81823494;
  *&v54 = v52;
  v55 = (v54 >> 39) & 0x1E76F7AFBBFFFFFFLL ^ v53 & 0xF73AA4F170A11145 ^ (v53 ^ 0x152008A02C696) & ((v52 >> 61) ^ 0x8C55B0E8F5EEEBELL) ^ (v53 & 0x1EEC89C77A29D23FLL ^ 0xF96581D704A1DBD9 ^ (v53 ^ 0x18EC898740091029) & ((v52 >> 61) ^ 0x1EEC89C77A29D23BLL)) & (((v52 ^ 0x445F59FB81823494) << 25) ^ 0xF1FEDC2FBDA9FBFFLL);
  v56 = v45 ^ (v45 >> 1) ^ ((v45 << 63) | 0x3FFFFFFFFFFFFFFLL) & ((v45 >> 6) ^ 0x8324235FA2CFFF58) ^ ((v55 ^ 0x5676E24F886249BBLL) + ((v45 << 58) ^ 0xDC00000000000000) - 2 * ((v55 ^ 0x5676E24F886249BBLL) & ((v45 << 58) ^ 0xDC00000000000000)));
  v57 = v47 ^ 0x472D1E57A2232895 ^ (v47 >> 7);
  v58 = ((v45 ^ a7 ^ v43) >> 17) ^ ((v45 ^ a7 ^ v43) >> 10) ^ v45 ^ a7 ^ v43 ^ 0x3887596B04540693 ^ ((v45 ^ a7 ^ v43 ^ 0x3887596B04540693) << 47) ^ ((v45 ^ a7 ^ v43 ^ 0x3887596B04540693) << 54);
  *(&v54 + 1) = v47 ^ 0x472D1E57A2232895;
  *&v54 = v47;
  v59 = ((v47 ^ 0x472D1E57A2232895) << 57) ^ ((v47 ^ 0x472D1E57A2232895) << 23) ^ __ROR8__((v54 >> 44) & 0xE0000000000FFFFFLL ^ 0x41E81BFD28464AFELL ^ (((v57 >> 3) ^ 0xD0725B113F10A4EFLL) & ((v57 << 61) ^ 0x3FFFFFFFFFFFFFFFLL) & 0xDFFFFFFFFFFFFFFFLL | ((v57 & 1) << 61)), 61);
  *(&v54 + 1) = v50;
  *&v54 = v49;
  v60 = v50 ^ __ROR8__(v50, 19) ^ (v54 >> 28) ^ v59;
  v61 = v59 ^ v58 ^ 0xC2FF9DE9F3307921;
  v62 = v61 ^ 0x3F0679AB422DCA3FLL;
  v63 = 2 * (v60 ^ 0x54CA2238AA1917DELL);
  v64 = (v56 ^ 0x4904E4FA39CED1EELL) & (v58 ^ 0x304E0BF9CCA2181FLL);
  v65 = v55 & 0x792BA10D43F21C56 ^ 0x1D569E15CD6ED637 ^ (v56 ^ 0xCFD0BA0885C33247) & (v55 ^ 0xA9891DB0779DB644);
  v66 = (v61 ^ 0x90C338F9E35EAC0) & (v60 ^ 0x54CA2238AA1917DELL);
  v67 = v61 & 0x6BFE08829F8B5C3FLL ^ 0x2B0608820209483FLL ^ (__ROR8__(__ROR8__(v58 ^ 0xC2FF9DE9F3307921, 62) ^ 0xFC04C2EEB29BADF5, 2) ^ 0x3B6CAF223F2D9515) & (v61 ^ 0x3F0679AB422DCA3FLL);
  v68 = (v55 ^ 0x5676E24F886249BBLL) & (~v63 + (v60 ^ 0x54CA2238AA1917DELL));
  v69 = (v60 ^ 0x54CA2238AA1917DELL) + 0x345F9F158EFEC273;
  v70 = v60 & 0xC9F5B5DB23E7DF00;
  v71 = v56 ^ (v67 - ((2 * v67) & 0x4901D2037D800CC6) - 0x5B7F16FE413FF99DLL);
  v72 = v56 & 0x22DDFEF4CC6DBC96;
  v73 = v65 ^ (v69 - (v63 & 0x8BF3E2B1DFD84E6));
  v74 = (v65 ^ (v69 - (v63 & 0x68BF3E2B1DFD84E6))) & 0xE0096EE0D8B2C64DLL | v73 & 0x1FF6911F274D39B2;
  v75 = v68 & &_mh_execute_header;
  if ((v68 & &_mh_execute_header & v62) != 0)
  {
    v75 = -v75;
  }

  v76 = v75 + v62;
  v77 = v71 ^ 0x127BF20478F12872;
  v78 = v76 ^ v68 & 0xFFFFFFFEFFFFFFFFLL;
  v79 = v55 ^ v72 ^ v64 ^ 0xF566F73AAA681793 ^ (v74 - 2 * (v74 & 0x745330D3CD13607ALL ^ v73 & 2) - 0xBACCF2C32EC9F88);
  v80 = v74 ^ v78 ^ 0xAC7C0FF4012565E3;
  v81 = v58 ^ v70;
  v82 = v71 ^ 0x7D3E859BD1AEE848;
  v83 = (v71 ^ 0x7D3E859BD1AEE848uLL) >> 1;
  v84 = (v71 ^ 0x7D3E859BD1AEE848) & 0x9B6535C14F352826 ^ (v71 << 63);
  v85 = v81 ^ v66 ^ 0x50DC708EFF86633FLL ^ v77;
  v86 = v79 ^ __ROR8__(v79, 61);
  v87 = 0x8000;
  if (((v74 ^ v78) & 0x8000) != 0)
  {
    v87 = -32768;
  }

  v88 = v86 ^ (v79 << 25) ^ (v79 >> 39);
  v89 = v85 ^ __ROR8__(v85, 10) ^ (v85 << 47) ^ (v85 >> 17);
  v90 = v78 ^ 0x9A383CF881807545 ^ ((v78 ^ 0x9A383CF881807545) >> 7) ^ (((v78 ^ 0x9A383CF881807545) >> 41) | ((v78 ^ 0x9A383CF881807545) << 57)) ^ ((v78 ^ 0x9A383CF881807545) << (v83 & 0x17) << (v83 & 0x17 ^ 0x17));
  *(&v91 + 1) = v82;
  *&v91 = v77;
  v92 = v83 ^ (v91 >> 6) ^ (v84 | v82 & 0x649ACA3EB0CAD7D9) ^ v88;
  v93 = v90 ^ v80 ^ (v80 >> 19) ^ ((v87 + v80) >> 28) ^ (((v87 + v80) ^ 0x8000) << 36) ^ (((v87 + v80) ^ 0x8000) << 45);
  v94 = (v90 ^ v89) - ((2 * (v90 ^ v89)) & 0x4BCF7563A6B4D67ELL);
  v95 = v92 ^ 0x1BD15DE7EA57F00 ^ v90 & ~v89;
  v96 = (v92 ^ 0x1BD15DE7EA57F00) & ~v88 ^ v93;
  v97 = v88 & ~v93 ^ v90 ^ v89;
  v98 = v88 - 2 * (v93 & v88) + v96;
  v99 = (v57 >> 3) & 1;
  v100 = (v57 & 8) == 0;
  v101 = v97 ^ 0x6E04C15915AB860ALL ^ v96;
  v102 = v101 >> 19;
  *(&v91 + 1) = (v101 >> 19) & v101 & 0x1A36E0206AEDLL ^ (v101 >> 28) ^ (((v101 >> 19) | v101) & 0xD8807A36E0206AEDLL | (v101 >> 19) & 0x5C91FDF9512 ^ v101 & 0x277F85C91FDF9512);
  *&v91 = (v101 << 36) ^ (v101 << 45) ^ *(&v91 + 1);
  v103 = v98 ^ (v92 ^ 0xFE42EA21815A80FFLL) & v89;
  v104 = v93 & ((v94 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ v89 ^ v95 ^ 0x7370AC685030CB36;
  v105 = (v103 >> 39) ^ (v103 >> 61) ^ (8 * (v103 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v103 ^ 0x3278F838FE43D2BCLL) - (((v103 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v103 ^ 0x3278F838FE43D2BCLL))));
  v106 = v105 ^ 0x64F1F1;
  v107 = v97 ^ 0x26974B18501E2B14 ^ ((v97 ^ 0x26974B18501E2B14) >> 41) ^ ((v97 ^ 0x26974B18501E2B14) >> 7) ^ ((v97 ^ 0x26974B18501E2B14) << 23) ^ ((v97 ^ 0x26974B18501E2B14) << 57);
  v108 = v95 ^ 0x7955EAEC4D48B80CLL ^ (v95 << 63) ^ __ROR8__(v95 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v95 ^ 0x7955EAEC4D48B80CuLL) >> v99 >> v100);
  v109 = v105 ^ 0x64F1F1 ^ v108;
  v110 = (v104 >> 17) ^ __ROR8__(v104, 10) ^ __ROR8__(__ROR8__(v104, 14) & 0xFFFC000000000007 ^ __ROR8__(v104, 61), 3);
  *&v91 = __ROR8__(__ROR8__(v107, 7) ^ __ROR8__(__ROR8__(v91 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v111 = v107 & ~v110 ^ v109;
  v112 = v91 ^ 0xBBDB0FB7A00B9120 ^ (v105 ^ 0xFFFFFFFFFF9B0E0ELL) & v108;
  v113 = v105 ^ (((v109 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v109 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v110 ^ 0x425764BB58132BD4 ^ v112;
  v114 = (v91 ^ 0x4424F0485FF46EDFLL) & v106 ^ v110 ^ v107;
  v115 = v112 ^ 0x97F6A7E5F6E8F58ALL ^ v114;
  v116 = (v114 ^ -v114 ^ (0x70C7A8D3F3643DFDLL - (v114 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v117 = v110 ^ 0x44C9D571A5C4A51CLL ^ v111 ^ (v91 ^ 0xBBDB0FB7A00B9120) & ~(v110 ^ v107);
  v118 = v111 ^ 0xD3DA1E3360BF843ALL ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v111 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v120 = __ROR8__(__ROR8__(v113, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v113 ^ (8 * v113) ^ ((v113 >> 61) | (v113 << 25)), 23) ^ 0x735302FC48340548, 41);
  v121 = (v116 >> 7) ^ (v116 >> 41) ^ (v116 << 23) ^ (v116 << 57);
  v122 = v121 ^ v116;
  v123 = v115 ^ (v115 >> 28) ^ (v115 >> 19) ^ (v115 << 36) ^ (v115 << 45) ^ v121 ^ v116;
  v124 = v118 & 0xFFFFFFF7FFFFFFFFLL ^ (v111 << 63) ^ (v118 & 0x800000000 | ((v111 ^ 0xD3DA1E3360BF843ALL) << (v102 & 0x12) << (v102 & 0x12 ^ 0x3A))) ^ v120;
  if (v121 == v116)
  {
    v125 = 0;
  }

  else
  {
    v125 = v117 << 47;
  }

  v126 = v120 ^ 0x7E241A02A439A981;
  v119 = (v117 ^ (v117 >> 10) | (v117 << 54)) ^ (v117 << 54) & v117;
  v127 = (v125 ^ v119 | (v117 << 47)) ^ (v119 & (v117 << 47) & 0xFFFF800000000000 | (v117 >> 17));
  v128 = v124 ^ 0x7E241A02A439A981;
  v129 = v127 & (v124 ^ 0x81DBE5FD5BC6567ELL);
  v130 = v127 ^ v122 ^ v126 & ~v123;
  v131 = v123 ^ (~(2 * v126) + v126) & (v124 ^ 0x7E241A02A439A981);
  v132 = v130 ^ v131 ^ 0x93C23431B76D41FLL;
  *(&v134 + 1) = v132;
  *&v134 = v130 ^ v131;
  v133 = v134 >> 62;
  v135 = v126 ^ 0x6005BE354A5BB0B2 ^ v131;
  v136 = v123 & ~(v127 ^ v122) ^ v127 ^ v122 & ~v127 ^ v128;
  *(&v134 + 1) = v132;
  *&v134 = v130 ^ v131;
  v137 = ((v134 >> 19) ^ __ROR8__(v133 ^ (4 * (v132 >> 28)) ^ 0x406FF36C296024B3, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v138 = v130 ^ 0x2DB5B6AF87F64351 ^ ((v130 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v130 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v130 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v130 ^ 0x2DB5B6AF87F64351) >> 41);
  v139 = (((v135 ^ v129) << (v122 & 3) << (v122 & 3 ^ 3)) ^ v135 ^ v129 ^ (((v135 ^ v129) >> 39) ^ ((v135 ^ v129) >> 61) | ((v135 ^ v129) << 25))) & ~(v138 ^ (v132 << 36) ^ (((2 * v137) & 0xFFFFFFFF18D20D4ALL) + (v137 ^ 0xFFFFFFFF8C6906A5))) ^ __ROR8__(v136 ^ 0xF374A001D380BDC2, 17) ^ ((v136 ^ 0xF374A001D380BDC2) >> 10) ^ (((v136 ^ 0xF374A001D380BDC2) << 54) | (v136 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v136 ^ 0xF374A001D380BDC2) << 54) & (v136 ^ 0xF374A001D380BDC2) | v136 & 0x20) ^ v138;
  return (*(a38 + 8 * (v38 ^ (55 * (a35 > 2 * (a37 & 1) + (a37 ^ 1u))))))(v139 ^ __ROR8__(v139 ^ 0x3096EC2D0511544CLL, 7) ^ ((v139 ^ 0x3096EC2D0511544CLL) << 23) ^ ((v139 ^ 0x3096EC2D0511544CLL) >> 41));
}

uint64_t sub_10002B468()
{
  STACK[0x358] -= 1616;
  LODWORD(STACK[0x3AC]) = -1982131713;
  return (*(v1 + 8 * (((((v0 - 1924) | 0x480) ^ (v0 - 194822239) & 0xB9CBDF7 ^ 0x1B6) * (STACK[0x458] == 0)) ^ (v0 - 634))))();
}

uint64_t sub_10002B558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 742307843 * (((((v66 - 200) | 0xC5DAA69A) ^ 0xFFFFFFFE) - (~(v66 - 200) | 0x3A255965)) ^ 0x6759261F);
  *(v66 - 192) = STACK[0x378];
  *(v66 - 200) = -473373701 - v68 + v65;
  *(v66 - 180) = -990918455 - v68;
  (*(v67 + 8 * (v65 ^ 0x8A1)))(v66 - 200);
  STACK[0x2C8] = *(a65 + 8 * v65);
  return sub_10002EC38(17);
}

uint64_t sub_10002B5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(*(a14 + 96) + 504) = v37 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v41 = 742307843 * ((((v40 - 160) | 0xEC35828C) - ((v40 - 160) & 0xEC35828C)) ^ 0xB149FDF6);
  STACK[0x2D8] = &a28;
  *(v40 - 140) = -990918455 - v41;
  *(v40 - 160) = v38 - v41 - 473374416;
  v42 = (*(v39 + 8 * (v38 ^ 0xA74)))(v40 - 160);
  return (*(v39 + 8 * (((a16 - 1641672335 + (a37 & 0x3Fu) + 593 < v38 - 816) * ((v38 ^ 0x1A1) + 745)) ^ v38)))(v42);
}

void sub_10002B7E4(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 922138987 || *(*(a1 + 8) + 4) == 922138987;
  v1 = *a1 ^ (1785193651 * (((a1 | 0x57840AB1) - (a1 & 0x57840AB1)) ^ 0x7B335159));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10002B8C4@<X0>(int a1@<W0>, char a2@<W3>, unsigned int a3@<W4>, char a4@<W5>, int a5@<W6>, int a6@<W7>, unsigned int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, void *a24)
{
  v30 = (v26 + (a1 - 1));
  v31 = 840099951 * ((*(*a24 + (*a23 & a3)) ^ v30) & 0x7FFFFFFF);
  v32 = 840099951 * (v31 ^ HIWORD(v31));
  v33 = v32 >> (((v25 ^ 0x39 ^ a2) + 24) ^ a4);
  LOBYTE(v33) = *(*(v27 + 8 * (v25 ^ 0x539 ^ a6)) + v33 - 3) ^ *(*(v27 + 8 * (v25 ^ 0x539 ^ a5)) + v33 - 12) ^ *(*(v27 + 8 * ((v25 ^ 0x539) - 734)) + v33 - 10) ^ v32 ^ (-5 * v33);
  *v30 = v33 ^ (a7 >> v24);
  return (*(v29 + 8 * (((a1 == (v33 != (a7 >> v24))) * v28) ^ v25 ^ 0x539)))();
}

uint64_t sub_10002B900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  v85 = v66;
  v81 = v72;
  v82 = v71;
  v80 = v73;
  v79 = v74;
  LODWORD(a26) = v67;
  switch(v66)
  {
    case 0x20:
      LODWORD(a22) = 0;
      v78 = *(&off_1000610D0 + a51);
      v75 = 19;
      break;
    case 0x14:
      LODWORD(a22) = 0;
      v78 = *(&off_1000610D0 + a49) - 12;
      v75 = 15;
      break;
    case 0x10:
      LODWORD(a22) = 0;
      v78 = *(&off_1000610D0 + v68 - 1875) - 8;
      v75 = 18;
      break;
    default:
      v78 = 0;
      HIDWORD(a24) = 0;
      LODWORD(a25) = 0;
      LODWORD(a22) = 1;
      goto LABEL_9;
  }

  LODWORD(a25) = v75;
  HIDWORD(a24) = 1;
LABEL_9:
  v76 = 742307843 * ((v69 - 200) ^ 0x5D7C7F7A);
  *(v69 - 160) = ((2 * a61) & 0x33B6BFDC) - v76 + (a61 ^ (v68 - 1891) ^ 0x19DB5F99) - 8931340;
  *(v69 - 136) = (v68 + 26) ^ v76;
  *(v69 - 200) = &STACK[0x3B4];
  *(v69 - 192) = a55;
  *(v69 - 152) = 0;
  *(v69 - 144) = 0;
  *(v69 - 128) = a54;
  *(v69 - 176) = a56;
  *(v69 - 168) = a8;
  (*(v70 + 8 * (v68 + 205)))(v69 - 200);
  return (*(a66 + 8 * ((1324 * (*(v69 - 184) == 1982089928)) ^ v67)))(2223109194, 963252294, a3, 3372828308, 761161267, 1522325628, 2312835345, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v78, a24, a25, a26, v79, *(&v79 + 1), a29, a30, a31, a32, v80, *(&v80 + 1), a35, a36, v81, *(&v81 + 1), v82, *(&v82 + 1), a41, a42, a43, a44, a45, a8, a3, v85);
}

uint64_t sub_10002BAD4(int8x16_t a1, int8x16_t a2, int32x4_t a3, uint64_t a4, int a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v45 = *(v39 + 8 * v37);
  v46 = *(v44 - 156);
  v47 = *(v44 - 152);
  v48 = *(v44 - 144);
  v49 = *(v44 - 132);
  if (v49 == 2)
  {
    v71 = *(v39 + 8 * v37);
    v72 = vld4q_s8(a6);
    HIDWORD(a18) = *(v44 - 140);
    v62 = veorq_s8(v72.val[1], a1);
    _Q21 = vmovl_high_u8(v62);
    _Q20 = vmovl_u8(*v62.i8);
    v65 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v66 = vmovl_u8(*&veorq_s8(v72.val[2], a1)).u64[0];
    v72.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v72.val[3], a1)));
    v67 = vorrq_s8(vorrq_s8(vorrq_s8(v65, vshll_n_u16(v66, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v72.val[0], a1))), 0x18uLL)), v72.val[2]);
    v72.val[2] = veorq_s8(vandq_s8(v67, a2), (*&v72.val[2] & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v38 = vaddq_s32(vsubq_s32(v67, vaddq_s32(v72.val[2], v72.val[2])), a3).u32[0];
    v68 = (HIDWORD(a21) + 872);
    v69 = &v38[v40 + 1526165830];
    v70 = *(v69 - 14);
    *v69 = v68 ^ __ROR4__(*(v69 - 3) ^ v43 ^ *(v69 - 8) ^ v70 ^ *(v69 - 16), 31) ^ 0x4E502094;
    return (*(v39 + 8 * ((1448 * (v42 == 1526165767)) ^ HIDWORD(a21))))(v46, v68, v70, a22, v47, v47, v45, v48, a12, a13, a14, a15, a16, a17, a18, a19, v71, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
  }

  else if (v49 == 1)
  {
    v73 = vld4q_s8(a6);
    v50 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v73.val[0], a1)));
    v51 = veorq_s8(v73.val[2], a1);
    _Q25 = vmovl_u8(*v51.i8);
    _Q24 = vmovl_high_u8(v51);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v73.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v73.val[3], a1))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v73.val[1], a1)), 8uLL), v50));
    v60 = veorq_s8(vandq_s8(v73.val[2], a2), (*&v50 & __PAIR128__(0xFFFFFF02FFFFFF02, 0xFFFFFF02FFFFFF02)));
    *v38 = vaddq_s32(vsubq_s32(v73.val[2], vaddq_s32(v60, v60)), a3).u32[0];
    return (*(v39 + 8 * ((77 * (a22 + 1 != v42)) ^ (a5 + v41 + 1237))))(v48);
  }

  else
  {
    return sub_10002C208();
  }
}

uint64_t sub_10002C208@<X0>(int a1@<W0>, int a2@<W4>, uint64_t (*a3)(void)@<X6>, int a4@<W7>, int a5@<W8>)
{
  v9 = (((a1 ^ 0x7763739) - 125187897) ^ ((a1 ^ 0xC421F10F) + 1004408561) ^ ((a1 ^ 0x5F6DF17D) - 1601040765)) + (((a5 ^ 0xA752222F) + 1487789521) ^ ((a5 ^ 0xE6C1503E) + 423538626) ^ ((a5 ^ 0xDDA9455A) + 576109222)) + 1340955454;
  v10 = (((a2 ^ 0x3D6E7885) - 1030649989) ^ ((a2 ^ 0xD52C1778) + 718530696) ^ ((a2 ^ 0x747858B6) - 1954044086)) + (((v5 ^ 0x54107239) - 1410363961) ^ ((v5 ^ 0x76D82293) - 1993876115) ^ ((v5 ^ 0xBEF267E1) + 1091409951)) - 1394499267;
  v11 = (v10 ^ 0xE39AED1D) & (2 * (v10 & 0x8B92CD59)) ^ v10 & 0x8B92CD59;
  v12 = ((2 * (v10 ^ 0xE5BB658D)) ^ 0xDC5351A8) & (v10 ^ 0xE5BB658D) ^ (2 * (v10 ^ 0xE5BB658D)) & v6;
  v13 = v12 ^ 0x2228A854;
  v14 = (v12 ^ 0x4C010080) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xB8A6A350) & v13 ^ (4 * v13) & v6;
  v16 = (v15 ^ 0x2820A050) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x46090884)) ^ 0xE29A8D40) & (v15 ^ 0x46090884) ^ (16 * (v15 ^ 0x46090884)) & (v6 - 4);
  v18 = v16 ^ v6 ^ (v17 ^ 0x62088800) & (v16 << 8);
  *(v8 - 156) = v9 ^ ((v9 ^ 0xE7591531) + 266208871) ^ ((v9 ^ 0x3E69C33F) - 688992151) ^ ((v9 ^ 0xB1B66549) + 1496413727) ^ ((v9 ^ 0x7FFE5FEF) - 1753658183) ^ 0x8B42DBE3;
  *(v8 - 152) = v10 ^ (2 * ((v18 << 16) & 0x6E290000 ^ v18 ^ ((v18 << 16) ^ 0x28D40000) & (((v17 ^ 0xC212094) << 8) & 0x6E290000 ^ 0x46010000 ^ (((v17 ^ 0xC212094) << 8) ^ 0x29A80000) & (v17 ^ 0xC212094)))) ^ 0x9BFBABBA;
  v19 = (((v7 ^ 0xA79CAC06) + 1482904570) ^ ((v7 ^ 0x6113BE8A) - 1628683914) ^ ((v7 ^ 0x5AB525C7) - 1521821127)) + (((*(v8 - 148) ^ 0x7AA0F580) - 2057368960) ^ ((*(v8 - 148) ^ 0x8209A0FB) + 2113298181) ^ ((*(v8 - 148) ^ 0x64936230) - 1687380528)) - 2026464551;
  v20 = (v19 ^ 0x29B9DB39) & (2 * (v19 & 0xB13DD3BD)) ^ v19 & 0xB13DD3BD;
  v21 = ((2 * (v19 ^ 0x6BF87911)) ^ 0xB58B5558) & (v19 ^ 0x6BF87911) ^ (2 * (v19 ^ 0x6BF87911)) & 0xDAC5AAAC;
  v22 = v21 ^ 0x4A44AAA4;
  v23 = (v21 ^ 0x80810008) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x6B16AAB0) & v22 ^ (4 * v22) & 0xDAC5AAAC;
  v25 = (v24 ^ 0x4A04AAA0) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x90C1000C)) ^ 0xAC5AAAC0) & (v24 ^ 0x90C1000C) ^ (16 * (v24 ^ 0x90C1000C)) & 0xDAC5AAA0;
  v27 = v25 ^ 0xDAC5AAAC ^ (v26 ^ 0x8840AA00) & (v25 << 8);
  v28 = (((a4 ^ 0x40F7F272) - 1089991282) ^ ((a4 ^ 0x86133E88) + 2045559160) ^ ((a4 ^ 0x5ADEFBB1) - 1524562865)) + (((*(v8 - 144) ^ 0xA6A0E597) + 1499404905) ^ ((*(v8 - 144) ^ 0xF2C786EF) + 221804817) ^ ((*(v8 - 144) ^ 0xC85D5433) + 933407693)) + 1669458003;
  *(v8 - 148) = v19 ^ (2 * ((v27 << 16) & 0x5AC50000 ^ v27 ^ ((v27 << 16) ^ 0x2AAC0000) & (((v26 ^ 0x5285002C) << 8) & 0x5AC50000 ^ 0x1A450000 ^ (((v26 ^ 0x5285002C) << 8) ^ 0x45AA0000) & (v26 ^ 0x5285002C)))) ^ 0x8D84B1AE;
  *(v8 - 144) = v28 ^ ((v28 ^ 0x25C9F556) - 247762155) ^ ((v28 ^ 0x1A151CE3) - 823682398) ^ ((v28 ^ 0x6B0E6FF7) - 1073944138) ^ ((v28 ^ 0x7FDFFFFF) - 1423083074) ^ 0xB7374EF6;
  return a3();
}

uint64_t sub_10002CA90@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + 1889243899) & 0x8F646DDE;
  v5 = (&STACK[0x248] + 4 * v2 + 16);
  v6 = v4 - 314;
  v7 = vdupq_n_s32(0x86E9CC4E);
  v5[-1] = v7;
  *v5 = v7;
  v8 = v4 - 218 - 248 == (a1 & 0xFFFFFFFFFFFFFFF8);
  return (*(v3 + 8 * (((8 * v8) | (16 * v8)) ^ v6)))();
}

uint64_t sub_10002CB08@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, _DWORD *a10)
{
  v13 = 18 * (a2 ^ 0x6F1);
  v14 = (*a10 ^ 0x86E9CC4E) * *(*(a5 + 24) + 16);
  v15 = 1082434553 * ((((v11 - 128) | 0x507122FB) - ((v11 - 128) & 0x507122FB)) ^ 0xCB36D471);
  *(v11 - 120) = v15 + 922138987;
  *(v11 - 112) = &a9;
  *(v11 - 104) = v13 - v15 - 1456;
  *(v11 - 100) = ((v14 ^ 0xDFFE6FD6) + (((v13 - 722) | 0x210) ^ 0x7F99B210) + ((2 * v14) & 0xBFFCDFAC)) ^ v15;
  *(v11 - 128) = a6;
  v16 = (*(v10 + 8 * (v13 + 475)))(v11 - 128);
  return (*(v10 + 8 * (((4 * (a1 != 1)) | (8 * (a1 != 1))) ^ v13)))(v16);
}

uint64_t sub_10002CC48@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v2 + v5) - ((2 * *(v2 + v5)) & 0x8F) - 57;
  return (*(v1 + 8 * ((255 * (v5 == ((v4 - 1044939379) & 0xBF5BA333 ^ 0x81132301))) ^ v4)))(0);
}

uint64_t sub_10002CCAC(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -29042;
  a1.n128_u8[2] = -114;
  a1.n128_u8[3] = -114;
  a1.n128_u8[4] = -114;
  a1.n128_u8[5] = -114;
  a1.n128_u8[6] = -114;
  a1.n128_u8[7] = -114;
  a2.n128_u16[0] = -14393;
  a2.n128_u8[2] = -57;
  a2.n128_u8[3] = -57;
  a2.n128_u8[4] = -57;
  a2.n128_u8[5] = -57;
  a2.n128_u8[6] = -57;
  a2.n128_u8[7] = -57;
  return sub_10002CCD4(a1, a2);
}

uint64_t sub_10002CD18@<X0>(int a1@<W2>, int a2@<W5>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q3>)
{
  v10 = (v8 + (v5 + v7));
  v11 = *v10;
  v12 = v10[1];
  v13 = (v6 + v5);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a5)), a4);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a5)), a4);
  return (*(v9 + 8 * (((v5 == 32) * a1) ^ (a2 + a3 + 2910))))();
}

uint64_t sub_10002CD74(__n128 a1)
{
  v3.n128_u64[0] = (v1 + 13) & 0xF;
  v3.n128_u64[1] = (v1 + 12) & 0xF;
  v4.n128_u64[0] = (v1 + 11) & 0xF;
  v4.n128_u64[1] = (v1 + 10) & 0xF;
  v5.n128_u64[0] = (v1 + 9) & 0xF;
  v5.n128_u64[1] = v1 & 0xF ^ 8;
  v8.val[0].i64[0] = (v1 + 7) & 0xF;
  v8.val[0].i64[1] = (v1 + 6) & 0xF;
  v8.val[1].i64[0] = (v1 + 5) & 0xF;
  v8.val[1].i64[1] = (v1 + 4) & 0xF;
  v8.val[2].i64[0] = (v1 + 3) & 0xF;
  v8.val[2].i64[1] = (v1 + 2) & 0xF;
  v8.val[3].i64[0] = (v1 + 1) & 0xF;
  v8.val[3].i64[1] = v1 & 0xF;
  v6.n128_u64[0] = 0x7373737373737373;
  v6.n128_u64[1] = 0x7373737373737373;
  return sub_10002CE54(v2 - 15, (v1 + 14) & 0xF, a1, v3, v4, v5, xmmword_10005A920, vqtbl4q_s8(v8, xmmword_10005A920), v6);
}

uint64_t sub_10002CE54@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v18 = ~v16 + v13;
  v19 = v18 & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v21.i64[1] = a6;
  v22 = vrev64q_s8(vmulq_s8(v21, a7));
  *(a1 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v10 + v19 - 15), *(a1 + v18)), veorq_s8(*(v12 + v19 - 15), *(v19 + v11 - 14))), vextq_s8(v22, v22, 8uLL));
  return (*(v17 + 8 * (((a3 + v16 == v14) * a2) | v15)))();
}

uint64_t sub_10002CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v18 - 120) = v13 + 210068311 * ((~(v15 | 0x71EC473C) + (v15 & 0x71EC473C)) ^ 0x7C98172B) + 792;
  *(v18 - 136) = a13;
  *(v18 - 128) = v16;
  v19 = (*(v14 + 8 * (v13 + 2111)))(v18 - 136);
  return (*(v14 + 8 * ((((26 * ((v13 - 412087417) & 0x188FF7C6 ^ 0x3E7)) ^ 0x355) * (v17 != 1)) ^ v13)))(v19);
}

uint64_t sub_10002CFE0@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v12 = (v10 + 4 * v9);
  v13 = HIDWORD(v5) + (*v12 ^ a2) + HIDWORD(v6) + v4 * (*(v3 + 4 * v9) ^ a2);
  *(v12 - 1) = v13 + ((v8 - 1180) ^ (a2 + 188)) - (a1 & (2 * v13));
  return (*(v7 + 8 * (((v9 + 1 == v2) * v11) ^ (v8 - 455))))();
}

uint64_t sub_10002D048@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + (v3 - 179) - 384;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((((v5 == 0) << 6) | ((v5 == 0) << 7)) ^ (v3 - 474))))();
}

uint64_t sub_10002D07C(uint64_t a1)
{
  v1 = 1785193651 * ((a1 - 1746509666 - 2 * (a1 & 0x97E6609E)) ^ 0xBB513B76);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) ^ v1;
  v5 = v4 + *(v3 + 68) - 1094077433;
  *(v3 + 68) = v5;
  v4 += 1912099827;
  v6 = v4 < 0xB32E9FEC;
  v7 = v5 - 1288790036 < v4;
  if (v6 != v5 > 0x4CD16013)
  {
    v7 = v6;
  }

  return (*(*(&off_1000610D0 + v2 - 623) + ((1758 * v7) ^ v2)))();
}

uint64_t sub_10002D180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27)
{
  v31 = &a27 + v29;
  *v31 = 0xC7C7C7C7C7C7C7C7;
  *(v31 + 1) = 0xC7C7C7C7C7C7C7C7;
  return (*(v30 + 8 * ((1906 * (((v28 - 1458) ^ 0xA7) == (v27 & 0x30))) ^ (v28 - 1458))))();
}

uint64_t sub_10002D294(int a1, int a2, int a3, int a4, int a5)
{
  v10 = v7 > a1;
  v11 = (((v9 - 260) | a2) ^ a3) + v5;
  v12 = v10 ^ (v11 < a4);
  v13 = v11 < v8;
  if (!v12)
  {
    v10 = v13;
  }

  return (*(v6 + 8 * ((v10 * a5) ^ v9)))();
}

uint64_t sub_10002D2E4@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = (v5 - 307) | 0x80;
  v8 = STACK[0x2F8];
  v9 = *(a5 + 72);
  *(v8 + (a1 + 935329739)) = (HIBYTE(v9) ^ 0x9C) - (((HIBYTE(v9) ^ 0xFFFFFF9C) << ((v7 ^ 0x4E) + 39)) & 0x8E) - 57;
  *(v8 + (a1 + 935329740)) = (BYTE2(v9) ^ 0x3A) - ((2 * (BYTE2(v9) ^ 0x3A)) & 0x8F) - 57;
  *(v8 + (a1 + 935329741)) = (a2 ^ BYTE1(v9)) - ((2 * (a2 ^ BYTE1(v9))) & 0x8F) - 57;
  *(v8 + (a1 + 935329742)) = v9 ^ a3;
  return (*(v6 + 8 * (((*(a5 + 92) > 4u) * a4) ^ v7)))();
}

void sub_10002D4BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *(a1 + 8) != 0;
  v1 = *(a1 + 4) ^ (1563904627 * (((a1 | 0x91D0D362) - a1 + (a1 & 0x6E2F2C9D)) ^ 0xB81F645E));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10002D60C()
{
  v6 = (v3 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v1 - 1167) | 0x22) ^ 0xF9E)) ^ v1)))();
}

void sub_10002D714(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = ((((v15 - 144) | 0xB2F824FD) + (~(v15 - 144) | 0x4D07DB02)) ^ 0xEF845B86) * v14;
  *(v15 - 144) = v13;
  *(v15 - 136) = &a12;
  *(v15 - 128) = v12 - v16 + (((a1 - 449) | 0x400) ^ 0xF6ABC70D);
  *(v15 - 124) = a1 - v16 + 695;
  JUMPOUT(0x100021658);
}

uint64_t sub_10002DB30()
{
  v7 = *(v2 + 4 * (v1 - 1));
  *(v2 + 4 * v1) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v2 + 4 * v1)) - v1;
  *(v6 - 148) = v0 - 392802875 + v5;
  *(v6 - 144) = (v0 - 392802852) ^ v5;
  *(v6 - 120) = v5 ^ (v0 - 392802875) ^ 0x8B;
  *(v6 - 136) = 623 - v5;
  *(v4 + 40) = v1 + 1 - v5;
  *(v6 - 128) = v5 + v0 + 1212453871;
  *(v6 - 124) = 1 - v5;
  v8 = (*(v3 + 8 * (v0 ^ 0xEF3)))(v6 - 152);
  return (*(v3 + 8 * *(v6 - 152)))(v8);
}

uint64_t sub_10002DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = 1388665877 * ((((v18 - 144) | 0xF046DD0C) - ((v18 - 144) & 0xF046DD0C)) ^ 0x7DEBBFE0);
  *(v18 - 124) = (1484576113 * (v17 - 4) + 856306053 + ((v15 - 577) | 0x112) - 402) ^ v19;
  *(v18 - 144) = v19 + v15 + 479;
  *(v18 - 136) = a15;
  v20 = (*(v16 + 8 * (v15 ^ 0xA40)))(v18 - 144);
  return (*(v16 + 8 * ((62 * (*(v18 - 128) != -1955771696)) | v15)))(v20);
}

uint64_t sub_10002DD0C()
{
  v4 = (((v1 + 1647) - 512) ^ (v1 + 1136)) + v0;
  if (v2)
  {
    v5 = v4 == 200;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v3 + 8 * ((58 * v6) ^ v1)))();
}

uint64_t sub_10002DE00@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = (v9 - 1);
  *(a1 + v12) = ((v12 & 0xF) * a2) ^ *(a6 + v12) ^ *(v7 + (v12 & 0xF)) ^ *((v12 & 0xF) + v8 + 5) ^ *((v12 & 0xF) + a7 + (v10 + 1920) - 2009) ^ 0xC7;
  return (*(v11 + 8 * (((v12 == (((v10 - 10) | a4) ^ a5)) * (((v10 - 10) ^ a3) + 422)) ^ (v10 + 1694))))();
}

void sub_10002DE4C(uint64_t a1)
{
  v1 = *a1 + 143681137 * ((a1 - 1148434714 - 2 * (a1 & 0xBB8C46E6)) ^ 0xDAD4CD36);
  v2 = *(a1 + 8);
  v3 = *(&off_1000610D0 + (v1 ^ 0x475));
  (*(v3 + 8 * (v1 ^ 0xCAF)))(*(&off_1000610D0 + v1 - 1154) - 8, sub_100032D18);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10002DF6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x3D0] = a1;
  LODWORD(STACK[0x3F4]) = v8;
  v9 = STACK[0x2E0];
  STACK[0x328] = 335;
  *(v9 + 335) = (&STACK[0x328] ^ 0xBA) * (&STACK[0x328] + 17);
  return (*(a7 + 8 * ((818 * (STACK[0x328] == 0)) ^ (((v7 + 839) | 0x82) - 1672))))();
}

uint64_t sub_10002E2A0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16) + 1082434553 * (((a1 | 0xD5CAE9CF) - (a1 & 0xD5CAE9CF)) ^ 0x4E8D1F45) + 562359031;
  v5 = (1785193651 * ((((2 * &v5) | 0xA12EB462) - &v5 + 795387343) ^ 0xFC2001D9)) ^ (*(a1 + 16) + 1082434553 * (((a1 | 0xD5CAE9CF) - (a1 & 0xD5CAE9CF)) ^ 0x4E8D1F45) + 562360057);
  v6 = v2;
  v7 = v1;
  return (*(*(&off_1000610D0 + v3) + v3 + 2073))(&v5);
}

void sub_10002E398(uint64_t a1)
{
  v2 = *(&off_1000610D0 + ((107 * ((qword_100064130 + dword_100064150) ^ 0xF9)) ^ byte_10004D3E0[byte_10005A6B0[(107 * ((qword_100064130 + dword_100064150) ^ 0xF9))] ^ 0x1F]) + 169);
  v3 = 107 * (*v2 ^ qword_100064130 ^ 0xF9);
  v4 = *(&off_1000610D0 + (byte_1000576F4[(byte_100052A8C[v3 - 12] ^ 0xE8) - 4] ^ v3) - 176);
  v5 = *v2 ^ &v9 ^ *(v4 - 4);
  v6 = (1010482283 * v5) ^ 0xABAF40B6402B16F9;
  v7 = 1010482283 * (v5 ^ 0xABAF40B6402B16F9);
  *v2 = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_1000610D0 + ((107 * ((qword_100064130 + dword_100064150) ^ 0xF9)) ^ byte_100052980[byte_10004D2E0[(107 * ((qword_100064130 + dword_100064150) ^ 0xF9))] ^ 0xA0]) - 23);
  (*(v8 + 8 * ((byte_1000577F0[byte_100052B80[(107 * (v4 ^ 0xF9 ^ v7))] ^ 0xEF] ^ (107 * (v4 ^ 0xF9 ^ v7))) + 2040)))(*(&off_1000610D0 + ((107 * ((v7 - v4) ^ 0xF9)) ^ byte_1000577F0[byte_100052B80[(107 * ((v7 - v4) ^ 0xF9))] ^ 0x81]) - 72) - 8, sub_100032D18);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002E578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = v23 - 270 + 210068311 * ((1992946110 - (&a18 | 0x76C9F1BE) + (&a18 | 0x89360E41)) ^ 0x7BBDA1A9);
  a18 = a16;
  a19 = &a12;
  (*(v22 + 8 * (v23 + 1136)))(&a18);
  a18 = a16;
  a19 = &a14;
  a21 = v23 - 270 + 210068311 * (((&a18 ^ 0xF0FE9430) & 0xBE711956 | ~(&a18 ^ 0xF0FE9430 | 0xBE711956)) ^ 0x43FBDD71);
  (*(v22 + 8 * (v23 + 1136)))(&a18);
  a18 = a16;
  a19 = &a10;
  a21 = v23 - 270 + 210068311 * ((((2 * &a18) | 0x9584D61A) - &a18 - 1254255373) ^ 0xB849C4E5);
  (*(v22 + 8 * (v23 ^ 0xC70)))(&a18);
  HIDWORD(a19) = v23 + 1037613739 * ((2 * (&a18 & 0x39088C08) - &a18 + 1190622196) ^ 0x97F55E8B) - 140;
  a18 = a16;
  v24 = (*(v22 + 8 * (v23 + 1167)))(&a18);
  return (*(v22 + 8 * (((a19 != v21 + ((v23 - 1014) | 0x7A0) - 1968) * ((v23 + 2007413397) & 0x88594D7E ^ 0x406)) ^ v23)))(v24);
}

void sub_10002E7AC(uint64_t a1)
{
  v1 = *(a1 + 8) + 1388665877 * ((2 * (a1 & 0x16626929) - a1 - 375548202) ^ 0x6430F43A);
  v4 = *a1;
  v3[0] = (2066391179 * (((v3 | 0x63AA340D) - v3 + (v3 & 0x9C55CBF0)) ^ 0xCC8DB615)) ^ (v1 + 517);
  v2 = *(&off_1000610D0 + v1 - 570);
  (*(v2 + 8 * (v1 ^ 0xA89)))(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002E98C(uint64_t a1)
{
  v3 = (*(v1 + 17760))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 17024))(a1);
  return v5;
}

uint64_t sub_10002EA10@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v26 = (a15 + 24 * v21);
  *v26 = v25;
  v26[1] = a2;
  *&v22[6 * v21 + 4] = v23;
  v26[4] = a19;
  *v22 = v20 + ((v19 + 189758370) & 0xF4B083FD) - 236;
  return (*(v24 + 8 * ((176 * (a3 + a1 < (v19 + 2147483318))) ^ v19)))();
}

uint64_t sub_10002EAF4(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x76244AC8u;
}

uint64_t sub_10002EC38@<X0>(int a1@<W8>)
{
  STACK[0x4A8] = v2;
  LODWORD(STACK[0x4B4]) = a1;
  STACK[0x348] = v1;
  return (*(v4 + 8 * ((1109 * ((*(v2 + 68) & ((v3 - 106) ^ 0x18Au)) + a1 > 0x3F)) ^ v3)))();
}

uint64_t sub_10002ECF4@<X0>(int a1@<W8>)
{
  if ((a1 - 1119567746) <= 0x1B && ((1 << (a1 + 126)) & 0x9014001) != 0)
  {
    return sub_10000970C();
  }

  else
  {
    return (*(v3 + 8 * ((1077 * ((*(v4 + 48 * v2 + 40) & 8) == -294418566 - v5)) ^ (v6 - 294419384))))(4294925278);
  }
}

void sub_10002ED74(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_1000610D0 + (v1 ^ 0x342));
  v3 = *(v2 + 8 * ((((*(v2 + 8 * (v1 ^ 0xBA8)))(32, 0x101004023FF3BD5) == 0) * (((v1 - 1791391332) & 0x6AC6767A) + 1009)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002EE3C@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 ^ 0xA3E)))(*v4);
  *v3 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 263373551;
  return result;
}

uint64_t sub_10002EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 128) = &a22;
  *(v32 - 120) = &a28;
  *(v32 - 104) = v31;
  *(v32 - 112) = (v29 + 1330) ^ (1785193651 * ((531224640 - ((v32 - 144) | 0x1FA9D840) + ((v32 - 144) | 0xE05627BF)) ^ 0xCCE17C57));
  *(v32 - 144) = a13;
  *(v32 - 136) = &a22;
  (*(v30 + 8 * (v29 + 1966)))(v32 - 144);
  return sub_10001FC9C();
}

uint64_t sub_10002F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v15 - ((~((v19 - 128) | 0xF3ABFD5B) + ((v19 - 128) & 0xF3ABFD5B)) ^ 0x9713F42E) * v17 + 1322;
  *(v19 - 104) = &a15;
  *(v19 - 120) = &a13;
  v20 = (*(v16 + 8 * (v15 + 1674)))(v19 - 128);
  return (*(v16 + 8 * ((1336 * (*(v19 - 112) > ((v15 - 469) | 0x1C8u) + 422 + v18)) ^ v15)))(v20);
}

uint64_t sub_10002F14C(uint64_t a1, uint64_t a2)
{
  v2 = (qword_100064130 + qword_100064308) ^ &v8;
  qword_100064308 = 1010482283 * v2 + 0x5450BF49BFD4E907;
  qword_100064130 = 1010482283 * (v2 ^ 0xABAF40B6402B16F9);
  v3 = *(a2 + 4);
  v4 = 107 * ((qword_100064130 - (107 * v2 + 7)) ^ 0xF9);
  v5 = *(&off_1000610D0 + (v4 ^ byte_10004D4E0[byte_10005A7B0[v4] ^ 0x33]) + 93);
  if (v3 == 1641671680)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 1641671687)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_10002F484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (v7 <= 0x1B && ((1 << v7) & 0x9014001) != 0)
  {
    return sub_10002F4E4();
  }

  else
  {
    return (*(v9 + 8 * ((a6 + a7 + 2988) ^ (32 * ((*(v11 + v10 * v8 + 40) & 8) == 0)))))(4294925278);
  }
}

uint64_t sub_10002F520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v27 = v26 - 144;
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a22;
  *(v26 - 112) = v24 + 1102 - 1564307779 * ((2 * ((v26 - 144) & 0x37D8E8E8) - (v26 - 144) + 1210521367) ^ 0xDF2ADB04);
  *(v26 - 128) = v22;
  *(v26 - 120) = a14;
  (*(v23 + 8 * (v24 ^ 0x931)))(v26 - 144);
  *(v26 - 112) = v24 + 1102 - 1564307779 * ((2 * ((v26 - 144) & 0x3EEA7F88) - (v26 - 144) + 1091928183) ^ 0xD6184C64);
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a22;
  *(v26 - 128) = v22;
  *(v26 - 120) = a14;
  (*(v23 + 8 * (v24 ^ 0x931)))(v26 - 144);
  *(v26 - 128) = v22;
  *(v26 - 120) = a14;
  *(v26 - 112) = v24 + 1102 - 1564307779 * ((((v26 - 144) | 0x60A77B1D) - (v26 - 144) + ((v26 - 144) & 0x9F5884E0)) ^ 0xF7AAB70E);
  *(v26 - 144) = &a22;
  *(v26 - 136) = &a22;
  (*(v23 + 8 * (v24 ^ 0x931)))(v26 - 144);
  v28 = 1484576113 * v25;
  v29 = 1388665877 * ((((2 * v27) | 0x435EF698) - v27 - 565148492) ^ 0xAC0219A0);
  *(v26 - 136) = a15;
  *(v26 - 124) = (1484576113 * v25 - 2112846173) ^ v29;
  *(v26 - 144) = v24 + 782 + v29;
  (*(v23 + 8 * (v24 ^ 0x913)))(v26 - 144);
  v30 = *(v26 - 128) != -1955771696;
  v31 = 1388665877 * ((~(v27 | 0xF2E7307A) + (v27 & 0xF2E7307A)) ^ 0x80B5AD69);
  *(v26 - 124) = (v28 + 697545010) ^ v31;
  *(v26 - 136) = a15;
  *(v26 - 144) = v24 + 782 + v31;
  v32 = (*(v23 + 8 * (v24 + 1775)))(v26 - 144);
  return (*(v23 + 8 * ((7 * v30) ^ v24)))(v32);
}

uint64_t sub_10002FB84@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  LODWORD(STACK[0x264]) = 0;
  v62 = LODWORD(STACK[0x264])++;
  *v59 = v62 + 1;
  v63 = *v60;
  v64 = 1082434553 * ((((v61 - 200) | 0x6B9574C1A533C5A8) - ((v61 - 200) & 0x6B9574C1A533C5A8)) ^ 0xDBC9BAB63E743322);
  *(v61 - 184) = v64;
  *(v61 - 176) = ((a2 + 654378725) & 0x3FD90FB3) - v64;
  *(v61 - 200) = ((a2 + 654378725) ^ 0x6E) - v64;
  *(v61 - 192) = v63 - v64;
  *(v61 - 168) = 5119 - v64;
  *(v61 - 160) = (a2 - 542398536) ^ v64;
  *(v61 - 156) = a2 + 654378725 + v64;
  v65 = (*(a1 + 8 * (a2 + 163)))(v61 - 200);
  return (*(a59 + 8 * *(v61 - 180)))(v65);
}

uint64_t sub_10002FB8C(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -29042;
  a1.n128_u8[2] = -114;
  a1.n128_u8[3] = -114;
  a1.n128_u8[4] = -114;
  a1.n128_u8[5] = -114;
  a1.n128_u8[6] = -114;
  a1.n128_u8[7] = -114;
  a2.n128_u16[0] = -14393;
  a2.n128_u8[2] = -57;
  a2.n128_u8[3] = -57;
  a2.n128_u8[4] = -57;
  a2.n128_u8[5] = -57;
  a2.n128_u8[6] = -57;
  a2.n128_u8[7] = -57;
  return sub_10002FBC0(a1, a2);
}

uint64_t sub_10002FCC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v30 = *(v28 + 4 * (v26 - 1));
  *(v28 + 4 * v26) = ((1566083941 * (v30 ^ (v30 >> 30))) ^ *(v28 + 4 * v26)) - v26;
  v31 = 50899313 * ((0xCEE7F791C0DFD257 - ((v29 - 152) | 0xCEE7F791C0DFD257) + a24) ^ 0xF27D65CEF741E9FELL);
  *(v25 + 1088) = v26 + 1 - v31;
  *(v29 - 120) = (a1 - 694285421) ^ v31;
  *(v29 - 148) = a1 - 694285346 + v31;
  *(v29 - 144) = (a1 - 694285397) ^ v31;
  *(v25 + 1064) = 623 - v31;
  *(v29 - 128) = v31 + a1 - 1203574407;
  *(v29 - 124) = 1 - v31;
  v32 = (*(v24 + 8 * (v27 + a1 + 1507)))(v29 - 152);
  return (*(v24 + 8 * *(v29 - 152)))(v32);
}

uint64_t sub_10002FE14@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = (a1 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) != 32) * (41 * (v2 ^ 0x7A8) - 449)) ^ ((v2 ^ 0x63) - 874))))();
}

uint64_t sub_10002FE6C@<X0>(int a1@<W3>, int a2@<W4>, uint64_t a3@<X6>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36)
{
  v40 = ((*v38 & 0x7FFFFFFE | v38[623] & 0x80000000) >> (v37 + ((a4 - v37 + 15) | (v39 + 3)) - 110)) ^ v38[396];
  v38[623] = (v40 + a1 - (a2 & (2 * v40))) ^ *(a3 + 4 * (*v38 & 1));
  return (*(v36 + 8 * ((223 * (a36 > 0x26F)) ^ a4)))();
}

void sub_10002FF24(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000300FC()
{
  if (v0 == 5 || v0 == 8)
  {
    LOBYTE(STACK[0x4DF]) = LOBYTE(STACK[0x4FF]) - ((2 * LOBYTE(STACK[0x4FF])) & 0x8F) - 57;
    LOBYTE(STACK[0x4DE]) = LOBYTE(STACK[0x4FE]) - ((LOBYTE(STACK[0x4FE]) << (((v1 - 86) | 0x42) + 59)) & 0x8E) - 57;
    LOBYTE(STACK[0x4DD]) = LOBYTE(STACK[0x4FD]) - ((2 * LOBYTE(STACK[0x4FD])) & 0x8F) - 57;
    LOBYTE(STACK[0x4DC]) = LOBYTE(STACK[0x4FC]) - ((2 * LOBYTE(STACK[0x4FC])) & 0x8F) - 57;
    LOBYTE(STACK[0x4DB]) = LOBYTE(STACK[0x4FB]) - ((2 * LOBYTE(STACK[0x4FB])) & 0x8F) - 57;
    LOBYTE(STACK[0x4DA]) = LOBYTE(STACK[0x4FA]) - ((2 * LOBYTE(STACK[0x4FA])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D9]) = LOBYTE(STACK[0x4F9]) - ((2 * LOBYTE(STACK[0x4F9])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D8]) = LOBYTE(STACK[0x4F8]) - ((2 * LOBYTE(STACK[0x4F8])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D7]) = LOBYTE(STACK[0x4F7]) - ((2 * LOBYTE(STACK[0x4F7])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D6]) = LOBYTE(STACK[0x4F6]) - ((2 * LOBYTE(STACK[0x4F6])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D5]) = LOBYTE(STACK[0x4F5]) - ((2 * LOBYTE(STACK[0x4F5])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D4]) = LOBYTE(STACK[0x4F4]) - ((2 * LOBYTE(STACK[0x4F4])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D3]) = LOBYTE(STACK[0x4F3]) - ((2 * LOBYTE(STACK[0x4F3])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D2]) = LOBYTE(STACK[0x4F2]) - ((2 * LOBYTE(STACK[0x4F2])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D1]) = LOBYTE(STACK[0x4F1]) - ((2 * LOBYTE(STACK[0x4F1])) & 0x8F) - 57;
    LOBYTE(STACK[0x4D0]) = LOBYTE(STACK[0x4F0]) - ((2 * LOBYTE(STACK[0x4F0])) & 0x8F) - 57;
  }

  else
  {
    LOBYTE(STACK[0x4DF]) = STACK[0x1787];
    LODWORD(STACK[0x4DB]) = STACK[0x1783];
    STACK[0x4D3] = STACK[0x177B];
    LOWORD(STACK[0x4D1]) = STACK[0x1779];
    LOBYTE(STACK[0x4D0]) = STACK[0x1778];
  }

  return sub_1000302F0();
}

uint64_t sub_1000302F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x364];
  v73 = 1563904627 * ((((v71 - 200) | 0x26E12CF5) - (v71 - 200) + ((v71 - 200) & 0xD91ED308)) ^ 0xF2E9BC9);
  *(v71 - 144) = STACK[0x200];
  *(v71 - 192) = v67 - v73 - 1068;
  LOBYTE(STACK[0x1828]) = -111 - 115 * ((((v71 + 56) | 0xF5) - (v71 + 56) + ((v71 + 56) & 8)) ^ 0xC9);
  *(v71 - 200) = &STACK[0x3B0];
  *(v71 - 152) = -1563904627 * ((((v71 - 200) | 0x26E12CF5) - (v71 - 200) + ((v71 - 200) & 0xD91ED308)) ^ 0xF2E9BC9) + 75991345 * v72 + 1153423787;
  *(v71 - 184) = v66;
  *(v71 - 176) = &STACK[0x1790];
  *(v71 - 168) = (v68 ^ 0x9BE7CD4F) - v73 + ((((v67 + 1614448401) & 0x9FC577FD) + 936351177) & v69) + 2094923768;
  *(v71 - 160) = &STACK[0x4D0];
  v74 = (*(v65 + 8 * (v67 + 729)))(v71 - 200);
  v75 = *(v71 - 164);
  LODWORD(STACK[0x3A8]) = v75;
  return (*(a65 + 8 * (((v75 != v70) * ((v67 - 1205987791) & 0x47E1E7FD ^ 0x3D0)) ^ v67)))(v74);
}

void sub_10003069C(uint64_t a1)
{
  v1 = 742307843 * ((2 * (a1 & 0x4592A3D6) - a1 + 980245545) ^ 0x67112353);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100030974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19)
{
  v26 = &a19 + 6 * (v25 + v20 + 1);
  v26[2] = v23;
  v26[3] = v24;
  *(v26 + 2) = a14;
  v26[6] = a18;
  a19 = v20 + a9 + 311 - 596;
  return (*(v21 + 8 * ((95 * (v19 + 429084911 < ((a9 + 1158 - v22) ^ 0x6E73877Eu))) ^ (a9 + 1158))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100030AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = (v52 + a1) & v53;
  if (a51)
  {
    v56 = a3 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v56;
  return (*(v54 + 8 * ((50 * ((v57 ^ (v55 + 9)) & 1)) ^ (v55 - 958))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a51 + 800, a51 + 528, a3 + 1168);
}

uint64_t sub_100030B68(unint64_t a1)
{
  STACK[0x358] = v1 - 176;
  STACK[0x3D8] = a1;
  return (*(v4 + 8 * (((v2 - 1765) * (v3 > a1)) ^ v2)))();
}

uint64_t sub_100030C94(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_100030D78(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v5 - 938430804 < (a3 + 137723262);
  if (v5 - 938430804 < v6 + 309 != a3 + 137723262 < ((((v3 - 320749141) & 0x131E3CFF) - 898) ^ v6))
  {
    v7 = a3 + 137723262 < ((((v3 - 320749141) & 0x131E3CFF) - 898) ^ v6);
  }

  return (*(v4 + 8 * ((71 * !v7) ^ v3)))(48);
}

uint64_t sub_100030FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = v16 + ((((v17 - 128) | 0x869789C5) + (~(v17 - 128) | 0x7968763A)) ^ 0x1DD07F4E) * v14 - 322;
  *(v17 - 128) = &a13;
  *(v17 - 120) = a12;
  (*(v13 + 8 * (v16 ^ 0xE5E)))(v17 - 128);
  *(v17 - 120) = a12;
  *(v17 - 104) = v15;
  *(v17 - 128) = v16 - 1082434553 * ((((v17 - 128) | 0x3772E722) - (v17 - 128) + ((v17 - 128) & 0xC88D18D8)) ^ 0xAC3511A8) + 260;
  v18 = (*(v13 + 8 * (v16 ^ 0xE64)))(v17 - 128);
  return (*(v13 + 8 * ((246 * (*(v17 - 112) > ((103 * (v16 ^ 0x614)) ^ 0x4255BA6D) + 98 * (v16 ^ 0x615u))) ^ v16)))(v18);
}

void sub_1000310CC(uint64_t a1)
{
  v1 = *(a1 + 8) - 1785193651 * (((a1 | 0x578DA8E) - a1 + (a1 & 0xFA872571)) ^ 0x29CF8166);
  v2 = *(&off_1000610D0 + v1 - 490);
  v3 = *a1;
  (*(v2 + 8 * (v1 ^ 0xAF4)))(*(&off_1000610D0 + (v1 ^ 0x2D9)) - 8, sub_100032D18);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100031188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _DWORD *a37)
{
  v41 = (*(v38 + 8 * (v37 ^ 0xCA6u)))(a37 + 4, 0);
  v42 = a37[4] + 1876107718 - ((2 * a37[4]) & 0xDFA6438C);
  a37[1] = a37[6] + 1876107718 - ((a37[6] << (v39 + ((v37 - 62) & 0x1F) - 110)) & 0xDFA6438C);
  a37[2] = v42;
  v43 = (*(v38 + 8 * (v37 ^ 0xCBCu)))(v41);
  a37[3] = v43 + 1876107718 - ((2 * v43) & 0xDFA6438C);
  v44 = (*(v38 + 8 * (v37 + 1108)))();
  *a37 = v44 + 1876107718 - ((2 * v44) & 0xDFA6438C);
  LODWORD(a32) = 1809193888;
  LODWORD(a28) = 20;
  return sub_100031310(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, (v40 - 152) | 0x9A27233565301838, a32);
}

uint64_t sub_100031310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37)
{
  v45 = *(v43 + 4 * (v41 - 1));
  *(v43 + 4 * v41) = (*(a37 + 4 * v42) ^ 0x6FD321C6) + v42 + ((1664525 * (v45 ^ (v45 >> 30))) ^ *(v43 + 4 * v41));
  *(v44 - 136) = v40;
  *(v44 - 152) = ((v38 - 352174023) ^ 0x65) - v40;
  *(v44 - 112) = (v38 + 1336540795) ^ v40;
  *(v44 - 108) = v38 - 352174023 + v40;
  STACK[0x5B8] = a35;
  STACK[0x5A0] = v41 + 1 - v40;
  *(v44 - 128) = v38 - 352174023 - v40 + 24;
  v46 = (*(v39 + 8 * (v38 ^ (v37 + 2131))))(v44 - 152);
  return (*(v39 + 8 * *(v44 - 132)))(v46);
}

void sub_100031414(_DWORD *a1)
{
  v1 = 1361651671 * ((-2 - ((a1 | 0xAF3BA075) + (~a1 | 0x50C45F8A))) ^ 0x83E6AF06);
  v2 = *a1 + v1;
  v3 = a1[6] ^ v1;
  v5 = (v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 671088640;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1000314EC@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = (a2 - 175) | 0x12;
  v62 = (*(v60 + 8 * (a2 ^ 0xDE2u)))(*a26, a1, LODWORD(STACK[0x3BC]));
  return (*(a59 + 8 * (((LODWORD(STACK[0x3AC]) == v59) * (v61 - 738)) ^ v61)))(v62);
}

uint64_t sub_10003154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v44 = *(&a27 + v39 + 72);
  v45 = ((2 * v39) & 0x7BFE6FF0) + (v39 ^ 0xBDFF37FB) + v40;
  *(a4 + v45) = (HIBYTE(v44) ^ 0x9C) - (((HIBYTE(v44) ^ 0xFFFFFF9C) << (((v41 + 98) ^ 0x10) & 0xD1)) & 0x8E) - 57;
  *(a4 + v45 + 1) = (BYTE2(v44) ^ 0x3A) - ((2 * (BYTE2(v44) ^ 0x3A)) & 0x8F) - 57;
  *(a4 + v45 + 2) = (BYTE1(v44) ^ 0x37) - ((2 * (BYTE1(v44) ^ 0x37)) & 0x8F) - 57;
  *(a4 + v45 + 3) = v44 ^ 0x8C;
  return (*(v43 + 8 * (((v39 + 4 < a39) * v42) ^ v41)))();
}

uint64_t sub_100031630@<X0>(int a1@<W8>)
{
  v10 = v7;
  v11 = v7 + v2 * v3 - 1399;
  *(*v8 + (v1 + v11)) = *(*v8 + (v10 + v4));
  return (*(v9 + 8 * (((v11 == v5) * v6) ^ a1)))();
}

uint64_t sub_1000319A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = v30 + v28;
  (*(v29 + 8 * (v32 + 1514)))(a19 + a21, 0x100004077774924);
  v33 = (*(v29 + 8 * (v32 + 1562)))();
  *v31 = v33;
  v34 = 1812433253 * ((v33 - 237336925 - ((2 * v33) & 0xE3B515B0) + 1077) ^ ((v33 >> 30) - 237335848)) + 1;
  v31[1] = v34;
  return (*(v29 + 4208))(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

void sub_100031B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  v27 = 1037613739 * ((((v26 - 144) | 0x32EE0B9E) - (v26 - 144) + ((v26 - 144) & 0xCD11F460)) ^ 0xE3EC26E1);
  *(v26 - 144) = v27 + 1981376390;
  *(v26 - 136) = &a20;
  *(v26 - 128) = v25 - v27 + 254;
  (*(v23 + 8 * (v25 + 1390)))(v26 - 144);
  *(v26 - 104) = v24;
  *(v26 - 112) = (v25 + 707) ^ (1785193651 * ((2 * ((v26 - 144) & 0xDC67C18) - (v26 - 144) - 231111711) ^ 0xDE8ED809));
  *(v26 - 128) = &a22;
  *(v26 - 120) = &a20;
  *(v26 - 144) = v22;
  *(v26 - 136) = &a22;
  (*(v23 + 8 * (v25 ^ 0xB41)))(v26 - 144);
  JUMPOUT(0x100031C8CLL);
}

uint64_t sub_100031D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = (v35 - 1653894138) & 0x6294696F;
  v40 = (((a35 ^ 0x429A7A9A) - 533820546) ^ a35 ^ ((a35 ^ 0x8094255E) + 572576954) ^ ((a35 ^ 0x80BE3E03) + 571133925) ^ ((v38 ^ 0xBD4F9F1D) + (a35 ^ 0x1FFB6FDF))) != 0x5D4B0E18 && (((((a35 ^ 0x9A) + 126) ^ a35 ^ ((a35 ^ 0x5E) - 70) ^ ((a35 ^ 3) - 27)) ^ (((v35 + 6) & 0x6F ^ 0x1D) + (a35 ^ 0xDF))) & 0xF) == ((v35 - 1653894138) & 0x6294696F ^ 0x28A) - 934;
  v41 = *(v36 + 8 * ((v40 * ((v38 ^ 0x48) - 344)) ^ v38));
  *(v37 - 176) = -42899;
  return v41();
}

void sub_1000320D8(uint64_t a1)
{
  v1 = *(a1 + 20) - 210068311 * (a1 ^ 0xF28BAFE8);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100032178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = 210068311 * ((((v68 - 200) | 0xEDE96A67) + (~(v68 - 200) | 0x12169598)) ^ 0x1F62C58E);
  *(v68 - 200) = a26;
  *(v68 - 184) = v65;
  *(v68 - 168) = a27;
  *(v68 - 160) = 0;
  *(v68 - 192) = v70 + v67 + 856;
  *(v68 - 188) = v70 + 396874533;
  *(v68 - 152) = &STACK[0x338];
  *(v68 - 144) = 0;
  v71 = (*(v69 + 8 * (v67 + 1595)))(v68 - 200);
  v72 = *(v68 - 176);
  LODWORD(STACK[0x4A4]) = v72;
  return (*(a65 + 8 * (((v72 == v66) * (((v67 + 482) | 0x388) - 125)) ^ v67)))(v71);
}

uint64_t sub_10003235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X5>, int a4@<W7>, int a5@<W8>)
{
  v13 = ((v5 + 3 * (a4 ^ 0x461u) - 471) ^ *(v8 + 4 * a1)) + (v7 ^ HIDWORD(a3) ^ (7 * (a4 ^ 0x5F3u)));
  v14 = v13 - ((2 * v13) & 0x3112CDD50) - 0x611EB68C77699158;
  *(v8 + 4 * a2) = v14 ^ v10;
  *(v8 + 4 * a1) = HIDWORD(v14) ^ v11;
  return (*(v9 + 8 * (a4 ^ ((v6 + 1 == a5) * v12))))();
}

void sub_1000323F0()
{
  STACK[0x1780] = 0x6CDA33D4A07F16DBLL;
  STACK[0x1778] = 0x87641602CCE245A7;
  JUMPOUT(0x10000A754);
}

uint64_t sub_100032428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, char a21)
{
  v26 = 1082434553 * ((-288862105 - ((v25 - 152) | 0xEEC85067) + ((v25 - 152) | 0x1137AF98)) ^ 0x8A705912);
  *(v25 - 104) = a13;
  *(v25 - 152) = &a18;
  *(v25 - 136) = &a16;
  *(v25 - 120) = &a14;
  *(v25 - 112) = &a21;
  *(v25 - 140) = v24 + ((v21 + 1191) ^ 0xB4E6C143) + v26;
  *(v25 - 128) = v26 + v21 + 1172;
  v27 = (*(v22 + 8 * (v21 + 1836)))(v25 - 152);
  return (*(v22 + 8 * (((*(v25 - 144) == 1982089928) * ((v21 - 293624096) & 0xFFF3DF7B ^ (v23 - 713))) ^ v21)))(v27);
}

uint64_t sub_10003255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v9 = ~v5 + a3;
  v10 = *(v8 + v9 - 15);
  v11 = *(v8 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(a2 + 8 * (((v5 + v4 - 340 == v3) * v7) ^ v6)))();
}

uint64_t sub_1000326CC(uint64_t result)
{
  v1 = 50899313 * ((((2 * result) | 0xCA85CE2348724132) - result - 0x6542E711A4392099) ^ 0xA6278AB16C58E4CFLL);
  v2 = *(result + 16);
  v3 = v2 + v1;
  v4 = *(result + 40);
  v5 = v4 == v2;
  v6 = v4 + v1 > v3;
  if ((*(result + 28) + 50899313 * ((((2 * result) | 0x48724132) - result + 1539759975) ^ 0x6C58E4CF)))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = *(result + 4) - 50899313 * ((((2 * result) | 0x48724132) - result + 1539759975) ^ 0x6C58E4CF);
  }

  else
  {
    v8 = *(result + 8) ^ (50899313 * ((((2 * result) | 0x48724132) - result + 1539759975) ^ 0x6C58E4CF));
  }

  *result = *(result + 32) ^ (50899313 * ((((2 * result) | 0x48724132) - result + 1539759975) ^ 0x6C58E4CF)) ^ v8;
  return result;
}

void sub_10003276C(uint64_t a1)
{
  v1 = *(a1 + 8) - 210068311 * ((((2 * a1) | 0x534C820) - a1 + 2103811056) ^ 0x7011CBF8);
  __asm { BRAA            X9, X17 }
}

void sub_1000328CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100032980(uint64_t a1, uint64_t a2)
{
  v8 = (v7 + 4 * (a2 + v5));
  *v8 = __ROR4__(*(v8 - 3) ^ v3 ^ *(v8 - 8) ^ *(v8 - 14) ^ *(v8 - 16), 31) ^ 0x4E50245F;
  return (*(v4 + 8 * ((13 * (a2 + 1 != v6 + 80)) ^ v2)))(243574986);
}

uint64_t sub_1000329E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, int a16, char *a17, uint64_t a18, char *a19)
{
  v23 = 50899313 * (((&a15 | 0x5A645F4D) + (~&a15 | 0xA59BA0B2)) ^ 0x92059B1A);
  a15 = v23 ^ 0x50C22A6D;
  a16 = (v22 + 205) ^ v23;
  a17 = &a11;
  a18 = v20;
  a19 = &a13;
  v24 = (*(v21 + 8 * (v22 ^ 0xA30)))(&a15);
  return (*(v21 + 8 * ((1313 * (*(v20 + 24) == (((v22 - 680) | 0x58C) ^ (v19 + 1100)))) ^ v22)))(v24);
}

uint64_t sub_100032AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v31 = *(v28 + 48);
  *(v30 - 112) = veorq_s8(**v28, xmmword_10005A940);
  *(v30 - 184) = v29;
  if (v29)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v32;
  v34 = *(v27 + 8 * ((14 * v33) ^ v26));
  *(v30 - 176) = -42900;
  return v34(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_100032BA0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  a3 = v7;
  a4 = (v9 + 344) ^ (((&a3 - 1959628722 - 2 * (&a3 & 0x8B32704E)) ^ 0x5A305D31) * v8);
  a5 = v7;
  a6 = v6;
  (*(a1 + 8 * (v9 ^ 0x809)))(&a3);
  sub_100042618();
}

uint64_t sub_100032C00@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v2) ^ (v4 + ((v3 + 417) | 0x206) - 1822)) + v1;
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - (v5 & (2 * v9));
  return (*(v6 + 8 * ((1505 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_100032C68()
{
  v4 = (v0 - 1129) | 0x32;
  v5 = (*(v1 + 8 * (v0 ^ 0xE3B)))(*v3);
  return (*(v1 + 8 * ((222 * (*v2 == v4 + ((v4 + 135482693) & 0xF7ECB2EC ^ 0xFFFFF548) + 1450)) ^ v4)))(v5);
}

uint64_t sub_100032D18()
{
  v0 = *(&off_1000610D0 + ((107 * (dword_1000642E8 ^ 0xF9 ^ qword_100064130)) ^ byte_10004D1E0[byte_10005A5B0[(107 * (dword_1000642E8 ^ 0xF9 ^ qword_100064130))] ^ 0x75]) - 36);
  v1 = *(v0 - 4);
  v2 = *(&off_1000610D0 + (byte_100052980[byte_10004D2E8[(107 * ((qword_100064130 + v1) ^ 0xF9)) - 8] ^ 0xB7] ^ (107 * ((qword_100064130 + v1) ^ 0xF9))) - 60);
  v3 = 1010482283 * ((*(v2 - 4) + v1) ^ &v5 ^ 0xABAF40B6402B16F9);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v7 = (143681137 * (((&v6 | 0x20814094) - &v6 + (&v6 & 0xDF7EBF68)) ^ 0x41D9CB44)) ^ 0x3E3;
  LOBYTE(v3) = 107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9);
  v6 = *(&off_1000610D0 + (byte_1000576F4[(byte_100052A8C[v3 - 12] ^ 0xE8) - 4] ^ v3) - 144) - 4;
  LOBYTE(v0) = 107 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xF9);
  return (*(*(&off_1000610D0 + ((107 * (dword_1000642E8 ^ 0xF9 ^ qword_100064130)) ^ byte_1000577F0[byte_100052B80[(107 * (dword_1000642E8 ^ 0xF9 ^ qword_100064130))] ^ 0x45]) - 66) + (byte_10004D1EC[(byte_10005A5BC[v0 - 12] ^ 0x16) - 12] ^ v0) + 1971))(&v6);
}

uint64_t sub_100032F58(uint64_t a1)
{
  v2 = 50899313 * (((a1 | 0x9FB47103) - (a1 & 0x9FB47103)) ^ 0x57D5B555);
  v3 = *(a1 + 24) ^ v2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = 641600731 * (*(a1 + 48) - v2) - 208293300;
  v9 = 1564307779 * (((&v11 | 0xDE18EEF1) - (&v11 & 0xDE18EEF1)) ^ 0x491522E2);
  v16 = v3 - 1421512334 + v9 + 529;
  v17 = v4;
  v15 = v5;
  v14 = v8 ^ v9;
  v11 = v6;
  v13 = v7;
  result = (*(*(&off_1000610D0 + v3 - 1421512334) + (v3 ^ 0x54BA878E)))(&v11);
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_1000330A4@<X0>(int8x16_t *a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5, uint64_t a6)
{
  v9 = (a6 + a2);
  v10 = vaddq_s8(vsubq_s8(a1[1], vandq_s8(vaddq_s8(a1[1], a1[1]), a3)), a4);
  v9[-1] = vaddq_s8(vsubq_s8(*a1, vandq_s8(vaddq_s8(*a1, *a1), a3)), a4);
  *v9 = v10;
  return (*(v8 + 8 * ((((v7 & 0x60) == 32) * ((11 * (v6 ^ 0x6D5)) ^ 0x57D)) ^ v6)))();
}

uint64_t sub_100033114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v32 - 112) = v31 - 1564307779 * ((~((v32 - 144) | 0x4BB0449F) + ((v32 - 144) & 0x4BB0449F)) ^ 0x23427773) + 1316;
  *(v32 - 128) = a13;
  *(v32 - 120) = a14;
  *(v32 - 144) = &a22;
  *(v32 - 136) = &a22;
  (*(v30 + 8 * (v31 + 2023)))(v32 - 144);
  *(v32 - 144) = a13;
  *(v32 - 136) = &a22;
  *(v32 - 112) = (v31 + 1330) ^ (1785193651 * ((((2 * (v32 - 144)) | 0x1562B93E) - (v32 - 144) + 1968087905) ^ 0xA6060777));
  *(v32 - 104) = a14;
  *(v32 - 128) = &a22;
  *(v32 - 120) = &a30;
  (*(v30 + 8 * (v31 ^ 0x8D6)))(v32 - 144);
  return sub_10001FC9C();
}

void sub_100033310(uint64_t a1)
{
  v1 = 742307843 * (((a1 ^ 0x11371AFE | 0x1B41CE55) - ((a1 ^ 0x11371AFE) & 0x1B41CE55)) ^ 0x570AABD1);
  v2 = *(a1 + 64) ^ v1;
  if (*(a1 + 56) | *(a1 + 24))
  {
    v3 = *(a1 + 40) + v1 == 424876002;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100033480@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  if (v3 <= 0x1B && ((1 << v3) & 0x9014001) != 0)
  {
    return sub_1000334E0();
  }

  else
  {
    return (*(v5 + 8 * ((((((*(v4 + a3 * a2 + 40) & 8) == 0) ^ (a1 - 1)) & 1) * (a1 - 1990)) | (a1 - 17))))();
  }
}

void sub_100033888(_DWORD *a1)
{
  v1 = *a1 - 1564307779 * ((a1 - 427373151 - 2 * (a1 & 0xE686CDA1)) ^ 0x718B01B2);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100033930@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  *(a60 + 392) = v63;
  *(a60 + 396) = STACK[0x3B8];
  *(a60 + 400) = a63;
  *(a60 + 408) = 57203146 - v64 + a61;
  *(a60 + 416) = v65 + (v64 + 1577141553);
  v68 = (*(v67 + a2 * a1 + 8))(a54, a60 + 392);
  return (*(a59 + 8 * ((11 * (v68 + 1982089928 - ((2 * v68) & 0xEC489590) != ((201 * (v66 ^ 0x268)) ^ 0x76244D12))) ^ v66)))(0);
}

uint64_t sub_100033A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v65;
  LODWORD(a52) = v67;
  v70 = (v68 + 918847781) & 0xC93B777A;
  (*(a2 + 8 * (v68 + 127)))(a48, 0x100004077774924);
  v71 = (*(a65 + 8 * a47))();
  *v66 = v71;
  v66[1] = (v71 ^ (v71 >> 30)) * ((v70 ^ 0x8D) + 1812433006) + 1;
  return (*(a65 + 8 * v70))(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v80, v69, a52, a53, a54, a55);
}

uint64_t sub_100033B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = 1785193651 * (((&a14 | 0x1262F4EC) - &a14 + (&a14 & 0xED9D0B10)) ^ 0x3ED5AF04) - 1776823281;
  v17 = (*(v16 + 17640))(&a14);
  return (*(v16 + 8 * ((1458 * (a14 == v15)) ^ 0x310u)))(v17);
}

uint64_t sub_100033B88(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_100033C38(_DWORD *a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x4FA45C42) - a1 - 1336171587) ^ 0x9CECF855);
  v2 = a1[2] - v1;
  v3 = a1[6] + v1;
  v4 = *(*a1 + 4);
  v6 = v4 - 922138987;
  v5 = v4 - 922138987 < 0;
  v7 = 922138987 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1000610D0 + (v2 ^ 0x3AB)) + (((v3 - 360256104 < (4 * v7)) * ((v2 + 1912405094) & 0x8E0305FF ^ 0x54A)) ^ v2)))();
}

uint64_t sub_100033D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = *(a1 + 72);
  *v6 = 0;
  return (*(v7 + 8 * (((((a6 ^ 0x307) + 2032) ^ 0x59 ^ (509 * (a6 ^ 0x307))) * (v8 == 0)) ^ a6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_100033E04@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, unint64_t a19)
{
  v26 = 3 * (v19 ^ 0xD1);
  v27 = v19 - 1181;
  *a12 = a1;
  LODWORD(STACK[0x28C]) = a16;
  STACK[0x290] = a19;
  LODWORD(STACK[0x298]) = a17 - v25 + 57203146;
  STACK[0x2A0] = v21 + (v25 + 1577141553);
  v28 = v19;
  v29 = (*(v24 + v23 * v20 + 8))(a7);
  return (*(v22 + 8 * ((3479 * (v27 + 1982089928 + v29 - ((v29 << (v26 - 16)) & 0xEC489590) == 1982090165)) ^ v28)))();
}

uint64_t sub_100033FB8()
{
  *(v4 - 112) = v3 + ((v4 + 253709515 - 2 * ((v4 - 128) & 0xF1F4D4B)) ^ 0x9458BBC1) * v2 + 676;
  *(v4 - 128) = v6;
  *(v4 - 120) = v0;
  return (*(v1 + 8 * (v3 + 1572)))(v4 - 128);
}

void sub_100034048(_DWORD *a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x45B3DE0) - a1 + 2074395167) ^ 0x571399F7);
  v2 = *(*a1 + 12) + 491416065;
  v3 = a1[2] + v1 - 100058715;
  v4 = (v3 < 0x291A1ADA) ^ (v2 < 0x291A1ADA);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x291A1ADA;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_10003412C@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 + v5);
  v7 = v5 - 1;
  *(a1 + v7) = v6;
  return (*(v1 + 8 * (((v7 != 0) * v4) ^ v3)))();
}

uint64_t sub_10003419C@<X0>(int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, unsigned int a6@<W8>)
{
  v13 = (a4 + 4 * v10);
  v14 = ((a1 + 162) ^ (a6 - 875) ^ *v13) + ((v9 + 673) ^ HIDWORD(a3)) + a2 * (*(v12 + 4 * v10) ^ a6);
  *(v13 - 1) = (v14 + v7 - (v8 & (2 * v14))) ^ a5;
  return (*(v11 + 8 * ((56 * (v10 + 1 == v6)) ^ a1)))();
}

uint64_t sub_100034208()
{
  v6 = v0 + v2 + (((v4 ^ 0xC665BA2E) + 966411730) ^ ((v4 ^ 0x2C150667) - 739575399) ^ ((v4 ^ ((v5 - 1303) | 0x115) ^ ((v5 - 448) | 0x44) ^ 0x9C54F47B) + 1672153471)) - 1145058969;
  v7 = v3 - 610702167;
  v8 = (v7 < 0xE7691D82) ^ (v6 < 0xE7691D82);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xE7691D82;
  }

  return (*(v1 + 8 * ((249 * !v9) ^ v5)))();
}

uint64_t sub_100034350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, char *a15, unsigned int a16)
{
  a16 = 2066391179 * ((1664853728 - (&a14 | 0x633BA6E0) + (&a14 | 0x9CC4591F)) ^ 0x33E3DB07) + 1009;
  a15 = &a12;
  v18 = (*(v16 + 17872))(&a14);
  return (*(v16 + 8 * ((1161 * (a14 == 1982089928)) ^ v17)))(v18);
}

uint64_t sub_1000343E0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v18 = (a4 ^ v12) * (a3 ^ 0x1A5 ^ (v12 + 842) ^ **(v16 + 8)) + (*(&a12 + v14) ^ v12);
  *(&a12 + v14) = v18 + v12 - (v15 & (2 * v18));
  return (*(v17 + 8 * ((1272 * (v13 == 1)) ^ a3)))();
}

uint64_t sub_1000348C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v10 = v6 + 626;
  v11 = *(v9 + 48 * v7 + 36);
  v13 = v11 != ((v10 - 17588851) & (a6 + 532480) ^ 0x881F286A) && (v10 ^ 0x1993529Du) + v11 < a5;
  return (*(v8 + 8 * ((1975 * v13) ^ v10)))();
}

uint64_t sub_100034974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v24 = *(v17 + 64) + v23;
  v25 = 1361651671 * ((~&a12 & 0xB5EAB91A | &a12 & 0x4A1546E5) ^ 0x66C84996);
  a15 = &a10;
  a17 = v22;
  a12 = v25 + 58273745 * v21 - 815425730;
  a13 = v20 - v25 + 630;
  a16 = (((v20 - 56) ^ 0xA3) * v24 + 5) ^ (-41 * ((~&a12 & 0x1A | &a12 & 0xE5) ^ 0x96));
  v26 = (*(v19 + 8 * (v20 + 1768)))(&a12);
  return (*(v19 + 8 * ((1691 * (a14 == v18)) ^ v20)))(v26);
}

uint64_t sub_100034A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v21 = a18 < 0xDA550EA4;
  if (v21 == v18 > 0x25AAF15B)
  {
    v21 = v18 - 631959900 < a18;
  }

  return (*(v20 + 8 * ((41 * ((((v19 - 148) ^ v21) & 1) == 0)) ^ v19)))();
}

uint64_t sub_100034BBC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = *(v1 + v5);
  v7 = (((((v4 - 355) | 0x54) ^ 0x17ELL) + v5) ^ v3) != v2 + 2073;
  return (*(v6 + 8 * (((2 * v7) | (32 * v7)) ^ v4)))();
}

uint64_t sub_100034C10(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_100034CA8@<X0>(int a1@<W8>)
{
  v3 = *v1;
  v4 = *(v1 + 4) + a1;
  *(*v1 + v4) = -57;
  *(v3 + v4 + 1) = 60;
  *(v3 + v4 + 2) = -34;
  *(v3 + v4 + 3) = -97;
  v5 = *v1;
  v6 = ((2 * (a1 + *(v1 + 4) + 4)) & 0x7BFF77FE) + ((a1 + *(v1 + 4) + 4) ^ 0x3DFFBBFF) - 1040169983;
  *(*v1 + v6) = -57;
  *(v5 + v6 + 1) = -57;
  *(v5 + v6 + 2) = -57;
  *(v5 + v6 + 3) = -61;
  *(v1 + 4) = v2 + 12;
  return sub_100034D40();
}

uint64_t sub_100034D78(uint64_t a1, signed int a2, int a3, uint64_t a4, int a5)
{
  v7 = ((16 * a5) ^ 0x8A0 ^ (v5 + 800)) - a3;
  if (a2 > v7)
  {
    v7 = a2;
  }

  return (*(v6 + 8 * ((63 * (v7 > 0x7FFFFFFE)) ^ a5)))();
}

void sub_100034DBC(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1037613739 * ((a1 + 1409364823 - 2 * (a1 & 0x54013357)) ^ 0x85031E28));
  if (*(*(a1 + 8) + 4) - 922138987 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 922138987;
  }

  else
  {
    v2 = 922138987 - *(*(a1 + 8) + 4);
  }

  if (*(*a1 + 4) - 922138987 >= 0)
  {
    v3 = *(*a1 + 4) - 922138987;
  }

  else
  {
    v3 = 922138987 - *(*a1 + 4);
  }

  v6 = *(a1 + 8);
  v7 = v1 - 1388665877 * ((2 * (&v6 & 0x4A12CE60) - &v6 - 1242746468) ^ 0x38405370) + 145;
  v4 = *(&off_1000610D0 + (v1 ^ 0x2EF));
  (*(v4 + 8 * (v1 ^ 0xAF2)))(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_100035038()
{
  STACK[0x380] = STACK[0x330];
  LODWORD(STACK[0x3C4]) = STACK[0x344];
  return (*(v1 + 8 * (((LODWORD(STACK[0x424]) - 1 < (((((v0 - 681453997) & 0x289E26FF) - 721) | 0x1C2) ^ 0x1E5u)) * (((((v0 - 681453997) & 0x289E26FF) + 1226) | 0x1A) - 1559)) ^ (v0 - 681453997) & 0x289E26FF)))();
}

uint64_t sub_1000350A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = LODWORD(STACK[0x424]) ^ 0x2DD9FFFB;
  v71 = (2 * LODWORD(STACK[0x424])) & 0x5BB3FFF6;
  v72 = 1563904627 * ((2 * ((v68 - 200) & 0x245EADE8) - (v68 - 200) - 610184681) ^ 0xF26EE52B);
  *(v68 - 168) = &STACK[0x330];
  *(v68 - 200) = a31 - v72 + 67 * (v66 ^ 0x1F9) - 851340241;
  *(v68 - 196) = (v66 + 105) ^ v72;
  *(v68 - 176) = v70 - v72 + v71 - 75604865;
  *(v68 - 192) = &STACK[0x344];
  *(v68 - 184) = a32;
  v73 = (*(v69 + 8 * (v66 ^ 0x953)))(v68 - 200);
  v74 = *(v68 - 172);
  LODWORD(STACK[0x3A8]) = v74;
  return (*(a66 + 8 * (((v74 == v67) * (111 * (v66 ^ 0x1EA) - 436)) ^ v66)))(v73);
}

uint64_t sub_1000351BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, uint64_t a17, char a18)
{
  a16 = v18 - 1131860726;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a14;
  *(v21 - 112) = v20 + 1082434553 * ((v21 - 128) ^ 0x9B47F68A) + 916;
  (*(v19 + 8 * (v20 + 1812)))(v21 - 128);
  *(v21 - 120) = a14;
  *(v21 - 104) = &a15;
  *(v21 - 128) = v20 - 1082434553 * ((2 * ((v21 - 128) & 0x49F15950) - (v21 - 128) + 906929837) ^ 0xAD495027) + 1498;
  v22 = (*(v19 + 8 * (v20 ^ 0x94E)))(v21 - 128);
  return (*(v19 + 8 * (((*(v21 - 112) > 0x4255BDDBu) * (723 * ((v20 - 2143551931) & 0x7FC403EB ^ 0x369) - 1326)) ^ v20)))(v22);
}

uint64_t sub_1000352D4@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W8>)
{
  v11 = a1 < v7;
  *(a3 + a5) = *(v10 + v5) - ((2 * *(v10 + v5)) & 0x8F) - 57;
  if (v11 == v5 + 1 > v8)
  {
    v11 = v5 + (a4 ^ (v7 + 9)) < a1;
  }

  return (*(v9 + 8 * ((!v11 * a2) ^ v6)))();
}

void sub_100035420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v68 = STACK[0x2C4];
  v68[85] = STACK[0x2B0];
  v68[86] = STACK[0x240];
  v68[87] = STACK[0x404];
  v68[88] = a68;
  JUMPOUT(0x10002D3C0);
}

uint64_t sub_100035530(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, unsigned int a25, int a26)
{
  v29 = 1785193651 * ((2 * (&a23 & 0x3D8BE28) - &a23 - 64536109) ^ 0xD0901A3B);
  a23 = v26;
  a24 = (((a2 & 0xFFFFFFF0) + 16) ^ 0x2F95F9B5) - v29 + ((((a2 & 0xFFFFFFF0) + 16) << (((v28 + 79) & 0xFA) - 79)) & 0x5F2BF360) - 8722560;
  a25 = ((2 * (a2 - a13 + 732517411)) & 0x9FFFFFF6) - v29 + ((a2 - a13 + 732517411) ^ 0xCFFFFFB8 ^ ((v28 - 452) | 1)) + 1055762088;
  a26 = v28 - v29 + 880;
  v30 = (*(v27 + 8 * (v28 ^ 0xAB4)))(&a23);
  return (*(v27 + 8 * ((86 * (*(v26 + 24) != 1982089928)) ^ v28)))(v30);
}

void sub_1000356A4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 4) - 1641671677) < 0x102;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100035708@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x358] = a35;
  STACK[0x418] = a1;
  return sub_100044FBC();
}

void sub_100035750()
{
  v0 = __chkstk_darwin();
  v1 = *v0 - 1361651671 * ((2 * (v0 & 0x246929BF) - v0 + 1536611904) ^ 0x88B426CC);
  __asm { BRAA            X10, X17 }
}

void sub_10003594C()
{
  v2 = *(v0 + 96);
  if (v2 == 1)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 68);
    *(v0 + 56) = 8 * (v5 - ((2 * v5) & 0x10)) - 57;
    *(v0 + 57) = ((v1 - 90) | 0x4B) ^ (v5 >> 5) ^ 0xC;
    *(v0 + 58) = (v5 >> 13) ^ 0xC7;
    *(v0 + 59) = (v5 >> 21) ^ 0xC7;
    *(v0 + 60) = ((__PAIR64__(v6, v5) >> 29) - ((2 * (__PAIR64__(v6, v5) >> 29)) & 0x18) - 116) ^ 0x4B;
    *(v0 + 61) = (v6 >> 5) ^ 0xC7;
    *(v0 + 62) = (v6 >> 13) ^ 0xC7;
    v4 = (v6 >> 21) ^ 0xFFFFFFC7;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v4 = *(v0 + 64);
    v3 = *(v0 + 68);
    *(v0 + 56) = v1 - 15 + (v4 >> 21) - ((v4 >> 20) & 0x8E) - 4;
    *(v0 + 57) = (v4 >> 13) - ((v4 >> 12) & 0x8E) - 57;
    *(v0 + 58) = (v4 >> 5) - ((v4 >> 4) & 0x8E) - 57;
    *(v0 + 59) = (__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0x8F) - 57;
    *(v0 + 60) = (v3 >> 21) - ((v3 >> 20) & 0x8E) - 57;
    *(v0 + 61) = (v3 >> 13) - ((v3 >> 12) & 0x8E) - 57;
    *(v0 + 62) = (v3 >> 5) - ((v3 >> 4) & 0x8E) - 57;
    LOBYTE(v4) = (-8 * v3 + 120) ^ 0xBF;
  }

  *(v0 + 63) = v4;
LABEL_6:
  JUMPOUT(0x100048DF8);
}

void sub_100035AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  v13 = a11[3] ^ 0xC7;
  v14 = ((*a11 ^ 0xFFFFFFC7) << 24) | ((a11[1] ^ 0xC7) << 16) | ((a11[2] ^ 0xC7) << 8) | v13;
  **(v11 + 8) = v14 + v12 - 2 * (v14 & (v12 + 2) ^ v13 & 2);
  JUMPOUT(0x100023CD4);
}

uint64_t sub_100035B2C()
{
  v12 = (*(*(v10 + 8) + 4 * v1) ^ v3) + v2;
  *(*(v0 + 8) + 4 * v1) = v7 + ((v4 + 253) | v5) + v12 - (v9 & (2 * v12)) - 1241;
  return (*(v8 + 8 * (((v11 > v1 + 1) * v6) ^ v4)))();
}

void sub_100035F54()
{
  v4 = (v2 ^ 0xA448AE67) & (2 * (v2 & 0x804CAF08)) ^ v2 & 0x804CAF08;
  v5 = ((2 * (v2 ^ 0xA441B677)) ^ 0x481A32FE) & (v2 ^ 0xA441B677) ^ (2 * (v2 ^ 0xA441B677)) & 0x240D197E;
  v6 = v5 ^ v1 ^ 0x24050803;
  v7 = (v5 ^ 0x1060) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x903465FC) & v6 ^ (4 * v6) & 0x240D197C;
  v9 = (v8 ^ 0x40160) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x24091803)) ^ 0x40D197F0) & (v8 ^ 0x24091803) ^ (16 * (v8 ^ 0x24091803)) & 0x240D1970;
  v11 = v9 ^ 0x240D197F ^ (v10 ^ 0x11100) & (v9 << 8);
  v12 = v2 ^ (2 * ((v11 << 16) & 0x240D0000 ^ v11 ^ ((v11 << 16) ^ 0x197F0000) & (((v10 ^ 0x240C080F) << 8) & 0x240D0000 ^ 0x20040000 ^ (((v10 ^ 0x240C080F) << 8) ^ 0xD190000) & (v10 ^ 0x240C080F)))) ^ 0xBE68D73E;
  v13 = 1564307779 * ((2 * (((v3 - 200) ^ 0xC7BC2F99) & 0x2DFAC600) - ((v3 - 200) ^ 0xC7BC2F99) + 1376074237) ^ 0x2B4DA77);
  *(v3 - 192) = v1 - v13 + 278;
  *(v3 - 188) = v12 - v13;
  *(v3 - 200) = &STACK[0x3A8];
  (*(v0 + 8 * (v1 + 1912)))(v3 - 200);
  JUMPOUT(0x1000403C0);
}

uint64_t sub_100036168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a8 + (a1 ^ 0xB5C738BB6D5474C9) - 2 * (a8 & (a1 ^ 0xB5C738BB6D5474C9));
  v14 = v13 & 0x4338D1C22547D1E6 ^ a1 ^ 0xB5C738BB6D5474C9 ^ a7 ^ (v13 ^ 0xC1A33A862C00719DLL) & (a3 ^ 0xAC8CB4455AD08B2DLL);
  return (*(v11 + 8 * (((a2 + (v12 ^ v9) - 909 == v10) * (((v12 - 927) | 0x11) - 464)) ^ v12)))(v14 ^ (v14 >> 41) ^ (v14 >> 7) ^ ((v14 ^ 0xDE4B37E0604DAA51) << 23) ^ ((v14 ^ 0xDE4B37E0604DAA51) << 57) ^ v8);
}

uint64_t sub_10003690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = LOBYTE(STACK[0x2D4]);
  if (v21 == 2)
  {
    return (*(v20 + 8 * ((1479 * ((((a7 + 670) ^ (LODWORD(STACK[0x2D0]) == 0)) & 1) == 0)) ^ (a7 + 670))))(a20, a13);
  }

  if (v21 != 1)
  {
    JUMPOUT(0x1000369E0);
  }

  return (*(v20 + 8 * (((LODWORD(STACK[0x2D0]) != 0) * ((89 * (a7 ^ 0x22)) ^ 0x2EA)) | (a7 + 670))))(a20);
}

uint64_t sub_100036BE8@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = a2 ^ 0x6D9;
  v4 = (STACK[0x2E0] + 31);
  v5 = (v3 - 251307518) & 0xEFA9F3F;
  v2[12] = ((((v5 ^ 0x379374CCu) + 1) >> 24) ^ 0x37) - ((2 * ((((v5 ^ 0x379374CCu) + 1) >> 24) ^ 0x37)) & 0x8F) - 57;
  v2[13] = ((((v5 ^ 0x379374CCu) + 1) >> 16) ^ 0x93) - ((2 * ((((v5 ^ 0x379374CCu) + 1) >> 16) ^ 0x93)) & 0x8F) - 57;
  v2[14] = (((((v3 + 23042) & 0x9F3F ^ 0x74CC) + 1) >> 8) ^ 0x75) - ((2 * (((((v3 + 23042) & 0x9F3F ^ 0x74CC) + 1) >> 8) ^ 0x75)) & 0x8F) - 57;
  v2[15] = (((v3 + 2) & 0x3F ^ 0xCC) + 1) ^ 0x17;
  *(v4 - 15) ^= *v2 ^ 0xC7;
  *(v4 - 14) ^= v2[1] ^ 0xC7;
  *(v4 - 13) ^= v2[2] ^ 0xC7;
  *(v4 - 12) ^= v2[3] ^ 0xC7;
  *(v4 - 11) ^= v2[4] ^ 0xC7;
  *(v4 - 10) ^= v2[5] ^ 0xC7;
  *(v4 - 9) ^= v2[6] ^ 0xC7;
  *(v4 - 8) ^= v2[7] ^ 0xC7;
  *(v4 - 7) ^= v2[8] ^ 0xC7;
  *(v4 - 6) ^= v2[9] ^ 0xC7;
  *(v4 - 5) ^= v2[10] ^ 0xC7;
  *(v4 - 4) ^= v2[11] ^ 0xC7;
  *(v4 - 3) ^= v2[12] ^ 0xC7;
  *(v4 - 2) ^= v2[13] ^ 0xC7;
  *(v4 - 1) ^= v2[14] ^ 0xC7;
  *v4 ^= v2[15] ^ 0xC7;
  return (*(a1 + 8 * ((v3 - 75) ^ 0x31)))(4294967187, 117, 23);
}

uint64_t sub_100036E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v19 = a14 - 1052166854 > a17;
  if (a17 < 0xC14934FA != (a14 - 1052166854) < 0xC14934FA)
  {
    v19 = (a14 - 1052166854) < 0xC14934FA;
  }

  return (*(v17 + 8 * ((v19 * ((a6 - 1151) ^ 0x31D)) | (v18 + a5 + 173))))(420, 27);
}

void sub_100036E94(int a1@<W8>)
{
  if (a1 == 305778144)
  {
    v2 = 1982089928;
  }

  else
  {
    v2 = -1982131952;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_100036F08@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = v5 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((1701 * (v6 == (v3 ^ 0x96))) ^ v3)))();
}

uint64_t sub_100036F54@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + 335 - v1;
  v6 = *(v5 - 31);
  v7 = v3 + 335 - v1;
  v8.i64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v8.i64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v9.i64[0] = 0xC7C7C7C7C7C7C7C7;
  v9.i64[1] = 0xC7C7C7C7C7C7C7C7;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * ((21 * (v1 + ((v2 - 2061964164) & 0x7AE717FA) != 2298)) ^ v2)))();
}

uint64_t sub_100036FDC()
{
  v4 = v0 + 1103168243;
  v5 = (v4 < 0x5881B376) ^ ((v3 - 156776583) < 0x5881B376);
  v6 = v3 - 156776583 > v4;
  if (v5)
  {
    v6 = (v3 - 156776583) < 0x5881B376;
  }

  return (*(v1 + 8 * (((v2 + 269) * !v6) ^ v2)))();
}

void sub_100037288()
{
  v3 = 742307843 * (((((v1 - 200) | 0x14B759CA) ^ 0xFFFFFFFE) - (~(v1 - 200) | 0xEB48A635)) ^ 0xB634D94F);
  *(v1 - 192) = STACK[0x378];
  *(v1 - 180) = -990918455 - v3;
  *(v1 - 200) = -473373701 - v3 + v0 + 4;
  (*(v2 + 8 * (v0 ^ 0x8A5)))(v1 - 200);
  JUMPOUT(0x10002B5E8);
}

uint64_t sub_1000373E0()
{
  v7 = (((v3 | 0x3AAA7951) - (v3 & 0x3AAA7951)) ^ 0xA1ED8FDB) * v5;
  *(v6 - 136) = ((v0 + 208) ^ 0xDEF2F3EF) + (v1 ^ 0x3F7D5D97) + v7 + ((2 * v1) & 0x7EFABB2E);
  *(v6 - 120) = v0 - v7 + 976;
  *(v6 - 128) = v4;
  v8 = (*(v2 + 8 * (v0 ^ 0xBBE)))(v6 - 136);
  return sub_100037470(v8);
}

uint64_t sub_100037470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v18 - 128) = a14;
  *(v18 - 112) = a13;
  *(v18 - 136) = v17 - (((v15 | 0xCAB07C95) - v15 + (v15 & 0x354F8368)) ^ 0x51F78A1F) * v16 + 642;
  v19 = (*(v14 + 8 * (v17 ^ 0xCE6)))(v18 - 136);
  return (*(v14 + 8 * ((287 * (*(v18 - 120) > ((((v17 - 1105) | 0xA2) - 61) ^ 0x4255BD7Du))) ^ v17)))(v19);
}

uint64_t sub_100037570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v21 = (v15 - 1893224720) & 0x70D855BF;
  v22 = ((((v20 - 136) | 0x16DAFACE) - (v20 - 136) + ((v20 - 136) & 0xE9250530)) ^ 0x8D9D0C44) * v19;
  *(v20 - 136) = (v16 ^ 0xBEFB5F15) + (v21 ^ 0x5F74F044) + ((2 * v16) & 0x7DF6BE2A) + v22;
  *(v20 - 120) = v15 - v22 + 1671;
  *(v20 - 128) = &a15;
  (*(v18 + 8 * (v15 ^ 0x977)))(v20 - 136);
  *(v20 - 128) = a14;
  *(v20 - 112) = v17;
  *(v20 - 136) = v21 - 1082434553 * ((v20 - 136) ^ 0x9B47F68A) + 345;
  v23 = (*(v18 + 8 * (v21 + 697)))(v20 - 136);
  return (*(v18 + 8 * (((*(v20 - 120) <= 0x4255BDDBu) * ((v21 - 535403271) & 0x1FE995FB ^ 0xFB)) ^ v21)))(v23);
}

uint64_t sub_100037718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  *a25 = v26;
  v33 = ((v30 ^ (v30 >> 11)) << 7) & 0x9D2C5680 ^ v30 ^ (v30 >> 11) ^ v28;
  v34 = v33 ^ v27 ^ ((v33 ^ v25) << 15) & 0xEFC60000;
  *(*a21 + v29) ^= v34 ^ (v34 >> (v32 + ((v25 - 75) ^ 0xA1) - 93));
  return (*(v31 + 8 * (v25 | (4 * (v29 > 0x1FB)) | 0x752)))();
}

void sub_100037800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (((a22 - v29) | (v29 - a22)) > (v29 ^ v30 ^ (v32 - 624)))
  {
    v34 = 0x80000000;
  }

  else
  {
    v34 = 0x7FFFFFFF;
  }

  *v33 = v34;
  (*(v31 + 8 * (v29 + 2128)))(a29);
  JUMPOUT(0x100037850);
}

uint64_t sub_1000379B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3.n128_u64[0] = 0x8E8E8E8E8E8E8E8ELL;
  v3.n128_u64[1] = 0x8E8E8E8E8E8E8E8ELL;
  v4.n128_u64[0] = 0xC7C7C7C7C7C7C7C7;
  v4.n128_u64[1] = 0xC7C7C7C7C7C7C7C7;
  return sub_1000379D4(a1, a2, a3, 47, v3, v4);
}

uint64_t sub_1000379D4@<X0>(int a1@<W3>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v12 = ~v8 + v5;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = v4 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a3)), a4);
  return (*(v11 + 8 * ((((((v7 + 736) | v9) ^ v10) + v8 == v6) * a1) ^ v7)))();
}

uint64_t sub_100037A40@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, char a4, unsigned int a5)
{
  v9 = a1 + 346;
  v10 = v5;
  v11 = a1 + 59;
  v12 = a1 - 397;
  *(v8 - 104) = a1 - 397 - 1388665877 * ((((v8 - 112) | 0xB0CAD98) - (v8 - 112) + ((v8 - 112) & 0xF4F35260)) ^ 0x86A1CF74);
  *(v8 - 112) = a2;
  (*(v7 + 8 * (a1 + 1076)))(v8 - 112);
  v13 = *(v8 - 100);
  *(v8 - 112) = v6;
  *(v8 - 104) = v12 - 1388665877 * (((v8 - 112) & 0x97B273F0 | ~((v8 - 112) | 0x97B273F0)) ^ 0xE5E0EEE3);
  (*(v7 + 8 * (v9 ^ 0xD7A)))(v8 - 112);
  v14 = (-46949070 * (*(v8 - 100) + v13) + *(v8 - 100) * v13 - 697147964) * v10;
  a5 = (v14 ^ 0xF6FEFBEB) + 1073200512 + ((v14 << (v11 ^ 0xB4)) & 0xEDFDF7D6);
  *(v8 - 112) = v6;
  *(v8 - 104) = &a4;
  *(v8 - 96) = v9 + 1082434553 * ((((v8 - 112) | 0xB67E076F) - ((v8 - 112) & 0xB67E076F)) ^ 0x2D39F1E5) - 262;
  v15 = (*(v7 + 8 * (v9 + 634)))(v8 - 112);
  return sub_10003AB00(v15);
}

uint64_t sub_100037C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v44 = *(&a27 + v39 + 72);
  v45 = ((2 * v39) & 0xAFF9FFE8) + (v39 ^ 0x57FCFFF6) + v40;
  *(a1 + v45) = v44 ^ 0x8C;
  *(a1 + v45 + 1) = ((v41 - 113) & 0x7F ^ BYTE1(v44) ^ 8) - ((2 * ((v41 - 113) & 0x7F ^ BYTE1(v44))) & 0x8F) - 57;
  *(a1 + v45 + 2) = (BYTE2(v44) ^ 0x3A) - ((2 * (BYTE2(v44) ^ 0x3A)) & 0x8F) - 57;
  *(a1 + v45 + 3) = (HIBYTE(v44) ^ 0x9C) - ((2 * (HIBYTE(v44) ^ 0x9C)) & 0x8F) - 57;
  return (*(v43 + 8 * (((v39 + 4 < a39) * v42) ^ v41)))();
}

uint64_t sub_100037CD8@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x274] + (a1 >> ((v2 ^ 0xE2) - 40)) + 18);
  v6 = ((2 * a1) & 0xF7FAE7E8) + (a1 ^ 0xFBFD73F5) + v1;
  *(v3 + v6) = v5 ^ 0x8C;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0x37) - ((2 * (BYTE1(v5) ^ 0x37)) & 0x8F) - 57;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0x3A) - ((2 * (BYTE2(v5) ^ 0x3A)) & 0x8F) - 57;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0x9C) - ((2 * (HIBYTE(v5) ^ 0x9C)) & 0x8F) - 57;
  return (*(v4 + 8 * (((2 * (a1 + 4 < LODWORD(STACK[0x2D0]))) | (32 * (a1 + 4 < LODWORD(STACK[0x2D0])))) ^ v2)))();
}

uint64_t sub_100037E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = ((v19 - 1235074048 - 2 * ((v19 - 136) & 0xB6624488)) ^ 0x2D25B202) * v16;
  *(v19 - 120) = v18 - v20 + 650;
  *(v19 - 136) = v20 + ((2 * v15) & 0x3CFFFBAE) + (v15 ^ 0x1E7FF81A ^ ((v18 + 1) | 0xC4)) - 1026243;
  *(v19 - 128) = &a15;
  v21 = (*(v17 + 8 * (v18 ^ 0xD74)))(v19 - 136);
  return sub_100037ED0(v21);
}

uint64_t sub_100037ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v18 - 136) = v14 - ((((v18 - 136) | 0x9D54A5EE) - ((v18 - 136) & 0x9D54A5EE)) ^ 0x6135364) * v15 + 327;
  *(v18 - 128) = a14;
  *(v18 - 112) = v17;
  v19 = (*(v16 + 8 * (v14 ^ 0xDB9)))(v18 - 136);
  return (*(v16 + 8 * ((925 * ((((v14 - 1099) ^ (*(v18 - 120) + (((v14 - 1209) | 0x40) ^ 0xBDAA4370) < 0xF9FA130A)) & 1) == 0)) ^ v14)))(v19);
}

uint64_t sub_10003806C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + ((v3 - 712) | 0x22u) - 100;
  *(a1 + v5) = *(v2 + v5) - ((2 * *(v2 + v5)) & 0x8F) - 57;
  return (*(v4 + 8 * ((212 * (v5 == 0)) | v3)))();
}

void sub_100038128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v24 - 112) = (v22 + 1316) ^ (1785193651 * ((v24 - 144) ^ 0x2CB75BE8));
  *(v24 - 104) = v23;
  *(v24 - 144) = a13;
  *(v24 - 136) = &a22;
  *(v24 - 128) = &a22;
  *(v24 - 120) = &a18;
  JUMPOUT(0x10001F000);
}

uint64_t sub_100038208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, char a17, uint64_t a18, uint64_t *a19, int a20, unsigned int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a15 = -1577141553;
  v29 = 1082434553 * ((&a19 & 0xE0D3AFEC | ~(&a19 | 0xE0D3AFEC)) ^ 0x846BA699);
  a26 = a18;
  a23 = v29 + v26 + 1058;
  a19 = &a18;
  a24 = &a16;
  a25 = &a15;
  a22 = &a17;
  a21 = v29 + a16 - 1259944826;
  v30 = (*(v28 + 8 * (v26 ^ 0x9DA)))(&a19);
  return (*(v28 + 8 * (((a20 == 1982089928) * ((16 * (((v26 + 1264) | 0x72) ^ 0x6C8)) ^ 0x83)) ^ v26)))(v30, v27);
}