uint64_t receive_vfs_resolve_dir_with_audit_token(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (*a7 | a7[1] | a7[2] | a7[3])
  {
    v8 = a2;
    v9 = 1;
LABEL_3:
    make_nspace_handle_response(v8, 0, 0, v9);
    return 0;
  }

  v14 = _NSFCLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a6 + 20);
    *v20 = 67109891;
    *&v20[4] = v15;
    *&v20[8] = 2081;
    *&v20[10] = a5;
    *&v20[18] = 1024;
    *&v20[20] = a2;
    *&v20[24] = 2081;
    *&v20[26] = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received nspace IPC from %u for %{private}s - req: %d - subitem: %{private}s", v20, 0x22u);
  }

  if (!a5)
  {
    v8 = a2;
    v9 = 22;
    goto LABEL_3;
  }

  v16 = objc_autoreleasePoolPush();
  if (a3 == 0x4000)
  {
    v17 = [NSFileProviderKernelMaterializationInfo partialFolderMaterializationInfoWithOperation:0x4000 fileName:a4];
  }

  else
  {
    v17 = [NSFileProviderKernelMaterializationInfo kernelMaterializationInfoWithOperation:a3];
  }

  v18 = *(a6 + 16);
  *v20 = *a6;
  *&v20[16] = v18;
  handle_nspace_request_with_info(a2, v20, a5, v17);
  objc_autoreleasePoolPop(v16);
  return 0;
}

uint64_t make_nspace_handle_response(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = _NSFCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 67109120;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Made nspace response - req: %d", &v11, 8u);
  }

  if (a3)
  {
    v11 = a1;
    v12 = a4;
    v13 = a2;
    v14 = a3;
    v9 = 24;
  }

  else
  {
    v11 = a1;
    v12 = a4;
    if (a2)
    {
      v13 = a2;
      v9 = 16;
    }

    else
    {
      v9 = 8;
    }
  }

  return sysctlbyname("vfs.nspace.complete", 0, 0, &v11, v9);
}

void handle_nspace_request_with_info(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = [NSURL fileURLWithFileSystemRepresentation:a3 isDirectory:0 relativeToURL:0];
  if (!v8)
  {
    v13 = _NSFCLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      handle_nspace_request_with_info_cold_1(a3, v13, v14, v15, v16, v17, v18, v19);
    }

    v9 = 12;
    *(v24 + 6) = 12;
    goto LABEL_7;
  }

  v9 = *(v24 + 6);
  if (v9)
  {
LABEL_7:
    make_nspace_handle_response(a1, 0, 0, v9);
    goto LABEL_8;
  }

  v10 = mainArbiter;
  v11 = [NSNumber numberWithUnsignedInt:a1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __handle_nspace_request_with_info_block_invoke;
  v21[3] = &unk_1000041E0;
  v21[4] = &v23;
  v22 = a1;
  v12 = a2[1];
  v20[0] = *a2;
  v20[1] = v12;
  [v10 makeProviderMaterializeFileAtURL:v8 kernelInfo:a4 withRequestID:v11 fromProcess:v20 completionHandler:v21];
LABEL_8:
  _Block_object_dispose(&v23, 8);
}

void sub_100000D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t receive_vfs_resolve_file_with_audit_token(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (*a8 | a8[1] | a8[2] | a8[3])
  {
    v9 = a2;
    v10 = 1;
  }

  else
  {
    v16 = _NSFCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a7 + 20);
      *v22 = 67110147;
      *&v22[4] = v17;
      *&v22[8] = 2081;
      *&v22[10] = a6;
      *&v22[18] = 1024;
      *&v22[20] = a2;
      *&v22[24] = 2048;
      *&v22[26] = a4;
      v23 = 2048;
      v24 = a5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Received nspace IPC from %u for %{private}s - req: %d - offset: %lld, size: %lld", v22, 0x2Cu);
    }

    if (a6)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [NSFileProviderKernelMaterializationInfo fileMaterializationInfoWithOperation:a3 size:a5 offset:a4];
      v20 = *(a7 + 16);
      *v22 = *a7;
      *&v22[16] = v20;
      handle_nspace_request_with_info(a2, v22, a6, v19);
      objc_autoreleasePoolPop(v18);
      return 0;
    }

    v9 = a2;
    v10 = 22;
  }

  make_nspace_handle_response(v9, 0, 0, v10);
  return 0;
}

