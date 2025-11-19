void *sub_100000A28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ssize_t *a6)
{
  v10 = sub_100000D10(*(a2 + 96), 0xB9878750uLL);
  v11 = read(a1, v10, *(a2 + 96));
  v12 = v11;
  if (v11 != *(a2 + 96))
  {
    if (v11 && (v11 != -1 || *__error()))
    {
      _os_assumes_log();
    }

    goto LABEL_8;
  }

  v13 = xpc_create_from_plist_with_string_cache();
  v14 = v13;
  if (v13)
  {
    if (xpc_get_type(v13) != &_xpc_type_dictionary)
    {
      xpc_release(v14);
LABEL_8:
      v14 = 0;
      goto LABEL_9;
    }

    if (a5 && a6)
    {
      *a6 = v12;
      *a5 = v10;
      return v14;
    }
  }

LABEL_9:
  free(v10);
  return v14;
}

int *sub_100000B30(int *result)
{
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      if (*__error())
      {
        _os_assumes_log();
      }

      result = __error();
      if (*result == 9)
      {
        sub_1000027B4();
      }
    }
  }

  return result;
}

void *sub_100000B78(const char *a1, uint64_t a2, uint64_t a3, void *a4, ssize_t *a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = open(a1, 0);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = v9;
  memset(&v14, 0, sizeof(v14));
  v11 = fstat(v9, &v14);
  if (v11 | v14.st_uid || (v14.st_mode & 0x12) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100000A28(v10, &v14, a2, a3, a4, a5);
  }

  sub_100000B30(v10);
  return v12;
}

uint64_t xpc_support_relax_roleaccount_policy()
{
  if (qword_10000C030 != -1)
  {
    sub_1000027D0();
  }

  return byte_10000C038;
}

void sub_100000C98(id a1)
{
  v1 = sub_100000C4C("/Library/Preferences/com.apple.security.xpc.plist");
  if (v1)
  {
    v2 = v1;
    if (xpc_dictionary_get_value(v1, "RestrictRoleAccountServices") == &_xpc_BOOL_false)
    {
      byte_10000C038 = 1;
    }

    xpc_release(v2);
  }
}

void *sub_100000D10(size_t size, malloc_type_id_t type_id)
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
      sub_1000027E4();
    }
  }

  while (sub_100002740());
  return v4;
}

void start(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v3 = *(a2 + 8);
    if (!strcmp(v3, "-launchd"))
    {
      sub_100000EA4();
      sub_100000F44();
    }

    if (!strcmp(v3, "-boot"))
    {
      sub_100000F84();
    }

    sub_100000EA4();
    v6 = sub_100000F00();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a2 + 8);
      v8 = 136446210;
      v9 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "invoked with unknown argument: %{public}s", &v8, 0xCu);
    }
  }

  else
  {
    sub_100000EA4();
    v5 = sub_100000F00();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      LODWORD(v9) = a1;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "unexpected argument count, exiting: %d", &v8, 8u);
    }
  }

  exit(64);
}

uint64_t sub_100000EA4()
{
  result = isatty(1);
  if (result)
  {
    v1 = __stdoutp;
    v2 = getprogname();
    fprintf(v1, "%s cannot be run directly.\n", v2);
    exit(78);
  }

  return result;
}

id sub_100000F00()
{
  if (qword_10000C048 != -1)
  {
    sub_100002800();
  }

  v1 = qword_10000C040;

  return v1;
}

void sub_100000F44()
{
  mach_service = xpc_connection_create_mach_service("com.apple.xpc.roleaccountd", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100008448);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

void sub_100000F84()
{
  v8[0] = "/private/var/db/com.apple.xpc.roleaccountd.staging";
  v8[1] = 0;
  v0 = fts_open(v8, 0, 0);
  if (!v0)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    exit(74);
  }

  v1 = v0;
  v2 = fts_read(v0);
  if (v2)
  {
    v4 = v2;
    do
    {
      if (v4->fts_level && v4->fts_info != 1)
      {
        if (lchflags(v4->fts_path, 0) == -1)
        {
          v6 = *__error();
          _os_assumes_log();
        }

        if (remove(v4->fts_path, v5) == -1)
        {
          v7 = *__error();
          _os_assumes_log();
        }
      }

      v4 = fts_read(v1);
    }

    while (v4);
  }

  if (fts_close(v1) == -1)
  {
    v3 = *__error();
    _os_assumes_log();
  }

  exit(0);
}

