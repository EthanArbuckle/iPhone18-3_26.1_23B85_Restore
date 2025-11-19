uint64_t sub_100000900(uint64_t a1)
{
  v2 = getpid();

  return _kdebug_trace(a1, v2, 0, 0, 0);
}

uint64_t start(int a1, uint64_t a2)
{
  sub_100000900(570425380);
  if (_os_alloc_once_table[2] == -1)
  {
    v4 = _os_alloc_once_table[3];
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if (setenv("PATH", "/usr/bin:/bin:/usr/sbin:/sbin", 1) != -1)
  {
    if (getppid() != 1 && !sub_1000030C8())
    {
      v13 = __stdoutp;
      v14 = getprogname();
      fprintf(v13, "%s cannot be run directly.\n", v14);
      exit(78);
    }

    if (a1 <= 1)
    {
LABEL_7:
      exit(66);
    }

    v5 = pthread_self();
    pthread_getname_np(v5, byte_100010180, 0x80uLL);
    pthread_setname_np(*(a2 + 8));
    qword_100010178 = *(a2 + 8);
    sub_100000D40(0);
    if ((*(v4 + 9) & 2) != 0)
    {
      byte_100010200 = 1;
      if (a1 == 2)
      {
        sub_100004F3C(22);
      }

      sub_100004F7C(*(a2 + 8), *(a2 + 16));
    }

    else if ((*(v4 + 20) + 1) < 2)
    {
      goto LABEL_10;
    }

    if (a1 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = strtol(*(a2 + 16), 0, 0);
      v16 = *(v4 + 20);
    }

    xpc_pipe_create_from_port();
    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = getpid();
    xpc_dictionary_set_int64(v17, "pid", v18);
    xpc_dictionary_set_BOOL(v17, "configurable", 1);
    xpc_dictionary_set_int64(v17, "hostpid", v15);
    data = xpc_pipe_simpleroutine();
    if (data)
    {
      v10 = "controller died";
      v11 = data;
      v12 = 1250;
      goto LABEL_28;
    }

LABEL_10:
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, "self", 1);
    sub_100000900(570425372);
    xdict[0] = 0;
    if (_xpc_service_routine(700, v6, xdict))
    {
      goto LABEL_7;
    }

    sub_100000900(570425376);
    length = 0;
    data = xpc_dictionary_get_data(xdict[0], "blob", &length);
    if (data)
    {
      if (length <= 0xF3)
      {
        sub_100004DC8(data, 22, 0, 0x503u, 0, "Insufficient spawnattr length: %zu < %lu", v8, v9, length);
      }

      v19 = data;
      data = xpc_dictionary_get_value(xdict[0], "ports");
      if (data && (v20 = data, data = xpc_get_type(data), data == &_xpc_type_array) && (data = xpc_array_get_count(v20)) != 0)
      {
        data = xpc_dictionary_get_value(xdict[0], "fds");
        if (data)
        {
          v21 = data;
          data = xpc_get_type(data);
          if (data == &_xpc_type_array)
          {
            data = xpc_array_get_count(v21);
            if ((data & 1) == 0)
            {
              data = sub_100001018(v19, length - 244, v20, v21);
            }
          }
        }

        v10 = "fds invalid";
        v11 = 22;
        v12 = 1299;
      }

      else
      {
        v10 = "Special ports invalid";
        v11 = 22;
        v12 = 1291;
      }
    }

    else
    {
      v10 = "No spawn attr blob";
      v11 = 22;
      v12 = 1273;
    }

LABEL_28:
    sub_100004DC8(data, v11, 0, v12, 0, v10, v8, v9, v23);
  }

  length = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *xdict = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v24 = *__error();
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void *sub_100000D40(int a1)
{
  if (a1)
  {
    if (dlopen("/usr/lib/system/libsystem_notify.dylib", 1))
    {
      notify_set_options();
    }

    if (!dlopen("/usr/lib/system/libsystem_info.dylib", 1))
    {
LABEL_8:
      result = dlopen("/usr/lib/system/libsystem_trace.dylib", 1);
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    notify_set_options();
  }

  si_search_module_set_flags();
  si_search_module_set_flags();
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:

  return _os_trace_set_mode(256);
}

uint64_t sub_100000DF8(int a1, xpc_object_t xdict, void *a3)
{
  if (_os_alloc_once_table[2] == -1)
  {
    v5 = _os_alloc_once_table[3];
  }

  else
  {
    v5 = _os_alloc_once();
  }

  if (*v5 & 1) != 0 || (*(v5 + 4))
  {
    return 141;
  }

  if ((*(v5 + 41) & 1) == 0)
  {
    xpc_dictionary_set_BOOL(xdict, "pre-exec", 1);
  }

  *(v5 + 88);
  v8 = *(v5 + 24);
  int64 = _xpc_pipe_interface_routine();
  if (!int64)
  {
    int64 = xpc_dictionary_get_int64(0, "error");
    if (!int64)
    {
      if (_os_alloc_once_table[2] == -1)
      {
        v9 = _os_alloc_once_table[3];
      }

      else
      {
        v9 = _os_alloc_once();
      }

      if ((*(v9 + 88) & 1) == 0)
      {
        xpc_dictionary_get_audit_token();
        sub_100005A38(0);
      }

      int64 = 0;
      *a3 = 0;
    }
  }

  return int64;
}

uint64_t sub_100001018(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  bzero(&v106, 0x4A8uLL);
  type = _xpc_spawnattr_unpack_string(a1, a2, *(a1 + 4));
  if (!type)
  {
    v11 = "Unable to unpack program";
    v12 = 22;
    v13 = 742;
    goto LABEL_3;
  }

  v14 = type;
  if ((*(a1 + 240) & 0x300) == 0x100)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.xpc.roleaccountd", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_10000C788);
    xpc_connection_activate(mach_service);
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v16, "Path", v14);
    v17 = xpc_bundle_create();
    if (v17)
    {
      v18 = v17;
      if (xpc_bundle_get_property())
      {
        v19 = sandbox_extension_issue_file();
        if (v19)
        {
          v20 = v19;
          xpc_dictionary_set_string(v16, "Token", v19);
          free(v20);
        }
      }

      xpc_release(v18);
    }

    type = xpc_connection_send_message_with_reply_sync(mach_service, v16);
    if (!type)
    {
      v11 = "setup_role_account no reply";
      v12 = 140;
      v13 = 629;
      goto LABEL_3;
    }

    v21 = type;
    xpc_connection_cancel(mach_service);
    type = xpc_get_type(v21);
    if (type == &_xpc_type_error)
    {
      v11 = "setup_role_account reply is error";
      v12 = 22;
      v13 = 634;
      goto LABEL_3;
    }

    type = xpc_dictionary_get_value(v21, "Retval");
    if (!type)
    {
      v11 = "setup_role_account missing RETVAL_KEY";
      v12 = 153;
      v13 = 638;
      goto LABEL_3;
    }

    type = xpc_dictionary_get_uint64(v21, "Retval");
    if (type)
    {
      v11 = "setup_role_account failed";
      v12 = type;
      v13 = 643;
      goto LABEL_3;
    }

    type = xpc_dictionary_get_string(v21, "Path");
    if (!type)
    {
      v11 = "setup_role_account missing PATH_KEY";
      v12 = 2;
      v13 = 648;
      goto LABEL_3;
    }

    type = sub_1000047D0(type);
    v14 = type;
    if (!type)
    {
      v11 = "Unable to setup_role_account";
      v12 = 1;
      v13 = 748;
      goto LABEL_3;
    }
  }

  v99 = a3;
  v22 = a4;
  v23 = sub_100001AA8(&v106, v14);
  v26 = *(a1 + 212);
  if (v26)
  {
    if (v26 > a2)
    {
      sub_100004DC8(v23, 22, 0, 0x29Au, 0, "Insufficient rlimit: %u > %zd", v9, v10, *(a1 + 212));
    }

    v37 = *(a1 + 208);
    if (20 * v37 > a2)
    {
      sub_100004DC8(v23, 22, 0, 0x29Eu, 0, "Too many rlimits: %d", v9, v10, *(a1 + 208));
    }

    if (v37)
    {
      v39 = 0;
      v40 = a1 + v26 + 244;
      do
      {
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 16);
        v44 = *(v40 + 18);
        v45 = *(v40 + 19);
        v100.rlim_cur = 0;
        v100.rlim_max = 0;
        if (getrlimit(v43, &v100) == -1)
        {
          v82 = __error();
          sub_100004DC8(v82, *v82, 0, 0x2ADu, 0, "getrlimit(%d)", v83, v84, v43);
        }

        if (v44)
        {
          v100.rlim_max = v42;
        }

        if (v45)
        {
          v100.rlim_cur = v41;
        }

        setrlimit(v43, &v100);
        v40 += 20;
        ++v39;
      }

      while (v39 < *(a1 + 208));
    }
  }

  v27 = *(a1 + 240);
  if ((v27 & 0x100) != 0)
  {
    v36 = 0;
    v29 = v22;
    v32 = v99;
    goto LABEL_64;
  }

  v28 = *(a1 + 40);
  v29 = v22;
  if ((v27 & 0x80000) != 0 && !v28)
  {
    v30 = *(a1 + 48);
    *__error() = 0;
    v31 = getpwuid(v30);
    v32 = v99;
    if (!v31)
    {
      v33 = __error();
      if (!*v33)
      {
        sub_100004DC8(v33, 114, 0, 0xABu, 0, "getpwuid(%d)", v34, v35, v30);
      }

      v79 = __error();
      sub_100004DC8(v79, *v79, 0, 0xADu, 0, "getpwuid(%d)", v80, v81, v30);
    }

    v36 = v31;
    LODWORD(v108) = *(a1 + 48);
    pw_gid = v31->pw_gid;
LABEL_50:
    HIDWORD(v108) = pw_gid;
    goto LABEL_64;
  }

  v32 = v99;
  if (v28)
  {
    type = _xpc_spawnattr_unpack_string(a1, a2, v28);
    v38 = type;
    if (!type)
    {
      v11 = "Unable to unpack username";
      v12 = 22;
      v13 = 281;
      goto LABEL_3;
    }
  }

  else
  {
    v38 = 0;
  }

  v46 = *(a1 + 44);
  if (!v46)
  {
    v47 = 0;
    goto LABEL_53;
  }

  type = _xpc_spawnattr_unpack_string(a1, a2, v46);
  v47 = type;
  if (!type)
  {
    v11 = "Unable to unpack group";
    v12 = 22;
    v13 = 289;
LABEL_3:
    sub_100004DC8(type, v12, 0, v13, 0, v11, v9, v10, v97);
  }

