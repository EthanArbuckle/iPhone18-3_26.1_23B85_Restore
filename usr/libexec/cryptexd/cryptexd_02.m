void sub_100031178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, __int16 a14, char a15, char a16, __int16 a17, char a18, char a19, __int16 a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  free(v42);
  __destructor_8_s24_s120_s128_s136(v43 - 256);
  __os_cleanup_close_0(&a21);
  _Unwind_Resume(a1);
}

id _mount_sub_log()
{
  if (_mount_sub_log_onceToken != -1)
  {
    _mount_sub_log_cold_1();
  }

  v1 = _mount_sub_log_logHandle;

  return v1;
}

void _mount_sub_mount_cryptex_reply(void *a1, __CFError *a2, const char *a3, const char *a4, const char *a5)
{
  v9 = a1;
  reply = xpc_dictionary_create_reply(v9);
  v11 = xpc_dictionary_get_remote_connection(v9);

  if (a3)
  {
    xpc_dictionary_set_string(reply, "MOUNT:NAME_STR", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_string(reply, "MOUNT:VERSION_STR", a4);
  }

  if (a5)
  {
    xpc_dictionary_set_string(reply, "MOUNT:MOUNTPATH_STR", a5);
  }

  if (a2)
  {
    v12 = _xpc_cferr_to_dictionary(a2);
    xpc_dictionary_set_value(reply, "MOUNT:ERROR_DICT", v12);
  }

  buffer[0] = *"unknown";
  buffer[1] = *&algn_100059768[8];
  pid = xpc_connection_get_pid(v11);
  proc_name(pid, buffer, 0x20u);
  v14 = *__error();
  v15 = _mount_sub_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      v16 = xpc_connection_get_pid(v11);
    }

    else
    {
      v16 = -1;
    }

    v17 = 136315650;
    v18 = buffer;
    v19 = 1024;
    v20 = v16;
    v21 = 2114;
    v22 = reply;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Replying to mount client: %{public}@", &v17, 0x1Cu);
  }

  *__error() = v14;
  xpc_dictionary_send_reply();
}

uint64_t __os_cleanup_close_0(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      __os_cleanup_close_cold_1_0(&v2, v3);
    }
  }

  return result;
}

uint64_t _mount_sub_authorize(void *a1, uint64_t a2)
{
  v3 = a1;
  if (cryptex_xpc_connection_is_entitled(v3, a2))
  {
    v4 = 0;
  }

  else
  {
    buffer[0] = *"unknown";
    buffer[1] = *&algn_100059768[8];
    pid = xpc_connection_get_pid(v3);
    proc_name(pid, buffer, 0x20u);
    v6 = *__error();
    v7 = _mount_sub_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v8 = xpc_connection_get_pid(v3);
      }

      else
      {
        v8 = -1;
      }

      v10 = 136315906;
      v11 = buffer;
      v12 = 1024;
      v13 = v8;
      v14 = 2080;
      v15 = a2;
      v16 = 1024;
      v17 = 144;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Client lacks entitlement '%s': %{darwin.errno}d", &v10, 0x22u);
    }

    *__error() = v6;
    v4 = 144;
  }

  return v4;
}

void _mount_sub_mount_cryptex_continue(void *a1, void *a2, __CFError *a3, void *a4)
{
  v13 = a1;
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    attr = quire_get_attr(v7);
    mntpath = quire_get_mntpath(v8);
    if (attr)
    {
      v11 = *attr;
      v12 = **(attr + 16);
      goto LABEL_6;
    }
  }

  else
  {
    mntpath = 0;
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  _mount_sub_mount_cryptex_reply(a4, a3, v11, v12, mntpath);
}

void _mount_sub_unmount_cryptex_reply(void *a1, __CFError *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  v5 = xpc_dictionary_get_remote_connection(v3);

  if (a2)
  {
    v6 = _xpc_cferr_to_dictionary(a2);
    xpc_dictionary_set_value(reply, "UNMOUNT:ERROR_DICT", v6);
  }

  buffer[0] = *"unknown";
  buffer[1] = *&algn_100059768[8];
  pid = xpc_connection_get_pid(v5);
  proc_name(pid, buffer, 0x20u);
  v8 = *__error();
  v9 = _mount_sub_log();
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Replying to unmount client: %{public}@", &v11, 0x1Cu);
  }

  *__error() = v8;
  xpc_dictionary_send_reply();
}

id __copy_constructor_8_8_t0w24_s24_t32w88_s120_s128_s136_t144w2(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 3);
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  v7 = a2[5];
  v6 = a2[6];
  v8 = a2[4];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 64) = v8;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 16);
  result = *(a2 + 17);
  *(a1 + 136) = result;
  *(a1 + 144) = *(a2 + 72);
  return result;
}

void _mount_sub_unmount_cryptex_continue(uint64_t a1, uint64_t a2, __CFError *a3, void *a4)
{
  _mount_sub_unmount_cryptex_reply(a4, a3);
}

void __destructor_8_s24_s120_s128_s136(uint64_t a1)
{
  v2 = *(a1 + 136);
}

void ___mount_sub_log_block_invoke(id a1)
{
  _mount_sub_log_logHandle = os_log_create("com.apple.libcryptex", "mount_sub");

  _objc_release_x1();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return _os_log_send_and_compose_impl();
}

BOOL cryptex_xpc_connection_is_entitled(uint64_t a1, uint64_t a2)
{
  v3 = xpc_connection_copy_entitlement_value();
  v4 = v3;
  if (v3)
  {
    if (xpc_get_type(v3) != &_xpc_type_BOOL)
    {
      v5 = *__error();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Entitlement is not a BOOLean: %s", &v8, 0xCu);
      }

      *__error() = v5;
    }

    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    value = 0;
  }

  return value;
}

void sub_recv()
{
  v0 = daemon_copy();
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
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
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v71 = 32;
  v1 = xpc_pipe_receive();
  v2 = *(v0 + 2);
  v3 = *__error();
  v4 = *(v0 + 4);
  if (!v1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = "[anonymous]";
      if (v2)
      {
        v8 = v2;
      }

      *buf = 136446466;
      *&buf[4] = v8;
      v65 = 2112;
      v66 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: msg recv: %@", buf, 0x16u);
    }

    *__error() = v3;
    inited = rpc_init_local(&v94, 0, *(v0 + 4));
    v6 = inited;
    if (inited)
    {
      TopLevelPosixError = _CFErrorGetTopLevelPosixError(inited);
      if (TopLevelPosixError)
      {
        v1 = TopLevelPosixError;
        v11 = *(v0 + 2);
        v3 = *__error();
        v12 = *(v0 + 4);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_7;
        }

        v13 = "[anonymous]";
        if (v11)
        {
          v13 = v11;
        }

        *buf = 136446466;
        *&buf[4] = v13;
        v65 = 1024;
        LODWORD(v66) = v1;
        v14 = "%{public}s: init msg failed: %{darwin.errno}d";
        v15 = v12;
        v16 = OS_LOG_TYPE_FAULT;
        v17 = 18;
        goto LABEL_19;
      }
    }

    sub_log_invoke(&v94, "received ipc");
    if (v95 >= 3)
    {
      v18 = *(v0 + 2);
      v19 = *__error();
      v20 = *(v0 + 4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = "[anonymous]";
        if (v18)
        {
          v21 = v18;
        }

        *buf = 136446466;
        *&buf[4] = v21;
        v65 = 2048;
        v66 = v95;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%{public}s: bad subsystem id: %llu", buf, 0x16u);
      }

      v1 = 72;
      goto LABEL_56;
    }

    rpc_init_reply(&v71, &v94);
    v22 = _NSGetMachExecuteHeader();
    *buf = 0;
    v23 = getsectdatafromheader_64(v22, "__DATA_CONST", "__subsystem", buf);
    v24 = &v23[_dyld_get_image_slide()];
    v25 = _NSGetMachExecuteHeader();
    *buf = 0;
    v26 = getsectdatafromheader_64(v25, "__DATA_CONST", "__subsystem", buf);
    if (v24 >= &v26[_dyld_get_image_slide() + *buf])
    {
LABEL_29:
      sub_recv_cold_1();
    }

    while (1)
    {
      v27 = *v24;
      if (v95 == **v24)
      {
        break;
      }

      v24 += 8;
      v28 = _NSGetMachExecuteHeader();
      *buf = 0;
      v29 = getsectdatafromheader_64(v28, "__DATA_CONST", "__subsystem", buf);
      if (v24 >= &v29[_dyld_get_image_slide() + *buf])
      {
        goto LABEL_29;
      }
    }

    v30 = *(v0 + 2);
    v31 = *__error();
    v32 = *(v0 + 4);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = "[anonymous]";
      v34 = v27[2];
      if (v30)
      {
        v33 = v30;
      }

      *buf = 136446466;
      *&buf[4] = v33;
      v65 = 2080;
      v66 = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s: found subsystem: %s", buf, 0x16u);
    }

    *__error() = v31;
    if (v27[1] == v96)
    {
      if (*(&v95 + 1) >= v27[5])
      {
        v46 = *(v0 + 2);
        v19 = *__error();
        v60 = *(v0 + 4);
        v1 = 76;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          v47 = "[anonymous]";
          if (v46)
          {
            v47 = v46;
          }

          v48 = v27[2];
          *buf = 136446978;
          *&buf[4] = v47;
          v65 = 2080;
          v66 = v48;
          v67 = 2048;
          v68 = *(&v95 + 1);
          v69 = 1024;
          v70 = 76;
          v45 = "%{public}s: bad routine id: subsystem = %s, rpc = %llu: %{darwin.errno}d";
          goto LABEL_54;
        }
      }

      else
      {
        v35 = (v27[3])(&v95);
        if (!v35)
        {
          v55 = *(v0 + 2);
          v19 = *__error();
          v56 = *(v0 + 4);
          v1 = 71;
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_56;
          }

          v57 = "[anonymous]";
          v58 = v27[2];
          if (v55)
          {
            v57 = v55;
          }

          *buf = 136446722;
          *&buf[4] = v57;
          v65 = 2080;
          v66 = v58;
          v67 = 1024;
          LODWORD(v68) = 71;
          v45 = "%{public}s: no target %s object found: %{darwin.errno}d";
          v49 = v56;
          v50 = 28;
          goto LABEL_55;
        }

        v36 = (v27[4])(v35, &v94, &v71);
        v1 = v36;
        if (v36 == 36 || v36 == 0)
        {
          v38 = *(v0 + 2);
          v3 = *__error();
          v39 = *(v0 + 4);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_7;
          }

          v40 = "[anonymous]";
          if (v38)
          {
            v40 = v38;
          }

          v41 = v27[2];
          *buf = 136446978;
          *&buf[4] = v40;
          v65 = 2080;
          v66 = v41;
          v67 = 2048;
          v68 = *(&v95 + 1);
          v69 = 1024;
          v70 = v1;
          v14 = "%{public}s: %s demux: routine = %llu: %{darwin.errno}d";
          v15 = v39;
          v16 = OS_LOG_TYPE_DEBUG;
          v17 = 38;
LABEL_19:
          _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
          goto LABEL_7;
        }

        v59 = *(v0 + 2);
        v19 = *__error();
        v60 = *(v0 + 4);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          v62 = "[anonymous]";
          if (v59)
          {
            v62 = v59;
          }

          v63 = v27[2];
          *buf = 136446978;
          *&buf[4] = v62;
          v65 = 2080;
          v66 = v63;
          v67 = 2048;
          v68 = *(&v95 + 1);
          v69 = 1024;
          v70 = v1;
          v45 = "%{public}s: %s demux failed: routine = %llu: %{darwin.errno}d";
LABEL_54:
          v49 = v60;
          v50 = 38;
LABEL_55:
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, v45, buf, v50);
        }
      }
    }

    else
    {
      v42 = *(v0 + 2);
      v19 = *__error();
      v60 = *(v0 + 4);
      v1 = 74;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        v43 = "[anonymous]";
        if (v42)
        {
          v43 = v42;
        }

        v44 = v27[2];
        *buf = 136446978;
        *&buf[4] = v43;
        v65 = 2080;
        v66 = v44;
        v67 = 2048;
        v68 = v96;
        v69 = 1024;
        v70 = 74;
        v45 = "%{public}s: bad target type: subsystem = %s, type = %llu: %{darwin.errno}d";
        goto LABEL_54;
      }
    }

LABEL_56:
    *__error() = v19;
    v7 = daemon_copy();
    goto LABEL_57;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446466;
    *&buf[4] = v5;
    v65 = 1024;
    LODWORD(v66) = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%{public}s: msg recv failed: %{darwin.errno}d", buf, 0x12u);
  }

  v6 = 0;
LABEL_7:
  *__error() = v3;
  v7 = daemon_copy();
  if (v1 == 36)
  {
LABEL_63:
    if (!v7)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_57:
  if ((v71 & 0x10) != 0)
  {
    goto LABEL_63;
  }

  v51 = v7[2];
  v52 = *__error();
  v53 = v7[4];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    v54 = "[anonymous]";
    if (v51)
    {
      v54 = v51;
    }

    *buf = 136446722;
    *&buf[4] = v54;
    v65 = 2048;
    v66 = v95;
    v67 = 1024;
    LODWORD(v68) = v1;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%{public}s: demux failed: subsystem = %llu: %{darwin.errno}d", buf, 0x1Cu);
  }

  *__error() = v52;
  rpc_reply(&v94, &v71, v1);
LABEL_64:
  os_release(v7);
LABEL_65:
  rpc_destroy(&v71);
  rpc_destroy(&v94);
  os_release(v0);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_log_invoke(const char *a1, uint64_t a2)
{
  v4 = daemon_copy();
  v26 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (os_log_type_enabled(*(v4 + 4), OS_LOG_TYPE_DEBUG))
  {
    v8 = *a1;
    v6 = os_flagset_copy_string();
    v9 = *(a1 + 4);
    if (v9)
    {
      if (v9 == 1)
      {
        if (asprintf(&v26, "%s", a1 + 40) < 0)
        {
          sub_log_invoke_cold_1(&v27, buf);
        }
      }

      else if (v9 == 2)
      {
        v25 = *(a1 + 10);
        v26 = os_mach_port_copy_description();
      }

      else if (asprintf(&v26, "[invalid target type: %#llx]", *(a1 + 4)) < 0)
      {
        sub_log_invoke_cold_1(&v27, buf);
      }
    }

    else if (asprintf(&v26, "%#llx", *(a1 + 5)) < 0)
    {
      sub_log_invoke_cold_1(&v27, buf);
    }

    v7 = xpc_copy_description(*(a1 + 38));
    v10 = *(v4 + 2);
    v11 = *__error();
    v12 = *(v4 + 4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = "[anonymous]";
      v14 = *(a1 + 2);
      v15 = *(a1 + 3);
      if (v10)
      {
        v13 = v10;
      }

      v16 = *(a1 + 4);
      v17 = *(a1 + 82);
      v18 = *(a1 + 83);
      v19 = *(a1 + 84);
      v20 = *(a1 + 85);
      v21 = *(a1 + 86);
      v22 = *(a1 + 87);
      v23 = *(a1 + 88);
      v24 = *(a1 + 89);
      *buf = 136450306;
      v29 = v13;
      v30 = 2080;
      v31 = a2;
      v32 = 2048;
      v33 = a1;
      v34 = 2080;
      v35 = v6;
      v36 = 2048;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      v40 = 2048;
      v41 = v16;
      v42 = 2080;
      v43 = v26;
      v44 = 2080;
      v45 = v7;
      v46 = 1024;
      v47 = v17;
      v48 = 1024;
      v49 = v18;
      v50 = 1024;
      v51 = v19;
      v52 = 1024;
      v53 = v20;
      v54 = 1024;
      v55 = v21;
      v56 = 1024;
      v57 = v22;
      v58 = 1024;
      v59 = v23;
      v60 = 1024;
      v61 = v24;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: invoke = %s [%p]\ninvoke.flags = %s\ninvoke.target.sub = %llu\ninvoke.target.routine = %llu\ninvoke.target.type = %llu\ninvoke.target = %s\ninvoke.argv = %s\ninvoke.cred.auid = %u\ninvoke.cred.euid = %u\ninvoke.cred.egid = %u\ninvoke.cred.ruid = %u\ninvoke.cred.rgid = %u\ninvoke.cred.pid = %u\ninvoke.cred.asid = %u\ninvoke.cred.pidvers = %u\n", buf, 0x8Cu);
    }

    *__error() = v11;
    v5 = v26;
  }

  free(v7);
  free(v5);
  free(v6);
  os_release(v4);
}

void *sub_state_alloc(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = rpc_copy(a2);
  v5[5] = rpc_copy(a3);
  return v5;
}

void sub_reply_and_consume(uint64_t *a1, int a2)
{
  v3 = *a1;
  rpc_reply(*(*a1 + 32), *(*a1 + 40), a2);
  rpc_destroy(*(v3 + 32));
  rpc_destroy(*(v3 + 40));
  ctx_destroy(v3);
  *a1 = 0;
}

void sub_reply_and_consume_with_cferr(uint64_t *a1, __CFError *a2)
{
  v3 = *a1;
  rpc_reply_with_cferr(*(*a1 + 32), *(*a1 + 40), a2);
  rpc_destroy(*(v3 + 32));
  rpc_destroy(*(v3 + 40));
  ctx_destroy(v3);
  *a1 = 0;
}

uint64_t sub_get_subsystem_from_msg(void *a1)
{
  result = xpc_dictionary_get_string(a1, "SUBSYSTEM");
  if (result)
  {
    v2 = result;
    if (!strcmp(result, "CODEX"))
    {
      return 1;
    }

    else if (!strcmp(v2, "COLLATION"))
    {
      return 2;
    }

    else if (!strcmp(v2, "UPGRADE_WAIT"))
    {
      return 5;
    }

    else if (!strcmp(v2, "UPGRADE_LOCK"))
    {
      return 6;
    }

    else if (!strcmp(v2, "UPGRADE_ABORT"))
    {
      return 7;
    }

    else if (!strcmp(v2, "DAEMON"))
    {
      return 3;
    }

    else if (!strcmp(v2, "SESSION"))
    {
      return 4;
    }

    else if (!strcmp(v2, "MOUNT"))
    {
      return 8;
    }

    else if (!strcmp(v2, "ENDPOINT_LOOKUP"))
    {
      return 9;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_get_subsystem_from_msg_cold_1(v2);
      }

      return 0;
    }
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = _dg;
  v3[1] = dispatch_queue_create("com.apple.security.cryptexd.main", 0);
  daemon_init();
  v4 = daemon_copy();
  v5 = _NSGetMachExecuteHeader();
  size = 0;
  v6 = getsectdatafromheader_64(v5, "__DATA_CONST", "__object_init", &size);
  v7 = &v6[_dyld_get_image_slide()];
  v8 = _NSGetMachExecuteHeader();
  size = 0;
  v9 = getsectdatafromheader_64(v8, "__DATA_CONST", "__object_init", &size);
  if (v7 < &v9[_dyld_get_image_slide() + size])
  {
    do
    {
      v10 = *v7++;
      v10();
      v11 = _NSGetMachExecuteHeader();
      size = 0;
      v12 = getsectdatafromheader_64(v11, "__DATA_CONST", "__object_init", &size);
    }

    while (v7 < &v12[_dyld_get_image_slide() + size]);
  }

  inventory_xpc_init();
  *v3 |= 1uLL;
  daemon_post_multithreaded_hack(v4);
  dispatch_main();
}

CFErrorRef _amfi_load_trust_cache(int a1, int a2, NSObject *a3)
{
  v3 = a3;
  v6 = 0;
  connect = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  if (!a3)
  {
    v6 = os_log_create("com.apple.libcryptex", "amfi");
    v3 = v6;
  }

  v7 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(0, v7);
  if (!MatchingService)
  {
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    }

    *&v45[0] = 0x4E04000100;
    v17 = _os_log_send_and_compose_impl();
    v18 = "com.apple.security.cryptex.posix";
    v19 = 42;
    v20 = 78;
    goto LABEL_15;
  }

  v9 = MatchingService;
  file = _read_file(a2, v39);
  if (file)
  {
    v11 = file;
    v12 = file;
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      LODWORD(v45[0]) = 67109120;
      DWORD1(v45[0]) = v11;
    }

    else
    {
      LODWORD(v45[0]) = 67109120;
      DWORD1(v45[0]) = file;
    }

    v15 = _os_log_send_and_compose_impl();
    v16 = 48;
LABEL_21:
    Error = createError("_amfi_load_trust_cache", "amfi.c", v16, "com.apple.security.cryptex.posix", v12, 0, v15);
    v22 = v15;
    goto LABEL_22;
  }

  v13 = _read_file(a1, v41);
  if (v13)
  {
    v14 = v13;
    v12 = v13;
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      LODWORD(v45[0]) = 67109120;
      DWORD1(v45[0]) = v14;
    }

    else
    {
      LODWORD(v45[0]) = 67109120;
      DWORD1(v45[0]) = v13;
    }

    v15 = _os_log_send_and_compose_impl();
    v16 = 54;
    goto LABEL_21;
  }

  v23 = IOServiceOpen(v9, mach_task_self_, 0, &connect);
  if (v23)
  {
    v24 = v23;
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      LODWORD(v45[0]) = 67109120;
      DWORD1(v45[0]) = v24;
    }

    else
    {
      LODWORD(v45[0]) = 67109120;
      DWORD1(v45[0]) = v23;
    }

    v17 = _os_log_send_and_compose_impl();
    v18 = "com.apple.security.cryptex";
    v19 = 60;
    v20 = 34;
LABEL_15:
    Error = createError("_amfi_load_trust_cache", "amfi.c", v19, v18, v20, 0, v17);
    v22 = v17;
LABEL_22:
    free(v22);
    v25 = 0;
    goto LABEL_23;
  }

  v27 = *(&v39[0] + 1) + *(&v41[0] + 1);
  v28 = mmap(0, *(&v39[0] + 1) + *(&v41[0] + 1) + 16, 3, 4098, -1, 0);
  if (v28 == -1)
  {
    v35 = *__error();
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    }

    LODWORD(v45[0]) = 67109120;
    DWORD1(v45[0]) = v35;
    v36 = _os_log_send_and_compose_impl();
    Error = createError("_amfi_load_trust_cache", "amfi.c", 76, "com.apple.security.cryptex.posix", v35, 0, v36);
    v25 = 0;
  }

  else
  {
    v29 = v28;
    *v28 = *(&v39[0] + 1);
    v28[1] = *(&v41[0] + 1);
    buff_init(v37, 0, _buff_destructor_munmap, v28, v27 + 16);
    v25 = buff_fopen(v37, "rw", 0x10uLL);
    fwrite(*&v39[0], *(&v39[0] + 1), 1uLL, v25);
    if (fcheck_np())
    {
      _amfi_load_trust_cache_cold_1(&v44, v45);
    }

    fwrite(*&v41[0], *(&v41[0] + 1), 1uLL, v25);
    if (fcheck_np())
    {
      _amfi_load_trust_cache_cold_1(&v44, v45);
    }

    v30 = IOConnectCallMethod(connect, 7u, 0, 0, v29, v27 + 16, 0, 0, 0, 0);
    if (!v30)
    {
      Error = 0;
      goto LABEL_44;
    }

    v31 = v30;
    Errno = _IOErrorGetErrno(v30);
    v33 = Errno;
    v34 = Errno;
    if (v3)
    {
      os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      LODWORD(v45[0]) = 67109376;
      DWORD1(v45[0]) = v31;
      WORD4(v45[0]) = 1024;
      *(v45 + 10) = v33;
    }

    else
    {
      LODWORD(v45[0]) = 67109376;
      DWORD1(v45[0]) = v31;
      WORD4(v45[0]) = 1024;
      *(v45 + 10) = Errno;
    }

    v36 = _os_log_send_and_compose_impl();
    Error = createError("_amfi_load_trust_cache", "amfi.c", 106, "com.apple.security.cryptex.posix", v34, 0, v36);
  }

  free(v36);
