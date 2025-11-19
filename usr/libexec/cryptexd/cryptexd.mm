void sub_100002770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000036F4(_Unwind_Exception *a1)
{
  free(0);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void cryptex_path_map_append(void *a1, const void *a2, const void *a3)
{
  v8 = a1;
  v5 = CFGetTypeID(a2);
  if (v5 != CFStringGetTypeID())
  {
    cryptex_path_map_append_cold_1(&v9, v10);
  }

  v6 = CFGetTypeID(a3);
  if (v6 != CFStringGetTypeID())
  {
    cryptex_path_map_append_cold_2(&v9, v10);
  }

  v7 = [v8 dict];
  [v7 setObject:a3 forKeyedSubscript:a2];
}

void upgrade_cryptex_set_complete_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[UpgradeSequencer getSharedInstance];
  v7 = [NSString stringWithUTF8String:a1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __upgrade_cryptex_set_complete_callback_block_invoke;
  v8[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v8[4] = a3;
  v8[5] = a2;
  [v6 onUpgradeCompleteForCryptex:v7 withCompletion:v8];
}

void upgrade_lock_interface(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = +[UpgradeSequencer getSharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __upgrade_lock_interface_block_invoke;
  v7[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v7[4] = a3;
  v7[5] = a2;
  [v6 lockInterfaceForClient:v5 withCompletion:v7];
}

void upgrade_lock_resume()
{
  v1 = +[UpgradeSequencer getSharedInstance];
  v0 = [v1 lockAcquireQueue];
  dispatch_resume(v0);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t _img4_get_nonce_domain_from_index(unint64_t a1)
{
  if (a1 > 0xC || a1 - 1 > 9)
  {
    return 0;
  }

  else
  {
    return *(&off_100071650 + a1 - 1);
  }
}

unint64_t fs_symlink(uint64_t a1, const char *a2, char a3)
{
  v6 = +[NSFileManager defaultManager];
  v7 = [NSString stringWithCString:a1 encoding:4];
  v8 = [NSString stringWithCString:a2 encoding:4];
  v9 = [NSURL fileURLWithPath:v8];
  v10 = [v9 URLByDeletingLastPathComponent];
  if ((a3 & 2) != 0)
  {
    v33 = NSFilePosixPermissions;
    v34 = &off_100074F00;
    v12 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v28 = 0;
    v13 = [v6 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v12 error:&v28];
    v11 = v28;

    if ((v13 & 1) == 0)
    {
      v17 = [v11 code];
      v18 = *__error();
      v19 = _fs_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v24 = [v10 path];
        v25 = [v24 UTF8String];
        *buf = 136315394;
        v30 = v25;
        v31 = 1024;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to create dir at %s: %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((a3 & 4) != 0)
  {
    if ((faccessat(-2, a2, 4, 32) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v14 = *__error();
    if (v14 != 2)
    {
      if (v14)
      {
        v17 = *__error();
        v18 = *__error();
        v19 = _fs_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v30) = v17;
          v20 = "failed to access symlink: %{darwin.errno}d";
          goto LABEL_23;
        }

LABEL_24:

        *__error() = v18;
        v22 = v11;
        goto LABEL_25;
      }

      v15 = *__error();
      v16 = _fs_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "symlink exists, removing", buf, 2u);
      }

      *__error() = v15;
      if (unlink(a2))
      {
        v17 = *__error();
        v18 = *__error();
        v19 = _fs_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v30) = v17;
          v20 = "failed to unlink symlink: %{darwin.errno}d";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 8u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }
  }

  v27 = v11;
  v21 = [v6 createSymbolicLinkAtPath:v8 withDestinationPath:v7 error:&v27];
  v22 = v27;

  if ((v21 & 1) == 0)
  {
    v17 = [v22 code];
    v18 = *__error();
    v19 = _fs_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [v7 UTF8String];
      *buf = 136315394;
      v30 = v23;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to create symlink to %s: %{darwin.errno}d", buf, 0x12u);
    }

    v11 = v22;
    goto LABEL_24;
  }

  v17 = 0;
LABEL_25:

  return v17;
}

id _fs_log()
{
  if (_fs_log_onceToken != -1)
  {
    _fs_log_cold_1();
  }

  v1 = _fs_log_osl;

  return v1;
}

unint64_t fs_symlinkat(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  bzero(v15, 0x400uLL);
  bzero(__str, 0x400uLL);
  v7 = realpath_np();
  if (v7)
  {
    v8 = v7;
    v9 = *__error();
    v10 = _fs_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "realpath_np: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v9;
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s/%s", v15, a3);
    return fs_symlink(a1, __str, a4);
  }

  return v8;
}

void ___fs_log_block_invoke(id a1)
{
  _fs_log_osl = os_log_create("com.apple.libcryptex", "fs");

  _objc_release_x1();
}

uint64_t watchdog_available(void *a1)
{
  if (&_wd_optin_service_register_sync && &_wd_optin_service_unregister_sync && wd_optin_service_launchd_job_label && wd_optin_service_process_name && wd_optin_service_bundle_id && wd_optin_service_bootstrap_service_name && wd_optin_service_late_first_checkin && wd_optin_service_panic_on_first_timeout && wd_optin_service_capture_ddt_on_timeout)
  {
    if (!a1)
    {
      return 1;
    }

    Error = 0;
    goto LABEL_18;
  }

  v3 = watchdog_log();

  if (v3)
  {
    v4 = watchdog_log();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v5 = _os_log_send_and_compose_impl();
  }

  else
  {
    v5 = _os_log_send_and_compose_impl();
  }

  Error = createError("watchdog_available", "watchdog.m", 200, "com.apple.security.cryptex", 10, 0, v5);
  free(v5);
  if (a1)
  {
    if (Error)
    {
      v6 = CFRetain(Error);
LABEL_19:
      *a1 = v6;
      goto LABEL_20;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

LABEL_20:
  if (Error)
  {
    CFRelease(Error);
    return 0;
  }

  return 1;
}

id watchdog_log()
{
  if (watchdog_log_onceToken != -1)
  {
    watchdog_log_cold_1();
  }

  v1 = watchdog_log_log;

  return v1;
}

id watchdog_create_service_descriptions(void *a1, void *a2)
{
  v3 = a1;
  v43 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v4 = objc_opt_new();
  if ((watchdog_available(&v43) & 1) == 0)
  {
    v8 = 0;
    v9 = v38[5];
    v38[5] = v43;
LABEL_33:

    goto LABEL_34;
  }

  v5 = v3;
  v6 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = xpc_dictionary_get_value(v6, "Watchdog");
    v11 = v10;
    if (!v10 || ((v12 = v10, xpc_get_type(v12) == &_xpc_type_array) ? (v13 = v12) : (v13 = 0), v12, v13, v13))
    {
      v17 = v11;

      Error = 0;
      goto LABEL_23;
    }

    v19 = watchdog_log();

    if (v19)
    {
      v20 = watchdog_log();
      os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v21 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v21 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_copy_watchdog_array", "watchdog.m", 178, "com.apple.security.cryptex", 11, 0, v21);
    free(v21);
  }

  else
  {
    v14 = watchdog_log();

    if (v14)
    {
      v15 = watchdog_log();
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v16 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v16 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_copy_watchdog_array", "watchdog.m", 173, "com.apple.security.cryptex", 11, 0, v16);
    free(v16);
  }

  v11 = 0;
LABEL_23:

  v8 = v11;
  v22 = v38[5];
  v38[5] = Error;

  if (v38[5])
  {
    v23 = watchdog_log();

    if (v23)
    {
      v24 = watchdog_log();
      os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    v29 = createError("watchdog_create_service_descriptions", "watchdog.m", 227, "com.apple.security.cryptex", 11, v38[5], v25);
LABEL_32:
    v30 = v29;
    free(v25);
    v9 = v38[5];
    v38[5] = v30;
    goto LABEL_33;
  }

  if (!v8)
  {
    v38[5] = 0;
    v9 = watchdog_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No jobs to register with watchdog.", buf, 2u);
      v8 = 0;
    }

    goto LABEL_33;
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = __watchdog_create_service_descriptions_block_invoke;
  applier[3] = &unk_1000716C8;
  v36 = &v37;
  v35 = v4;
  v26 = xpc_array_apply(v8, applier);

  if (!v26)
  {
    v27 = watchdog_log();

    if (v27)
    {
      v28 = watchdog_log();
      os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v25 = _os_log_send_and_compose_impl();
    }

    v29 = createError("watchdog_create_service_descriptions", "watchdog.m", 254, "com.apple.security.cryptex", 11, v38[5], v25);
    goto LABEL_32;
  }

LABEL_34:
  v31 = v38;
  if (a2 && !v38[5])
  {
    *a2 = [v4 copy];
    v31 = v38;
  }

  v32 = v31[5];

  _Block_object_dispose(&v37, 8);
  return v32;
}

void sub_100007518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  free(v18);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __watchdog_create_service_descriptions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if ((watchdog_available(&v59) & 1) == 0)
  {
    v9 = 0;
    v10 = v59;
    goto LABEL_46;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v15 = watchdog_log();

    if (v15)
    {
      v16 = watchdog_log();
      os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      *buf = 0;
      v14 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 0;
      v14 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_create_service_description", "watchdog.m", 52, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_45;
  }

  string = _xpc_dictionary_try_get_string(v7, "Label", &v58);
  if (string)
  {
    v12 = watchdog_log();

    if (v12)
    {
      v13 = watchdog_log();
      os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      *buf = 136446466;
      *&buf[4] = "Label";
      *&buf[12] = 1024;
      *&buf[14] = string;
      v14 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 136446466;
      *&buf[4] = "Label";
      *&buf[12] = 1024;
      *&buf[14] = string;
      v14 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_create_service_description", "watchdog.m", 58, "com.apple.security.cryptex.posix", string, 0, v14);
LABEL_45:
    v10 = Error;
    free(v14);
    v9 = 0;
    goto LABEL_46;
  }

  v17 = _xpc_dictionary_try_get_string(v7, "ProcessName", &v57);
  if (v17)
  {
    v18 = watchdog_log();

    if (v18)
    {
      v19 = watchdog_log();
      os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      *buf = 136446466;
      *&buf[4] = "ProcessName";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      v14 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 136446466;
      *&buf[4] = "ProcessName";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      v14 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_create_service_description", "watchdog.m", 64, "com.apple.security.cryptex.posix", v17, 0, v14);
    goto LABEL_45;
  }

  v21 = _xpc_dictionary_try_get_string(v7, "CFBundleIdentifier", &v56);
  if (v21)
  {
    v22 = watchdog_log();

    if (v22)
    {
      v23 = watchdog_log();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      *buf = 136446466;
      *&buf[4] = "CFBundleIdentifier";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v14 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 136446466;
      *&buf[4] = "CFBundleIdentifier";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v14 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_create_service_description", "watchdog.m", 70, "com.apple.security.cryptex.posix", v21, 0, v14);
    goto LABEL_45;
  }

  v24 = _xpc_dictionary_try_get_string(v7, "WatchdogMachService", &v55);
  if (v24)
  {
    v25 = watchdog_log();

    if (v25)
    {
      v26 = watchdog_log();
      os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      *buf = 136446466;
      *&buf[4] = "WatchdogMachService";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v14 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 136446466;
      *&buf[4] = "WatchdogMachService";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v14 = _os_log_send_and_compose_impl();
    }

    Error = createError("_watchdog_create_service_description", "watchdog.m", 76, "com.apple.security.cryptex.posix", v24, 0, v14);
    goto LABEL_45;
  }

  if (_xpc_dictionary_try_get_BOOL(v7, "LateFirstCheckin", &v54 + 1))
  {
    HIBYTE(v54) = 0;
    v27 = *__error();
    v28 = watchdog_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "LateFirstCheckin";
      *&buf[12] = 1024;
      *&buf[14] = HIBYTE(v54);
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}s defaulted to %d", buf, 0x12u);
    }

    *__error() = v27;
  }

  if (_xpc_dictionary_try_get_BOOL(v7, "PanicOnFirstTimeout", &v53))
  {
    v53 = 0;
    v29 = *__error();
    v30 = watchdog_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "PanicOnFirstTimeout";
      *&buf[12] = 1024;
      *&buf[14] = v53;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%{public}s defaulted to %d", buf, 0x12u);
    }

    *__error() = v29;
  }

  if (_xpc_dictionary_try_get_BOOL(v7, "CaptureDdtOnTimeout", &v54))
  {
    LOBYTE(v54) = 0;
    v31 = *__error();
    v32 = watchdog_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "CaptureDdtOnTimeout";
      *&buf[12] = 1024;
      *&buf[14] = v54;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%{public}s defaulted to %d", buf, 0x12u);
    }

    *__error() = v31;
  }

  v60[0] = wd_optin_service_launchd_job_label;
  v52 = [NSString stringWithUTF8String:v58];
  *buf = v52;
  v60[1] = wd_optin_service_process_name;
  v51 = [NSString stringWithUTF8String:v57];
  *&buf[8] = v51;
  v60[2] = wd_optin_service_bundle_id;
  v33 = [NSString stringWithUTF8String:v56];
  *&buf[16] = v33;
  v60[3] = wd_optin_service_bootstrap_service_name;
  v34 = [NSString stringWithUTF8String:v55];
  v62 = v34;
  v60[4] = wd_optin_service_late_first_checkin;
  v35 = [NSNumber numberWithBool:HIBYTE(v54)];
  v63 = v35;
  v60[5] = wd_optin_service_panic_on_first_timeout;
  v36 = [NSNumber numberWithBool:v53];
  v64 = v36;
  v60[6] = wd_optin_service_capture_ddt_on_timeout;
  v37 = [NSNumber numberWithBool:v54];
  v65 = v37;
  v38 = [NSDictionary dictionaryWithObjects:buf forKeys:v60 count:7];
  v9 = [v38 copy];
  v39 = v9;

  v10 = 0;
LABEL_46:

  v40 = v9;
  v41 = v40;
  if (v10)
  {
    v42 = 1;
  }

  else
  {
    v42 = v40 == 0;
  }

  v43 = !v42;
  if (v42)
  {
    v44 = watchdog_log();

    if (v44)
    {
      v45 = watchdog_log();
      os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
      *buf = 134217984;
      *&buf[4] = a2;
      v46 = _os_log_send_and_compose_impl();
    }

    else
    {
      *buf = 134217984;
      *&buf[4] = a2;
      v46 = _os_log_send_and_compose_impl();
    }

    v47 = createError("watchdog_create_service_descriptions_block_invoke", "watchdog.m", 243, "com.apple.security.cryptex", 11, v10, v46);
    free(v46);
    v48 = *(*(a1 + 40) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;
  }

  else
  {
    [*(a1 + 32) addObject:v40];
  }

  return v43;
}

id watchdog_copy_service_description_labels(void *a1)
{
  v2 = objc_opt_new();
  v3 = watchdog_available(0);
  if (a1 && v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = a1;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * v8) objectForKeyedSubscript:{wd_optin_service_launchd_job_label, v12}];
          [v2 addObject:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v10 = [v2 copy];

  return v10;
}

CFErrorRef watchdog_process_service_descriptions(void *a1, void (*a2)(void), uint64_t a3)
{
  v14 = 0;
  v5 = a1;
  if (watchdog_available(&v14))
  {
    if ([v5 count])
    {
      v6 = 0;
      while (1)
      {
        v7 = [v5 objectAtIndexedSubscript:v6];
        v8 = a2();
        if (v8)
        {
          break;
        }

        if (++v6 >= [v5 count])
        {
          goto LABEL_6;
        }
      }

      v10 = watchdog_log();

      if (v10)
      {
        v11 = watchdog_log();
        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        v15 = 136446466;
        v16 = a3;
        v17 = 2048;
        v18 = v6;
        v12 = _os_log_send_and_compose_impl();
      }

      else
      {
        v15 = 136446466;
        v16 = a3;
        v17 = 2048;
        v18 = v6;
        v12 = _os_log_send_and_compose_impl();
      }

      Error = createError("watchdog_process_service_descriptions", "watchdog.m", 302, "com.apple.security.cryptex", 33, v8, v12);
      free(v12);
    }

    else
    {
LABEL_6:
      Error = 0;
    }
  }

  else
  {
    Error = v14;
  }

  return Error;
}

CFErrorRef _watchdog_bootstrap_service(void *a1)
{
  v1 = a1;
  v12 = 0;
  if (watchdog_available(&v12))
  {
    if (wd_optin_service_register_sync())
    {
      v2 = watchdog_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v1;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Registered job with watchdog: %{public}@", buf, 0xCu);
      }

      v3 = 0;
    }

    else
    {
      v4 = *__error();
      if (v4 == 45)
      {
        v5 = watchdog_log();

        if (v5)
        {
          v6 = watchdog_log();
          os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v7 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v7 = _os_log_send_and_compose_impl();
        }

        Error = createError("_watchdog_bootstrap_service", "watchdog.m", 130, "com.apple.security.cryptex", 10, 0, v7);
      }

      else
      {
        v8 = watchdog_log();

        if (v8)
        {
          v9 = watchdog_log();
          os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          *buf = 138543618;
          v14 = v1;
          v15 = 1024;
          v16 = v4;
          v7 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 138543618;
          v14 = v1;
          v15 = 1024;
          v16 = v4;
          v7 = _os_log_send_and_compose_impl();
        }

        Error = createError("_watchdog_bootstrap_service", "watchdog.m", 132, "com.apple.security.cryptex.posix", v4, 0, v7);
      }

      v3 = Error;
      free(v7);
    }
  }

  else
  {
    v3 = v12;
  }

  return v3;
}

CFErrorRef _watchdog_unbootstrap_service(void *a1)
{
  v1 = a1;
  v12 = 0;
  if (watchdog_available(&v12))
  {
    if (wd_optin_service_unregister_sync())
    {
      v2 = watchdog_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v1;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Unregistered job with watchdog: %{public}@", buf, 0xCu);
      }

      v3 = 0;
    }

    else
    {
      v4 = *__error();
      if (v4 == 45)
      {
        v5 = watchdog_log();

        if (v5)
        {
          v6 = watchdog_log();
          os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
          *buf = 0;
          v7 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 0;
          v7 = _os_log_send_and_compose_impl();
        }

        Error = createError("_watchdog_unbootstrap_service", "watchdog.m", 155, "com.apple.security.cryptex", 10, 0, v7);
      }

      else
      {
        v8 = watchdog_log();

        if (v8)
        {
          v9 = watchdog_log();
          os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          *buf = 138543618;
          v14 = v1;
          v15 = 1024;
          v16 = v4;
          v7 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 138543618;
          v14 = v1;
          v15 = 1024;
          v16 = v4;
          v7 = _os_log_send_and_compose_impl();
        }

        Error = createError("_watchdog_unbootstrap_service", "watchdog.m", 157, "com.apple.security.cryptex.posix", v4, 0, v7);
      }

      v3 = Error;
      free(v7);
    }
  }

  else
  {
    v3 = v12;
  }

  return v3;
}

void __watchdog_log_block_invoke(id a1)
{
  watchdog_log_log = os_log_create("com.apple.libcryptex", "watchdog");

  _objc_release_x1();
}

uint64_t aks_open_bag_for_uid_at_path(int a1, const char *a2, void *a3)
{
  v5 = a3;
  __nitems_4 = 0;
  __nitems = 0;
  if (access(a2, 4))
  {
    goto LABEL_2;
  }

  v8 = v5;
  v9 = fopen(a2, "rb");
  v10 = v9;
  if (v9)
  {
    if (fseek(v9, 0, 2))
    {
      v11 = *__error();
      v12 = *__error();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "fseek SEEK_END: %{darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      v23 = ftell(v10);
      __nitems = v23;
      if (v23 < 0)
      {
        v11 = *__error();
        v12 = *__error();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "ftell: %{darwin.errno}d", buf, 8u);
        }
      }

      else if (fseek(v10, 0, 0))
      {
        v11 = *__error();
        v12 = *__error();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "fseek SEEK_SET: %{darwin.errno}d", buf, 8u);
        }
      }

      else
      {
        v28 = v23 & 0x7FFFFFFF;
        if (_dispatch_is_multithreaded())
        {
          while (1)
          {
            v29 = malloc_type_malloc(v28, 0x5C008F58uLL);
            if (v29)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }
        }

        else
        {
          v29 = malloc_type_malloc(v28, 0x2F48DA65uLL);
          if (!v29)
          {
            v39 = 0u;
            v37 = 0u;
            v38 = 0u;
            memset(buf, 0, sizeof(buf));
            v31 = &_os_log_default;
            os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            v32 = __error();
            strerror(*v32);
            _os_log_send_and_compose_impl();

            v33 = _os_crash_msg();
            aks_open_bag_for_uid_at_path_cold_1(v33);
          }
        }

        __nitems_4 = v29;
        if (fread(v29, 1uLL, __nitems, v10) == __nitems)
        {
          v11 = 0;
          goto LABEL_11;
        }

        if (ferror(v10))
        {
          v11 = *__error();
        }

        else
        {
          v11 = 96;
        }

        v12 = *__error();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "fread %s: %{darwin.errno}d", buf, 0x12u);
        }
      }
    }

    *__error() = v12;
LABEL_11:
    if (fclose(v10) == -1 && *__error())
    {
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      v13 = _os_crash_msg();
      aks_open_bag_for_uid_at_path_cold_1(v13);
    }

    goto LABEL_21;
  }

  v11 = *__error();
  v15 = *__error();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to open %s for reading: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v15;
LABEL_21:

  if (v11)
  {
    v16 = *__error();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to read keybag from disk: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_24;
  }

  bag = aks_load_bag();
  v18 = bag;
  if (bag)
  {
    if (bag != -536363001)
    {
      v7 = *__error();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "aks_load_bag: %{mach.errno}x", buf, 8u);
      }

      goto LABEL_48;
    }

    v19 = *__error();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "aks_load_bag() failed with kAKSReturnBadDeviceKey, destroying the existing keybag", buf, 2u);
    }

    *__error() = v19;
    if (unlink(a2))
    {
      v11 = *__error();
      v16 = *__error();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "unlink(%s): %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_24;
    }

    free(__nitems_4);
    __nitems_4 = 0;
    __nitems = 0;
  }

  else if (__nitems_4)
  {
LABEL_66:
    v26 = aks_set_system();
    if (!v26)
    {
      v11 = 0;
      goto LABEL_50;
    }

    v27 = *__error();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = -1;
      *&buf[8] = 1024;
      *&buf[10] = a1;
      *&buf[14] = 1024;
      *&buf[16] = v26;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "aks_set_system kb_handle: %d uid: %d: %{mach.errno}x", buf, 0x14u);
    }

    *__error() = v27;
    goto LABEL_49;
  }