uint64_t receive_vfs_resolve_reparent_with_audit_token(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!(*a7 | a7[1] | a7[2] | a7[3]))
  {
    v12 = _NSFCLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a6 + 20);
      *buf = 67109891;
      *&buf[4] = v13;
      LOWORD(v41) = 2081;
      *(&v41 + 2) = a4;
      WORD5(v41) = 1024;
      HIDWORD(v41) = a2;
      LOWORD(v42[0]) = 2081;
      *(v42 + 2) = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Received nspace reparent IPC from %u for %{private}s - req: %d - destination %{private}s", buf, 0x22u);
    }

    if (!a4 || !a5)
    {
      make_nspace_handle_response(a2, 0, 0, 22);
      return 0;
    }

    v14 = objc_autoreleasePoolPush();
    *buf = 0;
    *&v41 = buf;
    *(&v41 + 1) = 0x2020000000;
    v42[0] = 0;
    v15 = [NSURL fileURLWithFileSystemRepresentation:a4 isDirectory:0 relativeToURL:0];
    v16 = [NSURL fileURLWithFileSystemRepresentation:a5 isDirectory:1 relativeToURL:0];
    if (v15)
    {
      v17 = v16;
      if (v16)
      {
        v18 = *(v41 + 24);
        if (!v18)
        {
          v19 = mainArbiter;
          v20 = [NSNumber numberWithUnsignedInt:a2];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = __receive_vfs_resolve_reparent_with_audit_token_block_invoke;
          v38[3] = &unk_100004158;
          v38[4] = buf;
          v39 = a2;
          v21 = *(a6 + 16);
          v37[0] = *a6;
          v37[1] = v21;
          [v19 resolveReparentRequestOfFileAtURL:v15 toDestinationDirectory:v17 withRequestID:v20 operation:a3 fromProcess:v37 completionHandler:v38];
LABEL_18:
          _Block_object_dispose(buf, 8);
          objc_autoreleasePoolPop(v14);
          return 0;
        }

LABEL_17:
        make_nspace_handle_response(a2, 0, 0, v18);
        goto LABEL_18;
      }

      v29 = _NSFCLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        handle_nspace_request_with_info_cold_1(a5, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    else
    {
      v22 = _NSFCLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        handle_nspace_request_with_info_cold_1(a4, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v18 = 12;
    *(v41 + 24) = 12;
    goto LABEL_17;
  }

  make_nspace_handle_response(a2, 0, 0, 1);
  return 0;
}

void sub_100001158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __receive_vfs_resolve_reparent_with_audit_token_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *(*(*(a1 + 32) + 8) + 24) = nspaceErrnoFromNSError(a4);
  }

  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 32) + 8) + 24);

  return make_nspace_handle_response(v7, a3, a2, v8);
}

uint64_t nspaceErrnoFromNSError(void *a1)
{
  v2 = [a1 code];
  v3 = [a1 domain];
  if (v2 > 0)
  {
    if (v2 != 1)
    {
      if (v2 == 3072 && ([v3 isEqualToString:NSCocoaErrorDomain] & 1) != 0)
      {
        return 89;
      }

      return 60;
    }

    if ([v3 isEqualToString:NSPOSIXErrorDomain])
    {
      return 1;
    }

    else
    {
      return 60;
    }
  }

  else
  {
    if (v2 != -1005)
    {
      if (v2 == -1000)
      {
        return 81;
      }

      return 60;
    }

    return 70;
  }
}

uint64_t receive_vfs_resolve_dir(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = _NSFCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v15 = 67109891;
    *&v15[4] = a3;
    *&v15[8] = 2081;
    *&v15[10] = a6;
    *&v15[18] = 1024;
    v16 = a2;
    LOWORD(v17[0]) = 2081;
    *(v17 + 2) = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received nspace IPC from %u for %{private}s - req: %d - subitem: %{private}s", v15, 0x22u);
  }

  if (a6)
  {
    v12 = objc_autoreleasePoolPush();
    if (a4 == 0x4000)
    {
      v13 = [NSFileProviderKernelMaterializationInfo partialFolderMaterializationInfoWithOperation:0x4000 fileName:a5];
    }

    else
    {
      v13 = [NSFileProviderKernelMaterializationInfo kernelMaterializationInfoWithOperation:a4];
    }

    memset(v15, 0, sizeof(v15));
    v16 = a3;
    v17[0] = 0;
    handle_nspace_request_with_info(a2, v15, a6, v13);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    make_nspace_handle_response(a2, 0, 0, 22);
  }

  return 0;
}