LABEL_44:
  if (connect && IOServiceClose(connect))
  {
    _amfi_load_trust_cache_cold_3(&v44, v45);
  }

  if (v9 != -1)
  {
    mach_right_send_release();
  }

LABEL_23:
  buff_destroy(v37);
  buff_destroy(v41);
  buff_destroy(v39);
  if (v6)
  {
    os_release(v6);
  }

  if (v25 && fclose(v25) == -1 && *__error())
  {
    _amfi_load_trust_cache_cold_4(&v44, v45);
  }

  return Error;
}

CFErrorRef _amfi_unload_trust_cache(int a1, NSObject *a2)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v21 = 0uLL;
  file = _read_file(a1, v18);
  if (!file)
  {
    Module = trustCacheExtractModule(v17, *&v18[0], *(&v18[0] + 1));
    if ((Module & 0xFF00) != 0)
    {
      *v20 = 0;
      asprintf(v20, "TCReturn_t(component: %d, error: %d, uniqueError: %d)", Module, BYTE1(Module), HIWORD(Module));
      v7 = *v20;
      if (a2)
      {
        os_log_type_enabled(a2, OS_LOG_TYPE_ERROR);
      }

      *v20 = 136446210;
      *&v20[4] = v7;
      v8 = _os_log_send_and_compose_impl();
      v14 = 144;
    }

    else
    {
      UUID = trustCacheGetUUID(v17, &v21);
      if ((UUID & 0xFF00) == 0)
      {
        if (!amfi_unload_trust_cache() || (v15 = *__error()) == 0)
        {
          v7 = 0;
          Error = 0;
          goto LABEL_24;
        }

        if (v15 == 78)
        {
          if (a2)
          {
            os_log_type_enabled(a2, OS_LOG_TYPE_ERROR);
          }

          *v20 = 0;
          v8 = _os_log_send_and_compose_impl();
          v9 = "com.apple.security.cryptex";
          v10 = 168;
        }

        else
        {
          if (v15 != 45)
          {
            v5 = v15;
            if (a2)
            {
              os_log_type_enabled(a2, OS_LOG_TYPE_ERROR);
            }

            *v20 = 67109120;
            *&v20[4] = v15;
            v8 = _os_log_send_and_compose_impl();
            v9 = "com.apple.security.cryptex.posix";
            v10 = 172;
            goto LABEL_9;
          }

          if (a2)
          {
            os_log_type_enabled(a2, OS_LOG_TYPE_ERROR);
          }

          *v20 = 0;
          v8 = _os_log_send_and_compose_impl();
          v9 = "com.apple.security.cryptex";
          v10 = 164;
        }

        v11 = 10;
        goto LABEL_10;
      }

      *v20 = 0;
      asprintf(v20, "TCReturn_t(component: %d, error: %d, uniqueError: %d)", UUID, BYTE1(UUID), HIWORD(UUID));
      v7 = *v20;
      if (a2)
      {
        os_log_type_enabled(a2, OS_LOG_TYPE_ERROR);
      }

      *v20 = 136446210;
      *&v20[4] = v7;
      v8 = _os_log_send_and_compose_impl();
      v14 = 152;
    }

    Error = createError("_amfi_unload_trust_cache", "amfi.c", v14, "com.apple.security.cryptex", 38, 0, v8);
    goto LABEL_23;
  }

  v4 = file;
  v5 = file;
  if (a2)
  {
    os_log_type_enabled(a2, OS_LOG_TYPE_ERROR);
    *v20 = 67109120;
    *&v20[4] = v4;
  }

  else
  {
    *v20 = 67109120;
    *&v20[4] = file;
  }

  v8 = _os_log_send_and_compose_impl();
  v9 = "com.apple.security.cryptex.posix";
  v10 = 136;
LABEL_9:
  v11 = v5;
LABEL_10:
  Error = createError("_amfi_unload_trust_cache", "amfi.c", v10, v9, v11, 0, v8);
  v7 = 0;
LABEL_23:
  free(v8);
LABEL_24:
  buff_destroy(v18);
  free(v7);
  return Error;
}

void _quire_dealloc(uint64_t a1)
{
  v1 = *(a1 + 396);
  v2 = *(a1 + 392);
  if ((v1 & 0x80000000) == 0 || (v2 & 0x80000000) == 0)
  {
    memset(v11, 0, sizeof(v11));
    v6 = v2;
    v7 = v1;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(v8) = 67109376;
    HIDWORD(v8) = v7;
    v9 = 1024;
    v10 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if ((*(a1 + 400) & 0x80000000) == 0)
  {
    close_drop_np();
  }

  if (*(a1 + 184))
  {
LABEL_14:
    _quire_dealloc_cold_1(&v8, v11);
  }

  quire_destroy_attr(a1 + 208);
  free(*(a1 + 360));
  os_release(*(a1 + 200));
  v4 = *(a1 + 408);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    xpc_release(v5);
  }

  _quire_free_and_drop_strings(a1);

  object_proto_destroy(a1 + 56);
}

void quire_destroy_attr(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (!*(a1 + 104))
      {
        goto LABEL_7;
      }

      v3 = 0;
      do
      {
        v4 = a1 + 8 * v3;
        free(*(v4 + 40));
        *(v4 + 40) = 0;
        ++v3;
      }

      while (v3 < *(a1 + 104));
      v2 = *a1;
      if (*a1)
      {
LABEL_7:
        free(v2);
        *a1 = 0;
      }

      if (*(a1 + 16))
      {
        cryptex_version_destroy();
        *(a1 + 16) = 0;
      }

      v5 = *(a1 + 24);
      if (v5)
      {
        os_release(v5);
        *(a1 + 24) = 0;
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        free(v6);
        *(a1 + 32) = 0;
      }

      v7 = *(a1 + 128);
      if (v7)
      {
        xpc_release(v7);
        *(a1 + 128) = 0;
      }

      v8 = *(a1 + 136);
      if (v8)
      {
        xpc_release(v8);
        *(a1 + 136) = 0;
      }

      v9 = *(a1 + 120);
      if (v9)
      {
        xpc_release(v9);
        *(a1 + 120) = 0;
      }
    }
  }
}

void _quire_free_and_drop_strings(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    free(v2);
    *(a1 + 368) = 0;
  }

  free(*(a1 + 416));
  *(a1 + 416) = 0;
  free(*(a1 + 424));
  *(a1 + 424) = 0;
  free(*(a1 + 432));
  *(a1 + 432) = 0;
}

uint64_t quire_make_attr(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = daemon_copy();
  if (os_log_type_enabled(*(v8 + 4), OS_LOG_TYPE_DEBUG))
  {
    v9 = xpc_copy_description(a1);
    v10 = *(v8 + 2);
    v11 = *__error();
    v12 = *(v8 + 4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = "[anonymous]";
      if (v10)
      {
        v13 = v10;
      }

      *buf = 136446466;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: making attr from: %s", buf, 0x16u);
    }

    *__error() = v11;
    free(v9);
  }

  v14 = _xpc_plist_value_copy(&_bundle_identifier, a1);
  if (v14)
  {
    v15 = v14;
    v16 = _xpc_plist_value_copy(&_bundle_version, a1);
    if (!v16)
    {
      v25 = *(v8 + 2);
      v26 = *__error();
      v27 = *(v8 + 4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = "[anonymous]";
        *buf = 136446978;
        if (v25)
        {
          v28 = v25;
        }

        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "CFBundleVersion";
        *&buf[22] = 2112;
        v40 = a1;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = 212;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: missing key: %s: %@: %{darwin.errno}d", buf, 0x26u);
      }

      *__error() = v26;
      v24 = 212;
      goto LABEL_45;
    }

    v17 = v16;
    v18 = _xpc_plist_value_copy(&_bundle_bootstrap_contents, a1);
    if (v18)
    {
      v19 = daemon_copy();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = ___quire_attr_parse_bootstrap_contents_block_invoke;
      v40 = &__block_descriptor_tmp_22;
      v41 = v19;
      v42 = a3;
      xpc_array_apply(v18, buf);
      if (v19)
      {
        os_release(v19);
      }
    }

    xpc_string_get_string_ptr(v15);
    if (a4)
    {
      xpc_string_get_string_ptr(v17);
      asprintf(a3, "%s-v%s");
    }

    else
    {
      asprintf(a3, "%s");
    }

    string_ptr = _xpc_plist_value_copy(&_required_mount_path, a1);
    v30 = string_ptr;
    if (string_ptr)
    {
      string_ptr = xpc_string_get_string_ptr(string_ptr);
    }

    *(a3 + 8) = string_ptr;
    v31 = _xpc_plist_value_copy(&_developer_mode_required, a1);
    v32 = v31;
    if (v31)
    {
      if (xpc_get_type(v31) != &_xpc_type_BOOL)
      {
        v33 = *(v8 + 2);
        v34 = *__error();
        v35 = *(v8 + 4);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = "[anonymous]";
          *buf = 136446978;
          if (v33)
          {
            v36 = v33;
          }

          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = "DeveloperModeRequired";
          *&buf[22] = 2112;
          v40 = a1;
          LOWORD(v41) = 1024;
          *(&v41 + 2) = 212;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s: invalid value for key: %s: %@: %{darwin.errno}d", buf, 0x26u);
        }

        *__error() = v34;
        os_release(v8);
        v37 = 212;
LABEL_39:
        os_release(v32);
        v24 = v37;
LABEL_40:
        if (v18)
        {
          os_release(v18);
        }

        if (v30)
        {
          os_release(v30);
        }

        v8 = v17;
LABEL_45:
        os_release(v8);
        goto LABEL_46;
      }

      LOBYTE(v31) = xpc_BOOL_get_value(v32);
    }

    *(a3 + 144) = v31;
    *(a3 + 120) = _xpc_plist_value_copy(&_bundle_command, a1);
    *(a3 + 136) = _xpc_plist_value_copy(&_bundle_command_args, a1);
    *(a3 + 128) = _xpc_plist_value_copy(&_bundle_env, a1);
    xpc_string_get_string_ptr(v17);
    *(a3 + 16) = cryptex_version_new();
    *(a3 + 24) = os_retain(a1);
    if (a2)
    {
      *(a3 + 32) = *a2;
    }

    else
    {
      a2 = (a3 + 32);
    }

    *a2 = 0;
    os_release(v8);
    v37 = 0;
    v24 = 0;
    if (!v32)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v20 = *(v8 + 2);
  v21 = *__error();
  v22 = *(v8 + 4);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = "[anonymous]";
    *buf = 136446978;
    if (v20)
    {
      v23 = v20;
    }

    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = "CFBundleIdentifier";
    *&buf[22] = 2112;
    v40 = a1;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = 212;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s: missing key: %s: %@: %{darwin.errno}d", buf, 0x26u);
  }

  *__error() = v21;
  v24 = 212;
  v15 = v8;
LABEL_46:
  os_release(v15);
  return v24;
}

uint64_t quire_attr_populate_dependencies(uint64_t a1, uint64_t a2)
{
  v4 = daemon_copy();
  v5 = *(a1 + 24);
  if (!v5)
  {
    quire_attr_populate_dependencies_cold_5(&v41, buf);
  }

  array = xpc_dictionary_get_array(v5, "Dependencies");
  count = xpc_array_get_count(array);
  if (count > 8)
  {
    v8 = 59;
    if (!v4)
    {
      return v8;
    }

    goto LABEL_47;
  }

  v9 = count;
  v10 = daemon_copy();
  if (!array)
  {
    quire_attr_populate_dependencies_cold_4(&v41, buf);
  }

  v11 = v10;
  type = xpc_get_type(array);
  if (type != &_xpc_type_array)
  {
    quire_attr_populate_dependencies_cold_1(&v41, buf, type);
  }

  v13 = xpc_array_get_count(array);
  if (v13)
  {
    v14 = v13;
    v39 = v4;
    v40 = v11;
    for (i = 0; i != v14; ++i)
    {
      dictionary = xpc_array_get_dictionary(array, i);
      if (!dictionary)
      {
        v11 = v40;
        v25 = *(v40 + 2);
        v26 = *__error();
        v27 = *(v40 + 4);
        v4 = v39;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = "[anonymous]";
          if (v25)
          {
            v28 = v25;
          }

          *buf = 136446466;
          v43 = v28;
          v44 = 2048;
          v45 = i;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: unable to parse dependency dictionary for element %lu in dependencies array from c411", buf, 0x16u);
        }

        goto LABEL_35;
      }

      v17 = dictionary;
      string = xpc_dictionary_get_string(dictionary, "CFBundleIdentifier");
      v19 = xpc_dictionary_get_string(v17, "CFBundleVersion");
      if (!string)
      {
        v8 = 22;
        goto LABEL_26;
      }

      v20 = v19;
      if (!collation_map_lookup_cryptex_with_attributes(a2, string, v19))
      {
        v29 = *(v40 + 2);
        v26 = *__error();
        v30 = *(v40 + 4);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = "[anonymous]";
          if (v29)
          {
            v31 = v29;
          }

          v32 = "unspecified";
          *buf = 136446722;
          v43 = v31;
          v44 = 2080;
          v45 = string;
          if (v20)
          {
            v32 = v20;
          }

          v46 = 2080;
          v47 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s: unable to satisfy dependency with bundleID : %s (min version : %s)", buf, 0x20u);
        }

        v4 = v39;
        v11 = v40;
LABEL_35:
        *__error() = v26;
        v8 = 22;
        goto LABEL_36;
      }
    }

    v8 = 0;
LABEL_26:
    v4 = v39;
    v11 = v40;
    if (v40)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = 0;
    if (v11)
    {
LABEL_36:
      os_release(v11);
      if (v8)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }
  }

  if (v8)
  {
LABEL_16:
    v21 = v4[2];
    v22 = *__error();
    v23 = v4[4];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = "[anonymous]";
      if (v21)
      {
        v24 = v21;
      }

      *buf = 136446466;
      v43 = v24;
      v44 = 1024;
      LODWORD(v45) = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: quire_evaluate_dependencies() failed: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v22;
LABEL_47:
    os_release(v4);
    return v8;
  }

LABEL_37:
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v34 = xpc_array_get_dictionary(array, j);
      if (!v34)
      {
        quire_attr_populate_dependencies_cold_3();
      }

      v35 = xpc_dictionary_get_string(v34, "CFBundleIdentifier");
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v36 = strdup(v35);
          if (v36)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v36 = strdup(v35);
        if (!v36)
        {
          quire_attr_populate_dependencies_cold_2();
        }
      }

      v37 = *(a1 + 104);
      *(a1 + 40 + 8 * v37) = v36;
      *(a1 + 104) = v37 + 1;
    }
  }

  v8 = 0;
  if (v4)
  {
    goto LABEL_47;
  }

  return v8;
}

CFErrorRef quire_attr_enforce_install_limits(uint64_t a1)
{
  v2 = daemon_copy();
  v3 = *(a1 + 24);
  if (!v3)
  {
    quire_attr_populate_dependencies_cold_5(&v56, buf);
  }

  if (&_secure_config_parameters_copy_cryptex_app_identifiers_4libcryptex)
  {
    array = xpc_dictionary_get_array(v3, "LimitInstallToApps");
    if (array)
    {
      v5 = array;
      count = xpc_array_get_count(array);
      if (count)
      {
        v7 = count;
        if (count >= 0x101)
        {
          if (*(v2 + 4))
          {
            os_log_type_enabled(*(v2 + 4), OS_LOG_TYPE_ERROR);
            v8 = *(v2 + 2);
            *buf = 136446978;
            if (!v8)
            {
              v8 = "[anonymous]";
            }

            *&buf[4] = v8;
            *&buf[12] = 2048;
            *&buf[14] = v7;
            *&buf[22] = 1024;
            LODWORD(v63) = 256;
            WORD2(v63) = 1024;
            *(&v63 + 6) = 59;
          }

          else
          {
            v31 = *(v2 + 2);
            if (!v31)
            {
              v31 = "[anonymous]";
            }

            *buf = 136446978;
            *&buf[4] = v31;
            *&buf[12] = 2048;
            *&buf[14] = count;
            *&buf[22] = 1024;
            LODWORD(v63) = 256;
            WORD2(v63) = 1024;
            *(&v63 + 6) = 59;
          }

          v32 = _os_log_send_and_compose_impl();
          Error = createError("quire_attr_enforce_install_limits", "quire.c", 3643, "com.apple.security.cryptex.posix", 59, 0, v32);
          free(v32);
          goto LABEL_25;
        }

        v21 = daemon_copy();
        type = xpc_get_type(v5);
        if (type != &_xpc_type_array)
        {
          quire_attr_enforce_install_limits_cold_1(&v56, buf, type);
        }

        if (!xpc_array_get_count(v5))
        {
          quire_attr_enforce_install_limits_cold_2(&v56, buf);
        }

        v23 = secure_config_parameters_load_with_error();
        if (!v23 || (v24 = CFRetain(v23)) == 0)
        {
          if (*(v21 + 4))
          {
            os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
            v30 = *(v21 + 2);
            if (!v30)
            {
              v30 = "[anonymous]";
            }
          }

          else
          {
            v30 = *(v21 + 2);
            if (!v30)
            {
              v30 = "[anonymous]";
            }
          }

          *buf = 136446466;
          *&buf[4] = v30;
          *&buf[12] = 1024;
          *&buf[14] = 22;
          v33 = _os_log_send_and_compose_impl();
          Error = createError("quire_evaluate_install_limits", "quire.c", 3521, "com.apple.security.cryptex.posix", 22, 0, v33);
          free(v33);
          v25 = 0;
          v34 = 1;
          goto LABEL_95;
        }

        v25 = v24;
        v26 = secure_config_parameters_copy_cryptex_app_identifiers_4libcryptex();
        v27 = CFArrayGetCount(v26);
        if (!v26)
        {
          if (*(v21 + 4))
          {
            os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
            v35 = *(v21 + 2);
            if (!v35)
            {
              v35 = "[anonymous]";
            }
          }

          else
          {
            v35 = *(v21 + 2);
            if (!v35)
            {
              v35 = "[anonymous]";
            }
          }

          *buf = 136446466;
          *&buf[4] = v35;
          *&buf[12] = 1024;
          *&buf[14] = 22;
          v43 = _os_log_send_and_compose_impl();
          Error = createError("quire_evaluate_install_limits", "quire.c", 3531, "com.apple.security.cryptex.posix", 22, 0, v43);
          free(v43);
          goto LABEL_94;
        }

        v28 = v27;
        if (v27)
        {
          if (v27 <= 256)
          {
            if (v27 < 1)
            {
LABEL_64:
              Error = 0;
LABEL_93:
              CFRelease(v26);
LABEL_94:
              v34 = 0;
LABEL_95:
              if ((v34 & 1) == 0)
              {
                os_release(v25);
              }

              if (v21)
              {
                os_release(v21);
              }

              if (!Error)
              {
                if (!v2)
                {
                  return Error;
                }

                goto LABEL_25;
              }

              v50 = *(v2 + 2);
              v10 = *__error();
              v51 = *(v2 + 4);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                v52 = "[anonymous]";
                if (v50)
                {
                  v52 = v50;
                }

                *buf = 136446466;
                *&buf[4] = v52;
                *&buf[12] = 2112;
                *&buf[14] = Error;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}s: quire_evaluate_install_limits() failed: %@", buf, 0x16u);
              }

              v18 = __error();
              goto LABEL_24;
            }

            v37 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v26, v37);
              if (!ValueAtIndex)
              {
                break;
              }

              v39 = ValueAtIndex;
              v40 = CFGetTypeID(ValueAtIndex);
              if (v40 != CFStringGetTypeID())
              {
                break;
              }

              v41 = _CFStringCopyUTF8String(v39);
              v42 = v41;
              if (!v41)
              {
                if (*(v21 + 4))
                {
                  os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
                  v47 = *(v21 + 2);
                  if (!v47)
                  {
                    v47 = "[anonymous]";
                  }
                }

                else
                {
                  v47 = *(v21 + 2);
                  if (!v47)
                  {
                    v47 = "[anonymous]";
                  }
                }

                v56 = 136446466;
                v57 = v47;
                v58 = 1024;
                LODWORD(v59) = 22;
                v53 = _os_log_send_and_compose_impl();
                v54 = 3569;
                goto LABEL_115;
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 0x40000000;
              *&buf[16] = __quire_evaluate_install_limits_block_invoke;
              *&v63 = &__block_descriptor_tmp_31;
              *(&v63 + 1) = v41;
              if (xpc_array_apply(v5, buf))
              {
                if (*(v21 + 4))
                {
                  os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
                  v48 = *(v21 + 2);
                  v56 = 136446722;
                  if (v48)
                  {
                    v49 = v48;
                  }

                  else
                  {
                    v49 = "[anonymous]";
                  }

                  v57 = v49;
                  v58 = 2080;
                  v59 = v39;
                  v60 = 1024;
                  v61 = 22;
                }

                else
                {
                  v55 = "[anonymous]";
                  if (*(v21 + 2))
                  {
                    v55 = *(v21 + 2);
                  }

                  v56 = 136446722;
                  v57 = v55;
                  v58 = 2080;
                  v59 = v39;
                  v60 = 1024;
                  v61 = 22;
                }

                v53 = _os_log_send_and_compose_impl();
                v54 = 3600;
LABEL_115:
                Error = createError("quire_evaluate_install_limits", "quire.c", v54, "com.apple.security.cryptex.posix", 22, 0, v53);
                free(v53);
                goto LABEL_92;
              }

              free(v42);
              if (v28 == ++v37)
              {
                goto LABEL_64;
              }
            }

            if (*(v21 + 4))
            {
              os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
              v46 = *(v21 + 2);
              if (!v46)
              {
                v46 = "[anonymous]";
              }
            }

            else
            {
              v46 = *(v21 + 2);
              if (!v46)
              {
                v46 = "[anonymous]";
              }
            }

            v56 = 136446466;
            v57 = v46;
            v58 = 1024;
            LODWORD(v59) = 22;
            v42 = _os_log_send_and_compose_impl();
            v44 = 3560;
          }

          else
          {
            if (*(v21 + 4))
            {
              os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
              v29 = *(v21 + 2);
              *buf = 136446978;
              if (!v29)
              {
                v29 = "[anonymous]";
              }

              *&buf[4] = v29;
              *&buf[12] = 2048;
              *&buf[14] = v28;
              *&buf[22] = 1024;
              LODWORD(v63) = 256;
              WORD2(v63) = 1024;
              *(&v63 + 6) = 22;
            }

            else
            {
              v45 = *(v21 + 2);
              if (!v45)
              {
                v45 = "[anonymous]";
              }

              *buf = 136446978;
              *&buf[4] = v45;
              *&buf[12] = 2048;
              *&buf[14] = v27;
              *&buf[22] = 1024;
              LODWORD(v63) = 256;
              WORD2(v63) = 1024;
              *(&v63 + 6) = 22;
            }

            v42 = _os_log_send_and_compose_impl();
            v44 = 3549;
          }
        }

        else
        {
          if (*(v21 + 4))
          {
            os_log_type_enabled(*(v21 + 4), OS_LOG_TYPE_ERROR);
            v36 = *(v21 + 2);
            if (!v36)
            {
              v36 = "[anonymous]";
            }
          }

          else
          {
            v36 = *(v21 + 2);
            if (!v36)
            {
              v36 = "[anonymous]";
            }
          }

          *buf = 136446466;
          *&buf[4] = v36;
          *&buf[12] = 1024;
          *&buf[14] = 22;
          v42 = _os_log_send_and_compose_impl();
          v44 = 3539;
        }

        Error = createError("quire_evaluate_install_limits", "quire.c", v44, "com.apple.security.cryptex.posix", 22, 0, v42);
LABEL_92:
        free(v42);
        goto LABEL_93;
      }

      v16 = *(v2 + 2);
      v10 = *__error();
      v11 = *(v2 + 4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = "[anonymous]";
        if (v16)
        {
          v17 = v16;
        }

        *buf = 136446210;
        *&buf[4] = v17;
        v13 = "%{public}s: empty install limits; policy allows any install";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
      }
    }

    else
    {
      v14 = *(v2 + 2);
      v10 = *__error();
      v11 = *(v2 + 4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = "[anonymous]";
        if (v14)
        {
          v15 = v14;
        }

        *buf = 136446210;
        *&buf[4] = v15;
        v13 = "%{public}s: no install limits found; policy allows any install";
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = *(v2 + 2);
    v10 = *__error();
    v11 = *(v2 + 4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = "[anonymous]";
      if (v9)
      {
        v12 = v9;
      }

      *buf = 136446210;
      *&buf[4] = v12;
      v13 = "%{public}s: SecureConfigDB not available; policy allows any install";
      goto LABEL_22;
    }
  }

  v18 = __error();
  Error = 0;
LABEL_24:
  *v18 = v10;
LABEL_25:
  os_release(v2);
  return Error;
}