LABEL_2:
  v6 = aks_create_bag();
  if (v6)
  {
    v7 = *__error();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "aks_create_bag: %{mach.errno}x", buf, 8u);
    }

LABEL_48:
    *__error() = v7;
LABEL_49:
    v11 = 5;
    goto LABEL_50;
  }

  v14 = aks_save_bag();
  if (v14)
  {
    v7 = *__error();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "aks_save_bag: %{mach.errno}x", buf, 8u);
    }

    goto LABEL_48;
  }

  v20 = v5;
  v21 = fopen(a2, "wb");
  if (v21)
  {
    if (fwrite(__nitems_4, 1uLL, __nitems, v21) == __nitems)
    {
      if (!fflush(v21))
      {
        v11 = 0;
        goto LABEL_60;
      }

      v11 = *__error();
      v22 = *__error();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to write %s: %{darwin.errno}d", buf, 0x12u);
      }
    }

    else
    {
      v11 = *__error();
      v22 = *__error();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to write %s: %{darwin.errno}d", buf, 0x12u);
      }
    }

    *__error() = v22;
LABEL_60:
    if (fclose(v21) == -1 && *__error())
    {
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      v30 = _os_crash_msg();
      aks_open_bag_for_uid_at_path_cold_1(v30);
    }

    goto LABEL_62;
  }

  v11 = *__error();
  v25 = *__error();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to open %s for writing: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v25;
LABEL_62:

  if (!v11)
  {
    goto LABEL_66;
  }

  v16 = *__error();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to write keybag to disk: %{darwin.errno}d", buf, 8u);
  }

LABEL_24:
  *__error() = v16;
LABEL_50:
  free(__nitems_4);

  return v11;
}

void sub_1000096EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int *a13)
{
  __os_cleanup_fclose(&a13);
  free(a11);
  _Unwind_Resume(a1);
}

int *__os_cleanup_fclose(int **a1)
{
  result = *a1;
  if (result)
  {
    result = fclose(result);
    if (result == -1)
    {
      result = __error();
      if (*result)
      {
        __os_cleanup_fclose_cold_1(&v2, v3);
      }
    }
  }

  return result;
}

void _daemon_dealloc(uint64_t a1)
{
  dispatch_release(*(a1 + 80));
  free(*(a1 + 96));
  free(*(a1 + 104));
  free(*(a1 + 112));
  close_drop_np();
  close_drop_np();
  v2 = *(a1 + 272);
  if (v2)
  {
    os_release(v2);
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    os_release(v3);
  }

  os_release(*(a1 + 304));
  object_proto_destroy(a1 + 16);
}

int *daemon_init()
{
  v0 = daemon_create();
  bzero(buf, 0x400uLL);
  bufsize[0] = 1024;
  v1 = *_NSGetArgc();
  v2 = *_NSGetArgv();
  v59[0] = 0;
  if (_NSGetExecutablePath(buf, bufsize))
  {
    daemon_init_cold_1(&v61, v66, bufsize);
  }

  *(v0 + 48) = getprogname();
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v3 = strdup(buf);
      if (v3)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v3 = strdup(buf);
    if (!v3)
    {
      daemon_init_cold_2(buf);
    }
  }

  *(v0 + 96) = v3;
  *(v0 + 288) = *_NSGetEnviron();
  for (i = getopt_long(v1, v2, "r", &_daemon_opts, v59); i != -1; i = getopt_long(v1, v2, "r", &_daemon_opts, v59))
  {
    if (optind <= 0)
    {
      daemon_init_cold_4(&v61, v66);
    }

    switch(i)
    {
      case ':':
        v16 = v59[0];
        v17 = *(v0 + 16);
        v11 = *__error();
        v18 = *(v0 + 32);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = (&_daemon_opts)[4 * v16];
          *v66 = 136446466;
          v20 = "[anonymous]";
          if (v17)
          {
            v20 = v17;
          }

          *&v66[4] = v20;
          *&v66[12] = 2080;
          *&v66[14] = v19;
          v14 = v18;
          v15 = "%{public}s: missing argument for option: %s";
          goto LABEL_24;
        }

        break;
      case '?':
        v9 = v2[optind - 1];
        v10 = *(v0 + 16);
        v11 = *__error();
        v12 = *(v0 + 32);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v66 = 136446466;
          v13 = "[anonymous]";
          if (v10)
          {
            v13 = v10;
          }

          *&v66[4] = v13;
          *&v66[12] = 2080;
          *&v66[14] = v9;
          v14 = v12;
          v15 = "%{public}s: unknown option: %s";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, v66, 0x16u);
        }

        break;
      case 'r':
        v5 = *(v0 + 16);
        v6 = *__error();
        v7 = *(v0 + 32);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = "[anonymous]";
          if (v5)
          {
            v8 = v5;
          }

          *v66 = 136446210;
          *&v66[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: other side of exec", v66, 0xCu);
        }

        *__error() = v6;
        *(v0 + 40) |= 2uLL;
        continue;
      default:
        daemon_init_cold_3();
    }

    *__error() = v11;
  }

  bzero(buf, 0x400uLL);
  v21 = open("/var/db/", 1048832);
  if (v21 < 0)
  {
    daemon_init_cold_5(&v61, v66);
  }

  v22 = v21;
  v23 = open("/var/run/", 1048832);
  if (v23 < 0)
  {
    daemon_init_cold_6(&v61, v66);
  }

  v24 = v23;
  *(v0 + 88) = _daemon_init_state_directory(v0, v22);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v25 = strdup(buf);
      if (v25)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v25 = strdup(buf);
    if (!v25)
    {
      daemon_init_cold_2(buf);
    }
  }

  *(v0 + 104) = v25;
  *(v0 + 92) = _daemon_init_state_directory(v0, v24);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v26 = strdup(buf);
      if (v26)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v26 = strdup(buf);
    if (!v26)
    {
      daemon_init_cold_2(buf);
    }
  }

  *(v0 + 112) = v26;
  if (close(v24) == -1)
  {
    daemon_init_cold_13(v66, buf);
  }

  if (close(v22) == -1)
  {
    daemon_init_cold_13(v66, buf);
  }

  img4_chip_select_personalized_ap();
  if (img4_chip_instantiate())
  {
    daemon_init_cold_9(v66, buf);
  }

  *v59 = 0;
  *bufsize = 0;
  if (hdi_copy_mounted(bufsize, v59, *(v0 + 32)))
  {
    daemon_init_cold_10(v66, buf);
  }

  v27 = *(v0 + 16);
  v28 = *__error();
  v29 = *(v0 + 32);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = "[anonymous]";
    if (v27)
    {
      v30 = v27;
    }

    *buf = 136446466;
    v63 = v30;
    v64 = 2048;
    v65 = *v59;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}s: copied %lu mounts", buf, 0x16u);
  }

  *__error() = v28;
  if (*v59)
  {
    v31 = 0;
    do
    {
      v32 = (*bufsize + 3582 * v31);
      memset(v66, 0, 32);
      v33 = *(v0 + 16);
      v34 = *__error();
      v35 = *(v0 + 32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v36 = "[anonymous]";
        if (v33)
        {
          v36 = v33;
        }

        v63 = v36;
        v64 = 2080;
        v65 = v32;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%{public}s: potential forerunner: %s", buf, 0x16u);
      }

      *__error() = v34;
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v37 = strdup(v32);
          if (v37)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v37 = strdup(v32);
        if (!v37)
        {
          daemon_init_cold_2(v32);
        }
      }

      v38 = v37;
      v39 = cryptex_core_parse_hdiid();
      v40 = *(v0 + 16);
      v41 = *__error();
      v42 = *(v0 + 32);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
      if (v39)
      {
        if (v43)
        {
          *buf = 136446466;
          v44 = "[anonymous]";
          if (v40)
          {
            v44 = v40;
          }

          v63 = v44;
          v64 = 2080;
          v65 = v32;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%{public}s: not a forerunner: %s", buf, 0x16u);
        }

        *__error() = v41;
      }

      else
      {
        if (v43)
        {
          *buf = 136446466;
          v45 = "[anonymous]";
          if (v40)
          {
            v45 = v40;
          }

          v63 = v45;
          v64 = 2080;
          v65 = v32;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%{public}s: found forerunner: %s", buf, 0x16u);
        }

        *__error() = v41;
        v46 = malloc_type_calloc(1uLL, 0xD98uLL, 0x8709206FuLL);
        if (!v46)
        {
          daemon_init_cold_12(&v61, buf);
        }

        v47 = v46;
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcpy_chk();
        _sscandgst(v47 + 3335, v47 + 3383);
        *v47 = *(v0 + 296);
        *(v0 + 296) = v47;
      }

      free(v38);
      ++v31;
    }

    while (v31 < *v59);
  }

  free(*bufsize);
  v48 = *(v0 + 16);
  v49 = *__error();
  v50 = *(v0 + 32);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = "[anonymous]";
    if (v48)
    {
      v51 = v48;
    }

    v52 = *(v0 + 104);
    *buf = 136446466;
    v63 = v51;
    v64 = 2080;
    v65 = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "%{public}s: state dir = %s", buf, 0x16u);
  }

  *__error() = v49;
  v53 = *(v0 + 16);
  v54 = *__error();
  v55 = *(v0 + 32);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    v56 = "[anonymous]";
    if (v53)
    {
      v56 = v53;
    }

    v57 = *(v0 + 112);
    *buf = 136446466;
    v63 = v56;
    v64 = 2080;
    v65 = v57;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "%{public}s: run state dir = %s", buf, 0x16u);
  }

  result = __error();
  *result = v54;
  _daemon = v0;
  return result;
}

uint64_t daemon_create()
{
  if (_dispatch_is_multithreaded())
  {
    v0 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "init routine called after transition to multithreaded", v3, 2u);
    }

    *__error() = v0;
  }

  v1 = _daemon_alloc();
  *(v1 + 56) = __darwin_version_string[0];
  *(v1 + 64) = "com.apple.security.cryptexd";
  *(v1 + 72) = "com.apple.security.cryptexd";
  *(v1 + 80) = os_retain(*(_dg + 8));
  *(v1 + 304) = os_log_create("com.apple.libcryptex", "authinstall");
  *(v1 + 88) = -1;
  *(v1 + 328) = os_transaction_create();
  object_proto_init(v1 + 16, "com.apple.security.cryptexd", "daemon");
  return v1;
}

uint64_t daemon_post_multithreaded_hack(uint64_t a1)
{
  if ((*_dg & 1) == 0)
  {
    daemon_post_multithreaded_hack_cold_3();
  }

  AMAuthInstallLogSetHandler();
  v2 = event_server_copy_system();
  event_server_activate();
  v3 = *(a1 + 16);
  v4 = *__error();
  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s: Activated event server", &buf, 0xCu);
  }

  *__error() = v4;
  if (v2)
  {
    os_release(v2);
  }

  if (signal(15, 1) == -1)
  {
    daemon_post_multithreaded_hack_cold_2(&v15, &buf);
  }

  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(a1 + 80));
  dispatch_set_context(v7, a1);
  dispatch_source_set_event_handler_f(v7, _daemon_sigterm);
  *(a1 + 280) = v7;
  dispatch_activate(v7);
  sp = 0;
  if (bootstrap_check_in(bootstrap_port, *(a1 + 72), &sp))
  {
    daemon_post_multithreaded_hack_cold_1(&v15, &buf);
  }

  v8 = sp;
  *(a1 + 120) = sp;
  v9 = dispatch_source_create(&_dispatch_source_type_mach_recv, v8, 0, *(a1 + 80));
  dispatch_set_context(v9, a1);
  dispatch_source_set_event_handler_f(v9, _daemon_mach_recv);
  dispatch_source_set_cancel_handler_f(v9, _daemon_mach_cancel);
  *(a1 + 272) = v9;
  dispatch_activate(v9);
  v10 = dispatch_queue_create("DaemonHandler", &_dispatch_queue_attr_concurrent);
  *(a1 + 312) = v10;
  mach_service = xpc_connection_create_mach_service("com.apple.security.cryptex.xpc", v10, 1uLL);
  *(a1 + 320) = mach_service;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v18 = ___daemon_init_xpc_listener_block_invoke;
  v19 = &__block_descriptor_tmp;
  v20 = a1;
  xpc_connection_set_event_handler(mach_service, &buf);
  xpc_connection_activate(*(a1 + 320));
  v12 = *(a1 + 312);
  *(a1 + 336) = xpc_remote_connection_create_remote_service_listener();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v18 = ___daemon_init_remote_xpc_listener_block_invoke;
  v19 = &__block_descriptor_tmp_21;
  v20 = a1;
  xpc_remote_connection_set_event_handler();
  v13 = *(a1 + 336);
  return xpc_remote_connection_activate();
}

uint64_t _daemon_init_state_directory(uint64_t a1, int a2)
{
  if ((mkdirat(a2, *(a1 + 64), 0x1C5u) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v4 = *__error();
  if (v4)
  {
    v5 = v4 == 17;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    _daemon_init_state_directory_cold_3(&v9, v10);
  }

  v6 = openat(a2, *(a1 + 64), 1048832);
  if ((v6 & 0x80000000) != 0)
  {
    _daemon_init_state_directory_cold_1(&v9, v10);
  }

  v7 = v6;
  if (realpath_np())
  {
    _daemon_init_state_directory_cold_2(&v9, v10);
  }

  return v7;
}

void _daemon_authinstall_log(uint64_t a1, uint64_t a2)
{
  v3 = os_retain(_daemon);
  v4 = v3[38];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  os_release(v3);
}

void _daemon_sigterm(uint64_t a1)
{
  v2 = codex_copy_system();
  v3 = *(a1 + 16);
  v4 = *__error();
  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    v7 = 136446210;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s: received SIGTERM", &v7, 0xCu);
  }

  *__error() = v4;
  codex_barrier(v2, 0, _daemon_sigterm_continue);
  dispatch_source_cancel(*(a1 + 280));
  dispatch_release(*(a1 + 280));
  *(a1 + 280) = 0;
  if (v2)
  {
    os_release(v2);
  }
}

void _daemon_mach_recv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *__error();
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    v6 = *(a1 + 120);
    if (v2)
    {
      v5 = v2;
    }

    v8 = 136446466;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: ipc recv: port = %#x", &v8, 0x12u);
  }

  *__error() = v3;
  v7 = *(a1 + 120);
  sub_recv();
}

uint64_t _daemon_mach_cancel(NSObject *a1)
{
  dispatch_source_get_handle(a1);

  return _mach_right_recv_destruct();
}

void ___daemon_init_xpc_listener_block_invoke(uint64_t a1, _xpc_connection_s *object)
{
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v9 = *(*(a1 + 32) + 32);
    *v10 = _NSConcreteStackBlock;
    *&v10[8] = 0x40000000;
    *&v10[16] = ___daemon_setup_connection_mux_block_invoke;
    v11 = &__block_descriptor_tmp_19;
    v12 = v9;
    xpc_connection_set_event_handler(object, v10);
    xpc_connection_activate(object);
  }

  else
  {
    v4 = xpc_copy_description(object);
    v5 = *(*(a1 + 32) + 16);
    v6 = *__error();
    v7 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *v10 = 136446466;
      *&v10[4] = v8;
      *&v10[12] = 2080;
      *&v10[14] = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: Received unexpected object: %s", v10, 0x16u);
    }

    *__error() = v6;
    free(v4);
  }
}

void ___daemon_setup_connection_mux_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___daemon_setup_connection_mux_block_invoke_cold_2(object, v5);
    }
  }

  else
  {
    if (xpc_get_type(object) != &_xpc_type_dictionary)
    {
      return;
    }

    subsystem_from_msg = sub_get_subsystem_from_msg(object);
    if (subsystem_from_msg <= 4)
    {
      if (subsystem_from_msg == 1)
      {

        codex_sub_handle_xpc_request(object);
      }

      else
      {
        if (subsystem_from_msg != 2)
        {
LABEL_27:
          v6 = *(a1 + 32);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            ___daemon_setup_connection_mux_block_invoke_cold_1(v6);
          }

          return;
        }

        collation_sub_new_client(object);
      }
    }

    else
    {
      switch(subsystem_from_msg)
      {
        case 5:

          upgrade_sub_trampoline_block_client(object);
          break;
        case 8:

          mount_sub_handle_request(object);
          break;
        case 9:

          endpoint_lookup_sub_handle_xpc_request(object);
          return;
        default:
          goto LABEL_27;
      }
    }
  }
}

void ___daemon_init_remote_xpc_listener_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_remote_connection)
  {

    sub_remote_xpc_message_recv(object);
  }

  else
  {
    v4 = xpc_copy_description(object);
    v5 = *(*(a1 + 32) + 16);
    v6 = *__error();
    v7 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      v9 = 136446466;
      v10 = v8;
      v11 = 2080;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: Received unexpected object: %s", &v9, 0x16u);
    }

    *__error() = v6;
    free(v4);
  }
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_3(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

double OUTLINED_FUNCTION_4(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_7()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

double OUTLINED_FUNCTION_9()
{
  *v0 = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{
  v2 = *v0;

  return _os_crash_msg();
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = *v0;

  return _os_crash_msg();
}

uint64_t OUTLINED_FUNCTION_12()
{
  v2 = *v0;

  return _os_crash_msg();
}

size_t OUTLINED_FUNCTION_13(const char *__s)
{

  return strlen(__s);
}

char *_find_error(unsigned int a1)
{
  if (a1 < 0x1B)
  {
    v1 = 0;
    v2 = &_generic_errors;
    goto LABEL_7;
  }

  if (a1 - 3501 < 7)
  {
    v1 = -3501;
    v2 = &_http_errors;
    goto LABEL_7;
  }

  if (a1 - 5000 < 0xB)
  {
    v1 = -5000;
    v2 = &_zip_errors;
LABEL_7:
    v3 = &v2[32 * v1 + 32 * a1];
    if (*(v3 + 2) == a1)
    {
      return v3;
    }

    else
    {
      return &_unknown_error;
    }
  }

  switch(a1)
  {
    case 0x63u:
      return &_generic_error;
    case 0xDACu:
      return &_http_internal_error;
    case 0xC7Au:
      return &_tss_declined_error;
  }

  if (a1 - 3100 >= 0x356)
  {
    return &_unknown_error;
  }

  return &_tss_error;
}

void _AMAuthInstallSetCryptex1ApParamsFromHost(uint64_t a1, CFMutableDictionaryRef theDict)
{
  CFDictionaryRemoveValue(theDict, kAMAuthInstallTagCryptex1UseProductClass);
  _CFDictionarySetUInt32(theDict, kAMAuthInstallApParameterBoardID, *(a1 + 28));
  _CFDictionarySetUInt32(theDict, kAMAuthInstallApParameterChipID, *(a1 + 32));
  _CFDictionarySetUInt32(theDict, kAMAuthInstallApParameterSecurityDomain, *(a1 + 36));
  v4 = kAMAuthInstallApParameterProductionMode;
  v5 = *(a1 + 48);

  _CFDictionarySetBool(theDict, v4, v5);
}

CFErrorRef img4_chip_instance_to_xpc(uint64_t a1, void *a2)
{
  if (a1)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_uint64(empty, "img4_chip_omit", *(a1 + 16));
    xpc_dictionary_set_uint64(empty, "img4_chip_cepo", *(a1 + 24));
    xpc_dictionary_set_uint64(empty, "img4_chip_bord", *(a1 + 28));
    xpc_dictionary_set_uint64(empty, "img4_chip_chip", *(a1 + 32));
    xpc_dictionary_set_uint64(empty, "img4_chip_sdom", *(a1 + 36));
    xpc_dictionary_set_uint64(empty, "img4_chip_ecid", *(a1 + 40));
    xpc_dictionary_set_uint64(empty, "img4_chip_cpro", *(a1 + 48));
    xpc_dictionary_set_uint64(empty, "img4_chip_csec", *(a1 + 49));
    xpc_dictionary_set_uint64(empty, "img4_chip_epro", *(a1 + 50));
    xpc_dictionary_set_uint64(empty, "img4_chip_esec", *(a1 + 51));
    xpc_dictionary_set_uint64(empty, "img4_chip_iuou", *(a1 + 52));
    xpc_dictionary_set_uint64(empty, "img4_chip_rsch", *(a1 + 53));
    xpc_dictionary_set_uint64(empty, "img4_chip_euou", *(a1 + 54));
    xpc_dictionary_set_uint64(empty, "img4_chip_esdm", *(a1 + 56));
    xpc_dictionary_set_uint64(empty, "img4_chip_fpgt", *(a1 + 60));
    xpc_dictionary_set_uint64(empty, "img4_chip_fchp", *(a1 + 128));
    xpc_dictionary_set_uint64(empty, "img4_chip_type", *(a1 + 132));
    xpc_dictionary_set_uint64(empty, "img4_chip_styp", *(a1 + 136));
    xpc_dictionary_set_uint64(empty, "img4_chip_clas", *(a1 + 140));
    if (a2)
    {
      v5 = empty;
      Error = 0;
      *a2 = empty;
    }

    else
    {
      Error = 0;
    }
  }

  else
  {
    v7 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_to_xpc", "img4_xpc.m", 35, "com.apple.security.cryptex", 11, 0, v7);
    free(v7);
    empty = 0;
  }

  return Error;
}

CFErrorRef img4_chip_instance_from_xpc(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v43[0] = 0;
  *(v43 + 6) = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v42, 0, 19);
  if (!v3)
  {
    LOWORD(v35) = 0;
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 94, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v3, "img4_chip_omit", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_omit";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 98, "com.apple.security.cryptex", 11, 0, v5);
LABEL_23:
    v11 = Error;
    free(v5);
    goto LABEL_24;
  }

  v7 = v34;
  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_cepo", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_cepo";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 99, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v8 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_cepo";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 99, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_bord", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_bord";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 100, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v9 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_bord";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 100, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_chip", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_chip";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 101, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v10 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_chip";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 101, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_sdom", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_sdom";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 102, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_sdom";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 102, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v33 = v34;
  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_ecid", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_ecid";
    v5 = _os_log_send_and_compose_impl();
    Error = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 103, "com.apple.security.cryptex", 11, 0, v5);
    goto LABEL_23;
  }

  v13 = v34;
  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_cpro", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_cpro";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 104, "com.apple.security.cryptex", 11, 0, v14);
