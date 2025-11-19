id sub_100001228()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKDaemonConnectionProtocol];
  v1 = objc_opt_class();
  v2 = [NSSet setWithObjects:v1, objc_opt_class(), 0];
  [v0 setClasses:v2 forSelector:"eraseWithEraser:reply:" argumentIndex:0 ofReply:0];

  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  [v0 setClasses:v11 forSelector:"eraseWithEraser:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

id sub_1000013D4()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKHelperClientProtocol];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0];
  [v0 setClasses:v9 forSelector:"requestWithUUID:didCompleteWithResult:" argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t sub_100001598(void *a1)
{
  v1 = a1;
  v2 = [v1 copyPropertyWithClass:objc_opt_class() key:@"Sealed"];

  if (v2)
  {
    if ([v2 isEqualToString:@"Broken"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"Yes"])
    {
      v3 = 3;
    }

    else
    {
      v3 = [v2 isEqualToString:@"No"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSDictionary *__cdecl sub_1000021B8(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKAPFSSnapshotDisk+Daemon.m", 76);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100003394(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKMountOperation.m", 189);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_10000384C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[NSRegularExpression alloc] initWithPattern:@"[a-z]+" options:0 error:0];
  v6 = [v5 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 range];
    v10 = [v3 substringWithRange:{v8, v9}];
    v11 = [v4 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_10000439C(uint64_t a1)
{
  v3 = +[SKDaemonManager sharedManager];
  v2 = [v3 _recacheSyncDisk:*(a1 + 32)];
}

void sub_10000477C(uint64_t a1)
{
  v2 = [*(a1 + 32) installedFilesystemsMapping];
  v3 = qword_100059310;
  qword_100059310 = v2;

  v4 = [*(a1 + 32) extensionFilesystemsMapping];
  byte_100059318 = [v4 count] != 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v18}];
        v12 = [NSPredicate predicateWithBlock:&stru_100048BF0];
        v13 = [v11 filteredArrayUsingPredicate:v12];

        if ([v13 count] || (objc_msgSend(qword_100059310, "valueForKey:", v10), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {
          v14 = [v5 objectForKeyedSubscript:v10];
          [qword_100059310 setObject:v14 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = [SKFilesystem collectFilesystemsWithPersonalityMapping:qword_100059310];
  v17 = qword_100059308;
  qword_100059308 = v16;
}

_UNKNOWN **sub_100005EDC(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"Base"];
  v5 = [v3 objectForKeyedSubscript:@"Partition ID"];

  v6 = sub_100010164(v4);
  if (v6)
  {
    v6 = sub_100010164(v5);
  }

  if (a2)
  {
    *a2 = v6;
  }

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = &off_10004C028;
  }

  v8 = v7;

  return v7;
}

int64_t sub_100007748(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:1];
  v6 = [v4 objectAtIndexedSubscript:1];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_100008B7C(uint64_t a1, uint64_t a2)
{
  v4 = [SKPartitionTable alloc];
  v5 = [*(a1 + 32) disk];
  v6 = [(SKPartitionTable *)v4 initWithDisk:v5 error:a2];

  if (v6)
  {
    v7 = [*(a1 + 32) descriptors];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100008E84;
    v23[3] = &unk_100048C78;
    v8 = v6;
    p_super = &v8->super;
    [v7 enumerateObjectsUsingBlock:v23];

    v9 = [*(a1 + 32) disk];
    v22 = 0;
    v10 = [v9 cleanupWithError:&v22];
    v11 = v22;

    if ((v10 & 1) == 0 && v11)
    {
      v12 = sub_10000BFD0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 32) disk];
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to cleanup %@, %@", buf, 0x16u);
      }
    }

    v14 = [*(a1 + 32) disk];
    v15 = [v14 daDisk];
    DADiskClaim(v15, 0, sub_100008EF8, 0, nullsub_4, 0);

    if ([(SKPartitionTable *)v8 writePartitionScheme:0 error:a2])
    {
      v16 = *(a1 + 40);
    }

    else
    {
      v19 = [*(a1 + 32) disk];
      v20 = [v19 daDisk];
      DADiskUnclaim(v20);

      v16 = 0;
    }

    v17 = p_super;
  }

  else
  {
    v17 = sub_10000BFD0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) disk];
      *buf = 136315394;
      v26 = "[SKEraseDisk(Daemon) createStateMachineWithError:]_block_invoke";
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Failed to create partition table for %@", buf, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

void sub_100008E84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 partitions];
  v4 = [v3 newPartition];

  [v5 addObject:v4];
}

id sub_100008F04(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) disk];
  v5 = [v4 daDisk];
  DADiskUnclaim(v5);

  v6 = [*(a1 + 32) disk];
  v7 = [v6 children];

  if (v7 && [v7 count])
  {
    v27 = a2;
    v8 = objc_opt_new();
    v9 = [*(a1 + 32) descriptors];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000092A0;
        v28[3] = &unk_100048CC0;
        v29 = v11;
        v12 = [NSPredicate predicateWithBlock:v28, v27];
        v13 = [v7 filteredArrayUsingPredicate:v12];

        if ([v13 count] != 1)
        {
          break;
        }

        v14 = [*(a1 + 32) descriptors];
        v15 = [v14 objectAtIndexedSubscript:v11];
        v16 = [v15 innerDescriptor];

        v17 = [v13 objectAtIndexedSubscript:0];
        v18 = [v16 toVolumeWithDisk:v17];

        [v8 addObject:v18];
        ++v11;
        v19 = [*(a1 + 32) descriptors];
        v20 = [v19 count];

        if (v20 <= v11)
        {
          goto LABEL_7;
        }
      }

      v26 = [SKError errorWithCode:300 disks:v13 userInfo:0];
      v23 = [SKError nilWithError:v26 error:v27];
    }

    else
    {
LABEL_7:
      v13 = objc_opt_new();
      v21 = [*(a1 + 32) progress];
      v22 = [v13 progress];
      [v21 chainChildProgress:v22 withPendingUnitCount:{vcvtd_n_f64_u64(0x64 / objc_msgSend(v7, "count"), 1uLL)}];

      if ([v13 createWithVolumes:v8 error:v27])
      {
        v23 = *(a1 + 40);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v8 = [*(a1 + 32) disk];
    v30 = v8;
    v13 = [NSArray arrayWithObjects:&v30 count:1];
    v24 = [SKError errorWithCode:300 disks:v13 userInfo:0];
    v23 = [SKError nilWithError:v24 error:a2];
  }

  return v23;
}

BOOL sub_1000092A0(uint64_t a1, uint64_t a2)
{
  v3 = [SKPartitionTable partitionIDFromDisk:a2];
  v4 = [v3 unsignedLongValue] == (*(a1 + 32) + 1);

  return v4;
}