uint64_t quire_create(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v27 = *a3;
  v8 = a3 + 2;
  v28 = *a3[2];
  a2[20];
  v9 = _quire_alloc();
  *(v9 + 176) = a4;
  v10 = *(a3 + 1);
  *(v9 + 208) = *a3;
  *(v9 + 224) = v10;
  v11 = *(a3 + 5);
  v13 = *(a3 + 2);
  v12 = *(a3 + 3);
  *(v9 + 272) = *(a3 + 4);
  *(v9 + 288) = v11;
  *(v9 + 240) = v13;
  *(v9 + 256) = v12;
  v15 = *(a3 + 7);
  v14 = *(a3 + 8);
  v16 = *(a3 + 6);
  *(v9 + 352) = a3[18];
  *(v9 + 320) = v15;
  *(v9 + 336) = v14;
  *(v9 + 304) = v16;
  v17 = os_retain(a2);
  *(v9 + 392) = -1;
  *(v9 + 400) = -1;
  *(v9 + 188) = 0;
  *(v9 + 192) = 0;
  *(v9 + 200) = v17;
  *(v9 + 360) = cryptex_core_unparse_hdiid();
  *(v9 + 384) = v9 + 376;
  v18 = (v9 + 472);
  *(v9 + 368) = 0u;
  *(v9 + 472) = 0u;
  if (a3[13])
  {
    v19 = 0;
    do
    {
      v20 = codex_copy_quire(a1, a3[v19 + 5], 0);
      if (!v20)
      {
        quire_create_cold_3();
      }

      v21 = v20;
      v22 = malloc_type_malloc(0x10uLL, 0x2F48DA65uLL);
      if (!v22)
      {
        quire_create_cold_1();
      }

      v23 = v22;
      *v22 = v21;
      os_retain(v21);
      v23[1] = *v18;
      *v18 = v23;
      v24 = malloc_type_malloc(0x10uLL, 0x2F48DA65uLL);
      if (!v24)
      {
        quire_create_cold_1();
      }

      v25 = v24;
      *v24 = v9;
      os_retain(v9);
      v25[1] = v21[60];
      v21[60] = v25;
      os_release(v21);
      ++v19;
    }

    while (v19 < a3[13]);
  }

  *a3 = 0;
  *v8 = 0;
  v8[1] = 0;
  object_proto_init(v9 + 56, "com.apple.security.cryptexd", "quire");
  object_set_name_nocopy(v9 + 56, *(v9 + 208));
  cryptex_init();
  hash_node_init_cstr(v9 + 80, *(v9 + 208));
  hash_node_init_cstr(v9 + 112, *(v9 + 208));
  hash_node_init_cstr(v9 + 144, *(v9 + 208));
  return v9;
}

void *quire_mount(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = ctx_new(a1, 0x60uLL);
  *(result + 13) = a2;
  *(result + 14) = a3;
  result[9] = a4;
  result[10] = a5;
  if (*(a1 + 184))
  {
    result[4] = 0;
    **(a1 + 384) = result;
    *(a1 + 384) = result + 4;
  }

  else
  {

    return cryptex_async_f();
  }

  return result;
}

uint64_t _quire_mount_continue(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(a1 + 13);
  v3 = *(a1 + 14);
  v146 = -1;
  v147 = -1;
  v5 = *(v2 + 240);
  if (!v5)
  {
    memset(__str, 0, 255);
    v164 = 0u;
    memset(v165, 0, sizeof(v165));
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    *v151 = 0u;
    if ((*(v2 + 392) & 0x80000000) == 0)
    {
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v10 = *(v2 + 56);
        if (!v10)
        {
          v10 = "[anonymous]";
        }
      }

      else
      {
        v10 = *(v2 + 56);
        if (!v10)
        {
          v10 = "[anonymous]";
        }
      }

      v173.st_dev = 136446466;
      *&v173.st_mode = v10;
      WORD2(v173.st_ino) = 1024;
      *(&v173.st_ino + 6) = 37;
      v25 = _os_log_send_and_compose_impl();
      v26 = "com.apple.security.cryptex.posix";
      v27 = 575;
      v28 = 37;
      goto LABEL_235;
    }

    if (*(v2 + 216))
    {
      v15 = *(v2 + 56);
      v16 = *__error();
      v17 = *(v2 + 72);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "[anonymous]";
        v19 = *(v2 + 216);
        if (v15)
        {
          v18 = v15;
        }

        v173.st_dev = 136446466;
        *&v173.st_mode = v18;
        WORD2(v173.st_ino) = 2080;
        *(&v173.st_ino + 6) = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: custom mount path %s", &v173, 0x16u);
      }

      *__error() = v16;
      if (**(v2 + 216) != 47)
      {
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v57 = *(v2 + 56);
          if (!v57)
          {
            v57 = "[anonymous]";
          }
        }

        else
        {
          v57 = *(v2 + 56);
          if (!v57)
          {
            v57 = "[anonymous]";
          }
        }

        v173.st_dev = 136446466;
        *&v173.st_mode = v57;
        WORD2(v173.st_ino) = 1024;
        *(&v173.st_ino + 6) = 22;
        v25 = _os_log_send_and_compose_impl();
        v26 = "com.apple.security.cryptex.posix";
        v27 = 585;
        v28 = 22;
        goto LABEL_235;
      }

      snprintf(__str, 0xFFuLL, "%s", *(v2 + 216));
      v20 = _mkdir(__str, 0x1FFu, &v147);
      if (v20)
      {
        v21 = v20;
        v22 = v20;
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v23 = *(v2 + 56);
          if (!v23)
          {
            v23 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v23;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v21;
        }

        else
        {
          v70 = *(v2 + 56);
          if (!v70)
          {
            v70 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v70;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v20;
        }

        v25 = _os_log_send_and_compose_impl();
        v26 = "com.apple.security.cryptex.posix";
        v27 = 591;
LABEL_234:
        v28 = v22;
LABEL_235:
        Error = createError("_quire_mount_continue", "quire.c", v27, v26, v28, 0, v25);
        free(v25);
        goto LABEL_236;
      }

      if (*(v2 + 353) == 1)
      {
        v61 = 0;
        v62 = 1;
        while (1)
        {
          v63 = v62;
          if (path_is_parent(_nocode_mount_paths[v61], *(v2 + 216)))
          {
            break;
          }

          v62 = 0;
          v61 = 1;
          if ((v63 & 1) == 0)
          {
            if (*(v2 + 72))
            {
              os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
              v64 = *(v2 + 56);
              v65 = *(v2 + 216);
              if (!v64)
              {
                v64 = "[anonymous]";
              }

              v173.st_dev = 136446466;
              *&v173.st_mode = v64;
              WORD2(v173.st_ino) = 2082;
              *(&v173.st_ino + 6) = v65;
            }

            else
            {
              v115 = *(v2 + 56);
              if (!v115)
              {
                v115 = "[anonymous]";
              }

              v116 = *(v2 + 216);
              v173.st_dev = 136446466;
              *&v173.st_mode = v115;
              WORD2(v173.st_ino) = 2082;
              *(&v173.st_ino + 6) = v116;
            }

            v25 = _os_log_send_and_compose_impl();
            v26 = "com.apple.security.cryptex";
            v27 = 605;
            v28 = 2;
            goto LABEL_235;
          }
        }
      }
    }

    else
    {
      snprintf(__str, 0xFFuLL, "%s.XXXXXX", *(v2 + 208));
      v52 = _mkodtempat(v4, __str, &v147);
      if (v52)
      {
        v53 = v52;
        v22 = v52;
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v54 = *(v2 + 56);
          if (!v54)
          {
            v54 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v54;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v53;
        }

        else
        {
          v69 = *(v2 + 56);
          if (!v69)
          {
            v69 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v69;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v52;
        }

        v25 = _os_log_send_and_compose_impl();
        v26 = "com.apple.security.cryptex.posix";
        v27 = 613;
        goto LABEL_234;
      }
    }

    if ((*(*(v2 + 200) + 40) & 8) != 0)
    {
      snprintf(v151, 0xFFuLL, "%s.XXXXXX", *(v2 + 208));
      v66 = _mkodtempat(v3, v151, &v146);
      if (v66)
      {
        v67 = v66;
        v22 = v66;
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v68 = *(v2 + 56);
          if (!v68)
          {
            v68 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v68;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v67;
        }

        else
        {
          v94 = *(v2 + 56);
          if (!v94)
          {
            v94 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v94;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v66;
        }

        v25 = _os_log_send_and_compose_impl();
        v26 = "com.apple.security.cryptex.posix";
        v27 = 622;
        goto LABEL_234;
      }

      v71 = *(v2 + 200);
    }

    v149 = -1;
    bzero(&v173.st_ino, 0x840uLL);
    *&v173.st_mode = -1;
    *&v173.st_uid = *(v2 + 360);
    v175 = -1;
    v177 = -1;
    bzero(__s1, 0x400uLL);
    v148 = -1;
    image_asset = cryptex_core_get_image_asset();
    v173.st_dev = *(image_asset + 16);
    v73 = *(image_asset + 8);
    if (cryptex_asset_type_is_cryptex1())
    {
      v74 = *(v2 + 200);
      asset = cryptex_core_get_asset();
      if (!asset)
      {
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v93 = *(v2 + 56);
          if (!v93)
          {
            v93 = "[anonymous]";
          }

          *buf = 136446210;
          v180 = v93;
        }

        else
        {
          v113 = *(v2 + 56);
          if (!v113)
          {
            v113 = "[anonymous]";
          }

          *buf = 136446210;
          v180 = v113;
        }

        v107 = _os_log_send_and_compose_impl();
        v108 = "com.apple.security.cryptex";
        v109 = 268;
        v114 = 15;
        goto LABEL_207;
      }

      v76 = asset;
      if ((*(*(v2 + 200) + 40) & 8) != 0)
      {
        if (!os_variant_allows_internal_security_policies())
        {
          if (*(v2 + 72))
          {
            os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
            v112 = *(v2 + 56);
            if (!v112)
            {
              v112 = "[anonymous]";
            }

            *buf = 136446210;
            v180 = v112;
          }

          else
          {
            v133 = *(v2 + 56);
            if (!v133)
            {
              v133 = "[anonymous]";
            }

            *buf = 136446210;
            v180 = v133;
          }

          v107 = _os_log_send_and_compose_impl();
          v108 = "com.apple.security.cryptex";
          v109 = 281;
          v114 = 10;
          goto LABEL_207;
        }

        v77 = *(v2 + 56);
        v78 = *__error();
        v79 = *(v2 + 72);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v80 = "[anonymous]";
          if (v77)
          {
            v80 = v77;
          }

          *buf = 136446210;
          v180 = v80;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%{public}s: Allowing readwrite installation.", buf, 0xCu);
        }

        *__error() = v78;
        LOBYTE(v173.st_atimespec.tv_sec) = 1;
        v173.st_ino = &v146;
        v81 = *(v2 + 200);
      }

      v82 = cryptex_core_get_asset();
      if (v82 && (v83 = v82, cryptex_asset_len() >= 1))
      {
        v84 = *(v2 + 56);
        v85 = *__error();
        v86 = *(v2 + 72);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = "[anonymous]";
          if (v84)
          {
            v87 = v84;
          }

          *buf = 136446210;
          v180 = v87;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%{public}s: AuthAPFS enabled.", buf, 0xCu);
        }

        *__error() = v85;
        v174[1039] = 1;
        v175 = *(v76 + 16);
        v176 = *(*(v76 + 8) + 32);
        v177 = *(v83 + 16);
        v178 = 4;
        v88 = *(*(v2 + 200) + 168);
        if (v88 && (*(v88 + 40) & 1) != 0)
        {
          v89 = *(v2 + 56);
          v90 = *__error();
          v91 = *(v2 + 72);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            v92 = "[anonymous]";
            if (v89)
            {
              v92 = v89;
            }

            *buf = 136446210;
            v180 = v92;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "%{public}s: AuthAPFS using supplemental auth environment.", buf, 0xCu);
          }

          *__error() = v90;
          v178 = 5;
        }
      }

      else
      {
        v95 = *(v2 + 56);
        v96 = *__error();
        v97 = *(v2 + 72);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
        {
          v98 = "[anonymous]";
          if (v95)
          {
            v98 = v95;
          }

          *buf = 136446210;
          v180 = v98;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "%{public}s: AuthAPFS disabled because quire lacks an im4m.", buf, 0xCu);
        }

        *__error() = v96;
      }
    }

    v99 = realpath_np();
    if (v99)
    {
      v100 = v99;
      v101 = v99;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v102 = *(v2 + 56);
        if (!v102)
        {
          v102 = "[anonymous]";
        }

        *buf = 136446466;
        v180 = v102;
        v181 = 1024;
        LODWORD(v182) = v100;
      }

      else
      {
        v106 = *(v2 + 56);
        if (!v106)
        {
          v106 = "[anonymous]";
        }

        *buf = 136446466;
        v180 = v106;
        v181 = 1024;
        LODWORD(v182) = v99;
      }

      v107 = _os_log_send_and_compose_impl();
      v108 = "com.apple.security.cryptex.posix";
      v109 = 308;
    }

    else
    {
      v103 = hdi_mount(&v147, 0, &v173);
      if (!v103)
      {
        v110 = _xferfd_unguarded(&v173.st_mode);
        v148 = v110;
        v149 = open(__s1, 1048832);
        if ((v149 & 0x80000000) == 0)
        {
          *(v2 + 396) = _xferfd_unguarded(&v148);
          *(v2 + 392) = _xferfd_unguarded(&v149);
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v111 = strdup(__s1);
              if (v111)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v111 = strdup(__s1);
            if (!v111)
            {
              quire_attr_populate_dependencies_cold_2();
            }
          }

          *(v2 + 416) = v111;
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v130 = strdup(v174);
              if (v130)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v130 = strdup(v174);
            if (!v130)
            {
              quire_attr_populate_dependencies_cold_2();
            }
          }

          *(v2 + 432) = v130;
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v131 = strdup(&v173.st_atimespec.tv_sec + 1);
              if (v131)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v131 = strdup(&v173.st_atimespec.tv_sec + 1);
            if (!v131)
            {
              quire_attr_populate_dependencies_cold_2();
            }
          }

          v132 = v131;
          v33 = 0;
          v118 = 0;
          *(v2 + 424) = v132;
          v110 = v148;
          goto LABEL_211;
        }

        v127 = *__error();
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v128 = *(v2 + 56);
          *buf = 136446722;
          if (v128)
          {
            v129 = v128;
          }

          else
          {
            v129 = "[anonymous]";
          }

          v180 = v129;
          v181 = 2080;
          v182 = __s1;
          v183 = 1024;
          v184 = v127;
        }

        else
        {
          v134 = "[anonymous]";
          if (*(v2 + 56))
          {
            v134 = *(v2 + 56);
          }

          *buf = 136446722;
          v180 = v134;
          v181 = 2080;
          v182 = __s1;
          v183 = 1024;
          v184 = v127;
        }

        v135 = _os_log_send_and_compose_impl();
        v33 = createError("_quire_mount_hdi", "quire.c", 325, "com.apple.security.cryptex.posix", v127, 0, v135);
        free(v135);
        v136 = unmount(__s1, 0x80000);
        if (v136)
        {
          v137 = v136;
          v138 = *(v2 + 56);
          v139 = *__error();
          v140 = *(v2 + 72);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
          {
            v141 = "[anonymous]";
            *buf = 136446722;
            if (v138)
            {
              v141 = v138;
            }

            v180 = v141;
            v181 = 2080;
            v182 = __s1;
            v183 = 1024;
            v184 = v137;
            _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "%{public}s: failed to clean up mount point: %s: %{darwin.errno}d", buf, 0x1Cu);
          }

          *__error() = v139;
        }

        if ((v110 & 0x80000000) == 0 && ioctl(v110, 0x20006415uLL, 0, 28))
        {
          v142 = *(v2 + 56);
          v143 = *__error();
          v144 = *(v2 + 72);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            if (!v142)
            {
              v142 = "[anonymous]";
            }

            v145 = *__error();
            *buf = 136446722;
            v180 = v142;
            v181 = 2080;
            v182 = v174;
            v183 = 1024;
            v184 = v145;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%{public}s: failed to clean up device: %s: %{darwin.errno}d", buf, 0x1Cu);
          }

          *__error() = v143;
        }

LABEL_208:
        if (v33)
        {
          v118 = CFRetain(v33);
        }

        else
        {
          v118 = 0;
        }

LABEL_211:
        *(v2 + 408) = v118;
        if (v110 != -1 && close(v110) == -1)
        {
          daemon_init_cold_13(&v150, buf);
        }

        if (v149 != -1 && close(v149) == -1)
        {
          daemon_init_cold_13(__s1, &v173);
        }

        if (v33)
        {
          if (*(v2 + 72))
          {
            os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
            v119 = *(v2 + 56);
            if (!v119)
            {
              v119 = "[anonymous]";
            }

            v173.st_dev = 136446210;
            *&v173.st_mode = v119;
          }

          else
          {
            v123 = *(v2 + 56);
            if (!v123)
            {
              v123 = "[anonymous]";
            }

            v173.st_dev = 136446210;
            *&v173.st_mode = v123;
          }

          v46 = _os_log_send_and_compose_impl();
          v47 = 629;
          goto LABEL_76;
        }

        v120 = collation_map_add(v2);
        if (!v120)
        {
          Error = 0;
LABEL_236:
          a1[2] = Error;
LABEL_237:
          cryptex_target_async_f();
          goto LABEL_238;
        }

        v121 = v120;
        v22 = v120;
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v122 = *(v2 + 56);
          if (!v122)
          {
            v122 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v122;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v121;
        }

        else
        {
          v125 = *(v2 + 56);
          if (!v125)
          {
            v125 = "[anonymous]";
          }

          v173.st_dev = 136446466;
          *&v173.st_mode = v125;
          WORD2(v173.st_ino) = 1024;
          *(&v173.st_ino + 6) = v120;
        }

        v25 = _os_log_send_and_compose_impl();
        v26 = "com.apple.security.cryptex.posix";
        v27 = 635;
        goto LABEL_234;
      }

      v104 = v103;
      v101 = v103;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v105 = *(v2 + 56);
        if (!v105)
        {
          v105 = "[anonymous]";
        }

        *buf = 136446466;
        v180 = v105;
        v181 = 1024;
        LODWORD(v182) = v104;
      }

      else
      {
        v117 = *(v2 + 56);
        if (!v117)
        {
          v117 = "[anonymous]";
        }

        *buf = 136446466;
        v180 = v117;
        v181 = 1024;
        LODWORD(v182) = v103;
      }

      v107 = _os_log_send_and_compose_impl();
      v108 = "com.apple.security.cryptex.posix";
      v109 = 314;
    }

    v114 = v101;
LABEL_207:
    v33 = createError("_quire_mount_hdi", "quire.c", v109, v108, v114, 0, v107);
    free(v107);
    v110 = -1;
    goto LABEL_208;
  }

  *buf = -1;
  memset(&v173, 0, sizeof(v173));
  *v151 = open(v5 + 2311, 1048832);
  if ((*v151 & 0x80000000) != 0)
  {
    v11 = *__error();
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v12 = *(v2 + 56);
      *__s1 = 136446722;
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      v168 = v12;
      v169 = 2080;
      v170 = v5 + 2311;
      v171 = 1024;
      v172 = v11;
    }

    else
    {
      v29 = *(v2 + 56);
      if (!v29)
      {
        v29 = "[anonymous]";
      }

      *__s1 = 136446722;
      v168 = v29;
      v169 = 2080;
      v170 = v5 + 2311;
      v171 = 1024;
      v172 = v11;
    }

    v30 = _os_log_send_and_compose_impl();
    v31 = 189;
    v32 = v11;
    goto LABEL_44;
  }

  v6 = open(v5 + 263, 256);
  *buf = v6;
  if (v6 < 0)
  {
    v13 = *__error();
    v8 = v13;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v14 = *(v2 + 56);
      *__s1 = 136446722;
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      v168 = v14;
      v169 = 2080;
      v170 = v5 + 263;
      v171 = 1024;
      v172 = v13;
    }

    else
    {
      v38 = *(v2 + 56);
      if (!v38)
      {
        v38 = "[anonymous]";
      }

      *__s1 = 136446722;
      v168 = v38;
      v169 = 2080;
      v170 = v5 + 263;
      v171 = 1024;
      v172 = v13;
    }

    v36 = _os_log_send_and_compose_impl();
    v37 = 196;
    goto LABEL_53;
  }

  if (fstat(v6, &v173))
  {
    v7 = *__error();
    v8 = v7;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v2 + 56);
      *__s1 = 136446722;
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v168 = v9;
      v169 = 2080;
      v170 = v5 + 263;
      v171 = 1024;
      v172 = v7;
    }

    else
    {
      v35 = *(v2 + 56);
      if (!v35)
      {
        v35 = "[anonymous]";
      }

      *__s1 = 136446722;
      v168 = v35;
      v169 = 2080;
      v170 = v5 + 263;
      v171 = 1024;
      v172 = v7;
    }

    v36 = _os_log_send_and_compose_impl();
    v37 = 203;