LABEL_79:
    v19 = v15;
    free(v14);
    v11 = v19;
    goto LABEL_24;
  }

  v16 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_cpro";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 104, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_csec", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_csec";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 105, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v17 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_csec";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 105, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_epro", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_epro";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 106, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v32 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_epro";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 106, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_esec", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_esec";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 107, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v31 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_esec";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 107, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_iuou", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_iuou";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 108, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v30 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_iuou";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 108, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_rsch", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_rsch";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 109, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v29 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_rsch";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 109, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_euou", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_euou";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 110, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v28 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_euou";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 110, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_esdm", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_esdm";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 111, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v27 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_esdm";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 111, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_fpgt", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_fpgt";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 112, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v26 = v34;
  if (v34 >= 2)
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_fpgt";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 112, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_fchp", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_fchp";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 113, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v25 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_fchp";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 113, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_type", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_type";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 114, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v24 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_type";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 114, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_styp", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_styp";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 115, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v23 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_styp";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 115, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v34 = 0;
  if (_xpc_dictionary_try_get_uint64(v4, "img4_chip_clas", &v34))
  {
    v35 = 136315138;
    v36 = "img4_chip_clas";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 116, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v18 = v34;
  if (HIDWORD(v34))
  {
    v35 = 134218242;
    v36 = v34;
    v37 = 2080;
    v38 = "img4_chip_clas";
    v14 = _os_log_send_and_compose_impl();
    v15 = createError("img4_chip_instance_from_xpc", "img4_xpc.m", 116, "com.apple.security.cryptex", 11, 0, v14);
    goto LABEL_79;
  }

  v20 = v39;
  *(a2 + 77) = v40;
  v21 = v42[0];
  *(a2 + 93) = v41;
  *(a2 + 109) = v21;
  *a2 = 6;
  *(a2 + 2) = v43[0];
  *(a2 + 8) = *(v43 + 6);
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 28) = v9;
  *(a2 + 32) = v10;
  *(a2 + 36) = v33;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16 & 1;
  *(a2 + 49) = v17 & 1;
  *(a2 + 50) = v32 & 1;
  *(a2 + 51) = v31 & 1;
  *(a2 + 52) = v30 & 1;
  *(a2 + 53) = v29 & 1;
  *(a2 + 54) = v28 & 1;
  *(a2 + 56) = v27;
  *(a2 + 60) = v26 & 1;
  v22 = *(v42 + 15);
  *(a2 + 61) = v20;
  *(a2 + 124) = v22;
  *(a2 + 128) = v25;
  *(a2 + 132) = v24;
  *(a2 + 136) = v23;
  *(a2 + 140) = v18;
  v11 = 0;
LABEL_24:

  return v11;
}

void _view_dealloc(uint64_t a1)
{
  close_drop_np();

  object_proto_destroy(a1 + 16);
}

uint64_t view_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _view_alloc();
  *(v5 + 40) = a3;
  *(v5 + 48) = a1;
  *(v5 + 56) = dup_np();
  object_proto_init(v5 + 16, "com.apple.security.cryptexd", *(a1 + 8));
  return v5;
}

char *view_iterate_resource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), char a5)
{
  v5 = *(a1 + 48);
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(v5 + 8 * v9 + 24);
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s/%s", v11, *(a2 + 16));
      v12 = *(a1 + 16);
      v13 = *__error();
      v14 = *(a1 + 32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v15 = "[anonymous]";
        if (v12)
        {
          v15 = v12;
        }

        v51 = v15;
        v52 = 2080;
        v53 = __str;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s: opening subpath: %s", buf, 0x16u);
      }

      *__error() = v13;
      v16 = openat(*(a1 + 56), __str, 0);
      if ((v16 & 0x80000000) == 0)
      {
        *__error() = 0;
      }

      v17 = *__error();
      if (v17 != 2)
      {
        break;
      }

LABEL_21:
      if ((v16 & 0x80000000) == 0)
      {
        if (a5)
        {
          resource = _view_create_resource(a1, a2, __str);
          v10 = a4(a1, resource, a3);
          if (resource[2])
          {
            v40 = resource[2];
          }

          else
          {
            v40 = "[anonymous]";
          }

          v41 = *__error();
          v42 = resource[4];
          if (v10)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v51 = v40;
              v52 = 2112;
              v53 = v10;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s: handle resource: %@", buf, 0x16u);
            }

            *__error() = v41;
            if ((a5 & 2) != 0)
            {
              CFRelease(v10);
              v10 = 0;
            }
          }

          else
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              v51 = v40;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%{public}s: handle resource [no error]", buf, 0xCu);
            }

            v10 = 0;
            *__error() = v41;
          }

          os_release(resource);
          v38 = 28;
LABEL_58:
          if (close(v16) == -1)
          {
            daemon_init_cold_13(v46, buf);
          }
        }

        else
        {
          v30 = fdopendir(v16);
          if (!v30)
          {
            view_iterate_resource_cold_3(v46, buf);
          }

          v31 = v30;
          v32 = readdir(v30);
          if (v32)
          {
            v33 = v32;
            do
            {
              bzero(buf, 0x400uLL);
              if (v33->d_name[0] != 46 || v33->d_name[1] && (v33->d_name[1] != 46 || v33->d_name[2]))
              {
                snprintf(buf, 0x400uLL, "%s/%s", __str, v33->d_name);
                v34 = _view_create_resource(a1, a2, buf);
                v10 = a4(a1, v34, a3);
                if (v34[2])
                {
                  v35 = v34[2];
                }

                else
                {
                  v35 = "[anonymous]";
                }

                v36 = *__error();
                v37 = v34[4];
                if (v10)
                {
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *v46 = 136446466;
                    v47 = v35;
                    v48 = 2112;
                    v49 = v10;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s: handle resource: %@", v46, 0x16u);
                  }

                  *__error() = v36;
                  if ((a5 & 2) == 0)
                  {
                    os_release(v34);
                    v38 = 28;
                    goto LABEL_61;
                  }

                  CFRelease(v10);
                }

                else
                {
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                  {
                    *v46 = 136446210;
                    v47 = v35;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}s: handle resource [no error]", v46, 0xCu);
                  }

                  *__error() = v36;
                }

                os_release(v34);
                v10 = 0;
              }

              v33 = readdir(v31);
            }

            while (v33);
          }

          v38 = 0;
LABEL_61:
          if (closedir(v31) == -1)
          {
            view_iterate_resource_cold_2(v46, buf);
          }
        }

        if ((v38 | 4) != 4)
        {
          return v10;
        }

        goto LABEL_63;
      }

      if (v16 != -1)
      {
        v38 = 4;
        goto LABEL_58;
      }

LABEL_63:
      ++v9;
      v5 = *(a1 + 48);
      if (v9 >= *(v5 + 16))
      {
        return v10;
      }
    }

    if (v17)
    {
      v26 = *__error();
      v27 = *(a1 + 16);
      v19 = *__error();
      v28 = *(a1 + 32);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v29 = "[anonymous]";
        if (v27)
        {
          v29 = v27;
        }

        v51 = v29;
        v52 = 2080;
        v53 = __str;
        v54 = 1024;
        v55 = v26;
        v22 = v28;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "%{public}s: failed to open subpath: %s: %{darwin.errno}d";
        v25 = 28;
        goto LABEL_19;
      }
    }

    else
    {
      v18 = *(a1 + 16);
      v19 = *__error();
      v20 = *(a1 + 32);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v21 = "[anonymous]";
        if (v18)
        {
          v21 = v18;
        }

        v51 = v21;
        v52 = 2080;
        v53 = __str;
        v22 = v20;
        v23 = OS_LOG_TYPE_DEBUG;
        v24 = "%{public}s: opened subpath: %s";
        v25 = 22;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v22, v23, v24, buf, v25);
      }
    }

    *__error() = v19;
    goto LABEL_21;
  }

  return 0;
}

uint64_t _view_create_resource(void *a1, uint64_t a2, const char *a3)
{
  v6 = a1[2];
  v7 = *__error();
  v8 = a1[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    v23 = 136446466;
    v24 = v9;
    v25 = 2080;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: resource: %s", &v23, 0x16u);
  }

  *__error() = v7;
  v10 = resource_create(a2, a1, a3, 0);
  v11 = resource_open(v10, 0);
  v12 = a1[2];
  v13 = *__error();
  v14 = a1[4];
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = "[anonymous]";
      v23 = 136446722;
      if (v12)
      {
        v15 = v12;
      }

      v24 = v15;
      v25 = 2080;
      v26 = a3;
      v27 = 1024;
      LODWORD(v28) = v11;
      v16 = "%{public}s: failed to open resource %s: %{darwin.errno}d";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 28;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, &v23, v19);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = "[anonymous]";
    if (v12)
    {
      v20 = v12;
    }

    v21 = *(a1[6] + 8);
    v23 = 136446722;
    v24 = v20;
    v25 = 2080;
    v26 = v21;
    v27 = 2080;
    v28 = a3;
    v16 = "%{public}s: calling out with %s resource: %s";
    v17 = v14;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 32;
    goto LABEL_14;
  }

  *__error() = v13;
  return v10;
}

void endpoint_lookup_sub_handle_xpc_request(void *a1)
{
  v1 = a1;
  v2 = xpc_copy_description(v1);
  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v1, "ENDPOINT_INDEX");
    if (uint64 == 1)
    {
      v6 = *__error();
      v7 = _eplu_sub_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Returning endpoint to inventory", buf, 2u);
      }

      *__error() = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __endpoint_lookup_sub_handle_xpc_request_block_invoke;
      v10[3] = &unk_100071EB0;
      v11 = v1;
      inventory_xpc_create_endpoint(v10);
    }

    else
    {
      v8 = *__error();
      v9 = _eplu_sub_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v13 = uint64;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid endpoint index (%llu)", buf, 0xCu);
      }

      *__error() = v8;
    }
  }

  else
  {
    v3 = *__error();
    v4 = _eplu_sub_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unexpected message: %{public}s", buf, 0xCu);
    }

    *__error() = v3;
  }

  free(v2);
}

id _eplu_sub_log()
{
  if (_eplu_sub_log_onceToken != -1)
  {
    _eplu_sub_log_cold_1();
  }

  v1 = _eplu_sub_log_logHandle;

  return v1;
}

void __endpoint_lookup_sub_handle_xpc_request_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  reply = xpc_dictionary_create_reply(v2);
  xpc_dictionary_set_value(reply, "ENDPOINT", v3);

  xpc_dictionary_send_reply();
}

void ___eplu_sub_log_block_invoke(id a1)
{
  _eplu_sub_log_logHandle = os_log_create("com.apple.libcryptex", "endpoint_lookup_sub");

  _objc_release_x1();
}

uint64_t _CFCreateAssertImpl(uint64_t result)
{
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v1, v2);
  }

  return result;
}

char *_CFStringCopyUTF8String(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding <= -2)
  {
    _CFStringCopyUTF8String_cold_1();
  }

  v4 = MaximumSizeForEncoding;
  v5 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x55514AAEuLL);
  if (v5)
  {
    v6 = v5;
    CString = CFStringGetCString(a1, v5, v4 + 1, 0x8000100u);
    if (CString)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (CString)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  free(v5);
  return v8;
}

unint64_t _CFNumberGetUInt32(const __CFNumber *a1)
{
  valuePtr = -1;
  if (!CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
  {
    _CFNumberGetUInt32_cold_2();
  }

  if (HIDWORD(valuePtr))
  {
    _CFNumberGetUInt32_cold_1(&v2, v4);
  }

  return valuePtr;
}

char *_CFStringGetUTF8String(const __CFString *a1, char *a2, CFIndex a3)
{
  if (a3 < 0)
  {
    _CFStringGetUTF8String_cold_1();
  }

  if (CFStringGetCString(a1, a2, a3, 0x8000100u))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t _CFURLCreateFromFileDescriptor(uint64_t a1, CFURLRef *a2)
{
  bzero(cStr, 0x400uLL);
  v3 = realpath_np();
  if (!v3)
  {
    v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    _CFCreateAssertImpl(v4);
    v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
    _CFCreateAssertImpl(v5);
    *a2 = v5;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v3;
}

CFMutableDictionaryRef _CFDictionaryCreateMutableForCFTypes()
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  _CFCreateAssertImpl(Mutable);
  return Mutable;
}

void _CFDictionarySetBool(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetUInt32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  _CFCreateAssertImpl(v5);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void _CFDictionarySetString(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  _CFCreateAssertImpl(v5);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  _CFCreateAssertImpl(Mutable);
  CFDictionarySetValue(Mutable, kCFErrorLocalizedDescriptionKey, v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, kCFErrorUnderlyingErrorKey, a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_100071EF8;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          v7 = (*(a2 + 16))(a2, v6);
          v8 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v8)
          {
            return;
          }

          Value = CFDictionaryGetValue(v8, kCFErrorUnderlyingErrorKey);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v8);
          if (((v6 != 0) & v7) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v8;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

CFIndex _CFErrorGetTopLevelPosixError(const void *a1)
{
  Code = a1;
  if (a1)
  {
    v2 = _CFErrorCopyTopLevelErrorWithDomain(a1, @"com.apple.security.cryptex.posix");
    v3 = v2;
    if (v2)
    {
      Domain = CFErrorGetDomain(v2);
      if (CFEqual(Domain, @"com.apple.security.cryptex.posix"))
      {
        Code = CFErrorGetCode(v3);
        goto LABEL_10;
      }
    }

    v5 = CFErrorGetDomain(Code);
    if (CFEqual(v5, @"com.apple.security.cryptex"))
    {
      v6 = CFErrorGetCode(Code);
      if (v6 <= 0x26)
      {
        Code = dword_100059178[v6 & 0x3F];
        if (!v3)
        {
          return Code;
        }

        goto LABEL_10;
      }
    }

    Code = 0xFFFFFFFFLL;
    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return Code;
}

uint64_t _CFErrorHasDomainAndCode(const void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFErrorGetTypeID();
    v8 = 0;
    if (a2 && v6 == TypeID)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = ___CFErrorHasDomainAndCode_block_invoke;
      v10[3] = &unk_100071F20;
      v10[5] = a2;
      v10[6] = a3;
      v10[4] = &v11;
      _CFErrorIterUnderlying(a1, v10);
      v8 = *(v12 + 24);
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

double OUTLINED_FUNCTION_1_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return _os_log_send_and_compose_impl();
}

void inventory_xpc_init()
{
  v0 = [_TtC8cryptexd12InventoryXPC alloc];
  if (inventory_xpc_queue_onceToken != -1)
  {
    inventory_xpc_init_cold_1();
  }

  v6 = 0;
  v1 = inventory_xpc_queue_queue;
  v2 = [(InventoryXPC *)v0 initWithQueue:v1 error:&v6];
  v3 = v6;
  v4 = inventoryXPC;
  inventoryXPC = v2;

  if (v3)
  {
    v5 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create Inventory XPC server: %@", buf, 0xCu);
    }

    *__error() = v5;
  }

  else
  {
    [inventoryXPC startWithCompletionHandler:&__block_literal_global_3];
  }
}

void __inventory_xpc_init_block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to start Inventory XPC server: %@", &v4, 0xCu);
    }

    *__error() = v3;
  }
}

void inventory_xpc_create_endpoint(void *a1)
{
  v1 = a1;
  v2 = inventoryXPC;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __inventory_xpc_create_endpoint_block_invoke;
  v4[3] = &unk_100071F88;
  v5 = v1;
  v3 = v1;
  [v2 createEndpointWithCompletionHandler:v4];
}

void __inventory_xpc_create_endpoint_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get Inventory XPC endpoint: %@", &v8, 0xCu);
    }

    *__error() = v7;
  }

  (*(*(a1 + 32) + 16))();
}

void __inventory_xpc_queue_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("inventory-server", v3);
  v2 = inventory_xpc_queue_queue;
  inventory_xpc_queue_queue = v1;
}

void _session_uncork_launchd(void *a1)
{
  v2 = [a1 cs];
  uid = cryptex_session_core_get_uid();

  v4 = launchd_session_uncork(uid);
  if (v4)
  {
    [a1 setError:v4];
    v5 = *__error();
    v6 = [a1 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = a1;
      v12 = 1024;
      v13 = [a1 error];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to uncork session %@: %{darwin.errno}d", &v10, 0x12u);
    }

    *__error() = v5;
    v7 = a1;
    v8 = 32;
  }

  else
  {
    v7 = a1;
    v8 = 4;
  }

  [v7 sessionEventNotify:v8];
  v9 = [a1 session_work_group];
  dispatch_group_leave(v9);
}

void _session_unbootstrap_codex_callback(void *a1, void *a2, const void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if (!a3 || (TopLevelPosixError = _CFErrorGetTopLevelPosixError(a3), !TopLevelPosixError))
  {
LABEL_7:
    codex_uninstall(v7, v8, a4, _session_uninstall_codex_callback);
    goto LABEL_11;
  }

  v10 = TopLevelPosixError;
  if (TopLevelPosixError == 16)
  {
    v11 = *__error();
    v12 = [a4 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109376;
      v17 = 16;
      v18 = 1024;
      v19 = 16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unbootstrap quire failed with error code %d, ignoring: %{darwin.errno}d", &v16, 0xEu);
    }

    *__error() = v11;
    goto LABEL_7;
  }

  v13 = *__error();
  v14 = [a4 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 67109120;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to unbootstrap quire: %{darwin.errno}d", &v16, 8u);
  }

  *__error() = v13;
  [a4 setError:v10];
  [a4 sessionEventNotify:32];
  v15 = [a4 session_work_group];
  dispatch_group_leave(v15);

LABEL_11:
}

void sub_10000FBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, unsigned int a13, unsigned int a14, unsigned int a15, unsigned int a16)
{
  __os_cleanup_close(&a12);
  __os_cleanup_close(&a13);
  __os_cleanup_close(&a14);
  __os_cleanup_close(&a15);
  __os_cleanup_close(&a16);
  _Unwind_Resume(a1);
}

uint64_t __os_cleanup_close(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      __os_cleanup_close_cold_1(&v2, v3);
    }
  }

  return result;
}

void _session_install_codex_callback(void *a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v26 = a4;
  v9 = *(a4 + 40);
  if (a3 && (TopLevelPosixError = _CFErrorGetTopLevelPosixError(a3), TopLevelPosixError))
  {
    v11 = TopLevelPosixError;
    v12 = *__error();
    v13 = [v9 log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v28) = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "exiting session codex install: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    [v9 setError:v11];
    v14 = [v9 session_work_group];
    dispatch_group_leave(v14);

    pipeline_start_state_destroy(&v26);
  }

  else if (*(a4 + 8))
  {
    v15 = *__error();
    v16 = [v9 log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a4 + 8);
      *buf = 67109120;
      LODWORD(v28) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "_session_install_codex_callback context error: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v15;
    [v9 setError:*(a4 + 8)];
  }

  else
  {
    if (v8)
    {
      v18 = [v9 cs];
      uid = cryptex_session_core_get_uid();

      v20 = [v9 cs];
      v21 = cryptex_session_core_get_overrides();

      v22 = [v9 cs];
      v23 = cryptex_session_core_copy_name();
      quire_apply_overrides(v8, uid, v21, v23);

      v24 = [v9 log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v9;
        v29 = 2048;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: Saving the quire %p", buf, 0x16u);
      }

      v25 = [v9 quire_array];
      [v25 addObject:v8];
    }

    codex_bootstrap(v7, v8, a4, _session_bootstrap_codex_callback);
  }
}

void sub_1000110E4(_Unwind_Exception *a1)
{
  free(0);
  free(v1);
  _Unwind_Resume(a1);
}