void sub_100001080(id a1)
{
  qword_10000C040 = os_log_create("xpcroleaccountd", "default");

  _objc_release_x1();
}

void sub_1000010C4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v5 = v2;
    pid = xpc_connection_get_pid(v5);
    v7 = xpc_connection_copy_entitlement_value();

    v8 = sub_100000F00();
    v9 = v8;
    if (v7 == &_xpc_BOOL_true)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v14) = pid;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "pid[%d]: accepting incoming conncection", buf, 8u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000012F4;
      handler[3] = &unk_100008470;
      v10 = v5;
      v12 = v10;
      xpc_connection_set_event_handler(v10, handler);
      xpc_connection_activate(v10);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v14) = pid;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pid[%d]: refusing incoming connection - process doesn't have xpcproxy entitlements", buf, 8u);
      }

      xpc_connection_cancel(v5);
    }
  }

  else
  {
    v3 = xpc_copy_description(v2);
    v4 = sub_100000F00();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connection error: %s", buf, 0xCu);
    }

    free(v3);
  }
}

void sub_1000012F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  pid = xpc_connection_get_pid(v6);
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      v9 = reply;
      v10 = v5;
      if (xpc_dictionary_get_string(v10, "Path"))
      {
        if (xpc_dictionary_get_string(v10, "Token"))
        {
          if (sandbox_extension_consume() == -1)
          {
            v20 = sub_100000F00();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100002ECC();
            }

            goto LABEL_46;
          }

          v68[0] = 0;
          v11 = xpc_bundle_create();
          property = xpc_bundle_get_property();
          v66 = v11;
          if (property)
          {
            v13 = property;
            v14 = xpc_bundle_get_property();
            if (v14)
            {
              v15 = v14;
              string = xpc_bundle_copy_info_dictionary();
              v17 = string;
              if (!string)
              {
LABEL_28:
                LODWORD(v68[0]) = pid;
                v68[1] = v13;
                v68[2] = v15;
                v68[3] = string;

                v24 = sub_1000020AC("/private/var/db/com.apple.xpc.roleaccountd.staging");
                if (v24 || (v65 = v13, (v24 = sub_1000020AC("/private/var/db/com.apple.xpc.roleaccountd.staging/exec")) != 0))
                {
                  v25 = v24;
LABEL_31:
                  v23 = 0;
                  *__error() = v25;
LABEL_32:
                  v22 = v66;
                  goto LABEL_33;
                }

                v34 = sub_1000020AC("/private/var/db/com.apple.xpc.roleaccountd.staging/tmp");
                if (v34)
                {
                  v25 = v34;
                  goto LABEL_31;
                }

                bzero(__str, 0x400uLL);
                memset(buf, 0, 144);
                if (lstat(v15, buf))
                {
                  v36 = sub_100000F00();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002884();
                  }

                  v37 = *__error();
                  if (v37)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                  st_ino = buf[0].st_ino;
                  st_dev = buf[0].st_dev;
                  v40 = xpc_support_relax_roleaccount_policy();
                  v41 = &unk_100003EAF;
                  if (v40)
                  {
                    v41 = "-relaxed";
                  }

                  snprintf(__str, 0x400uLL, "%s/%d.%lld%s.xpc", "/private/var/db/com.apple.xpc.roleaccountd.staging/exec", st_dev, st_ino, v41);
                }

                memset(&v67, 0, sizeof(v67));
                if (!lstat(__str, &v67))
                {
                  v23 = sub_100001E80(v68, __str);
                  goto LABEL_32;
                }

                bzero(buf, 0x400uLL);
                memset(out, 0, sizeof(out));
                uuid_generate(out);
                memset(&v74, 0, 37);
                uuid_unparse(out, &v74);
                snprintf(buf, 0x400uLL, "%s/%s", "/private/var/db/com.apple.xpc.roleaccountd.staging/tmp", &v74);
                v42 = sub_100000F00();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  *v71 = 136315138;
                  v72 = buf;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "staging area for bundle: %s", v71, 0xCu);
                }

                v43 = copyfile_state_alloc();
                copyfile_state_set(v43, 6u, sub_1000022EC);
                v44 = copyfile(v13, buf, v43, 0xC800Fu);
                copyfile_state_free(v43);
                if (v44)
                {
                  v45 = sub_100000F00();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002910();
                  }

                  v46 = *__error();
                  if (v46)
                  {
                    v37 = v46;
                  }

                  else
                  {
                    v37 = 79;
                  }

LABEL_74:
                  v23 = 0;
                  *__error() = v37;
                  goto LABEL_32;
                }

                v47 = xpc_bundle_create();
                path = xpc_bundle_get_path();
                if (!sub_1000023F0(path))
                {
                  goto LABEL_111;
                }

                v49 = xpc_bundle_get_info_dictionary();
                if (v49)
                {
                  cf = _CFXPCCreateCFObjectFromXPCObject();
                  if (cf)
                  {
                    v50 = CFGetTypeID(cf);
                    if (v50 == CFDictionaryGetTypeID())
                    {

                      v51 = [cf objectForKeyedSubscript:@"XPCService"];
                      if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v52 = [v51 objectForKeyedSubscript:@"_RoleAccount"];
                        if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v53 = [v51 objectForKeyedSubscript:@"ServiceType"];
                          if (!v53)
                          {
LABEL_87:

                            v54 = sub_100000F00();
                            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                            {
                              v74.st_dev = 136315138;
                              *&v74.st_mode = __str;
                              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "moving staging area to secured destination: %s", &v74, 0xCu);
                            }

                            rename(buf, __str, v55);
                            if (!v56)
                            {
                              goto LABEL_125;
                            }

                            if (*__error() == 66)
                            {
                              memset(&v74, 0, sizeof(v74));
                              if (!lstat(v65, &v74) && (v74.st_mode & 0xF000) == 0x4000 && !v74.st_uid)
                              {
                                sub_100002290(buf);
LABEL_125:
                                v23 = xpc_bundle_create();
                                goto LABEL_112;
                              }

                              v57 = sub_100000F00();
                              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                              {
                                sub_100002B5C();
                              }

                              v58 = 1;
                            }

                            else
                            {
                              v63 = sub_100000F00();
                              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                              {
                                sub_100002AD8();
                              }

                              v58 = *__error();
                              if (!v58)
                              {
                                goto LABEL_125;
                              }
                            }

                            sub_100002290(buf);
                            v23 = 0;
                            *__error() = v58;
LABEL_112:

                            goto LABEL_32;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            if (([v53 isEqualToString:@"Application"]& 1) != 0)
                            {
                              goto LABEL_87;
                            }

                            v62 = sub_100000F00();
                            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                            {
                              sub_100002A68();
                            }
                          }

                          else
                          {
                            v62 = sub_100000F00();
                            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                            {
                              sub_1000029F8();
                            }
                          }
                        }

                        else
                        {
                          v53 = sub_100000F00();
                          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                          {
                            sub_100002B98();
                          }
                        }
                      }

                      else
                      {
                        v61 = sub_100000F00();
                        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                        {
                          sub_100002C08();
                        }
                      }

                      v49 = cf;
                    }

                    else
                    {
                      v60 = sub_100000F00();
                      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000029BC();
                      }

                      CFRelease(cf);
                    }

                    goto LABEL_110;
                  }

                  v59 = sub_100000F00();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002C78();
                  }
                }

                else
                {
                  v59 = sub_100000F00();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002CB4();
                  }
                }