LABEL_53:
  if (v47)
  {
    v49 = v38 == 0;
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    v38 = "root";
  }

  if (v47 | v38)
  {
    *__error() = 0;
    v50 = getpwnam(v38);
    if (!v50)
    {
      if (!*__error())
      {
        v51 = sub_100005840(a1, v38, 0);
        v52 = __error();
        sub_100004DC8(v52, 114, *v52, 0xD6u, v51, "getpwnam(%s)", v53, v54, v38);
      }

      v90 = __error();
      sub_100004DC8(v90, *v90, 0, 0xD8u, 0, "getpwnam(%s)", v91, v92, v38);
    }

    v36 = v50;
    v108 = *&v50->pw_uid;
    if (v47)
    {
      *__error() = 0;
      v85 = getgrnam(v47);
      if (!v85)
      {
        if (!*__error())
        {
          v86 = sub_100005840(a1, 0, v47);
          v87 = __error();
          sub_100004DC8(v87, 114, *v87, 0xF8u, v86, "getgrnam(%s)", v88, v89, v47);
        }

        v93 = __error();
        sub_100004DC8(v93, *v93, 0, 0xFAu, 0, "getgrnam(%s)", v94, v95, v47);
      }

      pw_gid = v85->gr_gid;
      goto LABEL_50;
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_64:
  sub_100001B4C(&v106, a1, a2, v36, v24, v25, v9, v10);
  sub_100002BD0(&v106, a1, a2, v32, v55, v56, v57, v58);
  sub_100002D90(&v106, v29);
  if (sub_100002F1C(&v106, a1, a2, 0, 0))
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  v59 = *(a1 + 104);
  if (v59)
  {
    _xpc_spawnattr_unpack_string(a1, a2, v59);
    sub_100005654();
  }

  if ((*(a1 + 241) & 0x40) != 0)
  {
    umask(*(a1 + 52));
  }

  v60 = *(a1 + 64);
  if (v60)
  {
    v61 = _xpc_spawnattr_unpack_string(a1, a2, v60);
    if (chdir(v61) == -1)
    {
      v62 = __error();
      sub_100004DC8(v62, *v62, 0, 0x3B1u, 0, "Unable to set current working directory. path = %s", v63, v64, v61);
    }
  }

  v65 = *(a1 + 240);
  if ((v65 & 4) != 0)
  {
    if (!setiopolicy_np(0, 0, 3))
    {
      v65 = *(a1 + 240);
      goto LABEL_75;
    }

LABEL_100:
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_102;
  }

LABEL_75:
  if ((v65 & 8) != 0 && setiopolicy_np(0, 2, 3))
  {
    goto LABEL_101;
  }

  if (*(a1 + 112) != 1792 || !posix_spawnattr_setprocesstype_np())
  {
    pthread_setname_np(byte_100010180);
    if ((*(a1 + 240) & 0x1000) != 0)
    {
      v66 = &posix_spawnp;
    }

    else
    {
      v66 = &_posix_spawn;
    }

    sub_100002840(&v106, 64, 0);
    sub_100000900(570425384);
    v67 = (v66)(0, v109, &v107, &v106, v110, v111);
    v70 = v67;
    if (v67 <= 0x14 && ((1 << v67) & 0x102004) != 0)
    {
      v67 = v109;
      if (*v109 == 47)
      {
        v67 = access(v109, 1);
        if (v67 == -1)
        {
          v71 = *__error();
          v72 = sub_1000057C4(a1, v109, 0);
          v73 = v109;
          v98 = xpc_strerror();
          sub_100004DC8(v98, 111, v70, 0x440u, v72, "access(%s, X_OK) failed with errno %d - %s", v74, v75, v73);
        }
      }
    }

    else if (v67 == 86)
    {
      v76 = sub_1000057C4(a1, v109, 1);
      sub_100004DC8(v76, 111, 86, 0x424u, v76, "posix_spawn(%s) EBADARCH", v77, v78, v109);
    }

    sub_100004DC8(v67, v70, 0, 0x446u, 0, "posix_spawn(%s)", v68, v69, v109);
  }

LABEL_102:
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v100 = 0;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

const char *_xpc_spawnattr_unpack_string(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a1 + a3 + 244);
  if (strnlen(v3, a2 - a3) + 1 <= a2 - a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001AA8(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x4A8uLL);
  *(a1 + 1128) = 0x6400000064;
  if (posix_spawnattr_init(a1))
  {
    sub_100005B88(&v5, v6);
  }

  result = posix_spawn_file_actions_init((a1 + 8));
  if (result)
  {
    sub_100005BF4(&v5, v6);
  }

  *(a1 + 1136) = a2;
  return result;
}

uint64_t sub_100001B4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!*(a1 + 1136))
  {
    v22 = "Missing program";
    v23 = 22;
    v24 = 581;
    goto LABEL_23;
  }

  v12 = *(a2 + 108);
  v13 = *(a2 + 240);
  if (setsid() == -1)
  {
    sub_100006A10(v160, __str);
  }

  if (v12)
  {
    v14 = 16512;
  }

  else
  {
    v14 = 0x4000;
  }

  v15 = *(a2 + 240);
  v16 = v15 >> 7;
  if (MEMORY[0xFFFFF4084])
  {
    v17 = (v15 >> 7) & 0x100;
  }

  else
  {
    v17 = 0;
  }

  if ((v15 & 0x10000) != 0 && posix_spawnattr_disable_ptr_auth_a_keys_np())
  {
    sub_100005D38(v160, __str);
  }

  if (*(a2 + 202) && posix_spawnattr_set_use_sec_transition_shims_np())
  {
    sub_100005DA4(v160, __str);
  }

  sub_100002840(v8, v16 & 0x8000 | (v13 >> 9) & 0x200 | v14 | v17 | *(a2 + 242) & 0x800, 0);
  v18 = _xpc_spawnattr_binprefs_unpack(a2, a3);
  if (v18)
  {
    v19 = v18;
    xpc_binprefs_set_psattr(v18, v8);
    free(v19);
  }

  v20 = *(a2 + 204);
  if (v20 && posix_spawnattr_set_qos_class_np(v8, v20))
  {
    sub_100005E10(v160, __str);
  }

  v21 = *(a2 + 240);
  if ((v21 & 0x200000) != 0)
  {
    if ((*(a2 + 232) != 100 || *(a2 + 228)) && posix_spawnattr_setcpumonitor())
    {
      sub_100005E7C(v160, __str);
    }
  }

  else if ((v21 & 2) != 0)
  {
    if (posix_spawnattr_setcpumonitor_default())
    {
      sub_100005EE8(v160, __str);
    }
  }

  else if ((v21 & 1) == 0 && posix_spawnattr_setcpumonitor_default())
  {
    sub_100005EE8(v160, __str);
  }

  v25 = *(a2 + 120);
  v26 = *(a2 + 124);
  v27 = *(a2 + 128);
  v28 = *(a2 + 132);
  if (posix_spawnattr_setjetsam_ext())
  {
    sub_100005F54(v160, __str);
  }

  v29 = *(a2 + 136);
  if (posix_spawnattr_set_threadlimit_ext())
  {
    sub_100005FC0(v160, __str);
  }

  v30 = *(a2 + 140);
  if (posix_spawnattr_set_max_addr_np())
  {
    sub_10000602C(v160, __str);
  }

  v31 = *(a2 + 148);
  v32 = *(a2 + 152);
  if (posix_spawnattr_set_portlimits_ext())
  {
    sub_100006098(v160, __str);
  }

  v33 = *(a2 + 156);
  v34 = *(a2 + 160);
  if (posix_spawnattr_set_filedesclimit_ext())
  {
    sub_100006104(v160, __str);
  }

  v35 = *(a2 + 164);
  v36 = *(a2 + 168);
  if (posix_spawnattr_set_kqworklooplimit_ext())
  {
    sub_100006170(v160, __str);
  }

  v37 = *(a2 + 176);
  if (posix_spawnattr_set_conclavememlimit_ext())
  {
    sub_1000061DC(v160, __str);
  }

  if ((*(a2 + 243) & 2) != 0 && posix_spawnattr_set_max_addr_np())
  {
    sub_100006248(v160, __str);
  }

  v38 = *(a2 + 180);
  if (posix_spawnattr_set_crash_behavior_np())
  {
    sub_1000062B4(v160, __str);
  }

  v39 = *(a2 + 184);
  if (posix_spawnattr_set_crash_behavior_deadline_np())
  {
    sub_100006320(v160, __str);
  }

  v40 = *(a2 + 200);
  if (posix_spawnattr_set_launch_type_np())
  {
    sub_10000638C(v160, __str);
  }

  v41 = *(a2 + 192);
  v42 = *(a2 + 196);
  if (posix_spawnattr_set_crash_count_np())
  {
    sub_1000063F8(v160, __str);
  }

  v43 = *(a2 + 116);
  if (posix_spawnattr_set_darwin_role_np())
  {
    sub_100006464(v160, __str);
  }

  v44 = *(a2 + 233);
  if (v44 == 1)
  {
    if (posix_spawnattr_setdataless_iopolicy_np())
    {
      sub_1000064D0(v160, __str);
    }
  }

  else if (v44 == 2 && posix_spawnattr_setdataless_iopolicy_np())
  {
    sub_10000653C(v160, __str);
  }

  v45 = *(a2 + 80);
  if (!v45)
  {
    v50 = *(a2 + 84);
    if (!v50)
    {
      goto LABEL_63;
    }

    v49 = 0;
    goto LABEL_54;
  }

  v46 = _xpc_spawnattr_unpack_string(a2, a3, v45);
  if (!v46)
  {
    v51 = "Unable to unpack container_id";
    v52 = v8;
    v53 = 127;
    goto LABEL_62;
  }

  v49 = v46;
  v50 = *(a2 + 84);
  if (v50)
  {
LABEL_54:
    if (_xpc_spawnattr_unpack_string(a2, a3, v50))
    {
      sandbox_spawnattrs_init();
      if (sandbox_spawnattrs_setprofilename() == -1)
      {
        sub_100006698(v160, __str);
      }

      if (!v49)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v51 = "Unable to unpack sandbox profile";
    v52 = v8;
    v53 = 136;
LABEL_62:
    sub_100004DC8(v52, 22, 0, v53, 0, v51, v47, v48, v150);
  }

  sandbox_spawnattrs_init();
LABEL_57:
  if (sandbox_spawnattrs_setcontainer() == -1)
  {
    sub_1000065A8(v160, __str);
  }

LABEL_58:
  if (posix_spawnattr_setmacpolicyinfo_np())
  {
    sub_10000662C(v160, __str);
  }

LABEL_63:
  v54 = *(a2 + 88);
  if (v54)
  {
    _xpc_spawnattr_unpack_string(a2, a3, v54);
    if (posix_spawnattr_set_subsystem_root_path_np())
    {
      sub_10000671C(v160, __str);
    }
  }

  v55 = *(a2 + 16);
  if (v55)
  {
    v56 = sub_100002980(8 * v55 + 8, 0x14382343uLL);
    *(v8 + 1144) = v56;
    if (!_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 20), v56, *(a2 + 16)))
    {
      v73 = "Unable to unpack argv";
      v74 = v8;
      v75 = 538;
      goto LABEL_75;
    }

    v59 = (*(v8 + 1144) + 8 * *(a2 + 16));
  }

  else
  {
    v60 = sub_100002980(0x10uLL, 0xC1E8D02EuLL);
    *(v8 + 1144) = v60;
    *v60 = *(v8 + 1136);
    v59 = v60 + 1;
  }

  *v59 = 0;
  v61 = sub_100002980(8 * *(a2 + 24) + 56, 0xE4322039uLL);
  *(v8 + 1160) = v61;
  v65 = *(a2 + 24);
  if (v65)
  {
    if (_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 28), v61, v65))
    {
      *(v8 + 1152) = *(a2 + 24);
      goto LABEL_72;
    }

    v73 = "Unable to unpack environment";
    v74 = v8;
    v75 = 566;