uint64_t session_list_foreach(void *a1)
{
  v1 = a1;
  v2 = +[CryptexSessionList sharedList];
  pthread_rwlock_rdlock((v2 + 8));
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 list];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      v9 = [v8 log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        session_list_foreach_cold_1(v17, v8, &v18, v9);
      }

      v10 = [v8 cs];
      v11 = v1[2](v1, v10);

      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  pthread_rwlock_unlock((v2 + 8));
  return v11;
}

uint64_t session_list_elem_add(void *a1)
{
  v1 = a1;
  v2 = [[CryptexSession alloc] initWithCore:v1];

  if (v2)
  {
    [(CryptexSession *)v2 setupHandler];
    v3 = +[CryptexSessionList sharedList];
    [v3 addCryptexSession:v2];

    v4 = [(CryptexSession *)v2 activate];
  }

  else
  {
    v4 = 22;
  }

  return v4;
}

void session_list_shutdown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[CryptexSessionList sharedList];
  [v6 shutdownSession:a1 reason:a2 exitCode:a3];
}

id session_list_get_queue(uint64_t a1)
{
  v2 = +[CryptexSessionList sharedList];
  v3 = [v2 findCryptexSession:a1];

  if (v3)
  {
    v4 = [v3 getDispatchQueue];
  }

  else
  {
    v4 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
  }

  return v4;
}

void _session_bootstrap_codex_callback(void *a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v15 = a4;
  v9 = *(a4 + 40);
  if (a3)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(a3);
    if (TopLevelPosixError)
    {
      v11 = TopLevelPosixError;
      v12 = *__error();
      v13 = [v9 log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "exiting session quire bootstrap: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      [v9 setError:v11];
    }
  }

  v14 = [v9 session_work_group];
  dispatch_group_leave(v14);

  pipeline_start_state_destroy(&v15);
}

void _session_uninstall_codex_callback(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if (a3)
  {
    v9 = *__error();
    v10 = [a4 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to unmount quire: %@", &v20, 0xCu);
    }

    *__error() = v9;
    [a4 setError:_CFErrorGetTopLevelPosixError(a3)];
  }

  else
  {
    v11 = [a4 quire_array];
    v12 = [v11 containsObject:v8];

    if (v12)
    {
      v13 = [a4 quire_array];
      [v13 removeObject:v8];
    }

    else
    {
      [a4 setError:2];
      v14 = *__error();
      v15 = [a4 log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = 134218240;
        v21 = v8;
        v22 = 1024;
        v23 = [a4 error];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Quire object not found %p: %{darwin.errno}d", &v20, 0x12u);
      }

      *__error() = v14;
    }
  }

  if ([a4 error])
  {
    [a4 sessionEventNotify:32];
  }

  else
  {
    v16 = [a4 quire_array];
    v17 = [v16 count];

    if (!v17)
    {
      v18 = [a4 log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "taking down the session", &v20, 2u);
      }

      [a4 sessionEventNotify:16];
      [a4 cancelPeerConnections];
    }
  }

  v19 = [a4 session_work_group];
  dispatch_group_leave(v19);
}

void *python_get_site_packages_path()
{
  if (python_get_site_packages_path_onceToken != -1)
  {
    python_get_site_packages_path_cold_1();
  }

  return &python_get_site_packages_path_site_packages_path;
}

void launch_cryptex_terminate_with_timeout(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v6 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __launch_cryptex_terminate_with_timeout_block_invoke;
  v15 = &unk_1000720A8;
  v17 = v18;
  v16 = a4;
  launch_cryptex_terminate();
  v7 = dispatch_time(0, 1000000000 * a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __launch_cryptex_terminate_with_timeout_block_invoke_2;
  v9[3] = &unk_1000720D0;
  v10 = v16;
  v11 = v18;
  v8 = v16;
  dispatch_after(v7, v6, v9);

  _Block_object_dispose(v18, 8);
}

void sub_10001208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __launch_cryptex_terminate_with_timeout_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __launch_cryptex_terminate_with_timeout_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t path_is_parent(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v3 = [NSString stringWithUTF8String:a1];
  v4 = [v3 stringByResolvingSymlinksInPath];
  v5 = [v4 pathComponents];

  v6 = [NSString stringWithUTF8String:a2];
  v7 = [v6 stringByResolvingSymlinksInPath];
  v8 = [v7 pathComponents];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __path_is_parent_block_invoke;
  v12[3] = &unk_1000720F8;
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:v12];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

void sub_100012248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __path_is_parent_block_invoke(uint64_t a1, void *a2, char *a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    if (([v8 isEqual:v7] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

uint64_t apfs_volume_create(uint64_t a1, char *a2, int a3, _WORD *a4, NSObject *a5)
{
  MutableForCFTypes = _CFDictionaryCreateMutableForCFTypes();
  _CFDictionarySetString(MutableForCFTypes, kAPFSVolumeNameKey, a2);
  _CFDictionarySetUInt32(MutableForCFTypes, kAPFSVolumeRoleKey, a3);
  v10 = APFSVolumeCreate();
  if (v10)
  {
    v11 = v10;
    v12 = *__error();
    if (!os_log_type_enabled(a5, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      *__error() = v12;
      v16 = 22;
      goto LABEL_6;
    }

    v19 = 136315394;
    v20 = a2;
    v21 = 1024;
    v22 = v11;
    v13 = "failed to create volume %s: 0x%x";
    v14 = a5;
    v15 = 18;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, &v19, v15);
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(MutableForCFTypes, kAPFSVolumeFSIndexKey);
  if (!Value)
  {
    v12 = *__error();
    if (!os_log_type_enabled(a5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v19 = 136315138;
    v20 = a2;
    v13 = "failed to get volume %s index key";
    v14 = a5;
    v15 = 12;
    goto LABEL_4;
  }

  v16 = 0;
  if (a4)
  {
    *a4 = _CFNumberGetUInt32(Value) + 1;
  }

LABEL_6:
  if (MutableForCFTypes)
  {
    CFRelease(MutableForCFTypes);
  }

  return v16;
}

uint64_t apfs_volume_mount(char *a1, uint64_t a2, NSObject *a3)
{
  v13 = -1;
  v14 = -1;
  __argv[0] = "/sbin/mount_apfs";
  v22 = unk_100072130;
  __argv[1] = a1;
  v21 = a2;
  v4 = posix_spawn(&v14, "/sbin/mount_apfs", 0, 0, __argv, 0);
  if (v4)
  {
    v5 = v4;
    v6 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v16 = __argv[0];
      *&v16[8] = 1024;
      v17 = v5;
      v7 = "failed to posix_spawn %s: %{darwin.errno}d";
LABEL_4:
      v8 = a3;
      v9 = 18;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v10 = waitpid(v14, &v13, 0);
  if (v10 != v14)
  {
    v11 = v10;
    v5 = *__error();
    v6 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v16 = v11;
      *&v16[4] = 1024;
      *&v16[6] = v5;
      v7 = "unexpected return code for waitpid: %d: %{darwin.errno}d";
      v8 = a3;
      v9 = 14;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ((v13 & 0x7F) != 0)
  {
    if ((v13 & 0x7F) == 0x7F)
    {
      v6 = *__error();
      v5 = 35;
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v16 = __argv[0];
        *&v16[8] = 1024;
        v17 = 35;
        v7 = "%s exited with an unknown state: %{darwin.errno}d";
        goto LABEL_4;
      }

LABEL_19:
      *__error() = v6;
      return v5;
    }

    v6 = *__error();
    v5 = 4;
    if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136315650;
    *v16 = __argv[0];
    *&v16[8] = 1024;
    v17 = v13 & 0x7F;
    v18 = 1024;
    v19 = 4;
    v7 = "%s exited with signal: %d: %{darwin.errno}d";
LABEL_17:
    v8 = a3;
    v9 = 24;
    goto LABEL_18;
  }

  v5 = BYTE1(v13);
  if (BYTE1(v13))
  {
    v6 = *__error();
    if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136315650;
    *v16 = __argv[0];
    *&v16[8] = 1024;
    v17 = BYTE1(v13);
    v18 = 1024;
    v19 = v5;
    v7 = "%s returned non-zero exit: %d: %{darwin.errno}d";
    goto LABEL_17;
  }

  return v5;
}

uint64_t apfs_volume_copy_formatter(int a1, char **a2, NSObject *a3)
{
  existing = 0;
  v6 = IOServiceMatching("AppleAPFSVolume");
  if (v6)
  {
    MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v6, &existing);
    if (MatchingServices)
    {
      v8 = MatchingServices;
      v9 = *__error();
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to get matching services: %{mach.errno}x", buf, 8u);
      }

      *__error() = v9;
      Errno = _IOErrorGetErrno(v8);
      goto LABEL_34;
    }

    IOIteratorReset(existing);
    v12 = IOIteratorNext(existing);
    if (!v12)
    {
LABEL_33:
      Errno = 93;
      goto LABEL_34;
    }

    v13 = v12;
    Errno = 0xFFFFFFFFLL;
    while (1)
    {
      properties = 0;
      if (!IORegistryEntryInPlane(v13, "IOService"))
      {
        goto LABEL_16;
      }

      v14 = IORegistryEntryCreateCFProperties(v13, &properties, kCFAllocatorDefault, 0);
      if (v14)
      {
        break;
      }

      Value = CFDictionaryGetValue(properties, @"RoleValue");
      v17 = Value;
      if (Value)
      {
        v19 = CFGetTypeID(Value);
        if (v19 != CFNumberGetTypeID())
        {
          goto LABEL_32;
        }

        valuePtr = 0;
        if (!CFNumberGetValue(v17, kCFNumberSInt16Type, &valuePtr) || valuePtr != a1)
        {
          goto LABEL_32;
        }

        v17 = CFDictionaryGetValue(properties, @"FormattedBy");
        v20 = *__error();
        if (os_log_type_enabled(a3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "volume is formatted by %@", buf, 0xCu);
        }

        *__error() = v20;
        if (v17 && (v21 = CFGetTypeID(v17), v21 == CFStringGetTypeID()))
        {
          Errno = 0;
          *a2 = _CFStringCopyUTF8String(v17);
          LODWORD(v17) = 4;
        }

        else
        {
LABEL_32:
          LODWORD(v17) = 0;
        }
      }

LABEL_17:
      if (properties)
      {
        CFRelease(properties);
      }

      if (IOObjectRelease(v13))
      {
        apfs_volume_copy_formatter_cold_1(&properties, buf);
      }

      if ((v17 | 8) != 8)
      {
        goto LABEL_34;
      }

      v13 = IOIteratorNext(existing);
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    v15 = v14;
    v16 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to get service properties: %{mach.errno}x", buf, 8u);
    }

    *__error() = v16;
LABEL_16:
    LODWORD(v17) = 8;
    goto LABEL_17;
  }

  v11 = *__error();
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "AppleAPFSVolume";
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to match service %s", buf, 0xCu);
  }

  *__error() = v11;
  Errno = 78;
LABEL_34:
  if (existing && IOObjectRelease(existing))
  {
    apfs_volume_copy_formatter_cold_1(&properties, buf);
  }

  return Errno;
}

uint64_t apfs_volume_delete(uint64_t a1, int a2, NSObject *a3)
{
  theArray = 0;
  if (APFSVolumeRoleFind())
  {
    v5 = *__error();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(f_mntonname) = a2;
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to find volume for role %d", buf, 8u);
    }

    *__error() = v5;
    v6 = 2;
  }

  else if (CFArrayGetCount(theArray) < 1)
  {
LABEL_15:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      v9 = _CFStringCopyUTF8String(ValueAtIndex);
      v16 = 0;
      v10 = getmntinfo(&v16, 2);
      if (v10)
      {
        v11 = v10;
        f_mntfromname = v16->f_mntfromname;
        while (strcmp(v9, f_mntfromname))
        {
          v16 = (f_mntfromname + 1056);
          f_mntfromname += 2168;
          if (!--v11)
          {
            goto LABEL_13;
          }
        }

        if (unmount(f_mntfromname - 1024, 0x80000))
        {
          break;
        }
      }

LABEL_13:
      if (APFSVolumeDelete())
      {
        v6 = *__error();
        v13 = *__error();
        if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 136315394;
        f_mntonname = v9;
        v20 = 1024;
        v21 = v6;
        v14 = "failed to delete volume %s: %{darwin.errno}d";
        goto LABEL_20;
      }

      free(v9);
      if (++v7 >= CFArrayGetCount(theArray))
      {
        goto LABEL_15;
      }
    }

    v6 = *__error();
    v13 = *__error();
    if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    f_mntonname = v16->f_mntonname;
    v20 = 1024;
    v21 = v6;
    v14 = "failed to umount %s: %{darwin.errno}d";
LABEL_20:
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
LABEL_21:
    *__error() = v13;
    free(v9);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

void codex_sub_handle_xpc_request(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_get_remote_connection(v1);
  v3 = codex_copy_system();
  string = xpc_dictionary_get_string(v1, "CODEX_SUB_REQ");
  v5 = string;
  if (string && !strcmp(string, "UNINSTALL"))
  {
    v12 = daemon_get_main_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __codex_sub_handle_xpc_request_block_invoke;
    v15[3] = &unk_100071418;
    v16 = v1;
    codex_do_once_initialized(v3, v12, v15);
  }

  else
  {
    buffer[0] = *"unknown";
    buffer[1] = *&algn_100059248[8];
    pid = xpc_connection_get_pid(v2);
    proc_name(pid, buffer, 0x20u);
    v7 = _codex_sub_log();

    if (v7)
    {
      v8 = _codex_sub_log();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v2)
      {
        v9 = xpc_connection_get_pid(v2);
      }

      else
      {
        v9 = -1;
      }

      v17 = 136316162;
      v18 = buffer;
      v19 = 1024;
      v20 = v9;
      v21 = 2082;
      v22 = v5;
      v23 = 2082;
      v24 = "CODEX_SUB_REQ";
      v25 = 1024;
      v26 = 22;
    }

    else
    {
      v10 = &_os_log_default;
      if (v2)
      {
        v11 = xpc_connection_get_pid(v2);
      }

      else
      {
        v11 = -1;
      }

      v17 = 136316162;
      v18 = buffer;
      v19 = 1024;
      v20 = v11;
      v21 = 2082;
      v22 = v5;
      v23 = 2082;
      v24 = "CODEX_SUB_REQ";
      v25 = 1024;
      v26 = 22;
      v8 = &_os_log_default;
    }

    v13 = _os_log_send_and_compose_impl();

    Error = createError("codex_sub_handle_xpc_request", "sub_codex_xpc.m", 174, "com.apple.security.cryptex.posix", 22, 0, v13);
    free(v13);
    _codex_sub_uninstall_cryptex_reply(v1, Error);
  }
}

void __codex_sub_handle_xpc_request_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_get_remote_connection(v1);
  v3 = codex_copy_system();
  v4 = daemon_get_main_queue();
  dispatch_assert_queue_V2(v4);

  v5 = v2;
  if (cryptex_xpc_connection_is_entitled(v5, "com.apple.private.security.cryptex.install"))
  {

    string = xpc_dictionary_get_string(v1, "UNINSTALL:CXID");
    v7 = xpc_dictionary_get_string(v1, "UNINSTALL:CXVER");
    v8 = xpc_dictionary_get_BOOL(v1, "UNINSTALL:FORCE_UNMOUNT");
    if (v7)
    {
      v9 = cryptex_version_new();
      if (!v9)
      {
        v10 = _codex_sub_log();

        if (v10)
        {
          v11 = _codex_sub_log();
          os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          *&buf[4] = v7;
          v12 = _os_log_send_and_compose_impl();
        }

        else
        {
          *buf = 136446210;
          *&buf[4] = v7;
          v12 = _os_log_send_and_compose_impl();
        }

        Error = createError("codex_sub_uninstall_cryptex", "sub_codex_xpc.m", 120, "com.apple.security.cryptex", 11, 0, v12);
        v25 = v12;
        goto LABEL_26;
      }
    }

    else
    {
      v9 = 0;
    }

    Error = codex_copy_quire(v3, string, v9);
    if (Error)
    {
      codex_unbootstrap(v3, Error, v8, v1, _codex_sub_uninstall_cryptex_continue);
    }

    else
    {
      *buffer = 0;
      if (v9)
      {
        asprintf(buffer, "name '%s' and version '%s'", string, *v9);
      }

      else
      {
        asprintf(buffer, "name '%s'", string);
      }

      v26 = _codex_sub_log();

      if (v26)
      {
        v27 = _codex_sub_log();
        os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = *buffer;
        v28 = _os_log_send_and_compose_impl();
      }

      else
      {
        *buf = 136446210;
        *&buf[4] = *buffer;
        v28 = _os_log_send_and_compose_impl();
      }

      Error = createError("codex_sub_uninstall_cryptex", "sub_codex_xpc.m", 138, "com.apple.security.cryptex", 8, 0, v28);
      free(v28);
      free(*buffer);
      if (Error)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

  *buffer = *"unknown";
  *&buffer[16] = *&algn_100059248[8];
  pid = xpc_connection_get_pid(v5);
  proc_name(pid, buffer, 0x20u);
  v14 = *__error();
  v15 = _codex_sub_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (v5)
    {
      v16 = xpc_connection_get_pid(v5);
    }

    else
    {
      v16 = -1;
    }

    *buf = 136315906;
    *&buf[4] = buffer;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    *&buf[18] = 2080;
    *&buf[20] = "com.apple.private.security.cryptex.install";
    *&buf[28] = 1024;
    *&buf[30] = 144;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Client lacks entitlement '%s': %{darwin.errno}d", buf, 0x22u);
  }

  *__error() = v14;
  *buf = *"unknown";
  *&buf[16] = *&algn_100059248[8];
  v18 = xpc_connection_get_pid(v5);
  proc_name(v18, buf, 0x20u);
  v19 = _codex_sub_log();

  if (v19)
  {
    v20 = _codex_sub_log();
    os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      v21 = xpc_connection_get_pid(v5);
    }

    else
    {
      v21 = -1;
    }

    *buffer = 136315650;
    *&buffer[4] = buf;
    *&buffer[12] = 1024;
    *&buffer[14] = v21;
    *&buffer[18] = 1024;
    *&buffer[20] = 144;
  }

  else
  {
    v22 = &_os_log_default;
    if (v5)
    {
      v23 = xpc_connection_get_pid(v5);
    }

    else
    {
      v23 = -1;
    }

    *buffer = 136315650;
    *&buffer[4] = buf;
    *&buffer[12] = 1024;
    *&buffer[14] = v23;
    *&buffer[18] = 1024;
    *&buffer[20] = 144;
    v20 = &_os_log_default;
  }

  v24 = _os_log_send_and_compose_impl();

  Error = createError("codex_sub_uninstall_cryptex", "sub_codex_xpc.m", 103, "com.apple.security.cryptex.posix", 144, 0, v24);
  v25 = v24;
LABEL_26:
  free(v25);
  v9 = 0;
  if (Error)
  {
LABEL_27:
    _codex_sub_uninstall_cryptex_reply(v1, Error);
    Error = 0;
  }

LABEL_28:

  free(v9);
}

void sub_10001379C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  free(0);
  free(0);
  _Unwind_Resume(a1);
}

id _codex_sub_log()
{
  if (_codex_sub_log_onceToken != -1)
  {
    _codex_sub_log_cold_1();
  }

  v1 = _codex_sub_log_logHandle;

  return v1;
}

void _codex_sub_uninstall_cryptex_reply(void *a1, __CFError *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  v5 = xpc_dictionary_get_remote_connection(v3);

  if (a2)
  {
    v6 = _xpc_cferr_to_dictionary(a2);
    xpc_dictionary_set_value(reply, "UNINSTALL:ERROR_DICT", v6);
  }

  buffer[0] = *"unknown";
  buffer[1] = *&algn_100059248[8];
  pid = xpc_connection_get_pid(v5);
  proc_name(pid, buffer, 0x20u);
  v8 = *__error();
  v9 = _codex_sub_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v10 = xpc_connection_get_pid(v5);
    }

    else
    {
      v10 = -1;
    }

    v11 = 136315650;
    v12 = buffer;
    v13 = 1024;
    v14 = v10;
    v15 = 2114;
    v16 = reply;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Replying to uninstall client: %{public}@", &v11, 0x1Cu);
  }

  *__error() = v8;
  xpc_dictionary_send_reply();
}

void _codex_sub_uninstall_cryptex_continue(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  v9 = *__error();
  v10 = _codex_sub_log();
  v11 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = a3;
      v12 = "unbootstrap: %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v16, v15);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    v12 = "unbootstrap [no error]";
    v13 = v11;
    v14 = OS_LOG_TYPE_DEBUG;
    v15 = 2;
    goto LABEL_6;
  }

  *__error() = v9;
  codex_uninstall(v8, v7, a4, _codex_sub_uninstall_cryptex_continue2);
}

void _codex_sub_uninstall_cryptex_continue2(uint64_t a1, uint64_t a2, __CFError *a3, void *a4)
{
  v6 = *__error();
  v7 = _codex_sub_log();
  v8 = v7;
  if (a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = a3;
      v9 = "uninstall: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    v9 = "uninstall [no error]";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 2;
    goto LABEL_6;
  }

  *__error() = v6;
  _codex_sub_uninstall_cryptex_reply(a4, a3);
}

void ___codex_sub_log_block_invoke(id a1)
{
  _codex_sub_log_logHandle = os_log_create("com.apple.libcryptex", "codex_sub");

  _objc_release_x1();
}