id sub_1000092F4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) disk];
  v5 = [v4 children];

  if (v5 && [v5 count] && (objc_msgSend(*(a1 + 32), "descriptors"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v8 = objc_msgSend(v5, "count"), v6, v7 == v8))
  {
    v9 = [*(a1 + 32) descriptors];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [v5 objectAtIndexedSubscript:v11];
        v13 = [*(a1 + 32) descriptors];
        v14 = [v13 objectAtIndexedSubscript:v11];
        v15 = [v14 filesystem];
        +[SKEraseVolume reProbeWithDisk:isEncrypted:](SKEraseVolume, "reProbeWithDisk:isEncrypted:", v12, [v15 isEncrypted]);

        ++v11;
        v16 = [*(a1 + 32) descriptors];
        v17 = [v16 count];
      }

      while (v17 > v11);
    }

    v18 = *(a1 + 40);
  }

  else
  {
    v19 = [*(a1 + 32) disk];
    v23 = v19;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    v21 = [SKError errorWithCode:105 disks:v20 userInfo:0];
    v18 = [SKError nilWithError:v21 error:a2];
  }

  return v18;
}

id sub_100009524(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) disk];
  v5 = [v4 children];

  if (v5 && [v5 count] && (objc_msgSend(*(a1 + 32), "descriptors"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v8 = objc_msgSend(v5, "count"), v6, v7 == v8))
  {
    v9 = [*(a1 + 32) descriptors];
    v10 = [v9 count];

    if (v10)
    {
      v12 = 0;
      v36 = kSKDiskMountOptionRecursive;
      v13 = kSKDiskUnmountOptionForce;
      *&v11 = 138412546;
      v35 = v11;
      do
      {
        v14 = [*(a1 + 32) descriptors];
        v15 = [v14 objectAtIndexedSubscript:v12];
        v16 = [v15 innerDescriptor];

        v17 = [v16 filesystem];
        v18 = [v17 majorType];
        v19 = [v18 isEqualToString:@"apfs"];

        if ((v19 & 1) == 0)
        {
          v20 = [v5 objectAtIndexedSubscript:v12];
          v42[0] = v36;
          v42[1] = v13;
          v43[0] = &__kCFBooleanTrue;
          v43[1] = &__kCFBooleanTrue;
          v21 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
          v37 = 0;
          v22 = [SKUnmountOperation unmountWithDisk:v20 options:v21 error:&v37];
          v23 = v37;

          if ((v22 & 1) == 0 && v23)
          {
            v24 = sub_10000BFD0();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [*(a1 + 32) disk];
              v26 = [v25 children];
              v27 = [v26 objectAtIndexedSubscript:v12];
              *buf = v35;
              v39 = v27;
              v40 = 2112;
              v41 = v23;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to unmount after reprobe %@, %@", buf, 0x16u);
            }
          }
        }

        ++v12;
        v28 = [*(a1 + 32) descriptors];
        v29 = [v28 count];
      }

      while (v29 > v12);
    }

    v30 = *(a1 + 40);
  }

  else
  {
    v31 = [*(a1 + 32) disk];
    v44 = v31;
    v32 = [NSArray arrayWithObjects:&v44 count:1];
    v33 = [SKError errorWithCode:105 disks:v32 userInfo:0];
    v30 = [SKError nilWithError:v33 error:a2];
  }

  return v30;
}

void sub_10000A664(id a1)
{
  qword_100059320 = [@"\n" dataUsingEncoding:4];

  _objc_release_x1();
}

void sub_10000AA04(id a1)
{
  qword_100059330 = [@"<plist" dataUsingEncoding:4];

  _objc_release_x1();
}

void sub_10000AA8C(id a1)
{
  qword_100059340 = [@"</plist>" dataUsingEncoding:4];

  _objc_release_x1();
}

void sub_10000B728(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SKTask *)a2 task:a3];
  [v4 launch];
}

BOOL sub_10000B76C(id a1, SKTask *a2, NSDictionary *a3)
{
  v3 = [(SKTask *)a2 task];
  v4 = [v3 isRunning];

  return v4;
}

void sub_10000B7A8(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v12 = a2;
  v4 = [(SKTask *)v12 stdoutParser];

  if (v4)
  {
    v5 = [(SKTask *)v12 stdoutParser];
    v6 = [(SKTask *)v12 stdoutHandle];
    v7 = [v6 readDataUpToLength:4096 error:0];
    [v5 parseData:v7];
  }

  v8 = [(SKTask *)v12 stderrParser];

  if (v8)
  {
    v9 = [(SKTask *)v12 stderrParser];
    v10 = [(SKTask *)v12 stderrHandle];
    v11 = [v10 readDataUpToLength:4096 error:0];
    [v9 parseData:v11];
  }
}

BOOL sub_10000B8B4(id a1, SKTask *a2, NSDictionary *a3)
{
  v3 = [(SKTask *)a2 task];
  v4 = [v3 isRunning];

  return v4;
}

void sub_10000B8F0(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SKTask *)a2 task:a3];
  [v4 waitUntilExit];
}

void sub_10000B934(id a1, SKTask *a2, unint64_t a3, BOOL *a4)
{
  v12 = a2;
  v4 = [(SKTask *)v12 stderrParser];

  if (v4)
  {
    v5 = [(SKTask *)v12 stdoutParser];
    v6 = [(SKTask *)v12 stdoutHandle];
    v7 = [v6 readDataToEndOfFile];
    [v5 parseData:v7];
  }

  v8 = [(SKTask *)v12 stderrParser];

  if (v8)
  {
    v9 = [(SKTask *)v12 stderrParser];
    v10 = [(SKTask *)v12 stderrHandle];
    v11 = [v10 readDataToEndOfFile];
    [v9 parseData:v11];
  }
}

id sub_10000BF44(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"%s:%d", a1, a2];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

id sub_10000BFD0()
{
  if (qword_100059350 != -1)
  {
    sub_10002E4D4();
  }

  if (byte_100059358)
  {
    v0 = &off_100059088;
  }

  else
  {
    v0 = &off_100059080;
  }

  v1 = *v0;

  return v1;
}

void sub_10000C030(id a1)
{
  v1 = os_log_create("com.apple.storagekit", "general");
  v2 = off_100059080;
  off_100059080 = v1;

  off_100059088 = os_log_create("com.apple.storagekit", "storagekit-install");

  _objc_release_x1();
}

void SKLogSetLogsToConsole()
{
  v0 = sub_10000BFD0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SKLogSetLogsToConsole/Std is deprecated. Please remove this call", v1, 2u);
  }
}

void SKLogSetLogsToStd()
{
  v0 = sub_10000BFD0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SKLogSetLogsToStd is deprecated. Please remove this call", v1, 2u);
  }
}

void sub_10000C17C(os_log_type_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000BFD0();
  if (os_log_type_enabled(v6, a1))
  {
    *buf = 136315138;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v6, a1, "%s", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = sub_10000BFD0();
        if (os_log_type_enabled(v13, a1))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v13, a1, "%@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_10000CF04(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000BFD0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Progress handler failed:%@", &v4, 0xCu);
  }
}