LABEL_75:
    sub_100004DC8(v74, 22, 0, v75, 0, v73, v57, v58, v150);
  }

LABEL_72:
  v66 = *(a2 + 240);
  sub_100002AD0(v8, "XXXXXXXX%s=%llx", v62, v63, v65, v64, v57, v58, "XPC_FLAGS");
  if (*(v8 + 1128) != -101)
  {
    if (!a4)
    {
      v104 = "Unable to setup identify";
      v105 = v8;
      v106 = 22;
      v107 = 355;
      goto LABEL_91;
    }

    v151 = *a4;
    *(v8 + 1120) = sub_100002AD0(v8, "XXXXXXXX%s=%s", v67, v68, v69, v70, v71, v72, "LOGNAME") + 8;
    sub_100002AD0(v8, "XXXXXXXX%s=%s", v76, v77, v78, v79, v80, v81, "USER");
    v152 = a4[6];
    sub_100002AD0(v8, "XXXXXXXX%s=%s", v82, v83, v84, v85, v86, v87, "HOME");
    v153 = a4[7];
    sub_100002AD0(v8, "XXXXXXXX%s=%s", v88, v89, v90, v91, v92, v93, "SHELL");
    v100 = *(v8 + 1128);
    if (v100 >= 0x1F5 && v100 != -2)
    {
      v154 = a4[6];
      sub_100002AD0(v8, "XXXXXXXX%s=%s/tmp", v94, v95, v96, v97, v98, v99, "TMPDIR");
    }

    if (setlogin(*(v8 + 1120)))
    {
      v101 = *__error();
      sub_100004DC8(v8, v101, 0, 0x17Bu, 0, "setlogin(%s)", v102, v103, *(v8 + 1120));
    }

    if (setgid(*(v8 + 1132)))
    {
      v108 = *__error();
      sub_100004DC8(v8, v108, 0, 0x182u, 0, "setgid(%d)", v109, v110, *(v8 + 1132));
    }

    if ((*(a2 + 241) & 0x20) == 0)
    {
      v111 = initgroups(*(v8 + 1120), *(v8 + 1132));
      if (v111)
      {
        v155 = *(v8 + 1132);
        sub_100004DC8(v8, v111, 0, 0x18Cu, 0, "initgroups(%s, %d)", v112, v113, *(v8 + 1120));
      }
    }

    if (setuid(*(v8 + 1128)))
    {
      v106 = *__error();
      v150 = *(v8 + 1128);
      v104 = "setuid(%d)";
      v105 = v8;
      v107 = 401;
LABEL_91:
      sub_100004DC8(v105, v106, 0, v107, 0, v104, v71, v72, v150);
    }
  }

  v114 = xpc_dictionary_create(0, 0, 0);
  if (*(v8 + 1152))
  {
    v115 = 0;
    v116 = 0;
    do
    {
      v117 = *(*(v8 + 1160) + 8 * v115);
      v118 = strchr(v117, 61);
      if (v118)
      {
        v121 = v118 == v117;
      }

      else
      {
        v121 = 1;
      }

      if (v121)
      {
        sub_100004DC8(v8, 22, 0, 0x1D1u, 0, "Invalid environment[%zd]: %s", v119, v120, v115);
      }

      v122 = sub_100002B38(v117, v118 - v117);
      if (!xpc_dictionary_get_value(v114, v122))
      {
        xpc_dictionary_set_BOOL(v114, v122, 1);
        *(*(v8 + 1160) + 8 * v116++) = v117;
      }

      free(v122);
      ++v115;
    }

    while (v115 < *(v8 + 1152));
  }

  else
  {
    v116 = 0;
  }

  xpc_release(v114);
  *(v8 + 1152) = v116;
  *(*(v8 + 1160) + 8 * v116) = 0;
  v123 = *(a2 + 64);
  if (v123)
  {
    v126 = _xpc_spawnattr_unpack_string(a2, a3, v123);
    if (!v126)
    {
      v127 = "Unable to unpack cwd";
      v128 = v8;
      v129 = 225;
      goto LABEL_137;
    }
  }

  else
  {
    v126 = "/";
  }

  v130 = *(a2 + 68);
  if (v130)
  {
    v131 = _xpc_spawnattr_unpack_string(a2, a3, v130);
    if (!v131)
    {
      v127 = "Unable to unpack stdin";
      v128 = v8;
      v129 = 242;
      goto LABEL_137;
    }

    v132 = v131;
    bzero(__str, 0x400uLL);
    if (*v132 != 47)
    {
      v156 = v132;
      v132 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v126, v156);
    }

    v133 = sub_100004CA8(v132);
    if (v133)
    {
      sub_100004DC8(v8, v133, 0, 0xFEu, 0, "Unable to create stdin directory (%s)", v134, v135, v132);
    }

    if (posix_spawn_file_actions_addopen((v8 + 8), 0, v132, 131584, 0x1B6u))
    {
      sub_100006788(&v159, v160);
    }
  }

  else if (posix_spawn_file_actions_addopen((v8 + 8), 0, "/dev/null", 0x20000, 0x1B6u))
  {
    sub_1000067F4(v160, __str);
  }

  v136 = *(a2 + 72);
  if (v136)
  {
    v137 = _xpc_spawnattr_unpack_string(a2, a3, v136);
    if (!v137)
    {
      v127 = "Unable to unpack stdout";
      v128 = v8;
      v129 = 269;
      goto LABEL_137;
    }

    v138 = v137;
    bzero(__str, 0x400uLL);
    if (*v138 != 47)
    {
      v157 = v138;
      v138 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v126, v157);
    }

    v139 = sub_100004CA8(v138);
    if (v139)
    {
      sub_100004DC8(v8, v139, 0, 0x119u, 0, "Unable to create stdout directory (%s)", v140, v141, v138);
    }

    if (posix_spawn_file_actions_addopen((v8 + 8), 1, v138, 131594, 0x1B6u))
    {
      sub_100006860(&v159, v160);
    }
  }

  else if (posix_spawn_file_actions_addopen((v8 + 8), 1, "/dev/null", 131074, 0x1B6u))
  {
    sub_1000068CC(v160, __str);
  }

  v142 = *(a2 + 76);
  if (v142)
  {
    v143 = _xpc_spawnattr_unpack_string(a2, a3, v142);
    if (v143)
    {
      v144 = v143;
      bzero(__str, 0x400uLL);
      if (*v144 != 47)
      {
        v158 = v144;
        v144 = __str;
        snprintf(__str, 0x400uLL, "%s/%s", v126, v158);
      }

      v145 = sub_100004CA8(v144);
      if (v145)
      {
        sub_100004DC8(v8, v145, 0, 0x134u, 0, "Unable to create stderr directory (%s)", v146, v147, v144);
      }

      if (posix_spawn_file_actions_addopen((v8 + 8), 2, v144, 131594, 0x1B6u))
      {
        sub_100006938(&v159, v160);
      }

      goto LABEL_138;
    }

    v127 = "Unable to unpack stderr";
    v128 = v8;
    v129 = 296;
LABEL_137:
    sub_100004DC8(v128, 22, 0, v129, 0, v127, v124, v125, v150);
  }

  if (posix_spawn_file_actions_addopen((v8 + 8), 2, "/dev/null", 131074, 0x1B6u))
  {
    sub_1000069A4(v160, __str);
  }