id bin_trampoline_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = +[NSFileManager defaultManager];
  v11 = [NSString stringWithFormat:@"%s/%s", a4, a3];
  v38 = [NSURL fileURLWithPath:v11];
  v12 = [v38 URLByDeletingLastPathComponent];
  v50 = NSFilePosixPermissions;
  v51 = &off_100074F18;
  v13 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v43 = 0;
  v39 = v12;
  LOBYTE(v12) = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:v13 error:&v43];
  v14 = v43;

  if ((v12 & 1) == 0)
  {
    v27 = [v14 code];
    v28 = *__error();
    v29 = _bt_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v39 path];
      v31 = [v30 UTF8String];
      *buf = 136315394;
      v47 = v31;
      v48 = 1024;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to create directory at %s: %{darwin.errno}d", buf, 0x12u);
    }

    v21 = 0;
    v26 = v38;
    goto LABEL_16;
  }

  if ([v10 fileExistsAtPath:v11])
  {
    v15 = *__error();
    v16 = _bt_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "trampoline file exists, removing", buf, 2u);
    }

    *__error() = v15;
    v42 = v14;
    v17 = [v10 removeItemAtPath:v11 error:&v42];
    v18 = v42;

    if ((v17 & 1) == 0)
    {
      v27 = [v18 code];
      v28 = *__error();
      v29 = _bt_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v35 = [v11 UTF8String];
        *buf = 136315394;
        v47 = v35;
        v48 = 1024;
        v49 = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to remove file at %s: %{darwin.errno}d", buf, 0x12u);
      }

      v21 = 0;
      v14 = v18;
      v26 = v38;
      goto LABEL_16;
    }

    v14 = v18;
  }

  v19 = v14;
  if (a5)
  {
    v20 = @"#!/bin/sh\nexec /usr/bin/cryptexctl exec -P -i %s %s %s $@\n";
  }

  else
  {
    v20 = @"#!/bin/sh\nexec /usr/bin/cryptexctl exec -i %s %s %s $@\n";
  }

  v21 = [NSString stringWithFormat:v20, a1, a2, a3];
  v41 = v14;
  v22 = [v21 writeToFile:v11 atomically:0 encoding:4 error:&v41];
  v14 = v41;

  if ((v22 & 1) == 0)
  {
    v27 = [v14 code];
    v28 = *__error();
    v29 = _bt_log();
    v26 = v38;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v33 = [v38 path];
      v34 = [v33 UTF8String];
      *buf = 136315394;
      v47 = v34;
      v48 = 1024;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to write trampoline at %s: %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_16;
  }

  v44 = NSFilePosixPermissions;
  v45 = &off_100074F18;
  v23 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v40 = v14;
  v24 = [v10 setAttributes:v23 ofItemAtPath:v11 error:&v40];
  v25 = v40;

  v26 = v38;
  if ((v24 & 1) == 0)
  {
    v27 = [v25 code];
    v28 = *__error();
    v29 = _bt_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v36 = [v38 path];
      v37 = [v36 UTF8String];
      *buf = 136315394;
      v47 = v37;
      v48 = 1024;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to change trampoline permission at %s: %{darwin.errno}d", buf, 0x12u);
    }

    v14 = v25;
LABEL_16:

    *__error() = v28;
    v25 = v14;
    goto LABEL_17;
  }

  v27 = 0;
LABEL_17:

  return v27;
}

id _bt_log()
{
  if (_bt_log_onceToken != -1)
  {
    _bt_log_cold_1();
  }

  v1 = _bt_log_osl;

  return v1;
}

void ___bt_log_block_invoke(id a1)
{
  _bt_log_osl = os_log_create("com.apple.libcryptex", "bin_trampoline");

  _objc_release_x1();
}

uint64_t developer_mode_get(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v4, &v3, 0, 0))
  {
    return *__error();
  }

  result = 0;
  if (a1)
  {
    *a1 = v4 != 0;
  }

  return result;
}

void _protex_dealloc(void **a1)
{
  os_release(a1[11]);
  os_release(a1[12]);
  os_release(a1[13]);
  free(a1[14]);

  object_proto_destroy((a1 + 7));
}

void *protex_create(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = _protex_alloc();
  v6[10] = a3;
  v6[11] = os_retain(a2);
  v6[12] = os_retain(a1);
  v7 = cryptex_core_create();
  v6[13] = v7;
  if (*(a1 + 168))
  {
    cryptex_core_attach_host();
    v7 = v6[13];
  }

  if (*(a1 + 216))
  {
    cryptex_core_set_cryptex1_properties();
    v7 = v6[13];
  }

  *(v7 + 40) = *(a1 + 40);
  *(v7 + 56) = *(a1 + 56);
  object_proto_init((v6 + 7), "com.apple.security.cryptexd", "protex");
  cryptex_init();
  return v6;
}

uint64_t _protex_init(uint64_t a1)
{
  v24 = 0;
  __s1[0] = *"protex.XXXXXX";
  memset(&__s1[1], 0, 239);
  v23 = -1;
  v2 = codex_mkodtempat(*(a1 + 88), &_codex_state_stage, __s1, &v23);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 56);
    v5 = *__error();
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "[anonymous]";
      if (v4)
      {
        v7 = v4;
      }

      *buf = 136446466;
      v30 = v7;
      v31 = 1024;
      v32 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: failed to create staging directory: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v5;
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_DEBUG))
    {
      bzero(buf, 0x400uLL);
      if (!realpath_np())
      {
        v8 = *(a1 + 56);
        v9 = *__error();
        v10 = *(a1 + 72);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = "[anonymous]";
          if (v8)
          {
            v11 = v8;
          }

          *v25 = 136446466;
          v26 = v11;
          v27 = 2080;
          v28 = buf;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: staging directory = %s", v25, 0x16u);
        }

        *__error() = v9;
      }
    }

    v12 = *(a1 + 56);
    v13 = *__error();
    v14 = *(a1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      *buf = 136446466;
      v30 = v15;
      v31 = 1024;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s: dirfd = %d", buf, 0x12u);
    }

    *__error() = v13;
    v24 = cryptex_asset_new();
    v16 = *(a1 + 104);
    cryptex_core_set_asset();
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v17 = strdup(__s1);
        if (v17)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v17 = strdup(__s1);
      if (!v17)
      {
        _protex_init_cold_1(__s1, v25, buf);
      }
    }

    v3 = 0;
    *(a1 + 112) = v17;
  }

  if (v23 != -1 && close(v23) == -1)
  {
    daemon_init_cold_13(v25, buf);
  }

  if (v3)
  {
    v18 = *(a1 + 56);
    v19 = *__error();
    v20 = *(a1 + 72);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = "[anonymous]";
      if (v18)
      {
        v21 = v18;
      }

      *buf = 136446466;
      v30 = v21;
      v31 = 1024;
      v32 = v3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: failed to make stage directory: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v19;
  }

  return cryptex_set_error();
}

uint64_t protex_stage(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = a2;
  v5[5] = a3;
  cryptex_async_f();

  return cryptex_activate();
}

uint64_t _protex_stage_continue(void *a1)
{
  v1 = a1;
  v2 = *a1;
  error = cryptex_get_error();
  if (error)
  {
    v4 = error;
    v5 = *(v2 + 56);
    v6 = *__error();
    v7 = *(v2 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      if (v5)
      {
        v8 = v5;
      }

      *buf = 136446466;
      v140 = v8;
      v141 = 1024;
      LODWORD(v142) = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: initialization failed: %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_120;
  }

  v110 = v1;
  v9 = 0;
  v10 = &cryptex_asset_types;
  v11 = 8;
  v4 = -1;
  do
  {
    v12 = *v10;
    v13 = *(*(v2 + 96) + 8 * v11);
    if (v13)
    {
      if (*(v13 + 8) == &_cryptex_asset_type_im4m || (*(v2 + 80) & 1) == 0)
      {
        v14 = *(v2 + 104);
        asset = cryptex_core_get_asset();
        v16 = *(v2 + 56);
        v17 = *__error();
        v18 = *(v2 + 72);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = "[anonymous]";
          if (v16)
          {
            v19 = v16;
          }

          v20 = *(*(v13 + 8) + 40);
          *buf = 136446466;
          v140 = v19;
          v141 = 2080;
          v142 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: copying asset: %s", buf, 0x16u);
        }

        *__error() = v17;
        v21 = cryptex_asset_copy();
        *&v113.st_dev = v21;
        v22 = openat(*(asset + 16), *(*(v13 + 8) + 40), 514, 438);
        *v127 = v22;
        v111 = v12;
        if (v22 < 0)
        {
          v24 = v9;
          v4 = *__error();
          v48 = *(v2 + 56);
          v49 = *__error();
          v50 = *(v2 + 72);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v51 = "[anonymous]";
            if (v48)
            {
              v51 = v48;
            }

            v140 = v51;
            v141 = 1024;
            LODWORD(v142) = v4;
            v52 = v50;
            v53 = "%{public}s: openat: %{darwin.errno}d";
            goto LABEL_49;
          }
        }

        else
        {
          v23 = v22;
          if (lseek(*(v13 + 16), 0, 0) == -1)
          {
            _protex_stage_continue_cold_2(&v126, buf);
          }

          v24 = v9;
          if ((fcopyfile(*(v13 + 16), v23, 0, 0x100000Fu) & 0x80000000) == 0)
          {
            if (lseek(v23, 0, 0) == -1)
            {
              _protex_stage_continue_cold_2(&v126, buf);
            }

            v25 = *(v2 + 72);
            bzero(buf, 0x400uLL);
            memset(&v126, 0, sizeof(v126));
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              if (fstat(v23, &v126) == -1)
              {
                v61 = *__error();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v62 = *__error();
                  *v114 = 136315650;
                  v115 = "fd_copy";
                  v116 = 1024;
                  v117 = v23;
                  v118 = 1024;
                  LODWORD(v119) = v62;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v114, 0x18u);
                }

                *__error() = v61;
              }

              else
              {
                if (fcntl(v23, 50, buf))
                {
                  v26 = __error();
                  v27 = strerror(*v26);
                  snprintf(buf, 0x400uLL, "[%s]", v27);
                }

                v28 = v126.st_mode >> 12;
                v29 = "[unknown]";
                if (v28 != 7)
                {
                  v29 = (&off_100072578)[v28 ^ 8];
                }

                v30 = os_flagset_copy_string();
                v31 = *__error();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *v114 = 136316418;
                  v115 = "fd_copy";
                  v116 = 1024;
                  v117 = v23;
                  v118 = 2080;
                  v119 = v29;
                  v120 = 2048;
                  st_size = v126.st_size;
                  v122 = 2080;
                  v123 = v30;
                  v124 = 2080;
                  v125 = buf;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v114, 0x3Au);
                }

                *__error() = v31;
                free(v30);
                v9 = v24;
              }
            }

            *(v21 + 16) = claimfd_np();
            v63 = *(v2 + 104);
            cryptex_core_set_asset();
            v4 = 0;
LABEL_65:
            cryptex_asset_destroy();
            if (*v127 != -1 && close(*v127) == -1)
            {
              daemon_init_cold_13(&v126, buf);
            }

            if (v4)
            {
              v90 = *(v2 + 56);
              v100 = *__error();
              v101 = *(v2 + 72);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
              {
                v91 = "[anonymous]";
                if (v90)
                {
                  v91 = v90;
                }

                v92 = *(v111 + 40);
                *buf = 136446722;
                v140 = v91;
                v141 = 2080;
                v142 = v92;
                v143 = 1024;
                v144 = v4;
                v93 = "%{public}s: copy asset: %s: %{darwin.errno}d";
                goto LABEL_112;
              }

              goto LABEL_114;
            }

LABEL_68:
            v4 = 0;
            ++v9;
            goto LABEL_69;
          }

          v4 = *__error();
          v54 = *(v2 + 56);
          v49 = *__error();
          v55 = *(v2 + 72);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v56 = "[anonymous]";
            if (v54)
            {
              v56 = v54;
            }

            v140 = v56;
            v141 = 1024;
            LODWORD(v142) = v4;
            v52 = v55;
            v53 = "%{public}s: fcopyfile: %{darwin.errno}d";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 0x12u);
          }
        }

        *__error() = v49;
        v9 = v24;
        goto LABEL_65;
      }

      bzero(&v126, 0x400uLL);
      bzero(v114, 0x400uLL);
      v112 = -1;
      v37 = *(v2 + 56);
      v38 = *__error();
      v39 = *(v2 + 72);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = "[anonymous]";
        if (v37)
        {
          v40 = v37;
        }

        v41 = *(*(v13 + 8) + 40);
        *buf = 136446466;
        v140 = v40;
        v141 = 2080;
        v142 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%{public}s: symlinking asset: %s", buf, 0x16u);
      }

      *__error() = v38;
      v42 = *(v13 + 16);
      v43 = realpath_np();
      if (v43)
      {
        v4 = v43;
        v44 = *(v2 + 56);
        v45 = *__error();
        v46 = *(v2 + 72);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v47 = "[anonymous]";
          if (v44)
          {
            v47 = v44;
          }

LABEL_55:
          v140 = v47;
          v141 = 1024;
          LODWORD(v142) = v4;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s: realpath_np: %{darwin.errno}d", buf, 0x12u);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      v57 = *(v2 + 104);
      v58 = *(cryptex_core_get_asset() + 16);
      v59 = realpath_np();
      if (v59)
      {
        v4 = v59;
        v60 = *(v2 + 56);
        v45 = *__error();
        v46 = *(v2 + 72);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v47 = "[anonymous]";
          if (v60)
          {
            v47 = v60;
          }

          goto LABEL_55;
        }

LABEL_56:
        *__error() = v45;
        goto LABEL_57;
      }

      __strncat_chk();
      v64 = *(*(v13 + 8) + 40);
      __strncat_chk();
      v65 = cryptex_asset_copy();
      if (symlink(&v126, v114))
      {
        v66 = v12;
        v67 = v9;
        v4 = *__error();
        v68 = *(v2 + 56);
        v69 = *__error();
        v70 = *(v2 + 72);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v71 = "[anonymous]";
          if (v68)
          {
            v71 = v68;
          }

          v140 = v71;
          v141 = 1024;
          LODWORD(v142) = v4;
          v72 = v70;
          v73 = "%{public}s: symlink: %{darwin.errno}d";
LABEL_76:
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, v73, buf, 0x12u);
        }
      }

      else
      {
        v74 = open(v114, 0, 438);
        v112 = v74;
        if ((v74 & 0x80000000) == 0)
        {
          v75 = v74;
          if (lseek(v74, 0, 0) == -1)
          {
            _protex_stage_continue_cold_2(&v113, buf);
          }

          v76 = *(v2 + 72);
          bzero(buf, 0x400uLL);
          memset(&v113, 0, sizeof(v113));
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            if (fstat(v75, &v113) == -1)
            {
              v87 = *__error();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                v88 = *__error();
                *v127 = 136315650;
                v128 = "fd_symlink";
                v129 = 1024;
                v130 = v75;
                v131 = 1024;
                LODWORD(v132) = v88;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v127, 0x18u);
              }

              *__error() = v87;
            }

            else
            {
              v77 = v12;
              if (fcntl(v75, 50, buf))
              {
                v78 = __error();
                v79 = strerror(*v78);
                snprintf(buf, 0x400uLL, "[%s]", v79);
              }

              v80 = v9;
              v81 = v113.st_mode >> 12;
              v82 = "[unknown]";
              if (v81 != 7)
              {
                v82 = (&off_100072578)[v81 ^ 8];
              }

              v83 = os_flagset_copy_string();
              v109 = *__error();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
              {
                *v127 = 136316418;
                v128 = "fd_symlink";
                v129 = 1024;
                v130 = v75;
                v131 = 2080;
                v132 = v82;
                v133 = 2048;
                v134 = v113.st_size;
                v135 = 2080;
                v136 = v83;
                v137 = 2080;
                v138 = buf;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v127, 0x3Au);
              }

              *__error() = v109;
              free(v83);
              v9 = v80;
              v12 = v77;
            }
          }

          *(v65 + 16) = claimfd_np();
          v89 = *(v2 + 104);
          cryptex_core_set_asset();
          v4 = 0;
LABEL_57:
          cryptex_asset_destroy();
          if (v112 != -1 && close(v112) == -1)
          {
            daemon_init_cold_13(&v113, buf);
          }

          if (v4)
          {
            v99 = *(v2 + 56);
            v100 = *__error();
            v101 = *(v2 + 72);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v103 = "[anonymous]";
              if (v99)
              {
                v103 = v99;
              }

              v104 = *(v12 + 40);
              *buf = 136446722;
              v140 = v103;
              v141 = 2080;
              v142 = v104;
              v143 = 1024;
              v144 = v4;
              v93 = "%{public}s: symlink asset: %s: %{darwin.errno}d";
LABEL_112:
              v97 = v101;
              v98 = 28;
LABEL_113:
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, v93, buf, v98);
            }

LABEL_114:
            *__error() = v100;
            goto LABEL_115;
          }

          goto LABEL_68;
        }

        v66 = v12;
        v67 = v9;
        v4 = *__error();
        v84 = *(v2 + 56);
        v69 = *__error();
        v85 = *(v2 + 72);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v86 = "[anonymous]";
          if (v84)
          {
            v86 = v84;
          }

          v140 = v86;
          v141 = 1024;
          LODWORD(v142) = v4;
          v72 = v85;
          v73 = "%{public}s: open: %{darwin.errno}d";
          goto LABEL_76;
        }
      }

      *__error() = v69;
      v9 = v67;
      v12 = v66;
      goto LABEL_57;
    }

    v32 = *(v2 + 56);
    v33 = *__error();
    v34 = *(v2 + 72);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(v12 + 40);
      v36 = "[anonymous]";
      if (v32)
      {
        v36 = v32;
      }

      *buf = 136446466;
      v140 = v36;
      v141 = 2080;
      v142 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%{public}s: asset not present; skipping: %s", buf, 0x16u);
    }

    *__error() = v33;
LABEL_69:
    ++v11;
    ++v10;
  }

  while (v11 != 20);
  if (!v9)
  {
    v94 = *(v2 + 56);
    v100 = *__error();
    v95 = *(v2 + 72);
    v4 = 2;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v96 = "[anonymous]";
      if (v94)
      {
        v96 = v94;
      }

      *buf = 136446466;
      v140 = v96;
      v141 = 1024;
      LODWORD(v142) = 2;
      v93 = "%{public}s: empty core: %{darwin.errno}d";
      v97 = v95;
      v98 = 18;
      goto LABEL_113;
    }

    goto LABEL_114;
  }

  if (!v4)
  {
    v1 = v110;
    goto LABEL_121;
  }

LABEL_115:
  v105 = *(v2 + 56);
  v6 = *__error();
  v106 = *(v2 + 72);
  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    v107 = "[anonymous]";
    if (v105)
    {
      v107 = v105;
    }

    *buf = 136446466;
    v140 = v107;
    v141 = 1024;
    LODWORD(v142) = v4;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%{public}s: copy assets failed: %{darwin.errno}d", buf, 0x12u);
  }

  v1 = v110;
LABEL_120:
  *__error() = v6;
LABEL_121:
  *(v1 + 2) = v4;
  return cryptex_target_async_f();
}

void _protex_stage_callback(void **a1)
{
  (a1[5])(*a1, *(*a1 + 13), *(a1 + 2), a1[4]);

  ctx_destroy(a1);
}

void upgrade_sub_lock_for_client(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    upgrade_lock_interface(a1, v3, _upgrade_sub_lock_for_client_continue);
  }

  else
  {
    v5 = *__error();
    v6 = _upgrade_sub_lock_osl();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid input(s).", v7, 2u);
    }

    *__error() = v5;
  }
}

id _upgrade_sub_lock_osl()
{
  if (_upgrade_sub_lock_osl_onceToken != -1)
  {
    _upgrade_sub_lock_osl_cold_1();
  }

  v1 = _upgrade_sub_lock_osl_lock_log;

  return v1;
}

void _upgrade_sub_lock_for_client_continue(xpc_object_t original, __CFError *a2)
{
  if (original)
  {
    reply = xpc_dictionary_create_reply(original);
    if (a2)
    {
      v5 = _xpc_cferr_to_dictionary(a2);
      xpc_dictionary_set_value(reply, "upgrade_lock_error", v5);
    }

    xpc_dictionary_send_reply();
  }

  else
  {
    v6 = *__error();
    v7 = _upgrade_sub_lock_osl();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid input.", v8, 2u);
    }

    *__error() = v6;
  }
}

void ___upgrade_sub_lock_osl_block_invoke(id a1)
{
  _upgrade_sub_lock_osl_lock_log = os_log_create("com.apple.libcryptex", "upgrade_sub_lock");

  _objc_release_x1();
}