LABEL_53:
    v33 = createError("_quire_mount_forerunner", "quire.c", v37, "com.apple.security.cryptex.posix", v8, 0, v36);
    v34 = v36;
    goto LABEL_54;
  }

  if ((v173.st_mode & 0xF000) != 0x6000)
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v55 = *(v2 + 56);
      *__s1 = 136446722;
      if (v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = "[anonymous]";
      }

      v168 = v56;
      v169 = 2080;
      v170 = v5 + 263;
      v171 = 1024;
      v172 = 19;
    }

    else
    {
      v60 = "[anonymous]";
      if (*(v2 + 56))
      {
        v60 = *(v2 + 56);
      }

      *__s1 = 136446722;
      v168 = v60;
      v169 = 2080;
      v170 = v5 + 263;
      v171 = 1024;
      v172 = 19;
    }

    v30 = _os_log_send_and_compose_impl();
    v31 = 210;
    v32 = 19;
LABEL_44:
    v33 = createError("_quire_mount_forerunner", "quire.c", v31, "com.apple.security.cryptex.posix", v32, 0, v30);
    v34 = v30;
LABEL_54:
    free(v34);
    goto LABEL_55;
  }

  *(v2 + 396) = _xferfd_unguarded(buf);
  *(v2 + 392) = _xferfd_unguarded(v151);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v24 = strdup(v5 + 2311);
      if (v24)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v24 = strdup(v5 + 2311);
    if (!v24)
    {
      quire_attr_populate_dependencies_cold_2();
    }
  }

  *(v2 + 416) = v24;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v58 = strdup(v5 + 1287);
      if (v58)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v58 = strdup(v5 + 1287);
    if (!v58)
    {
      quire_attr_populate_dependencies_cold_2();
    }
  }

  *(v2 + 432) = v58;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v59 = strdup(v5 + 263);
      if (v59)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v59 = strdup(v5 + 263);
    if (!v59)
    {
      quire_attr_populate_dependencies_cold_2();
    }
  }

  v33 = 0;
  *(v2 + 424) = v59;
  *(v2 + 176) |= 1uLL;
LABEL_55:
  free(*(v2 + 240));
  *(v2 + 240) = 0;
  if (v33)
  {
    v39 = CFRetain(v33);
  }

  else
  {
    v39 = 0;
  }

  *(v2 + 408) = v39;
  if (*buf != -1 && close(*buf) == -1)
  {
    daemon_init_cold_13(__s1, &v173);
  }

  if (*v151 != -1 && close(*v151) == -1)
  {
    daemon_init_cold_13(__s1, &v173);
  }

  if (!v33)
  {
    v41 = collation_map_add(v2);
    if (v41)
    {
      v42 = v41;
      v43 = v41;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v44 = *(v2 + 56);
        if (!v44)
        {
          v44 = "[anonymous]";
        }

        v173.st_dev = 136446466;
        *&v173.st_mode = v44;
        WORD2(v173.st_ino) = 1024;
        *(&v173.st_ino + 6) = v42;
      }

      else
      {
        v50 = *(v2 + 56);
        if (!v50)
        {
          v50 = "[anonymous]";
        }

        v173.st_dev = 136446466;
        *&v173.st_mode = v50;
        WORD2(v173.st_ino) = 1024;
        *(&v173.st_ino + 6) = v41;
      }

      v51 = _os_log_send_and_compose_impl();
      v49 = createError("_quire_mount_continue", "quire.c", 565, "com.apple.security.cryptex.posix", v43, 0, v51);
      free(v51);
    }

    else
    {
      v49 = 0;
    }

    a1[2] = v49;
    goto LABEL_237;
  }

  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v40 = *(v2 + 56);
    if (!v40)
    {
      v40 = "[anonymous]";
    }

    v173.st_dev = 136446210;
    *&v173.st_mode = v40;
  }

  else
  {
    v45 = *(v2 + 56);
    if (!v45)
    {
      v45 = "[anonymous]";
    }

    v173.st_dev = 136446210;
    *&v173.st_mode = v45;
  }

  v46 = _os_log_send_and_compose_impl();
  v47 = 559;
LABEL_76:
  v48 = createError("_quire_mount_continue", "quire.c", v47, "com.apple.security.cryptex", 2, v33, v46);
  free(v46);
  a1[2] = v48;
  cryptex_target_async_f();
  CFRelease(v33);
LABEL_238:
  if (v146 != -1 && close(v146) == -1)
  {
    daemon_init_cold_13(__s1, &v173);
  }

  result = v147;
  if (v147 != -1)
  {
    result = close(v147);
    if (result == -1)
    {
      daemon_init_cold_13(__s1, &v173);
    }
  }

  return result;
}

void quire_bootstrap(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((~a4 & 6) != 0)
  {
    v13 = ctx_new(a1, 0x58uLL);
    v13[8] = a5;
    v13[9] = a6;
    *(v13 + 12) = a2;
    v14 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
    if (!v14)
    {
      quire_bootstrap_cold_2(&v18, v19);
    }

    v13[7] = v14;
    *(v13 + 13) = a3;
    v13[10] = a4;
    if (realpath_np())
    {
      quire_bootstrap_cold_1(&v18, v19);
    }

    cryptex_async_f();
  }

  else
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v8 = *(a1 + 56);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      LODWORD(v19[0]) = 136446210;
      *(v19 + 4) = v8;
    }

    else
    {
      v15 = *(a1 + 56);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      LODWORD(v19[0]) = 136446210;
      *(v19 + 4) = v15;
    }

    v16 = _os_log_send_and_compose_impl();
    Error = createError("quire_bootstrap", "quire.c", 3884, "com.apple.security.cryptex", 11, 0, v16);
    free(v16);
    if (Error)
    {
      CFRelease(Error);
    }
  }
}

void _quire_bootstrap_continue(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 52) & 0x80000000) == 0)
  {
    *(v2 + 400) = claimfd_np();
  }

  v3 = *(a1 + 80);
  v4 = *(v2 + 200);
  info_asset = cryptex_core_get_info_asset();
  if ((*(*(v2 + 200) + 40) & 1) != 0 || (*(v2 + 176) & 4) == 0)
  {
    goto LABEL_5;
  }

  v6 = info_asset;
  v7 = *(v2 + 56);
  v8 = *__error();
  v9 = *(v2 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[anonymous]";
    if (v7)
    {
      v10 = v7;
    }

    *buf = 136446210;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: locking signature digest", buf, 0xCu);
  }

  *__error() = v8;
  v11 = *(*(v2 + 200) + 160);
  if (v6)
  {
    v12 = *(v6 + 16);
  }

  v13 = cryptex_signature_lock();
  if (v13)
  {
    v14 = v13;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v15 = *(v2 + 56);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      *buf = 136446210;
      v30 = v15;
    }

    else
    {
      v20 = *(v2 + 56);
      if (!v20)
      {
        v20 = "[anonymous]";
      }

      *buf = 136446210;
      v30 = v20;
    }

    v21 = _os_log_send_and_compose_impl();
    v22 = 3089;
  }

  else
  {
    v16 = *(v2 + 200);
    if (*(v16 + 40))
    {
      goto LABEL_5;
    }

    v17 = *(v16 + 168);
    if (v17)
    {
      if (*(v17 + 40))
      {
        goto LABEL_5;
      }
    }

    v18 = *(v16 + 160);
    if (v6)
    {
      v19 = *(v6 + 16);
    }

    v25 = cryptex_signature_lock_with_sep();
    if (!v25)
    {
LABEL_5:
      if (v3 & 2) != 0 || (*(v2 + 353))
      {
        cryptex_async_f();
      }

      else
      {
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 0x40000000;
        v28[2] = ___quire_bootstrap_continue_block_invoke;
        v28[3] = &__block_descriptor_tmp_37;
        v28[4] = a1;
        v28[5] = v2;
        _quire_bootstrap_trust_cache(v2, a1, v28);
      }

      return;
    }

    v14 = v25;
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v26 = *(v2 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *buf = 136446210;
      v30 = v26;
    }

    else
    {
      v27 = *(v2 + 56);
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      *buf = 136446210;
      v30 = v27;
    }

    v21 = _os_log_send_and_compose_impl();
    v22 = 3100;
  }

  Error = createError("_quire_bootstrap_continue", "quire.c", v22, "com.apple.security.cryptex", 36, v14, v21);
  free(v21);
  if (Error)
  {
    _quire_bootstrap_abort_with_error(Error, a1);
    CFRelease(v14);
    v24 = Error;
  }

  else
  {
    cryptex_async_f();
    v24 = v14;
  }

  CFRelease(v24);
}

void _quire_bootstrap_callback(void **a1)
{
  v2 = a1[2];
  (a1[9])(*a1, 0, a1[2], a1[8]);
  free(a1[7]);
  ctx_destroy(a1);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t quire_unbootstrap(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ctx_new(a1, 0x58uLL);
  v9[8] = a4;
  v9[9] = a5;
  *(v9 + 12) = a2;
  v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
  if (!v10)
  {
    quire_bootstrap_cold_2(&v12, v13);
  }

  v9[7] = v10;
  v9[10] = a3;
  if (realpath_np())
  {
    quire_bootstrap_cold_1(&v12, v13);
  }

  return cryptex_async_f();
}

void _quire_unbootstrap_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  if ((v3 & 0x10) != 0 && (a1[10] & 1) == 0)
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v4 = *(v2 + 56);
      if (!v4)
      {
        v4 = "[anonymous]";
      }

      v15 = 136446210;
      v16 = v4;
    }

    else
    {
      v10 = *(v2 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v15 = 136446210;
      v16 = v10;
    }

    v8 = _os_log_send_and_compose_impl();
    v9 = 3206;
LABEL_26:
    v11 = 4;
    goto LABEL_27;
  }

  if (*(v2 + 480))
  {
    if (*(v2 + 72))
    {
      os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v5 = *(v2 + 56);
      if (!v5)
      {
        v5 = "[anonymous]";
      }

      v15 = 136446210;
      v16 = v5;
    }

    else
    {
      v7 = *(v2 + 56);
      if (!v7)
      {
        v7 = "[anonymous]";
      }

      v15 = 136446210;
      v16 = v7;
    }

    v8 = _os_log_send_and_compose_impl();
    v9 = 3215;
    goto LABEL_26;
  }

  if ((v3 & 2) != 0)
  {
    _quire_unlink_launch_agents(*a1);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___quire_unbootstrap_continue_block_invoke;
    v14[3] = &__block_descriptor_tmp_80;
    v14[4] = a1;
    _quire_unbootstrap_services(v2, v14);
    return;
  }

  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v6 = *(v2 + 56);
    if (!v6)
    {
      v6 = "[anonymous]";
    }

    v15 = 136446210;
    v16 = v6;
  }

  else
  {
    v13 = *(v2 + 56);
    if (!v13)
    {
      v13 = "[anonymous]";
    }

    v15 = 136446210;
    v16 = v13;
  }

  v8 = _os_log_send_and_compose_impl();
  v9 = 3225;
  v11 = 18;
LABEL_27:
  Error = createError("_quire_unbootstrap_continue", "quire.c", v9, "com.apple.security.cryptex", v11, 0, v8);
  free(v8);
  if (Error)
  {
    a1[2] = CFRetain(Error);
    cryptex_target_async_f();
    CFRelease(Error);
  }
}

void *quire_unmount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ctx_new(a1, 0x60uLL);
  result[5] = a2;
  *(result + 13) = -1;
  result[9] = a3;
  result[10] = a4;
  if (*(a1 + 184))
  {
    result[4] = 0;
    **(a1 + 384) = result;
    *(a1 + 384) = result + 4;
  }

  else
  {

    return cryptex_async_f();
  }

  return result;
}

void _quire_unmount_continue(uint64_t *a1)
{
  v2 = a1[5];
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *__error();
  v6 = *(v3 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446210;
    v55 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: _quire_unmount_continue called.", buf, 0xCu);
  }

  *__error() = v5;
  if ((*(v3 + 392) & 0x80000000) != 0)
  {
    if (*(v3 + 72))
    {
      os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR);
      v28 = *(v3 + 56);
      if (!v28)
      {
        v28 = "[anonymous]";
      }
    }

    else
    {
      v28 = *(v3 + 56);
      if (!v28)
      {
        v28 = "[anonymous]";
      }
    }

    *buf = 136446466;
    v55 = v28;
    v56 = 1024;
    LODWORD(v57) = 6;
    v37 = _os_log_send_and_compose_impl();
    v38 = 730;
    v39 = 6;
  }

  else
  {
    if (*(v3 + 480))
    {
      _quire_unmount_continue_cold_1(&v53, buf, v3);
    }

    v8 = *(v3 + 472);
    if (v8)
    {
      v9 = (v3 + 472);
      do
      {
        v10 = *v9;
        if (*v9 == v8)
        {
          v12 = (v3 + 472);
        }

        else
        {
          do
          {
            v11 = v10;
            v10 = v10[1];
          }

          while (v10 != v8);
          v12 = v11 + 1;
        }

        v13 = *v8;
        v14 = v8[1];
        *v12 = v10[1];
        v8[1] = -1;
        v15 = v13[60];
        if (v15)
        {
          v16 = v13 + 60;
          v17 = v13[60];
          while (1)
          {
            v18 = *v17;
            if (*v17 == v3)
            {
              break;
            }

            v17 = v17[1];
            if (!v17)
            {
              if (!v13)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          if (v15 != v17)
          {
            do
            {
              v19 = v15;
              v15 = v15[1];
            }

            while (v15 != v17);
            v16 = v19 + 1;
          }

          *v16 = v15[1];
          v17[1] = -1;
          os_release(v18);
          free(v17);
          if (v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_18:
          os_release(v13);
        }

LABEL_19:
        free(v8);
        v8 = v14;
      }

      while (v14);
    }

    _quire_unlink_launch_agents(v3);
    v20 = a1[5] & 1;
    v21 = _unmountat((v3 + 392), v20 << 19);
    v22 = *(v3 + 56);
    v23 = *__error();
    v24 = *(v3 + 72);
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = "[anonymous]";
        if (v22)
        {
          v25 = v22;
        }

        *buf = 136446466;
        v55 = v25;
        v56 = 1024;
        LODWORD(v57) = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: unmount: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v23;
      v26 = v21;
      if (*(v3 + 72))
      {
        os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR);
        v27 = *(v3 + 56);
        if (!v27)
        {
          v27 = "[anonymous]";
        }
      }

      else
      {
        v27 = *(v3 + 56);
        if (!v27)
        {
          v27 = "[anonymous]";
        }
      }

      *buf = 136446466;
      v55 = v27;
      v56 = 1024;
      LODWORD(v57) = v21;
      v37 = _os_log_send_and_compose_impl();
      v38 = 741;
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v29 = "[anonymous]";
        v30 = "force ";
        if (v22)
        {
          v29 = v22;
        }

        if (!v20)
        {
          v30 = "";
        }

        *buf = 136446466;
        v55 = v29;
        v56 = 2080;
        v57 = v30;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: %sunmount succeeded", buf, 0x16u);
      }

      *__error() = v23;
      v31 = hdi_detach((v3 + 396), *(v3 + 72));
      v32 = *(v3 + 56);
      v33 = *__error();
      v34 = *(v3 + 72);
      if (v31)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = "[anonymous]";
          if (v32)
          {
            v35 = v32;
          }

          *buf = 136446466;
          v55 = v35;
          v56 = 1024;
          LODWORD(v57) = v31;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s: hdi_detach: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v33;
        v26 = v31;
        if (*(v3 + 72))
        {
          os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR);
          v36 = *(v3 + 56);
          if (!v36)
          {
            v36 = "[anonymous]";
          }
        }

        else
        {
          v36 = *(v3 + 56);
          if (!v36)
          {
            v36 = "[anonymous]";
          }
        }

        *buf = 136446466;
        v55 = v36;
        v56 = 1024;
        LODWORD(v57) = v31;
        v37 = _os_log_send_and_compose_impl();
        v38 = 747;
      }

      else
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v40 = "[anonymous]";
          if (v32)
          {
            v40 = v32;
          }

          *buf = 136446210;
          v55 = v40;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%{public}s: hdi_detach: success", buf, 0xCu);
        }

        *__error() = v33;
        v41 = collation_map_remove(v3);
        if (!v41)
        {
          _quire_free_and_drop_strings(v3);
          v44 = *(v3 + 56);
          v45 = *__error();
          v46 = *(v3 + 72);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = "[anonymous]";
            if (v44)
            {
              v47 = v44;
            }

            *buf = 136446210;
            v55 = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}s: Finished quire unmount.", buf, 0xCu);
          }

          *__error() = v45;
          goto LABEL_87;
        }

        v42 = v41;
        v26 = v41;
        if (*(v3 + 72))
        {
          os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR);
          v43 = *(v3 + 56);
          if (!v43)
          {
            v43 = "[anonymous]";
          }

          *buf = 136446466;
          v55 = v43;
          v56 = 1024;
          LODWORD(v57) = v42;
        }

        else
        {
          v48 = *(v3 + 56);
          if (!v48)
          {
            v48 = "[anonymous]";
          }

          *buf = 136446466;
          v55 = v48;
          v56 = 1024;
          LODWORD(v57) = v41;
        }

        v37 = _os_log_send_and_compose_impl();
        v38 = 753;
      }
    }

    v39 = v26;
  }

  Error = createError("_quire_unmount_continue", "quire.c", v38, "com.apple.security.cryptex.posix", v39, 0, v37);
  free(v37);
  if (Error)
  {
    v50 = (v2 & 2) == 0;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    if ((*(v3 + 396) & 0x80000000) != 0)
    {
      v52 = 0;
    }

    else
    {
      v51 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
      if (!v51)
      {
        quire_create_cold_1();
      }

      v52 = v51;
      v51[3] = _xferfd_unguarded((v3 + 396));
      v52[2] = _xferfd_unguarded((v3 + 392));
    }

    a1[8] = v52;
  }

  else if (!Error)
  {
LABEL_87:
    a1[2] = 0;
    cryptex_target_async_f();
    return;
  }

  a1[2] = CFRetain(Error);
  cryptex_target_async_f();
  CFRelease(Error);
}

uint64_t quire_attach_launch_agents()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  cryptex_sync();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

void __quire_attach_launch_agents_block_invoke(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = v16;
  v2 = *(*(a1 + 40) + 56);
  v3 = *__error();
  v4 = *(*(a1 + 40) + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    v6 = *(a1 + 56);
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446466;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: Attaching launch agents for user id %u", buf, 0x12u);
  }

  *__error() = v3;
  *(*(*(a1 + 32) + 8) + 24) = _quire_attach_launch_agents(*(a1 + 40), *(a1 + 56), *(a1 + 48), v16);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = _quire_pending_services_submit(*(a1 + 40), v16);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 40);
      if (*(v9 + 72))
      {
        os_log_type_enabled(*(v9 + 72), OS_LOG_TYPE_ERROR);
        v10 = *(v9 + 56);
        v11 = *(a1 + 56);
        if (!v10)
        {
          v10 = "[anonymous]";
        }

        *buf = 136446466;
        v18 = v10;
        v19 = 1024;
        v20 = v11;
      }

      else
      {
        v12 = *(v9 + 56);
        if (!v12)
        {
          v12 = "[anonymous]";
        }

        v13 = *(a1 + 56);
        *buf = 136446466;
        v18 = v12;
        v19 = 1024;
        v20 = v13;
      }

      v14 = _os_log_send_and_compose_impl();
      Error = createError("quire_attach_launch_agents_block_invoke", "quire.c", 4070, "com.apple.security.cryptex", 21, v8, v14);
      free(v14);
      *(*(*(a1 + 32) + 8) + 24) = Error;
      CFRelease(v8);
    }
  }

  sm_pending_services_cleanup(v16);
}

CFErrorRef _quire_attach_launch_agents(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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

    *buf = 136446466;
    v31 = v11;
    v32 = 1024;
    LODWORD(v33) = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: Launching Launch Agent quires for target user of: %u.", buf, 0x12u);
  }

  *__error() = v9;
  v12 = *(a1 + 456);
  if (!v12)
  {
    return 0;
  }

  while (1)
  {
    v13 = v12;
    v12 = *v12;
    v14 = sm_pending_service_create(1);
    v15 = *(v13 + 9);
    v16 = *(v13 + 11);
    v17 = *(v13 + 15);
    *(v14 + 7) = *(v13 + 13);
    *(v14 + 8) = v17;
    v18 = *(v13 + 1);
    v19 = *(v13 + 3);
    v20 = *(v13 + 7);
    *(v14 + 3) = *(v13 + 5);
    *(v14 + 4) = v20;
    *(v14 + 1) = v18;
    *(v14 + 2) = v19;
    *(v14 + 5) = v15;
    *(v14 + 6) = v16;
    *(v14 + 28) = a2;
    v14[16] = a3;
    v21 = sm_bootstrap_service(v13 + 17, v14 + 2, v14[1], *(a1 + 368));
    if (v21)
    {
      break;
    }

    *v14 = 0;
    **(a4 + 8) = v14;
    *(a4 + 8) = v14;
    if (!v12)
    {
      return 0;
    }
  }

  v23 = v21;
  if (*(a1 + 72))
  {
    os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    v24 = *(a1 + 56);
    v25 = v14[1];
    *buf = 136446722;
    if (!v24)
    {
      v24 = "[anonymous]";
    }

    v31 = v24;
    v32 = 2080;
    v33 = v25;
    v34 = 1024;
    v35 = a2;
  }

  else
  {
    v26 = *(a1 + 56);
    if (!v26)
    {
      v26 = "[anonymous]";
    }

    v27 = v14[1];
    *buf = 136446722;
    v31 = v26;
    v32 = 2080;
    v33 = v27;
    v34 = 1024;
    v35 = a2;
  }

  v28 = _os_log_send_and_compose_impl();
  Error = createError("_quire_attach_launch_agents", "quire.c", 935, "com.apple.security.cryptex", 21, v23, v28);
  free(v28);
  sm_pending_service_destroy(v14);
  CFRelease(v23);
  return Error;
}