LABEL_138:
  if ((*(a2 + 242) & 2) != 0)
  {
    v148 = *(v8 + 1128);
    if (!v148 || v148 == -101)
    {
      v22 = "extensions cannot run as root";
      a1 = v8;
      v23 = 1;
      v24 = 775;
LABEL_23:
      sub_100004DC8(a1, v23, 0, v24, 0, v22, a7, a8, v150);
    }
  }

  return 0;
}

uint64_t sub_100002840(posix_spawnattr_t *a1, __int16 a2, __int16 a3)
{
  v8 = 0;
  if (posix_spawnattr_getflags(a1, &v8))
  {
    sub_100005C60(&v7, v9);
  }

  v8 = v8 & ~a3 | a2;
  result = posix_spawnattr_setflags(a1, v8);
  if (result)
  {
    sub_100005CCC(&v7, v9);
  }

  return result;
}

uint64_t _xpc_spawnattr_binprefs_unpack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2 || a2 - *(a1 + 36) < 8 * v2)
  {
    return 0;
  }

  xpc_binprefs_alloc();
  v4 = v5;
  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = (*(a1 + 36) + a1 + 248);
    do
    {
      xpc_binprefs_add(v4, *(v7 - 1), *v7);
      ++v6;
      v7 += 2;
    }

    while (v6 < *(a1 + 32));
  }

  return v4;
}