uint64_t _IOErrorGetErrno(uint64_t result)
{
  switch(result)
  {
    case 0xE00002BD:
    case 0xE00002BE:
    case 0xE00002C8:
    case 0xE00002DE:
      result = 12;
      break;
    case 0xE00002BF:
      result = 72;
      break;
    case 0xE00002C0:
    case 0xE00002D7:
    case 0xE00002D9:
    case 0xE00002DA:
      result = 19;
      break;
    case 0xE00002C1:
      result = 1;
      break;
    case 0xE00002C2:
      result = 22;
      break;
    case 0xE00002C3:
    case 0xE00002C4:
    case 0xE00002C5:
    case 0xE00002CC:
      result = 35;
      break;
    case 0xE00002C6:
      result = 94;
      break;
    case 0xE00002C7:
      result = 45;
      break;
    case 0xE00002C9:
    case 0xE00002CA:
    case 0xE00002D3:
    case 0xE00002D4:
      result = 5;
      break;
    case 0xE00002CB:
    case 0xE00002DC:
    case 0xE00002DF:
    case 0xE00002E0:
    case 0xE00002E3:
    case 0xE00002E4:
    case 0xE00002E5:
    case 0xE00002E6:
    case 0xE00002E7:
    case 0xE00002E8:
    case 0xE00002EA:
      goto LABEL_10;
    case 0xE00002CD:
      result = 9;
      break;
    case 0xE00002CE:
    case 0xE00002CF:
    case 0xE00002E2:
      result = 13;
      break;
    case 0xE00002D0:
      result = 14;
      break;
    case 0xE00002D1:
    case 0xE00002E9:
      result = 83;
      break;
    case 0xE00002D2:
    case 0xE00002D5:
      result = 16;
      break;
    case 0xE00002D6:
      result = 60;
      break;
    case 0xE00002D8:
      result = 6;
      break;
    case 0xE00002DB:
      result = 28;
      break;
    case 0xE00002DD:
      result = 17;
      break;
    case 0xE00002E1:
      result = 7;
      break;
    case 0xE00002EB:
      result = 89;
      break;
    default:
      if (result)
      {
LABEL_10:
        result = 104;
      }

      break;
  }

  return result;
}

uint64_t _IORegistryExchangeWithFirstChildOfClass(io_object_t *a1, const char *a2)
{
  iterator = 0;
  v2 = 2;
  if (a1 && a2)
  {
    if (!IORegistryEntryGetChildIterator(*a1, "IOService", &iterator))
    {
      v6 = IOIteratorNext(iterator);
      if (v6)
      {
        v7 = v6;
        while (!IOObjectConformsTo(v7, a2))
        {
          IOObjectRelease(v7);
          v7 = IOIteratorNext(iterator);
          if (!v7)
          {
            v2 = 2;
            goto LABEL_4;
          }
        }

        IOObjectRelease(*a1);
        v2 = 0;
        *a1 = v7;
      }
    }

LABEL_4:
    if (iterator)
    {
      IOObjectRelease(iterator);
    }
  }

  return v2;
}

xpc_type_t _session_demux(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!*(a2 + 24))
  {
    *buf = 0;
    v17 = 0;
    v8 = session_activate_unpack();
    if (v8)
    {
      v7 = v8;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to unpack", v11, 2u);
      }

      rpc_reply(a2, a3, v7);
      return v7;
    }

    v5 = v17;
    v9 = cryptex_session_core_create_from_xpc();
    v7 = session_list_elem_add(v9);
    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to add session core to session list", v11, 2u);
      }

      v10 = 0;
    }

    else
    {
      v10 = cryptex_session_core_copy_xpc_object();
      result = xpc_get_type(v10);
      if (result != &_xpc_type_dictionary)
      {
        goto LABEL_25;
      }

      *buf = v10;
      session_activate_reply_pack();
    }

    rpc_reply(a2, a3, v7);
    if (v9)
    {
      os_release(v9);
    }

    if (v10)
    {
      os_release(v10);
    }

    goto LABEL_12;
  }

  v5 = xpc_array_create(0, 0);
  result = xpc_get_type(v5);
  if (result == &_xpc_type_array)
  {
    v17 = v5;
    v7 = session_list_unpack();
    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to unpack", buf, 2u);
      }
    }

    else
    {
      *buf = _NSConcreteStackBlock;
      v13 = 0x40000000;
      v14 = ___session_rpc_list_block_invoke;
      v15 = &__block_descriptor_tmp_1;
      v16 = v5;
      session_list_foreach(buf);
      session_list_reply_pack();
    }

    rpc_reply(a2, a3, v7);
LABEL_12:
    if (v5)
    {
      os_release(v5);
    }

    return v7;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t ___session_rpc_list_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = cryptex_session_core_copy_xpc_object();
  xpc_array_append_value(*(a1 + 32), v4);
  xpc_release(v4);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 96);
    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "callback %s", &v7, 0xCu);
  }

  return 0;
}

void collation_sub_new_client(void *a1)
{
  v1 = a1;
  xdict = xpc_dictionary_create_reply(v1);
  uint64 = xpc_dictionary_get_uint64(v1, "user");

  v3 = collation_map_get_endpoint_for_user(uint64);
  if (v3)
  {
    xpc_dictionary_set_value(xdict, "endpoint", v3);
  }

  xpc_dictionary_send_reply();
}

uint64_t _cryptex_base_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_base_alloc_cold_1();
  }

  return result;
}

uint64_t _codex_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _codex_alloc_cold_1();
  }

  return result;
}

uint64_t _daemon_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _daemon_alloc_cold_1();
  }

  return result;
}

uint64_t _proc_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _proc_alloc_cold_1();
  }

  return result;
}

uint64_t _protex_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _protex_alloc_cold_1();
  }

  return result;
}

uint64_t _quire_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _quire_alloc_cold_1();
  }

  return result;
}

uint64_t _resource_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _resource_alloc_cold_1();
  }

  return result;
}

uint64_t _view_alloc()
{
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _view_alloc_cold_1();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void _proc_dealloc(uint64_t a1)
{
  free(*(a1 + 64));
  free(*(a1 + 72));
  v2 = *(a1 + 272);
  if (v2)
  {
    os_release(v2);
  }

  object_proto_destroy(a1 + 16);
}

uint64_t proc_create(uint64_t a1, uint64_t a2)
{
  v4 = _proc_alloc();
  *(v4 + 40) = a2;
  v5 = *(a1 + 344);
  *(v4 + 280) = *(a1 + 328);
  *(v4 + 296) = v5;
  object_proto_init(v4 + 16, "com.apple.security.cryptexd", "proc");
  return v4;
}

uint64_t proc_resolve(uint64_t a1)
{
  v91 = 0;
  v92 = 0;
  bzero(__str, 0x260uLL);
  v2 = proc_pidinfo(*(a1 + 300), 18, 0, (a1 + 80), 192);
  if (v2 != 192)
  {
    v44 = v2;
    v45 = *__error();
    v46 = *(a1 + 16);
    v47 = *__error();
    v48 = *(a1 + 32);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = "[anonymous]";
      v50 = *(a1 + 300);
      if (v46)
      {
        v49 = v46;
      }

      LODWORD(buffer[0]) = 136446978;
      *(buffer + 4) = v49;
      WORD6(buffer[0]) = 1024;
      *(buffer + 14) = v50;
      WORD1(buffer[1]) = 1024;
      DWORD1(buffer[1]) = v44;
      WORD4(buffer[1]) = 1024;
      *(&buffer[1] + 10) = v45;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}s: proc_pidinfo[%d]: ret = %d: %{darwin.errno}d", buffer, 0x1Eu);
    }

    v51 = __error();
    v52 = 0;
    goto LABEL_78;
  }

  __strlcpy_chk();
  snprintf(__str, 0x26uLL, "%s.%d@%d", (a1 + 48), *(a1 + 300), *(a1 + 308));
  object_set_name(a1 + 16, __str);
  v3 = v97;
  v4 = *(a1 + 96);
  v87 = -1;
  v5 = 1;
  v6 = v97;
  while (1)
  {
    v7 = v5;
    tn = 0;
    v8 = v6;
    memset(v95, 0, 144);
    memset(buffer, 0, sizeof(buffer));
    memset(&task_info_out, 0, sizeof(task_info_out));
    task_info_outCnt = 8;
    v9 = *(a1 + 16);
    v10 = *__error();
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      buf.val[0] = 136446722;
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      *&buf.val[1] = v12;
      LOWORD(buf.val[3]) = 2048;
      *(&buf.val[3] + 2) = v7;
      HIWORD(buf.val[5]) = 1024;
      buf.val[6] = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: examining ancestor[%lu]: %d", &buf, 0x1Cu);
    }

    *__error() = v10;
    v13 = proc_pidinfo(v4, 18, 0, buffer, 192);
    if (v13 == 192)
    {
      if (v4)
      {
        v14 = task_name_for_pid(mach_task_self_, v4, &tn);
        if (v14)
        {
          v15 = v14;
          v16 = *(a1 + 16);
          v17 = *__error();
          v18 = *(a1 + 32);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            buf.val[0] = 136446722;
            v19 = "[anonymous]";
            if (v16)
            {
              v19 = v16;
            }

            *&buf.val[1] = v19;
            LOWORD(buf.val[3]) = 1024;
            *(&buf.val[3] + 2) = v15;
            HIWORD(buf.val[4]) = 1024;
            buf.val[5] = 3;
            v20 = v18;
            v21 = "%{public}s: task_name_for_pid: %#x: %{darwin.errno}d";
LABEL_39:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, &buf, 0x18u);
            goto LABEL_40;
          }

          goto LABEL_40;
        }

        v39 = task_info(tn, 0xFu, &task_info_out, &task_info_outCnt);
        if (v39)
        {
          v40 = v39;
          v41 = *(a1 + 16);
          v17 = *__error();
          v42 = *(a1 + 32);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            buf.val[0] = 136446722;
            v43 = "[anonymous]";
            if (v41)
            {
              v43 = v41;
            }

            *&buf.val[1] = v43;
            LOWORD(buf.val[3]) = 1024;
            *(&buf.val[3] + 2) = v40;
            HIWORD(buf.val[4]) = 1024;
            buf.val[5] = 3;
            v20 = v42;
            v21 = "%{public}s: task_info: %#x: %{darwin.errno}d";
            goto LABEL_39;
          }

LABEL_40:
          *__error() = v17;
          v87 = 3;
          v28 = 11;
          goto LABEL_41;
        }

        buf = task_info_out;
        v34 = audit_token_to_pidversion(&buf);
      }

      else
      {
        v29 = *(a1 + 16);
        v30 = *__error();
        v31 = *(a1 + 32);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = "[anonymous]";
          if (v29)
          {
            v32 = v29;
          }

          buf.val[0] = 136446210;
          *&buf.val[1] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}s: hit kernel_task; assuming ppid version of 0", &buf, 0xCu);
        }

        v33 = __error();
        v34 = 0;
        *v33 = v30;
      }

      snprintf(v8, 0x26uLL, "%s.%d.%d", v95, v4, v34);
      v35 = *(a1 + 16);
      v36 = *__error();
      v37 = *(a1 + 32);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        buf.val[0] = 136446722;
        v38 = "[anonymous]";
        if (v35)
        {
          v38 = v35;
        }

        *&buf.val[1] = v38;
        LOWORD(buf.val[3]) = 2048;
        *(&buf.val[3] + 2) = v7;
        HIWORD(buf.val[5]) = 2080;
        *&buf.val[6] = v3;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}s: setting ancestor[%lu]: %s", &buf, 0x20u);
      }

      *__error() = v36;
      v28 = v4 ? 0 : 11;
      v4 = v4 ? LODWORD(buffer[1]) : 0;
    }

    else
    {
      v22 = v13;
      v87 = *__error();
      v23 = *(a1 + 16);
      v24 = *__error();
      v25 = *(a1 + 32);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 300);
        v27 = "[anonymous]";
        if (v23)
        {
          v27 = v23;
        }

        buf.val[0] = 136446978;
        *&buf.val[1] = v27;
        LOWORD(buf.val[3]) = 1024;
        *(&buf.val[3] + 2) = v26;
        HIWORD(buf.val[4]) = 1024;
        buf.val[5] = v22;
        LOWORD(buf.val[6]) = 1024;
        *(&buf.val[6] + 2) = v87;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s: proc_pidinfo[%d]: ret = %d: %{darwin.errno}d", &buf, 0x1Eu);
      }

      *__error() = v24;
      v28 = 6;
    }

LABEL_41:
    if (tn - 1 <= 0xFFFFFFFD)
    {
      mach_right_send_release();
    }

    if (v28)
    {
      break;
    }

    v5 = v7 + 1;
    v6 = v8 + 38;
    v3 += 38;
    if (v7 == 15)
    {
      goto LABEL_53;
    }
  }

  if (v28 != 11)
  {
    v52 = 0;
    v45 = v87;
    goto LABEL_79;
  }

LABEL_53:
  v53 = malloc_type_calloc(1uLL, 0x100uLL, 0x8709206FuLL);
  if (!v53)
  {
    proc_resolve_cold_2(&task_info_out, buffer);
  }

  v52 = v53;
  v54 = -v7;
  do
  {
    snprintf(v52, 0x100uLL, "%s->%s", v52, v8);
    v8 -= 38;
  }

  while (!__CFADD__(v54++, 1));
  v56 = *(a1 + 16);
  v57 = *__error();
  v58 = *(a1 + 32);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v59 = "[anonymous]";
    if (v56)
    {
      v59 = v56;
    }

    LODWORD(buffer[0]) = 136446466;
    *(buffer + 4) = v59;
    WORD6(buffer[0]) = 2080;
    *(buffer + 14) = v52;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "%{public}s: ancestry = %s", buffer, 0x16u);
  }

  *__error() = v57;
  v45 = _csblob_copy((a1 + 280), 11, &v92);
  v60 = *(a1 + 16);
  v47 = *__error();
  v61 = *(a1 + 32);
  if (v45)
  {
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = "[anonymous]";
      if (v60)
      {
        v62 = v60;
      }

      LODWORD(buffer[0]) = 136446466;
      *(buffer + 4) = v62;
      WORD6(buffer[0]) = 1024;
      *(buffer + 14) = v45;
      v63 = "%{public}s: copy csblob [csid]: %{darwin.errno}d";
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v64 = "[anonymous]";
    if (v60)
    {
      v64 = v60;
    }

    v65 = *(v92 + 1) - 8;
    LODWORD(buffer[0]) = 136446722;
    *(buffer + 4) = v64;
    WORD6(buffer[0]) = 1040;
    *(buffer + 14) = v65;
    WORD1(buffer[1]) = 2096;
    *(&buffer[1] + 4) = v92 + 8;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s: identity blob = %.*P", buffer, 0x1Cu);
  }

  *__error() = v47;
  v45 = _csblob_copy((a1 + 280), 7, &v91);
  v66 = *(a1 + 16);
  v47 = *__error();
  v61 = *(a1 + 32);
  if (!v45)
  {
    v69 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
    v70 = v91;
    if (v69)
    {
      v71 = *(v91 + 1);
      v72 = "[anonymous]";
      if (v66)
      {
        v72 = v66;
      }

      LODWORD(buffer[0]) = 136446722;
      *(buffer + 4) = v72;
      WORD6(buffer[0]) = 1040;
      *(buffer + 14) = v71 - 8;
      WORD1(buffer[1]) = 2096;
      *(&buffer[1] + 4) = v91 + 8;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s: entitlements blob = %.*P", buffer, 0x1Cu);
    }

    *__error() = v47;
    v73 = v70[1];
    v74 = xpc_create_from_plist();
    v75 = v74;
    if (v74 && xpc_get_type(v74) == &_xpc_type_dictionary)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
      {
        v80 = xpc_copy_description(v75);
        v81 = *(a1 + 16);
        v82 = *__error();
        v83 = *(a1 + 32);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          v84 = "[anonymous]";
          if (v81)
          {
            v84 = v81;
          }

          LODWORD(buffer[0]) = 136446466;
          *(buffer + 4) = v84;
          WORD6(buffer[0]) = 2080;
          *(buffer + 14) = v80;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEBUG, "%{public}s: entitlements = %s", buffer, 0x16u);
        }

        *__error() = v82;
        free(v80);
      }

      *(a1 + 64) = v52;
      v85 = v92;
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v86 = strdup(v85 + 8);
          if (v86)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v86 = strdup(v85 + 8);
        if (!v86)
        {
          proc_resolve_cold_1(v85 + 8, &task_info_out, buffer);
        }
      }

      *(a1 + 72) = v86;
      v52 = 0;
      v45 = 0;
      *(a1 + 272) = os_retain(v75);
      if (!v75)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v76 = *(a1 + 16);
      v77 = *__error();
      v78 = *(a1 + 32);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = "[anonymous]";
        if (v76)
        {
          v79 = v76;
        }

        LODWORD(buffer[0]) = 136446466;
        *(buffer + 4) = v79;
        WORD6(buffer[0]) = 1024;
        *(buffer + 14) = 90;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%{public}s: entitlements not a dictionary: %{darwin.errno}d", buffer, 0x12u);
      }

      *__error() = v77;
      v45 = 90;
      if (!v75)
      {
        goto LABEL_79;
      }
    }

    os_release(v75);
    goto LABEL_79;
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v67 = "[anonymous]";
    if (v66)
    {
      v67 = v66;
    }

    LODWORD(buffer[0]) = 136446466;
    *(buffer + 4) = v67;
    WORD6(buffer[0]) = 1024;
    *(buffer + 14) = v45;
    v63 = "%{public}s: copy csblob [entitlements]: %{darwin.errno}d";
LABEL_76:
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v63, buffer, 0x12u);
  }

LABEL_77:
  v51 = __error();
LABEL_78:
  *v51 = v47;
LABEL_79:
  free(v52);
  free(v91);
  free(v92);
  return v45;
}

