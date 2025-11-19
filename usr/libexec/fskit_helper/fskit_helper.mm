void start()
{
  v0 = objc_opt_new();
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.fskit.fskit_helper"];
  [v1 setDelegate:v0];
  v2 = fskit_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "FSKitHelper: listening", v5, 2u);
  }

  v3 = objc_opt_new();
  v4 = qword_1000085F8;
  qword_1000085F8 = v3;

  [v1 resume];
  dispatch_main();
}

void sub_1000010DC(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "FSKitHelper:message:processing:start", buf, 2u);
  }

  v4 = os_transaction_create();
  v5 = [*(a1 + 40) euid];
  v6 = [*(a1 + 40) egid];
  if (!v2 || (v7 = v6, (v8 = realpath_DARWIN_EXTSN(v2, buf)) == 0))
  {
    v10 = 2;
    goto LABEL_8;
  }

  v9 = v8;
  if (strncmp(v8, "/dev/rdisk", 0xAuLL))
  {
    v10 = 22;
LABEL_8:
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100001DD8();
    }

    goto LABEL_11;
  }

  v14 = fskit_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 64);
    v23 = 136315906;
    *v24 = v9;
    *&v24[8] = 1024;
    *&v24[10] = v15;
    v25 = 1024;
    v26 = v5;
    v27 = 1024;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "FSKitHelper:message:processing:open:%s:flags:%d:uid:%d:gid:%d", &v23, 0x1Eu);
  }

  *__error() = 0;
  v16 = (v5 | v7) != 0;
  if (!(v5 | v7) || !pthread_setugid_np(v5, v7))
  {
    goto LABEL_23;
  }

  v17 = fskit_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100001CCC(v5, v7, v17);
  }

  v10 = *__error();
  if (v10)
  {
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_23:
    v18 = open(v9, *(a1 + 64));
    v10 = *__error();
    if (!v16)
    {
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_28:
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100001D54();
    }

    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_25:
  if (v10)
  {
LABEL_11:
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v10 userInfo:0];
    (*(*(a1 + 56) + 16))();
    goto LABEL_12;
  }

LABEL_31:
  v20 = fskit_std_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 32);
    v23 = 67109378;
    *v24 = v18;
    *&v24[4] = 2114;
    *&v24[6] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FSKitHelper:creating resource:fd:%d:device:%{public}@", &v23, 0x12u);
  }

  v12 = [FSBlockDeviceResource resourceWithBSDName:*(a1 + 48) devicePath:*(a1 + 32) fileDescriptor:v18 writable:(*(a1 + 64) >> 1) & 1];
  (*(*(a1 + 56) + 16))();
  v22 = fskit_std_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = 67109120;
    *v24 = v18;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FSKitHelper:replied:closing:fd:%d", &v23, 8u);
  }

  close(v18);
LABEL_12:

  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FSKitHelper:message:processing:done", &v23, 2u);
  }
}

void sub_100001638(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) isRevoked];
  v4 = fskit_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000020DC(v2);
    }

    v6 = *(a1 + 40);
    v7 = fs_errorForPOSIXError();
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = *v2;
      v9 = [*v2 getResourceID];
      *v19 = 136315650;
      *&v19[4] = "[FSKitHelper wipeFS:replyHandler:]_block_invoke";
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:start:resource(%p):resourceID(%@)", v19, 0x20u);
    }

    *v19 = 0;
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100001EE4(v2, v10);
    }

    v11 = os_transaction_create();
    [*v2 fileDescriptor];
    [*v2 blockSize];
    v12 = wipefs_alloc();
    if (v12)
    {
      v13 = v12;
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100001F98(v13);
      }

      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13 userInfo:0];
    }

    else
    {
      v16 = wipefs_wipe();
      if (v16)
      {
        v17 = v16;
        v18 = fskit_std_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100002018(v17);
        }

        v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:0];
      }

      else
      {
        v15 = 0;
      }

      wipefs_free();

      v11 = fskit_std_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100002098(v11);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100001A44(uint64_t a1)
{
  v2 = fskit_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 getResourceID];
    v13 = 136315650;
    v14 = "[FSKitHelper revoke:replyHandler:]_block_invoke";
    v15 = 2048;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:start:resource(%p):resourceID(%@)", &v13, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5 && ([v5 devicePath], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(a1 + 32) devicePath];
    v8 = revoke([v7 UTF8String]);

    if (v8)
    {
      v9 = *__error();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 22;
  }

  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[FSKitHelper revoke:replyHandler:]_block_invoke";
    v15 = 1024;
    LODWORD(v16) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:reply(%d)", &v13, 0x12u);
  }

  v11 = *(a1 + 40);
  v12 = fs_errorForPOSIXError();
  (*(v11 + 16))(v11, v12);
}

void sub_100001CCC(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to setugid to (%d,%d)", v3, 0xEu);
}

void sub_100001D54()
{
  sub_100001C38();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FSKitHelper: %{public}s: error=%d\n", v2, 0x12u);
}

void sub_100001E4C(void *a1)
{
  v1 = [a1 BSDName];
  sub_100001C24();
  sub_100001C14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100001EE4(id *a1, NSObject *a2)
{
  v4 = [*a1 fileDescriptor];
  v5 = [*a1 blockSize];
  v6[0] = 67109376;
  v6[1] = v4;
  v7 = 2048;
  v8 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FSKitHelper:wipeFS:start:fd:%d:blockSize:%llu", v6, 0x12u);
}

void sub_100001F98(int a1)
{
  strerror(a1);
  sub_100001C38();
  sub_100001C14();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100002018(int a1)
{
  strerror(a1);
  sub_100001C38();
  sub_100001C14();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000020DC(id *a1)
{
  v1 = [*a1 BSDName];
  sub_100001C24();
  sub_100001C14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100002178(void *a1)
{
  v1 = [a1 BSDName];
  sub_100001C24();
  sub_100001C14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}