void *sub_100002980(size_t size, malloc_type_id_t type_id)
{
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      sub_100005920(&v6, v7);
    }
  }

  while (sub_100004764());
  return v4;
}

const char *_xpc_spawnattr_unpack_strings(uint64_t a1, unint64_t a2, unsigned int a3, const char **a4, uint64_t a5)
{
  if (a3 >= a2)
  {
    return 0;
  }

  v5 = a5;
  if (!a5)
  {
    return *a4;
  }

  v7 = a3;
  v9 = a1 + 244;
  for (i = a4; ; ++i)
  {
    v11 = (v9 + v7);
    v12 = strnlen(v11, a2 - v7);
    if (v12 + 1 > a2 - v7)
    {
      break;
    }

    v7 += v12 + 1;
    *i = v11;
    if (!--v5)
    {
      return *a4;
    }
  }

  return 0;
}

char *sub_100002AD0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14[0] = 0;
  v14[1] = &a9;
  vasprintf(v14, a2, &a9);
  v10 = v14[0];
  *v14[0] = a1[148];
  a1[148] = v10;
  result = v10 + 8;
  v12 = a1[145];
  v13 = a1[144];
  a1[144] = v13 + 1;
  *(v12 + 8 * v13) = result;
  return result;
}

char *sub_100002B38(const char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  while (1)
  {
    result = strndup(a1, a2);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_1000059CC(&v5, v6);
      }
    }

    sub_100004764();
    a1 = v3;
    a2 = v2;
  }

  return result;
}

uint64_t sub_100002BD0(posix_spawnattr_t *a1, uint64_t a2, uint64_t a3, xpc_object_t xarray, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 224);
  if (v8)
  {
    v11 = *(a2 + 220);
    v12 = 4 * v8;
    if (v12 > a3 - v11)
    {
      v27 = *(a2 + 220);
      sub_100004DC8(a1, 22, 0, 0x323u, 0, "No space for special ports: %zu > (%zu - %d)", a7, a8, v12);
    }

    v14 = 0;
    v15 = 0;
    v16 = a2 + v11 + 244;
    while (1)
    {
      xpc_array_get_value(xarray, v15);
      right = xpc_mach_send_get_right();
      v20 = right;
      if (right - 1 >= 0xFFFFFFFE)
      {
        break;
      }

      v21 = *(v16 + 4 * v15);
      if ((v21 - 128) > 2)
      {
        if (v21 == 4)
        {
          if ((*(a2 + 243) & 4) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = right;
          }
        }

        if (posix_spawnattr_setspecialport_np(a1, v20, v21))
        {
          sub_100006A94(&v30, v29);
        }
      }

      else
      {
        v31 = 0;
        v30 = 0;
        if (v21 - 129 <= 1)
        {
          if (v14)
          {
            v23 = "Already registered ports";
            v24 = a1;
            v25 = 826;
LABEL_19:
            sub_100004DC8(v24, 22, 0, v25, 0, v23, v18, v19, v26);
          }

          LODWORD(v30) = right;
          v14 = 1;
          if (posix_spawnattr_set_registered_ports_np())
          {
            sub_100006B00(&v28, v29);
          }
        }
      }

      if (++v15 >= *(a2 + 224))
      {
        return 0;
      }
    }

    v26 = v15;
    v23 = "Invalid special port[%zd]: %d";
    v24 = a1;
    v25 = 812;
    goto LABEL_19;
  }

  return 0;
}

size_t sub_100002D90(uint64_t a1, xpc_object_t xarray)
{
  result = xpc_array_get_count(xarray);
  if (result)
  {
    v5 = 0;
    do
    {
      value = xpc_array_get_value(xarray, v5 + 1);
      if (xpc_get_type(value) != &_xpc_type_int64)
      {
        v13 = "setup_fds bad int type";
        v14 = a1;
        v15 = 870;
        goto LABEL_13;
      }

      v9 = xpc_int64_get_value(value);
      if (v9 < 0 || getdtablesize() <= v9)
      {
        getdtablesize();
        sub_100004DC8(a1, 9, 0, 0x36Au, 0, "setup_fds bad dest: %d table: %d", v11, v12, v9);
      }

      v10 = xpc_array_get_value(xarray, v5);
      if (xpc_get_type(v10) != &_xpc_type_fd)
      {
        v13 = "setup_fds bad fd type";
        v14 = a1;
        v15 = 879;
LABEL_13:
        sub_100004DC8(v14, 9, 0, v15, 0, v13, v7, v8, v16);
      }

      _xpc_fd_get_port();
      if (posix_spawn_file_actions_add_fileportdup2_np())
      {
        sub_100006B6C(&v17, v18);
      }

      v5 += 2;
    }

    while (v5 < xpc_array_get_count(xarray));
    return 0;
  }

  return result;
}

uint64_t sub_100002F1C(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5)
{
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = _xpc_spawnattr_unpack_bytes(a2, a3, *(a2 + 8), v8);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (a4 && a5)
  {
    if (v11)
    {
      v12 = sub_1000037AC(a4, a5, v9, v8);
      if (v12)
      {
        v15 = v12;
        length = xpc_data_get_length(v12);
        *(a1 + 1176) = length;
        v17 = sub_100002980(length, 0x478D6232uLL);
        *(a1 + 1168) = v17;
        bytes = xpc_data_get_bytes(v15, v17, 0, *(a1 + 1176));
        v19 = *(a1 + 1176);
        xpc_release(v15);
        if (bytes == v19)
        {
          v20 = *(a1 + 1168);
          v21 = *(a1 + 1176);
          goto LABEL_20;
        }

        v23 = "Unable to copy merged spawn constraints";
        v24 = a1;
        v25 = 944;
      }

      else
      {
        v23 = "Unable to merge spawn constraints";
        v24 = a1;
        v25 = 939;
      }

      sub_100004DC8(v24, 22, 0, v25, 0, v23, v13, v14, v26);
    }

    *(a1 + 1168) = sub_100004784(a4, a5);
    *(a1 + 1176) = a5;
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    *(a1 + 1168) = sub_100004784(v9, v8);
    *(a1 + 1176) = v8;
  }

LABEL_20:
  result = amfi_launch_constraint_set_spawnattr();
  if (result)
  {
    sub_100006BD8(&v26, v27);
  }

  return result;
}

BOOL sub_1000030C8()
{
  v0 = byte_100010170;
  if (!byte_100010170)
  {
    v1 = getpid();
    if (sub_100003114(v1))
    {
      v0 = 2;
    }

    else
    {
      v0 = 1;
    }

    byte_100010170 = v0;
  }

  return v0 == 2;
}

uint64_t sub_100003114(int a1)
{
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  if (!sub_1000058E0(a1, v2))
  {
    return (v3 >> 1) & 1;
  }

  _os_assumes_log();
  return 0;
}

uint64_t sub_1000031A8()
{

  return _os_log_send_and_compose_impl();
}

double sub_1000031CC(void *a1, _OWORD *a2)
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