uint64_t _csblob_copy(uint64_t *a1, uint64_t a2, int8x8_t **a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v17 = *(a1 + 1);
  v7 = malloc_type_malloc(0x408uLL, 0x2F48DA65uLL);
  if (!v7)
  {
    _csblob_copy_cold_1(&v18, v19);
  }

  v8 = v7;
  v9 = *(a1 + 5);
  if ((csops_audittoken() & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v10 = *__error();
  if (v10)
  {
    if (v10 != 34)
    {
      goto LABEL_8;
    }

    v11 = malloc_type_realloc(v8, bswap32(v8->u32[1]), 0x22584B97uLL);
    if (!v11)
    {
      v14 = __error();
      goto LABEL_11;
    }

    v12 = v11;
    v13 = *(a1 + 5);
    v8 = v12;
    if (csops_audittoken())
    {
LABEL_8:
      v14 = __error();
      v8 = 0;
LABEL_11:
      v15 = *v14;
      goto LABEL_12;
    }
  }

  v15 = 0;
  *v8 = vrev32_s8(*v8);
  *a3 = v8;
  v8 = 0;
LABEL_12:
  free(v8);
  return v15;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return _os_log_send_and_compose_impl();
}

uint64_t _daemon_demux(void *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 24))
  {
    v6 = codex_copy_system();
    v7 = daemon_open_mountable_unpack();
    if (v7)
    {
      v8 = v7;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = sub_state_alloc(a1, a2, a3);
      dispatch_async_f(v6[12], v10, _daemon_rpc_open_mountable_continue);
      v8 = 36;
    }

    os_release(v6);
    if (!a1)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v8 = daemon_version_unpack();
  if (!v8)
  {
    v11 = a1[7];
    daemon_version_reply_pack();
  }

  rpc_reply(a2, a3, v8);
LABEL_8:
  if (a1)
  {
LABEL_9:
    os_release(a1);
  }

  return v8;
}

void _daemon_rpc_open_mountable_continue(void *a1)
{
  v20 = a1;
  v2 = *a1;
  v3 = codex_copy_system();
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
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
  *__str = 0u;
  v19 = -1;
  v4 = proc_create(a1[4], 0);
  v5 = proc_resolve(v4);
  if (v5)
  {
    v6 = v5;
    v7 = v3[7];
    v8 = *__error();
    v9 = v3[9];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      *buf = 136446466;
      v22 = v10;
      v23 = 1024;
      LODWORD(v24) = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: failed to resolve proc: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v8;
  }

  else
  {
    v11 = proc_entitled(v4, "com.apple.private.security.cryptex.open-mountable");
    if (v11)
    {
      v6 = v11;
      v12 = *(v2 + 16);
      v13 = *__error();
      v14 = *(v2 + 32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "[anonymous]";
        if (v12)
        {
          v15 = v12;
        }

        v16 = *(v4 + 64);
        v17 = *(v4 + 72);
        *buf = 136447234;
        v22 = v15;
        v23 = 2080;
        v24 = "com.apple.private.security.cryptex.install";
        v25 = 2080;
        v26 = v16;
        v27 = 2080;
        v28 = v17;
        v29 = 1024;
        v30 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: proc not entitled for to open mountable: entitlement = %s, proc = %s, signing id = %s: %{darwin.errno}d", buf, 0x30u);
      }

      *__error() = v13;
    }

    else
    {
      snprintf(__str, 0xFFuLL, "%s.XXXXXX", (v4 + 48));
      v6 = codex_mkodtempat(v3, &_codex_state_mnt, __str, &v19);
      if (!v6)
      {
        v18 = a1[5];
        daemon_open_mountable_reply_pack();
      }
    }
  }

  sub_reply_and_consume(&v20, v6);
  if (v4)
  {
    os_release(v4);
  }

  if (v3)
  {
    os_release(v3);
  }
}

void *sm_service_create()
{
  v0 = malloc_type_calloc(1uLL, 0x4A0uLL, 0x8709206FuLL);
  if (!v0)
  {
    sm_service_create_cold_1(&v5, v6);
  }

  v1 = v0;
  v2 = dispatch_group_create();
  v3 = v1[146];
  v1[146] = v2;

  return v1;
}

void sm_service_destroy(void *a1)
{
  v2 = a1[146];
  a1[146] = 0;

  v3 = a1[147];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

CFErrorRef sm_bootstrap_service(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v88 = 0;
  v87 = 0u;
  memset(v86, 0, sizeof(v86));
  if (a1[1] <= 0x4000)
  {
    v5 = *a1;
    v6 = xpc_create_from_plist();
    v7 = v6;
    if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      if (a2[13])
      {
        os_log_type_enabled(a2[13], OS_LOG_TYPE_ERROR);
      }

      *buf = 67109120;
      *&buf[4] = 22;
      v38 = _os_log_send_and_compose_impl();
      Error = createError("sm_bootstrap_service", "sm.m", 373, "com.apple.security.cryptex.posix", 22, 0, v38);
      free(v38);
      goto LABEL_41;
    }

    v11 = *__error();
    v12 = a2[13];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "frobbing plist: %@", buf, 0xCu);
    }

    *__error() = v11;
    v14 = *a2;
    v13 = a2[1];
    v86[0] = *a2;
    v15 = a2[11];
    *&v86[1] = v13;
    *&v86[2] = v15;
    v78 = *(a2 + 24);
    DWORD2(v86[2]) = v78;
    v16 = a2[14];
    *&v87 = v16;
    *(&v87 + 1) = a2[13];
    v88 = a3;
    v17 = malloc_type_malloc(0x400uLL, 0x2F48DA65uLL);
    v18 = v17;
    oslog = *(&v87 + 1);
    if (!v17)
    {
      *v89 = 0;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      memset(buf, 0, sizeof(buf));
      v73 = &_os_log_default;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v74 = __error();
      v75 = strerror(*v74);
      *__str = 136315650;
      v94 = "known-constant allocation";
      v95 = 2048;
      v96 = 1024;
      v97 = 2080;
      v98 = v75;
      _os_log_send_and_compose_impl();

      v76 = _os_crash_msg();
      aks_open_bag_for_uid_at_path_cold_1(v76);
    }

    __snprintf_chk(v17, 0x400uLL, 0, 0x400uLL, "%s", v13);
    if (*(a2 + 20) >= 1)
    {
      v19 = 0;
      while (1)
      {
        *buf = 0;
        v20 = asprintf(buf, ":%s", a2[v19 + 2]);
        if ((v20 + strlen(v18)) >= 1024)
        {
          break;
        }

        __strlcat_chk();
        free(*buf);
        if (++v19 >= *(a2 + 20))
        {
          goto LABEL_17;
        }
      }

      v36 = a2[13];
      if (v36)
      {
        os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
      }

      *__str = 67109120;
      LODWORD(v94) = 22;
      v44 = _os_log_send_and_compose_impl();
      Error = createError("sm_bootstrap_service", "sm.m", 397, "com.apple.security.cryptex.posix", 22, 0, v44);
      free(v44);
      v45 = *buf;
      goto LABEL_91;
    }

LABEL_17:
    *(&v86[1] + 1) = v18;
    v7 = v7;
    v21 = xpc_copy(v7);
    v22 = v16;
    v23 = v14;
    bzero(buf, 0x400uLL);
    bzero(__str, 0x400uLL);
    string = xpc_dictionary_get_string(v21, "Label");
    if (!string)
    {
      v37 = *__error();
      if (os_log_type_enabled(*(&v87 + 1), OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, *(&v87 + 1), OS_LOG_TYPE_ERROR, "missing label", v89, 2u);
      }

      *__error() = v37;
      goto LABEL_88;
    }

    _frobnicate_identifier(v86, "Label", string, buf);
    xpc_dictionary_set_string(v21, "Label", buf);
    __strlcpy_chk();
    v25 = xpc_dictionary_get_string(v21, "Program");
    if (v25)
    {
      _frobnicate_path(v86, "Program", v25, buf);
      xpc_dictionary_set_string(v21, "Program", buf);
      __strlcpy_chk();
      goto LABEL_20;
    }

    v41 = xpc_dictionary_get_array(v21, "ProgramArguments");
    v42 = v41;
    if (v41)
    {
      if (xpc_array_get_count(v41))
      {
        v43 = xpc_array_get_string(v42, 0);
        if (v43)
        {
          if (*v43 == 47)
          {
            _frobnicate_path(v86, "ProgramArguments", v43, buf);
            xpc_array_set_string(v42, 0, buf);
          }

          __strlcpy_chk();

LABEL_20:
          v26 = xpc_dictionary_get_dictionary(v21, "EnvironmentVariables");
          if (!v26)
          {
            empty = xpc_dictionary_create_empty();
            xpc_dictionary_set_value(v21, "EnvironmentVariables", empty);
            v28 = xpc_dictionary_get_dictionary(v21, "EnvironmentVariables");

            v26 = v28;
          }

          xdict = v26;
          xpc_dictionary_set_string(v26, "CRYPTEX_MOUNT_PATH", v13);
          object = xpc_dictionary_get_dictionary(v21, "MachServices");
          if (object)
          {
            *&v91[24] = 0u;
            v92 = 0u;
            *v89 = v23;
            v90 = 0;
            *v91 = v86[1];
            *&v91[12] = *(&v86[1] + 12);
            *&v91[32] = v22;
            *&v92 = oslog;
            *(&v92 + 1) = a3;
            v29 = xpc_copy(object);
            objc_storeStrong(&v90, v29);
            xpc_dictionary_apply_f();
            xpc_dictionary_set_value(v21, "MachServices", v29);
          }

          osloga = xpc_dictionary_get_dictionary(v21, "RemoteServices");
          *(a3 + 1152) = osloga != 0;
          if ((v23 & 8) != 0)
          {
            xpc_dictionary_set_string(v21, "_SubsystemRoot", v18);
          }

          if ((v23 & 0x20) != 0)
          {
            site_packages_path = python_get_site_packages_path();
            snprintf(__str, 0x400uLL, "%s/%s", v13, site_packages_path);
            xpc_dictionary_set_string(xdict, "PYTHONPATH", __str);
          }

          v31 = xpc_dictionary_get_value(v21, "CryptexSessionKeystone");
          if (v31)
          {
            objc_storeStrong((a3 + 1160), v31);
          }

          if (v22)
          {
            v32 = v22;
            v33 = xpc_dictionary_get_dictionary(v32, "CRYPTEX_SESSION");
            v34 = v33;
            if (v33)
            {
              v35 = xpc_copy(v33);
            }

            else
            {
              v35 = xpc_dictionary_create_empty();
            }

            v46 = v35;
            v47 = xpc_dictionary_get_dictionary(v32, string);

            _xpc_plist_merge(v46, v47);
            _xpc_plist_merge(v21, v46);
          }

          *(&v86[0] + 1) = v21;

          v39 = v21;
          if (os_log_type_enabled(a2[13], OS_LOG_TYPE_DEBUG))
          {
            v48 = xpc_copy_description(v7);
            v49 = xpc_copy_description(v39);
            v50 = *__error();
            v51 = a2[13];
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              *&buf[4] = v48;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "frobbed initial plist: %s", buf, 0xCu);
            }

            *__error() = v50;
            v52 = *__error();
            v53 = a2[13];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              *&buf[4] = v49;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "frobbed final plist: %s", buf, 0xCu);
            }

            *__error() = v52;
            free(v49);
            free(v48);
          }

          if ((*a2 & 4) != 0)
          {
            v56 = *__error();
            v57 = a2[13];
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              *&buf[4] = a3;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "dry run; skipping bootstrap: %s", buf, 0xCu);
            }

            v58 = __error();
            Error = 0;
            v40 = 0;
          }

          else
          {
            if ((*a2 & 0x40) != 0)
            {
              if (_xpc_object_has_string_for_key(v39, "_LimitLoadFromBootMode", "rem"))
              {
                v54 = *__error();
                v55 = a2[13];
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "not injecting _LimitLoadToBootMode=>rem; _LimitLoadFromBootMode=>rem already exists", buf, 2u);
                }

                *__error() = v54;
              }

              else
              {
                _xpc_object_set_string_if_absent(v39, "_LimitLoadToBootMode", "rem");
              }
            }

            v62 = xpc_dictionary_get_string(v39, "Label");
            if (!v62)
            {
              os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              *buf = 67109120;
              *&buf[4] = 22;
              v65 = _os_log_send_and_compose_impl();
              Error = createError("sm_bootstrap_service", "sm.m", 449, "com.apple.security.cryptex.posix", 22, 0, v65);
              free(v65);
LABEL_92:
              v40 = 0;
              goto LABEL_93;
            }

            if (*(a2 + 120) == 1)
            {
              v85 = 0;
              job = launchd_session_find_job(v62, v78, a4, &v85);
              v40 = v85;
              if (job)
              {
                v64 = a2[13];
                if (v64)
                {
                  os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
                }

                *buf = 0;
                v71 = _os_log_send_and_compose_impl();
                v72 = createError("sm_bootstrap_service", "sm.m", 459, "com.apple.security.cryptex", 14, job, v71);
LABEL_96:
                Error = v72;
                free(v71);
                CFRelease(job);
                goto LABEL_93;
              }
            }

            else
            {
              v84 = 0;
              job = launchd_session_create_job(v39, v78, a4, &v84);
              v40 = v84;
              if (job)
              {
                v66 = a2[13];
                if (v66)
                {
                  os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
                }

                *buf = 0;
                v71 = _os_log_send_and_compose_impl();
                v72 = createError("sm_bootstrap_service", "sm.m", 468, "com.apple.security.cryptex", 14, job, v71);
                goto LABEL_96;
              }
            }

            v40 = v40;
            *(a3 + 1176) = v40;
            sm_monitor_service(a3, a4, a2[13]);
            v56 = *__error();
            v67 = a2[13];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              *&buf[4] = a3;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "bootstrapped plist: %s", buf, 0xCu);
            }

            v58 = __error();
            Error = 0;
          }

          *v58 = v56;
          goto LABEL_93;
        }

        v59 = *__error();
        v60 = oslog;
        if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_87;
        }

        *v89 = 0;
        v61 = "bad argv0";
        goto LABEL_86;
      }

      v59 = *__error();
      v60 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        v61 = "empty argv";
        goto LABEL_86;
      }
    }

    else
    {
      v59 = *__error();
      v60 = oslog;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        v61 = "missing argv";
LABEL_86:
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, v61, v89, 2u);
      }
    }

LABEL_87:
    *__error() = v59;

LABEL_88:
    v68 = a2[13];
    if (v68)
    {
      os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    }

    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = 22;
    v69 = _os_log_send_and_compose_impl();
    Error = createError("sm_bootstrap_service", "sm.m", 408, "com.apple.security.cryptex.posix", 22, 0, v69);
    v45 = v69;
LABEL_91:
    free(v45);
    v39 = 0;
    goto LABEL_92;
  }

  if (a2[13])
  {
    os_log_type_enabled(a2[13], OS_LOG_TYPE_ERROR);
  }

  *buf = 67109120;
  *&buf[4] = 84;
  v9 = _os_log_send_and_compose_impl();
  Error = createError("sm_bootstrap_service", "sm.m", 366, "com.apple.security.cryptex.posix", 84, 0, v9);
  free(v9);
  v7 = 0;
LABEL_41:
  v39 = 0;
  v40 = 0;
  v18 = 0;
LABEL_93:

  free(v18);
  return Error;
}

void sub_1000188A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  free(v12);
  CFRelease(v13);
  __destructor_8_s8_s48_s56(va);
  free(v11);
  _Unwind_Resume(a1);
}

void sm_monitor_service(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = a1[147];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  v23 = [NSString stringWithUTF8String:a1];
  v6 = a1[145];
  v7 = a1[146];
  v8 = *__error();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = v25[5];
    *buf = 138412546;
    v31 = v9;
    v32 = 2080;
    v33 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Starting process monitoring for %@ (session: %s)", buf, 0x16u);
  }

  *__error() = v8;
  dispatch_group_enter(v7);
  v10 = v25[5];
  if (sm_monitoring_queue_onceToken != -1)
  {
    sm_monitor_service_cold_1();
  }

  v11 = sm_monitoring_queue_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __sm_monitor_service_block_invoke;
  v15[3] = &unk_1000726C0;
  v12 = v5;
  v16 = v12;
  v19 = &v24;
  v21 = a2;
  v13 = v6;
  v17 = v13;
  v20 = v22;
  v14 = v7;
  v18 = v14;
  [v10 monitorOnQueue:v11 withHandler:v15];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_100018C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_s8_s48_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

CFErrorRef sm_unbootstrap_service(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1176);
  v5 = v4;
  if ((*a2 & 4) != 0)
  {
    v10 = *__error();
    v11 = *(a2 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "dry run; skipping unbootstrap: %s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if ((*a2 & 0x10) != 0 || (v6 = launchd_session_remove_job(v4, *(a2 + 104))) == 0)
  {
    v10 = *__error();
    v12 = *(a2 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = a1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "unbootstrapped plist: %s", buf, 0xCu);
    }

LABEL_11:
    Error = 0;
    *__error() = v10;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = v6;
  v9 = *(a2 + 104);
  if (v9)
  {
    os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    *buf = 67109120;
    LODWORD(v17) = v7;
  }

  else
  {
    *buf = 67109120;
    LODWORD(v17) = v6;
  }

  v15 = _os_log_send_and_compose_impl();
  Error = createError("sm_unbootstrap_service", "sm.m", 500, "com.apple.security.cryptex.posix", v8, 0, v15);
  free(v15);
LABEL_12:

  return Error;
}

void *sm_pending_service_create(char a1)
{
  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x8709206FuLL);
  if (!v2)
  {
    sm_pending_service_create_cold_1(&v5, v6);
  }

  v3 = v2;
  v2[1] = sm_service_create();
  *(v3 + 144) = a1;
  return v3;
}

void sm_pending_service_destroy(void **a1)
{
  sm_service_destroy(a1[1]);

  free(a1);
}

CFErrorRef sm_submit_pending_services(uint64_t **a1)
{
  v2 = +[NSMutableArray array];
  while (1)
  {
    a1 = *a1;
    if (!a1)
    {
      break;
    }

    if ((a1[17] & 1) == 0)
    {
      [v2 addObject:a1[1][147]];
    }
  }

  v8 = 0;
  v3 = [OSLaunchdJob submitAll:v2 error:&v8];
  v4 = v8;
  if (v3)
  {
    Error = 0;
  }

  else
  {
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v9 = 67109120;
    v10 = 22;
    v6 = _os_log_send_and_compose_impl();
    Error = createError("sm_submit_pending_services", "sm.m", 551, "com.apple.security.cryptex.posix", 22, v4, v6);
    free(v6);
  }

  return Error;
}

void sm_pending_services_cleanup(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    do
    {
      v3 = v1;
      v1 = *v1;
      sm_service_destroy(v3[1]);
      v4 = *a1;
      if (*a1 == v3)
      {
        v7 = *v4;
        *a1 = v7;
        v5 = a1;
        if (v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4 != v3);
        v6 = *v4;
        *v5 = v6;
        if (v6)
        {
          goto LABEL_6;
        }
      }

      a1[1] = v5;
LABEL_6:
      free(v3);
    }

    while (v1);
  }
}

int *_frobnicate_identifier(uint64_t a1, uint64_t a2, const char *a3, char *__str)
{
  if ((*a1 & 1) == 0)
  {
    return snprintf(__str, 0x80uLL, "%s", a3);
  }

  snprintf(__str, 0x80uLL, "%s.%#llx", a3, *(a1 + 32));
  v9 = *__error();
  v10 = *(a1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = a2;
    v13 = 2080;
    v14 = a3;
    v15 = 2080;
    v16 = __str;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s: %s -> %s", buf, 0x20u);
  }

  result = __error();
  *result = v9;
  return result;
}

int *_frobnicate_path(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  bzero(__str, 0x400uLL);
  v8 = *(a1 + 16);
  if (v8[strlen(v8)] == 47 || *a3 == 47)
  {
    v9 = "";
  }

  else
  {
    v9 = "/";
  }

  snprintf(__str, 0x400uLL, "%s%s%s", v8, v9, a3);
  memset(&v18, 0, sizeof(v18));
  v10 = stat(__str, &v18);
  v11 = *__error();
  v12 = *(a1 + 56);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    v14 = a3;
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Path not in cryptex, not frobnicate path", buf, 2u);
      v14 = a3;
    }
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Path exists in cryptex, frobnicate path", buf, 2u);
    }

    v14 = __str;
  }

  *__error() = v11;
  strlcpy(a4, v14, 0x400uLL);
  v15 = *__error();
  v16 = *(a1 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = a2;
    v21 = 2080;
    v22 = a3;
    v23 = 2080;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: %s -> %s", buf, 0x20u);
  }

  result = __error();
  *result = v15;
  return result;
}

void _frobnicate_machservices_apply(const char *a1, void *a2, uint64_t a3)
{
  memset(v6, 0, sizeof(v6));
  v5 = a2;
  _frobnicate_identifier(a3, "MachServices", a1, v6);
  xpc_dictionary_set_value(*(a3 + 8), v6, v5);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __sm_monitor_service_block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *__error();
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = *(a1 + 72);
    *buf = 138543618;
    v31 = v8;
    v32 = 2082;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Monitor event for %{public}@ (session: %{public}s)", buf, 0x16u);
  }

  *__error() = v6;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      v11 = session_list_get_queue(v10);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __sm_monitor_service_block_invoke_27;
      v25[3] = &unk_100072698;
      v12 = v5;
      v13 = *(a1 + 56);
      v26 = v12;
      v28 = v13;
      v14 = *(a1 + 40);
      v15 = *(a1 + 72);
      v27 = v14;
      v29 = v15;
      dispatch_async(v11, v25);
    }

    if (a3 == 113 || a3 == 3)
    {
      v16 = *__error();
      v17 = *(a1 + 32);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543362;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Shutting down process monitoring for %{public}@", buf, 0xCu);
      }

      *__error() = v16;
      [*(*(*(a1 + 56) + 8) + 40) cancelMonitor];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = 0;

      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;

      dispatch_group_leave(*(a1 + 48));
    }
  }

  else
  {
    v23 = *__error();
    v24 = *(a1 + 32);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Monitor called on job that has already been released", buf, 2u);
    }

    *__error() = v23;
  }
}

void __sm_monitor_service_block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v2;
  v6 = v3;
  if (xpc_get_type(v6) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v6);
    uint64 = 0;
    v8 = 0;
  }

  else if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    v8 = xpc_dictionary_get_BOOL(v6, "StopOnFailure");
    value = 0;
    uint64 = xpc_dictionary_get_uint64(v6, "StopOnExitCode");
  }

  else
  {
    if (v6 && xpc_get_type(v6) != &_xpc_type_null && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __sm_monitor_service_block_invoke_27_cold_1();
    }

    uint64 = 0;
    v8 = 0;
    value = 0;
  }

  v10 = [v5 handle];
  v11 = [v10 UUIDString];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    __sm_monitor_service_block_invoke_27_cold_2(v11, v4);
  }

  if ([v4 state] == 4)
  {
    v12 = [v4 lastExitStatus];
    v13 = [v12 wait4Status];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = [v11 UTF8String];
      v20 = 1024;
      v21 = (v13 & 0x7F) == 0;
      v22 = 1024;
      v23 = HIBYTE(v13);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cryptex Session process (uuid %s) exited (%d) with code: %hhu", &v18, 0x18u);
    }

    if (value)
    {
      uint64 = HIBYTE(v13);
LABEL_25:
      v14 = uint64;
      v15 = v1;
      v16 = 2;
      goto LABEL_26;
    }

    if (uint64 && HIBYTE(v13) == uint64)
    {
      goto LABEL_25;
    }

    if ((v13 & 0xFF00) != 0 && v8)
    {
      v15 = v1;
      v16 = 2;
      v14 = HIBYTE(v13);
      goto LABEL_26;
    }
  }

  else if ([v4 state] == 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = [v11 UTF8String];
      v20 = 1024;
      v21 = [v4 lastSpawnError];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cryptex Session process (uuid %s) failed to launch with lastSpawnError: %d", &v18, 0x12u);
    }

    if (value || v8 || uint64)
    {
      v14 = [v4 lastSpawnError];
      v15 = v1;
      v16 = 1;
LABEL_26:
      session_list_shutdown(v15, v16, v14);
    }
  }
}

void __sm_monitoring_queue_block_invoke(id a1)
{
  sm_monitoring_queue_queue = dispatch_queue_create("com.apple.security.cryptexd.cryptex.jobmonitor", 0);

  _objc_release_x1();
}

uint64_t system_supports_restricted_exec_mode(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("security.codesigning.config", &v4, &v3, 0, 0))
  {
    return *__error();
  }

  result = 0;
  if (a1)
  {
    *a1 = (v4 & 0x2000000) != 0;
  }

  return result;
}

uint64_t dyld_shared_region_increment()
{
  v1 = 1;
  result = sysctlbyname("vm.shared_region_control", 0, 0, &v1, 4uLL);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t dyld_shared_region_read(_DWORD *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("vm.shared_region_control", &v4, &v3, 0, 0))
  {
    return *__error();
  }

  result = 0;
  if (a1)
  {
    *a1 = v4;
  }

  return result;
}

void _codex_list_installed_callback(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  a4[2](a4);
}

id event_server_copy_system()
{
  if (event_server_copy_system_onceToken != -1)
  {
    event_server_copy_system_cold_1();
  }

  v1 = event_server_copy_system_server;

  return v1;
}

void __event_server_copy_system_block_invoke(id a1)
{
  event_server_copy_system_server = [[EventServer alloc] initWithEventStream:"com.apple.security.cryptex.events"];

  _objc_release_x1();
}