id sub_10000D268(uint64_t a1)
{
  v16[0] = @"api";
  v2 = [NSString stringWithCString:*(a1 + 40) encoding:4];
  v17[0] = v2;
  v16[1] = @"diskType";
  v3 = [*(a1 + 32) type];
  v17[1] = v3;
  v16[2] = @"isDiskImage";
  if ([*(a1 + 32) isDiskImage])
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  v17[2] = v4;
  v16[3] = @"isWritable";
  if ([*(a1 + 32) isWritable])
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  v17[3] = v5;
  v16[4] = @"isLocked";
  if ([*(a1 + 32) isLocked])
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  v17[4] = v6;
  v16[5] = @"isExternal";
  if ([*(a1 + 32) isExternal])
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  v17[5] = v7;
  v16[6] = @"isInternalDisk";
  if ([*(a1 + 32) isInternal])
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  v17[6] = v8;
  v16[7] = @"isJournaled";
  if ([*(a1 + 32) isJournaled])
  {
    v9 = &__kCFBooleanTrue;
  }

  else
  {
    v9 = &__kCFBooleanFalse;
  }

  v17[7] = v9;
  v16[8] = @"isWholeDisk";
  if ([*(a1 + 32) isWholeDisk])
  {
    v10 = &__kCFBooleanTrue;
  }

  else
  {
    v10 = &__kCFBooleanFalse;
  }

  v17[8] = v10;
  v16[9] = @"isOSInternal";
  if ([*(a1 + 32) isOSInternal])
  {
    v11 = &__kCFBooleanTrue;
  }

  else
  {
    v11 = &__kCFBooleanFalse;
  }

  v17[9] = v11;
  v16[10] = @"isPhysicalDisk";
  if ([*(a1 + 32) isPhysicalDisk])
  {
    v12 = &__kCFBooleanTrue;
  }

  else
  {
    v12 = &__kCFBooleanFalse;
  }

  v17[10] = v12;
  v16[11] = @"role";
  v13 = [*(a1 + 32) role];
  v17[11] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v14;
}

void sub_10000E010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 minimalDictionaryRepresentation];
  v5 = [v3 _safe_object:v4];

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [*(*(a1 + 32) + 8) requestWithUUID:*(a1 + 40) didCompleteWithResult:v6];
}

void sub_10000E268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) minimalDictionaryRepresentation];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(v11 + 8);
  v19 = v4;
  v14 = [NSArray arrayWithObjects:&v19 count:1];
  [v13 requestWithUUID:v12 didCompleteWithResult:v14];
}

void sub_10000E528(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithBool:a2];
  v5 = v3;
  v4 = [NSArray arrayWithObjects:&v5 count:1];

  [*(*(a1 + 32) + 8) requestWithUUID:*(a1 + 40) didCompleteWithResult:v4];
}

void sub_10000EA70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) minimalDictionaryRepresentation];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v11[1];
  v14 = [v11 _safe_object:v4];
  v20 = v14;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  [v13 requestWithUUID:v12 didCompleteWithResult:v15];
}

void sub_10000ED94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) minimalDictionaryRepresentation];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v11[1];
  v14 = [v11 _safe_object:v4];
  v20 = v14;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  [v13 requestWithUUID:v12 didCompleteWithResult:v15];
}

NSArray *__cdecl sub_10000F030(id a1)
{
  v1 = [SKError errorWithCode:112 userInfo:0];
  v4 = v1;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

void sub_10000F0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 32) _safe_object:a2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 requestWithUUID:v2 didCompleteWithResult:v5];
}

NSArray *__cdecl sub_10000F290(id a1)
{
  v1 = [SKError errorWithCode:112 userInfo:0];
  v4 = v1;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

void sub_10000F334(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 32) _safe_object:a2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 requestWithUUID:v2 didCompleteWithResult:v5];
}

void sub_10000F5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 32) _safe_object:a2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 requestWithUUID:v2 didCompleteWithResult:v5];
}

NSArray *__cdecl sub_10000F778(id a1)
{
  v1 = [SKError errorWithCode:112 userInfo:0];
  v4 = v1;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

void sub_10000F81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 32) _safe_object:a2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 requestWithUUID:v2 didCompleteWithResult:v5];
}

void sub_10000FCEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  if (!a2 || v5)
  {
    v9 = +[NSNull null];
    v13[0] = v9;
    v10 = [*(a1 + 32) _safe_object:v6];
    v13[1] = v10;
    v11 = [NSArray arrayWithObjects:v13 count:2];
    (*(v7 + 16))(v7, v11);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [a2 minimalDictionaryRepresentation];
    v10 = [v8 _safe_object:v9];
    v14[0] = v10;
    v11 = +[NSNull null];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
    (*(v7 + 16))(v7, v12);
  }
}

void sub_100010088(void *a1, const void *a2)
{
  queue = a1;
  v3 = malloc_type_calloc(8uLL, 1uLL, 0x10319707uLL);
  *v3 = 1;
  dispatch_queue_set_specific(queue, a2, v3, &_free);
}

void *sub_100010108()
{
  if (qword_100059360 != -1)
  {
    sub_10002E4E8();
  }

  result = dispatch_get_specific("isMainQueue");
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t sub_100010164(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

BOOL sub_1000101BC(void *a1)
{
  v1 = a1;
  v2 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] != 0;

  return v2;
}

uint64_t sub_100010220(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_100010278(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_1000102D0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id sub_100010328(void *a1)
{
  v1 = a1;
  if (sub_100010164(v1))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100010370(void *a1)
{
  v1 = a1;
  if (sub_100010164(v1))
  {
    v2 = [v1 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *sub_1000103B8(void *a1)
{
  v1 = a1;
  if (sub_1000101BC(v1))
  {
    v2 = v1;
  }

  else
  {
    v2 = &stru_10004A890;
  }

  v3 = v2;

  return v2;
}

BOOL sub_100010400(void *a1)
{
  v1 = a1;
  if (sub_1000101BC(v1))
  {
    v2 = [[NSUUID alloc] initWithUUIDString:v1];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10001045C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t sub_1000104B4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t sub_10001050C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t sub_100010564(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t sub_1000105BC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t sub_100010614(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

void sub_100010F84(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
    v8 = &kSKDiskFileSystemAPFS;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [objc_alloc(v7[211]) initWithDictionaryRepresentation:*(*(&v24 + 1) + 8 * v9)];
        v11 = [v10 type];
        if ([v11 isEqualToString:*v8] && (v12 = objc_msgSend(v10, "isEncrypted"), v12 == objc_msgSend(*(a1 + 32), "isEncrypted")))
        {
          v23 = [v10 isCaseSensitive];
          v13 = [*(a1 + 32) isCaseSensitive];
          v14 = v5;
          v15 = v6;
          v16 = a1;
          v17 = v8;
          v18 = v7;
          v19 = v3;
          v20 = v13;

          v21 = v23 == v20;
          v3 = v19;
          v7 = v18;
          v8 = v17;
          a1 = v16;
          v6 = v15;
          v5 = v14;
          if (v21)
          {
            [*(a1 + 32) setFilesystem:v10];
          }
        }

        else
        {
        }

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v22 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v5 = v22;
    }

    while (v22);
  }
}

void sub_1000124CC(id a1)
{
  v4 = 0;
  v3 = 4;
  sysctlbyname("hw.logicalcpu", &v4, &v3, 0, 0);
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "# CPUs: %u", buf, 8u);
  }

  v2 = v4;
  if (v4 <= 1)
  {
    v2 = 1;
  }

  dword_100059370 = v2;
}

void sub_1000125F0(id a1)
{
  qword_100059380 = objc_alloc_init(SKDaemon);

  _objc_release_x1();
}

void sub_1000126A4(id a1)
{
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received", v3, 2u);
  }

  v2 = +[SKDaemonManager sharedManager];
  [v2 _scheduleGenericOperationWithCompletionBlock:&stru_100049198];
}

void sub_100012730(id a1)
{
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM handling complete, quitting now", v2, 2u);
  }

  exit(0);
}

void sub_100012E5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[SKDaemonManager sharedManager];
    [v3 removeListener:*(a1 + 32)];
  }

  [*(a1 + 40) setNumConnectedClients:{objc_msgSend(*(a1 + 40), "numConnectedClients") - 1}];
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) numConnectedClients];
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ removed. There are now %u client(s) connected to storagekitd", &v7, 0x12u);
  }
}