LABEL_110:
LABEL_111:

                sub_100002290(buf);
                v23 = 0;
                *__error() = 79;
                goto LABEL_112;
              }

              if (xpc_get_type(string) != &_xpc_type_dictionary)
              {
                string = 0;
                goto LABEL_28;
              }

              string = xpc_dictionary_get_string(v17, "CFBundleIdentifier");
              if (string)
              {
                goto LABEL_28;
              }

              v35 = sub_100000F00();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                sub_100002814();
              }

              v21 = 109;
LABEL_26:

              v22 = v66;
              v23 = 0;
              *__error() = v21;
LABEL_33:

              v26 = *__error();
              if (sandbox_extension_release() == -1)
              {
                v27 = sub_100000F00();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  sub_100002DD0();
                }
              }

              *__error() = v26;
              if (v23)
              {
                executable_path = xpc_bundle_get_executable_path();
                if (sub_1000023F0(executable_path))
                {
                  v29 = sub_100002760(executable_path);

                  if (v29)
                  {
                    xpc_dictionary_set_string(v9, "Path", v29);
                    xpc_dictionary_set_uint64(v9, "Retval", 0);
                    v30 = sub_100000F00();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      buf[0].st_dev = 67109378;
                      *&buf[0].st_mode = pid;
                      LOWORD(buf[0].st_ino) = 2082;
                      *(&buf[0].st_ino + 2) = v29;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "pid[%d]: successfully staged: %{public}s", buf, 0x12u);
                    }

LABEL_50:

                    xpc_connection_send_message(v6, v9);
                    free(v29);

                    goto LABEL_51;
                  }