uint64_t event_server_broadcast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [NSString stringWithUTF8String:a3];
  v9 = [v7 broadcastEvent:a2 forCryptex:v8 withInfo:a4];

  if (v9)
  {
    v10 = *__error();
    v11 = [v7 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218754;
      v15 = a2;
      v16 = 2080;
      v17 = a3;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = 72;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to broadcast event 0x%llx about cryptex '%s': %@: %{darwin.errno}d", &v14, 0x26u);
    }

    *__error() = v10;
    v12 = 72;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t codex_init()
{
  if (_dispatch_is_multithreaded())
  {
    v0 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "init routine called after transition to multithreaded", v3, 2u);
    }

    *__error() = v0;
  }

  v1 = codex_create("system", 0);
  daemon_get_main_queue();
  cryptex_set_target_queue();
  result = cryptex_activate();
  _system = v1;
  return result;
}

void _codex_dealloc(uint64_t a1)
{
  if (*(a1 + 1368))
  {
    _codex_dealloc_cold_1(&v5, v6);
  }

  for (i = 0; i != 80; i += 8)
  {
    v3 = (*(&_states + i))[2];
    close_drop_np();
  }

  dispatch_release(*(a1 + 104));
  dispatch_release(*(a1 + 112));
  dispatch_release(*(a1 + 96));
  v4 = *(a1 + 1360);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 1360));
  }

  object_proto_destroy(a1 + 56);
}

uint64_t codex_create(const char *a1, uint64_t a2)
{
  v4 = _codex_alloc();
  *(v4 + 80) = a2;
  *(v4 + 88) = v4;
  *(v4 + 96) = dispatch_workloop_create("com.apple.security.cryptexd.codex.iodq");
  *(v4 + 104) = dispatch_group_create();
  *(v4 + 112) = dispatch_group_create();
  hash_init((v4 + 144));
  hash_init((v4 + 448));
  hash_init((v4 + 752));
  hash_init((v4 + 1056));
  *(v4 + 120) = 0;
  *(v4 + 128) = v4 + 120;
  *(v4 + 1376) = 0;
  *(v4 + 1384) = v4 + 1376;
  *(v4 + 1392) = -1;
  *(v4 + 1400) = -1;
  *(v4 + 1408) = -1;
  *(v4 + 1416) = -1;
  *(v4 + 1360) = 0;
  object_proto_init(v4 + 56, "com.apple.security.cryptexd", "codex");
  object_set_name(v4 + 56, a1);
  dispatch_group_enter(*(v4 + 104));
  daemon_get_main_queue();
  cryptex_init();
  return v4;
}

void _codex_init(uint64_t a1)
{
  for (i = 0; i != 80; i += 8)
  {
    v3 = *(&_states + i);
    v4 = daemon_copy();
    v5 = v4;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *__str = 0u;
    v29 = 0u;
    v27 = -1;
    v6 = v3[1];
    if (v6)
    {
      v7 = *(a1 + 1392);
      v8 = *v3;
      if ((*v3 & 2) != 0)
      {
        if ((v8 & 4) == 0)
        {
          if (v8)
          {
            v7 = v4[23];
          }

          else
          {
            v7 = v4[22];
          }
        }
      }

      else if (v8)
      {
        v7 = *(a1 + 1396);
      }
    }

    else
    {
      v7 = v4[22];
      v6 = __str;
      snprintf(__str, 0xFFuLL, "codex.%s", *(a1 + 56));
      if (*v3)
      {
        v7 = v5[23];
        v6 = __str;
      }
    }

    v9 = *(a1 + 72);
    bzero(v55, 0x400uLL);
    memset(&v54, 0, sizeof(v54));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (fstat(v7, &v54) == -1)
      {
        v15 = *__error();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v16 = *__error();
          *buf = 136315650;
          *&buf[4] = "rootfd";
          v44 = 1024;
          v45 = v7;
          v46 = 1024;
          LODWORD(v47) = v16;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", buf, 0x18u);
        }

        *__error() = v15;
      }

      else
      {
        if (fcntl(v7, 50, v55))
        {
          v10 = __error();
          v11 = strerror(*v10);
          snprintf(v55, 0x400uLL, "[%s]", v11);
        }

        v12 = v54.st_mode >> 12;
        v13 = "[unknown]";
        if (v12 != 7)
        {
          v13 = off_100072D88[v12 ^ 8];
        }

        v14 = os_flagset_copy_string();
        v26 = *__error();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = "rootfd";
          v44 = 1024;
          v45 = v7;
          v46 = 2080;
          v47 = v13;
          v48 = 2048;
          st_size = v54.st_size;
          v50 = 2080;
          v51 = v14;
          v52 = 2080;
          v53 = v55;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", buf, 0x3Au);
        }

        *__error() = v26;
        free(v14);
      }
    }

    v17 = _opendirat(v7, v6, 1049344, 0x1FFu, &v27);
    if (v17)
    {
      v25 = v17;
      *buf = 0;
      memset(v55, 0, 80);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v54.st_dev = 136315394;
      *&v54.st_mode = v6;
      WORD2(v54.st_ino) = 1024;
      *(&v54.st_ino + 6) = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(a1 + v3[2]) = v27;
    if (v5)
    {
      os_release(v5);
    }
  }

  dispatch_group_enter(*(a1 + 104));
  dispatch_group_notify_f(*(a1 + 104), *(a1 + 24), a1, _codex_import_initial_done);
  _codex_import_initial_prep(a1, &_codex_state_cryptex);
  _codex_import_initial_prep(a1, &_codex_state_live);
  dispatch_group_leave(*(a1 + 104));
  v18 = 0;
  v54.st_dev = -1;
  do
  {
    v19 = (*(&_states + v18))[2];
    LODWORD(v55[0]) = *(a1 + v19);
    *(a1 + v19) = claimfd_np();
    v18 += 8;
  }

  while (v18 != 80);
  v20 = codex_openat(a1, &_codex_state_run, "lockdown", 0, 0, &v54);
  if (v20 != 2)
  {
    if (v20)
    {
      _codex_init_cold_2(__str, v55);
    }

    *(a1 + 80) |= 4uLL;
    v21 = *(a1 + 56);
    v22 = *__error();
    v23 = *(a1 + 72);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = "[anonymous]";
      if (v21)
      {
        v24 = v21;
      }

      LODWORD(v55[0]) = 136446210;
      *(v55 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s: system codex is locked down", v55, 0xCu);
    }

    *__error() = v22;
  }

  if (v54.st_dev != -1 && close(v54.st_dev) == -1)
  {
    daemon_init_cold_13(__str, v55);
  }

  dispatch_group_leave(*(a1 + 104));
}

uint64_t codex_openat(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5, _DWORD *a6)
{
  v14 = openat(*(a1 + *(a2 + 16)), a3, a4, a5);
  if (v14 < 0)
  {
    v8 = *__error();
    v9 = *(a1 + 56);
    v10 = *__error();
    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      *buf = 136446466;
      v16 = v12;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: openat: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v10;
  }

  else
  {
    v8 = 0;
    *a6 = _xferfd_unguarded(&v14);
  }

  return v8;
}

uint64_t codex_mkodtempat(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v12 = -1;
  v6 = _mkodtempat(*(a1 + *(a2 + 16)), a3, &v12);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = *__error();
    v9 = *(a1 + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = "[anonymous]";
      if (v7)
      {
        v10 = v7;
      }

      *buf = 136446466;
      v14 = v10;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: mkodtempat: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v8;
  }

  else
  {
    *a4 = _xferfd_unguarded(&v12);
  }

  return v6;
}

void codex_install(void *a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = a2[13];
  asset = cryptex_core_get_asset();
  v14 = ctx_new(a1, 0x50uLL);
  v14[4] = os_retain(a2);
  v14[7] = a5;
  v14[8] = a6;
  *(v14 + 18) = a4;
  v14[6] = _codex_activate(a1, "install");
  if (a3)
  {
    v15 = os_retain(a3);
  }

  else
  {
    v16 = a2[13];
    v15 = cryptex_scrivener_create();
    v17 = a2[13];
    if (cryptex_core_is_cryptex1())
    {
      v15[10] |= 8uLL;
    }
  }

  if (!*(a2[13] + 216) || cryptex_core_get_asset())
  {
    goto LABEL_7;
  }

  v26 = openat(*(asset + 16), *(&_cryptex_asset_type_cx1p + 5), 514, 420);
  if (v26 < 0)
  {
    v35 = *__error();
    v36 = a1[7];
    v37 = *__error();
    v38 = a1[9];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v39 = "[anonymous]";
    if (v36)
    {
      v39 = v36;
    }

    *buf = 136446466;
    v45 = v39;
    v46 = 1024;
    v47 = v35;
    v40 = "%{public}s: openat: %{darwin.errno}d";
    goto LABEL_38;
  }

  v27 = v26;
  v28 = *(a2[13] + 216);
  v29 = cryptex_core_cx1_write_to_file();
  if (v29)
  {
    v30 = v29;
    v31 = a1[7];
    v32 = *__error();
    v33 = a1[9];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = "[anonymous]";
      if (v31)
      {
        v34 = v31;
      }

      *buf = 136446466;
      v45 = v34;
      v46 = 1024;
      v47 = v30;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write Cryptex1 properties to file.: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v32;
LABEL_40:
    cryptex_target_async_f();
    goto LABEL_19;
  }

  if (fchmod(v27, 0x124u))
  {
    v35 = *__error();
    v41 = a1[7];
    v37 = *__error();
    v38 = a1[9];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v42 = "[anonymous]";
    if (v41)
    {
      v42 = v41;
    }

    *buf = 136446466;
    v45 = v42;
    v46 = 1024;
    v47 = v35;
    v40 = "%{public}s: fchmod: %{darwin.errno}d";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v40, buf, 0x12u);
LABEL_39:
    *__error() = v37;
    if (!v35)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

  cryptex_asset_new();
  v43 = a2[13];
  cryptex_core_set_asset();
LABEL_7:
  cryptex_set_target_object();
  v18 = a2[13];
  v19 = cryptex_core_get_asset();
  v20 = a1[7];
  v21 = *__error();
  v22 = a1[9];
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v23)
    {
      v24 = "[anonymous]";
      if (v20)
      {
        v24 = v20;
      }

      *buf = 136446210;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}s: using existing im4m", buf, 0xCu);
    }

    *__error() = v21;
    cryptex_scrivener_read_signature();
  }

  else
  {
    if (v23)
    {
      v25 = "[anonymous]";
      if (v20)
      {
        v25 = v20;
      }

      *buf = 136446210;
      v45 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}s: will personalize", buf, 0xCu);
    }

    *__error() = v21;
    cryptex_scrivener_sign();
  }

  cryptex_activate();
LABEL_19:
  if (v15)
  {
    os_release(v15);
  }
}

uint64_t _codex_activate(uint64_t a1, uint64_t a2)
{
  daemon_assert_main_queue();
  ++*(a1 + 1368);
  v4 = *(a1 + 56);
  v5 = *__error();
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    v8 = *(a1 + 1368);
    if (v4)
    {
      v7 = v4;
    }

    v10 = 136446978;
    v11 = v7;
    v12 = 2080;
    v13 = a2;
    v14 = 1024;
    v15 = v8 - 1;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: activation: %s: %u -> %u", &v10, 0x22u);
  }

  *__error() = v5;
  if (!*(a1 + 1368))
  {
    _codex_activate_cold_1();
  }

  return os_transaction_create();
}

void _codex_install_continue(uint64_t a1, uint64_t a2, __CFError *a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = *(a4[4] + 104);
  daemon_assert_main_queue();
  if (*(v7 + 56))
  {
    v9 = *(v7 + 56);
  }

  else
  {
    v9 = "[anonymous]";
  }

  v10 = *__error();
  v11 = *(v7 + 72);
  if (a3)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = v9;
      v24 = 2112;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: protex personalization: %@", buf, 0x16u);
    }

    *__error() = v10;
    a4[2] = CFRetain(a3);
    cryptex_target_async_f();
    return;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: protex personalization [no error]", buf, 0xCu);
  }

  *__error() = v10;
  a4[2] = 0;
  if (*(a2 + 264) && cryptex_core_get_info_asset())
  {
    v12 = *(a2 + 264);
    v13 = cryptex_core_metadata_matches();
    if (v13)
    {
      Error = v13;
    }

    else
    {
      if (*(a2 + 32))
      {
        os_log_type_enabled(*(a2 + 32), OS_LOG_TYPE_ERROR);
        v19 = *(a2 + 16);
        if (!v19)
        {
          v19 = "[anonymous]";
        }

        *buf = 136446210;
        v23 = v19;
      }

      else
      {
        v20 = *(a2 + 16);
        if (!v20)
        {
          v20 = "[anonymous]";
        }

        *buf = 136446210;
        v23 = v20;
      }

      v21 = _os_log_send_and_compose_impl();
      Error = createError("_codex_im4m_matches_cryptex", "codex.c", 1262, "com.apple.security.cryptex", 12, 0, v21);
      free(v21);
      if (!Error)
      {
        goto LABEL_22;
      }
    }

    v15 = *(v7 + 56);
    v16 = *__error();
    v17 = *(v7 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = "[anonymous]";
      }

      *buf = 136446466;
      v23 = v18;
      v24 = 2112;
      v25 = Error;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: Signature metadata does not match cryptex. Was the wrong personalization ticket provided?: %@", buf, 0x16u);
    }

    *__error() = v16;
  }

  else
  {
    Error = 0;
  }

LABEL_22:
  cryptex_core_attach_signature();
  dispatch_async_f(*(v7 + 96), a4, _codex_install_continue2);
  if (Error)
  {
    CFRelease(Error);
  }
}

void _codex_install_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  daemon_assert_main_queue();
  (*(a1 + 64))(v2, v4, v3, v7);
  _codex_deactivate(v2, v6);
  os_release(v5);
  ctx_destroy(a1);
  if (v4)
  {
    os_release(v4);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

CFIndex codex_bootstrap_launch_agents_to_session(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  v5 = *__error();
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = "[anonymous]";
    }

    v18 = 136446210;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: Waiting to search the codex for LaunchAgents", &v18, 0xCu);
  }

  *__error() = v5;
  dispatch_group_wait(*(a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(a1 + 56);
  v9 = *__error();
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = "[anonymous]";
    }

    v18 = 136446466;
    v19 = v11;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: Searching the codex for LaunchAgents - have uid of: %u.", &v18, 0x12u);
  }

  v12 = 0;
  *__error() = v9;
  while (1)
  {
    v13 = *(a1 + 144 + 8 * v12);
    if (v13)
    {
      break;
    }

LABEL_15:
    if (++v12 == 37)
    {
      return 0;
    }
  }

  while (1)
  {
    v14 = quire_attach_launch_agents();
    if (v14)
    {
      break;
    }

    v13 = *(v13 + 8);
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v16 = v14;
  TopLevelPosixError = _CFErrorGetTopLevelPosixError(v14);
  CFRelease(v16);
  return TopLevelPosixError;
}

int *codex_unbootstrap_launch_agents_from_session(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  v5 = *__error();
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v12 = 136446466;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: Searching the codex for LaunchAgents - have uid of: %u.", &v12, 0x12u);
  }

  result = __error();
  v9 = 0;
  *result = v5;
  v10 = a1 + 144;
  do
  {
    for (i = *(v10 + 8 * v9); i; i = *(i + 8))
    {
      result = quire_detach_launch_agents(i - 80);
    }

    ++v9;
  }

  while (v9 != 37);
  return result;
}

uint64_t codex_install_cryptex(void *a1, void *a2, uint64_t a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = a3;
  v5[5] = os_retain(a2);

  return cryptex_async_f();
}

void _codex_install_cryptex_continue(void **a1)
{
  v2 = *a1;
  v3 = a1[4];
  if ((*(*a1 + 80) & 4) != 0)
  {
    if (v2[9])
    {
      os_log_type_enabled(v2[9], OS_LOG_TYPE_ERROR);
    }

    v2[7];
    v5 = _os_log_send_and_compose_impl();
    Error = createError("_codex_install_cryptex_continue", "codex.c", 2959, "com.apple.security.cryptex.posix", 58, 0, v5);
    free(v5);
    a1[2] = Error;
    (*(v3 + 48))(v2, 0, Error, v3);
    v4 = 0;
  }

  else
  {
    v4 = protex_create(a1[5], v2, 0);
    cryptex_set_target_object();
    protex_stage(v4, v3, _protex_stage_install_callback);
  }

  os_release(a1[5]);
  ctx_destroy(a1);
  if (v4)
  {
    os_release(v4);
  }
}

uint64_t codex_mount(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ctx_new(a1, 0x48uLL);
  a2[6] = 1;
  v8[4] = os_retain(a2);
  v8[5] = 0;
  v8[7] = a4;
  v8[8] = a5;
  v8[6] = 0;

  return cryptex_async_f();
}

void _codex_mount_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  if (cryptex_core_is_cryptex1())
  {
    a1[5] = protex_create(a1[4], v2, 1);
    cryptex_set_target_object();
    v4 = a1[5];

    protex_stage(v4, a1, _codex_mount_continue2);
  }

  else
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v2 + 56);
    v5 = _os_log_send_and_compose_impl();
    Error = createError("_codex_mount_continue", "codex.c", 3123, "com.apple.security.cryptex.posix", 22, 0, v5);
    free(v5);
    if (Error)
    {
      a1[2] = Error;
      cryptex_target_async_f();
    }
  }
}

uint64_t codex_unmount(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ctx_new(a1, 0xD8uLL);
  v10 = *(a3 + 112);
  *(v9 + 8) = *(a3 + 96);
  *(v9 + 9) = v10;
  *(v9 + 10) = *(a3 + 128);
  v9[22] = *(a3 + 144);
  v9[23] = a2;
  v11 = *(a3 + 48);
  *(v9 + 4) = *(a3 + 32);
  *(v9 + 5) = v11;
  v12 = *(a3 + 80);
  *(v9 + 6) = *(a3 + 64);
  *(v9 + 7) = v12;
  v13 = *(a3 + 16);
  *(v9 + 2) = *a3;
  *(v9 + 3) = v13;
  v9[25] = a4;
  v9[26] = a5;
  v9[24] = 0;

  return cryptex_async_f();
}

void _codex_unmount_continue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 184);
  v4 = codex_copy_quire(*a1, *(a1 + 32), *(a1 + 48));
  v5 = v4;
  if (v4)
  {
    v6 = v4[25];
    if (cryptex_core_is_cryptex1())
    {
      v7 = v5[25];
      cryptex1_properties = cryptex_core_get_cryptex1_properties();
      if (cryptex1_properties && (*(cryptex1_properties + 64) & 1) != 0)
      {
        *(a1 + 192) = os_retain(v5);
        codex_unbootstrap(v2, v5, v3 & 1 | 4, a1, _codex_unmount_continue2);
LABEL_22:
        os_release(v5);
        return;
      }

      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      }

      *(v2 + 56);
      v10 = _os_log_send_and_compose_impl();
      v11 = 3249;
    }

    else
    {
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      }

      *(v2 + 56);
      v10 = _os_log_send_and_compose_impl();
      v11 = 3242;
    }

    v12 = 22;
  }

  else
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      if (*(v2 + 56))
      {
        v9 = *(v2 + 56);
      }

      v14 = *(a1 + 32);
      v16 = **(a1 + 48);
    }

    else
    {
      *(v2 + 56);
      v15 = *(a1 + 32);
      v17 = **(a1 + 48);
    }

    v10 = _os_log_send_and_compose_impl();
    v11 = 3236;
    v12 = 2;
  }

  Error = createError("_codex_unmount_continue", "codex.c", v11, "com.apple.security.cryptex.posix", v12, 0, v10);
  free(v10);
  if (Error)
  {
    *(a1 + 16) = Error;
    cryptex_target_async_f();
  }

  if (v5)
  {
    goto LABEL_22;
  }
}

void codex_uninstall(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = ctx_new(a1, 0x50uLL);
  v8[5] = os_retain(a2);
  v8[7] = a3;
  v8[8] = a4;
  v8[6] = _codex_activate(a1, "uninstall");
  v9 = a1[12];

  dispatch_async_f(v9, v8, _codex_uninstall_continue);
}

uint64_t _codex_uninstall_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  v4 = *(v3 + 200);
  bzero(v15, 0x400uLL);
  dispatch_assert_queue_V2(*(v2 + 96));
  if ((*(v3 + 176) & 0x10) != 0)
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v2 + 56);
    v9 = _os_log_send_and_compose_impl();
    v10 = 1366;
    v11 = 45;
  }

  else if (*(v3 + 480))
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v2 + 56);
    v9 = _os_log_send_and_compose_impl();
    v10 = 1373;
    v11 = 16;
  }

  else
  {
    asset = cryptex_core_get_asset();
    if (!asset)
    {
      _codex_uninstall_continue_cold_1();
    }

    v6 = *(asset + 16);
    v7 = realpath_np();
    if (v7)
    {
      v8 = v7;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      }

      *(v2 + 56);
      v9 = _os_log_send_and_compose_impl();
      v10 = 1385;
    }

    else
    {
      v12 = _rmrfdir(v15);
      if ((v12 & 0xFFFFFFFD) == 0)
      {
        a1[2] = 0;
        return cryptex_async_f();
      }

      v8 = v12;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      }

      *(v2 + 56);
      v9 = _os_log_send_and_compose_impl();
      v10 = 1392;
    }

    v11 = v8;
  }

  Error = createError("_codex_uninstall_continue", "codex.c", v10, "com.apple.security.cryptex.posix", v11, 0, v9);
  free(v9);
  a1[2] = Error;
  if (Error)
  {
    return cryptex_target_async_f();
  }

  return cryptex_async_f();
}