uint64_t sub_1000031F0(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  empty = xpc_array_create_empty();
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10000337C;
  applier[3] = &unk_10000C628;
  applier[4] = &v12;
  xpc_dictionary_apply(a1, applier);
  count = xpc_array_get_count(v13[3]);
  do
  {
    if (count < 2)
    {
      break;
    }

    v3 = 0;
    for (i = 1; i != count; ++i)
    {
      value = xpc_array_get_value(v13[3], i - 1);
      v6 = xpc_array_get_value(v13[3], i);
      string_ptr = xpc_string_get_string_ptr(value);
      v8 = xpc_string_get_string_ptr(v6);
      if (strcmp(string_ptr, v8) >= 1)
      {
        xpc_retain(value);
        xpc_array_set_value(v13[3], i - 1, v6);
        xpc_array_set_value(v13[3], i, value);
        xpc_release(value);
        v3 = i;
      }
    }

    count = v3;
  }

  while (v3);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

xpc_object_t sub_1000033AC(int64_t a1, int64_t a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "vers", a1);
  xpc_dictionary_set_int64(empty, "comp", 1);
  xpc_dictionary_set_int64(empty, "ccat", a2);
  if (object)
  {
    xpc_dictionary_set_value(empty, "reqs", object);
  }

  return empty;
}

xpc_object_t sub_10000345C(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    return 0;
  }

  empty = xpc_array_create_empty();
  if (sub_100003948(a1, empty))
  {
    v3 = sub_1000035C8(empty);
    count = xpc_array_get_count(empty);
    sub_10000366C(v3, count);
    xpc_release(empty);
    return 0;
  }

  if (!empty)
  {
    return 0;
  }

  v7 = sub_1000035C8(empty);
  xpc_array_get_count(empty);
  v5 = 0;
  if (CESizeSerialization() == kCENoError)
  {
    v8 = sub_100002980(0, 0x62CB2CE0uLL);
    if (CESerializeWithOptions() == kCENoError)
    {
      v5 = xpc_data_create(v8, 0);
    }

    else
    {
      v5 = 0;
    }

    free(v8);
  }

  v9 = xpc_array_get_count(empty);
  sub_10000366C(v7, v9);
  xpc_release(empty);
  return v5;
}

size_t sub_1000035C8(void *a1)
{
  result = xpc_array_get_count(a1);
  if (result >> 59)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_100002980(32 * result, 0x14D3B917uLL);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100003FF4;
    applier[3] = &unk_10000C698;
    applier[4] = v3;
    xpc_array_apply(a1, applier);
    return v3;
  }

  return result;
}

void sub_10000366C(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1 + 1;
    do
    {
      if (*(v4 - 1) == 3)
      {
        free(*v4);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

xpc_object_t sub_1000036D4()
{
  v11 = 0uLL;
  v12 = 0;
  v10 = 1;
  v0 = CEValidateWithOptions();
  result = 0;
  if (v0 == kCENoError)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v2 = v11;
    *&v3 = v12;
    if (CEAcquireUnmanagedContext() == kCENoError)
    {
      v2 = v6;
      v3 = v7;
      v4 = v8;
      v5 = v9;
      return sub_100004150(&v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t sub_1000037AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v15 + 1) = 0;
  v6 = sub_1000038D0(a1, a2, &v15 + 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *&v15 = 0;
  v8 = sub_1000038D0(a3, a4, &v15);
  if (v8)
  {
    v9 = v8;
    if (v15 == 0)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(empty, "$and", v9);
      v12 = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(v12, "$and", v7);
      xpc_dictionary_set_value(v12, "$or", empty);
      xpc_release(empty);
      v13 = sub_1000033AC(1, 0, v12);
      xpc_release(v12);
      v10 = sub_10000345C(v13);
      xpc_release(v13);
    }

    else
    {
      v10 = 0;
    }

    xpc_release(v7);
  }

  else
  {
    v10 = 0;
    v9 = v7;
  }

  xpc_release(v9);
  return v10;
}

xpc_object_t sub_1000038D0(uint64_t a1, uint64_t a2, int64_t *a3)
{
  v4 = sub_1000036D4();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  value = xpc_dictionary_get_value(v4, "reqs");
  v7 = value;
  if (value)
  {
    xpc_retain(value);
  }

  *a3 = xpc_dictionary_get_int64(v5, "ccat");
  xpc_release(v5);
  return v7;
}

uint64_t sub_100003948(void *a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 4;
  v4 = sub_1000031F0(a1);
  v14 = 0;
  v15 = 0;
  bytes = 7;
  v13 = 0;
  xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100003A64;
  applier[3] = &unk_10000C650;
  applier[5] = a2;
  applier[6] = a1;
  applier[4] = &v8;
  xpc_array_apply(v4, applier);
  xpc_release(v4);
  v5 = *(v9 + 6);
  if (!v5)
  {
    v14 = 0;
    v15 = 0;
    bytes = 8;
    v13 = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_100003A64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v17 = 0;
  v18 = 0;
  bytes = 5;
  v16 = 0;
  xpc_array_set_data(v5, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  string_ptr = xpc_string_get_string_ptr(a3);
  v12[3] = 0;
  v12[0] = 3;
  v12[1] = sub_1000047D0(string_ptr);
  v12[2] = xpc_string_get_length(a3);
  xpc_array_set_data(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v12, 0x20uLL);
  v7 = *(a1 + 48);
  v8 = xpc_string_get_string_ptr(a3);
  value = xpc_dictionary_get_value(v7, v8);
  if (value)
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100003C9C(value, *(a1 + 40));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      bytes = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        v16 = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      xpc_string_get_string_ptr(a3);
      _os_log_simple();
      return 0;
    }

    else
    {
      v10 = *(a1 + 40);
      v17 = 0;
      v18 = 0;
      bytes = 6;
      v16 = 0;
      xpc_array_set_data(v10, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      return 1;
    }
  }

  else
  {
    bytes = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      bytes = 0;
      v16 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    xpc_string_get_string_ptr(a3);
    _os_log_simple();
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  return result;
}

uint64_t sub_100003C9C(void *a1, void *a2)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_string)
  {
    v16 = 0;
    bytes = 2;
    string_ptr = xpc_string_get_string_ptr(a1);
    length = xpc_string_get_length(a1);
LABEL_12:
    v15 = length;
LABEL_16:
    LOBYTE(v16) = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    return 0;
  }

  v5 = type;
  if (type == &_xpc_type_int64)
  {
    bytes = 4;
    v16 = 0;
    string_ptr = xpc_int64_get_value(a1);
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (type == &_xpc_type_BOOL)
  {
    bytes = 1;
    v16 = 0;
    string_ptr = xpc_BOOL_get_value(a1);
    goto LABEL_15;
  }

  if (type == &_xpc_type_data)
  {
    v16 = 0;
    bytes = 9;
    string_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    goto LABEL_12;
  }

  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_array)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2000000000;
      v12 = 4;
      v15 = 0;
      v16 = 0;
      bytes = 5;
      string_ptr = 0;
      xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      bytes = _NSConcreteStackBlock;
      string_ptr = 0x40000000;
      v15 = sub_100003FA8;
      v16 = &unk_10000C678;
      v17 = &v9;
      v18 = a2;
      xpc_array_apply(a1, &bytes);
      v7 = *(v10 + 6);
      if (!v7)
      {
        v21 = 0;
        v22 = 0;
        v19 = 6;
        v20 = 0;
        xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &v19, 0x20uLL);
        v7 = *(v10 + 6);
      }

      _Block_object_dispose(&v9, 8);
    }

    else
    {
      bytes = 0;
      string_ptr = 0;
      v19 = 0;
      v20 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        string_ptr = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v9 = 0;
        _dyld_get_shared_cache_range();
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      xpc_type_get_name(v5);
      _os_log_simple();
      return 1;
    }

    return v7;
  }

  return sub_100003948(a1, a2);
}

uint64_t sub_100003FF4(uint64_t a1, uint64_t a2, xpc_object_t xdata)
{
  v3 = (*(a1 + 32) + 32 * a2);
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  v5 = bytes_ptr[1];
  *v3 = *bytes_ptr;
  v3[1] = v5;
  return 1;
}

uint64_t sub_10000402C()
{
  if (*(&_os_alloc_once_table + 2) == -1)
  {
    v0 = *(&_os_alloc_once_table + 3);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*(v0 + 41) == 1)
  {
    if (*(v0 + 48) != -1)
    {
      dispatch_once_f((v0 + 48), (v0 + 56), sub_1000040C0);
    }
  }

  else
  {
    sub_1000040C0((v0 + 56));
  }

  return v0 + 56;
}

uint64_t sub_1000040C0(task_info_t task_info_out)
{
  task_info_outCnt = 8;
  if (task_info(mach_task_self_, 0xFu, task_info_out, &task_info_outCnt))
  {
    sub_1000059AC();
  }

  v2 = task_info_out[5];
  result = getpid();
  if (v2 != result || !task_info_out[7])
  {
    sub_1000059AC();
  }

  return result;
}

uint64_t _xpc_spawnattr_unpack_bytes(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2 - a3 >= a4)
  {
    v4 = a1 + a3 + 244;
  }

  else
  {
    v4 = 0;
  }

  if (a2 <= a3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

xpc_object_t sub_100004150(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = a1[2];
  v8 = *(a1 + 6);
  if (!der_vm_context_is_valid())
  {
    return 0;
  }

  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  v7 = a1[2];
  v8 = *(a1 + 6);
  return sub_1000041C4(&v5);
}

xpc_object_t sub_1000041C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v22 = *a1;
  v23 = v3;
  v24 = *(a1 + 2);
  v25 = a1[6];
  v4 = der_vm_CEType_from_context();
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = *(a1 + 2);
        v21 = a1[6];
        empty = xpc_dictionary_create_empty();
        break;
      case 2:
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = *(a1 + 2);
        v21 = a1[6];
        empty = xpc_array_create_empty();
        break;
      case 3:
        v5 = *(a1 + 1);
        v22 = *a1;
        v23 = v5;
        v24 = *(a1 + 2);
        v25 = a1[6];
        v6 = der_vm_integer_from_context();
        return xpc_int64_create(v6);
      default:
        goto LABEL_17;
    }

    v14 = empty;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    der_vm_iterate();
    return v14;
  }

  switch(v4)
  {
    case 4:
      v15 = *(a1 + 1);
      v22 = *a1;
      v23 = v15;
      v24 = *(a1 + 2);
      v25 = a1[6];
      sub_10000465C(&v22);
      return xpc_string_create_no_copy();
    case 5:
      v12 = *(a1 + 1);
      v22 = *a1;
      v23 = v12;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v13 = der_vm_BOOL_from_context();
      return xpc_BOOL_create(v13);
    case 6:
      v8 = *(a1 + 1);
      v22 = *a1;
      v23 = v8;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v9 = der_vm_data_from_context();
      return xpc_data_create(v9, v10);
  }