LABEL_47:
                  v32 = __error();
                  xpc_dictionary_set_uint64(v9, "Retval", *v32);
                  v30 = sub_100000F00();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = *__error();
                    buf[0].st_dev = 67109376;
                    *&buf[0].st_mode = pid;
                    LOWORD(buf[0].st_ino) = 1024;
                    *(&buf[0].st_ino + 2) = v33;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "pid[%d]: failed: %{errno}d", buf, 0xEu);
                  }

                  v29 = 0;
                  goto LABEL_50;
                }

                v31 = sub_100000F00();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_100002E5C();
                }
              }

LABEL_46:
              goto LABEL_47;
            }

            v17 = sub_100000F00();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100002CF0();
            }
          }

          else
          {
            v17 = sub_100000F00();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100002D60();
            }
          }

          v21 = 2;
          goto LABEL_26;
        }

        v19 = sub_100000F00();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100002F74();
        }
      }

      else
      {
        v18 = sub_100000F00();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100002FE4();
        }
      }

      *__error() = 22;
      goto LABEL_46;
    }
  }

LABEL_51:
}

id sub_100001E80(int *a1, const char *a2)
{
  v4 = (*(a1 + 2) + strlen(*(a1 + 1)) + 1);
  v5 = sub_100000F00();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *a1;
    *buf = 67109378;
    v16 = v6;
    v17 = 2082;
    v18 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "pid[%d]: secured service bundle exists: [%{public}s]", buf, 0x12u);
  }

  bzero(buf, 0x400uLL);
  snprintf(buf, 0x400uLL, "%s/%s", a2, v4);
  v7 = sub_100000F00();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *a1;
    v14.st_dev = 67109378;
    *&v14.st_mode = v8;
    LOWORD(v14.st_ino) = 2080;
    *(&v14.st_ino + 2) = buf;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "pid[%d]: secured service bundle executable: %s", &v14, 0x12u);
  }

  memset(&v14, 0, sizeof(v14));
  if (lstat(buf, &v14))
  {
    v9 = sub_100000F00();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003058();
    }

    v10 = 0;
  }

  else if (!v14.st_uid && (v14.st_mode & 0x40) != 0)
  {
    v10 = xpc_bundle_create();
  }

  else
  {
    v11 = sub_100000F00();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000030DC(&v14, &v14.st_uid);
    }

    v12 = __error();
    v10 = 0;
    *v12 = 1;
  }

  return v10;
}