CFErrorRef _quire_pending_services_submit(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = *__error();
  v6 = a1[9];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446210;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: Submitting pending services to launchd", buf, 0xCu);
  }

  *__error() = v5;
  v8 = sm_submit_pending_services(a2);
  if (!v8)
  {
    v10 = *a2;
    if (*a2)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
        if (v11[18])
        {
          v12 = malloc_type_calloc(1uLL, 0x98uLL, 0x8709206FuLL);
          if (!v12)
          {
            _quire_pending_services_submit_cold_2(&v26, buf);
          }

          v13 = *(v11 + 1);
          v14 = *(v11 + 2);
          v15 = *(v11 + 4);
          v12[3] = *(v11 + 3);
          v12[4] = v15;
          v12[1] = v13;
          v12[2] = v14;
          v16 = *(v11 + 5);
          v17 = *(v11 + 6);
          v18 = *(v11 + 8);
          v12[7] = *(v11 + 7);
          v12[8] = v18;
          v12[5] = v16;
          v12[6] = v17;
          *(v12 + 36) = *(v11 + 28);
          v19 = v11[1];
          *v12 = a1[58];
          *(v12 + 1) = v19;
          a1[58] = v12;
        }

        else
        {
          v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
          if (!v20)
          {
            quire_create_cold_1();
          }

          v21 = v11[1];
          *v20 = a1[56];
          v20[1] = v21;
          a1[56] = v20;
        }

        _quire_activate(a1);
        v22 = *a2;
        if (*a2 == v11)
        {
          v25 = *v22;
          *a2 = v25;
          v23 = a2;
          if (v25)
          {
            goto LABEL_17;
          }
        }

        else
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22 != v11);
          v24 = *v22;
          *v23 = v24;
          if (v24)
          {
            goto LABEL_17;
          }
        }

        *(a2 + 8) = v23;
LABEL_17:
        free(v11);
      }

      while (v10);
    }
  }

  return v8;
}

int *quire_detach_launch_agents(uint64_t a1)
{
  if (!*(a1 + 188))
  {
    return cryptex_async();
  }

  v2 = *(a1 + 56);
  v3 = *__error();
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: Attempted to remove a Launch Agent that wasn't installed in a system cryptex.", buf, 0xCu);
  }

  result = __error();
  *result = v3;
  return result;
}

void __quire_detach_launch_agents_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 464);
  if (v1)
  {
    do
    {
      v3 = *v1;
      if (*(v1 + 36) == *(a1 + 40))
      {
        v4 = *(*(a1 + 32) + 56);
        v5 = *__error();
        v6 = *(a1 + 32);
        v7 = *(v6 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(v6 + 416);
          v9 = "[anonymous]";
          if (v4)
          {
            v9 = v4;
          }

          *buf = 136446466;
          v11 = v9;
          v12 = 2080;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: Found a Launch Agent: %s - going to deactivate it.", buf, 0x16u);
        }

        *__error() = v5;
        _quire_deactivate_launch_agent(v1, *(a1 + 32));
      }

      v1 = v3;
    }

    while (v3);
  }
}

void _quire_deactivate_launch_agent(void *a1, void *a2)
{
  v4 = sm_unbootstrap_service(a1[1], (a1 + 2));
  if (v4)
  {
    v5 = a2[7];
    v6 = *__error();
    v7 = a2[9];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      v9 = a1[1];
      if (v5)
      {
        v8 = v5;
      }

      v12 = 136446722;
      v13 = v8;
      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to unbootstrap agent: %s: %@", &v12, 0x20u);
    }

    *__error() = v6;
  }

  sm_service_destroy(a1[1]);
  a1[1] = 0;
  v10 = a2[58];
  if (v10 == a1)
  {
    v11 = a2 + 58;
  }

  else
  {
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10 != a1);
  }

  *v11 = *v10;
  *a1 = -1;
  _quire_deactivate(a2);
  free(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

xpc_object_t quire_apply_overrides(uint64_t a1, int a2, xpc_object_t object, uint64_t a4)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = object;
  result = xpc_retain(object);
  *(a1 + 368) = a4;
  return result;
}

BOOL quire_boot_session_test(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 400);
  if (v3 < 0)
  {
    v8 = *(a1 + 56);
    v9 = *__error();
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      v16 = 136446210;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: Quire has no boot session state directory", &v16, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v5 = faccessat(v3, a2, 4, 32);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = *__error();
    }

    else
    {
      v7 = 0;
    }

    v12 = *(a1 + 56);
    v9 = *__error();
    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = "[anonymous]";
      v16 = 136446722;
      if (v12)
      {
        v14 = v12;
      }

      v17 = v14;
      v18 = 2080;
      v19 = a2;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: faccessat(%s): %{darwin.errno}d", &v16, 0x1Cu);
    }
  }

  *__error() = v9;
  return v6;
}

CFErrorRef quire_boot_session_set(uint64_t a1, char *a2, int a3)
{
  v4 = *(a1 + 400);
  if (v4 < 0)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v8 = *(a1 + 56);
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      v23 = 136446210;
      v24 = v8;
    }

    else
    {
      v10 = *(a1 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v23 = 136446210;
      v24 = v10;
    }

    v11 = _os_log_send_and_compose_impl();
    v12 = "com.apple.security.cryptex";
    v13 = 4220;
    v14 = 37;
    goto LABEL_16;
  }

  if (!a3)
  {
    if (unlinkat(v4, a2, 2048) != -1)
    {
      return 0;
    }

    v9 = *__error();
    if (v9 == 2)
    {
      return 0;
    }

    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v17 = *(a1 + 56);
      v23 = 136446722;
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v24 = v17;
      v25 = 2082;
      v26 = a2;
      v27 = 1024;
      v28 = v9;
    }

    else
    {
      v21 = *(a1 + 56);
      if (!v21)
      {
        v21 = "[anonymous]";
      }

      v23 = 136446722;
      v24 = v21;
      v25 = 2082;
      v26 = a2;
      v27 = 1024;
      v28 = v9;
    }

    v11 = _os_log_send_and_compose_impl();
    v12 = "com.apple.security.cryptex.posix";
    v13 = 4243;
    v14 = v9;
LABEL_16:
    Error = createError("quire_boot_session_set", "quire.c", v13, v12, v14, 0, v11);
    free(v11);
    return Error;
  }

  v6 = openat(v4, a2, 512, 438);
  if ((v6 & 0x80000000) == 0)
  {
    Error = 0;
LABEL_29:
    if (close(v6) == -1)
    {
      daemon_init_cold_13(&v22, &v23);
    }

    return Error;
  }

  v15 = *__error();
  if (*(a1 + 72))
  {
    os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
    v16 = *(a1 + 56);
    v23 = 136446722;
    if (!v16)
    {
      v16 = "[anonymous]";
    }

    v24 = v16;
    v25 = 2082;
    v26 = a2;
    v27 = 1024;
    v28 = v15;
  }

  else
  {
    v18 = *(a1 + 56);
    if (!v18)
    {
      v18 = "[anonymous]";
    }

    v23 = 136446722;
    v24 = v18;
    v25 = 2082;
    v26 = a2;
    v27 = 1024;
    v28 = v15;
  }

  v19 = _os_log_send_and_compose_impl();
  Error = createError("quire_boot_session_set", "quire.c", 4232, "com.apple.security.cryptex.posix", v15, 0, v19);
  free(v19);
  if (v6 != -1)
  {
    goto LABEL_29;
  }

  return Error;
}

uint64_t ___quire_attr_parse_bootstrap_contents_block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = cryptex_content_type_parse();
  v6 = *(*(a1 + 32) + 16);
  v7 = *__error();
  v8 = *(*(a1 + 32) + 32);
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "[anonymous]";
      v10 = *v5;
      if (v6)
      {
        v9 = v6;
      }

      v13 = 136446466;
      v14 = v9;
      v15 = 2080;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}s: populated content type to bootstrap: %s", &v13, 0x16u);
    }

    *__error() = v7;
    *(*(a1 + 40) + 112) |= v5[2];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = "[anonymous]";
      v13 = 136446722;
      if (v6)
      {
        v11 = v6;
      }

      v14 = v11;
      v15 = 2080;
      v16 = string_ptr;
      v17 = 1024;
      v18 = 22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: invalid content type %s: %{darwin.errno}d", &v13, 0x1Cu);
    }

    *__error() = v7;
  }

  return 1;
}

void _quire_mount_callback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 72);
  v6 = *(a1 + 64);
  v4 = *(a1 + 16);
  (*(a1 + 80))(v2, &v6, v4, v3);
  if (*(a1 + 64))
  {
    v5 = v6 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    _quire_mount_callback_cold_1();
  }

  free(v6);
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

void _quire_bootstrap_trust_cache(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(*(a1 + 200) + 40) & 1) == 0)
  {
    v6 = quire_boot_session_test(a1, ".trustcache-loaded");
    v7 = *(a1 + 56);
    v8 = *__error();
    v9 = *(a1 + 72);
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = "[anonymous]";
        if (v7)
        {
          v10 = v7;
        }

        *buf = 136446210;
        v62 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}s: trust cache already loaded", buf, 0xCu);
      }

      Error = 0;
      v12 = 0;
      *__error() = v8;
      goto LABEL_67;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      if (v7)
      {
        v17 = v7;
      }

      *buf = 136446210;
      v62 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: loading trust cache", buf, 0xCu);
    }

    *__error() = v8;
    v18 = *(a1 + 200);
    tc_asset = cryptex_core_get_tc_asset();
    v20 = *(a1 + 200);
    asset = cryptex_core_get_asset();
    trust_cache = _amfi_load_trust_cache(*(tc_asset + 16), *(asset + 16), *(a1 + 72));
    if (trust_cache)
    {
      v12 = trust_cache;
      if (_CFErrorHasDomainAndCode(trust_cache, @"com.apple.security.cryptex.posix", 6))
      {
        v23 = *(a1 + 56);
        v24 = *__error();
        v25 = *(a1 + 72);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = "[anonymous]";
          if (v23)
          {
            v26 = v23;
          }

          *buf = 136446210;
          v62 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s: failed to load trust cache: device is locked", buf, 0xCu);
        }

        *__error() = v24;
        v27 = MKBDeviceUnlockedSinceBoot();
        v28 = *(a1 + 56);
        v29 = *__error();
        v30 = *(a1 + 72);
        if (v27 < 0)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v37 = "[anonymous]";
            if (v28)
            {
              v37 = v28;
            }

            *buf = 136446466;
            v62 = v37;
            v63 = 1024;
            v64 = v27;
            v32 = "%{public}s: failed to get initial lock state: error = %d";
            v33 = v30;
            v34 = OS_LOG_TYPE_ERROR;
            goto LABEL_42;
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = "[anonymous]";
          if (v28)
          {
            v31 = v28;
          }

          *buf = 136446466;
          v62 = v31;
          v63 = 1024;
          v64 = v27;
          v32 = "%{public}s: initial unlock state: %d";
          v33 = v30;
          v34 = OS_LOG_TYPE_DEBUG;
LABEL_42:
          _os_log_impl(&_mh_execute_header, v33, v34, v32, buf, 0x12u);
        }

        *__error() = v29;
        v38 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, *(a1 + 24));
        dispatch_set_context(v38, a2);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = ___quire_handle_device_lock_block_invoke;
        handler[3] = &unk_100073D48;
        handler[4] = a3;
        handler[5] = a2;
        dispatch_source_set_event_handler(v38, handler);
        a2[5] = os_retain(v38);
        v39 = *(a1 + 24);
        v59[1] = _NSConcreteStackBlock;
        v59[2] = 0x40000000;
        v59[3] = ___quire_handle_device_lock_block_invoke_2;
        v59[4] = &__block_descriptor_tmp_41;
        v59[5] = a1;
        v59[6] = v38;
        v40 = MKBEventsRegister();
        a2[4] = v40;
        if (!v40)
        {
          _quire_bootstrap_trust_cache_cold_2();
        }

        if (!v27 && MKBDeviceUnlockedSinceBoot() == 1)
        {
          v41 = *(a1 + 56);
          v42 = *__error();
          v43 = *(a1 + 72);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = "[anonymous]";
            if (v41)
            {
              v44 = v41;
            }

            *buf = 136446210;
            v62 = v44;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%{public}s: first unlock during race window; firing source", buf, 0xCu);
          }

          *__error() = v42;
          dispatch_source_merge_data(v38, 1uLL);
        }

        v45 = MKBGetDeviceLockState();
        if ((v45 - 1) >= 3)
        {
          v46 = v45;
          if (v45)
          {
            if (v45 >= 1)
            {
              _quire_bootstrap_trust_cache_cold_1(v59, buf);
            }

            v55 = *(a1 + 56);
            v56 = *__error();
            v57 = *(a1 + 72);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = "[anonymous]";
              if (v55)
              {
                v58 = v55;
              }

              *buf = 136446466;
              v62 = v58;
              v63 = 1024;
              v64 = v46;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%{public}s: failed to get lock state to de-bounce keybag event race: error = %d", buf, 0x12u);
            }

            *__error() = v56;
          }

          else
          {
            v47 = *(a1 + 56);
            v48 = *__error();
            v49 = *(a1 + 72);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v50 = "[anonymous]";
              if (v47)
              {
                v50 = v47;
              }

              *buf = 136446210;
              v62 = v50;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%{public}s: device unlocked during race window; firing source", buf, 0xCu);
            }

            *__error() = v48;
            dispatch_source_merge_data(v38, 1uLL);
          }
        }

        dispatch_activate(v38);
        if (v38)
        {
          os_release(v38);
        }

        Error = 0;
        goto LABEL_70;
      }

      if (*(a1 + 72))
      {
        os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
        v36 = *(a1 + 56);
        if (!v36)
        {
          v36 = "[anonymous]";
        }

        *buf = 136446210;
        v62 = v36;
      }

      else
      {
        v51 = *(a1 + 56);
        if (!v51)
        {
          v51 = "[anonymous]";
        }

        *buf = 136446210;
        v62 = v51;
      }

      v52 = _os_log_send_and_compose_impl();
      v53 = 2386;
    }

    else
    {
      v12 = quire_boot_session_set(a1, ".trustcache-loaded", 1);
      if (!v12)
      {
        Error = 0;
        goto LABEL_67;
      }

      if (*(a1 + 72))
      {
        os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
        v35 = *(a1 + 56);
        if (!v35)
        {
          v35 = "[anonymous]";
        }

        *buf = 136446210;
        v62 = v35;
      }

      else
      {
        v54 = *(a1 + 56);
        if (!v54)
        {
          v54 = "[anonymous]";
        }

        *buf = 136446210;
        v62 = v54;
      }

      v52 = _os_log_send_and_compose_impl();
      v53 = 2393;
    }

    Error = createError("_quire_bootstrap_trust_cache", "quire.c", v53, "com.apple.security.cryptex", 34, v12, v52);
    free(v52);
    goto LABEL_67;
  }

  v13 = *(a1 + 56);
  v14 = *__error();
  v15 = *(a1 + 72);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = "[anonymous]";
    if (v13)
    {
      v16 = v13;
    }

    *buf = 136446210;
    v62 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: Running in debug mode, skip trust cache", buf, 0xCu);
  }

  Error = 0;
  v12 = 0;
  *__error() = v14;
LABEL_67:
  if (a3)
  {
    (*(a3 + 16))(a3, Error);
  }

  if (v12)
  {
LABEL_70:
    CFRelease(v12);
  }

  if (Error)
  {
    CFRelease(Error);
  }
}

void ___quire_bootstrap_continue_block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    _quire_bootstrap_abort_with_error(a2, *(a1 + 32));
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    cryptex_async_f();
  }
}

void _quire_bootstrap_abort_with_error(CFTypeRef a1, uint64_t a2)
{
  v3 = *a2;
  if (a1)
  {
    v4 = a1;
    *(a2 + 16) = CFRetain(a1);
    a1 = CFRetain(v4);
  }

  else
  {
    *(a2 + 16) = 0;
  }

  v3[51] = a1;
  v5 = v3[7];
  v6 = *__error();
  v7 = v3[9];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446210;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: unwinding after bootstrap failure", buf, 0xCu);
  }

  *__error() = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___quire_bootstrap_abort_with_error_block_invoke;
  v9[3] = &__block_descriptor_tmp_44;
  v9[4] = v3;
  v9[5] = a2;
  _quire_unbootstrap_services(v3, v9);
}