LABEL_17:
  v17 = (*(v2 + 32))(v2, "[%s]: %s\n", "_objectForActiveContext", "CoreEntitlements: unknown DER type");
  return sub_100004390(v17);
}

uint64_t sub_100004390(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 29);
  if (v3 == 2)
  {
    if (*(a1 + 28) == 1)
    {
      v7 = a1[15];
      v14 = *(a1 + 7);
      v15 = *(a1 + 9);
      v16 = *(a1 + 11);
      v17 = a1[13];
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      v8 = *(a1 + 9);
      v18[0] = *(a1 + 7);
      v18[1] = v8;
      v18[2] = *(a1 + 11);
      v19 = a1[13];
      der_vm_execute();
      memset(v24, 0, sizeof(v24));
      v9 = sub_10000465C(v24);
      v24[0] = xmmword_1000077C0;
      memset(&v24[1], 0, 240);
      der_vm_execute();
      empty = sub_1000041C4(v18);
      xpc_dictionary_set_value(v7, v9, empty);
      free(v9);
    }

    else
    {
      empty = xpc_array_create_empty();
      v11 = *(a1 + 9);
      v24[0] = *(a1 + 7);
      v24[1] = v11;
      v24[2] = *(a1 + 11);
      *&v24[3] = a1[13];
      if (der_vm_iterate() != kCENoError)
      {
        v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: Couldn't iterate over DER entitlements\n");
        return sub_10000465C(v13);
      }

      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, empty);
    }

    v6 = empty;
    goto LABEL_10;
  }

  if (v3)
  {
    if (*(a1 + 28) == 2)
    {
      v4 = *(a1 + 9);
      v24[0] = *(a1 + 7);
      v24[1] = v4;
      v24[2] = *(a1 + 11);
      *&v24[3] = a1[13];
      v5 = sub_1000041C4(v24);
      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, v5);
      v6 = v5;
LABEL_10:
      xpc_release(v6);
      return 1;
    }

    v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: not a sequence");
  }

  else
  {
    v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: unknown DER type");
  }

  return sub_10000465C(v13);
}

void *sub_10000465C(__int128 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 6);
  v1 = der_vm_string_from_context();
  v3 = v2;
  v4 = sub_100002980(v2 + 1, 0xCECD693BuLL);
  memcpy(v4, v1, v3);
  return v4;
}

void sub_10000471C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsyslog(2, a2, &a9);
  qword_100010030 = "Data corruption: CoreEntitlements has aborted due to an unrecoverable error";
  __break(1u);
}

void *sub_100004784(const void *a1, size_t size)
{
  v4 = sub_100002980(size, 0x39A35613uLL);

  return memcpy(v4, a1, size);
}

char *sub_1000047D0(const char *a1)
{
  for (i = a1; ; a1 = i)
  {
    result = strdup(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_1000059CC(&v3, v4);
      }
    }

    sub_100004764();
  }

  return result;
}

char *sub_100004860(char *a1, ...)
{
  va_start(va, a1);
  v4 = 0;
  while (1)
  {
    va_copy(&v3[1], va);
    vasprintf(&v4, a1, va);
    result = v4;
    if (v4)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_1000059CC(v3, v5);
      }
    }

    sub_100004764();
  }

  return result;
}

uint64_t sub_100004928()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL sub_100004940()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100004958()
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  _os_log_simple();
  bzero(&v9, 0x400uLL);
  v0 = backtrace(&v9, 128);
  v1 = backtrace_symbols(&v9, v0);
  if (v1)
  {
    v2 = v1;
    if (v0 >= 1)
    {
      v3 = v0;
      v4 = v1;
      do
      {
        if (!*v4)
        {
          break;
        }

        v11 = 0;
        v12 = 0;
        if ((_dyld_get_image_uuid() & 1) == 0)
        {
          v11 = 0;
          v12 = 0;
        }

        if (_dyld_get_shared_cache_uuid())
        {
          _dyld_get_shared_cache_range();
        }

        v5 = *v4++;
        _os_log_simple();
        --v3;
      }

      while (v3);
    }

    free(v2);
  }

  result = os_fault_with_payload();
  if (result)
  {
    v11 = 0;
    v12 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    v7 = *__error();
    v8 = *__error();
    xpc_strerror();
    return _os_log_simple();
  }

  return result;
}

double xpc_binprefs_alloc()
{
  v0 = sub_100002980(0x24uLL, 0x10000408AA14F5FuLL);
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 0;
  return result;
}

uint64_t xpc_binprefs_add(uint64_t result, int a2, int a3)
{
  v3 = *(result + 32);
  if (v3 >= 4)
  {
    return _os_assumes_log();
  }

  *(result + 4 * v3) = a2;
  *(result + 4 * (*(result + 32))++ + 16) = a3;
  return result;
}