uint64_t receive_vfs_resolve_file(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = _NSFCLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v17 = 67110147;
    *&v17[4] = a3;
    *&v17[8] = 2081;
    *&v17[10] = a7;
    *&v17[18] = 1024;
    v18 = a2;
    *v19 = 2048;
    *&v19[2] = a5;
    v20 = 2048;
    v21 = a6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received nspace IPC from %u for %{private}s - req: %d - offset: %lld, size: %lld", v17, 0x2Cu);
  }

  if (a7)
  {
    memset(v17, 0, sizeof(v17));
    v14 = objc_autoreleasePoolPush();
    v15 = [NSFileProviderKernelMaterializationInfo fileMaterializationInfoWithOperation:a4 size:a6 offset:a5];
    v18 = a3;
    *v19 = 0;
    handle_nspace_request_with_info(a2, v17, a7, v15);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    make_nspace_handle_response(a2, 0, 0, 22);
  }

  return 0;
}

uint64_t receive_nspace_resolve_path(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = _NSFCLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v13 = 67109635;
    *&v13[4] = a3;
    *&v13[8] = 2081;
    *&v13[10] = a5;
    *&v13[18] = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received nspace IPC from %u for %{private}s - req: %d", v13, 0x18u);
  }

  if (a5)
  {
    memset(v13, 0, sizeof(v13));
    v10 = objc_autoreleasePoolPush();
    v11 = [NSFileProviderKernelMaterializationInfo kernelMaterializationInfoWithOperation:a4];
    v14 = a3;
    v15 = 0;
    handle_nspace_request_with_info(a2, v13, a5, v11);
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    make_nspace_handle_response(a2, 0, 0, 22);
  }

  return 0;
}

uint64_t receive_nspace_resolve_cancel(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received nspace cancel request - req: %d", v6, 8u);
  }

  [mainArbiter cancelMaterializationWithRequestID:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a2)}];
  objc_autoreleasePoolPop(v3);
  return 0;
}

void init_mig_server()
{
  v2 = 1;
  if (sysctlbyname("vfs.nspace.resolver", 0, 0, &v2, 4uLL))
  {
    v0 = _NSFCLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "filecoordinationd is unable to mark itself as an nspace resolver", v1, 2u);
    }
  }

  else
  {
    if (bootstrap_check_in(bootstrap_port, "com.apple.FileCoordination.kernel.ipc", &server_port))
    {
      init_mig_server_cold_1();
    }

    mig_queue = dispatch_queue_create("com.apple.FileCoordination.fault-mig", 0);
    mig_source = dispatch_source_create(&_dispatch_source_type_mach_recv, server_port, 0, mig_queue);
    dispatch_source_set_cancel_handler(mig_source, &__block_literal_global);
    dispatch_source_set_event_handler(mig_source, &__block_literal_global_8);
    dispatch_resume(mig_source);
  }
}

void __init_mig_server_block_invoke(id a1)
{
  if (mach_port_mod_refs(mach_task_self_, server_port, 1u, -1))
  {
    _os_assumes_log();
  }
}