id sub_1000134F8(uint64_t a1, void *a2)
{
  v3 = [a2 diskIdentifier];
  v4 = [*(a1 + 32) diskIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_10001458C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 disk];
  v6 = [v4 syncDiskFromDaemon:v5 error:a2];
  [*(a1 + 32) setDisk:v6];

  v7 = [*(a1 + 32) disk];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = [*(a1 + 32) disk];
    v11 = [*(a1 + 32) descriptor];
    v12 = [v11 filesystem];
    [v9 reProbeWithDisk:v10 isEncrypted:{objc_msgSend(v12, "isEncrypted")}];

    v13 = *(a1 + 40);
  }

  else
  {
    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[SKEraseVolume(Daemon) createStateMachineWithError:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to sync disk from Daemon", &v16, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void *sub_10001471C(uint64_t a1)
{
  v2 = [*(a1 + 32) disk];
  v17[0] = kSKDiskMountOptionRecursive;
  v17[1] = kSKDiskUnmountOptionForce;
  v18[0] = &__kCFBooleanTrue;
  v18[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = 0;
  v4 = [SKUnmountOperation unmountWithDisk:v2 options:v3 error:&v12];
  v5 = v12;

  if ((v4 & 1) == 0 && v5)
  {
    v6 = sub_10000BFD0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) disk];
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to unmount after reprobe %@, %@", buf, 0x16u);
    }
  }

  v8 = [*(a1 + 32) progress];
  [v8 setCompletedUnitCount:100];

  v9 = *(a1 + 40);
  v10 = v9;

  return v9;
}

id sub_1000148B8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) disk];
  v22 = 0;
  v5 = [v4 cleanupWithError:&v22];
  v6 = v22;

  if ((v5 & 1) == 0 && v6)
  {
    v7 = sub_10000BFD0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) disk];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to cleanup %@, %@", buf, 0x16u);
    }
  }

  v9 = [*(a1 + 32) disk];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [*(a1 + 32) disk];
  v12 = [v11 container];

  if (v12)
  {
    v13 = [v12 designatedPhysicalStore];
    if (v13)
    {
      v14 = v13;
      [*(a1 + 32) setDisk:v13];

LABEL_10:
      v15 = *(a1 + 40);
      goto LABEL_13;
    }

    v23 = v12;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    v20 = [SKError errorWithCode:117 disks:v19 userInfo:0];
    v15 = [SKError nilWithError:v20 error:a2];
  }

  else
  {
    v16 = [*(a1 + 32) disk];
    v24 = v16;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [SKError errorWithCode:117 disks:v17 userInfo:0];
    v15 = [SKError nilWithError:v18 error:a2];
  }

LABEL_13:

  return v15;
}

id sub_100014B54(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) progress];
  v6 = [v4 progress];
  [v5 chainChildProgress:v6 withPendingUnitCount:50];

  v7 = [*(a1 + 32) descriptor];
  v8 = [*(a1 + 32) disk];
  v9 = [v7 toVolumeWithDisk:v8];
  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  LODWORD(a2) = [v4 createWithVolumes:v10 error:a2];

  if (a2)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_100014CB4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) disk];
  v5 = [v4 isWholeDisk];

  if (v5)
  {
    v6 = [*(a1 + 32) disk];
    v7 = [v6 wipeDiskWithError:a2];

    if (v7)
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [SKPartitionTable alloc];
    v10 = [*(a1 + 32) disk];
    v11 = [(SKPartitionTable *)v9 initWithDisk:v10 error:a2];

    v12 = [*(a1 + 32) disk];
    v13 = [SKPartitionTable partitionIDFromDisk:v12];

    if (v13)
    {
      v14 = [*(a1 + 32) descriptor];
      v15 = [v14 filesystem];
      v16 = [(SKPartitionTable *)v11 overwritePartitionAt:v13 filesystem:v15 error:a2];

      if (v16)
      {
        v8 = *(a1 + 40);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v17 = [*(a1 + 32) disk];
      v21 = v17;
      v18 = [NSArray arrayWithObjects:&v21 count:1];
      v19 = [SKError errorWithCode:300 disks:v18 userInfo:0];
      v8 = [SKError nilWithError:v19 error:a2];
    }
  }

  return v8;
}

id sub_100014ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 disk];
  v6 = [v4 syncDiskFromDaemon:v5 error:a2];
  [*(a1 + 32) setDisk:v6];

  v7 = [*(a1 + 32) disk];

  if (v7)
  {
    v8 = [*(a1 + 32) disk];
    v59 = 0;
    v9 = [v8 cleanupWithError:&v59];
    v10 = v59;

    if ((v9 & 1) == 0 && v10)
    {
      v11 = sub_10000BFD0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(a1 + 32) disk];
        *buf = 138412546;
        v64 = v12;
        v65 = 2112;
        v66 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to cleanup %@, %@", buf, 0x16u);
      }
    }

    v13 = [*(a1 + 32) disk];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [*(a1 + 32) disk];
      v15 = [v14 container];
      v16 = [v15 isLiveFSAPFSDisk];

      if (v16)
      {
        v17 = (*(*(a1 + 48) + 16))();
        goto LABEL_35;
      }
    }

    else
    {
    }

    v18 = [NSNumber numberWithInteger:0];
    v19 = [*(a1 + 32) disk];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v21 = [*(a1 + 32) disk];
    v22 = v21;
    if (isKindOfClass)
    {
      v23 = [v21 diskIdentifier];
      v24 = [v23 substringFromIndex:4];
      v25 = [v24 componentsSeparatedByString:@"s"];

      if ([v25 count] <= 1)
      {
        v50 = sub_10000BFD0();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = [*(a1 + 32) disk];
          v52 = [v51 diskIdentifier];
          *buf = 136315394;
          v64 = "[SKEraseVolume(Daemon) createStateMachineWithError:]_block_invoke";
          v65 = 2114;
          v66 = v52;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s: Invalid BSD name for APFS volume: %{public}@", buf, 0x16u);
        }

        v17 = [SKError nilWithPOSIXCode:22 error:a2];
        goto LABEL_34;
      }

      v26 = [v25 objectAtIndexedSubscript:1];
      v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 integerValue] - 1);

      v28 = [*(a1 + 32) disk];
      v29 = [v28 container];

      v30 = v25;
      v25 = v29;
      v18 = v27;
    }

    else
    {
      objc_opt_class();
      v31 = objc_opt_isKindOfClass();

      if ((v31 & 1) == 0)
      {
        goto LABEL_28;
      }

      v30 = [*(a1 + 32) disk];
      v25 = [v30 container];
    }

    if (v25)
    {
      v60[0] = kAPFSVolumeNameKey;
      v32 = [*(a1 + 32) descriptor];
      v33 = [v32 name];
      v61[0] = v33;
      v61[1] = v18;
      v58 = v18;
      v60[1] = kAPFSVolumeFSIndexKey;
      v60[2] = kAPFSVolumeCaseSensitiveKey;
      v34 = [*(a1 + 32) descriptor];
      v35 = [v34 filesystem];
      v36 = [v35 isCaseSensitive];
      v37 = &__kCFBooleanFalse;
      if (v36)
      {
        v37 = &__kCFBooleanTrue;
      }

      v60[3] = kAPFSVolumeCreateSynchronousKey;
      v61[2] = v37;
      v61[3] = &__kCFBooleanTrue;
      v38 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
      v39 = [NSMutableDictionary dictionaryWithDictionary:v38];

      v40 = [*(a1 + 32) descriptor];
      v41 = [v40 password];

      if (v41)
      {
        v42 = [*(a1 + 32) descriptor];
        v43 = [v42 password];
        [v39 setObject:v43 forKeyedSubscript:kAPFSVolumeEncryptedKey];
      }

      v44 = [v25 diskIdentifier];
      [v44 UTF8String];
      v45 = APFSVolumeCreate();

      if (v45)
      {
        v46 = sub_10000BFD0();
        v18 = v58;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = [*(a1 + 32) disk];
          *buf = 136315394;
          v64 = "[SKEraseVolume(Daemon) createStateMachineWithError:]_block_invoke";
          v65 = 2112;
          v66 = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s: Failed to create volume %@", buf, 0x16u);
        }

        v17 = [SKError nilWithOSStatus:v45 error:a2];
      }

      else
      {
        v53 = [SKIOMedia alloc];
        v54 = [v25 diskIdentifier];
        v55 = [(SKIOMedia *)v53 initWithDevName:v54];

        [(SKIOObject *)v55 waitIOKitQuiet];
        v56 = [*(a1 + 32) progress];
        [v56 setCompletedUnitCount:100];

        v17 = *(a1 + 40);
        v18 = v58;
      }

      goto LABEL_34;
    }