void _quire_bootstrap_continue2(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 80) & 4) != 0 || (*(v2 + 176) & 0x10) != 0)
  {
    goto LABEL_171;
  }

  v3 = *(v2 + 320);
  v4 = *(v2 + 56);
  v5 = *__error();
  v6 = *(v2 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}s: bootstrap contents bitmap before consolidating: 0x%04llX", buf, 0x16u);
  }

  *__error() = v5;
  v8 = _cryptex_content_type_jetsam_properties[2];
  v9 = _cryptex_content_type_log_profile[2];
  v105 = _cryptex_content_type_service[2];
  v107 = _cryptex_content_type_feature_flags[2];
  v10 = v105 | v3 | v8 | v107;
  v106 = v9;
  if (*(v2 + 188))
  {
    v11 = v10 & ~(_cryptex_content_type_library[2] | _cryptex_content_type_executable[2] | _cryptex_content_type_factory[2] | v9);
  }

  else
  {
    v11 = v10 | v9;
  }

  if (*(v2 + 353) == 1)
  {
    v12 = *(v2 + 56);
    v13 = *__error();
    v14 = *(v2 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: No-code cryptex will not bootstrap any contents.", buf, 0xCu);
    }

    v11 = 0;
    *__error() = v13;
  }

  v16 = *(v2 + 56);
  v17 = *__error();
  v18 = *(v2 + 72);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = "[anonymous]";
    if (v16)
    {
      v19 = v16;
    }

    *buf = 136446466;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s: bootstrap contents bitmap after consolidating: 0x%04llX", buf, 0x16u);
  }

  *__error() = v17;
  *(v2 + 320) = v11;
  if ((v11 & v8) == 0)
  {
LABEL_33:
    if ((_cryptex_content_type_library[2] & v11) != 0)
    {
      _quire_iter_libraries(v2, a1, _quire_populate_resource_in_data_volume);
      v11 = *(v2 + 320);
    }

    if ((_cryptex_content_type_executable[2] & v11) != 0)
    {
      _quire_iter_binaries(v2, a1, _quire_populate_resource_in_data_volume);
      v11 = *(v2 + 320);
    }

    if ((_cryptex_content_type_factory[2] & v11) == 0)
    {
      goto LABEL_102;
    }

    v28 = view_create(&_view_factory, *(v2 + 392), 0);
    v29 = *(v2 + 56);
    v30 = *__error();
    v31 = *(v2 + 72);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = "[anonymous]";
      if (v29)
      {
        v32 = v29;
      }

      *buf = 136446210;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}s: iterating factory content", buf, 0xCu);
    }

    *__error() = v30;
    v33 = view_iterate_resource(v28, &_resource_diags, a1, _quire_bootstrap_diags, 1);
    if (v33)
    {
      v34 = v33;
      if (*(v2 + 72))
      {
        os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
        v35 = *(v2 + 56);
        if (!v35)
        {
          v35 = "[anonymous]";
        }

        *buf = 136446210;
        *&buf[4] = v35;
      }

      else
      {
        v44 = *(v2 + 56);
        if (!v44)
        {
          v44 = "[anonymous]";
        }

        *buf = 136446210;
        *&buf[4] = v44;
      }

      v45 = _os_log_send_and_compose_impl();
      v46 = 2087;
    }

    else
    {
      v42 = view_iterate_resource(v28, &_resource_luacore_lib, a1, _quire_populate_resource_in_data_volume, 1);
      if (v42)
      {
        v34 = v42;
        if (*(v2 + 72))
        {
          os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v43 = *(v2 + 56);
          if (!v43)
          {
            v43 = "[anonymous]";
          }

          *buf = 136446210;
          *&buf[4] = v43;
        }

        else
        {
          v49 = *(v2 + 56);
          if (!v49)
          {
            v49 = "[anonymous]";
          }

          *buf = 136446210;
          *&buf[4] = v49;
        }

        v45 = _os_log_send_and_compose_impl();
        v46 = 2097;
      }

      else
      {
        v47 = view_iterate_resource(v28, &_resource_python_lib, a1, _quire_populate_resource_in_data_volume, 1);
        if (v47)
        {
          v34 = v47;
          if (*(v2 + 72))
          {
            os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
            v48 = *(v2 + 56);
            if (!v48)
            {
              v48 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v48;
          }

          else
          {
            v51 = *(v2 + 56);
            if (!v51)
            {
              v51 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v51;
          }

          v45 = _os_log_send_and_compose_impl();
          v46 = 2108;
        }

        else
        {
          v34 = view_iterate_resource(v28, &_resource_astro, a1, _quire_populate_resource_in_data_volume, 1);
          if (!v34)
          {
            v52 = 0;
LABEL_92:
            if (v28)
            {
              os_release(v28);
            }

            if (v34)
            {
              CFRelease(v34);
            }

            if (v52)
            {
              if (*(v2 + 72))
              {
                os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
                v54 = *(v2 + 56);
                if (!v54)
                {
                  v54 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v54;
              }

              else
              {
                v57 = *(v2 + 56);
                if (!v57)
                {
                  v57 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v57;
              }

              v58 = _os_log_send_and_compose_impl();
              v59 = 2983;
              v60 = 37;
LABEL_166:
              Error = createError("_quire_bootstrap_contents", "quire.c", v59, "com.apple.security.cryptex", v60, v52, v58);
              free(v58);
              CFRelease(v52);
              if (Error)
              {
                goto LABEL_167;
              }

LABEL_171:
              cryptex_async_f();
              return;
            }

            v11 = *(v2 + 320);
LABEL_102:
            if ((v11 & v106) != 0)
            {
              _quire_iter_log_profiles(v2, a1, _quire_populate_resource_in_data_volume);
              v11 = *(v2 + 320);
            }

            if ((v11 & v107) != 0)
            {
              v55 = _quire_iter_feature_flags(v2, a1, _quire_populate_resource_in_data_volume);
              if (v55)
              {
                v52 = v55;
                if (*(v2 + 72))
                {
                  os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
                  v56 = *(v2 + 56);
                  if (!v56)
                  {
                    v56 = "[anonymous]";
                  }

                  *buf = 136446210;
                  *&buf[4] = v56;
                }

                else
                {
                  v88 = *(v2 + 56);
                  if (!v88)
                  {
                    v88 = "[anonymous]";
                  }

                  *buf = 136446210;
                  *&buf[4] = v88;
                }

                v58 = _os_log_send_and_compose_impl();
                v59 = 3000;
LABEL_165:
                v60 = 14;
                goto LABEL_166;
              }

              v11 = *(v2 + 320);
            }

            if ((v11 & v105) == 0)
            {
              goto LABEL_171;
            }

            v109 = 0;
            v110 = 0;
            object = 0;
            v115[0] = &v110;
            v115[1] = &v109;
            v115[2] = &object;
            v110 = view_create(&_view_application, *(v2 + 392), 0);
            v109 = view_create(&_view_internal, *(v2 + 392), 0);
            object = view_create(&_view_platform, *(v2 + 392), 0);
            v61 = *(v2 + 56);
            v62 = *__error();
            v63 = *(v2 + 72);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              v64 = "[anonymous]";
              if (v61)
              {
                v64 = v61;
              }

              *buf = 136446210;
              *&buf[4] = v64;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%{public}s: iterating launch agents", buf, 0xCu);
            }

            *__error() = v62;
            v52 = view_iterate_resource(v110, &_resource_agent, a1, _quire_read_agent, 0);
            if (v52)
            {
LABEL_146:
              if (object)
              {
                os_release(object);
              }

              if (v109)
              {
                os_release(v109);
              }

              if (v110)
              {
                os_release(v110);
              }

              if (!v52)
              {
                goto LABEL_171;
              }

              if (*(v2 + 72))
              {
                os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
                v87 = *(v2 + 56);
                if (!v87)
                {
                  v87 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v87;
              }

              else
              {
                v89 = *(v2 + 56);
                if (!v89)
                {
                  v89 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v89;
              }

              v58 = _os_log_send_and_compose_impl();
              v59 = 3012;
              goto LABEL_165;
            }

            v65 = ctx_new(v2, 0x30uLL);
            v65[4] = 0;
            v65[5] = v65 + 4;
            v65[3] = _quire_pending_services_state_destroy;
            v66 = *(v2 + 56);
            v67 = *__error();
            v68 = *(v2 + 72);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              v69 = "[anonymous]";
              if (v66)
              {
                v69 = v66;
              }

              *buf = 136446210;
              *&buf[4] = v69;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "%{public}s: preparing launch agents", buf, 0xCu);
            }

            *__error() = v67;
            v70 = *(v2 + 56);
            v71 = *__error();
            v72 = *(v2 + 72);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              v73 = "[anonymous]";
              if (v70)
              {
                v73 = v70;
              }

              *v116 = 136446210;
              v117 = v73;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping agents", v116, 0xCu);
            }

            *__error() = v71;
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = ___quire_bootstrap_launch_agents_block_invoke;
            v112 = &__block_descriptor_tmp_79;
            v113 = v2;
            v114 = v65 + 4;
            v74 = session_list_foreach(buf);
            if (v74)
            {
              goto LABEL_144;
            }

            v75 = *(v2 + 56);
            v76 = *__error();
            v77 = *(v2 + 72);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              v78 = "[anonymous]";
              if (v75)
              {
                v78 = v75;
              }

              *v116 = 136446210;
              v117 = v78;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping agents done", v116, 0xCu);
            }

            *__error() = v76;
            v79 = *(v2 + 56);
            v80 = *__error();
            v81 = *(v2 + 72);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v82 = "[anonymous]";
              if (v79)
              {
                v82 = v79;
              }

              *buf = 136446210;
              *&buf[4] = v82;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "%{public}s: iterating services", buf, 0xCu);
            }

            *__error() = v80;
            v74 = _quire_iter_resource_for_views(v2, v65, &_resource_daemon, v115, 3, 0, _quire_bootstrap_service);
            if (v74)
            {
              goto LABEL_144;
            }

            v83 = *(v2 + 56);
            v84 = *__error();
            v85 = *(v2 + 72);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v86 = "[anonymous]";
              if (v83)
              {
                v86 = v83;
              }

              *buf = 136446210;
              *&buf[4] = v86;
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "%{public}s: submitting jobs to launchd", buf, 0xCu);
            }

            *__error() = v84;
            v74 = _quire_pending_services_submit(v2, (v65 + 4));
            if (v74)
            {
LABEL_144:
              v52 = v74;
LABEL_145:
              ctx_destroy(v65);
              goto LABEL_146;
            }

            if (!quire_boot_session_test(v2, ".registered-for-watchdog"))
            {
              v95 = _quire_bootstrap_watchdog_registration(v2);
              if (v95)
              {
                v52 = v95;
                if (!_CFErrorHasDomainAndCode(v95, @"com.apple.security.cryptex", 10))
                {
                  goto LABEL_145;
                }

                v96 = *(v2 + 56);
                v97 = *__error();
                v98 = *(v2 + 72);
                if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                {
                  v99 = "[anonymous]";
                  if (v96)
                  {
                    v99 = v96;
                  }

                  *buf = 136446210;
                  *&buf[4] = v99;
                  _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%{public}s: Watchdog registration not supported on this device. Skipping.", buf, 0xCu);
                }

                *__error() = v97;
                CFRelease(v52);
              }
            }

            v100 = (v2 + 448);
            while (1)
            {
              v100 = *v100;
              if (!v100)
              {
                break;
              }

              if (*(v100[1] + 1152) == 1)
              {
                v101 = *(v2 + 56);
                v102 = *__error();
                v103 = *(v2 + 72);
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  v104 = "[anonymous]";
                  if (v101)
                  {
                    v104 = v101;
                  }

                  *buf = 136446210;
                  *&buf[4] = v104;
                  _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "%{public}s: resetting remote devices for added remote services", buf, 0xCu);
                }

                *__error() = v102;
                _quire_reset_rsd_devices(v2);
                break;
              }
            }

            if (*(v2 + 448))
            {
              v52 = quire_boot_session_set(v2, ".jobs-loaded", 1);
            }

            else
            {
              v52 = 0;
            }

            if (!v65)
            {
              goto LABEL_146;
            }

            goto LABEL_145;
          }

          if (*(v2 + 72))
          {
            os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
            v50 = *(v2 + 56);
            if (!v50)
            {
              v50 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v50;
          }

          else
          {
            v53 = *(v2 + 56);
            if (!v53)
            {
              v53 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v53;
          }

          v45 = _os_log_send_and_compose_impl();
          v46 = 2119;
        }
      }
    }

    v52 = createError("_quire_bootstrap_factory_content", "quire.c", v46, "com.apple.security.cryptex", 37, v34, v45);
    free(v45);
    goto LABEL_92;
  }

  if (!*(v2 + 416))
  {
    _quire_bootstrap_continue2_cold_1(v115, buf);
  }

  mounted_jetsam_properties = launch_load_mounted_jetsam_properties();
  if (!mounted_jetsam_properties)
  {
    v11 = *(v2 + 320);
    goto LABEL_33;
  }

  v21 = mounted_jetsam_properties;
  v22 = *(v2 + 56);
  v23 = *__error();
  v24 = *(v2 + 72);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v25;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: failed to launch_load_mounted_jetsam_properties: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v23;
  v26 = v21;
  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v27 = *(v2 + 56);
    if (!v27)
    {
      v27 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v27;
    *&buf[12] = 1024;
    *&buf[14] = v21;
  }

  else
  {
    v36 = *(v2 + 56);
    if (!v36)
    {
      v36 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v36;
    *&buf[12] = 1024;
    *&buf[14] = v21;
  }

  v37 = _os_log_send_and_compose_impl();
  createError("_quire_bootstrap_contents", "quire.c", 2961, "com.apple.security.cryptex.posix", v21, 0, v37);
  free(v37);
  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v38 = *(v2 + 56);
    if (!v38)
    {
      v38 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v38;
    *&buf[12] = 1024;
    *&buf[14] = v21;
  }

  else
  {
    v39 = *(v2 + 56);
    if (!v39)
    {
      v39 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v39;
    *&buf[12] = 1024;
    *&buf[14] = v21;
  }

  v40 = _os_log_send_and_compose_impl();
  Error = createError("_quire_bootstrap_contents", "quire.c", 3022, "com.apple.security.cryptex.posix", v26, 0, v40);
  free(v40);
  if (!Error)
  {
    goto LABEL_171;
  }

LABEL_167:
  if (*(v2 + 72))
  {
    os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
    v90 = *(v2 + 56);
    if (!v90)
    {
      v90 = "[anonymous]";
    }

    *buf = 136446210;
    *&buf[4] = v90;
  }

  else
  {
    v91 = *(v2 + 56);
    if (!v91)
    {
      v91 = "[anonymous]";
    }

    *buf = 136446210;
    *&buf[4] = v91;
  }

  v92 = _os_log_send_and_compose_impl();
  v93 = createError("_quire_bootstrap_continue2", "quire.c", 3046, "com.apple.security.cryptex", 14, Error, v92);
  free(v92);
  if (v93)
  {
    _quire_bootstrap_abort_with_error(v93, a1);
    CFRelease(Error);
    v94 = v93;
  }

  else
  {
    cryptex_async_f();
    v94 = Error;
  }

  CFRelease(v94);
}

void ___quire_handle_device_lock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  v4 = v1[5];
  v5 = *(*v1 + 56);
  v6 = *__error();
  v7 = *(v3 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v10 = 136446210;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: lock state source fired", &v10, 0xCu);
  }

  *__error() = v6;
  dispatch_source_cancel(v4);
  v1[5] = 0;
  v9 = v1[4];
  MKBEventsUnregister();
  v1[4] = 0;
  _quire_bootstrap_trust_cache(v3, v1, v2);
  if (v4)
  {
    os_release(v4);
  }
}

void ___quire_handle_device_lock_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = *__error();
  v6 = *(*(a1 + 32) + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v8 = 136446466;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: keybag event; firing source: event = %#x", &v8, 0x12u);
  }

  *__error() = v5;
  if (a2 <= 1)
  {
    dispatch_source_merge_data(*(a1 + 40), 1uLL);
  }
}

void _quire_unbootstrap_services(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_group_create();
  v4 = *(a1 + 188);
  v5 = v4 != 0;
  v49 = 0u;
  v50 = 0u;
  memset(v48, 0, sizeof(v48));
  *(&v48[0] + 1) = *(a1 + 416);
  LODWORD(v49) = v4;
  *(&v49 + 1) = *(a1 + 72);
  if (quire_boot_session_test(a1, ".registered-for-watchdog"))
  {
    v6 = _quire_parse_watchdog_service_descriptions(a1, watchdog_unbootstrap_service_descriptions);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 72))
      {
        os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
        v8 = *(a1 + 56);
        if (!v8)
        {
          v8 = "[anonymous]";
        }

        *buf = 136446210;
        v52 = v8;
      }

      else
      {
        v10 = *(a1 + 56);
        if (!v10)
        {
          v10 = "[anonymous]";
        }

        *buf = 136446210;
        v52 = v10;
      }

      v11 = _os_log_send_and_compose_impl();
      Error = createError("_quire_unbootstrap_watchdog_registration", "quire.c", 1312, "com.apple.security.cryptex", 33, v7, v11);
      free(v11);
      CFRelease(v7);
    }

    else
    {
      Error = quire_boot_session_set(a1, ".registered-for-watchdog", 0);
    }

    if (*(a1 + 56))
    {
      v12 = *(a1 + 56);
    }

    else
    {
      v12 = "[anonymous]";
    }

    v13 = *__error();
    v14 = *(a1 + 72);
    if (Error)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v52 = v12;
        v53 = 2112;
        v54 = Error;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: Unregister jobs from watchdog: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v52 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s: Unregister jobs from watchdog [no error]", buf, 0xCu);
      }

      Error = 0;
    }

    *__error() = v13;
  }

  else
  {
    Error = 0;
  }

  cf = Error;
  dispatch_group_enter(v3);
  _quire_activate(a1);
  v15 = *(a1 + 448);
  v16 = 0;
  if (v15)
  {
    v17 = 16 * v5;
    v18 = (a1 + 448);
    v40 = v17;
    do
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2000000000;
      v47 = 0;
      v19 = v15[1];
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v20 = strdup(v19);
          if (v20)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v20 = strdup(v19);
        if (!v20)
        {
          quire_attr_populate_dependencies_cold_2();
        }
      }

      v45[3] = v20;
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

        v25 = v45[3];
        *buf = 136446466;
        v52 = v24;
        v53 = 2082;
        v54 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s: unbootstrapping service: %{public}s", buf, 0x16u);
      }

      *__error() = v22;
      v26 = *(v15[1] + 1152);
      dispatch_group_enter(v3);
      v27 = v15[1];
      v28 = *(a1 + 24);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 0x40000000;
      v43[2] = ___quire_unbootstrap_services_block_invoke;
      v43[3] = &unk_100073DD0;
      v43[4] = &v44;
      v43[5] = a1;
      v43[6] = v3;
      sm_service_on_unload(v27, v28, v43);
      *&v48[0] = v40;
      v29 = sm_unbootstrap_service(v15[1], v48);
      if (v29)
      {
        v30 = *(a1 + 56);
        v31 = *__error();
        v32 = *(a1 + 72);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = v15[1];
          v34 = "[anonymous]";
          if (v30)
          {
            v34 = v30;
          }

          *buf = 136446722;
          v52 = v34;
          v53 = 2082;
          v54 = v33;
          v55 = 2112;
          v56 = v29;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s: failed to unbootstrap service: %{public}s: %@", buf, 0x20u);
        }

        *__error() = v31;
      }

      sm_service_destroy(v15[1]);
      v15[1] = 0;
      _quire_deactivate(a1);
      v35 = *(a1 + 448);
      if (v35 == v15)
      {
        v36 = (a1 + 448);
      }

      else
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35 != v15);
      }

      *v36 = *v35;
      free(v15);
      _Block_object_dispose(&v44, 8);
      if (v29)
      {
        CFRelease(v29);
      }

      v16 |= v26;
      v15 = *v18;
    }

    while (*v18);
  }

  v37 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___quire_unbootstrap_services_block_invoke_46;
  block[3] = &unk_100073DF8;
  v42 = v16 & 1;
  block[4] = a2;
  block[5] = a1;
  dispatch_group_notify(v3, v37, block);
  dispatch_group_leave(v3);
  if (v3)
  {
    os_release(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___quire_bootstrap_abort_with_error_block_invoke(uint64_t a1)
{
  _quire_iter_feature_flags(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_iter_binaries(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_iter_libraries(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_iter_log_profiles(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_unbootstrap_diags(*(a1 + 32));
  _quire_unbootstrap_trust_cache(*(a1 + 32));
}

_DWORD *_quire_unbootstrap_diags(uint64_t a1)
{
  bzero(&v41, 0x878uLL);
  v21 = 0;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  v27 = 0u;
  v2 = *(a1 + 56);
  v3 = *__error();
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446210;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: unbootstrap diags", buf, 0xCu);
  }

  result = __error();
  *result = v3;
  if ((*(a1 + 176) & 0x20) != 0)
  {
    if (statfs("/", &v41))
    {
      v7 = *__error();
      v8 = *(a1 + 56);
      v9 = *__error();
      v10 = *(a1 + 72);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        result = __error();
        *result = v9;
        return result;
      }

      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      *buf = 136446466;
      v23 = v11;
      v24 = 1024;
      v25 = v7;
      v12 = "%{public}s: failed to statfs root path: %{darwin.errno}d";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
      goto LABEL_12;
    }

    sscanf(v41.f_mntfromname, "/dev/disk%d", &v21);
    snprintf(__str, 0xFFuLL, "disk%d", v21);
    if (unlink("/AppleInternal/Diags") && *__error() != 2)
    {
      v18 = *__error();
      v19 = *(a1 + 56);
      v9 = *__error();
      v10 = *(a1 + 72);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v20 = "[anonymous]";
      if (v19)
      {
        v20 = v19;
      }

      *buf = 136446466;
      v23 = v20;
      v24 = 1024;
      v25 = v18;
      v12 = "%{public}s: failed to unlink diags symlink: %{darwin.errno}d";
      goto LABEL_11;
    }

    result = apfs_volume_delete(__str, 640, *(a1 + 72));
    if (result)
    {
      v13 = result;
      v14 = *(a1 + 56);
      v15 = *__error();
      v16 = *(a1 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = "[anonymous]";
        if (v14)
        {
          v17 = v14;
        }

        *buf = 136446466;
        v23 = v17;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: failed to delete diags volume: %{darwin.errno}d", buf, 0x12u);
      }

      result = __error();
      *result = v15;
    }

    else
    {
      *(a1 + 176) &= ~0x20uLL;
    }
  }

  return result;
}

void _quire_unbootstrap_trust_cache(void *a1)
{
  v2 = quire_boot_session_test(a1, ".trustcache-loaded");
  v3 = a1[7];
  v4 = *__error();
  v5 = a1[9];
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = "[anonymous]";
      if (v3)
      {
        v6 = v3;
      }

      *buf = 136446210;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s: unloading trust cache", buf, 0xCu);
    }

    *__error() = v4;
    v7 = a1[25];
    tc_asset = cryptex_core_get_tc_asset();
    v9 = a1[25];
    v10 = cryptex_magister_create();
    cryptex_set_target_object();
    if (*(a1[25] + 40))
    {
      v13 = a1[7];
      v14 = *__error();
      v15 = a1[9];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = "[anonymous]";
        if (v13)
        {
          v16 = v13;
        }

        *buf = 136446210;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}s: Skipping authentication of trust cache to be unloaded.", buf, 0xCu);
      }

      *__error() = v14;
      cryptex_async();
    }

    else
    {
      v11 = *(tc_asset + 8);
      cryptex_magister_authenticate();
    }

    cryptex_activate();
    if (v10)
    {
      os_release(v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = "[anonymous]";
      if (v3)
      {
        v12 = v3;
      }

      *buf = 136446210;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s: trust cache is not loaded", buf, 0xCu);
    }

    *__error() = v4;
    cryptex_async();
  }
}

uint64_t ___quire_bootstrap_abort_with_error_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 56))
  {
    v4 = *(*(a1 + 32) + 56);
  }

  else
  {
    v4 = "[anonymous]";
  }

  v5 = *__error();
  v6 = *(*(a1 + 32) + 72);
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = v4;
      v16 = 2112;
      v17 = a2;
      v7 = "%{public}s: Unbootstrap trust cache: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v14, v10);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136446210;
    v15 = v4;
    v7 = "%{public}s: Unbootstrap trust cache [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 12;
    goto LABEL_9;
  }

  *__error() = v5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  return cryptex_target_async_f();
}

void _quire_activate(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 184);
  *(a1 + 184) = v2 + 1;
  if (v2 == -1)
  {
    _quire_activate_cold_1();
  }
}

void ___quire_unbootstrap_services_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 56);
  v3 = *__error();
  v4 = *(*(a1 + 40) + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    v6 = *(*(*(a1 + 32) + 8) + 24);
    v8 = 136446466;
    v9 = v5;
    v10 = 2082;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: service fully removed: %{public}s", &v8, 0x16u);
  }

  *__error() = v3;
  v7 = *(*(a1 + 32) + 8);
  free(*(v7 + 24));
  *(v7 + 24) = 0;
  dispatch_group_leave(*(a1 + 48));
}

void _quire_deactivate(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 184);
  *(a1 + 184) = v2 - 1;
  if (!v2)
  {
    _quire_activate_cold_1();
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 376);
    if (v3)
    {
      v4 = (a1 + 376);
      do
      {
        if ((*(v3 + 52) & 0x80000000) != 0)
        {
          _quire_unmount_continue(v3);
        }

        else
        {
          _quire_mount_continue(v3);
        }

        v5 = *v4;
        v6 = *v4;
        if (*v4 == v3)
        {
          v5 = *(v5 + 32);
          *v4 = v5;
          if (!v5)
          {
            *(a1 + 384) = v4;
            *(v3 + 32) = -1;
            return;
          }
        }

        else
        {
          do
          {
            v7 = v6;
            v6 = *(v6 + 32);
          }

          while (v6 != v3);
          v8 = *(v6 + 32);
          *(v7 + 32) = v8;
          v9 = v7 + 32;
          if (!v8)
          {
            *(a1 + 384) = v9;
          }
        }

        *(v3 + 32) = -1;
        v3 = v5;
      }

      while (v5);
    }
  }
}

void ___quire_unbootstrap_services_block_invoke_46(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3[7];
  v5 = *__error();
  v6 = v3[9];
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

    *v21 = 136446210;
    *&v21[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: all services fully removed", v21, 0xCu);
  }

  *__error() = v5;
  if (v1)
  {
    v8 = v3[7];
    v9 = *__error();
    v10 = v3[9];
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

      *v21 = 136446210;
      *&v21[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: resetting remote devices for removed remote services", v21, 0xCu);
    }

    *__error() = v9;
    v12 = v3[3];
    *v21 = _NSConcreteStackBlock;
    *&v21[8] = 0x40000000;
    *&v21[16] = ___quire_reset_rsd_devices_block_invoke;
    v22 = &__block_descriptor_tmp_50;
    v23 = v3;
    remote_device_browse_present();
  }

  v13 = quire_boot_session_set(v3, ".jobs-loaded", 0);
  if (v3[7])
  {
    v14 = v3[7];
  }

  else
  {
    v14 = "[anonymous]";
  }

  v15 = *__error();
  v16 = v3[9];
  if (v13)
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v21 = 136446466;
    *&v21[4] = v14;
    *&v21[12] = 2112;
    *&v21[14] = v13;
    v17 = "%{public}s: Unset 'jobs loaded' flag: %@";
    v18 = v16;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *v21 = 136446210;
    *&v21[4] = v14;
    v17 = "%{public}s: Unset 'jobs loaded' flag [no error]";
    v18 = v16;
    v19 = OS_LOG_TYPE_DEBUG;
    v20 = 12;
  }

  _os_log_impl(&_mh_execute_header, v18, v19, v17, v21, v20);
LABEL_22:
  *__error() = v15;
  _quire_deactivate(v3);
  (*(v2 + 16))(v2);
  if (v13)
  {
    CFRelease(v13);
  }
}

CFErrorRef _quire_parse_watchdog_service_descriptions(uint64_t a1, uint64_t (*a2)(CFTypeRef))
{
  v33 = 0;
  v34 = 0;
  memset(v32, 0, sizeof(v32));
  cf = 0;
  if (!watchdog_available(&v34) || (v4 = *(a1 + 200), (info_asset = cryptex_core_get_info_asset()) == 0))
  {
    v10 = 0;
    goto LABEL_9;
  }

  file = _read_file(*(info_asset + 16), v32);
  if (file)
  {
    v7 = file;
    v8 = file;
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(a1 + 56);
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v35 = 136446466;
      v36 = v9;
      v37 = 1024;
      v38 = v7;
    }

    else
    {
      v14 = *(a1 + 56);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      v35 = 136446466;
      v36 = v14;
      v37 = 1024;
      v38 = file;
    }

    v15 = _os_log_send_and_compose_impl();
    Error = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1244, "com.apple.security.cryptex.posix", v8, 0, v15);
    free(v15);
    v10 = 0;