void __init_mig_server_block_invoke_2(id a1)
{
  if (dispatch_mig_server())
  {
    _os_assumes_log();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  [NSError _setFileNameLocalizationEnabled:0];
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.FileCoordination"];
  [v3 _setQueue:&_dispatch_main_q];
  mainArbiter = [[NSFileAccessArbiter alloc] initWithQueue:&_dispatch_main_q isSubarbiter:0 listener:v3];
  [v3 setDelegate:mainArbiter];
  [v3 resume];
  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.ProgressReporting"];
  [v4 setDelegate:{objc_msgSend(objc_alloc(NSClassFromString(@"NSProgressRegistrar")), "initWithQueue:rootFileAccessNode:", &_dispatch_main_q, objc_msgSend(mainArbiter, "rootNode"))}];
  [v4 resume];
  init_mig_server();
  dispatch_main();
}

uint64_t __handle_nspace_request_with_info_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = nspaceErrnoFromNSError(a3);
  }

  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 32) + 8) + 24);

  return make_nspace_handle_response(v5, a2, 0, v6);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t vfs_nspace_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 867808) >= 0xFFFFFFF8)
  {
    return *(&receive_vfs_nspace_subsystem + 5 * (v1 - 867800) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *_Xnspace_handle(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, result[1] == 4132) && (result = memchr(result + 9, 0, 0x1000uLL)) != 0)
  {
    v4 = v3[3];
    v5 = v3[8];
    result = receive_nspace_handle();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t _Xnspace_resolve_cancel(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = receive_nspace_resolve_cancel(a1[3], a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *_Xnspace_resolve_path(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, result[1] == 8236) && (result = memchr(result + 11, 0, 0x2000uLL)) != 0)
  {
    result = receive_nspace_resolve_path(v3[3], v3[8], v3[9], v3[10], (v3 + 11));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t _Xvfs_resolve_file(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && *(a1 + 4) == 8252 && memchr((a1 + 60), 0, 0x2000uLL))
  {
    result = receive_vfs_resolve_file(*(a1 + 12), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 52), a1 + 60);
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xvfs_resolve_dir(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && a1[1] == 16428 && memchr(a1 + 11, 0, 0x2000uLL) && memchr(a1 + 2059, 0, 0x2000uLL))
  {
    result = receive_vfs_resolve_dir(a1[3], a1[8], a1[9], a1[10], (a1 + 11), (a1 + 2059));
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xvfs_resolve_file_with_audit_token(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && *(a1 + 4) == 8280 && memchr((a1 + 56), 0, 0x2000uLL))
  {
    if (*(a1 + 8280) || *(a1 + 8284) < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v5 = *(a1 + 12);
      v6 = *(a1 + 32);
      v7 = *(a1 + 36);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 8264);
      v13[0] = *(a1 + 8248);
      v13[1] = v10;
      v11 = *(a1 + 8316);
      v12[0] = *(a1 + 8300);
      v12[1] = v11;
      result = receive_vfs_resolve_file_with_audit_token(v5, v6, v7, v8, v9, a1 + 56, v13, v12);
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xvfs_resolve_dir_with_audit_token(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && *(a1 + 4) == 16456 && memchr((a1 + 40), 0, 0x2000uLL) && memchr((a1 + 8232), 0, 0x2000uLL))
  {
    if (*(a1 + 16456) || *(a1 + 16460) < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v5 = *(a1 + 12);
      v6 = *(a1 + 32);
      v7 = *(a1 + 36);
      v8 = *(a1 + 16440);
      v11[0] = *(a1 + 16424);
      v11[1] = v8;
      v9 = *(a1 + 16492);
      v10[0] = *(a1 + 16476);
      v10[1] = v9;
      result = receive_vfs_resolve_dir_with_audit_token(v5, v6, v7, a1 + 40, a1 + 8232, v11, v10);
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xvfs_resolve_reparent_with_audit_token(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && *(a1 + 4) == 16456 && memchr((a1 + 40), 0, 0x2000uLL) && memchr((a1 + 8232), 0, 0x2000uLL))
  {
    if (*(a1 + 16456) || *(a1 + 16460) < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v5 = *(a1 + 12);
      v6 = *(a1 + 32);
      v7 = *(a1 + 36);
      v8 = *(a1 + 16440);
      v11[0] = *(a1 + 16424);
      v11[1] = v8;
      v9 = *(a1 + 16492);
      v10[0] = *(a1 + 16476);
      v10[1] = v9;
      result = receive_vfs_resolve_reparent_with_audit_token(v5, v6, v7, a1 + 40, a1 + 8232, v11, v10);
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t vfs_nspace_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 867808) >= 0xFFFFFFF8 && (v5 = *(&receive_vfs_nspace_subsystem + 5 * (v4 - 867800) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void init_mig_server_cold_1()
{
  _os_assert_log();
  v0 = _os_crash();
  __break(1u);
  NSClassFromString(v0);
}