uint64_t sub_1000020AC(char *a1)
{
  if ((mkdir(a1, 0x1C0u) & 0x80000000) == 0)
  {
    return 0;
  }

  if (*__error() == 17)
  {
    memset(&v16, 0, sizeof(v16));
    v3 = lstat(a1, &v16);
    st_mode = v16.st_mode;
    st_uid = v16.st_uid;
    v7 = v16.st_mode != 16832 || v16.st_uid != 0;
    if (!v3 && v7)
    {
      v8 = sub_100000F00();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = st_mode & 0xF000;
        v11 = st_mode & 0xFFF;
        v12 = st_uid != 0;
        v13 = v11 != 448;
        v14 = v10 != 0x4000;
        v15 = strrchr(a1, 47);
        *buf = 136315906;
        v18 = v15;
        v19 = 1024;
        v20 = v14;
        v21 = 1024;
        v22 = v13;
        v23 = 1024;
        v24 = v12;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "bad ownership/permissions on staging area (%s) (%d,%d,%d)", buf, 0x1Eu);
      }

      *__error() = 1;
      return *__error();
    }

    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = sub_100000F00();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000031F0(a1);
    }
  }

  else
  {
    v9 = sub_100000F00();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003160(a1);
    }
  }

  return *__error();
}

void sub_100002290(const char *a1)
{
  if (removefile(a1, 0, 1u))
  {
    v1 = sub_100000F00();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100003280();
    }
  }
}

uint64_t sub_1000022EC(int a1, int a2, int a3, int a4, char *a5)
{
  if (a2 != 2)
  {
    return 0;
  }

  v11 = v5;
  v12 = v6;
  memset(&v10, 0, sizeof(v10));
  if (lchown(a5, 0, 0))
  {
    v8 = sub_100000F00();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003308();
    }

LABEL_12:

    return 2;
  }

  if (lstat(a5, &v10))
  {
    v8 = sub_100000F00();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000338C();
    }

    goto LABEL_12;
  }

  if ((v10.st_mode & 0xF000) == 0xA000)
  {
    v8 = sub_100000F00();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003410();
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1000023F0(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v1)
  {
    keys[0] = kMISValidationOptionAllowAdHocSigning;
    keys[1] = kMISValidationOptionTrustCacheOnly;
    values[0] = kCFBooleanTrue;
    values[1] = kCFBooleanTrue;
    v2 = CFDictionaryCreate(0, keys, values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v2)
    {
      if (MISValidateSignatureAndCopyInfo())
      {
        v3 = sub_100000F00();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10000344C();
        }
      }

      else
      {
        Value = CFDictionaryGetValue(0, kMISValidationInfoEntitlements);
        v6 = Value;
        if (Value && (v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
        {
          v8 = CFDictionaryGetValue(v6, @"com.apple.private.xpc.role-account");
          if (v8 && v8 == kCFBooleanTrue)
          {
            v9 = 1;
            goto LABEL_20;
          }

          v3 = sub_100000F00();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_1000034C0();
          }
        }

        else
        {
          v3 = sub_100000F00();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_1000034FC();
          }
        }
      }
    }

    else
    {
      v3 = sub_100000F00();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100003538();
      }
    }
  }

  else
  {
    v4 = sub_100000F00();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003574();
    }

    v2 = 0;
  }

  v9 = 0;
LABEL_20:
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v9;
}

void sub_100002624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100002760(const char *a1)
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
        sub_1000027E4();
      }
    }

    sub_100002740();
  }

  return result;
}

void sub_1000027B4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000027E4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100002814()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002884()
{
  sub_100002714();
  v0 = *__error();
  sub_1000026F0();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100002910()
{
  v5 = *__error();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_1000029BC()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000029F8()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002A68()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002AD8()
{
  v0 = *__error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100002B5C()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002B98()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002C08()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002C78()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002CB4()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002CF0()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002D60()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002DD0()
{
  sub_100002714();
  v0 = *__error();
  sub_1000026F0();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100002E5C()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002ECC()
{
  sub_100002714();
  v5 = *__error();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100002F74()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100003058()
{
  v0 = *__error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000030DC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  sub_100002730();
  sub_1000026BC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100003160(char *a1)
{
  strrchr(a1, 47);
  v1 = *__error();
  sub_1000026CC();
  sub_100002688();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000031F0(char *a1)
{
  strrchr(a1, 47);
  v1 = *__error();
  sub_1000026CC();
  sub_100002688();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100003280()
{
  v0 = *__error();
  sub_1000026CC();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100003308()
{
  v0 = *__error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000338C()
{
  v0 = *__error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100003410()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000034C0()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000034FC()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003538()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003574()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}