LABEL_28:
    v25 = [*(a1 + 32) disk];
    v62 = v25;
    v48 = [NSArray arrayWithObjects:&v62 count:1];
    v49 = [SKError errorWithCode:117 disks:v48 userInfo:0];
    v17 = [SKError nilWithError:v49 error:a2];

LABEL_34:
    goto LABEL_35;
  }

  v10 = sub_10000BFD0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v64 = "[SKEraseVolume(Daemon) createStateMachineWithError:]_block_invoke_3";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to sync disk from Daemon", buf, 0xCu);
  }

  v17 = 0;
LABEL_35:

  return v17;
}

NSDictionary *__cdecl sub_100016908(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKBaseDiskArbOperation.m", 126);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100017B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000BFD0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "void _diskArbOperationCallback(DADiskRef, DADissenterRef, void *)";
    v10 = 2112;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: diskRef = %@", &v8, 0x16u);
  }

  return [a3 diskArbCallbackWithDissenter:a2];
}

void sub_100017EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100017F3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[10] finished])
    {
      v4 = [v3[9] disk];
      v5 = v3[7];
      v3[7] = v4;

LABEL_10:
      [v3 finished];
      goto LABEL_11;
    }

    v8 = v3[10];
    v9 = *(*(a1 + 32) + 8);
    obj = *(v9 + 40);
    v10 = [v8 nextWithError:&obj];
    objc_storeStrong((v9 + 40), obj);
    if ((v10 & 1) == 0)
    {
      objc_storeStrong(v3 + 6, *(*(*(a1 + 32) + 8) + 40));
      goto LABEL_10;
    }

    v7 = +[SKDaemonManager sharedManager];
    v11 = objc_loadWeakRetained(v3 + 12);
    [v7 syncAllDisksWithCompletionBlock:v11];
  }

  else
  {
    v6 = +[SKBaseManager sharedManager];
    [v6 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_100049300];

    v7 = sub_10000BFD0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "[SKEraseOperation run]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s: Failed to get strongref from weakself", buf, 0xCu);
    }
  }

LABEL_11:
}

NSDictionary *__cdecl sub_100018104(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKEraseOperation.m", 95);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[SKDaemon sharedDaemon];
  [v1 startServer];

  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_1000193CC(uint64_t a1)
{
  v3 = +[SKDaemonManager sharedManager];
  v2 = [v3 _recacheSyncDisk:*(a1 + 32)];
}

void sub_100019534(id a1)
{
  if (sub_100010108())
  {
    qword_100059388 = objc_alloc_init(SKDaemonManager);

    _objc_release_x1();
  }

  else
  {

    dispatch_sync(&_dispatch_main_q, &stru_100049368);
  }
}

void sub_1000195A0(id a1)
{
  qword_100059388 = objc_alloc_init(SKDaemonManager);

  _objc_release_x1();
}

void sub_100019EF0(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019FB0;
  v6[3] = &unk_100049390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 dispatchToWorkThread:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_100019FB0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

id sub_10001A0C4(uint64_t a1, void *a2)
{
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "void DiskDisappearedCallback(DADiskRef, void *)";
    v8 = 2112;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Received DA disappear notification for %@", &v6, 0x16u);
  }

  return [a2 _handleDANotificationWithDisk:a1 operation:off_1000592D8];
}

id sub_10001A1A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000BFD0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "void DiskDescriptionChangedCallback(DADiskRef, CFArrayRef, void *)";
    v10 = 2112;
    v11 = a1;
    v12 = 2114;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Received DA changed notification for %@. Changed keys: %{public}@", &v8, 0x20u);
  }

  return [a3 _handleDANotificationWithDisk:a1 operation:off_1000592D0];
}

id sub_10001A28C(void *a1)
{
  v2 = sub_10000BFD0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "void DiskListCompleteCallback(void *)";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Received DA list complete callback", &v4, 0xCu);
  }

  return [a1 setDiskListCompleteReceived:1];
}

id sub_10001A344(uint64_t a1, void *a2)
{
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "void DiskAppearedCallback(DADiskRef, void *)";
    v8 = 2112;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Received DA appear notification for %@", &v6, 0x16u);
  }

  return [a2 _handleDANotificationWithDisk:a1 operation:off_1000592C8];
}

void sub_10001AC34(uint64_t a1)
{
  v2 = [*(a1 + 32) rootWholeDisk];
  if (v2)
  {
    v3 = [(SKDiskResizerBase *)[SKLastPartitionResizer alloc] initWithDisk:v2 requestedSize:*(a1 + 40)];
    v4 = sub_10000BFD0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v2;
      v13 = 2048;
      v14 = [(SKLastPartitionResizer *)v3 currentSize];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current size of %@: %lld bytes", &v11, 0x16u);
    }

    v5 = [(SKLastPartitionResizer *)v3 currentSize]& 0xFFF;
    v6 = [(SKLastPartitionResizer *)v3 currentSize];
    if (v5)
    {
      v6 = &v6[-([(SKLastPartitionResizer *)v3 currentSize]& 0xFFF) + 4096];
    }

    v7 = [(SKDiskResizerBase *)v3 requestedSize]& 0xFFF;
    v8 = [(SKDiskResizerBase *)v3 requestedSize];
    if (v7)
    {
      v8 = &v8[-([(SKDiskResizerBase *)v3 requestedSize]& 0xFFF) + 4096];
    }

    if (v6 == v8)
    {
      v9 = sub_10000BFD0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[SKDaemonManager performVMDiskResizeWithSize:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Disk was already resized", &v11, 0xCu);
      }
    }

    else
    {
      v10 = [*(a1 + 32) resize:v2 toSize:*(a1 + 40) completionBlock:&stru_1000493D8];
    }
  }
}