LABEL_24:
    v11 = 0;
    v34 = Error;
    goto LABEL_25;
  }

  v12 = xpc_create_from_plist();
  v10 = v12;
  if (!v12 || xpc_get_type(v12) != &_xpc_type_dictionary)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v13 = *(a1 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      v35 = 136446210;
      v36 = v13;
    }

    else
    {
      v17 = *(a1 + 56);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v35 = 136446210;
      v36 = v17;
    }

    v18 = _os_log_send_and_compose_impl();
    Error = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1250, "com.apple.security.cryptex", 11, 0, v18);
    free(v18);
    goto LABEL_24;
  }

  v21 = watchdog_create_service_descriptions(v10, &cf);
  if (v21)
  {
    v11 = v21;
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v22 = *(a1 + 56);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      v35 = 136446210;
      v36 = v22;
    }

    else
    {
      v25 = *(a1 + 56);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      v35 = 136446210;
      v36 = v25;
    }

    v26 = _os_log_send_and_compose_impl();
    v27 = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1256, "com.apple.security.cryptex", 11, v11, v26);
    free(v26);
    v34 = v27;
    goto LABEL_25;
  }

  if (!cf || CFArrayGetCount(cf) < 1)
  {
LABEL_9:
    v11 = 0;
LABEL_25:
    buff_destroy(v32);
    v19 = v34;
    goto LABEL_26;
  }

  v23 = watchdog_copy_service_description_labels(cf);
  v11 = _quire_validate_watchdog_service_labels(a1, v23);
  if (v11)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v24 = *(a1 + 56);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      v35 = 136446210;
      v36 = v24;
    }

    else
    {
      v29 = *(a1 + 56);
      if (!v29)
      {
        v29 = "[anonymous]";
      }

      v35 = 136446210;
      v36 = v29;
    }

    v30 = _os_log_send_and_compose_impl();
    v28 = createError("_quire_parse_watchdog_service_descriptions", "quire.c", 1264, "com.apple.security.cryptex", 11, v11, v30);
    free(v30);
  }

  else
  {
    v28 = a2(cf);
  }

  v34 = v28;
  buff_destroy(v32);
  v19 = v34;
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    os_release(v10);
  }

  return v19;
}

CFErrorRef _quire_validate_watchdog_service_labels(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v5 = Count;
    v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v15.location = 0;
    v15.length = v5;
    CFArrayGetValues(theArray, v15, v6);
    v7 = CFSetCreate(0, v6, v5, &kCFTypeSetCallBacks);
    if (CFSetGetCount(v7) == v5)
    {
      if (v5 < 1)
      {
        Error = 0;
      }

      else
      {
        v8 = 0;
        while (2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
          v10 = _CFStringCopyUTF8String(ValueAtIndex);
          v11 = (a1 + 448);
          do
          {
            v11 = *v11;
            if (!v11)
            {
              if (*(a1 + 72))
              {
                os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
              }

              *(a1 + 56);
              v14 = _os_log_send_and_compose_impl();
              Error = createError("_quire_validate_watchdog_service_labels", "quire.c", 1215, "com.apple.security.cryptex", 11, 0, v14);
              free(v14);
              goto LABEL_21;
            }
          }

          while (strcmp(v11[1], v10));
          free(v10);
          Error = 0;
          if (++v8 != v5)
          {
            continue;
          }

          break;
        }
      }

      if (v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (*(a1 + 72))
      {
        os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      }

      *(a1 + 56);
      v10 = _os_log_send_and_compose_impl();
      Error = createError("_quire_validate_watchdog_service_labels", "quire.c", 1194, "com.apple.security.cryptex", 11, 0, v10);
LABEL_21:
      free(v10);
      if (v7)
      {
LABEL_17:
        CFRelease(v7);
      }
    }
  }

  else
  {
    Error = 0;
    v6 = 0;
  }

  free(v6);
  return Error;
}

uint64_t ___quire_reset_rsd_devices_block_invoke(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = result;
    result = remote_device_reset();
    if ((result & 1) == 0)
    {
      v4 = *__error();
      v5 = *(*(v3 + 32) + 56);
      v6 = *__error();
      v7 = *(*(v3 + 32) + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (!v5)
        {
          v5 = "[anonymous]";
        }

        v8 = 136446722;
        v9 = v5;
        v10 = 2080;
        name = remote_device_get_name();
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to reset remote device: %s: %{darwin.errno}d", &v8, 0x1Cu);
      }

      result = __error();
      *result = v6;
    }
  }

  return result;
}

char *_quire_iter_feature_flags(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  object = 0;
  p_object = &object;
  object = view_create(&_view_application, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating feature_flag_domains", buf, 0xCu);
  }

  *__error() = v7;
  v10 = _quire_iter_resource_for_views(a1, a2, &_resource_feature_flags, &p_object, 1, 0, a3);
  if (object)
  {
    os_release(object);
  }

  return v10;
}

uint64_t _quire_remove_resource_from_data_volume(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  v3 = _quire_unbootstrap_library;
  if (v2 <= 4)
  {
    if ((v2 - 2) >= 3)
    {
      if (v2)
      {
        v4 = _quire_unbootstrap_binary;
LABEL_12:
        v3 = v4;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_7:
    v8 = *(a2 + 72);
    v5 = _os_log_send_and_compose_impl();
    Error = createError("_quire_remove_resource_from_data_volume", "quire.c", 2159, "com.apple.security.cryptex", 10, 0, v5);
    free(v5);
    return Error;
  }

  if (v2 > 0xC)
  {
    goto LABEL_13;
  }

  if (((1 << v2) & 0x1B00) != 0)
  {
    goto LABEL_7;
  }

  if (v2 == 7)
  {
    v4 = _quire_unbootstrap_log_plist;
    goto LABEL_12;
  }

  if (v2 == 10)
  {
    v4 = _quire_unbootstrap_feature_flags_domain;
    goto LABEL_12;
  }

LABEL_13:

  return v3();
}

char *_quire_iter_resource_for_views(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, void *, uint64_t))
{
  if (a5 < 1)
  {
    return 0;
  }

  v7 = a5;
  while (1)
  {
    v12 = **a4;
    v13 = *(v12 + 48);
    if (v13 == &_view_internal)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        v14 = *(a1 + 56);
        v15 = *__error();
        v16 = *(a1 + 72);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "[anonymous]";
          if (v14)
          {
            v17 = v14;
          }

          *buf = 136446210;
          v37 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: trying to bootstrap internal content on non internal system", buf, 0xCu);
        }

        *__error() = v15;
      }

      v13 = *(v12 + 48);
    }

    if (v13 == &_view_platform && *(a1 + 188))
    {
      v28 = *(a1 + 56);
      v20 = *__error();
      v29 = *(a1 + 72);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = "[anonymous]";
        if (v28)
        {
          v30 = v28;
        }

        *buf = 136446210;
        v37 = v30;
        v24 = v29;
        v25 = OS_LOG_TYPE_INFO;
        v26 = "%{public}s: not bootstrapping platform content for session";
        v27 = 12;
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v18 = view_iterate_resource(v12, a3, a2, a7, a6);
    v19 = *(a1 + 56) ? *(a1 + 56) : "[anonymous]";
    v20 = *__error();
    v21 = *(a1 + 72);
    if (v18)
    {
      break;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a3 + 8);
      v23 = *(*(v12 + 48) + 8);
      *buf = 136446722;
      v37 = v19;
      v38 = 2082;
      v39 = v22;
      v40 = 2082;
      v41 = v23;
      v24 = v21;
      v25 = OS_LOG_TYPE_DEBUG;
      v26 = "%{public}s: iterate '%{public}s' resources for '%{public}s' view [no error]";
      v27 = 32;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v24, v25, v26, buf, v27);
    }

LABEL_24:
    *__error() = v20;
    ++a4;
    if (!--v7)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a3 + 8);
    v32 = *(*(v12 + 48) + 8);
    *buf = 136446978;
    v37 = v19;
    v38 = 2082;
    v39 = v31;
    v40 = 2082;
    v41 = v32;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: iterate '%{public}s' resources for '%{public}s' view: %@", buf, 0x2Au);
  }

  *__error() = v20;
  return v18;
}

uint64_t _quire_unbootstrap_library(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  bzero(__str, 0x400uLL);
  v6 = a3[7];
  snprintf(__str, 0x400uLL, "%s/%s", v6, *(a2 + 72));
  v7 = openat(*(a3 + 12), *(a2 + 72), 0x200000);
  if ((v7 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v8 = *__error();
  if (!v8)
  {
    v17 = *(v5 + 200);
    Error = cryptex_core_metadata_matches_xattrs();
    if (Error)
    {
      goto LABEL_22;
    }

    v24 = *(v5 + 56);
    v10 = *__error();
    v25 = *(v5 + 72);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v26 = "[anonymous]";
    if (v24)
    {
      v26 = v24;
    }

    *buf = 136446466;
    v28 = v26;
    v29 = 2080;
    v30 = __str;
    v13 = "%{public}s: %s not deleted because metadata does not match cryptex";
    v14 = v25;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v9 = *(v5 + 56);
    v10 = *__error();
    v11 = *(v5 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:
      Error = 0;
      *__error() = v10;
      goto LABEL_22;
    }

    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    *buf = 136446466;
    v28 = v12;
    v29 = 2080;
    v30 = __str;
    v13 = "%{public}s: No library symlink found at %s";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEBUG;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x16u);
    goto LABEL_10;
  }

  v18 = *__error();
  if (*(v5 + 72))
  {
    os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    v19 = *(v5 + 56);
    *buf = 136446722;
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = "[anonymous]";
    }

    v28 = v20;
    v29 = 2080;
    v30 = __str;
    v31 = 1024;
    v32 = v18;
  }

  else
  {
    v21 = "[anonymous]";
    if (*(v5 + 56))
    {
      v21 = *(v5 + 56);
    }

    *buf = 136446722;
    v28 = v21;
    v29 = 2080;
    v30 = __str;
    v31 = 1024;
    v32 = v18;
  }

  v22 = _os_log_send_and_compose_impl();
  Error = createError("_quire_unbootstrap_library", "quire.c", 1536, "com.apple.security.cryptex.posix", v18, 0, v22);
  free(v22);
LABEL_22:
  if (v7 != -1 && close(v7) == -1)
  {
    daemon_init_cold_13(buf, __str);
  }

  return Error;
}

uint64_t _quire_unbootstrap_log_plist(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(__str, 0x400uLL);
  memset(v38, 0, 64);
  v35 = 0u;
  v36 = 0u;
  *__n = 0u;
  v34 = 0u;
  v5 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s%s", "/Library/Preferences/Logging/Subsystems/", v5);
  v6 = open(__str, 256);
  if ((v6 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v7 = *__error();
  if (!v7)
  {
    v16 = *(v4 + 200);
    Error = cryptex_core_metadata_matches_xattrs();
    if (Error)
    {
      goto LABEL_22;
    }

    v24 = *(v4 + 56);
    v9 = *__error();
    v25 = *(v4 + 72);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v26 = "[anonymous]";
    if (v24)
    {
      v26 = v24;
    }

    *buf = 136446466;
    v28 = v26;
    v29 = 2080;
    v30 = __str;
    v12 = "%{public}s: %s not deleted because metadata does not match cryptex";
    v13 = v25;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  if (v7 == 2)
  {
    v8 = *(v4 + 56);
    v9 = *__error();
    v10 = *(v4 + 72);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:
      Error = 0;
      *__error() = v9;
      goto LABEL_22;
    }

    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v28 = v11;
    v29 = 2080;
    v30 = __str;
    v12 = "%{public}s: No log profile found at %s";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, 0x16u);
    goto LABEL_10;
  }

  v17 = *__error();
  v18 = v17;
  if (*(v4 + 72))
  {
    os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
    v19 = *(v4 + 56);
    *buf = 136446722;
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = "[anonymous]";
    }

    v28 = v20;
    v29 = 2080;
    v30 = __str;
    v31 = 1024;
    v32 = v17;
  }

  else
  {
    v21 = "[anonymous]";
    if (*(v4 + 56))
    {
      v21 = *(v4 + 56);
    }

    *buf = 136446722;
    v28 = v21;
    v29 = 2080;
    v30 = __str;
    v31 = 1024;
    v32 = v17;
  }

  v22 = _os_log_send_and_compose_impl();
  Error = createError("_quire_unbootstrap_log_plist", "quire.c", 1671, "com.apple.security.cryptex.posix", v18, 0, v22);
  free(v22);
LABEL_22:
  if (v6 != -1 && close(v6) == -1)
  {
    daemon_init_cold_13(__n, v38);
  }

  return Error;
}

uint64_t _quire_unbootstrap_feature_flags_domain(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(__str, 0x400uLL);
  LOBYTE(v35) = 0;
  v5 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s/%s", "/Library/Preferences/FeatureFlags/Domain", v5);
  v6 = open(__str, 256);
  if ((v6 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v7 = *__error();
  if (!v7)
  {
    v16 = *(v4 + 200);
    Error = cryptex_core_metadata_matches_xattrs();
    if (Error)
    {
      goto LABEL_30;
    }

    if ((v35 & 1) == 0)
    {
      v30 = *(v4 + 56);
      v9 = *__error();
      v31 = *(v4 + 72);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v32 = "[anonymous]";
      if (v30)
      {
        v32 = v30;
      }

      *buf = 136446466;
      v38 = v32;
      v39 = 2080;
      v40 = __str;
      v12 = "%{public}s: %s not deleted because metadata does not match cryptex";
      v13 = v31;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }

    if (!unlink(__str) || (v17 = *__error()) == 0)
    {
      v33 = *(v4 + 56);
      v9 = *__error();
      v10 = *(v4 + 72);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v34 = "[anonymous]";
      if (v33)
      {
        v34 = v33;
      }

      *buf = 136446466;
      v38 = v34;
      v39 = 2080;
      v40 = __str;
      v12 = "%{public}s: unlink %s: success";
      goto LABEL_9;
    }

    v18 = v17;
    v19 = *(v4 + 56);
    v20 = *__error();
    v21 = *(v4 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = "[anonymous]";
      *buf = 136446722;
      if (v19)
      {
        v22 = v19;
      }

      v38 = v22;
      v39 = 2080;
      v40 = __str;
      v41 = 1024;
      v42 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: unlink %s: %{darwin.errno}d", buf, 0x1Cu);
    }

    *__error() = v20;
    *buf = 136315394;
    v38 = __str;
    v39 = 1024;
    LODWORD(v40) = v17;
    v27 = _os_log_send_and_compose_impl();
    v28 = 2875;
LABEL_29:
    Error = createError("_quire_unbootstrap_feature_flags_domain", "quire.c", v28, "com.apple.security.cryptex.posix", v18, 0, v27);
    free(v27);
    goto LABEL_30;
  }

  if (v7 != 2)
  {
    v23 = *__error();
    v18 = v23;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v24 = *(v4 + 56);
      *buf = 136446722;
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = "[anonymous]";
      }

      v38 = v25;
      v39 = 2080;
      v40 = __str;
      v41 = 1024;
      v42 = v23;
    }

    else
    {
      v26 = "[anonymous]";
      if (*(v4 + 56))
      {
        v26 = *(v4 + 56);
      }

      *buf = 136446722;
      v38 = v26;
      v39 = 2080;
      v40 = __str;
      v41 = 1024;
      v42 = v23;
    }

    v27 = _os_log_send_and_compose_impl();
    v28 = 2859;
    goto LABEL_29;
  }

  v8 = *(v4 + 56);
  v9 = *__error();
  v10 = *(v4 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    v38 = v11;
    v39 = 2080;
    v40 = __str;
    v12 = "%{public}s: No feature flag file found at %s";
LABEL_9:
    v13 = v10;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, 0x16u);
  }

LABEL_11:
  Error = 0;
  *__error() = v9;
LABEL_30:
  if (v6 != -1 && close(v6) == -1)
  {
    daemon_init_cold_13(&v35, buf);
  }

  return Error;
}

uint64_t _quire_unbootstrap_binary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[7];
  v5 = *a3;
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", v4, *(a2 + 72));
  v6 = open(v4, 0);
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = openat(v6, *(a2 + 72), 256);
    if ((v8 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v9 = *__error();
    if (v9)
    {
      if (v9 == 2)
      {
        v10 = *(v5 + 56);
        v11 = *__error();
        v12 = *(v5 + 72);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
LABEL_11:
          Error = 0;
          *__error() = v11;
          goto LABEL_33;
        }

        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136446466;
        v35 = v13;
        v36 = 2080;
        v37 = __str;
        v14 = "%{public}s: No trampoline found at %s";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0x16u);
        goto LABEL_11;
      }

      v22 = *__error();
      if (*(v5 + 72))
      {
        os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
        v23 = *(v5 + 56);
        *buf = 136446722;
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = "[anonymous]";
        }

        v35 = v24;
        v36 = 2080;
        v37 = __str;
        v38 = 1024;
        v39 = v22;
      }

      else
      {
        v28 = "[anonymous]";
        if (*(v5 + 56))
        {
          v28 = *(v5 + 56);
        }

        *buf = 136446722;
        v35 = v28;
        v36 = 2080;
        v37 = __str;
        v38 = 1024;
        v39 = v22;
      }

      v29 = _os_log_send_and_compose_impl();
      Error = createError("_quire_unbootstrap_binary_from", "quire.c", 1866, "com.apple.security.cryptex.posix", v22, 0, v29);
      free(v29);
    }

    else
    {
      v21 = *(v5 + 200);
      Error = cryptex_core_metadata_matches_xattrs();
      if (!Error)
      {
        v31 = *(v5 + 56);
        v11 = *__error();
        v32 = *(v5 + 72);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v33 = "[anonymous]";
        if (v31)
        {
          v33 = v31;
        }

        *buf = 136446466;
        v35 = v33;
        v36 = 2080;
        v37 = __str;
        v14 = "%{public}s: %s not deleted because metadata does not match cryptex";
        v15 = v32;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_10;
      }
    }

LABEL_33:
    if (close(v7) != -1)
    {
      if (v8 != -1 && close(v8) == -1)
      {
        daemon_init_cold_13(buf, __str);
      }

      return Error;
    }

LABEL_41:
    daemon_init_cold_13(buf, __str);
  }

  v18 = *__error();
  if (*(v5 + 72))
  {
    os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    v19 = *(v5 + 56);
    v20 = *(a2 + 72);
    *buf = 136446722;
    if (!v19)
    {
      v19 = "[anonymous]";
    }

    v35 = v19;
    v36 = 2080;
    v37 = v20;
    v38 = 1024;
    v39 = v18;
  }

  else
  {
    v25 = *(v5 + 56);
    if (!v25)
    {
      v25 = "[anonymous]";
    }

    v26 = *(a2 + 72);
    *buf = 136446722;
    v35 = v25;
    v36 = 2080;
    v37 = v26;
    v38 = 1024;
    v39 = v18;
  }

  v27 = _os_log_send_and_compose_impl();
  Error = createError("_quire_unbootstrap_binary_from", "quire.c", 1852, "com.apple.security.cryptex.posix", v18, 0, v27);
  free(v27);
  if (v7 != -1 && close(v7) == -1)
  {
    goto LABEL_41;
  }

  return Error;
}

void _quire_iter_binaries(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  v11 = 0;
  v12 = 0;
  object = 0;
  v15[0] = &v12;
  v15[1] = &v11;
  v15[2] = &object;
  v12 = view_create(&_view_application, *(a1 + 392), 0);
  v11 = view_create(&_view_internal, *(a1 + 392), 0);
  object = view_create(&_view_platform, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating binaries", buf, 0xCu);
  }

  *__error() = v7;
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_bin, v15, 3, a3);
  if (object)
  {
    os_release(object);
  }

  if (v11)
  {
    os_release(v11);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void _quire_iter_resource_for_views_best_effort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t))
{
  v6 = _quire_iter_resource_for_views(a1, a2, a3, a4, a5, 2, a6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void _quire_iter_libraries(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  v11 = 0;
  v12 = 0;
  object = 0;
  v15[0] = &v12;
  v15[1] = &v11;
  v15[2] = &object;
  v12 = view_create(&_view_application, *(a1 + 392), 0);
  v11 = view_create(&_view_internal, *(a1 + 392), 0);
  object = view_create(&_view_platform, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating libraries", buf, 0xCu);
  }

  *__error() = v7;
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_lib, v15, 3, a3);
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_framework, v15, 3, a3);
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_private_framework, v15, 3, a3);
  if (object)
  {
    os_release(object);
  }

  if (v11)
  {
    os_release(v11);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void _quire_iter_log_profiles(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  object = 0;
  v11 = 0;
  v14[0] = &v11;
  v14[1] = &object;
  v11 = view_create(&_view_application, *(a1 + 392), 0);
  object = view_create(&_view_platform, *(a1 + 392), 0);
  v6 = *(a1 + 56);
  v7 = *__error();
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446210;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: iterating log_profiles", buf, 0xCu);
  }

  *__error() = v7;
  _quire_iter_resource_for_views_best_effort(a1, a2, &_resource_log_profile, v14, 2, a3);
  if (object)
  {
    os_release(object);
  }

  if (v11)
  {
    os_release(v11);
  }
}

void _quire_unbootstrap_trust_cache_continue(uint64_t a1, const void *a2)
{
  if (a2)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v4 = *(a1 + 56);
      if (!v4)
      {
        v4 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v4;
    }

    else
    {
      v14 = *(a1 + 56);
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v14;
    }

    v15 = _os_log_send_and_compose_impl();
    createError("_quire_unbootstrap_trust_cache_continue", "quire.c", 2452, "com.apple.security.cryptex", 38, a2, v15);
    free(v15);
    goto LABEL_17;
  }

  v5 = *(a1 + 200);
  tc_asset = cryptex_core_get_tc_asset();
  v7 = _amfi_unload_trust_cache(*(tc_asset + 16), *(a1 + 72));
  if (v7)
  {
    v8 = v7;
    if (_CFErrorHasDomainAndCode(v7, @"com.apple.security.cryptex", 10))
    {
      v9 = *(a1 + 56);
      v10 = *__error();
      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = "[anonymous]";
        if (v9)
        {
          v12 = v9;
        }

        *buf = 136446210;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}s: unloading trust cache is not supported", buf, 0xCu);
      }

      *__error() = v10;
      CFRelease(v8);
      Error = 0;
      goto LABEL_45;
    }

    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v17 = *(a1 + 56);
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v17;
    }

    else
    {
      v18 = *(a1 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v18;
    }

    v19 = _os_log_send_and_compose_impl();
    v20 = 2422;
    v21 = 38;
  }

  else
  {
    v8 = quire_boot_session_set(a1, ".trustcache-loaded", 0);
    if (!v8)
    {
LABEL_17:
      Error = 0;
      goto LABEL_45;
    }

    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v16 = *(a1 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v16;
    }

    else
    {
      v22 = *(a1 + 56);
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v22;
    }

    v19 = _os_log_send_and_compose_impl();
    v20 = 2430;
    v21 = 34;
  }

  Error = createError("_quire_unbootstrap_authentic_trust_cache", "quire.c", v20, "com.apple.security.cryptex", v21, v8, v19);
  free(v19);
  CFRelease(v8);
  if (Error)
  {
    if (*(a1 + 72))
    {
      os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR);
      v23 = *(a1 + 56);
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v23;
    }

    else
    {
      v24 = *(a1 + 56);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      *buf = 136446210;
      v27 = v24;
    }

    v25 = _os_log_send_and_compose_impl();
    createError("_quire_unbootstrap_trust_cache_continue", "quire.c", 2461, "com.apple.security.cryptex", 38, Error, v25);
    free(v25);
  }