uint64_t xpc_binprefs_set_psattr(cpu_type_t *a1, posix_spawnattr_t *a2)
{
  result = posix_spawnattr_setarchpref_np(a2, a1[8], a1, a1 + 4, 0);
  if (result)
  {
    sub_100005AD4(&v3, v4);
  }

  return result;
}

uint64_t sub_100004CA8(char *a1)
{
  v2 = strrchr(a1, 47);
  if (!v2)
  {
    return 22;
  }

  v3 = v2;
  v4 = *v2;
  *v2 = 0;
  LODWORD(result) = mkpath_np(a1, 0x1F6u);
  if (result == 17)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

  *v3 = v4;
  return result;
}

uint64_t sub_100004D08()
{

  return _os_log_send_and_compose_impl();
}

double sub_100004D30(void *a1, _OWORD *a2)
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

uint64_t sub_100004D6C(const char *a1)
{
  fprintf(__stderrp, "%s: could not exec: %s\n", qword_100010178, a1);
  if (byte_100010200 == 1)
  {
    sub_1000058C4();
  }

  return 1;
}

void sub_100004DC8(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v15, "self", 1);
  xpc_dictionary_set_int64(v15, "code", a2);
  xpc_dictionary_set_int64(v15, "subcode", a3);
  xpc_dictionary_set_uint64(v15, "line", a4);
  xpc_dictionary_set_BOOL(v15, "setup-event", a5 != 0);
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, a6, &a9);
  v16 = 0;
  if (string[0])
  {
    xpc_dictionary_set_string(v15, "string", string[0]);
    v16 = string[0];
  }

  free(v16);
  string[0] = 0;
  v17 = dyld_image_header_containing_address();
  if (v17)
  {
    v18[0] = 0;
    v18[1] = 0;
    _dyld_get_image_uuid();
    xpc_dictionary_set_uuid(v15, "uuid", v18);
  }

  xpc_dictionary_set_uint64(v15, "pc", v9 - v17);
  v18[0] = 0;
  _xpc_service_routine(701, v15, v18);
  if (a5)
  {
    xpc_set_event();
  }

  exit(78);
}

void sub_100004F3C(int a1)
{
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0x40uLL, "Could not create shell: code %d", a1);
  pthread_setname_np(__str);
  sub_1000058C4();
}

uint64_t sub_100004F7C(const char *a1, uint64_t a2)
{
  if (_os_alloc_once_table[2] != -1)
  {
    goto LABEL_23;
  }

  v4 = _os_alloc_once_table[3];
  do
  {
    while (revoke("/dev/console") == -1)
    {
      __envp[0] = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *v29 = 0u;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        a2 = 3;
      }

      else
      {
        a2 = 2;
      }

      v14 = *__error();
      LODWORD(__argv[0]) = 67109120;
      HIDWORD(__argv[0]) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_23:
      v4 = _os_alloc_once();
    }

    v5 = open(a1, 2);
    if (login_tty(v5) == -1)
    {
      close(v5);
      v5 = -1;
    }
  }

  while (v5 == -1);
  if (a2)
  {
    v6 = strlen(a2);
    if (write(v5, a2, v6) == -1)
    {
      goto LABEL_30;
    }
  }

  v28 = 0;
  v7 = posix_spawnattr_init(&v28);
  if (v7)
  {
    v15 = v7;
    __argv[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v15;
    _os_log_send_and_compose_impl();
    v8 = _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  v8 = posix_spawnattr_setflags(&v28, 16448);
  if (v8)
  {
LABEL_25:
    v16 = v8;
    __argv[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v16;
    _os_log_send_and_compose_impl();
    v9 = _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v27 = 0;
  v9 = posix_spawn_file_actions_init(&v27);
  if (v9)
  {
LABEL_26:
    v17 = v9;
    __argv[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v17;
    _os_log_send_and_compose_impl();
    v10 = _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v10 = posix_spawn_file_actions_addinherit_np(&v27, 0);
  if (v10)
  {
LABEL_27:
    v18 = v10;
    __argv[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v18;
    _os_log_send_and_compose_impl();
    v11 = _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  v11 = posix_spawn_file_actions_addinherit_np(&v27, 1);
  if (v11)
  {
LABEL_28:
    v19 = v11;
    __argv[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v19;
    _os_log_send_and_compose_impl();
    v12 = _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v12 = posix_spawn_file_actions_addinherit_np(&v27, 2);
  if (v12)
  {
LABEL_29:
    v20 = v12;
    __argv[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    __envp[0] = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v21 = *__error();
    LODWORD(__argv[0]) = 67109120;
    HIDWORD(__argv[0]) = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  *__argv = off_10000C730;
  *__envp = *off_10000C740;
  v24 = *off_10000C750;
  v25 = 0;
  if ((*(v4 + 9) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!posix_spawnattr_setspecialport_np(&v28, *(v4 + 16), 4))
  {
    *(&v24 + 1) = 0;
LABEL_18:
    pthread_setname_np(byte_100010180);
    v29[0] = 0;
    v13 = posix_spawn(v29, "/bin/sh", &v27, &v28, __argv, __envp);
    sub_100004F3C(v13);
  }

LABEL_31:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v29 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

uint64_t sub_100005654()
{
  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  _os_log_simple();
  cryptex_trampoline_upgrade_wait_options_create();
  cryptex_trampoline_upgrade_wait_options_set_cryptex_name();
  if (cryptex_trampoline_upgrade_wait())
  {
    _dyld_get_image_uuid();
    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    xpc_strerror();
    _os_log_simple();
  }

  return cryptex_trampoline_upgrade_wait_options_destroy();
}

xpc_object_t sub_1000057C4(uint64_t a1, const char *a2, BOOL a3)
{
  if ((*(a1 + 240) & 0x80) != 0)
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "Executable", a2);
  xpc_dictionary_set_BOOL(v5, "SkipImmediatePoll", a3);
  return v5;
}

void *sub_100005840(uint64_t a1, const char *a2, const char *a3)
{
  if ((*(a1 + 240) & 0x80) != 0)
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (a2)
  {
    xpc_dictionary_set_string(v5, "UserName", a2);
  }

  if (a3)
  {
    xpc_dictionary_set_string(v6, "GroupName", a3);
  }

  return v6;
}

void sub_1000058C4()
{
  v0 = mach_host_self();
  host_reboot(v0, 4096);
  __break(1u);
}

uint64_t sub_1000058E0(int a1, void *buffer)
{
  if (proc_pidinfo(a1, 13, 1uLL, buffer, 64) == 64)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

void sub_100005920(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_1000031A8();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_1000059CC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005A38(int a1)
{
  sub_100004860("bootstrap port must lead to PID 1 [actual pid = %d]", a1);
  _os_crash();
  __break(1u);
}

void sub_100005AD4(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100005B88(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005BF4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005C60(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005CCC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005D38(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005DA4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005E10(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005E7C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005EE8(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005F54(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100005FC0(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_10000602C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006098(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006104(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006170(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000061DC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006248(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000062B4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006320(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_10000638C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000063F8(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006464(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000064D0(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_10000653C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000065A8(void *a1, _OWORD *a2)
{
  sub_100004D30(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  sub_100004D50();
  sub_100004D08();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10000662C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006698(void *a1, _OWORD *a2)
{
  sub_100004D30(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  sub_100004D50();
  sub_100004D08();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10000671C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006788(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000067F4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006860(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000068CC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006938(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_1000069A4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006A10(void *a1, _OWORD *a2)
{
  sub_100004D30(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  sub_100004D50();
  sub_100004D08();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_100006A94(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006B00(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006B6C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
}

void sub_100006BD8(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  sub_1000031A8();
  sub_100004928();
  __break(1u);
  CEAcquireUnmanagedContext();
}