void sub_10001AE14(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000BFD0();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SKDaemonManager performVMDiskResizeWithSize:]_block_invoke";
      v11 = 2112;
      v12 = v2;
      v5 = "%s: VM disk resize failed: %@, shutting down";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SKDaemonManager performVMDiskResizeWithSize:]_block_invoke";
    v5 = "%s: VM disk resized successfully, shutting down";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 12;
    goto LABEL_6;
  }

  reboot3();
}

uint64_t sub_10001B02C(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return _objc_release_x1();
}

id sub_10001B080(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001B0F0;
  v3[3] = &unk_100048BB0;
  v3[4] = v1;
  return [v1 dispatchToWorkThread:v3];
}

double sub_10001B4E0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) timeIntervalSinceNow];
  result = -v2;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10001BAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001BAE4(uint64_t a1)
{
  v2 = [*(a1 + 32) _processDiskNotificationsForMap:*(a1 + 40) isCompleteDiskList:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001C824(uint64_t a1)
{
  v2 = [*(a1 + 32) _processDiskNotificationsForMap:*(a1 + 40) isCompleteDiskList:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001C9EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _fullRecacheWithDisks:*(a1 + 40) options:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10001CBCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10001CC7C;
  v7 = &unk_100048F38;
  v8 = v2;
  v9 = *(a1 + 40);
  [v2 dispatchToWorkThread:&v4];
  v3 = [*(a1 + 40) finishedSemaphore];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

void *sub_10001CC7C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) count];
  v3 = *(a1 + 32);
  if (!v2 && !*(v3 + 88))
  {
    v4 = sub_10000BFD0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 136315394;
      v17 = "[SKDaemonManager _scheduleOperation:]_block_invoke_2";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Scheduling operation: %@", buf, 0x16u);
    }

    *(*(a1 + 32) + 32) = 1;
    v6 = +[NSDate date];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v9 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001CEA8;
    block[3] = &unk_100048BB0;
    block[4] = *(a1 + 32);
    dispatch_after(v9, &_dispatch_main_q, block);
    v10 = dispatch_time(0, 15000000000);
    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001CF20;
    v14[3] = &unk_100048BB0;
    v14[4] = v11;
    dispatch_after(v10, v12, v14);
    v3 = *(a1 + 32);
  }

  [*(v3 + 80) addObject:*(a1 + 40)];
  result = *(a1 + 32);
  if (!result[11])
  {
    return [result _advanceOperationQueueOnWorkQueue];
  }

  return result;
}

id sub_10001CEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001CF18;
  v3[3] = &unk_100048BB0;
  v3[4] = v1;
  return [v1 dispatchToWorkThread:v3];
}

id sub_10001DA50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 visibleDiskRoles];
  v5 = [v3 objectForKey:@"role"];

  v6 = [v4 containsObject:v5];
  return v6;
}

void sub_10001DCDC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 104) count];
  objc_sync_exit(v2);

  v4 = *(a1 + 40);
  if (v3 || (*(a1 + 40) & 1) != 0)
  {
    v5 = *(a1 + 32);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001DF44;
    v20[3] = &unk_1000494F0;
    v21 = v4;
    v20[4] = v5;
    v20[5] = v3;
    [v5 dispatchSyncToWorkThread:v20];
  }

  v6 = [*(a1 + 32) syncAllDisksSemaphores];
  v7 = [v6 count] == 0;

  if (!v7)
  {
    v8 = sub_10000BFD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) syncAllDisksSemaphores];
      v10 = [v9 count];
      *buf = 136315394;
      v24 = "[SKDaemonManager _idleCallback]_block_invoke";
      v25 = 1024;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Notifying %u client(s)", buf, 0x12u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [*(a1 + 32) syncAllDisksSemaphores];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          dispatch_semaphore_signal(*(*(&v16 + 1) + 8 * i));
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v12);
    }

    v15 = [*(a1 + 32) syncAllDisksSemaphores];
    [v15 removeAllObjects];
  }
}

void sub_10001DF44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001E084;
  v6[3] = &unk_1000494C8;
  v6[4] = v2;
  v7 = *(a1 + 48);
  [v2 dispatchSyncToEjectThread:v6];
  v3 = sub_10000BFD0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v5 = @" (complete disk list)";
    }

    else
    {
      v5 = &stru_10004A890;
    }

    *buf = 136315650;
    v9 = "[SKDaemonManager _idleCallback]_block_invoke_2";
    v10 = 1024;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %u DA notification(s) handled%@", buf, 0x1Cu);
  }
}

void sub_10001E76C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 88) dmAsyncFinishedForDisk:*(a1 + 48) mainError:*(a1 + 56) detailError:*(a1 + 60) dictionary:*(a1 + 40)];
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_10001E898(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [*(a1 + 32) diskArbCallbacksQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001E970;
  v9[3] = &unk_100048F38;
  v9[4] = *(a1 + 32);
  v10 = v2;
  v4 = v2;
  dispatch_async(v3, v9);

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8);
}

void sub_10001E970(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationsSyncQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EA54;
  v5[3] = &unk_100048F38;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  dispatch_async(v2, v5);

  DAUnregisterCallback(*(*(a1 + 32) + 72), j__objc_msgSend__idleCallback, *(a1 + 32));
  v4 = *(*(a1 + 32) + 72);
  DARegisterIdleCallback();
}

void sub_10001EA54(uint64_t a1)
{
  v2 = [*(a1 + 32) syncAllDisksSemaphores];
  [v2 addObject:*(a1 + 40)];

  v3 = sub_10000BFD0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) syncAllDisksSemaphores];
    v5 = 136315394;
    v6 = "[SKDaemonManager syncAllDisksWithCompletionBlock:]_block_invoke_3";
    v7 = 1024;
    v8 = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %d client(s) are now waiting for idle", &v5, 0x12u);
  }
}

void sub_10001ECC4(uint64_t a1)
{
  v2 = [*(a1 + 32) wholeDiskForDisk:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_10001EDE8(uint64_t a1)
{
  if ([*(a1 + 32) isWholeDisk])
  {
    v2 = [*(a1 + 32) privateCache];
    v9 = [v2 sortedChildren];

    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    if ([v9 count])
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + 40);
        v6 = [v9 objectAtIndexedSubscript:v4];
        v7 = [v5 _diskWithDADisk:v6];

        [v3 addObject:v7];
        ++v4;
      }

      while ([v9 count] > v4);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

void sub_10001EFCC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) lastOperationName];
  (*(v1 + 16))(v1, v2 != 0);
}

uint64_t sub_100021950(uint64_t a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 16;
  }

  if (a1 == 1)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10002196C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kSKDiskTypeGPTWholeDisk])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:kSKDiskTypeMBRWholeDisk])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:kSKDiskTypeAPMWholeDisk])
  {
    v2 = 1;
  }

  else
  {
    v2 = 512;
  }

  return v2;
}