LABEL_45:
  cryptex_async();
  if (Error)
  {
    CFRelease(Error);
  }
}

void ___quire_unbootstrap_trust_cache_continue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t _quire_bootstrap_continue3(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *__error();
  v4 = *(v1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: quire bootstrap succeeded", &v7, 0xCu);
  }

  *__error() = v3;
  *(v1 + 176) |= 2uLL;
  return cryptex_target_async_f();
}

CFErrorRef _quire_populate_resource_in_data_volume(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = _quire_remove_resource_from_data_volume(a1, a2);
  if (v7)
  {
    v8 = v7;
    if ((_CFErrorHasDomainAndCode(v7, @"com.apple.security.cryptex", 10) & 1) == 0)
    {
      v9 = *(v6 + 56);
      v10 = *__error();
      v11 = *(v6 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "[anonymous]";
        v13 = *(a2 + 72);
        if (v9)
        {
          v12 = v9;
        }

        *buf = 136446722;
        v33 = v12;
        v34 = 2082;
        v35 = v13;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: Unbootstrap existing %{public}s: %@", buf, 0x20u);
      }

      *__error() = v10;
    }

    CFRelease(v8);
  }

  else
  {
    v14 = *(v6 + 56);
    v15 = *__error();
    v16 = *(v6 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      v18 = *(a2 + 72);
      if (v14)
      {
        v17 = v14;
      }

      *buf = 136446466;
      v33 = v17;
      v34 = 2082;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}s: Unbootstrap existing %{public}s [no error]", buf, 0x16u);
    }

    *__error() = v15;
  }

  v19 = **(a2 + 48);
  if (v19 > 6)
  {
    if (v19 > 9)
    {
      if (v19 == 10)
      {
        v21 = _quire_bootstrap_feature_flags_domain;
      }

      else if (v19 == 11)
      {
        v21 = _quire_bootstrap_python_lib;
      }

      else
      {
        v21 = _quire_bootstrap_astro;
      }

      goto LABEL_30;
    }

    if (v19 == 7)
    {
      v21 = _quire_bootstrap_log_plist;
      goto LABEL_30;
    }

    if (v19 != 8)
    {
      v21 = _quire_bootstrap_luacore_lib;
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v20 = _quire_bootstrap_library;
  if (v19 > 4)
  {
    goto LABEL_31;
  }

  if ((v19 - 2) < 3)
  {
LABEL_22:
    v22 = *(a2 + 72);
    *buf = 136446210;
    v33 = v22;
    v23 = _os_log_send_and_compose_impl();
    Error = createError("_quire_populate_resource_in_data_volume", "quire.c", 2214, "com.apple.security.cryptex", 10, 0, v23);
    free(v23);
    return Error;
  }

  if (v19)
  {
    v21 = _quire_bootstrap_binary;
LABEL_30:
    v20 = v21;
  }

LABEL_31:
  Error = v20(a1, a2, a3);
  if (*(v6 + 56))
  {
    v25 = *(v6 + 56);
  }

  else
  {
    v25 = "[anonymous]";
  }

  v26 = *__error();
  v27 = *(v6 + 72);
  if (Error)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a2 + 72);
      *buf = 136446722;
      v33 = v25;
      v34 = 2082;
      v35 = v28;
      v36 = 2112;
      v37 = Error;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: Bootstrap %{public}s: %@", buf, 0x20u);
    }

    v29 = __error();
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a2 + 72);
      *buf = 136446466;
      v33 = v25;
      v34 = 2082;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s: Bootstrap %{public}s [no error]", buf, 0x16u);
    }

    v29 = __error();
    Error = 0;
  }

  *v29 = v26;
  return Error;
}

uint64_t _quire_bootstrap_library(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  bzero(v39, 0x400uLL);
  bzero(__str, 0x400uLL);
  v6 = *(a2 + 80);
  v7 = realpath_np();
  if (v7)
  {
    v8 = v7;
    v9 = v7;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
      v10 = *(v5 + 56);
      v11 = *(a2 + 72);
      v32 = 136446722;
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v33 = v10;
      v34 = 2080;
      v35 = v11;
      v36 = 1024;
      v37 = v8;
    }

    else
    {
      v16 = *(v5 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v17 = *(a2 + 72);
      v32 = 136446722;
      v33 = v16;
      v34 = 2080;
      v35 = v17;
      v36 = 1024;
      v37 = v7;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = 1578;
LABEL_21:
    Error = createError("_quire_bootstrap_library", "quire.c", v19, "com.apple.security.cryptex.posix", v9, 0, v18);
    free(v18);
    return Error;
  }

  v12 = fs_symlinkat(v39, *(a3 + 12), *(a2 + 72), 2);
  if (v12)
  {
    v13 = v12;
    v9 = v12;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
      v14 = *(v5 + 56);
      v15 = *(a2 + 72);
      v32 = 136446722;
      if (!v14)
      {
        v14 = "[anonymous]";
      }

      v33 = v14;
      v34 = 2080;
      v35 = v15;
      v36 = 1024;
      v37 = v13;
    }

    else
    {
      v24 = *(v5 + 56);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      v25 = *(a2 + 72);
      v32 = 136446722;
      v33 = v24;
      v34 = 2080;
      v35 = v25;
      v36 = 1024;
      v37 = v12;
    }

    v18 = _os_log_send_and_compose_impl();
    v19 = 1586;
    goto LABEL_21;
  }

  v20 = a3[7];
  snprintf(__str, 0x400uLL, "%s/%s", v20, *(a2 + 72));
  v21 = openat(*(a3 + 12), *(a2 + 72), 0x200000);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = *(v5 + 200);
    Error = cryptex_core_write_metadata_to_xattrs();
LABEL_32:
    if (close(v21) == -1)
    {
      daemon_init_cold_13(&v32, __str);
    }

    return Error;
  }

  v27 = *__error();
  if (*(v5 + 72))
  {
    os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    v28 = *(v5 + 56);
    v32 = 136446722;
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = "[anonymous]";
    }

    v33 = v29;
    v34 = 2080;
    v35 = __str;
    v36 = 1024;
    v37 = v27;
  }

  else
  {
    v30 = "[anonymous]";
    if (*(v5 + 56))
    {
      v30 = *(v5 + 56);
    }

    v32 = 136446722;
    v33 = v30;
    v34 = 2080;
    v35 = __str;
    v36 = 1024;
    v37 = v27;
  }

  v31 = _os_log_send_and_compose_impl();
  Error = createError("_quire_bootstrap_library", "quire.c", 1596, "com.apple.security.cryptex.posix", v27, 0, v31);
  free(v31);
  if (v21 != -1)
  {
    goto LABEL_32;
  }

  return Error;
}

uint64_t _quire_bootstrap_binary(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[7];
  v5 = *a3;
  v6 = bin_trampoline_write(*(*a3 + 208), v4, *(a2 + 72), v4, (_cryptex_content_type_factory[2] & *(*a3 + 320)) != 0);
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v5 + 56);
      v10 = *(a2 + 72);
      v33 = 136446722;
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v34 = v9;
      v35 = 2080;
      v36 = v10;
      v37 = 1024;
      v38 = v7;
    }

    else
    {
      v16 = *(v5 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v17 = *(a2 + 72);
      v33 = 136446722;
      v34 = v16;
      v35 = 2080;
      v36 = v17;
      v37 = 1024;
      v38 = v6;
    }

    v18 = _os_log_send_and_compose_impl();
    Error = createError("_quire_bootstrap_binary_to", "quire.c", 1807, "com.apple.security.cryptex.posix", v8, 0, v18);
    free(v18);
    return Error;
  }

  v11 = open(v4, 0);
  v12 = v11;
  if ((v11 & 0x80000000) == 0)
  {
    v13 = openat(v11, *(a2 + 72), 0);
    if (v13 < 0)
    {
      v23 = *__error();
      if (*(v5 + 72))
      {
        os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
        v24 = *(v5 + 56);
        v25 = *(a2 + 72);
        v33 = 136446722;
        if (!v24)
        {
          v24 = "[anonymous]";
        }

        v34 = v24;
        v35 = 2080;
        v36 = v25;
        v37 = 1024;
        v38 = v23;
      }

      else
      {
        v29 = *(v5 + 56);
        if (!v29)
        {
          v29 = "[anonymous]";
        }

        v30 = *(a2 + 72);
        v33 = 136446722;
        v34 = v29;
        v35 = 2080;
        v36 = v30;
        v37 = 1024;
        v38 = v23;
      }

      v31 = _os_log_send_and_compose_impl();
      Error = createError("_quire_bootstrap_binary_to", "quire.c", 1823, "com.apple.security.cryptex.posix", v23, 0, v31);
      free(v31);
    }

    else
    {
      v14 = *(v5 + 200);
      Error = cryptex_core_write_metadata_to_xattrs();
    }

    if (close(v12) != -1)
    {
      if (v13 != -1 && close(v13) == -1)
      {
        daemon_init_cold_13(&v32, &v33);
      }

      return Error;
    }

LABEL_36:
    daemon_init_cold_13(&v32, &v33);
  }

  v20 = *__error();
  if (*(v5 + 72))
  {
    os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    v21 = *(v5 + 56);
    v22 = *(a2 + 72);
    v33 = 136446722;
    if (!v21)
    {
      v21 = "[anonymous]";
    }

    v34 = v21;
    v35 = 2080;
    v36 = v22;
    v37 = 1024;
    v38 = v20;
  }

  else
  {
    v26 = *(v5 + 56);
    if (!v26)
    {
      v26 = "[anonymous]";
    }

    v27 = *(a2 + 72);
    v33 = 136446722;
    v34 = v26;
    v35 = 2080;
    v36 = v27;
    v37 = 1024;
    v38 = v20;
  }

  v28 = _os_log_send_and_compose_impl();
  Error = createError("_quire_bootstrap_binary_to", "quire.c", 1815, "com.apple.security.cryptex.posix", v20, 0, v28);
  free(v28);
  if (v12 != -1 && close(v12) == -1)
  {
    goto LABEL_36;
  }

  return Error;
}

uint64_t _quire_bootstrap_log_plist(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v5 = *(a2 + 80);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v4 + 56);
      v10 = *(a2 + 72);
      *buf = 136446722;
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v39 = v9;
      v40 = 2080;
      v41 = v10;
      v42 = 1024;
      LODWORD(v43) = v7;
    }

    else
    {
      v18 = *(v4 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      v19 = *(a2 + 72);
      *buf = 136446722;
      v39 = v18;
      v40 = 2080;
      v41 = v19;
      v42 = 1024;
      LODWORD(v43) = v6;
    }

    v20 = _os_log_send_and_compose_impl();
    v21 = 1732;
LABEL_16:
    Error = createError("_quire_bootstrap_log_plist", "quire.c", v21, "com.apple.security.cryptex.posix", v8, 0, v20);
    free(v20);
    return Error;
  }

  v11 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s/%s", "/Library/Preferences/Logging/Subsystems", v11);
  if (copyfile(from, __str, 0, 0xE0008u))
  {
    v12 = *__error();
    if (v12)
    {
      v8 = v12;
      v13 = *(v4 + 56);
      v14 = *__error();
      v15 = *(v4 + 72);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = "[anonymous]";
        v17 = *(a2 + 72);
        if (v13)
        {
          v16 = v13;
        }

        *buf = 136446978;
        v39 = v16;
        v40 = 2082;
        v41 = v17;
        v42 = 2082;
        v43 = __str;
        v44 = 1024;
        v45 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: copyfile %{public}s to %{public}s: %{darwin.errno}d", buf, 0x26u);
      }

      *__error() = v14;
      v32 = *(a2 + 72);
      *buf = 136446722;
      v39 = v32;
      v40 = 2082;
      v41 = __str;
      v42 = 1024;
      LODWORD(v43) = v12;
      v20 = _os_log_send_and_compose_impl();
      v21 = 1744;
      goto LABEL_16;
    }
  }

  v23 = *(v4 + 56);
  v24 = *__error();
  v25 = *(v4 + 72);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = "[anonymous]";
    v27 = *(a2 + 72);
    if (v23)
    {
      v26 = v23;
    }

    *buf = 136446722;
    v39 = v26;
    v40 = 2082;
    v41 = v27;
    v42 = 2082;
    v43 = __str;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}s: copyfile %{public}s to %{public}s: success", buf, 0x20u);
  }

  *__error() = v24;
  v28 = open(__str, 256);
  if ((v28 & 0x80000000) == 0)
  {
    v29 = *(v4 + 200);
    Error = cryptex_core_write_metadata_to_xattrs();
LABEL_31:
    if (close(v28) == -1)
    {
      daemon_init_cold_13(&v35, buf);
    }

    return Error;
  }

  v30 = *__error();
  if (*(v4 + 72))
  {
    os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
    v31 = *(v4 + 56);
    if (!v31)
    {
      v31 = "[anonymous]";
    }
  }

  else
  {
    v31 = *(v4 + 56);
    if (!v31)
    {
      v31 = "[anonymous]";
    }
  }

  *buf = 136446466;
  v39 = v31;
  v40 = 1024;
  LODWORD(v41) = v30;
  v33 = _os_log_send_and_compose_impl();
  Error = createError("_quire_bootstrap_log_plist", "quire.c", 1752, "com.apple.security.cryptex.posix", v30, 0, v33);
  free(v33);
  if (v28 != -1)
  {
    goto LABEL_31;
  }

  return Error;
}

CFErrorRef _quire_bootstrap_luacore_lib(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(v33, 0x400uLL);
  v5 = *(a2 + 80);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v4 + 56);
      v10 = *(a2 + 72);
      *buf = 136446722;
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v28 = v9;
      v29 = 2080;
      v30 = v10;
      v31 = 1024;
      v32 = v7;
    }

    else
    {
      v15 = *(v4 + 56);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      v16 = *(a2 + 72);
      *buf = 136446722;
      v28 = v15;
      v29 = 2080;
      v30 = v16;
      v31 = 1024;
      v32 = v6;
    }

    v17 = _os_log_send_and_compose_impl();
    v18 = 1983;
LABEL_16:
    Error = createError("_quire_bootstrap_luacore_lib", "quire.c", v18, "com.apple.security.cryptex.posix", v8, 0, v17);
    free(v17);
    return Error;
  }

  if (access(*(a2 + 72), 0))
  {
    v11 = fs_symlink(v33, *(a2 + 72), 6);
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    v8 = v11;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v13 = *(v4 + 56);
      v14 = *(a2 + 72);
      *buf = 136446722;
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      v28 = v13;
      v29 = 2080;
      v30 = v14;
      v31 = 1024;
      v32 = v12;
    }

    else
    {
      v25 = *(v4 + 56);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      v26 = *(a2 + 72);
      *buf = 136446722;
      v28 = v25;
      v29 = 2080;
      v30 = v26;
      v31 = 1024;
      v32 = v11;
    }

    v17 = _os_log_send_and_compose_impl();
    v18 = 1995;
    goto LABEL_16;
  }

  v21 = *(v4 + 56);
  v22 = *__error();
  v23 = *(v4 + 72);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = "[anonymous]";
    if (v21)
    {
      v24 = v21;
    }

    *buf = 136446210;
    v28 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}s: symlink exists, skipping", buf, 0xCu);
  }

  Error = 0;
  *__error() = v22;
  return Error;
}

uint64_t _quire_bootstrap_feature_flags_domain(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v5 = *(a2 + 80);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v4 + 56);
      v10 = *(a2 + 72);
      v38 = 136446722;
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v39 = v9;
      v40 = 2080;
      v41 = v10;
      v42 = 1024;
      LODWORD(v43) = v7;
    }

    else
    {
      v18 = *(v4 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      v19 = *(a2 + 72);
      v38 = 136446722;
      v39 = v18;
      v40 = 2080;
      v41 = v19;
      v42 = 1024;
      LODWORD(v43) = v6;
    }

    v20 = _os_log_send_and_compose_impl();
    v21 = 2794;
    v22 = v8;
    goto LABEL_18;
  }

  v11 = mkpath_np("/Library/Preferences/FeatureFlags/Domain", 0x1FFu);
  if (v11)
  {
    v12 = v11;
    if (v11 != 17)
    {
      if (*(v4 + 72))
      {
        os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
        v25 = *(v4 + 56);
        v38 = 136446722;
        if (!v25)
        {
          v25 = "[anonymous]";
        }

        v39 = v25;
        v40 = 2080;
        v41 = "/Library/Preferences/FeatureFlags/Domain";
        v42 = 1024;
        LODWORD(v43) = v12;
      }

      else
      {
        v31 = *(v4 + 56);
        if (!v31)
        {
          v31 = "[anonymous]";
        }

        v38 = 136446722;
        v39 = v31;
        v40 = 2080;
        v41 = "/Library/Preferences/FeatureFlags/Domain";
        v42 = 1024;
        LODWORD(v43) = v11;
      }

      v20 = _os_log_send_and_compose_impl();
      v21 = 2802;
      v22 = v12;
      goto LABEL_18;
    }
  }

  v13 = basename(*(a2 + 72));
  snprintf(__str, 0x400uLL, "%s/%s", "/Library/Preferences/FeatureFlags/Domain", v13);
  if (copyfile(from, __str, 0, 0xE0008u))
  {
    v14 = *__error();
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      if (*(v4 + 56))
      {
        v15 = *(v4 + 56);
      }

      else
      {
        v15 = "[anonymous]";
      }

      v16 = *(a2 + 72);
      v17 = *__error();
      v38 = 136446978;
      v39 = v15;
      v40 = 2080;
      v41 = v16;
      v42 = 2080;
      v43 = "/Library/Preferences/FeatureFlags/Domain";
      v44 = 1024;
      v45 = v17;
    }

    else
    {
      if (*(v4 + 56))
      {
        v28 = *(v4 + 56);
      }

      else
      {
        v28 = "[anonymous]";
      }

      v29 = *(a2 + 72);
      v30 = *__error();
      v38 = 136446978;
      v39 = v28;
      v40 = 2080;
      v41 = v29;
      v42 = 2080;
      v43 = "/Library/Preferences/FeatureFlags/Domain";
      v44 = 1024;
      v45 = v30;
    }

    v20 = _os_log_send_and_compose_impl();
    v21 = 2812;
    v22 = v14;
LABEL_18:
    Error = createError("_quire_bootstrap_feature_flags_domain", "quire.c", v21, "com.apple.security.cryptex.posix", v22, 0, v20);
    free(v20);
    return Error;
  }

  v26 = open(__str, 256);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = *(v4 + 200);
    Error = cryptex_core_write_metadata_to_xattrs();
LABEL_42:
    if (close(v26) == -1)
    {
      daemon_init_cold_13(&v35, &v38);
    }

    return Error;
  }

  v32 = *__error();
  if (*(v4 + 72))
  {
    os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
    v33 = *(v4 + 56);
    if (!v33)
    {
      v33 = "[anonymous]";
    }
  }

  else
  {
    v33 = *(v4 + 56);
    if (!v33)
    {
      v33 = "[anonymous]";
    }
  }

  v38 = 136446466;
  v39 = v33;
  v40 = 1024;
  LODWORD(v41) = v32;
  v34 = _os_log_send_and_compose_impl();
  Error = createError("_quire_bootstrap_feature_flags_domain", "quire.c", 2820, "com.apple.security.cryptex.posix", v32, 0, v34);
  free(v34);
  if (v26 != -1)
  {
    goto LABEL_42;
  }

  return Error;
}

CFErrorRef _quire_bootstrap_python_lib(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  bzero(v16, 0x400uLL);
  v6 = *(a2 + 80);
  v7 = realpath_np();
  if (v7)
  {
    v8 = v7;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v5 + 56);
    v14 = *(a2 + 72);
    v10 = _os_log_send_and_compose_impl();
    v11 = 2018;
LABEL_10:
    Error = createError("_quire_bootstrap_python_lib", "quire.c", v11, "com.apple.security.cryptex.posix", v8, 0, v10);
    free(v10);
    return Error;
  }

  v9 = fs_symlinkat(v16, *(a3 + 12), *(a2 + 72), 6);
  if (v9)
  {
    v8 = v9;
    if (*(v5 + 72))
    {
      os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_ERROR);
    }

    *(v5 + 56);
    v15 = *(a2 + 72);
    v10 = _os_log_send_and_compose_impl();
    v11 = 2027;
    goto LABEL_10;
  }

  return 0;
}

CFErrorRef _quire_bootstrap_astro(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  bzero(v33, 0x400uLL);
  v5 = *(a2 + 80);
  v6 = realpath_np();
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v9 = *(v4 + 56);
      v10 = *(a2 + 72);
      *buf = 136446722;
      if (!v9)
      {
        v9 = "[anonymous]";
      }

      v28 = v9;
      v29 = 2080;
      v30 = v10;
      v31 = 1024;
      v32 = v7;
    }

    else
    {
      v15 = *(v4 + 56);
      if (!v15)
      {
        v15 = "[anonymous]";
      }

      v16 = *(a2 + 72);
      *buf = 136446722;
      v28 = v15;
      v29 = 2080;
      v30 = v16;
      v31 = 1024;
      v32 = v6;
    }

    v17 = _os_log_send_and_compose_impl();
    v18 = 2049;
LABEL_16:
    Error = createError("_quire_bootstrap_astro", "quire.c", v18, "com.apple.security.cryptex.posix", v8, 0, v17);
    free(v17);
    return Error;
  }

  if (access(*(a2 + 72), 0))
  {
    v11 = fs_symlink(v33, *(a2 + 72), 6);
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    v8 = v11;
    if (*(v4 + 72))
    {
      os_log_type_enabled(*(v4 + 72), OS_LOG_TYPE_ERROR);
      v13 = *(v4 + 56);
      v14 = *(a2 + 72);
      *buf = 136446722;
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      v28 = v13;
      v29 = 2080;
      v30 = v14;
      v31 = 1024;
      v32 = v12;
    }

    else
    {
      v25 = *(v4 + 56);
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      v26 = *(a2 + 72);
      *buf = 136446722;
      v28 = v25;
      v29 = 2080;
      v30 = v26;
      v31 = 1024;
      v32 = v11;
    }

    v17 = _os_log_send_and_compose_impl();
    v18 = 2061;
    goto LABEL_16;
  }

  v21 = *(v4 + 56);
  v22 = *__error();
  v23 = *(v4 + 72);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = "[anonymous]";
    if (v21)
    {
      v24 = v21;
    }

    *buf = 136446210;
    v28 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}s: symlink exists, skipping", buf, 0xCu);
  }

  Error = 0;
  *__error() = v22;
  return Error;
}