NSDictionary *__cdecl sub_100021B34(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKPartitionTable.m", 67);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100022484(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKPartitionTable.m", 141);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100022534(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKPartitionTable.m", 149);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100022968(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKPartitionTable.m", 180);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100022A18(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKPartitionTable.m", 187);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10002416C(id a1)
{
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SKRemoteAPFSFormatTask initWithName:disk:caseSensitive:password:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: Connection to fsrunner interrupted", &v2, 0xCu);
  }
}

void sub_100024214(id a1)
{
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SKRemoteAPFSFormatTask initWithName:disk:caseSensitive:password:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: Connection to fsrunner invalidated", &v2, 0xCu);
  }
}

void sub_100024560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100024584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000245AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

NSDictionary *__cdecl sub_100024BD4(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKFilesystemMaintainer.m", 204);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_1000253B4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v15 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100024584;
  v13 = sub_100024594;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000254F8;
  v8[3] = &unk_100049720;
  v8[4] = &v9;
  v6 = [FSTaskOptionsBundle bundleForArguments:&v15 count:0 extension:v5 operationType:a2 errorHandler:v8];
  if (a3)
  {
    *a3 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1000254E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000254F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "FSTaskOptionsBundle *createOptionsBundle(NSString *__strong, FSTaskType, NSError *__autoreleasing *)_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Error in creating options bundle %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

Block_layout *sub_100026098(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SKFilesystemMaintainer createReceiverUsingFSKit:opts:taskGroup:writable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Subscribed to a progress", &v13, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = [*(a1 + 32) progress];
  v9 = *(a1 + 32);
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [v9 disks];
  [v8 addChild:v10 withPendingUnitCount:{0x64 / objc_msgSend(v11, "count")}];

  return &stru_100049740;
}

void sub_1000261C4(id a1)
{
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "[SKFilesystemMaintainer createReceiverUsingFSKit:opts:taskGroup:writable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s: Unsubscribed from progress.", &v2, 0xCu);
  }
}

void sub_10002626C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_10000BFD0();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SKFilesystemMaintainer createReceiverUsingFSKit:opts:taskGroup:writable:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Failed to perform maintenance with %@", &v10, 0x16u);
    }

    v7 = [*(a1 + 32) msgHandler];
    [v7 setError:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) getProgressURLKey];
      v10 = 136315394;
      v11 = "[SKFilesystemMaintainer createReceiverUsingFSKit:opts:taskGroup:writable:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Add subscriber for progress (%@)", &v10, 0x16u);
    }

    v7 = [*(a1 + 40) getProgressURLKey];
    v9 = [NSProgress addSubscriberForFileURL:v7 withPublishingHandler:*(a1 + 56)];
  }

  dispatch_group_leave(*(a1 + 48));
}

BOOL sub_100026A60(id a1, SKDisk *a2, NSDictionary *a3)
{
  v3 = [(SKDisk *)a2 filesystem];
  v4 = v3 == 0;

  return v4;
}

NSArray *__cdecl sub_100026CCC(id a1, SKDisk *a2, id *a3)
{
  v3 = a2;
  v4 = [(SKDisk *)v3 isWritable];
  v5 = [(SKDisk *)v3 filesystem];
  v6 = [v5 verificationArgs];
  v7 = v6;
  if (v4)
  {
    v13[0] = v6;
    v8 = [(SKDisk *)v3 filesystem];
    v9 = [v8 liveVerificationArgs];
    v13[1] = v9;
    v10 = [NSArray arrayWithObjects:v13 count:2];
  }

  else
  {
    v12 = v6;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v10;
}

NSArray *__cdecl sub_1000271E8(id a1, SKDisk *a2, id *a3)
{
  v4 = a2;
  v15 = kSKDiskMountOptionRecursive;
  v16 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(a3) = [(SKDisk *)v4 unmountWithOptions:v5 error:a3];

  if (a3)
  {
    v6 = [(SKDisk *)v4 filesystem];
    v7 = [v6 repairArgs];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v6 = sub_10000BFD0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[SKFilesystemMaintainer repairWithError:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Failed to unmount disk %@ for repair", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

void sub_1000275F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002760C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000BFD0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 taskID];
      *buf = 136315906;
      v23 = "[SKFilesystemCreator setupTaskUpdateHandlerWithClient:taskPairs:error:]_block_invoke";
      v24 = 2112;
      v25 = v9;
      v26 = 1024;
      v27 = [v5 taskState];
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Task update %@ received, state %d, error: %@", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 taskID];
    *buf = 136315650;
    v23 = "[SKFilesystemCreator setupTaskUpdateHandlerWithClient:taskPairs:error:]_block_invoke";
    v24 = 2112;
    v25 = v10;
    v26 = 1024;
    v27 = [v5 taskState];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Task update %@ received, state %d", buf, 0x1Cu);
  }

  if ([v5 taskState] == 3)
  {
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    v12 = *(a1 + 32);
    v13 = [v5 taskID];
    v14 = [NSPredicate predicateWithFormat:@"msgHandler.taskID == %@", v13];
    v15 = [v12 filteredArrayUsingPredicate:v14];

    if ([v15 count] == 1)
    {
      v16 = [v15 firstObject];
      v17 = [v16 msgHandler];
      v18 = [v17 group];
      dispatch_group_leave(v18);
    }

    else
    {
      v19 = +[SKBaseManager sharedManager];
      [v19 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&stru_100049850];

      v16 = sub_10000BFD0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v20 = [v5 taskID];
        v21 = [v15 count];
        *buf = 136315650;
        v23 = "[SKFilesystemCreator setupTaskUpdateHandlerWithClient:taskPairs:error:]_block_invoke_2";
        v24 = 2112;
        v25 = v20;
        v26 = 1024;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s: Task %@ completed, matching tasks: %d", buf, 0x1Cu);
      }
    }

    objc_sync_exit(v11);
  }
}

NSDictionary *__cdecl sub_10002795C(id a1)
{
  v4 = @"faultCode";
  v1 = sub_10000BF44("SKFilesystemMaintainer.m", 692);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100027A0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SKFilesystemCreator setupTaskUpdateHandlerWithClient:taskPairs:error:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: Failed setting task update handler: %@", &v6, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

Block_layout *sub_100028604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SKFilesystemCreator createWithVolumes:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Subscribed to progress", &v10, 0xCu);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = [*(a1 + 32) progress];
  [v8 addChild:*(*(*(a1 + 48) + 8) + 40) withPendingUnitCount:{0x64 / objc_msgSend(*(a1 + 40), "count")}];

  return &stru_1000498C0;
}

void sub_100028720(id a1)
{
  v1 = sub_10000BFD0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "[SKFilesystemCreator createWithVolumes:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s: Unsubscribed from progress.", &v2, 0xCu);
  }
}

void sub_1000287C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000BFD0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SKFilesystemCreator createWithVolumes:error:]_block_invoke";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Reached reply of task %@", &v14, 0x16u);
  }

  v8 = [*(a1 + 32) msgHandler];
  [v8 setTaskID:v5];

  v9 = sub_10000BFD0();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SKFilesystemCreator createWithVolumes:error:]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to format: %@", &v14, 0x16u);
    }

    v11 = [*(a1 + 32) msgHandler];
    [v11 completed:v6 replyHandler:&stru_100049928];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) getProgressURLKey];
      v14 = 136315394;
      v15 = "[SKFilesystemCreator createWithVolumes:error:]_block_invoke_2";
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Add subscriber for progress (%@)", &v14, 0x16u);
    }

    v11 = [*(a1 + 40) getProgressURLKey];
    v13 = [NSProgress addSubscriberForFileURL:v11 withPublishingHandler:*(a1 + 48)];
  }
}

void sub_1000289F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 progress];
    [v4 setLocalizedAdditionalDescription:v3];
  }
}

void sub_100028A60(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 progress];
    [v4 setLocalizedAdditionalDescription:v3];
  }
}

void sub_10002A0BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) childrenOperations];
  v3 = [v4 objectAtIndexedSubscript:*(a1 + 48)];
  [v2 _processNotificationWithDiskOperation:v3];
}

void sub_10002A4DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 notificationsCache];
  v3 = [v5 disksToProcess];
  v4 = [v3 objectAtIndexedSubscript:*(a1 + 40)];
  [v2 _processNotificationsWithDiskOperations:v4];
}

id sub_10002C220(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackBlock];
  v2[2](v2, 0);

  v3 = *(a1 + 32);

  return [v3 finished];
}

void sub_10002C684(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  [v3 removeObserver:*(a1 + 32) forKeyPath:_NSProgressRemoteLocalizedAdditionalDescriptionKey];
}

void sub_10002D358(uint64_t a1)
{
  v2 = sub_10000BFD0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SKLastPartitionResizer fsResize:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Cancelling APFS resize", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) resizablePart];
  v4 = [v3 diskIdentifier];
  [v4 UTF8String];
  APFSCancelContainerResize();
}

uint64_t _deleteVolumeGroup(void *a1, void *a2, uint64_t a3, NSObject **a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  [v10 UTF8String];
  v11 = [[NSUUID alloc] initWithUUIDBytes:a3];
  v32 = 0;
  Volumes = APFSContainerVolumeGroupGetVolumes();
  if (Volumes)
  {
    v13 = Volumes;
    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v35 = "OSStatus _deleteVolumeGroup(NSString *__strong, NSString *__strong, unsigned char *, NSMutableArray<NSNumber *> *__autoreleasing *, NSString *__autoreleasing *)";
      v36 = 2114;
      *v37 = v11;
      *&v37[8] = 1024;
      *&v37[10] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to get volumes in group %{public}@, res=%d", buf, 0x1Cu);
    }
  }

  else
  {
    v14 = v32;
    v15 = sub_10000BFD0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v35 = "OSStatus _deleteVolumeGroup(NSString *__strong, NSString *__strong, unsigned char *, NSMutableArray<NSNumber *> *__autoreleasing *, NSString *__autoreleasing *)";
      v36 = 1024;
      *v37 = [v32 count];
      *&v37[4] = 2114;
      *&v37[6] = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: There are %d volumes in group %{public}@", buf, 0x1Cu);
    }

    if ([v32 count]== 2)
    {
      v16 = APFSContainerVolumeGroupRemove();
      if (v16)
      {
        v13 = v16;
        v17 = sub_10000BFD0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v35 = "OSStatus _deleteVolumeGroup(NSString *__strong, NSString *__strong, unsigned char *, NSMutableArray<NSNumber *> *__autoreleasing *, NSString *__autoreleasing *)";
          v36 = 2114;
          *v37 = v11;
          *&v37[8] = 2114;
          *&v37[10] = v10;
          v38 = 1024;
          v39 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Failed to remove volume group %{public}@ from %{public}@, res = %d", buf, 0x26u);
        }
      }

      else
      {
        v27 = a4;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v32;
        v18 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(v14);
              }

              v22 = [[NSString alloc] initWithFormat:@"%@s%@", v10, *(*(&v28 + 1) + 8 * i)];
              if (([v22 isEqualToString:v9] & 1) == 0)
              {
                v23 = v22;
                *a5 = v22;

                goto LABEL_22;
              }
            }

            v19 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        v24 = sub_10000BFD0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v35 = "OSStatus _deleteVolumeGroup(NSString *__strong, NSString *__strong, unsigned char *, NSMutableArray<NSNumber *> *__autoreleasing *, NSString *__autoreleasing *)";
          v36 = 2114;
          *v37 = v11;
          *&v37[8] = 2114;
          *&v37[10] = v10;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Volume group %{public}@ removed from %{public}@", buf, 0x20u);
        }

        v25 = v14;
        v13 = 0;
        *v27 = v14;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

uint64_t SK_DM_APFSUtils_deleteVolume(void *a1)
{
  v1 = a1;
  v24[0] = 0;
  v24[1] = 0;
  v22 = 0;
  v23 = 0;
  v2 = [v1 substringFromIndex:4];
  v3 = [v2 componentsSeparatedByString:@"s"];

  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [NSString stringWithFormat:@"disk%@", v4];
  }

  v6 = [v1 UTF8String];
  v7 = [v5 UTF8String];
  v8 = 22;
  if (v6 && v7)
  {
    v9 = APFSGetVolumeGroupID();
    v10 = [[NSUUID alloc] initWithUUIDBytes:v24];
    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = "OSStatus SK_DM_APFSUtils_deleteVolume(NSString *__strong)";
      v16 = 2114;
      v17 = v1;
      v18 = 2114;
      v19 = v10;
      v20 = 1024;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Volume %{public}@, group %{public}@ (get volume group res = %d)", buf, 0x26u);
    }

    v8 = APFSVolumeDelete();
    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "OSStatus SK_DM_APFSUtils_deleteVolume(NSString *__strong)";
      v16 = 2114;
      v17 = v1;
      v18 = 1024;
      LODWORD(v19) = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Delete of APFS volume %{public}@ returned %d", buf, 0x1Cu);
    }
  }

  return v8;
}

void SK_DM_updateFileVaultProperties(void *a1, char a2)
{
  v3 = a1;
  +[SKDaemonManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002E154;
  v6[3] = &unk_1000499F0;
  v9 = a2;
  v8 = v7 = v3;
  v4 = v8;
  v5 = v3;
  [v4 dispatchToWorkThread:v6];
}

void sub_10002E154(uint64_t a1)
{
  v2 = sub_10000BFD0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 136315650;
    v38 = "void SK_DM_updateFileVaultProperties(NSString *__strong, BOOL)_block_invoke";
    v39 = 2114;
    v40 = v3;
    v41 = 1024;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Updating FileVault property of %{public}@ (and group members) to %d", buf, 0x1Cu);
  }

  v5 = [*(a1 + 40) _cachedDiskWithDiskIdentifier:*(a1 + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 container];
    if (v7)
    {
      v8 = [v6 apfsVolumeGroupUUID];
      v9 = objc_opt_new();
      v10 = v9;
      v26 = v7;
      if (v8)
      {
        v24 = v6;
        v25 = v5;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = [v7 volumes];
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * i);
              v17 = [v16 apfsVolumeGroupUUID];
              v18 = [v8 isEqual:v17];

              if (v18)
              {
                [v10 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v13);
        }

        v6 = v24;
        v5 = v25;
      }

      else
      {
        [v9 addObject:v6];
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v19 = v10;
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v27 + 1) + 8 * j) setDefaultEffaceable:(*(a1 + 48) & 1) == 0];
          }

          v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v21);
      }

      [*(a1 + 40) _disksChanged:v19];
      v7 = v26;
    }
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}