void sub_10000E4CC(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    return;
  }

  v4 = reply;
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v5 = qword_100044CD0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v6;
  v24 = v6;
  xpc_connection_get_audit_token();
  v7 = open(v5, 0);
  if (v7 == -1)
  {
    v16 = *__error();
  }

  else
  {
    v8 = v7;
    xpc_dictionary_set_fd(v4, "persistdir_fd", v7);
    if (close(v8) != -1)
    {
      goto LABEL_6;
    }

    v19 = *__error();
    v20 = *__error();
    if (v19 == 9)
    {
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = v20;
      __break(1u);
      goto LABEL_32;
    }
  }

  _os_assumes_log();
LABEL_6:
  v9 = sandbox_extension_issue_file_to_process();
  if (v9)
  {
    xpc_dictionary_set_string(v4, "persistdir_sbext", v9);
  }

  free(v9);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v10 = open(qword_100044CD8, 0, v23, v24);
  if (v10 == -1)
  {
    v17 = *__error();
    goto LABEL_28;
  }

  v11 = v10;
  xpc_dictionary_set_fd(v4, "timesyncdir_fd", v10);
  if (close(v11) != -1)
  {
    goto LABEL_12;
  }

  v21 = *__error();
  v20 = *__error();
  if (v21 == 9)
  {
LABEL_32:
    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v20;
    __break(1u);
    goto LABEL_33;
  }

LABEL_28:
  _os_assumes_log();
LABEL_12:
  v12 = sandbox_extension_issue_file_to_process();
  if (v12)
  {
    xpc_dictionary_set_string(v4, "timesyncdir_sbext", v12);
  }

  free(v12);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v13 = open(qword_100044CE0, 0, v23, v24);
  if (v13 == -1)
  {
    v18 = *__error();
LABEL_30:
    _os_assumes_log();
    goto LABEL_18;
  }

  v14 = v13;
  xpc_dictionary_set_fd(v4, "uuidtextdir_fd", v13);
  if (close(v14) == -1)
  {
    v22 = *__error();
    v20 = *__error();
    if (v22 != 9)
    {
      goto LABEL_30;
    }

LABEL_33:
    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v20;
    __break(1u);
    return;
  }

LABEL_18:
  v15 = sandbox_extension_issue_file_to_process();
  if (v15)
  {
    xpc_dictionary_set_string(v4, "uuidtextdir_sbext", v15);
  }

  free(v15);
  xpc_connection_send_message(a1, v4);
  xpc_release(v4);
}

void sub_10000E86C()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "operation", 0xAuLL);
  if (qword_100042AF8 != -1)
  {
    dispatch_once(&qword_100042AF8, &stru_1000315F0);
  }

  xpc_connection_send_message(qword_100042AF0, v0);

  xpc_release(v0);
}

void sub_10000E8F8(_xpc_connection_s *a1, xpc_object_t xdict)
{
  if (qword_100042AA0 != -1)
  {
    dispatch_once(&qword_100042AA0, &stru_100031358);
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "logd_snapshot_flags");
  v5 = xpc_dictionary_dup_fd(xdict, "snapshot_file_descriptor");
  if (v5 < 0)
  {

    sub_100010E2C(a1, xdict, 22);
  }

  else
  {
    v6 = v5;
    memset(&v58[0].tm_wday, 170, 0x400uLL);
    pid = xpc_connection_get_pid(a1);
    if (proc_pidpath(pid, &v58[0].tm_wday, 0x400u) <= 0)
    {
      strcpy(&v58[0].tm_wday, "<unknown>");
    }

    v8 = time(0);
    memset(v64, 170, sizeof(v64));
    *&v58[0].tm_mon = 0xAA00000000000000;
    *&v58[0].tm_sec = v64;
    *&v58[0].tm_hour = 0x40000000000;
    sub_10000CCDC(v58, "--- !logd snapshot record\n", v9, v10, v11, v12, v13, v14, v52);
    sub_10000CCDC(v58, "client : %s\n", v15, v16, v17, v18, v19, v20, &v58[0].tm_wday);
    sub_10000CCDC(v58, "time   : ", v21, v22, v23, v24, v25, v26, v53);
    sub_10000CE70(v58, v8);
    LOBYTE(__src[0]) = 10;
    if ((v58[0].tm_year & 2) == 0)
    {
      v33 = BYTE2(v58[0].tm_year);
      tm_hour = v58[0].tm_hour;
      if (v58[0].tm_mday == v58[0].tm_hour + (BYTE2(v58[0].tm_year) ^ 1))
      {
        sub_100012B80(v58, __src, 1uLL);
      }

      else
      {
        v35 = *&v58[0].tm_sec;
        v36 = ~*&v58[0].tm_sec;
        if (~*&v58[0].tm_sec < v58[0].tm_hour)
        {
          goto LABEL_27;
        }

        *(*&v58[0].tm_sec + v58[0].tm_hour) = 10;
        v37 = tm_hour + 1;
        v58[0].tm_hour = v37;
        if ((v33 & 1) == 0)
        {
          if (v36 < v37)
          {
            goto LABEL_27;
          }

          *(v35 + v37) = 0;
        }
      }
    }

    v54 = a1;
    v38 = uint64 & 1;
    sub_10000CCDC(v58, "flags  : 0x%llx\n\n", v27, v28, v29, v30, v31, v32, uint64);
    sub_10000EE68(&v58[0].tm_sec);
    if (v58[0].tm_year)
    {
      free(*&v58[0].tm_sec);
    }

    v39 = (uint64 >> 1) & 1;
    v40 = objc_autoreleasePoolPush();
    __src[0] = @"logd snapshot";
    v65[0] = @"record";
    v65[1] = @"client";
    v41 = [NSString stringWithUTF8String:&v58[0].tm_wday];
    __src[1] = v41;
    v65[2] = @"unixTime";
    v42 = [NSNumber numberWithLong:v8];
    __src[2] = v42;
    v43 = [NSDictionary dictionaryWithObjects:__src forKeys:v65 count:3];

    v44 = sub_10000B9D4(v64, 0x400uLL, v43);
    objc_autoreleasePoolPop(v40);
    if (v44)
    {
      sub_10000F16C();
    }

    dispatch_semaphore_wait(qword_100042A98, 0xFFFFFFFFFFFFFFFFLL);
    v45 = dispatch_queue_create("com.apple.logd.snapshot", 0);
    v46 = dispatch_queue_create("com.apple.logd.snapshot.book", 0);
    v47 = dispatch_group_create();
    bzero(&v58[0].tm_gmtoff, 0x4D0uLL);
    dword_10003600C = v6;
    qword_100035FD8 = v46;
    *&v58[0].tm_wday = v45;
    *&v58[0].tm_isdst = &off_100035FC0;
    v63 = 5;
    sub_10000F800(&v58[0].tm_wday, 0x20000);
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2000000000;
    v64[3] = 0;
    dispatch_group_enter(v47);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 0x40000000;
    v55[2] = sub_10000FC40;
    v55[3] = &unk_1000313E0;
    v56 = v39;
    v57 = v38;
    v55[4] = v64;
    v55[5] = v47;
    v55[6] = &v58[0].tm_wday;
    v55[7] = v45;
    sub_10000FB10(v55);
    dispatch_group_wait(v47, 0xFFFFFFFFFFFFFFFFLL);
    sub_100010B14(&v58[0].tm_wday);
    if (v62 >= 1)
    {
      v48 = 0;
      v49 = 272;
      while (!__CFADD__(v61, v49 - 272))
      {
        v50 = (v61 + v49);
        sub_100010CA0(*(v61 + v49 - 48));
        free(*v50);
        ++v48;
        v49 += 280;
        if (v48 >= v62)
        {
          goto LABEL_20;
        }
      }

LABEL_27:
      __break(0x5513u);
    }

LABEL_20:
    free(v61);
    mach_vm_deallocate(mach_task_self_, address, size);
    for (i = 0; i != 1056; i += 264)
    {
      sub_100010DAC(*(&v58[5].tm_mon + i), sub_100006E3C);
      sub_100010DAC(*(&v58[5].tm_wday + i), sub_100009FBC);
    }

    sub_10000BBFC(&off_100035FC0);
    qword_100035FD8 = 0;
    dispatch_release(v47);
    dispatch_release(v45);
    dispatch_release(v46);
    sub_100010DAC(*(v64[1] + 24), &_free);
    sub_100010E2C(v54, xdict, 0);
    dispatch_semaphore_signal(qword_100042A98);
    _Block_object_dispose(v64, 8);
  }
}

void sub_10000EE68(uint64_t *a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *a1;
  v3 = *(a1 + 2);
  sub_10000CFCC();
  dword_100034488 = sub_10000CB88(dword_100034488, "logdata.statistics.0.txt", "logdata.statistics.1.txt", 0x100000);

  os_unfair_lock_unlock(&unk_100036258);
}

uint64_t sub_10000EEE0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v39.st_blksize = v9;
  *v39.st_qspare = v9;
  v39.st_birthtimespec = v9;
  *&v39.st_size = v9;
  v39.st_mtimespec = v9;
  v39.st_ctimespec = v9;
  *&v39.st_uid = v9;
  v39.st_atimespec = v9;
  *&v39.st_dev = v9;
  *&v38[24] = 0;
  v37 = *(a1 + 64);
  v35 = sub_10000F1F0(a1);
  memset(&v38[32], 170, 0x400uLL);
  *&v38[16] = 0xAA00000000100000;
  *v38 = &v38[32];
  *&v38[8] = 0x40000000000;
  if (a2 >= 4)
  {
    goto LABEL_29;
  }

  if (~off_100032440 < 8 * a2)
  {
LABEL_27:
    __break(0x5513u);
LABEL_28:
    __break(0x5500u);
LABEL_29:
    __break(0x5512u);
  }

  sub_10000F4C8(v38, a1, off_100032440[a2], a3, v10, v11, v12, v13, v34);
  if (v35 < 1)
  {
    v21 = 0;
    *(a1 + 72) = v35;
    goto LABEL_23;
  }

  v18 = v35;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    if (v18 <= *(a1 + 100))
    {
      if (a3 < 1)
      {
        break;
      }

      if (__OFSUB__(v37, v21))
      {
        goto LABEL_26;
      }

      if (v37 - v21 <= a4)
      {
        break;
      }
    }

    if (__CFADD__(*&v38[24], v19))
    {
      goto LABEL_27;
    }

    v22 = (*(*&v38[24] + 8 * v20) + 21);
    if (fstatat(a5, v22, &v39, 32) == -1)
    {
      v39.st_size = 0;
    }

    if (unlinkat(a5, v22, 0) == -1)
    {
      v30 = *__error();
      _os_assumes_log();
    }

    v29 = __OFADD__(v21, v39.st_size);
    v21 += v39.st_size;
    if (v29)
    {
      goto LABEL_28;
    }

    v29 = __OFSUB__(a3, v39.st_size);
    a3 -= v39.st_size;
    if (v29)
    {
      goto LABEL_26;
    }

    sub_10000CCDC(v38, "    - %s/%s: %lld bytes\n", v23, v24, v25, v26, v27, v28, *(a1 + 8));
    *(a1 + 40) = sub_10000F374(v22);
    ++v20;
    v19 += 8;
    --v18;
    if (v20 == v35)
    {
      v31 = v35;
      v20 = v35;
      goto LABEL_20;
    }
  }

  v31 = v35;
LABEL_20:
  v29 = __OFSUB__(v31, v20);
  v32 = v31 - v20;
  if (v29)
  {
LABEL_26:
    __break(0x5515u);
    goto LABEL_27;
  }

  *(a1 + 72) = v32;
  if (v20)
  {
    sub_10000F69C(v38, a1, v20, v21, v14, v15, v16, v17);
  }

LABEL_23:
  if (v38[20])
  {
    free(*v38);
  }

  _os_trace_scandir_free_namelist();
  return v21;
}

void sub_10000F16C()
{
  os_unfair_lock_lock_with_options();
  sub_10000CB40();
  dword_10003448C = sub_10000CB88(dword_10003448C, "logdata.statistics.0.jsonl", "logdata.statistics.1.jsonl", 5242880);

  os_unfair_lock_unlock(&unk_100036258);
}

char *sub_10000F2BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) != 8)
  {
    return 0;
  }

  result = strrchr((a2 + 21), 46);
  if (result)
  {
    if (!strcmp(result, ".tracev3"))
    {
      if (!strncmp((a2 + 21), "logdata.Persistent.", 0x13uLL))
      {
        return 1;
      }

      else
      {
        v5 = sub_10000F374((a2 + 21));
        v6 = *(a1 + 32);
        v7 = *(v6 + 76);
        v8 = *(v6 + 32);
        v9 = v8 < 2 || v7 == -1;
        v10 = -2;
        if (v9)
        {
          v10 = -1;
        }

        return (v5 - 1 < v8 + v10);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000F374(const char *a1)
{
  __s1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = strtoull(a1, &__s1, 16);
  if (__s1 - a1 != 16)
  {
    return 0;
  }

  if (!strcmp(__s1, ".tracev3"))
  {
    return v2;
  }

  return 0;
}

int sub_10000F40C(id a1, const dirent **a2, const dirent **a3)
{
  v5 = strncmp((*a2)->d_name, "logdata.Persistent.", 0x13uLL);
  v6 = strncmp((*a3)->d_name, "logdata.Persistent.", 0x13uLL);
  if ((v5 == 0) != (v6 == 0))
  {
    return (v5 != 0) - (v6 != 0);
  }

  return alphasort(a2, a3);
}

uint64_t sub_10000F4C8(tm *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a4;
  if ((a1->tm_year & 2) == 0)
  {
    tm_hour = a1->tm_hour;
    if (a1->tm_mday - tm_hour - (BYTE2(a1->tm_year) ^ 1u) <= 0x16)
    {
      sub_100012B80(a1, "--- !logd purge record\n", 0x17uLL);
    }

    else
    {
      if (__CFADD__(*&a1->tm_sec, tm_hour))
      {
        goto LABEL_18;
      }

      qmemcpy((*&a1->tm_sec + tm_hour), "--- !logd purge record\n", 23);
      v13 = a1->tm_hour + 23;
      a1->tm_hour = v13;
      if ((a1->tm_year & 0x10000) == 0)
      {
        if (__CFADD__(*&a1->tm_sec, v13))
        {
          goto LABEL_18;
        }

        *(*&a1->tm_sec + v13) = 0;
      }
    }
  }

  sub_10000CCDC(a1, "type  : %s %s\n", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  sub_10000CCDC(a1, "goal  : %lld\n", v14, v15, v16, v17, v18, v19, v9);
  sub_10000CCDC(a1, "time  : ", v20, v21, v22, v23, v24, v25, v36);
  v26 = time(0);
  sub_10000CE70(a1, v26);
  __src = 10;
  if ((a1->tm_year & 2) != 0)
  {
    goto LABEL_13;
  }

  v33 = a1->tm_hour;
  if (a1->tm_mday != v33 + (BYTE2(a1->tm_year) ^ 1))
  {
    if (!__CFADD__(*&a1->tm_sec, v33))
    {
      *(*&a1->tm_sec + v33) = 10;
      v34 = a1->tm_hour + 1;
      a1->tm_hour = v34;
      if ((a1->tm_year & 0x10000) != 0)
      {
        goto LABEL_13;
      }

      if (!__CFADD__(*&a1->tm_sec, v34))
      {
        *(*&a1->tm_sec + v34) = 0;
        goto LABEL_13;
      }
    }

LABEL_18:
    __break(0x5513u);
  }

  sub_100012B80(a1, &__src, 1uLL);
LABEL_13:

  return sub_10000CCDC(a1, "files :\n", v27, v28, v29, v30, v31, v32, a9);
}

void sub_10000F69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  add_explicit = atomic_fetch_add_explicit((a2 + 64), -a4, memory_order_relaxed);
  v9 = add_explicit - a4;
  if (__OFSUB__(add_explicit, a4))
  {
LABEL_16:
    __break(0x5515u);
  }

  v10 = a4;
  sub_10000CCDC(a1, "count : %d\n", a3, a4, a5, a6, a7, a8, a3);
  sub_10000CCDC(a1, "size  : %lld\n", v13, v14, v15, v16, v17, v18, v10);
  v25 = *(a2 + 72);
  v26 = *(a2 + 76) != -1;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27 || __OFADD__(v9, *(a2 + 48)))
  {
    __break(0x5500u);
LABEL_15:
    __break(0x5513u);
    goto LABEL_16;
  }

  sub_10000CCDC(a1, "kept  : %d files, %lld bytes\n", v19, v20, v21, v22, v23, v24, v28);
  __src = 10;
  if ((*(a1 + 10) & 2) != 0)
  {
    goto LABEL_10;
  }

  v29 = *(a1 + 2);
  if (*(a1 + 3) != v29 + (*(a1 + 22) ^ 1))
  {
    if (!__CFADD__(*a1, v29))
    {
      *(*a1 + v29) = 10;
      v30 = *(a1 + 2) + 1;
      *(a1 + 2) = v30;
      if (*(a1 + 22))
      {
        goto LABEL_10;
      }

      if (!__CFADD__(*a1, v30))
      {
        *(*a1 + v30) = 0;
        goto LABEL_10;
      }
    }

    goto LABEL_15;
  }

  sub_100012B80(a1, &__src, 1uLL);
LABEL_10:

  sub_10000EE68(a1);
}

uint64_t sub_10000F800(uint64_t a1, int a2)
{
  if (0x10000 % vm_page_size)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
LABEL_13:
    __break(0x5513u);
    goto LABEL_14;
  }

  *(a1 + 1128) = 0x4FFFFFFFFLL;
  *(a1 + 1104) = 15;
  *(a1 + 1120) = 0x40000;
  v4 = (a1 + 1112);
  result = mach_vm_map(mach_task_self_, (a1 + 1112), 0x40000uLL, 0, 1308622849, 0, 0, 0, 3, 3, 2u);
  if (!result)
  {
    v6 = 0;
    v7 = (a1 + 304);
    v8 = 304;
    while (v8 - 304 <= ~(a1 + 48))
    {
      *(v7 - 1) = 0x10000;
      *v7 = 0;
      *(v7 - 2) = v6 + *v4;
      v8 += 264;
      v6 += 0x10000;
      v7 += 66;
      if (v8 == 1360)
      {
        v9 = *(a1 + 8);
        v10 = a2 / 0x20000;
        if (a2 / 0x20000 <= 1)
        {
          v10 = 1;
        }

        *(a1 + 1168) = 0;
        if (v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        *(a1 + 1172) = v11;
        *(a1 + 1144) = 0;
        *(a1 + 1136) = _os_trace_calloc_typed();
        *(a1 + 1136);
        sub_10000FA90();
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  qword_1000360E8 = "BUG IN LIBTRACE: Allocating buffer failed";
  qword_100036118 = result;
  __break(1u);
  return result;
}

void sub_10000FA90()
{
  v0 = _os_trace_calloc_typed();
  v0[8] = 0;
  v0[9] = v0 + 8;
  v0[1] = -1;
  operator new();
}

void sub_10000FB10(const void *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  *v2 = _Block_copy(a1);
  v2[1] = dispatch_group_create();
  v3 = qword_1000343C0;

  dispatch_async_f(v3, v2, sub_10000FB8C);
}

void sub_10000FB8C(uint64_t a1)
{
  dispatch_suspend(qword_1000343C0);
  off_1000343E8 = a1;
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001016C;
  block[3] = &unk_100030F18;
  block[4] = a1;
  dispatch_group_async(v2, qword_1000343D8, block);
  dispatch_group_notify_f(*(a1 + 8), qword_1000343C8, a1, sub_1000109B8);
}

void sub_10000FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      if (*(a1 + 64) == 1)
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 0x40000000;
        v30[2] = sub_1000108C8;
        v30[3] = &unk_100031378;
        v15 = *(a1 + 48);
        v31 = *(a1 + 40);
        v32 = v15;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 0x40000000;
        v34 = sub_100010880;
        v35 = &unk_100031508;
        v36 = v30;
        sub_100010040(qword_1000344D8, v31, v15);
        v34(v33, 1u);
        v34(v33, 2u);
        v34(v33, 3u);
      }
    }

    else if (a3 == 2 && *(a1 + 65) == 1)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);

      sub_100010040(&unk_100035858, v12, v13);
    }
  }

  else if ((a3 - 3) >= 2)
  {
    if (a3 == 5)
    {
      sub_100010A30(*(a1 + 40));
      sub_100010A94(*(a1 + 40));
      v14 = *(a1 + 40);

      dispatch_group_leave(v14);
    }
  }

  else if (a5 <= 0x1000uLL && (a5 & 0xFFFF0000) <= 0x10000000)
  {
    v9 = HIWORD(a5);
    v10 = sub_1000025DC(a2);
    if (v10 && *(v10 + 96))
    {
      v11 = sub_1000025DC(a2) + 96;
    }

    else
    {
      v11 = sub_1000108E8(a2, (*(*(a1 + 32) + 8) + 24));
    }

    if (v9 <= 7u)
    {
      if (((1 << v9) & 0x93) != 0)
      {
        if (*(a1 + 64) != 1)
        {
          return;
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 0x40000000;
        v18[2] = sub_1000108D8;
        v18[3] = &unk_1000313B8;
        v16 = *(a1 + 56);
        v18[4] = *(a1 + 48);
        v18[5] = a4;
        v19 = a5;
        v20 = WORD2(a5);
        v21 = v9;
        v22 = HIBYTE(a5);
        v23 = v11;
        v17 = v18;
        goto LABEL_25;
      }

      if (v9 == 2)
      {
        if (*(a1 + 65) == 1)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 0x40000000;
          v24[2] = sub_100010870;
          v24[3] = &unk_100031398;
          v16 = *(a1 + 56);
          v24[4] = *(a1 + 48);
          v24[5] = a4;
          v25 = a5;
          v26 = WORD2(a5);
          v27 = 2;
          v28 = HIBYTE(a5);
          v29 = v11;
          v17 = v24;
LABEL_25:
          dispatch_sync(v16, v17);
        }
      }

      else if (v9 == 3)
      {

        sub_100008D2C();
      }
    }
  }
}

void sub_100010040(uint64_t a1, NSObject *a2, NSObject **a3)
{
  dispatch_assert_queue_V2(*a1);
  v6 = *(a1 + 8);
  sub_100004C04(a1);
  if (v6)
  {
    v7 = *(v6 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000109B0;
    block[3] = &unk_100031FC8;
    block[4] = a1;
    dispatch_group_async(a2, v7, block);
  }

  else
  {
    v8 = *a3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_100010228;
    v9[3] = &unk_100032008;
    v9[4] = a3;
    v9[5] = a1;
    dispatch_sync(v8, v9);
  }
}

void sub_10001016C(uint64_t a1)
{
  (*(**(a1 + 32) + 16))();
  sub_100010418(*(a1 + 32), 0);
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000106B4;
  block[3] = &unk_100030EF8;
  block[4] = v2;
  dispatch_group_async(v3, qword_1000343C8, block);
}

void sub_100010228(int8x16_t *a1)
{
  sub_100004C04(a1[2].i64[0]);
  block[0] = _NSConcreteStackBlock;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(*(a1[2].i64[0] + 8) + 24);
  block[1] = 0x40000000;
  block[2] = sub_1000102E8;
  block[3] = &unk_100031FE8;
  v5 = v2;
  dispatch_sync(v3, block);
}

void sub_1000102E8(uint64_t a1)
{
  sub_100006780(*(a1 + 32));
  if (__OFADD__(v2, 1))
  {
    goto LABEL_20;
  }

  v3 = *(*(a1 + 32) + 1172);
  if (v2 == 0x7FFFFFFF && v3 == -1)
  {
    goto LABEL_21;
  }

  v5 = (v2 + 1) % v3;
  if ((v3 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = 280 * v5;
    do
    {
      v8 = *(*(a1 + 32) + 1136);
      if (v6 < 0 == v7 <= ~v8)
      {
        goto LABEL_19;
      }

      if (*(v8 + v7 + 232))
      {
        sub_10000690C(v8 + v7);
        (**(*(a1 + 40) + 8))();
      }

      ++v6;
      v7 += 280;
    }

    while (v6 < v3);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = 280 * v5;
    while (1)
    {
      v11 = *(*(a1 + 32) + 1136);
      if (__CFADD__(v11, v9))
      {
        break;
      }

      if (*(v11 + v9 + 232))
      {
        sub_10000690C(v11 + v9);
        (**(*(a1 + 40) + 8))();
      }

      v9 += 280;
      if (v10 == v9)
      {
        return;
      }
    }

LABEL_19:
    __break(0x5513u);
LABEL_20:
    __break(0x5500u);
LABEL_21:
    __break(0x5503u);
  }
}

void sub_100010418(uint64_t a1, char a2)
{
  os_unfair_lock_lock_with_options();
  if (off_100034410)
  {
    sub_100010494(a2, off_100034410, a1);
  }

  else
  {

    os_unfair_lock_unlock(&unk_100034420);
  }
}

void sub_100010494(char a1, unint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1 & 1;
  v7 = 256 << (a1 & 1);
  v8 = 1 << (a1 & 1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      if (*(a2 + 128))
      {
        v10 = *(a2 + 140);
        while (1)
        {
          v11 = (v8 & v10);
          if ((v7 & v10) | v11)
          {
            break;
          }

          v12 = v10;
          atomic_compare_exchange_strong_explicit((a2 + 140), &v12, v10 | v8, memory_order_relaxed, memory_order_relaxed);
          v13 = v12 == v10;
          v10 = v12;
          if (v13)
          {
            if (*(a2 + 147))
            {
              v14 = 2;
            }

            else
            {
              v14 = 0;
            }

LABEL_11:
            v15 = v14 | v6;
            v16 = &dword_1000343B0[4 * v15];
            *(a2 + 8 * v6 + 32) = 0;
            *(StatusReg + 976) = v16 + 32;
            v17 = atomic_exchange_explicit(v16 + 16, a2, memory_order_release);
            if (v17)
            {
              *(v17 + 8 * v6 + 32) = a2;
              *(StatusReg + 976) = 0;
            }

            else
            {
              *(v16 + 15) = a2;
              *(StatusReg + 976) = 0;
              dispatch_source_merge_data(*&dword_1000343B0[2 * v15 + 46], 1uLL);
            }

            goto LABEL_13;
          }
        }

        if ((v7 & v10) != 0)
        {
          goto LABEL_16;
        }

        if (*(a2 + 147))
        {
          v14 = 2;
        }

        else
        {
          v14 = 0;
        }

        if (!v11)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      ++v5;
      if (a1)
      {
        *(a2 + 145) = 1;
      }

      else
      {
        *(a2 + 146) = 1;
      }
    }

LABEL_16:
    a2 = *(a2 + 16);
  }

  while (a2);
  os_unfair_lock_unlock(&unk_100034420);
  if (v5)
  {
    atomic_fetch_add_explicit((*(a3 + 8) + 48), -4 * v5, memory_order_relaxed);
  }

  sub_100003410();
}

uint64_t sub_1000105F4(uint64_t a1, int *a2)
{
  context = dispatch_mach_mig_demux_get_context();
  if (!context)
  {
    return 5;
  }

  v4 = context;
  result = 0;
  *a2 = *(v4 + 143) ^ 1;
  return result;
}

_DWORD *sub_100010638(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1000105F4(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_1000106B4(uint64_t a1)
{
  (*(**(a1 + 32) + 16))();
  sub_100010418(*(a1 + 32), 1);
  v2 = off_1000343F0;
  if (off_1000343F0)
  {

    sub_100006FEC(v2);
  }
}

uint64_t sub_10001072C(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = 256;
  v5 = 80;
  if (a3)
  {
    v4 = 260;
  }

  else
  {
    v5 = 64;
  }

  if (a3)
  {
    v6 = v3 + 128;
  }

  else
  {
    v6 = *(result + 48);
  }

  v7 = *(v3 + v4);
  v8 = *(result + v5);
  if ((v8 - v7) <= 0x3Fu)
  {
    v11 = -2;
    if (v7 != v8)
    {
      do
      {
        v11 &= ~(1 << *(v6 + 2 * (v7++ & 0x3F)));
      }

      while (v7 != v8);
    }

    for (i = *(v3 + 520) & v11; i; i &= ~(1 << v13))
    {
      v13 = __clz(__rbit64(i));
      v14 = (v3 + (v13 << 12));
      v15 = *v14;
      if (v15 >= 0x11 && v14[19] && ((*(v14 + 7) & 2) == 0) != a3)
      {
        v16 = v15 & 0xFF0000000000FFFFLL | (((*(v14 + 1) | (*(v14 + 6) << 32)) & 0xFFFFFFFFFFLL) << 16);
        result = (*(*a2 + 16))();
      }
    }
  }

  else
  {
    *(result + 144) = 1;
  }

  return result;
}

uint64_t sub_100010880(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    __break(0x5512u);
  }

  else if (1248 * a2 <= ~&qword_1000344D8)
  {
    return (*(*(result + 32) + 16))();
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1000108E8(uint64_t a1, void **a2)
{
  os_unfair_lock_lock_with_options();
  v4 = sub_1000025A8(a1, 0);
  v5 = sub_1000025D4(a1);
  v6 = sub_1000025E4(*a2, v4, v5);
  if (!v6)
  {
    v6 = _os_trace_malloc_typed();
    *(v6 + 8) &= ~1u;
    *v6 = a1;
    sub_100002A10(a2, v4, v5);
  }

  os_unfair_lock_unlock(&unk_100042AE8);
  return v6;
}

void sub_1000109B8(dispatch_object_t *a1)
{
  ((*a1)[2].isa)();
  off_1000343E8 = 0;
  dispatch_release(a1[1]);
  _Block_release(*a1);
  free(a1);
  v2 = qword_1000343C0;

  dispatch_resume(v2);
}

void sub_100010A30(NSObject *a1)
{
  v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &stru_100031CC8);
  dispatch_group_async(a1, qword_100044C10, v2);

  _Block_release(v2);
}

void sub_100010A94(void *a1)
{
  v1 = qword_100044C60;
  v2 = a1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &stru_1000323F8);
  dispatch_group_async(v2, v1, v3);
}

void sub_100010B14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100010C98;
    block[3] = &unk_100031F60;
    block[4] = a1;
    v3 = dispatch_block_create(0, block);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100010C44;
  v5[3] = &unk_100031F88;
  v5[5] = a1;
  v5[6] = v2;
  v5[4] = v3;
  dispatch_sync(v4, v5);
  if (v2)
  {
    dispatch_block_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    _Block_release(v3);
  }
}

void sub_100010C44(void *a1)
{
  sub_100004C04(a1[5]);
  v2 = a1[6];
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = a1[4];

    dispatch_async(v3, v4);
  }
}

void sub_100010CA0(uint64_t a1)
{
  sub_10000A608(a1);
  sub_100010D2C(*(a1 + 16));
  v2 = *(a1 + 24);
  sub_10000A0A4(v2);
  if (v2)
  {
    sub_10000A058(*(v2 + 16));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      operator delete(v3);
    }

    operator delete();
  }

  sub_100010DAC(*(a1 + 40), 0);

  free(a1);
}

void *sub_100010D2C(void **a1)
{
  result = sub_10000A6A8(a1);
  if (a1)
  {
    v3 = a1[2];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    operator delete();
  }

  return result;
}

void *sub_100010DAC(void **a1, uint64_t (*a2)(void))
{
  result = sub_100006F54(a1, a2);
  if (a1)
  {
    v4 = a1[2];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *a1;
    *a1 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    operator delete();
  }

  return result;
}

void sub_100010E2C(_xpc_connection_s *a1, xpc_object_t original, int a3)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "st", a3);
    xpc_connection_send_message(a1, v6);

    xpc_release(v6);
  }
}

void sub_100010EDC(int a1, const void *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(v4);
  qword_1000343C0 = dispatch_queue_create_with_target_V2("com.apple.firehose.snapshot-gate", v4, 0);
  qword_1000343D0 = dispatch_workloop_create_inactive("com.apple.firehose.io-wl");
  dispatch_set_qos_class_fallback();
  dispatch_activate(qword_1000343D0);
  qword_1000343C8 = dispatch_queue_create_with_target_V2("com.apple.firehose.drain-io", v4, qword_1000343D0);
  qword_1000343D8 = dispatch_queue_create_with_target_V2("com.apple.firehose.drain-mem", initially_inactive, 0);
  dispatch_set_qos_class_fallback();
  dispatch_activate(qword_1000343D8);
  f = dispatch_mach_create_f();
  dword_1000343B0[0] = a1;
  qword_1000343B8 = f;
  off_1000343E0 = _Block_copy(a2);
  v20 = 0;
  v21 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v8 = open_NOCANCEL();
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    v9 = **(StatusReg + 8);
    if (v9 != 4)
    {
      if (v9 != 2)
      {
        sub_100027810(v9);
      }

      goto LABEL_12;
    }
  }

  v10 = v8;
  v11 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (ioctl(v10, 0x4010744FuLL, &v20) < 0)
  {
    v12 = **(v11 + 8);
    if (v12 != 4)
    {
      sub_1000277E8(v12);
    }
  }

  if ((v21 - 262145) <= 0xFFFFFFFFFFFCFFFELL)
  {
    sub_1000277C0(v21);
  }

  v13 = v20;
  v14 = _os_object_alloc_realized();
  *(v14 + 48) = v13;
  *(v14 + 64) = *(v13 + 464);
  *(v14 + 56) = *(v14 + 64);
  *(v14 + 80) = *(v13 + 488);
  *(v14 + 72) = *(v14 + 80);
  v15 = dispatch_source_create(&_dispatch_source_type_read, v10, 0, qword_1000343D8);
  dispatch_set_qos_class_floor(v15, QOS_CLASS_USER_INITIATED, 0);
  dispatch_set_context(v15, v14);
  dispatch_source_set_event_handler_f(v15, sub_100006FEC);
  *(v14 + 96) = v15;
  *(v14 + 120) = -1;
  dword_1000343F8 = v10;
  off_1000343F0 = v14;
LABEL_12:
  v16 = 0;
  v17 = 0x1FFFFFFFFFFFFFF8;
  do
  {
    v18 = &qword_1000343D8;
    if (v16)
    {
      v18 = &qword_1000343C8;
    }

    v19 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, *v18);
    dispatch_set_context(v19, &qword_100034468[v17]);
    dispatch_source_set_event_handler_f(v19, sub_100001090);
    qword_100034468[v16++] = v19;
    v17 += 2;
  }

  while (v16 != 4);
}

uint64_t sub_1000111A0(unsigned int a1)
{
  if (a1 != 20180226)
  {
    sub_100027838(a1);
  }

  result = _firehose_spi_version;
  if (_firehose_spi_version != 20180226)
  {
    sub_100027860(_firehose_spi_version);
  }

  return result;
}

void sub_100011204()
{
  if (off_1000343F0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000112C0;
    block[3] = &unk_100030E88;
    block[4] = dword_1000343B0;
    dispatch_async(qword_1000343D8, block);
  }

  dispatch_mach_connect();
  for (i = 0; i != 8; i += 2)
  {
    dispatch_activate(*&dword_1000343B0[i + 46]);
  }
}

void sub_1000112C0(uint64_t a1)
{
  v7 = xmmword_100029C60;
  v8 = 0;
  v1 = *(*(a1 + 32) + 64);
  dispatch_assert_queue_V2(qword_1000343D8);
  os_unfair_lock_lock_with_options();
  *(v1 + 16) = 0;
  v2 = off_100034418;
  *(v1 + 24) = off_100034418;
  *v2 = v1;
  off_100034418 = (v1 + 16);
  os_unfair_lock_unlock(&unk_100034420);
  (*(off_1000343E0 + 2))(off_1000343E0, v1, 1, &v7, 0);
  if (*(v1 + 128))
  {
    v3 = *(v1 + 96);
    v4 = *(v1 + 112);
    dispatch_mach_connect();
    v5 = *(v1 + 104);
    v6 = *(v1 + 116);
    dispatch_mach_connect();
  }

  else
  {
    dispatch_activate(*(v1 + 96));
  }
}

void sub_10001139C()
{
  dispatch_mach_cancel();
  os_unfair_lock_lock_with_options();
  v0 = off_100034410;
  if (off_100034410)
  {
    do
    {
      if (*(v0 + 32))
      {
        v1 = v0[12];
        dispatch_mach_cancel();
        v2 = v0[13];
        dispatch_mach_cancel();
      }

      v0 = v0[2];
    }

    while (v0);
  }

  os_unfair_lock_unlock(&unk_100034420);
}

void sub_100011414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100011490;
  block[3] = &unk_100030EB0;
  block[5] = a2;
  block[6] = a1;
  block[4] = a3;
  dispatch_async(qword_1000343D8, block);
}

uint64_t sub_100011490(void *a1)
{
  size = a1[5];
  if (dword_1000343FC)
  {
    v2 = mach_port_deallocate(mach_task_self_, dword_1000343FC);
    if (v2 == -301)
    {
      sub_100027888();
    }

    if (v2)
    {
      _dispatch_bug();
    }
  }

  if (qword_100034408)
  {
    munmap(qword_100034408, qword_100034400);
  }

  v4 = a1[5];
  v3 = a1[6];
  qword_100034408 = v3;
  qword_100034400 = v4;
  dword_1000343FC = 0;
  if (v3)
  {
    memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, v3, 4194305, &dword_1000343FC, 0);
    if (memory_entry_64 == -301)
    {
      sub_100027888();
    }

    if (memory_entry_64)
    {
      _dispatch_bug();
    }
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

NSObject *sub_100011584(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    sub_1000278B0(a1);
  }

  v1 = *off_100030F38[a1 - 1];
  dispatch_retain(v1);
  return v1;
}

uint64_t sub_1000115CC(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 11605) >= 0xFFFFFFFB)
  {
    return *(&off_100030F50 + 5 * (v1 - 11600) + 5);
  }

  else
  {
    return 0;
  }
}

void sub_100011608(id a1)
{
  if (&tb_client_connection_create)
  {
    v1 = _os_trace_calloc_typed();
    if (exclaves_lookup_service())
    {
      memset(&v4[34], 170, 0x3DEuLL);
      strcpy(v4, "Exclaves log server not available");
    }

    else
    {
      v2 = _os_trace_calloc_typed();
      *v2 = 0;
      v2[1] = 0xAAAAAAAAAAAAAAAALL;
      if (tb_endpoint_create_with_data())
      {
        tb_endpoint_set_interface_identifier();
        v3 = tb_client_connection_create_with_endpoint();
        if (!tb_client_connection_activate())
        {
          *v1 = v3;
          qword_100036240 = v1;
          return;
        }
      }

      free(v2);
      memset(&v4[41], 170, 0x3D7uLL);
      strcpy(v4, "Failed to initialize config admin client");
    }

    sub_1000155B8(v4);
    free(v1);
  }
}

uint64_t sub_1000117AC(unint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    if (a1 >= 0xFFFFFFFFFFFFFFFCLL)
    {
LABEL_15:
      __break(0x5513u);
    }

    v5 = (a1 + 4);
    v6 = a2 - 4;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v27 = _os_trace_calloc_typed();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v16 = sub_1000119FC;
  v17 = &unk_100031188;
  v18 = a4;
  v19 = &v24;
  v20 = &v28;
  v21 = &v32;
  v22 = &v36;
  v23 = 20;
  if (v6 >= 0x14)
  {
    do
    {
      v7 = *v5;
      if (v6 < v7)
      {
        break;
      }

      v8 = v5[1];
      if (v8 + 21 > v7)
      {
        break;
      }

      if (__CFADD__(v5 + 5, v8))
      {
        goto LABEL_15;
      }

      if (*(v5 + v8 + 20) || !v16(v15, v5))
      {
        break;
      }

      v9 = *v5;
      if (__CFADD__(v5, v9))
      {
        goto LABEL_15;
      }

      v5 = (v5 + v9);
      v6 -= v9;
    }

    while (v6 > 0x13);
  }

  if (*(v37 + 24) == 1)
  {
    ++v33[3];
    v10 = v25[3];
    v11 = v29[3];
    v12 = (*(a4 + 16))(a4);
    *(v37 + 24) = v12;
  }

  free(v25[3]);
  v13 = *(v37 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return v13;
}

uint64_t sub_1000119FC(void *a1, unsigned int *a2)
{
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (~v2 < (16 * v4) || (v4 + 0x800000000000000) >> 60 != 0)
  {
    goto LABEL_25;
  }

  v8 = v2 + 16 * v4;
  v9 = (a2 + 5);
  v10 = strlen(a2 + 20);
  *v8 = crc32(0, v9, v10);
  *(v8 + 4) = 0;
  *(v8 + 8) = *(a2 + 3);
  if (*(*(a1[6] + 8) + 24) == a1[9])
  {
    v11 = a1[4];
    ++*(*(a1[7] + 8) + 24);
    v12 = *(*(a1[5] + 8) + 24);
    v13 = *(*(a1[6] + 8) + 24);
    if (((*(v11 + 16))() & 1) == 0)
    {
      result = 0;
      *(*(a1[8] + 8) + 24) = 0;
      return result;
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v14 = a2[1];
  if (((v14 + 1) & 3) != 0)
  {
    v15 = v14 - ((v14 + 1) & 3) + 5;
  }

  else
  {
    v15 = v14 + 1;
  }

  if (__CFADD__(v9, v15))
  {
LABEL_25:
    __break(0x5513u);
  }

  v16 = *a2 - v15;
  v26[0] = _NSConcreteStackBlock;
  v17 = v16 - 20;
  v26[1] = 0x40000000;
  v27 = sub_100011C38;
  v28 = &unk_100031160;
  v19 = a1[8];
  v18 = a1[9];
  v32 = a2;
  v33 = v18;
  v20 = *(a1 + 3);
  v29 = *(a1 + 2);
  v30 = v20;
  v31 = v19;
  if (v17 >= 0x14)
  {
    v21 = &v9[v15];
    do
    {
      v22 = *v21;
      if (v17 < v22)
      {
        break;
      }

      v23 = *(v21 + 1);
      if (v23 + 21 > v22)
      {
        break;
      }

      if (__CFADD__(v21 + 20, v23))
      {
        goto LABEL_25;
      }

      if (v21[v23 + 20] || !v27(v26, v21))
      {
        break;
      }

      v24 = *v21;
      if (__CFADD__(v21, v24))
      {
        goto LABEL_25;
      }

      v21 += v24;
      v17 -= v24;
    }

    while (v17 > 0x13);
  }

  return 1;
}

uint64_t sub_100011C38(uint64_t result, uint64_t a2)
{
  v2 = *(*(*(result + 40) + 8) + 24);
  v3 = *(*(result + 48) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (~v2 < (16 * v4) || (v4 + 0x800000000000000) >> 60 != 0)
  {
    __break(0x5513u);
    return result;
  }

  v7 = result;
  v8 = v2 + 16 * v4;
  v9 = *(result + 72);
  v10 = strlen((v9 + 20));
  *v8 = crc32(0, (v9 + 20), v10);
  if (a2)
  {
    v11 = strlen((a2 + 20));
    v12 = crc32(0, (a2 + 20), v11);
  }

  else
  {
    v12 = 0;
    a2 = v9;
  }

  *(v8 + 4) = v12;
  *(v8 + 8) = *(a2 + 12);
  if (*(*(v7[6] + 8) + 24) != v7[10])
  {
    return 1;
  }

  v13 = v7[4];
  ++*(*(v7[7] + 8) + 24);
  v14 = *(*(v7[5] + 8) + 24);
  v15 = *(*(v7[6] + 8) + 24);
  if ((*(v13 + 16))())
  {
    *(*(v7[6] + 8) + 24) = 0;
    return 1;
  }

  result = 0;
  *(*(v7[8] + 8) + 24) = 0;
  return result;
}

BOOL sub_100011D70(id a1, unint64_t a2, oslogdarwin_prefsvalue_s *a3, unint64_t a4)
{
  if (a2 >= 2 && !a4)
  {
    return 1;
  }

  v5 = 0x2BFF4390FAE5F890;
  v6 = 3;
  memset(v7, 170, sizeof(v7));
  v8 = a3;
  v9 = a4;
  v10 = 0;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  return sub_100011E10(&v5);
}

uint64_t sub_100011E10(unsigned __int8 *a1)
{
  if (qword_100036248 != -1)
  {
    dispatch_once(&qword_100036248, &stru_1000310F8);
  }

  v2 = qword_100036240;
  if (!qword_100036240)
  {
    v10 = 0;
    return v10 & 1;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v15 = sub_100012244;
  v16 = &unk_1000311B0;
  v17 = &v18;
  if (*a1 == 0x2BFF4390FAE5F890 || *a1 == 0xB846F5BCEBFFF0E0)
  {
    *&v39 = 0;
    *(&v39 + 1) = &v39;
    v40 = 0x2000000000uLL;
    *&v32 = _NSConcreteStackBlock;
    *(&v32 + 1) = 0x40000000;
    *&v33 = sub_10002412C;
    *(&v33 + 1) = &unk_100032A10;
    *&v34 = &v39;
    sub_100023DBC(a1 + 8, &v32);
    v3 = *(*(&v39 + 1) + 24);
    _Block_object_dispose(&v39, 8);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *v2;
  if (tb_client_connection_message_construct())
  {
    goto LABEL_13;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  v5 = *a1;
  tb_message_raw_encode_u64();
  v6 = *a1;
  if (*a1 == 0x2BFF4390FAE5F890 || v6 == 0xB846F5BCEBFFF0E0)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    sub_100023D54(a1 + 8);
    tb_message_raw_encode_u64();
    v22 = _NSConcreteStackBlock;
    v23 = 0x40000000;
    v24 = sub_100024144;
    v25 = &unk_100032A38;
    v26 = &v28;
    v27 = &v39;
    sub_100023DBC(a1 + 8, &v22);
    v7 = *(v29 + 6);
    _Block_object_dispose(&v28, 8);
    if (!v7)
    {
      tb_message_raw_encode_BOOL();
      tb_message_complete();
      v28 = 0;
      v8 = *v2;
      if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v28)
      {
        v22 = 0xAAAAAAAAAAAAAAAALL;
        v23 = 0xAAAAAAAAAAAAAAAALL;
        tb_message_decode_u8();
        if (v22 == 1)
        {
          tb_message_decode_u64();
          v12 = v23;
          if (v23 == 0xCBD9DC39909D106ALL || v23 == 0x4EF7D98DF3E71501)
          {
            goto LABEL_23;
          }
        }

        else if (!v22)
        {
          v12 = v23;
LABEL_23:
          v15(v14, v22, v12);
          v13 = *v2;
          tb_client_connection_message_destruct();
          v10 = *(v19 + 24) ^ 1;
          goto LABEL_14;
        }
      }

      v9 = *v2;
      tb_client_connection_message_destruct();
LABEL_13:
      v10 = 0;
LABEL_14:
      _Block_object_dispose(&v18, 8);
      return v10 & 1;
    }

    printf("TB_ASSERT: (oslogdarwin_prefsbatch__raw_encode(&msg, prefs) == TB_ERROR_SUCCESS) && failed to encode type: OSLogDarwin.PrefsBatch, \b\b (%s:%d)\n", "OSLogDarwin_C.c", 2474);
    _os_crash();
    __break(1u);
  }

  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v6, "/Library/Caches/com.apple.xbs/Binaries/libtrace_executables/install/TempContent/Objects/libtrace.build/logd.build/DerivedSources/OSLogDarwin_C.c", 1481);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_100012244(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (a3 == 0xCBD9DC39909D106ALL)
    {
      memset(&v4[60], 170, 0x3C4uLL);
      strcpy(v4, "failed to set preferences in exclaves: invalid subsystem id");
    }

    else
    {
      if (a3 != 0x4EF7D98DF3E71501)
      {
LABEL_7:
        *(*(*(a1 + 32) + 8) + 24) = 1;
        return;
      }

      memset(&v4[50], 170, 0x3CEuLL);
      strcpy(v4, "failed to set preferences in exclaves: full cache");
    }

    sub_1000155B8(v4);
    goto LABEL_7;
  }
}

BOOL sub_100012358(id a1, unint64_t a2, oslogdarwin_prefsvalue_s *a3, unint64_t a4)
{
  if (a2 >= 2 && !a4)
  {
    return 1;
  }

  v5 = 0xB846F5BCEBFFF0E0;
  v6 = 3;
  memset(v7, 170, sizeof(v7));
  v8 = a3;
  v9 = a4;
  v10 = 0;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  return sub_100011E10(&v5);
}

void sub_1000123F8(id a1)
{
  v3 = 255;
  v2 = 4;
  if (sysctlbyname("kern.exclaves_status", &v3, &v2, 0, 0) == -1)
  {
    memset(&v4[40], 170, 0x3D8uLL);
    strcpy(v4, "Unable to properly query exclave status");
  }

  else
  {
    if (v3 != 255)
    {
      v1 = 1;
      goto LABEL_7;
    }

    memset(&v4[38], 170, 0x3DAuLL);
    strcpy(v4, "Exclaves not supported on this device");
  }

  sub_1000155B8(v4);
  v1 = 0;
LABEL_7:
  byte_100036230 = v1;
}

void sub_100012500()
{
  if (qword_100036238 != -1)
  {
    dispatch_once(&qword_100036238, &stru_1000310B8);
  }

  if (byte_100036230 == 1)
  {
    memset(&__b[2] + 12, 170, 0x3D4uLL);
    strcpy(__b, "Initializing notifications from exclaves...");
    sub_1000155B8(__b);
    v0 = exclaves_notification_create();
    if (v0)
    {
      v1 = v0;
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "Unable to create exclaves notification end point with error code: %d", v1);
    }

    else
    {
      qword_100036250 = dispatch_source_create(&_dispatch_source_type_exclaves_notification, 0xAAAAAAAAAAAAAAAALL, 0xF800uLL, &_dispatch_main_q);
      dispatch_source_set_event_handler(qword_100036250, &stru_1000311F0);
      dispatch_activate(qword_100036250);
      memset(&__b[2] + 11, 170, 0x3D5uLL);
      strcpy(__b, "Subscribed for notifications from exclaves");
    }

    sub_1000155B8(__b);
  }
}

void sub_10001267C(id a1)
{
  v1 = dispatch_source_get_data(qword_100036250) >> 11;
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "Received an exclave notification %lu", v1);
  sub_1000155B8(__b);
  switch(v1)
  {
    case 3:
      sub_100029384(v2);
      v7 = *(v6 + 3328);
      if (objc_opt_class())
      {
        if (&off_100031848 >= 0xFFFFFFFFFFFFFFF8)
        {
          __break(0x5513u);
          return;
        }

        sub_100015240(v8);
      }

      break;
    case 2:
      sub_100029384(v2);
      v4 = *(v3 + 3328);
      if (objc_opt_class())
      {
        sub_100015508(v5);
      }

      break;
    case 1:
      os_unfair_lock_lock_with_options();
      sub_100012D40();
      os_unfair_lock_unlock(&unk_100042AA8);
      break;
    default:
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "Unknown notification type: %lu", v1);
      goto LABEL_13;
  }

  if (sub_1000127F0())
  {
    return;
  }

  memset(&__b[2] + 11, 170, 0x3D5uLL);
  strcpy(__b, "Sending of completion of sync have failed.");
LABEL_13:
  sub_1000155B8(__b);
}

BOOL sub_1000127F0()
{
  if (qword_100036248 != -1)
  {
    dispatch_once(&qword_100036248, &stru_1000310F8);
  }

  v0 = qword_100036240;
  if (!qword_100036240)
  {
    return 0;
  }

  v1 = *qword_100036240;
  if (tb_client_connection_message_construct())
  {
    return 0;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  tb_message_complete();
  v3 = *v0;
  v4 = tb_connection_send_query();
  v5 = *v0;
  tb_client_connection_message_destruct();
  return v4 == 0;
}

void sub_100012924(void *a1)
{
  memset(v11, 170, 22);
  *__str = 0xAAAAAAAAAAAAAAAALL;
  v1 = dword_10003609C[0];
  v2 = unk_1000360A0;
  v3 = a1;
  snprintf(__str, 0x1EuLL, "%s.tmp", "version.plist");
  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];

  v5 = openat(dword_100035D38, __str, 1794, 420);
  if (v5 == -1)
  {
    v8 = *__error();
    _os_assumes_log();
  }

  else
  {
    v6 = v5;
    fchown(v5, v1, v2);
    v7 = [[NSFileHandle alloc] initWithFileDescriptor:v6];
    [v7 writeData:v4 error:0];
    [v7 synchronizeAndReturnError:0];
    [v7 closeAndReturnError:0];
    if (renameat(dword_100035D38, __str, dword_100035D38, "version.plist") == -1)
    {
      v9 = *__error();
      _os_assumes_log();
    }
  }
}

uint64_t sub_100012AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + (*(a1 + 22) ^ 1u);
  v4 = v3 + a2;
  if ((v3 + a2) >> 32)
  {
    v5 = *(a1 + 12);
    v6 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      if (2 * v5 > v4)
      {
        v4 = 2 * v5;
      }

      if (*(a1 + 16) >= v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = *(a1 + 16);
      }
    }
  }

  if (v6 > v5)
  {
    v7 = *a1;
    if (*(a1 + 20))
    {
      v9 = *a1;
      *a1 = _os_trace_realloc_typed();
    }

    else
    {
      v8 = _os_trace_malloc_typed();
      *a1 = v8;
      memcpy(v8, v7, v3);
      *(a1 + 20) |= 1u;
    }

    *(a1 + 12) = v6;
  }

  return v6 - v3;
}

uint64_t sub_100012B80(uint64_t result, void *__src, size_t __n)
{
  if ((*(result + 20) & 2) == 0)
  {
    v3 = __n;
    v5 = result;
    v6 = *(result + 12);
    v7 = v6 - *(result + 8) - (*(result + 22) ^ 1);
    if (v7 < __n)
    {
      if (v6 < *(result + 16))
      {
        result = sub_100012AA8(result, __n);
        v7 = result;
      }

      if (v7 < v3)
      {
        *(v5 + 10) |= 2u;
        v3 = v7;
      }
    }

    v8 = *(v5 + 2);
    if (__CFADD__(*v5, v8))
    {
      goto LABEL_12;
    }

    result = memcpy((*v5 + v8), __src, v3);
    v9 = *(v5 + 2) + v3;
    *(v5 + 2) = v9;
    if (*(v5 + 22))
    {
      return result;
    }

    if (__CFADD__(*v5, v9))
    {
LABEL_12:
      __break(0x5513u);
      return result;
    }

    *(*v5 + v9) = 0;
  }

  return result;
}

void *sub_100012C50(uint64_t a1, unsigned int a2)
{
  result = sub_1000029D0(*(a1 + 32), a2);
  *result = 0;
  return result;
}

uint64_t sub_100012C70(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock_with_options();
  *sub_1000029D0(a2, *(*(a1 + 32) + 1240)) = 0;
  os_unfair_lock_unlock(a2 + 44);
  return 1;
}

void sub_100012D40()
{
  memset(&v8[3] + 7, 170, 0x3E1uLL);
  strcpy(v8, "Starting a flush before panic!");
  sub_1000155B8(v8);
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100012FA8;
  v3[3] = &unk_100031570;
  v3[4] = &v4;
  v3[5] = v0;
  sub_10000FB10(v3);
  dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v0);
  v1 = qword_1000344D8;
  v2 = 5;
  do
  {
    sub_100010B14(v1);
    v1 += 156;
    --v2;
  }

  while (v2);
  sub_100019088();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100010880;
  v8[3] = &unk_100031508;
  v8[4] = &stru_1000315B0;
  sub_10001A91C(off_1000344E0);
  (v8[2])(v8, 1);
  (v8[2])(v8, 2);
  (v8[2])(v8, 3);
  sub_100010DAC(v5[3], &_free);
  dispatch_sync(qword_100044C60, &stru_1000323B8);
  memset(&v8[1] + 7, 170, 0x3F1uLL);
  strcpy(v8, "writes blocked");
  sub_1000155B8(v8);
  memset(&v8[6] + 7, 170, 0x3C9uLL);
  strcpy(v8, "Completed flush before panic and blocked future writes");
  sub_1000155B8(v8);
  _Block_object_dispose(&v4, 8);
}

void sub_100012FA8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a3 > 2)
  {
    if ((a3 - 3) >= 2)
    {
      if (a3 != 5)
      {
        return;
      }

      sub_100010A30(*(a1 + 40));
      sub_100010A94(*(a1 + 40));
      goto LABEL_28;
    }

    v8 = a5;
    if (a5 > 0x1000uLL || WORD1(a5) > 0x1000uLL)
    {
      return;
    }

    v11 = sub_1000025DC(a2);
    if (v11 && *(v11 + 96))
    {
      v12 = sub_1000025DC(a2) + 96;
    }

    else
    {
      v12 = sub_1000108E8(a2, (*(*(a1 + 32) + 8) + 24));
    }

    if (BYTE6(a5) > 2u)
    {
      if (BYTE6(a5) != 4)
      {
        if (BYTE6(a5) != 3)
        {
          return;
        }

        dispatch_group_enter(*(a1 + 40));
        sub_100008D2C();
        goto LABEL_28;
      }
    }

    else if (BYTE6(a5) >= 2u)
    {
      if (BYTE6(a5) != 2 || a3 != 4)
      {
        return;
      }

      goto LABEL_27;
    }

    if (a3 != 3)
    {
      return;
    }

LABEL_27:
    dispatch_group_enter(*(a1 + 40));
    sub_1000023D0(v12, a4, a5 & 0xFFFFFFFF00000000 | (WORD1(a5) << 16) | v8);
LABEL_28:
    v13 = *(a1 + 40);

    dispatch_group_leave(v13);
    return;
  }

  if (a3 == 1)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v15 = sub_100010880;
    v16 = &unk_100031508;
    v17 = &stru_100031548;
    sub_1000195C0(qword_1000344D8);
    sub_100010880(v14, 1u);
    v15(v14, 2u);
    v15(v14, 3u);
  }

  else if (a3 == 2)
  {

    sub_1000195C0(&unk_100035858);
  }
}

intptr_t sub_100013260(_xpc_connection_s *a1, void *a2)
{
  if (qword_100042AB8 != -1)
  {
    dispatch_once(&qword_100042AB8, &stru_100031420);
  }

  dispatch_semaphore_wait(qword_100042AB0, 0xFFFFFFFFFFFFFFFFLL);
  sub_100012D40();
  sub_100010E2C(a1, a2, 0);
  memset(&v5[48], 170, 0x3D0uLL);
  strcpy(v5, "Snapshotting before panic admin handler is done");
  sub_1000155B8(v5);
  return dispatch_semaphore_signal(qword_100042AB0);
}

xpc_type_t sub_10001336C(xpc_object_t message, int a2)
{
  if (qword_100042AF8 != -1)
  {
    dispatch_once(&qword_100042AF8, &stru_1000315F0);
  }

  v4 = qword_100042AF0;
  do
  {
    v5 = xpc_connection_send_message_with_reply_sync(v4, message);
    v6 = v5;
    if (v5 != &_xpc_error_connection_interrupted)
    {
      break;
    }

    if (__OFSUB__(a2, 1))
    {
      __break(0x5515u);
    }
  }

  while (a2-- > 0);
  result = xpc_get_type(v5);
  if (result == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(v6, "status");
LABEL_14:
    xpc_release(v6);
    return int64;
  }

  if (result == &_xpc_type_error)
  {
    memset(__b, 170, sizeof(__b));
    string = xpc_dictionary_get_string(v6, _xpc_error_key_description);
    snprintf(__b, 0x400uLL, "Error connecting to logd_helper: %s", string);
    sub_1000155B8(__b);
    if (v6 == &_xpc_error_connection_interrupted)
    {
      int64 = 35;
    }

    else
    {
      int64 = 22;
    }

    goto LABEL_14;
  }

  qword_1000360E8 = "BUG IN LIBTRACE: Unexpected xpc object";
  qword_100036118 = result;
  __break(1u);
  return result;
}

void sub_100013504(id a1)
{
  qword_100042AF0 = xpc_connection_create_mach_service("com.apple.logd_helper", 0, 2uLL);
  xpc_connection_set_event_handler(qword_100042AF0, &stru_100031630);
  v1 = qword_100042AF0;

  xpc_connection_activate(v1);
}

uint64_t start()
{
  qword_100042AC0 = os_transaction_create();
  os_trace_set_mode();
  byte_100044C28 = (MEMORY[0xFFFFFC104] & 0x4000000) != 0;
  _os_trace_set_diagnostic_flags();
  if (bootstrap_check_in2())
  {
    memset(&__b[2] + 4, 170, 0x3DCuLL);
    LODWORD(__b[2]) = 6580079;
    v0 = "failed to checkin to com.apple.logd";
LABEL_55:
    v21 = *(v0 + 1);
    __b[0] = *v0;
    __b[1] = v21;
    sub_1000155B8(__b);
    return 1;
  }

  if (&_wd_endpoint_register)
  {
    wd_endpoint_register();
    wd_endpoint_set_alive_func();
    wd_endpoint_activate();
  }

  if (byte_100044C28 == 1)
  {
LABEL_65:
    sub_100013D08(-1431655766);
  }

  if ((os_variant_has_factory_content() & 1) == 0)
  {
    goto LABEL_11;
  }

  qword_100035DA8 = 1048576000;
  if (&qword_100035DB0 < &qword_100035DA8 || (qword_100035DB0 = 629145600, &qword_100035DB8 < &qword_100035DA8) || (qword_100035DB8 = 419430400, &qword_100035DC0 < &qword_100035DA8))
  {
    __break(0x5513u);
    goto LABEL_65;
  }

  qword_100035DC0 = 209715200;
LABEL_11:
  is_recovery = os_variant_is_recovery();
  memset(v33, 0, 255);
  v31 = 255;
  if (sysctlbyname("hw.osenvironment", v33, &v31, 0, 0))
  {
    v2 = *__error();
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Could not fetch os osenvironment sysctl: %d", v2);
    sub_1000155B8(__b);
    v3 = 0;
  }

  else
  {
    v3 = v33[0] == 0x722D656369766564 && *(v33 + 7) == 0x797265766F636572;
  }

  if ((is_recovery | v3))
  {
    qword_100035F88 = 20971520;
    qword_100035F58 = 0x200000;
    qword_100035EE8 = 10485760;
    qword_100035EB8 = 0x200000;
    qword_100035DA8 = 20971520;
    qword_100035D78 = 0x200000;
    qword_100035E48 = 20971520;
    qword_100035E18 = 0x200000;
  }

  sub_10001EE38(0);
  sub_10001EE38(1u);
  sub_10001EE38(2u);
  sub_10001D968();
  qword_100035F38 = qword_100044C60;
  qword_100035E98 = qword_100044C60;
  qword_100035D58 = qword_100044C60;
  qword_100035DF8 = qword_100044C60;
  dispatch_sync_f(qword_100044C60, 0, sub_10001E824);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v5 = qword_100044CD8;
  v6 = _os_trace_zalloc_typed();
  v7 = openat(-2, v5, 0);
  *v6 = v7;
  if (v7 == -1)
  {
    goto LABEL_39;
  }

  *(v6 + 16) = 0x20000;
  v6[34] = 9;
  *(v6 + 18) = 3888000;
  v33[0] = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_100025C24(v7, v33, &v31, 1);
  if (v8 < 0)
  {
    goto LABEL_52;
  }

  if (v8)
  {
    v9 = v33[0];
    v10 = v31 + 1;
    *(v6 + 12) = v33[0];
    *(v6 + 13) = v10;
    v11 = v6 + 24;
    v12 = v6 + 24;
    if (v9 > 1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v6 + 12) = 2;
    v12 = v6 + 24;
    v11 = v6 + 26;
  }

  *v11 = 2;
  v11 = v12;
LABEL_30:
  sub_10002619C(v6);
  v13 = *(v6 + 13);
  if (v13 == 2 || v13 <= *v11)
  {
    goto LABEL_50;
  }

  memset(__b, 170, 26);
  snprintf(__b, 0x1AuLL, "%016llx.timesync", v31);
  v14 = openat(*v6, __b, 16777225);
  if (v14 < 0)
  {
    goto LABEL_52;
  }

  v15 = v14;
  v16 = lseek(v14, 0, 2);
  if (v16 == -1)
  {
    v25 = *__error();
    goto LABEL_59;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_59:
    _os_assumes_log();
    goto LABEL_36;
  }

  if ((v16 & 7) != 0)
  {
LABEL_36:
    if (close(v15) != -1)
    {
      goto LABEL_52;
    }

    v17 = *__error();
    v18 = *__error();
    if (v17 != 9)
    {
      goto LABEL_40;
    }

    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v18;
    __break(1u);
LABEL_39:
    v19 = *__error();
LABEL_40:
    _os_assumes_log();
    goto LABEL_52;
  }

  v6[28] = v15;
  *(v6 + 15) = v16;
  if (v16 >= *(v6 + 16))
  {
    if (close(v15) == -1)
    {
      v26 = *__error();
      result = *__error();
      if (v26 == 9)
      {
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = result;
        __break(1u);
        goto LABEL_69;
      }

      _os_assumes_log();
    }

    sub_10002619C(v6);
LABEL_50:
    if ((sub_10002645C(v6) & 0x80000000) == 0)
    {
LABEL_51:
      if ((sub_1000266D8(v6, 0) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }
    }

LABEL_52:
    if ((*v6 & 0x80000000) != 0 || close(*v6) != -1)
    {
      goto LABEL_54;
    }

    v23 = *__error();
    v24 = *__error();
    if (v23 != 9)
    {
      _os_assumes_log();
LABEL_54:
      free(v6);
      qword_100042A70 = 0;
      memset(&__b[2] + 1, 170, 0x3DFuLL);
      LOBYTE(__b[2]) = 0;
      v0 = "failed to create timesync writer";
      goto LABEL_55;
    }

    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v24;
    __break(1u);
LABEL_67:
    qword_100042A70 = v6;
    sub_100013D7C();
    memset(__b, 170, sizeof(__b));
    v28 = sub_10002754C();
    snprintf(__b, 0x400uLL, "libtrace_kic=%d", v28);
    sub_1000155B8(__b);
    sub_100018C1C();
  }

  if (!v16)
  {
    goto LABEL_51;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v20 = sub_100026518(*v6, __b, &v30, &v29);
  if (v20 < 0)
  {
    goto LABEL_52;
  }

  if (v20)
  {
    goto LABEL_51;
  }

  if (close(v6[28]) != -1)
  {
    goto LABEL_46;
  }

  v27 = *__error();
  result = *__error();
  if (v27 != 9)
  {
    _os_assumes_log();
LABEL_46:
    sub_10002619C(v6);
    if ((sub_10002645C(v6) & 0x80000000) == 0)
    {
      sub_1000266B0((v29 << 16) | ((v30 & 0xFFFFF) << 32) | WORD1(v29) | 0xBAD0000000000000);
    }

    goto LABEL_52;
  }

LABEL_69:
  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

void sub_100013D08(int a1)
{
  sub_10001D9F0();
  memset(&v2[22], 170, 0x3EAuLL);
  strcpy(v2, "Starting in sick mode");
  sub_1000155B8(v2);
  sub_100010EDC(a1, &stru_1000316B0);
  sub_100011204();
  sub_100013EEC();
  sub_100016F54();
  sub_100018E6C();
  dispatch_main();
}

void sub_100013D7C()
{
  if (setiopolicy_np(5, 0, 1) == -1)
  {
    memset(&v0[44], 170, 0x3D4uLL);
    strcpy(v0, "Failed to set IOPOL_VFS_TRIGGER_RESOLVE_OFF");
    sub_1000155B8(v0);
  }
}

void sub_100013E18()
{
  *&v4[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  in = v0;
  *v4 = v0;
  v1 = 37;
  if (!sysctlbyname("kern.uuid", &in, &v1, 0, 0))
  {
    uuid_parse(&in, byte_100042B01);
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "_read_kernel_uuid calling _logd_uuiddb_harvest_kernel for %s", &in);
    sub_1000155B8(__b);
    sub_1000186AC();
  }
}

uint64_t sub_100013EEC()
{
  if (&_wd_endpoint_register)
  {
    sub_100011584(2);
    sub_100011584(3);
    wd_endpoint_add_queue();
    result = wd_endpoint_add_queue();
    byte_100042B00 = 1;
  }

  return result;
}

void sub_100013F4C()
{
  dword_100042B24 = IORegisterForSystemPower(0, &qword_100042B18, sub_10000DE84, &dword_100042B20);
  v0 = qword_100042B18;
  if (dword_100042B24)
  {
    v1 = qword_100042B18 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    global_queue = dispatch_get_global_queue(25, 0);

    IONotificationPortSetDispatchQueue(v0, global_queue);
  }
}

void sub_100013FDC()
{
  name = 0;
  if (qword_100042B38 != -1)
  {
    dispatch_once(&qword_100042B38, &stru_100031760);
  }

  v0 = dword_100042B34;
  if (!dword_100042B34)
  {
    memset(&__b[2] + 13, 170, 0x3D3uLL);
    strcpy(__b, "Failed to get host port for calendar changes");
    goto LABEL_7;
  }

  v1 = mach_port_allocate(mach_task_self_, 1u, &name);
  if (v1)
  {
    v2 = v1;
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Failed to allocate mach port for calendar changes: error %d", v2);
LABEL_7:
    sub_1000155B8(__b);
    return;
  }

  v3 = name;
  if (qword_100042AC8 != -1)
  {
    v4 = name;
    dispatch_once(&qword_100042AC8, &stru_1000314A0);
    v3 = v4;
  }

  qword_100042B28 = dispatch_source_create(&_dispatch_source_type_mach_recv, v3, 0, qword_100042AD0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100014B68;
  handler[3] = &unk_100031720;
  v6 = name;
  v7 = v0;
  dispatch_source_set_event_handler(qword_100042B28, handler);
  dispatch_activate(qword_100042B28);
  sub_100014C20(v0, name);
}

void sub_1000141B0()
{
  if (qword_100042AC8 != -1)
  {
    dispatch_once(&qword_100042AC8, &stru_1000314A0);
  }

  out_token = -1431655766;
  if (notify_register_dispatch("com.apple.system.timezone", &out_token, qword_100042AD0, &stru_100031780))
  {
    memset(&v1[40], 170, 0x3D8uLL);
    strcpy(v1, "Failed to register for timezone changes");
    sub_1000155B8(v1);
  }
}

void sub_100014288()
{
  if (qword_100042AC8 != -1)
  {
    dispatch_once(&qword_100042AC8, &stru_1000314A0);
  }

  v0 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100042AD0);
  qword_100042B48 = v0;
  v1 = dispatch_walltime(0, 0);
  dispatch_source_set_timer(v0, v1, 0x34630B8A000uLL, 0xDF8475800uLL);
  dispatch_source_set_event_handler(qword_100042B48, &stru_1000317C0);
  v2 = qword_100042B48;

  dispatch_activate(v2);
}

void sub_100014348()
{
  signal(15, 1);
  qword_100042B50 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  dispatch_source_set_cancel_handler_f(qword_100042B50, sub_100014A18);
  dispatch_source_set_event_handler_f(qword_100042B50, sub_1000143D0);
  v0 = qword_100042B50;

  dispatch_activate(v0);
}

void sub_1000143D0()
{
  dispatch_source_cancel(qword_100042B50);
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  __filename = 0xAAAAAAAAAAAAAAAALL;
  asprintf(&__filename, "%s/shutdown.log", qword_100044CD0);
  if (__filename)
  {
    fopen(__filename, "w+");
    free(__filename);
  }

  if (qword_100042AC8 != -1)
  {
    dispatch_once(&qword_100042AC8, &stru_1000314A0);
  }

  dispatch_sync(qword_100042AD0, &stru_100031800);
  sub_1000268E4(qword_100042A70, 0);
  v0 = qword_1000344D8;
  v1 = 5;
  do
  {
    sub_100010B14(v0);
    v0 += 156;
    --v1;
  }

  while (v1);
  sub_1000185C4();
}

FILE *sub_1000148E0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      fprintf(result, "After %.02fs, these clients are still here:\n", (*(a1 + 48) - *(a1 + 56)) / 1000000000.0);
    }

    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v5;
    *&out[16] = v5;
    v7 = -1431655766;
    v6 = *(a2 + 96);
    if (*(a2 + 104))
    {
      v7 = *(*(v6 + 16) + 64);
    }

    else
    {
      sub_1000025A8(v6, &v7);
    }

    uuid_unparse_upper((a2 + 64), out);
    fprintf(*(a1 + 40), "\t\tremaining client pid: %d (%s/%s)\n", v7, (a2 + 182), out);
    result = (*(a1 + 40) != 0);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void sub_100014A24(id a1)
{
  if ((byte_100042B30 & 1) == 0 && (sub_1000268E4(qword_100042A70, 0) & 0x80000000) != 0)
  {
    memset(&v1[40], 170, 0x3D8uLL);
    strcpy(v1, "Failed to write periodic timesync point");
    sub_1000155B8(v1);
  }
}

void sub_100014AC8(id a1, int a2)
{
  if ((byte_100042B30 & 1) == 0)
  {
    memset(&v2[41], 170, 0x3D7uLL);
    strcpy(v2, "Time zone changed, updating file headers");
    sub_1000155B8(v2);
    sub_1000268E4(qword_100042A70, 1);
  }
}

void sub_100014B68(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  v2 = *(a1 + 32);
  DWORD1(v4) = 24;
  HIDWORD(v4) = v2;
  v3 = mach_msg_receive(&v4);
  if ((byte_100042B30 & 1) == 0 && (DWORD1(v5) & 0xFFFFFFFE) == 0x3B6)
  {
    sub_1000268E4(qword_100042A70, 1);
    sub_100014C20(*(a1 + 36), *(a1 + 32));
  }

  if (!v3)
  {
    mach_msg_destroy(&v4);
  }
}

void sub_100014C20(host_t a1, mach_port_t notify_port)
{
  v4 = host_request_notification(a1, (byte_100042B40 & 1) == 0, notify_port);
  if (v4 == 4 && (byte_100042B40 & 1) == 0)
  {
    byte_100042B40 = 1;
    v4 = host_request_notification(a1, 0, notify_port);
  }

  if (v4)
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Failed to register for calendar changes: error %d", v4);
    sub_1000155B8(__b);
  }
}

void sub_100014D04(id a1)
{
  v1 = mach_host_self();
  port = -1431655766;
  special_port = host_get_special_port(v1, -1, 1, &port);
  v3 = special_port;
  if (special_port == 4)
  {
LABEL_4:
    dword_100042B34 = v1;
    if (v1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (!special_port)
  {
    mach_port_deallocate(mach_task_self_, v1);
    v1 = port;
    goto LABEL_4;
  }

  if (!dword_100042B34)
  {
LABEL_5:
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Failed to get mach host port: error %d", v3);
    sub_1000155B8(__b);
  }
}

uint64_t sub_100014DF0(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *(result + 40);
    v1 = *(result + 32);
    return dyld_shared_cache_for_each_file();
  }

  return result;
}

void sub_100014EA8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (__CFADD__(a2, a3))
  {
LABEL_22:
    __break(0x5513u);
  }

  if (a3 >= 9)
  {
    v3 = a2;
    v5 = &a2[a3];
    v6 = a2 + 8;
    do
    {
      v7 = *v3;
      if (!*v3)
      {
        return;
      }

      v8 = *(v3 + 1);
      if (v5 - v6 < v8)
      {
        return;
      }

      switch(v7)
      {
        case 3:
          goto LABEL_10;
        case 2:
          if (v8 >= 4 && v8 - 4 >= v3[10] + v3[11])
          {
            v12 = sub_10000A830(v6);
            if (v12)
            {
              sub_10000A890(a1, v12);
            }
          }

          break;
        case 1:
LABEL_10:
          if (v8 >= 0x20 && v8 - 32 != strnlen(v3 + 40, v8 - 32))
          {
            if (v7 == 1)
            {
              *&v9 = 0xAAAAAAAAAAAAAAAALL;
              *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v14[0] = v9;
              v14[1] = v9;
              uuid_copy(v14 + 14, v6);
              v10 = *(v3 + 3);
              v11 = *(v3 + 4);
              DWORD2(v14[0]) = v10;
              WORD6(v14[0]) = WORD2(v10);
              *&v14[0] = v11;
              sub_10000AB80(a1, v14);
            }

            else
            {
              sub_100009B88(a1, v6);
            }

            sub_100004300(v6, v3 + 40, 0, 1);
          }

          break;
      }

      v13 = (*(v3 + 1) + 7) & 0xFFFFFFF8;
      if (__CFADD__(v6, v13))
      {
        goto LABEL_22;
      }

      v3 = &v6[v13];
      v6 += v13 + 8;
    }

    while (v6 < v5);
  }
}

void sub_100015048(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, @"OSBundleExecLoadAddress");
  v6 = CFDictionaryGetValue(theDict, @"OSBundleTextUUID");
  v7 = CFDictionaryGetValue(theDict, @"OSBundleExecLoadSize");
  if (Value)
  {
    if (v6)
    {
      v8 = v7;
      if (v7)
      {
        valuePtr = 0xAAAAAAAAAAAAAAAALL;
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr))
        {
          *&v9 = 0xAAAAAAAAAAAAAAAALL;
          *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v12[0] = v9;
          v12[1] = v9;
          DWORD2(v12[0]) = valuePtr;
          WORD6(v12[0]) = WORD2(valuePtr);
          BytePtr = CFDataGetBytePtr(v6);
          uuid_copy((v12 | 0xE), BytePtr);
          CFNumberGetValue(v8, kCFNumberSInt64Type, v12);
          sub_10000AB80(a3, v12);
        }
      }
    }
  }
}

void sub_100015158(void *a1, char *__s1)
{
  if (strstr(__s1, "ExclaveKit"))
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v3;
    *&out[16] = v3;
    v4 = a1[5];
    v5 = a1[6];
    dyld_shared_cache_copy_uuid();
    uuid_unparse((a1[6] + 80), out);
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Copied ExclaveKit shared cache: %s", out);
    sub_1000155B8(__b);
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void sub_100015240(double a1)
{
  sub_10002933C(a1);
  v5 = [objc_alloc(*(v1 + 3312)) initWithName:@"Exclaves" version:@"Security Policy" identifier:1721908];
  v3 = sub_1000152D4(@"Fallback Indicator triggered", @"Fallback Indicator was triggered due to an unexpected policy violation. Please describe what you were doing at the time. List any behaviors that may have used the camera or the microphone taking a photo, invoking Siri, taking a phone call, turning on/off display, phone in pocket, etc ...", v2);;
  sub_1000153A8(v3, v4);
}

id sub_1000152D4(void *a1, void *a2, double a3)
{
  sub_100029360(a3);
  v6 = *(v5 + 3320);
  v8 = v7;
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(v6);
  [v11 setTitle:v10];

  [v11 setProblemDescription:v9];
  [v11 setClassification:1];
  [v11 setDiagnosticExtensionIDs:0];
  [v11 setAttachments:0];
  [v11 setDeviceIDs:0];
  [v11 setComponent:v8];

  [v11 setDeleteOnAttach:1];

  return v11;
}

void sub_1000153A8(void *a1, double a2)
{
  sub_100029384(a2);
  v4 = *(v3 + 3328);
  v6 = v5;
  v7 = a1;
  v8 = [v4 shared];
  [v8 createDraft:v7 forProcessNamed:@"Exclaves" withDisplayReason:v6 completionHandler:&stru_100031878];
}

void sub_100015438(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && [(NSError *)v2 code]!= 11)
  {
    memset(__b, 170, sizeof(__b));
    v4 = [(NSError *)v3 localizedDescription];
    snprintf(__b, 0x400uLL, "Unable to Create TTR draft: %s (%ld)", [v4 UTF8String], -[NSError code](v3, "code"));

    sub_1000155B8(__b);
  }
}

void sub_100015508(double a1)
{
  sub_10002933C(a1);
  v5 = [objc_alloc(*(v1 + 3312)) initWithName:@"Exclaves" version:@"Security Policy" identifier:1721908];
  v3 = sub_1000152D4(@"Secure Indicator Violation Detected", @"A secure indicator violation has been detected by the system. Please describe what you were doing at the time. List any behaviors that may have used the camera or the microphone taking a photo, invoking Siri, taking a phone call...", v2);;
  sub_1000153A8(v3, v4);
}

void sub_1000155B8(uint64_t a1)
{
  if (qword_100042B58 != -1)
  {
    dispatch_once_f(&qword_100042B58, 0, sub_100015994);
  }

  if (!dispatch_get_specific(off_1000344C0))
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 0x40000000;
    v2[2] = sub_1000156A8;
    v2[3] = &unk_100031898;
    v2[4] = a1;
    dispatch_sync(qword_100042B60, v2);
  }
}

uint64_t sub_1000156A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(qword_100042B60);
  memset(__b, 170, sizeof(__b));
  memset(v9, 170, 18);
  v7.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.tm_mon = v2;
  *&v7.tm_isdst = v2;
  *&v7.tm_sec = v2;
  v6 = time(0);
  localtime_r(&v6, &v7);
  strftime(v8, 0x1AuLL, "%F %T%z", &v7);
  v3 = getprogname();
  v4 = getpid();
  result = snprintf(__b, 0x400uLL, "%s %s[%d]: %s\n", v8, v3, v4, v1);
  if (result >= 1)
  {
    if (result >= 0x400)
    {
      if (__b >= 0xFFFFFFFFFFFFFC02)
      {
        __break(0x5513u);
        return result;
      }

      __b[1022] = 10;
    }

    dispatch_assert_queue_V2(qword_100042B60);
    sub_1000157F8();
    result = dword_1000344C8;
    if ((dword_1000344C8 & 0x80000000) == 0)
    {
      _os_trace_write();
      return sub_100015854();
    }
  }

  return result;
}

void sub_1000157F8()
{
  dispatch_assert_queue_V2(qword_100042B60);
  if (dword_1000344C8 < 0)
  {
    sub_10001592C();
    if ((dword_1000344C8 & 0x80000000) == 0)
    {

      sub_100015854();
    }
  }
}

uint64_t sub_100015854()
{
  dispatch_assert_queue_V2(qword_100042B60);
  v0 = lseek(dword_1000344C8, 0, 2);
  result = fsync(dword_1000344C8);
  if (v0 >= 0x100000)
  {
    if (close(dword_1000344C8) == -1)
    {
      v3 = *__error();
      result = *__error();
      if (v3 == 9)
      {
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    rename(qword_100042B70, qword_100042B78, v2);

    return sub_10001592C();
  }

  return result;
}

uint64_t sub_10001592C()
{
  result = open(qword_100042B70, 778, 420);
  dword_1000344C8 = result;
  if ((result & 0x80000000) == 0)
  {
    v1 = dword_10003609C;
    v2 = unk_1000360A0;

    return fchown(result, v1, v2);
  }

  return result;
}

int *sub_100015994()
{
  asprintf(&qword_100042B68, "com.apple.%s.log", "logd");
  if (!qword_100042B68)
  {
    v1 = *__error();
    qword_1000360E8 = "BUG IN LIBTRACE: failed to create queue target from subsystem";
    qword_100036118 = v1;
    __break(1u);
LABEL_10:
    result = __error();
    v2 = *result;
    qword_1000360E8 = "BUG IN LIBTRACE: failed to create log file path";
    qword_100036118 = v2;
    __break(1u);
    return result;
  }

  qword_100042B60 = dispatch_queue_create_with_target_V2(qword_100042B68, 0, 0);
  dispatch_queue_set_specific(qword_100042B60, off_1000344C0, qword_100042B60, 0);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  asprintf(&qword_100042B70, "%s/%s.0.log", qword_100044CD0, "logd");
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  result = asprintf(&qword_100042B78, "%s/%s.1.log", qword_100044CD0, "logd");
  if (!qword_100042B70 || !qword_100042B78)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100015B0C()
{
  if (qword_100042B58 != -1)
  {
    dispatch_once_f(&qword_100042B58, 0, sub_100015994);
  }

  v1 = qword_100042B60;

  dispatch_sync(v1, &stru_1000318D8);
}

void sub_100015B78(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100015C54;
  v5[3] = &unk_100031938;
  v5[4] = a1;
  dispatch_sync(qword_100042B80, v5);
  sub_10000B3A0(a1);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = &unk_100042BA0;
  if (v2)
  {
    v4 = (v2 + 40);
  }

  *v4 = v3;
  *v3 = v2;
  os_release(*(a1 + 96));
}

uint64_t sub_100015C5C(uint64_t a1)
{
  dispatch_assert_queue_V2(qword_100042B80);
  v2 = (a1 + 96);
  v3 = 32;
  v4 = 272;
  do
  {
    v5 = *v2;
    if (__CFADD__(*v2 + 32, v3 - 32) || __CFADD__(v5 + 272, v4 - 272))
    {
      __break(0x5513u);
    }

    v6 = *(v5 + v4);
    result = RTLogRingBufferIsDataAvailable();
    if (result)
    {
      bzero(&unk_100042BA8, 0x1000uLL);
      result = RTLogRingBufferIterateFrom();
    }

    v3 += 40;
    v4 += 4;
  }

  while (v3 != 272);
  return result;
}

uint64_t sub_100015D78(unsigned __int16 *a1, uint64_t *a2)
{
  v4 = sub_100015F98();
  if (v4)
  {
    v5 = (a1 + 8);
    v6 = *a1;
    v7 = (a1 + 8);
    if (v6 <= 0x1000)
    {
      if (!__CFADD__(a1, v6))
      {
        v7 = a1 + v6;
        goto LABEL_5;
      }

LABEL_41:
      __break(0x5513u);
    }

LABEL_5:
    while ((v5 + 3) < v7)
    {
      v8 = v5[2];
      v9 = HIWORD(v8);
      if (!HIWORD(v8) || v9 > (v7 - (v5 + 3)))
      {
        break;
      }

      v11 = v9 + 24;
      v12 = (HIWORD(v8) & 0xFFF8) + 32;
      if ((v8 & 0x7000000000000) == 0)
      {
        v12 = v11;
      }

      if (__CFADD__(v5, v12))
      {
        goto LABEL_41;
      }

      v13 = *v5;
      v5 = (v5 + v12);
      if (v13)
      {
        qword_100044BA8 = (v8 & 0xFFFFFFFFFFFFLL) + *(a1 + 1);
        break;
      }
    }

    v14 = *a2;
    v15 = *(a1 + 6);
    if (v15 < 3 || v15 == 4)
    {
      v17 = *(a1 + 7);
      if (*(a1 + 6) > 1u)
      {
        if (v15 == 2)
        {
          v18 = 4;
        }

        else if (v15 == 4)
        {
          v18 = 2;
          if ((*(a1 + 7) & 4) != 0)
          {
            v18 = 3;
          }
        }

        else
        {
          v18 = 5;
        }
      }

      else if (*(a1 + 6))
      {
        v18 = 3;
        if ((*(a1 + 7) & 4) == 0)
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 3;
        if ((*(a1 + 7) & 4) == 0)
        {
          v18 = 0;
        }
      }

      if (1248 * v18 > ~qword_1000344D8)
      {
        goto LABEL_41;
      }

      v20 = *a1 | (a1[2] << 32);
      v21 = qword_1000344D8[156 * v18];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 0x40000000;
      v23[2] = sub_1000160B8;
      v23[3] = &unk_100031958;
      v23[4] = v14;
      v23[5] = a1;
      v24 = v20;
      v25 = WORD2(v20);
      v26 = v15;
      v27 = v17;
      dispatch_sync(v21, v23);
    }

    else if (v15 == 3)
    {
      v19 = *(a2 + 8);
      sub_100008D2C();
    }
  }

  return v4;
}

uint64_t sub_100015F98()
{
  v0 = __chkstk_darwin();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = &__dst[8];
  v2 = &__dst[8];
  if (__dst[0] <= 0x1000uLL)
  {
    if (__CFADD__(__dst, __dst[0]))
    {
      goto LABEL_21;
    }

    v2 = __dst + __dst[0];
  }

  v3 = 16;
  while (v1 + 3 < v2)
  {
    if (v3 - 4073 < 0xFFFFFFFFFFFFF007)
    {
      goto LABEL_20;
    }

    v4 = v1[2];
    v5 = HIWORD(v4);
    if (!HIWORD(v4) || v5 > v2 - (v1 + 3))
    {
      break;
    }

    v7 = v5 + 24;
    if ((v4 & 0x7000000000000) != 0)
    {
      v7 = (HIWORD(v4) & 0xFFF8) + 32;
    }

    if (__CFADD__(v1, v7))
    {
      goto LABEL_21;
    }

    if (v3 > 0xFF8)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(0x5513u);
    }

    v8 = *v1;
    v1 = (v1 + v7);
    v3 += v7;
    if (v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000160C8(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3 && sub_100015F98())
  {
    bzero(&dword_100043BA8, 0x1000uLL);
    v6 = qword_100044BA8;
    if (!qword_100044BA8)
    {
      v6 = *(a1 + 8);
    }

    v15 = *(a1 + 6);
    v14 = *(a1 + 7) & 6;
    dword_100043BA8 = 16;
    word_100043BAC = 1;
    byte_100043BAE = v15;
    byte_100043BAF = v14;
    v7 = mach_continuous_time();
    v8 = *(a1 + 8);
    qword_100043BB0 = v8;
    if (dword_100043BA8 <= 0x1000uLL)
    {
      if (dword_100043BA8 <= ~&dword_100043BA8)
      {
        v9 = (&dword_100043BA8 + dword_100043BA8);
        atomic_store((*(a1 + 6) << 32) | 7, v9);
        v9[2] = (v7 - v8) | 0x18000000000000;
        v9[3] = v6;
        v9[4] = v7;
        v9[5] = a3 | 0xAAAAAAAA00000000;
        LOWORD(dword_100043BA8) = dword_100043BA8 + 48;
        v10 = *a2;
        if (byte_100043BAE >= 3u && byte_100043BAE != 4)
        {
          if (byte_100043BAE == 3)
          {
            v11 = *(a2 + 8);
            sub_100008D2C();
          }

          return;
        }

        if (byte_100043BAE > 1u)
        {
          if (byte_100043BAE == 2)
          {
            v12 = 4;
          }

          else if (byte_100043BAE == 4)
          {
            v12 = 2;
            if ((byte_100043BAF & 4) != 0)
            {
              v12 = 3;
            }
          }

          else
          {
            v12 = 5;
          }
        }

        else if (byte_100043BAE)
        {
          v12 = 3;
          if ((byte_100043BAF & 4) == 0)
          {
            v12 = 1;
          }
        }

        else
        {
          v12 = 3;
          if ((byte_100043BAF & 4) == 0)
          {
            v12 = 0;
          }
        }

        if (1248 * v12 <= ~qword_1000344D8)
        {
          v13 = qword_1000344D8[156 * v12];
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_1000160B8;
          block[3] = &unk_100031958;
          block[4] = v10;
          block[5] = &dword_100043BA8;
          v17 = dword_100043BA8;
          v18 = word_100043BAC;
          v19 = byte_100043BAE;
          v20 = byte_100043BAF;
          dispatch_sync(v13, block);
          return;
        }
      }

      __break(0x5513u);
    }

    __break(0x5512u);
  }
}

void sub_100016364()
{
  memset(&v2[27], 170, 0x3E5uLL);
  strcpy(v2, "starting realtime listener");
  sub_1000155B8(v2);
  if (qword_100042B80)
  {
    __assert_rtn("logd_realtime_start_listener", "logd_realtime.c", 566, "_client_queue == NULL");
  }

  qword_100042B80 = dispatch_queue_create_with_target_V2("com.apple.logd.realtime.queue", 0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.logd.realtime", qword_100042B80, 1uLL);
  if (!mach_service)
  {
    _os_crash();
    __break(1u);
  }

  v1 = mach_service;
  xpc_connection_set_event_handler(mach_service, &stru_100031918);
  xpc_connection_activate(v1);
  memset(&v2[27], 170, 0x3E5uLL);
  strcpy(v2, "realtime listener: started");
  sub_1000155B8(v2);
  qword_100042B88 = v1;
}

void sub_1000164A8(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_error)
  {
    if (a2 == &_xpc_error_connection_invalid)
    {
      memset(&handler[1] + 13, 170, 0x3E3uLL);
      strcpy(handler, "realtime: connection invalid");
    }

    else if (a2 == &_xpc_error_connection_interrupted)
    {
      memset(&handler[2] + 1, 170, 0x3DFuLL);
      strcpy(handler, "realtime: connection interrupted");
    }

    else
    {
      memset(handler, 170, sizeof(handler));
      v4 = xpc_copy_description(a2);
      snprintf(handler, 0x400uLL, "realtime: unknown error '%s'", v4);
    }

    sub_1000155B8(handler);
  }

  else if (type == &_xpc_type_connection)
  {
    *&handler[0] = _NSConcreteStackBlock;
    *(&handler[0] + 1) = 0x40000000;
    *&handler[1] = sub_100016638;
    *(&handler[1] + 1) = &unk_100031978;
    *&handler[2] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_activate(a2);
  }
}

void sub_100016638(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  pid = xpc_connection_get_pid(*(a1 + 32));
  if (type != &_xpc_type_dictionary)
  {
    if (type != &_xpc_type_error)
    {
      return;
    }

    if (object == &_xpc_error_connection_invalid)
    {
      v8 = pid;
      *__str = 0;
      __b[0] = _NSConcreteStackBlock;
      __b[1] = 0x40000000;
      __b[2] = sub_100016E34;
      __b[3] = &unk_100031A18;
      LODWORD(__b[5]) = pid;
      __b[4] = __str;
      v9 = qword_100042B98;
      if (qword_100042B98)
      {
        do
        {
          if (((__b[2])(__b, v9) & 1) == 0)
          {
            break;
          }

          v9 = *(v9 + 32);
        }

        while (v9);
        if (*__str)
        {
          sub_100015B78(*__str);
          return;
        }
      }

      memset(__b, 170, 0x400uLL);
      snprintf(__b, 0x400uLL, "Failed to find disconnected client with pid %d in the list of realtime clients", v8);
    }

    else
    {
      memset(&__b[3], 170, 0x3E8uLL);
      strcpy(__b, "realtime: unknown error");
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_int64(object, "rt_message_type"))
  {
    return;
  }

  address = 0;
  v6 = xpc_dictionary_copy_mach_send();
  uint64 = xpc_dictionary_get_uint64(object, "rt_shmem_size");
  if (vcvtd_n_f64_u64(uint64, 0xAuLL) * 0.0009765625 > 2.0)
  {
    memset(&__b[3] + 6, 170, 0x3E2uLL);
    strcpy(__b, "Shared memory size is invalid");
LABEL_17:
    sub_1000155B8(__b);
    return;
  }

  if (v6)
  {
    v10 = uint64;
    if (mach_vm_map(mach_task_self_, &address, uint64, 0, 1308622849, v6, 0, 0, 3, 3, 2u))
    {
      memset(&__b[5] + 5, 170, 0x3D3uLL);
      strcpy(__b, "cannot map shared memory for realtime client");
      goto LABEL_17;
    }

    v11 = address;
    memset(__b, 170, 0x400uLL);
    if (RTLogBufferCheckStatus())
    {
      memset(&__str[36], 170, 0x3DCuLL);
      strcpy(__str, "realtime client buffer is not valid");
    }

    else
    {
      if (*(v11 + 48) <= v10)
      {
        v13 = _os_object_alloc();
        *(v13 + 312) = v10;
        *(v13 + 320) = v11;
        v41 = v13;
        Resource = RTLogBufferGetResource();
        if (Resource)
        {
          v15 = Resource;
          v16 = *(Resource + 64);
          if (proc_pidpath(v16, __b, 0x400u) <= 0)
          {
            strcpy(__b, "<unknown>");
          }

          v17 = RTLogBufferGetResource();
          if (v17)
          {
            v39 = v17;
            v18 = strlen(__b);
            v19 = _os_trace_calloc_typed();
            *(v19 + 176) = 0;
            *(v19 + 48) = 0;
            *(v19 + 56) = v19 + 48;
            memcpy((v19 + 182), __b, v18);
            sub_100008B58(v19);
            *&v20 = 0xAAAAAAAAAAAAAAAALL;
            *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v44[2] = v20;
            v44[3] = v20;
            v44[0] = v20;
            v44[1] = v20;
            buffer[6] = v20;
            buffer[7] = v20;
            buffer[4] = v20;
            buffer[5] = v20;
            buffer[2] = v20;
            buffer[3] = v20;
            buffer[0] = v20;
            buffer[1] = v20;
            if (proc_pidinfo(v16, 18, 1uLL, buffer, 192) == 192)
            {
              uuid_copy((v19 + 64), v44 + 8);
              if ((buffer[0] & 0x10) != 0)
              {
                v21 = 6;
              }

              else
              {
                v21 = 4;
              }

              *(v19 + 180) = v21;
              v23 = v41;
              v22 = v39;
            }

            else
            {
              v22 = v39;
              uuid_copy((v19 + 64), (v39 + 8));
              *(v19 + 180) = 6;
              v23 = v41;
            }

            v37 = v16;
            v23[2] = v15;
            v23[3] = v22;
            v36 = v15;
            v23[38] = v19;
            *(v19 + 104) |= 1u;
            if (*(v19 + 182))
            {
              v24 = sub_100004300((v19 + 64), (v19 + 182), 0, 1);
              v23 = v41;
              if (v24)
              {
                if ((*(v19 + 104) & 1) == 0)
                {
                  sub_100009CC4(*(v19 + 96));
                  v23 = v41;
                }
              }
            }

            v38 = v19;
            v25 = 0;
            v26 = 0;
            v40 = ~(v23 + 34);
            v27 = ~(v23 + 4);
            v28 = 68;
            while (1)
            {
              if (!RTLogBufferGetResource())
              {
                memset(&__str[48], 170, 0x3D0uLL);
                strcpy(__str, "Unable to create realtime ring resource is null");
                goto LABEL_65;
              }

              v29 = RTLogBufferGetResource();
              if (!v29)
              {
                memset(&__str[44], 170, 0x3D4uLL);
                strcpy(__str, "Unable to create realtime ring size is null");
                goto LABEL_65;
              }

              if (v25 > v40 || (*(v41 + v28) = *v29 + 1, v26 > v27))
              {
                __break(0x5513u);
                return;
              }

              if ((RTLogRingBufferJoinManaged() & 1) == 0)
              {
                break;
              }

              v26 += 40;
              ++v28;
              v25 += 4;
              if (v28 == 74)
              {
                if (!uuid_is_null((v39 + 24)))
                {
                  uuid_copy((v38 + 80), (v39 + 24));
                  sub_100009D98((v38 + 80));
                }

                *(v38 + 96) = v41;
                memset(__str, 170, sizeof(__str));
                snprintf(__str, 0x400uLL, "realtime client [%s:%d] was added", v36, *(v36 + 64));
                sub_1000155B8(__str);
                v30 = dword_100044CB8;
                if (*(v39 + 40) != 1 || (SHIWORD(dword_100044CB8) >= *(v39 + 6) ? (v31 = *(v39 + 6)) : (v31 = HIWORD(dword_100044CB8)), (_os_trace_is_development_build() & 1) == 0 && v31 == -1))
                {
                  v31 = v30;
                }

                *(v38 + 170) = v31;
                sub_100009C08(v38, v37);
                v32 = qword_100042B98;
                *(v38 + 32) = qword_100042B98;
                v33 = (v32 + 40);
                v34 = v32 == 0;
                qword_100042B98 = v38;
                v35 = &unk_100042BA0;
                if (!v34)
                {
                  v35 = v33;
                }

                *v35 = v38 + 32;
                *(v38 + 40) = &qword_100042B98;
                goto LABEL_25;
              }
            }

            memset(&__str[40], 170, 0x3D8uLL);
            strcpy(__str, "realtime client ring buffer join failed");
LABEL_65:
            sub_1000155B8(__str);
            if (v38)
            {
              sub_100009874(v38);
            }
          }
        }

        free(v41);
        goto LABEL_24;
      }

      memset(&__str[41], 170, 0x3D7uLL);
      strcpy(__str, "realtime client buffer size is not valid");
    }

    sub_1000155B8(__str);
LABEL_24:
    mach_vm_deallocate(mach_task_self_, address, v10);
  }

LABEL_25:
  if ((byte_100044BB0 & 1) == 0)
  {
    byte_100044BB0 = 1;
    qword_100042B90 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100042B80);
    if (qword_100042B90)
    {
      v12 = dispatch_time(0, 0);
      dispatch_source_set_timer(qword_100042B90, v12, 0x1312D00uLL, 0);
      dispatch_source_set_event_handler(qword_100042B90, &stru_1000319B8);
      dispatch_source_set_cancel_handler(qword_100042B90, &stru_1000319F8);
      dispatch_resume(qword_100042B90);
      return;
    }

    memset(&__b[4] + 2, 170, 0x3DEuLL);
    strcpy(__b, "Failed to create dispatch source.");
    goto LABEL_17;
  }
}

BOOL sub_100016E34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (*(a2 + 104))
  {
    v5 = *(*(v4 + 16) + 64);
  }

  else
  {
    v5 = sub_1000025A8(v4, 0);
  }

  v6 = *(a1 + 40);
  if (v5 == v6)
  {
    **(a1 + 32) = a2;
  }

  return v5 != v6;
}

void sub_100016E94(id a1)
{
  memset(&v1[32], 170, 0x3E0uLL);
  strcpy(v1, "Timer canceled. Cleaning up...\n");
  sub_1000155B8(v1);
}

void sub_100016F10(id a1)
{
  dispatch_assert_queue_V2(qword_100042B80);
  for (i = qword_100042B98; i; i = *(i + 32))
  {
    sub_100015C5C(i);
  }
}

void sub_100016F54()
{
  sub_100016FA8();
  mach_service = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100031A58);
  xpc_connection_activate(mach_service);
  qword_100044BB8 = mach_service;
}

void sub_100016FA8()
{
  _os_trace_atm_diagnostic_config();
  is_development_build = _os_trace_is_development_build();
  v1 = (is_development_build & 1) != 0 || (MEMORY[0xFFFFFC104] & 0x8000000) == 0;
  memset(__b, 170, sizeof(__b));
  v2 = _os_trace_prefsdir_path();
  if (snprintf(__b, 0x400uLL, "%s/%s.plist", v2, "com.apple.system.logging") >= 1024)
  {
    _os_assumes_log();
  }

  os_unfair_lock_lock_with_options();
  plist_at = _os_trace_read_plist_at();
  if (!plist_at)
  {
    v6 = is_development_build;
    goto LABEL_22;
  }

  v4 = plist_at;
  v5 = xpc_dictionary_get_BOOL(plist_at, "Enable-Logging");
  v6 = is_development_build | v5;
  is_development_build |= xpc_dictionary_get_BOOL(v4, "Enable-Private-Data");
  value = xpc_dictionary_get_value(v4, "Privacy-Enable-Level");
  string_ptr = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(string_ptr);
      if (!strcasecmp(string_ptr, "Sensitive"))
      {
        LOBYTE(is_development_build) = 1;
        LODWORD(string_ptr) = 1;
      }

      else
      {
        v9 = strcasecmp(string_ptr, "Private");
        LODWORD(string_ptr) = 0;
        LOBYTE(is_development_build) = (v9 == 0) | is_development_build;
      }
    }

    else
    {
      LODWORD(string_ptr) = 0;
    }
  }

  v1 |= v5;
  v10 = xpc_dictionary_get_value(v4, "Privacy-Set-Level");
  if (v10)
  {
    v11 = v10;
    if (xpc_get_type(v10) == &_xpc_type_string)
    {
      v17 = xpc_string_get_string_ptr(v11);
      if (!strcasecmp(v17, "Sensitive"))
      {
        xpc_release(v4);
      }

      else
      {
        if (strcasecmp(v17, "Private"))
        {
          if (!strcasecmp(v17, "Public"))
          {
            xpc_release(v4);
            v16 = 0;
            v12 = 0;
            v13 = MEMORY[0xFFFFFC104] & 0xFCFFFBFF;
            if (v1)
            {
              v14 = 0;
            }

            else
            {
              v14 = 1024;
            }

            goto LABEL_40;
          }

          goto LABEL_16;
        }

        xpc_release(v4);
        if (!string_ptr)
        {
          v15 = 0;
LABEL_36:
          v13 = MEMORY[0xFFFFFC104] & 0xFCFFFBFF;
          if (v1)
          {
            v14 = 0;
          }

          else
          {
            v14 = 1024;
          }

          goto LABEL_39;
        }
      }

      v15 = 0x2000000;
      goto LABEL_36;
    }
  }

LABEL_16:
  xpc_release(v4);
  if (string_ptr)
  {
    v12 = 0;
    v13 = MEMORY[0xFFFFFC104] & 0xFCFFFBFF;
    if (v1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 1024;
    }

    v15 = 0x2000000;
    v16 = 0x2000000;
    if ((is_development_build & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_39:
    v12 = 0x1000000;
    v16 = v15;
    goto LABEL_40;
  }

LABEL_22:
  v15 = 0;
  v16 = 0;
  v12 = 0;
  v13 = MEMORY[0xFFFFFC104] & 0xFCFFFBFF;
  if (v1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1024;
  }

  if (is_development_build)
  {
    goto LABEL_39;
  }

LABEL_40:
  if ((v16 | v12 | v14 | v13) != MEMORY[0xFFFFFC104])
  {
    _os_trace_set_diagnostic_flags();
  }

  if (byte_100044C29 != v6)
  {
    byte_100044C29 = v6;
  }

  os_unfair_lock_unlock(&stru_100044BC0);
}

void sub_1000172F4(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {

    sub_100017368(a2);
  }

  else
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Unexpected xpc object";
    qword_100036118 = type;
    __break(1u);
  }
}

void sub_100017368(_xpc_connection_s *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_10000E0D8;
  v2[3] = &unk_100031A78;
  v2[4] = a1;
  xpc_connection_set_event_handler(a1, v2);
  xpc_connection_activate(a1);
}

void sub_100017414(_xpc_connection_s *a1, void *a2)
{
  memset(__b, 170, sizeof(__b));
  pid = xpc_connection_get_pid(a1);
  if (proc_pidpath(pid, __b, 0x400u) <= 0)
  {
    strcpy(__b, "<unknown>");
  }

  memset(&v33[24], 170, 0x400uLL);
  *&v33[16] = 0xAA00000000000000;
  *v33 = &v33[24];
  *&v33[8] = 0x40000000000;
  sub_10000CCDC(v33, "--- !logd flush-buffers record\n", v5, v6, v7, v8, v9, v10, v30);
  sub_10000CCDC(v33, "client : %s\n", v11, v12, v13, v14, v15, v16, __b);
  sub_10000CCDC(v33, "time   : ", v17, v18, v19, v20, v21, v22, v31);
  v23 = time(0);
  sub_10000CE70(v33, v23);
  sub_10000CCDC(v33, "\n\n", v24, v25, v26, v27, v28, v29, v32);
  sub_10000EE68(v33);
  if (v33[20])
  {
    free(*v33);
  }

  sub_100019270();
  sub_100019088();
  sub_100010E2C(a1, a2, 0);
}

void sub_100017578(_xpc_connection_s *a1, xpc_object_t original)
{
  if (qword_100044D20 != -1)
  {
    dispatch_once(&qword_100044D20, &stru_100032F00);
  }

  if (byte_1000360CC)
  {
    goto LABEL_7;
  }

  uuid = xpc_dictionary_get_uuid(original, "uuid");
  if (uuid)
  {
    v5 = uuid;
    int64 = xpc_dictionary_get_int64(original, "source");
    if (int64)
    {
      sub_100004300(v5, 0, 0, int64);
LABEL_7:
      v7 = 0;
      goto LABEL_9;
    }
  }

  v7 = 22;
LABEL_9:

  sub_100010E2C(a1, original, v7);
}

void sub_10001763C(_xpc_connection_s *a1, void *a2)
{
  dispatch_sync(qword_100044C60, &stru_1000323D8);

  sub_100010E2C(a1, a2, 0);
}

void sub_100017690(_xpc_connection_s *a1, void *a2)
{
  dispatch_sync(qword_100044C60, &stru_1000323B8);
  memset(&v4[15], 170, 0x3F1uLL);
  strcpy(v4, "writes blocked");
  sub_1000155B8(v4);

  sub_100010E2C(a1, a2, 0);
}

void sub_100017754(_xpc_connection_s *a1, void *a2)
{
  if (!xpc_connection_get_euid(a1))
  {
    bzero(buffer, 0x400uLL);
    pid = xpc_connection_get_pid(a1);
    if (pid && !proc_name(pid, buffer, 0x400u))
    {
      strcpy(buffer, "NA");
    }

    if (qword_100042AC8 != -1)
    {
      dispatch_once(&qword_100042AC8, &stru_1000314A0);
    }

    dispatch_sync(qword_100042AD0, &stru_100031318);
    uint64 = xpc_dictionary_get_uint64(a2, "purge");
    v6 = uint64;
    if (uint64)
    {
      sub_10001967C(qword_1000344D8);
      sub_10001967C(&unk_100034E98);
      sub_10001967C(&unk_100035378);
      if ((v6 & 2) == 0)
      {
LABEL_12:
        if ((v6 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }
    }

    else if ((uint64 & 2) == 0)
    {
      goto LABEL_12;
    }

    sub_10001967C(&unk_1000349B8);
    if ((v6 & 4) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_18:
    sub_10001967C(&unk_100035858);
    if ((v6 & 0x10) != 0)
    {
LABEL_14:
      sub_10001AA7C();
    }

LABEL_15:
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "All logs erased (peer:%s) (mask:%llx)", buffer, v6);
    sub_1000155B8(__b);
    sub_100010E2C(a1, a2, 0);
    return;
  }

  sub_100010E2C(a1, a2, 1);
}

void sub_100017934(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "prefs_type");
  if (uint64 - 4 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v5 = uint64;
    memset(__b, 170, sizeof(__b));
    if (~qword_100031B00 < 8 * v5)
    {
      __break(0x5513u);
    }

    else
    {
      v6 = qword_100031B00[v5];
      v7 = _os_trace_prefsdir_path();
      if (snprintf(__b, 0x400uLL, "%s/%s", v7, v6) >= 1024)
      {
        _os_assumes_log();
      }

      dispatch_suspend(qword_100044C70);
      removefile(__b, 0, 3u);
      if (v5 == 1)
      {
        sub_100016FA8();
      }

      sub_10001C050();
      sub_100010E2C(a1, xdict, 0);
    }
  }

  else
  {

    sub_100010E2C(a1, xdict, 22);
  }
}

void sub_100017AA0(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "prefs_type");
  if (uint64 - 4 > 0xFFFFFFFFFFFFFFFCLL && (v5 = uint64, (string = xpc_dictionary_get_string(xdict, "prefs_name")) != 0) && (v7 = string, !strchr(string, 47)) && strlen(v7) < 0x100)
  {
    memset(__b, 170, sizeof(__b));
    if (~qword_100031B00 < 8 * v5)
    {
      __break(0x5513u);
      return;
    }

    v11 = qword_100031B00[v5];
    v12 = _os_trace_prefsdir_path();
    if (snprintf(__b, 0x400uLL, "%s/%s/%s.plist", v12, v11, v7) >= 1024)
    {
      _os_assumes_log();
    }

    if (!unlink(__b))
    {
      dispatch_suspend(qword_100044C70);
      if (v5 == 1)
      {
        sub_100016FA8();
      }

      sub_10001C050();
    }

    v8 = a1;
    v9 = xdict;
    v10 = 0;
  }

  else
  {
    v8 = a1;
    v9 = xdict;
    v10 = 22;
  }

  sub_100010E2C(v8, v9, v10);
}

void sub_100017C28(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "prefs_type");
  if (uint64 - 4 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v5 = uint64;
    string = xpc_dictionary_get_string(xdict, "prefs_name");
    if (string)
    {
      v7 = string;
      if (!strchr(string, 47) && strlen(v7) < 0x100)
      {
        memset(__b, 170, 16);
        if (!xpc_dictionary_get_data(xdict, "prefs_data", &__b[8]) || !*&__b[8])
        {
          v13 = a1;
          v14 = xdict;
          v15 = 22;
LABEL_35:
          sub_100010E2C(v13, v14, v15);
          return;
        }

        memset(__b, 170, sizeof(__b));
        v8 = memset(__str, 170, sizeof(__str));
        if (~qword_100031B00 >= 8 * v5)
        {
          v9 = qword_100031B00[v5];
          v10 = _os_trace_prefsdir_path();
          snprintf(__b, 0x400uLL, "%s/%s/%s.plist", v10, v9, v7);
          v11 = _os_trace_prefsdir_path();
          snprintf(__str, 0x400uLL, "%s/.%s.XXXXXXXX", v11, v7);
          dispatch_suspend(qword_100044C70);
          if (qword_100044CF0 != -1)
          {
            dispatch_once(&qword_100044CF0, &stru_100032E40);
          }

          if (byte_100044CF8 == 1)
          {
            v12 = mkstemp_dprotected_np(__str, 4, 0);
          }

          else
          {
            v12 = mkstemp(__str);
          }

          v16 = v12;
          if (v12 < 0)
          {
            v19 = *__error();
          }

          else
          {
            if (_os_trace_writev() != -1)
            {
              if (fchmod(v16, 0x1A4u) == -1)
              {
                v21 = *__error();
                _os_assumes_log();
              }

              if (close(v16) != -1)
              {
                goto LABEL_22;
              }

              v22 = *__error();
              v8 = *__error();
              if (v22 != 9)
              {
                _os_assumes_log();
LABEL_22:
                rename(__str, __b, v17);
                if (v18 == -1)
                {
                  v23 = *__error();
                  _os_assumes_log();
                }

                if (v5 == 1)
                {
                  sub_100016FA8();
                }

                sub_10001C050();
                goto LABEL_33;
              }

              goto LABEL_41;
            }

            v19 = *__error();
            if (close(v16) == -1)
            {
              v24 = *__error();
              v8 = *__error();
              if (v24 == 9)
              {
LABEL_42:
                qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
                qword_100036118 = v8;
                __break(1u);
                return;
              }

              _os_assumes_log();
            }

            if (unlink(__str) == -1)
            {
              v25 = *__error();
              _os_assumes_log();
            }
          }

          sub_10001C050();
          if (v19)
          {
            memset(v26, 170, sizeof(v26));
            v20 = strerror(v19);
            snprintf(v26, 0x400uLL, "Unable to write new preferences plist: %s Error: %s (%d)", __b, v20, v19);
            sub_1000155B8(v26);
LABEL_34:
            v13 = a1;
            v14 = xdict;
            v15 = v19;
            goto LABEL_35;
          }

LABEL_33:
          memset(v26, 170, sizeof(v26));
          snprintf(v26, 0x400uLL, "Successfully wrote preferences plist: %s", __b);
          sub_1000155B8(v26);
          v19 = 0;
          goto LABEL_34;
        }

        __break(0x5513u);
LABEL_41:
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = v8;
        __break(1u);
        goto LABEL_42;
      }
    }
  }

  sub_100010E2C(a1, xdict, 22);
}

void sub_100018068()
{
  if (qword_100044BF0 != -1)
  {
    dispatch_once(&qword_100044BF0, &stru_100031C00);
  }

  v1 = qword_100044BF8;

  dispatch_async_and_wait(v1, &stru_100031BC0);
}

void sub_1000180C4(id a1)
{
  cnt = 0xAAAAAAAAAAAAAAAALL;
  fds = 0xAAAAAAAAAAAAAAAALL;
  word_100044BE0 = -1;
  os_map_str_init();
  if (launch_activate_socket("BSDSystemLogger", &fds, &cnt))
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Failed to open syslog socket: %d");
LABEL_6:
    sub_1000155B8(__b);
    return;
  }

  if (cnt != 1)
  {
    if (!cnt)
    {
      memset(&__b[2], 170, 0x3E0uLL);
      strcpy(__b, "Syslog socket fd array is empty");
      goto LABEL_6;
    }

    _os_assumes_log();
  }

  v1 = *fds;
  free(fds);
  if ((v1 & 0x80000000) != 0)
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Invalid syslog socket fd: %d");
    goto LABEL_6;
  }

  v9 = 0x20000;
  if (setsockopt(v1, 0xFFFF, 4098, &v9, 8u) == -1)
  {
    v2 = *__error();
    _os_assumes_log();
    if (close(v1) != -1)
    {
      return;
    }

    LODWORD(v1) = *__error();
    v3 = *__error();
    if (v1 != 9)
    {
      goto LABEL_21;
    }

    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v3;
    __break(1u);
LABEL_19:
    v4 = *__error();
    _os_assumes_log();
    if (close(v1) != -1)
    {
      return;
    }

    v5 = *__error();
    v6 = *__error();
    if (v5 == 9)
    {
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = v6;
      __break(1u);
      return;
    }

LABEL_21:
    _os_assumes_log();
    return;
  }

  if (fcntl(v1, 4, 4) == -1)
  {
    goto LABEL_19;
  }

  if (qword_100044BF0 != -1)
  {
    dispatch_once(&qword_100044BF0, &stru_100031C00);
  }

  qword_100044BE8 = dispatch_source_create(&_dispatch_source_type_read, v1, 0, qword_100044BF8);
  *&__b[0] = _NSConcreteStackBlock;
  *(&__b[0] + 1) = 0x40000000;
  *&__b[1] = sub_100004028;
  *(&__b[1] + 1) = &unk_100031C20;
  LODWORD(__b[2]) = v1;
  dispatch_source_set_event_handler(qword_100044BE8, __b);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10001840C;
  handler[3] = &unk_100031C40;
  v8 = v1;
  dispatch_source_set_cancel_handler(qword_100044BE8, handler);
  dispatch_resume(qword_100044BE8);
  byte_100044BC4 = 1;
}

uint64_t sub_10001840C(uint64_t a1)
{
  result = close(*(a1 + 32));
  if (result == -1)
  {
    v2 = *__error();
    result = *__error();
    if (v2 == 9)
    {
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = result;
      __break(1u);
    }

    else
    {
      return _os_assumes_log();
    }
  }

  return result;
}

void sub_1000186AC()
{
  if (qword_100044D20 != -1)
  {
    dispatch_once(&qword_100044D20, &stru_100032F00);
  }

  if (byte_1000360CC == 1)
  {
    v1 = 0;
    v2 = &v1;
    v3 = 0x2800000000;
    v4[0] = 0xAAAAAAAAAAAAAAAALL;
    v4[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_10002767C(v4);
    if (!sub_100009CD0(v2 + 24))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100018818;
      block[3] = &unk_100031C68;
      block[4] = &v1;
      dispatch_async(qword_100044C10, block);
    }

    _Block_object_dispose(&v1, 8);
  }

  else
  {

    sub_100004300(byte_100042B01, 0, 0, 2);
  }
}

void sub_100018818(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "operation", 3uLL);
  xpc_dictionary_set_uuid(v2, "uuid", (v1 + 24));
  sub_10001336C(v2, 1);

  xpc_release(v2);
}

void sub_100018894(uint64_t a1)
{
  memset(__b, 170, sizeof(__b));
  v2 = 1;
  sub_100009E5C((*(*(a1 + 32) + 8) + 24), 1, __b);
  if (!utimes(__b, 0))
  {
    *(*(*(a1 + 32) + 8) + 2088) = 1;
  }

  v3 = *(a1 + 56);
  v4 = *(*(a1 + 32) + 8);
  if ((v3 & 8) == 0)
  {
    if (*(v4 + 2088))
    {
      goto LABEL_23;
    }

    if ((v3 & 2) != 0)
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      v6 = v11;
      v12 = 2;
    }

    else
    {
      if ((v3 & 0x400) == 0)
      {
        v5 = *(a1 + 40);
        v6 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v6, "operation", 4uLL);
        xpc_dictionary_set_string(v6, "path", (v4 + 40));
        xpc_dictionary_set_uuid(v6, "uuid", (v4 + 24));
        if (v5)
        {
          xpc_dictionary_set_value(v6, "sections", v5);
        }

        if ((v3 & 0x200) != 0)
        {
          xpc_dictionary_set_BOOL(v6, "fake_uuid", 1);
        }

        if ((v3 & 4) == 0)
        {
          goto LABEL_22;
        }

        xpc_dictionary_set_string(v6, "role", (v4 + 1064));
        v7 = "ftab";
        v8 = v6;
        v9 = 1;
        goto LABEL_18;
      }

      v11 = xpc_dictionary_create(0, 0, 0);
      v6 = v11;
      v12 = 11;
    }

    xpc_dictionary_set_uint64(v11, "operation", v12);
    xpc_dictionary_set_uuid(v6, "uuid", (v4 + 24));
    goto LABEL_22;
  }

  if (*(v4 + 2088) == 1)
  {
    if (sub_100004620((v4 + 24)))
    {
      goto LABEL_23;
    }

    v4 = *(*(a1 + 32) + 8);
    v10 = *(v4 + 2088);
  }

  else
  {
    v10 = 0;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "operation", 5uLL);
  xpc_dictionary_set_uuid(v6, "uuid", (v4 + 24));
  xpc_dictionary_set_string(v6, "path", (v4 + 40));
  xpc_dictionary_set_string(v6, "role", (v4 + 1064));
  v7 = "coproc_free_only";
  v9 = v10 & 1;
  v8 = v6;
LABEL_18:
  xpc_dictionary_set_BOOL(v8, v7, v9);
LABEL_22:
  v13 = sub_10001336C(v6, 1);
  xpc_release(v6);
  v2 = v13 == 0;
LABEL_23:
  if (*(a1 + 40))
  {
    os_release(*(a1 + 48));
    xpc_release(*(a1 + 40));
  }

  if (v2 || (*(a1 + 56) & 4) != 0)
  {
    v14 = (*(*(a1 + 32) + 8) + 24);

    sub_1000096C8(v14);
  }
}

void sub_100018B9C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "operation", 1uLL);
  xpc_dictionary_set_uuid(v2, "uuid", (a1 + 32));
  LODWORD(a1) = sub_10001336C(v2, 1);
  xpc_release(v2);
  if (a1)
  {
    _os_assumes_log();
  }
}

void sub_100018C1C()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  qword_100044C10 = dispatch_queue_create_with_target_V2("com.apple.uuid.harvest", v0, 0);
  operator new();
}

void sub_100018D34()
{
  v0 = CFArrayCreate(kCFAllocatorDefault, &off_1000344D0, 1, &kCFTypeArrayCallBacks);
  if (v0)
  {
    v1 = v0;
    v2 = OSKextCopyLoadedKextInfo();
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v3, sub_100018DF4, 0);
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

const __CFData *sub_100018DF4(int a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"OSBundleTextUUID");
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v4 == result)
    {
      BytePtr = CFDataGetBytePtr(v3);

      return sub_100004300(BytePtr, 0, 0, 258);
    }
  }

  return result;
}

void sub_100018E6C()
{
  qword_100044C18 = dispatch_queue_create_with_target_V2("com.apple.logd.eventlog", 0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.logd.events", qword_100044C18, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100031D50);
  xpc_connection_activate(mach_service);
  qword_100044C20 = mach_service;
}

void sub_100018ED8(int a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v3 = reply;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v4;
    v14 = v4;
    xpc_connection_get_audit_token();
    v5 = xpc_copy_entitlement_for_token();
    if (v5)
    {
      v6 = v5;
      xpc_release(v5);
      if (v6 == &_xpc_BOOL_true)
      {
        v9 = 0;
        v10 = &v9;
        v11 = 0x2020000000;
        v12 = 0;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001A748;
        block[3] = &unk_1000322A0;
        block[4] = &v9;
        dispatch_async_and_wait(qword_100044C60, block);
        v7 = v10[3];
        _Block_object_dispose(&v9, 8);
        xpc_dictionary_set_uint64(v3, "device_salt", v7);
      }
    }

    xpc_dictionary_send_reply();
    xpc_release(v3);
  }
}

uint64_t sub_100019024(int a1, xpc_object_t xdict)
{
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  string = xpc_dictionary_get_string(xdict, "path");

  return sub_100004300(uuid, string, xdict, 1);
}

uint64_t sub_100019088()
{
  v1 = _NSConcreteStackBlock;
  v2 = 0x40000000;
  v3 = sub_1000191FC;
  v4 = &unk_100032078;
  v5 = &stru_100031E20;
  dispatch_async_and_wait(qword_1000344D8[0], &stru_100031E60);
  sub_1000191FC(&v1, 1u);
  v3(&v1, 2u);
  v3(&v1, 3u);
  v1 = _NSConcreteStackBlock;
  v2 = 0x40000000;
  v3 = sub_1000191FC;
  v4 = &unk_100032078;
  v5 = &stru_100031EA0;
  dispatch_async_and_wait(off_1000344E0[3], &stru_100031EE0);
  v3(&v1, 1u);
  v3(&v1, 2u);
  return v3(&v1, 3u);
}

uint64_t sub_1000191FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    __break(0x5512u);
  }

  else if (1248 * a2 <= ~&qword_1000344D8)
  {
    return (*(*(result + 32) + 16))();
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100019270()
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v2 = sub_1000191FC;
  v3 = &unk_100032078;
  v4 = &stru_100031F20;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100019390;
  block[3] = &unk_100032098;
  block[4] = qword_1000344D8;
  dispatch_async(qword_1000344D8[0], block);
  sub_1000191FC(v1, 1u);
  v2(v1, 2u);
  return v2(v1, 3u);
}

void sub_100019390(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*v1);
  sub_100004C04(v1);
  v2 = *(*(v1 + 8) + 24);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10001944C;
  v3[3] = &unk_1000320B8;
  v3[4] = v1;
  dispatch_async(v2, v3);
}

void sub_100019454(id a1, logd_buffer_info_s *a2)
{
  var0 = a2->var0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100019390;
  v3[3] = &unk_100032098;
  v3[4] = a2;
  dispatch_async(var0, v3);
}

uint64_t sub_1000194F0(uint64_t result)
{
  v1 = result;
  v2 = qword_1000344D8;
  v3 = 5;
  while (1)
  {
    v4 = *(v2 + 1240);
    if (v4 >= 5)
    {
      break;
    }

    result = sub_100011584(qword_100029E20[v4]);
    *v2 = result;
    if (v1)
    {
      *(v2 + 311) |= 1u;
    }

    v4 = *(v2 + 1240);
    if (v4 > 4)
    {
      goto LABEL_10;
    }

    if (~dword_100029E08 < 4 * v4)
    {
      __break(0x5513u);
LABEL_10:
      __break(0x5512u);
      break;
    }

    result = sub_10000F800(v2, dword_100029E08[v4]);
    v2 += 156;
    if (!--v3)
    {
      return result;
    }
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: Nope";
  qword_100036118 = v4;
  __break(1u);
  return result;
}

void sub_1000195C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_100004C04(a1);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_100019674;
    v4[3] = &unk_100031FA8;
    v4[4] = a1;
    dispatch_sync(v3, v4);
  }
}

void sub_10001967C(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3002000000;
  v8 = sub_100019788;
  v9 = sub_100019798;
  v10 = 0;
  v1 = *a1;
  v2 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000197A4;
  v4[3] = &unk_100032050;
  v4[5] = a1;
  v4[6] = v2;
  v4[4] = &v5;
  dispatch_sync(v1, v4);
  v3 = v6[5];
  if (v3)
  {
    dispatch_block_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    _Block_release(v6[5]);
  }

  _Block_object_dispose(&v5, 8);
}

void sub_1000197A4(void *a1)
{
  v2 = a1[5];
  dispatch_assert_queue_V2(*v2);
  v3 = *(v2 + 1128);
  *(v2 + 1128) = -1;
  if (mach_get_times())
  {
    _os_assumes_log();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000198C8;
  v5[3] = &unk_100032028;
  v8 = v3;
  v4 = a1[5];
  v6 = a1[6];
  v7 = v4;
  if (v6)
  {
    *(*(a1[4] + 8) + 40) = dispatch_block_create(0, v5);
    dispatch_async(*(a1[6] + 24), *(*(a1[4] + 8) + 40));
  }

  else
  {
    sub_1000198C8(v5);
  }
}

void sub_1000198C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_14;
  }

  memset(__b, 170, sizeof(__b));
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  snprintf(__b, 0x400uLL, "%s/%s", qword_100044CD0, *(v2 + 8));
  dispatch_assert_queue_V2(*(v2 + 24));
  sub_10000BBFC(v2);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  removefile(__b, 0, 3u);
  v28 = -1442840576;
  v25 = v30;
  v27 = 1024;
  memset(&v30[1], 170, 0x3F0uLL);
  v30[0] = *"--- !logd erase\n";
  if (v30 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_29;
  }

  *&v30[1] = 0x203A2020656D6974;
  v26 = 24;
  if (v30 >= 0xFFFFFFFFFFFFFFE8)
  {
    goto LABEL_29;
  }

  BYTE8(v30[1]) = 0;
  v3 = time(0);
  sub_10000CE70(&v25, v3);
  sub_10000CCDC(&v25, "\npath  : %s\n", v4, v5, v6, v7, v8, v9, __b);
  __src = 10;
  v10 = v28;
  if ((v28 & 2) != 0)
  {
    goto LABEL_12;
  }

  v11 = BYTE2(v28);
  v12 = v26;
  if (v27 != v26 + (BYTE2(v28) ^ 1))
  {
    v13 = v25;
    v14 = ~v25;
    if (~v25 >= v26)
    {
      *(v25 + v26) = 10;
      v15 = v12 + 1;
      v26 = v15;
      if (v11)
      {
        goto LABEL_12;
      }

      if (v14 >= v15)
      {
        v13[v15] = 0;
        goto LABEL_12;
      }
    }

LABEL_29:
    __break(0x5513u);
  }

  sub_100012B80(&v25, &__src, 1uLL);
  v10 = v28;
LABEL_12:
  sub_10000EE68(&v25);
  if (v10)
  {
    free(v25);
  }

LABEL_14:
  v16 = *(a1 + 48);
  if (v16 != -1)
  {
    sub_100006D00(*(a1 + 40), v16);
  }

  v17 = *(a1 + 40);
  v18 = v17;
  if (*(v17 + 1172) >= 1)
  {
    v19 = 0;
    do
    {
      sub_10000A4F0(*(a1 + 40), v19++);
    }

    while (v19 < *(v17 + 1172));
    v18 = *(a1 + 40);
  }

  *(v17 + 1168) = 0;
  v20 = *(v18 + 8);
  if (v20)
  {
    v21 = (v20 + 24);
  }

  else
  {
    v21 = v18;
  }

  dispatch_assert_queue_V2(*v21);
  if (*(v18 + 1240) <= 4u)
  {
    __b[0] = _NSConcreteStackBlock;
    __b[1] = 0x40000000;
    __b[2] = sub_100012C70;
    __b[3] = &unk_100031290;
    __b[4] = v18;
    sub_10000CA34(__b);
    v22 = rb_tree_iterate((v18 + 1176), 0, 1u);
    if (v22)
    {
      v23 = v22;
      do
      {
        v24 = rb_tree_iterate((v18 + 1176), v23, 1u);
        rb_tree_remove_node((v18 + 1176), v23);
        free(v23);
        v23 = v24;
      }

      while (v24);
    }
  }
}

void sub_100019BEC()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.power_button_queue", v0);
  v2 = qword_100044C30;
  qword_100044C30 = v1;

  v3 = qword_100044C30;

  dispatch_async(v3, &stru_1000321F8);
}

void sub_100019C60(id a1)
{
  qword_100044C50 = IOHIDEventSystemClientCreateWithType();
  if (qword_100044C50)
  {
    v2[0] = @"PrimaryUsagePage";
    v2[1] = @"PrimaryUsage";
    v3[0] = &off_1000334F8;
    v3[1] = &off_100033510;
    v1 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
    IOHIDEventSystemClientSetMatching();
    IOHIDEventSystemClientSetDispatchQueue();
    IOHIDEventSystemClientRegisterEventBlock();
    IOHIDEventSystemClientActivate();
  }

  else
  {
    memset(&v4[43], 170, 0x3D5uLL);
    strcpy(v4, "Failed to create an IOHIDEventSystemClient");
    sub_1000155B8(v4);
  }
}

void sub_100019D9C(id a1, void *a2, void *a3, void *a4, __IOHIDEvent *a5)
{
  if (IOHIDEventGetType() != 3)
  {
    return;
  }

  if (IOHIDEventGetIntegerValue() != 12)
  {
    return;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  if ((IntegerValue - 233) >= 2 && IntegerValue != 64 && IntegerValue != 48)
  {
    return;
  }

  dispatch_assert_queue_V2(qword_100044C30);
  v36[4] = xmmword_100029E88;
  v36[5] = unk_100029E98;
  memset(&v36[6], 0, 32);
  v36[0] = xmmword_100029E48;
  v36[1] = unk_100029E58;
  v36[2] = xmmword_100029E68;
  v36[3] = unk_100029E78;
  v6 = qword_100044C40;
  if (qword_100044C40)
  {
    v7 = ~v36;
    if (~v36 < 32 * (qword_100044C40 - 1))
    {
LABEL_60:
      __break(0x5513u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(0x5500u);
LABEL_63:
      __break(0x5505u);
      return;
    }

    v8 = *&v36[2 * qword_100044C40 - 2];
  }

  else
  {
    v8 = 0;
    v7 = ~v36;
  }

  if (v7 < 32 * qword_100044C40)
  {
    goto LABEL_60;
  }

  v9 = &v36[2 * qword_100044C40];
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v9[2];
  v13 = v9[3];
  v14 = IOHIDEventGetIntegerValue();
  v15 = IOHIDEventGetIntegerValue();
  TimeStamp = IOHIDEventGetTimeStamp();
  if (v14 == v10)
  {
    v17 = TimeStamp * 41.6666667 / 1000000000.0 - *&qword_100044C38;
    if (v6 <= 0)
    {
      v17 = 0.0;
    }

    if ((((v15 == 0) ^ v11) & 1) == 0 && v17 >= v12 && v17 < v13)
    {
      *&qword_100044C38 = TimeStamp * 41.6666667 / 1000000000.0;
      v19 = v6 + 1;
      if (v6 == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_29;
    }

    v20 = (((v15 == 0) ^ v11) & 1) == 0;
  }

  else
  {
    if (v14 != v8)
    {
      goto LABEL_47;
    }

    v20 = (((v15 == 0) ^ v11) & 1) == 0;
  }

  if (v20)
  {
    v19 = 0;
  }

  else
  {
    v19 = v6;
  }

  if (!v19)
  {
    goto LABEL_47;
  }

LABEL_29:
  if (v19 == qword_100044C40)
  {
    goto LABEL_47;
  }

  if (__CFADD__(v36, 32 * v19))
  {
    goto LABEL_60;
  }

  if (v19 == 4 || ((32 * v19) | 8uLL) > 0x80 || ((32 * v19) | 0x18uLL) > 0x80)
  {
    goto LABEL_61;
  }

  v21 = &v36[2 * v19];
  v22 = v21[3];
  if (*v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v21 + 8) == 0;
  }

  if (v23 && fabs(v22) + fabs(v21[2]) < 0.01)
  {
    sub_10001A200();
    qword_100044C40 = 0;
  }

  else
  {
    qword_100044C40 = v19;
    v24 = v22 * 1000000000.0;
    if (v22 * 1000000000.0 <= -9.22337204e18 || v24 >= 9.22337204e18)
    {
      goto LABEL_63;
    }

    v26 = dispatch_time(0, v24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A1E4;
    block[3] = &unk_1000328B8;
    block[4] = v19;
    dispatch_after(v26, qword_100044C30, block);
  }

LABEL_47:
  if (!IOHIDEventGetIntegerValue())
  {
    byte_100044C48 = 0;
    return;
  }

  if (__OFADD__(dword_100044C58, 1))
  {
    goto LABEL_62;
  }

  ++dword_100044C58;
  v27 = IOHIDEventGetIntegerValue();
  v28 = byte_100044C48;
  if (v27 == 48)
  {
    v29 = 1;
    goto LABEL_54;
  }

  if (v27 == 64)
  {
    v29 = 2;
LABEL_54:
    v28 = v29 | byte_100044C48;
    byte_100044C48 |= v29;
  }

  if (v28 == 3)
  {
    v30 = dispatch_time(0, 750000000);
    dispatch_after(v30, qword_100044C30, &stru_100032258);
    LOBYTE(v28) = byte_100044C48;
  }

  if ((v28 ^ (v28 - 1)) > (v28 - 1))
  {
    v31 = dword_100044C58;
    v32 = dispatch_time(0, 5000000000);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001A294;
    v33[3] = &unk_100032278;
    v34 = v31;
    dispatch_after(v32, qword_100044C30, v33);
  }
}

uint64_t sub_10001A1E4(uint64_t result)
{
  if (qword_100044C40 == *(result + 32))
  {
    qword_100044C40 = 0;
  }

  return result;
}

uint64_t sub_10001A200()
{
  memset(&v1[23], 170, 0x3E9uLL);
  strcpy(v1, "flush for power button");
  sub_1000155B8(v1);
  notify_post("com.apple.system.logging.power_button_notification");
  return sub_100019270();
}

uint64_t sub_10001A294(uint64_t result)
{
  if ((byte_100044C48 ^ (byte_100044C48 - 1)) > (byte_100044C48 - 1) && *(result + 32) == dword_100044C58)
  {
    byte_100044C48 = 0;
  }

  return result;
}

void sub_10001A2CC(id a1)
{
  if (byte_100044C48 == 3)
  {
    sub_10001A200();
    byte_100044C48 = 0;
  }
}

void sub_10001A300(const char *a1)
{
  memset(__b, 170, sizeof(__b));
  if (snprintf(__b, 0x400uLL, "%s/%s.plist", a1, "com.apple.logd") >= 1024)
  {
    _os_assumes_log();
  }

  plist_at = _os_trace_read_plist_at();
  if (plist_at)
  {
    v3 = plist_at;
    sub_10001A4B4(plist_at, "QuarantineLimit", &dbl_100044CA0, &_xpc_type_uint64);
    sub_10001A4B4(v3, "SuperQuaratineLimit", &qword_100044CA8, &_xpc_type_uint64);
    sub_10001A4B4(v3, "CoalitionSize", &qword_100044CB0, &_xpc_type_uint64);
    sub_10001A4B4(v3, "DefaultProcessQuarantineLimit", &dword_100044CB8, &_xpc_type_int64);
    sub_10001A4B4(v3, "MaxProcessQuarantineLimit", (&dword_100044CB8 + 2), &_xpc_type_int64);
    sub_10001A4B4(v3, "QuarantineRatio", &qword_100044CC0, &_xpc_type_double);
    sub_10001A4B4(v3, "DisableQuarantine", &word_100044CC8, &_xpc_type_BOOL);
    sub_10001A4B4(v3, "DisableSuperQuarantine", (&word_100044CC8 + 1), &_xpc_type_BOOL);
    sub_10001A4B4(v3, "DisableHighVolOverrides", &byte_100044CCA, &_xpc_type_BOOL);
    xpc_release(v3);
  }
}

void sub_10001A4B4(void *a1, const char *a2, double *a3, xpc_type_t a4)
{
  value = xpc_dictionary_get_value(a1, a2);
  type = xpc_get_type(value);
  if (value && type == a4)
  {
    if (a4 == &_xpc_type_uint64)
    {
      v8 = xpc_uint64_get_value(value);
    }

    else
    {
      if (a4 != &_xpc_type_int64)
      {
        if (a4 == &_xpc_type_double)
        {
          *a3 = xpc_double_get_value(value);
        }

        else if (a4 == &_xpc_type_BOOL)
        {
          *a3 = xpc_BOOL_get_value(value);
        }

        return;
      }

      v8 = xpc_int64_get_value(value);
    }

    *a3 = v8;
  }
}

int *sub_10001A570(int a1, const char *a2)
{
  v2 = a2;
  v4 = mkpathat_np(a1, a2, 0x1EDu);
  if (v4 && v4 != 17)
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Unable to create path";
    qword_100036118 = v4;
    __break(1u);
    goto LABEL_17;
  }

  if (qword_100044CF0 != -1)
  {
    dispatch_once(&qword_100044CF0, &stru_100032E40);
  }

  if (byte_100044CF8 != 1)
  {
    goto LABEL_12;
  }

  v13[1] = 0;
  v13[2] = 0;
  v13[0] = 0x4002000000000005;
  v12 = 0x4000001EDLL;
  v5 = openat(a1, v2, 0x100000);
  if (v5 == -1)
  {
LABEL_17:
    result = __error();
    v11 = *result;
    qword_1000360E8 = "BUG IN LIBTRACE: Unable to open path";
    qword_100036118 = v11;
    __break(1u);
    return result;
  }

  v6 = v5;
  if (fsetattrlist(v5, v13, &v12, 8uLL, 0) == -1)
  {
    v10 = *__error();
    _os_assumes_log();
  }

  result = close(v6);
  if (result == -1)
  {
    v2 = *__error();
    v8 = *__error();
    if (v2 != 9)
    {
      return _os_assumes_log();
    }

    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v8;
    __break(1u);
LABEL_12:
    result = fchmodat(a1, v2, 0x1EDu, 32);
    if (result != -1)
    {
      return result;
    }

    v9 = *__error();
    return _os_assumes_log();
  }

  return result;
}

uint64_t sub_10001A760(uint64_t a1)
{
  v2 = openat(dword_100035D38, *(a1 + 8), 1048832);
  if (v2 < 0)
  {
LABEL_21:
    v17 = *__error();
    qword_1000360E8 = "BUG IN LIBTRACE: Unable to open log book";
    qword_100036118 = v17;
    __break(1u);
  }

  v3 = v2;
  v4 = fdopendir(v2);
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v18.st_blksize = v5;
  *v18.st_qspare = v5;
  v18.st_birthtimespec = v5;
  *&v18.st_size = v5;
  v18.st_mtimespec = v5;
  v18.st_ctimespec = v5;
  *&v18.st_uid = v5;
  v18.st_atimespec = v5;
  *&v18.st_dev = v5;
  v6 = readdir(v4);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      if (v7->d_type == 8)
      {
        v9 = strrchr(v7->d_name, 46);
        if (v9)
        {
          if (!strcmp(v9, ".tracev3"))
          {
            if (fstatat(v3, v7->d_name, &v18, 32) == -1)
            {
              v14 = *__error();
              _os_assumes_log();
            }

            else
            {
              v10 = __OFADD__(v8, v18.st_size);
              v8 += v18.st_size;
              if (v10)
              {
                goto LABEL_20;
              }
            }

            v11 = sub_10000F374(v7->d_name);
            if (v11 >= *(a1 + 32))
            {
              *(a1 + 32) = v11 + 1;
            }

            v12 = *(a1 + 72);
            v10 = __OFADD__(v12, 1);
            v13 = v12 + 1;
            if (v10)
            {
LABEL_20:
              __break(0x5500u);
              goto LABEL_21;
            }

            *(a1 + 72) = v13;
          }
        }
      }

      v7 = readdir(v4);
      if (!v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
LABEL_17:
  *(a1 + 80) = -1;
  result = closedir(v4);
  if (result == -1)
  {
    v16 = *__error();
    result = _os_assumes_log();
  }

  *(a1 + 64) = v8;
  return result;
}

void sub_10001A91C(uint64_t a1)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "Full sync was requested for %s", *(a1 + 8));
  sub_1000155B8(__b);
  v2 = *(a1 + 76);
  v3 = v2;
  if (v2 < 0)
  {
    if (sub_10000DC14(a1))
    {
      return;
    }

    v3 = *(a1 + 76);
  }

  if (fcntl(v3, 51) == -1)
  {
    v4 = *__error();
    memset(__b, 170, sizeof(__b));
    v5 = *(a1 + 8);
    v6 = strerror(v4);
    snprintf(__b, 0x400uLL, "Logd was unable to fsync book: %s with error: %s (%d)", v5, v6, v4);
    sub_1000155B8(__b);
    if ((v2 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((v2 & 0x80000000) == 0)
  {
    return;
  }

  sub_10000BBFC(a1);
}

uint64_t sub_10001AA40(uint64_t a1)
{
  result = sub_10000EEE0(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56), *(a1 + 68));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10001AA7C()
{
  if (!__OFADD__(time(0), -86400))
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v6[3] = 0;
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2020000000;
    v5[3] = 0;
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2020000000;
    v4[3] = 0;
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x2020000000;
    v3[3] = 0;
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2020000000;
    v2[3] = 0;
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x2020000000;
    v1[3] = 0;
    memset(__b, 170, sizeof(__b));
    v0[0] = 0;
    v0[1] = v0;
    v0[2] = 0x3810000000;
    v0[6] = 0xAA00000000100000;
    v0[3] = "";
    v0[4] = __b;
    v0[5] = 0x40000000000;
    _os_trace_get_boot_uuid();
    sub_1000185C4();
  }

  __break(0x5515u);
}

uint64_t sub_10001B320(uint64_t a1, uint64_t a2)
{
  sub_100009944(*(a1 + 32), (a2 + 64));
  sub_100009944(*(a1 + 32), (a2 + 80));
  result = os_unfair_lock_lock_with_options();
  if (!*(a2 + 172))
  {
LABEL_5:
    v8 = *(a2 + 120);
    if (!v8 || (v9 = *(v8 + 16)) == 0)
    {
LABEL_31:
      os_unfair_lock_unlock((a2 + 176));
      return 1;
    }

    v10 = *(a1 + 32);
LABEL_8:
    v11 = v9[2];
    v12 = v9[3];
    v13 = __ROR8__(v12 + 16, 16);
    v14 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v13)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v13)))) >> 47))) ^ v12;
    v15 = v10[1];
    if (!*&v15)
    {
      goto LABEL_29;
    }

    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      v17 = v14;
      if (v14 >= *&v15)
      {
        v17 = v14 % *&v15;
      }
    }

    else
    {
      v17 = v14 & (*&v15 - 1);
    }

    v18 = *(*v10 + 8 * v17);
    if (!v18 || (v19 = *v18) == 0)
    {
LABEL_29:
      operator new();
    }

    while (1)
    {
      v20 = v19[1];
      if (v20 == v14)
      {
        if (v19[2] == v11 && v19[3] == v12)
        {
          v9 = *v9;
          if (!v9)
          {
            goto LABEL_31;
          }

          goto LABEL_8;
        }
      }

      else
      {
        if (v16.u32[0] > 1uLL)
        {
          if (v20 >= *&v15)
          {
            v20 %= *&v15;
          }
        }

        else
        {
          v20 &= *&v15 - 1;
        }

        if (v20 != v17)
        {
          goto LABEL_29;
        }
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  v5 = 0;
  v6 = 14;
  while (1)
  {
    v7 = *(a2 + 112);
    if (__CFADD__(v7, v6 - 14))
    {
      break;
    }

    result = sub_100009944(*(a1 + 32), (v7 + v6));
    ++v5;
    v6 += 32;
    if (v5 >= *(a2 + 172))
    {
      goto LABEL_5;
    }
  }

  __break(0x5513u);
  return result;
}

void sub_10001B618(uint64_t a1, uint64_t a2)
{
  v4 = strrchr((a2 + 104), 46);
  if (v4)
  {
    if (!strcmp(v4, ".tracev3"))
    {
      v17 = 0xAAAAAAAAAAAAAAAALL;
      v5 = *(a2 + 48);
      v6 = _os_trace_mmap_at();
      if (v6)
      {
        v7 = v6;
        v8 = v17;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v14 = sub_10001BF54;
        v15 = &unk_100032508;
        v16 = *(a1 + 32);
        v9 = v13;
        v10 = 0;
        do
        {
          if (v10 > ~v7)
          {
            __break(0x5513u);
          }

          if (v8 - v10 < 0x10)
          {
            break;
          }

          v11 = *(v7 + v10 + 8);
          if (v8 - v10 - 16 < v11)
          {
            break;
          }

          if (!v14(v9))
          {
            break;
          }

          v10 = (v10 + v11 + 23) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v10 - 1 < v8);

        if (munmap(v7, v17) == -1)
        {
          v12 = *__error();
          _os_assumes_log();
        }
      }
    }
  }
}

uint64_t sub_10001B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10000CCDC((*(*(a1 + 32) + 8) + 32), "--- !logd uuid purge records\n", a3, a4, a5, a6, a7, a8, v23);
  v10 = *(*(a1 + 32) + 8);
  if ((*(v10 + 52) & 2) == 0)
  {
    v11 = *(v10 + 40);
    if (*(v10 + 44) - v11 - (*(v10 + 54) ^ 1u) <= 7)
    {
      sub_100012B80(v10 + 32, "time  : ", 8uLL);
    }

    else
    {
      v12 = *(v10 + 32);
      if (__CFADD__(v12, v11))
      {
        goto LABEL_18;
      }

      *(v12 + v11) = 0x203A2020656D6974;
      v13 = *(v10 + 40) + 8;
      *(v10 + 40) = v13;
      if ((*(v10 + 54) & 1) == 0)
      {
        v14 = *(v10 + 32);
        if (__CFADD__(v14, v13))
        {
          goto LABEL_18;
        }

        *(v14 + v13) = 0;
      }
    }
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = time(0);
  result = sub_10000CE70((v15 + 32), v16);
  v17 = *(*(a1 + 32) + 8);
  if ((*(v17 + 52) & 2) != 0)
  {
    return result;
  }

  v18 = *(v17 + 40);
  if (*(v17 + 44) - v18 - (*(v17 + 54) ^ 1u) > 8)
  {
    v19 = *(v17 + 32);
    if (!__CFADD__(v19, v18))
    {
      v20 = v19 + v18;
      *v20 = *"\nuuids :\n";
      *(v20 + 8) = 10;
      v21 = *(v17 + 40) + 9;
      *(v17 + 40) = v21;
      if (*(v17 + 54))
      {
        return result;
      }

      v22 = *(v17 + 32);
      if (!__CFADD__(v22, v21))
      {
        *(v22 + v21) = 0;
        return result;
      }
    }

LABEL_18:
    __break(0x5513u);
    return result;
  }

  return sub_100012B80(v17 + 32, "\nuuids :\n", 9uLL);
}

uint64_t sub_10001B934(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = *(a2 + 88);
  if (v10 > 0xD)
  {
LABEL_13:
    if (v10 == 1)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      sub_10000CCDC((*(*(result + 40) + 8) + 32), "    - %s\n", a3, a4, a5, a6, a7, a8, *(a2 + 48));
      v31 = *(a2 + 48);

      return removefile(v31, 0, 1u);
    }

    else
    {
      qword_1000360E8 = "BUG IN LIBTRACE: unexpected fts entry";
      qword_100036118 = v10;
      __break(1u);
    }

    return result;
  }

  if (((1 << v10) & 0x494) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    v17 = *(*(result + 40) + 8);
    v18 = *(a2 + 48);
    strerror(*(a2 + 56));
    return sub_10000CCDC((v17 + 32), "    - error at %s (%d:%s)\n", v19, v20, v21, v22, v23, v24, v18);
  }

  if (((1 << v10) & 0x108) == 0)
  {
    if (((1 << v10) & 0x3000) != 0)
    {
      if (*(a2 + 86))
      {
        if (unlink(*(a2 + 48)) == -1)
        {
          v33 = *__error();
          _os_assumes_log();
        }

        result = sub_10000CCDC((*(*(v9 + 40) + 8) + 32), "    - %s [symlink]\n", v11, v12, v13, v14, v15, v16, *(a2 + 48));
      }

      else
      {
        result = sub_10000CCDC((*(*(result + 40) + 8) + 32), "    - root %s is a symbolic link\n", a3, a4, a5, a6, a7, a8, *(a2 + 48));
      }

      *(*(*(v9 + 32) + 8) + 24) = 1;
      return result;
    }

    goto LABEL_13;
  }

  if (unlink(*(a2 + 48)) == -1)
  {
    v32 = *__error();
    _os_assumes_log();
  }

  *(*(*(v9 + 32) + 8) + 24) = 1;
  return sub_10000CCDC((*(*(v9 + 40) + 8) + 32), "    - %s [default]\n", v25, v26, v27, v28, v29, v30, *(a2 + 48));
}

uint64_t sub_10001BB34(uint64_t a1, uint64_t a2, unsigned __int8 *uu)
{
  if (*(a2 + 88) != 8)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  uuid_unparse_upper(uu, out);
  v7 = *(*(a2 + 96) + 96);
  result = sub_100003BBC(*(a1 + 104), uu);
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 24);
    v17 = __OFADD__(v16, v7);
    v18 = v16 + v7;
    if (!v17)
    {
      *(v15 + 24) = v18;
      return sub_10000CCDC((*(*(a1 + 48) + 8) + 32), "    - %s: %lld bytes IN USE\n", v9, v10, v11, v12, v13, v14, out);
    }

    goto LABEL_19;
  }

  v19 = *(a2 + 48);
  v20 = *(a1 + 112);
  *&v46[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  value = v21;
  *v46 = v21;
  result = getxattr(v19, "com.apple.uuiddb.boot-uuid", &value, 0x25uLL, 0, 0);
  if (result == 37 && (result = memcmp(&value, v20, 0x25uLL), !result))
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v41 = *(*(a1 + 64) + 8);
    v42 = *(v41 + 24);
    v17 = __OFADD__(v42, v7);
    v43 = v42 + v7;
    if (v17)
    {
LABEL_19:
      __break(0x5500u);
      return result;
    }

    *(v41 + 24) = v43;
    return sub_10000CCDC((*(*(a1 + 48) + 8) + 32), "    - %s: %lld bytes LOCKED\n", v22, v23, v24, v25, v26, v27, out);
  }

  else
  {
    if (*(*(a2 + 96) + 64) >= *(a1 + 120))
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v35 = *(*(a1 + 80) + 8);
      v36 = *(v35 + 24);
      v17 = __OFADD__(v36, v7);
      v37 = v36 + v7;
      if (!v17)
      {
        *(v35 + 24) = v37;
        return sub_10000CCDC((*(*(a1 + 48) + 8) + 32), "    - %s: %lld bytes RECENT\n", v22, v23, v24, v25, v26, v27, out);
      }

      goto LABEL_19;
    }

    result = unlink(*(a2 + 48));
    if (!result)
    {
      v38 = *(*(a1 + 88) + 8);
      v39 = *(v38 + 24);
      v17 = __OFADD__(v39, v7);
      v40 = v39 + v7;
      if (!v17)
      {
        *(v38 + 24) = v40;
        *(*(*(a1 + 96) + 8) + 24) = 1;
        return sub_10000CCDC((*(*(a1 + 48) + 8) + 32), "    - %s: %lld bytes REMOVED\n", v28, v29, v30, v31, v32, v33, out);
      }

      goto LABEL_19;
    }

    if (result == -1)
    {
      v34 = *__error();
      return _os_assumes_log();
    }
  }

  return result;
}

void sub_10001BD98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1[4] + 8) + 24) != 1)
  {
    return;
  }

  v27 = *(*(a1[7] + 8) + 24);
  sub_10000CCDC((*(a1[5] + 8) + 32), "files_in_use: %ld bytes: %lld\n", a3, a4, a5, a6, a7, a8, *(*(a1[6] + 8) + 24));
  v28 = *(*(a1[9] + 8) + 24);
  sub_10000CCDC((*(a1[5] + 8) + 32), "files_locked: %ld bytes: %lld\n", v9, v10, v11, v12, v13, v14, *(*(a1[8] + 8) + 24));
  v29 = *(*(a1[11] + 8) + 24);
  sub_10000CCDC((*(a1[5] + 8) + 32), "files_recent: %ld bytes: %lld\n", v15, v16, v17, v18, v19, v20, *(*(a1[10] + 8) + 24));
  v21 = *(a1[5] + 8);
  __src = 10;
  if ((*(v21 + 52) & 2) == 0)
  {
    v22 = *(v21 + 40);
    if (*(v21 + 44) == v22 + (*(v21 + 54) ^ 1))
    {
      sub_100012B80(v21 + 32, &__src, 1uLL);
      goto LABEL_8;
    }

    v23 = *(v21 + 32);
    if (__CFADD__(v23, v22))
    {
      goto LABEL_13;
    }

    *(v23 + v22) = 10;
    v24 = *(v21 + 40) + 1;
    *(v21 + 40) = v24;
    if ((*(v21 + 54) & 1) == 0)
    {
      v25 = *(v21 + 32);
      if (!__CFADD__(v25, v24))
      {
        *(v25 + v24) = 0;
        goto LABEL_8;
      }

LABEL_13:
      __break(0x5513u);
      return;
    }
  }

LABEL_8:
  v26 = (*(a1[5] + 8) + 32);

  sub_10000EE68(v26);
}

uint64_t sub_10001BF54(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 24587)
  {
    v3 = sub_1000242EC(a2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      v6 = *(v3 + 16);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v10 = sub_1000241A4;
      v11 = &unk_100032A60;
      v12 = v5;
      for (i = *(v6 + 16); i; i = *i)
      {
        (v10)(v9, i + 2, i[4]);
      }

      sub_100010CA0(v4);
    }
  }

  return 1;
}

void sub_10001C050()
{
  dispatch_source_merge_data(qword_100044C70, 1uLL);
  dispatch_resume(qword_100044C70);
  dispatch_async_and_wait(qword_100044C60, &stru_100032358);
  v0 = sub_100011584(2);
  dispatch_async_and_wait(v0, &stru_100032378);
}

void sub_10001C0D4()
{
  __chkstk_darwin();
  v0 = &unk_100044000;
  if (qword_100044C70)
  {
    v1 = 0;
  }

  else
  {
    v1 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, qword_100044C60);
    dispatch_source_set_event_handler_f(v1, sub_10001CD98);
    dispatch_activate(v1);
    objc_storeStrong(&qword_100044C70, v1);
  }

  memset(__b, 170, sizeof(__b));
  if (qword_100044C78)
  {
    goto LABEL_49;
  }

  v2 = objc_alloc_init(NSMutableSet);
  memset(v49, 170, sizeof(v49));
  memset(__str, 170, sizeof(__str));
  v41 = 0xAA01000000100000;
  v3 = _os_trace_sysprefsdir_path();
  snprintf(__str, 0x400uLL, "%s/Subsystems", v3);
  sub_10001C7A0(v2, __str);
  v4 = _os_trace_app_cryptex_sysprefsdir_path();
  snprintf(__str, 0x400uLL, "%s/Subsystems", v4);
  sub_10001C7A0(v2, __str);
  v5 = _os_trace_os_cryptex_sysprefsdir_path();
  snprintf(__str, 0x400uLL, "%s/Subsystems", v5);
  sub_10001C7A0(v2, __str);
  if (_os_trace_is_development_build())
  {
    v6 = _os_trace_intprefsdir_path();
    snprintf(__str, 0x400uLL, "%s/Subsystems", v6);
    sub_10001C7A0(v2, __str);
  }

  v39 = v49;
  v40 = 0x40000000000;
  if (byte_100044CCA == 1)
  {
    v7 = v2;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    memset(applier, 170, 0x400uLL);
    v10 = _os_trace_sysprefsdir_path();
    if (snprintf(applier, 0x400uLL, "%s/com.apple.logd.highvol.plist", v10) >= 1024)
    {
      _os_assumes_log();
    }

    plist_at = _os_trace_read_plist_at();
    if (_os_trace_is_development_build())
    {
      v12 = _os_trace_intprefsdir_path();
      if (snprintf(applier, 0x400uLL, "%s/com.apple.logd.highvol.plist", v12) >= 1024)
      {
        _os_assumes_log();
      }

      v13 = _os_trace_read_plist_at();
      v14 = sub_10001C86C(plist_at, v13);

      plist_at = v14;
    }

    v15 = _os_trace_prefsdir_path();
    if (snprintf(applier, 0x400uLL, "%s/com.apple.logd.highvol.plist", v15) >= 1024)
    {
      _os_assumes_log();
    }

    v16 = _os_trace_read_plist_at();
    v8 = sub_10001C86C(plist_at, v16);

    v17 = v2;
    if (v8)
    {
      *applier = _NSConcreteStackBlock;
      *&applier[8] = 3221225472;
      *&applier[16] = sub_10001C97C;
      *&applier[24] = &unk_1000325F0;
      *&applier[32] = v17;
      xpc_dictionary_apply(v8, applier);

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = v2;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v43 count:16];
  v38 = v18;
  if (v19)
  {
    v20 = v19;
    v37 = v1;
    v21 = *v45;
    v22 = v18;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v22);
        }

        v24 = [*(*(&v44 + 1) + 8 * i) UTF8String];
        v25 = v8;
        sysprefs = _os_log_preferences_load_sysprefs();
        if ((v9 & 1) == 0)
        {
          v27 = xpc_dictionary_get_dictionary(v25, v24);
          v28 = v27;
          if (v27)
          {
            if (sysprefs)
            {
              _os_log_preferences_merge();
            }

            else
            {
              sysprefs = v27;
            }
          }

          v22 = v38;
        }

        if (sysprefs)
        {
          sub_10001C9CC(&v39, v24, sysprefs);
        }
      }

      v20 = [v22 countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v20);
    v29 = BYTE4(v41);

    if ((v29 & 2) != 0)
    {
      memset(&applier[44], 170, 0x3D4uLL);
      strcpy(applier, "Logging sysprefs cache was larger than 1MB!");
      sub_1000155B8(applier);
      v1 = v37;
      v0 = &unk_100044000;
      if (v29)
      {
        free(v39);
      }

      goto LABEL_48;
    }

    v1 = v37;
    v0 = &unk_100044000;
  }

  else
  {

    v29 = 0;
  }

  if (qword_100036248 != -1)
  {
    dispatch_once(&qword_100036248, &stru_1000310F8);
  }

  v30 = v39;
  v31 = v40;
  if (qword_100036240)
  {
    sub_1000117AC(v39, v40, 0, &stru_100031058);
  }

  v39 = 3954044928;
  if ((v29 & 1) == 0)
  {
    v30 = _os_trace_memdup();
  }

  qword_100044C78 = v30;
  if (v30)
  {
    qword_100044C90 = v31;
  }

LABEL_48:

LABEL_49:
  sub_10001CBF0(3u);
  v32 = _os_trace_prefsdir_path();
  snprintf(__b, 0x400uLL, "%s/Subsystems", v32);
  mkpath_np(__b, 0x1EDu);
  v33 = open(__b, 1081600);
  if (v33 == -1)
  {
    v36 = *__error();
    _os_assumes_log();
    v34 = 0;
  }

  else
  {
    v34 = dispatch_source_create(&_dispatch_source_type_vnode, v33, 0x37uLL, v0[396]);
    dispatch_set_context(v34, v34);
    dispatch_source_set_event_handler_f(v34, sub_10001D58C);
    dispatch_source_set_cancel_handler_f(v34, sub_10001D518);
    dispatch_activate(v34);
  }

  if (qword_100044C80)
  {
    dispatch_source_cancel(qword_100044C80);
    v35 = qword_100044C80;
  }

  else
  {
    v35 = 0;
  }

  qword_100044C80 = v34;

  sub_10001CD98();
}

uint64_t sub_10001C7A0(void *a1, const char *a2)
{
  v3 = a1;
  v4 = open(a2, 1048832);
  if (v4 == -1)
  {
    v6 = 0;
    v8 = *__error();
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_10001D270(v3);
  if (close(v5) != -1)
  {
LABEL_3:

    return v6;
  }

  v9 = *__error();
  result = *__error();
  if (v9 != 9)
  {
LABEL_6:
    _os_assumes_log();
    goto LABEL_3;
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

id sub_10001C86C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001D8E8;
      v10[3] = &unk_1000325F0;
      v6 = v3;
      v11 = v6;
      xpc_dictionary_apply(v5, v10);
      v7 = v6;

      goto LABEL_7;
    }

    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  v7 = v8;
LABEL_7:

  return v7;
}

uint64_t sub_10001C97C(uint64_t a1, uint64_t a2)
{
  v3 = [[NSString alloc] initWithUTF8String:a2];
  [*(a1 + 32) addObject:v3];

  return 1;
}

void sub_10001C9CC(void *a1, char *a2, void *a3)
{
  v5 = a3;
  memset(__b, 170, sizeof(__b));
  v16 = 0;
  v17 = &v16;
  v18 = 0x3810000000;
  v22 = 0xAA01000000100000;
  v19 = "";
  v20 = __b;
  v21 = 0x40000000000;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10001D5E4;
  applier[3] = &unk_1000325A0;
  v6 = v5;
  v14 = v6;
  v15 = &v16;
  xpc_dictionary_apply(v6, applier);
  memset(v23, 170, 20);
  sub_10001D6A0(v23, a2);
  _os_log_preferences_compute();
  LODWORD(v23[0]) += *(v17 + 10);
  sub_10001D704(a1, a2, v23);
  if ((*(a1 + 10) & 2) == 0)
  {
    v7 = v17[4];
    v8 = *(v17 + 10);
    v9 = *(a1 + 2);
    if (*(a1 + 3) - v9 - (*(a1 + 22) ^ 1u) < v8)
    {
      sub_100012B80(a1, v7, *(v17 + 10));
    }

    else
    {
      if (__CFADD__(*a1, v9))
      {
        goto LABEL_11;
      }

      memcpy((*a1 + v9), v7, *(v17 + 10));
      v10 = *(a1 + 2) + v8;
      *(a1 + 2) = v10;
      if (*(a1 + 22))
      {
        goto LABEL_7;
      }

      if (__CFADD__(*a1, v10))
      {
LABEL_11:
        __break(0x5513u);
      }

      *(*a1 + v10) = 0;
    }
  }

LABEL_7:
  v11 = v17;
  if (*(v17 + 26))
  {
    v12 = v17[4];
    v17[4] = 3954044928;
    *(v11 + 26) = 0;
    free(v12);
  }

  _Block_object_dispose(&v16, 8);
}

xpc_type_t sub_10001CBF0(unsigned int a1)
{
  v2 = sub_100025B50(a1);
  if (!v2)
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Invalid directory index";
    qword_100036118 = a1;
    __break(1u);
  }

  v3 = v2;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  *&v10.st_dev = v4;
  result = stat(v2, &v10);
  if (result)
  {
    goto LABEL_8;
  }

  if (12 * a1 <= ~dword_10003609C)
  {
    v6 = &dword_10003609C[3 * a1];
    if (v10.st_uid == *v6 && v10.st_gid == v6[1] && (v10.st_mode & 0xFFF) == *(v6 + 4))
    {
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "%s/%s", v3, ".migrated");
      if (!stat(__b, &v10))
      {
        return 0;
      }
    }

LABEL_8:
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "operation", 6uLL);
    xpc_dictionary_set_uint64(v7, "directory", a1);
    v8 = sub_10001336C(v7, 3);

    return v8;
  }

  __break(0x5513u);
  return result;
}

void sub_10001CD98()
{
  v0 = objc_alloc_init(NSMutableSet);
  memset(__b, 170, sizeof(__b));
  memset(__str, 170, sizeof(__str));
  memset(v28, 170, sizeof(v28));
  if (!qword_100044C78)
  {
    v18 = 0;
    v19 = 0;
LABEL_46:
    sub_100011414(v18, v19, &stru_100032550);

    return;
  }

  if (qword_100044C80)
  {
    dispatch_source_get_handle(qword_100044C80);
    sub_10001D270(v0);
  }

  WORD2(v28[2]) = 0;
  BYTE6(v28[2]) = 1;
  LODWORD(v28[2]) = 0x100000;
  __b[0] = 6;
  v28[0] = __b;
  v28[1] = 0x40000000004;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v1 = v0;
  v2 = [v1 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v37;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v36 + 1) + 8 * i) UTF8String];
        v7 = _os_log_preferences_load();
        if (v7)
        {
          sub_10001C9CC(v28, v6, v7);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v3);
  }

  if (qword_100036248 != -1)
  {
    dispatch_once(&qword_100036248, &stru_1000310F8);
  }

  if (qword_100036240)
  {
    sub_1000117AC(v28[0], v28[1], 1, &stru_100031098);
  }

  v8 = v1;
  v9 = qword_100044C78;
  v10 = qword_100044C90;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v30 = sub_10001D374;
  v31 = &unk_1000325C8;
  v11 = v8;
  v32 = v11;
  v33 = v28;
  v12 = v29;
  if (v10 >= 0x14)
  {
    do
    {
      v13 = *v9;
      if (v10 < v13)
      {
        break;
      }

      v14 = v9[1];
      if (v14 + 21 > v13)
      {
        break;
      }

      if (__CFADD__(v9 + 5, v14))
      {
        goto LABEL_49;
      }

      if (*(v9 + v14 + 20) || !v30(v12, v9))
      {
        break;
      }

      v15 = *v9;
      if (__CFADD__(v9, v15))
      {
LABEL_49:
        __break(0x5513u);
      }

      v9 = (v9 + v15);
      v10 -= v15;
    }

    while (v10 > 0x13);
  }

  if ((BYTE4(v28[2]) & 2) != 0)
  {
    memset(&v34[47], 170, 0x3D1uLL);
    strcpy(v34, "Logging preferences cache was larger than 1MB!");
    sub_1000155B8(v34);
LABEL_32:
    v18 = 0;
    v19 = 0;
    goto LABEL_44;
  }

  v16 = _os_trace_prefsdir_path();
  snprintf(__str, 0x400uLL, "%s/.plist-cache.XXXXXXXX", v16);
  if (qword_100044CF0 != -1)
  {
    dispatch_once(&qword_100044CF0, &stru_100032E40);
  }

  if (byte_100044CF8 == 1)
  {
    v17 = mkstemp_dprotected_np(__str, 4, 0);
  }

  else
  {
    v17 = mkostemp(__str, 0x1000000);
  }

  v20 = v17;
  if (v17 == -1)
  {
    v22 = *__error();
    _os_assumes_log();
    goto LABEL_32;
  }

  if (unlink(__str) == -1)
  {
    v23 = *__error();
    _os_assumes_log();
  }

  if (_os_trace_write() == -1)
  {
    v24 = *__error();
    _os_assumes_log();
  }

  else
  {
    v21 = mmap(0, LODWORD(v28[1]), 1, 2, v20, 0);
    if (v21 != -1)
    {
      v18 = v21;
      v19 = LODWORD(v28[1]);
      goto LABEL_43;
    }
  }

  v18 = 0;
  v19 = 0;
LABEL_43:
  if (close(v20) != -1)
  {
    goto LABEL_44;
  }

  v26 = *__error();
  v27 = *__error();
  if (v26 != 9)
  {
    _os_assumes_log();
LABEL_44:
    if (BYTE4(v28[2]))
    {
      v25 = v28[0];
      v28[0] = 3954044928;
      WORD2(v28[2]) = 0;
      free(v25);
    }

    goto LABEL_46;
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = v27;
  __break(1u);
}

uint64_t sub_10001D270(void *a1)
{
  v9 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4 = a1;
  v1 = v4;
  _os_trace_fdscandir_b();
  _os_trace_scandir_free_namelist();
  v2 = *(v6 + 24);

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_10001D374(uint64_t a1, unsigned int *a2)
{
  v4 = [[NSString alloc] initWithBytes:a2 + 5 length:a2[1] encoding:4];
  result = [*(a1 + 32) containsObject:v4];
  if (result)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 40);
  if ((*(v6 + 10) & 2) != 0)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  v8 = *(v6 + 2);
  if (*(v6 + 3) - v8 - (*(v6 + 22) ^ 1u) < *a2)
  {
    sub_100012B80(v6, a2, *a2);
    goto LABEL_8;
  }

  if (!__CFADD__(*v6, v8))
  {
    result = memcpy((*v6 + v8), a2, *a2);
    v9 = *(v6 + 2) + v7;
    *(v6 + 2) = v9;
    if (*(v6 + 22))
    {
LABEL_8:

      return 1;
    }

    if (!__CFADD__(*v6, v9))
    {
      *(*v6 + v9) = 0;
      goto LABEL_8;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_10001D468(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 21;
  v5 = strrchr((a2 + 21), 46);
  if (v5)
  {
    if ((*(a2 + 20) | 8) == 8)
    {
      v6 = v5;
      v7 = strcmp(v5, ".plist");
      v8 = v6 > v4;
      v9 = &v6[-v4];
      if (v8 && !v7)
      {
        v10 = [[NSString alloc] initWithBytes:v4 length:v9 encoding:4];
        [*(a1 + 32) addObject:v10];
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10001D518(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  result = close(handle);
  if (result == -1)
  {
    v3 = *__error();
    result = *__error();
    if (v3 == 9)
    {
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = result;
      __break(1u);
    }

    else
    {
      return _os_assumes_log();
    }
  }

  return result;
}

void sub_10001D58C(NSObject *a1)
{
  if ((dispatch_source_get_mask(a1) & 0x21) != 0)
  {

    sub_10001C0D4();
  }

  else
  {
    v1 = qword_100044C70;

    dispatch_source_merge_data(v1, 1uLL);
  }
}

uint64_t sub_10001D5E4(uint64_t a1, char *__s1)
{
  memset(v6, 170, 20);
  if (strcmp(__s1, "DEFAULT-OPTIONS"))
  {
    sub_10001D6A0(v6, __s1);
    v4 = *(a1 + 32);
    _os_log_preferences_compute();
    sub_10001D704((*(*(a1 + 40) + 8) + 32), __s1, v6);
  }

  return 1;
}

uint64_t sub_10001D6A0(_DWORD *a1, char *__s)
{
  a1[1] = strlen(__s);
  result = os_simple_hash();
  v4 = a1[1];
  a1[2] = result;
  if (((v4 + 1) & 3) != 0)
  {
    v5 = v4 - ((v4 + 1) & 3) + 5;
  }

  else
  {
    v5 = v4 + 1;
  }

  *a1 = v5 + 20;
  return result;
}

void *sub_10001D704(void *result, void *__src, unsigned int *a3)
{
  v5 = result;
  if ((*(result + 10) & 2) == 0)
  {
    v6 = *(result + 2);
    if (*(result + 3) - v6 - (*(result + 22) ^ 1u) <= 0x13)
    {
      result = sub_100012B80(result, a3, 0x14uLL);
    }

    else
    {
      if (__CFADD__(*result, v6))
      {
        goto LABEL_27;
      }

      v7 = *result + v6;
      v8 = *a3;
      *(v7 + 16) = a3[4];
      *v7 = v8;
      v9 = *(result + 2) + 20;
      *(result + 2) = v9;
      if ((*(result + 22) & 1) == 0)
      {
        if (__CFADD__(*result, v9))
        {
          goto LABEL_27;
        }

        *(*result + v9) = 0;
      }
    }
  }

  if ((*(v5 + 10) & 2) == 0)
  {
    v10 = a3[1];
    v11 = *(v5 + 2);
    if (*(v5 + 3) - v11 - (*(v5 + 22) ^ 1u) < v10)
    {
      result = sub_100012B80(v5, __src, a3[1]);
    }

    else
    {
      if (__CFADD__(*v5, v11))
      {
        goto LABEL_27;
      }

      result = memcpy((*v5 + v11), __src, a3[1]);
      v12 = *(v5 + 2) + v10;
      *(v5 + 2) = v12;
      if ((*(v5 + 22) & 1) == 0)
      {
        if (__CFADD__(*v5, v12))
        {
          goto LABEL_27;
        }

        *(*v5 + v12) = 0;
      }
    }
  }

  v13 = a3[1];
  v14 = v13 - ((v13 + 1) & 3) + 5;
  if (((v13 + 1) & 3) == 0)
  {
    v14 = v13 + 1;
  }

  if ((*(v5 + 10) & 2) == 0)
  {
    v15 = v14 - v13;
    v16 = *(v5 + 2);
    if (*(v5 + 3) - v16 - (*(v5 + 22) ^ 1u) >= v15)
    {
      if (!__CFADD__(*v5, v16))
      {
        result = memcpy((*v5 + v16), &unk_100044C88, v15);
        v17 = *(v5 + 2) + v15;
        *(v5 + 2) = v17;
        if (*(v5 + 22))
        {
          return result;
        }

        if (!__CFADD__(*v5, v17))
        {
          *(*v5 + v17) = 0;
          return result;
        }
      }

LABEL_27:
      __break(0x5513u);
      return result;
    }

    return sub_100012B80(v5, &unk_100044C88, v15);
  }

  return result;
}

uint64_t sub_10001D8E8(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_get_dictionary(*(a1 + 32), a2);
  if (v6)
  {
    v7 = v6;
    _os_log_preferences_merge();
  }

  else
  {
    v7 = v5;
  }

  xpc_dictionary_set_value(*(a1 + 32), a2, v7);

  return 1;
}

void sub_10001D968()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create_with_target_V2("com.apple.logd.store", attr, 0);
  v2 = qword_100044C60;
  qword_100044C60 = v1;
}

void sub_10001D9F0()
{
  sub_10001D968();
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  dword_100035D38 = open(qword_100044CD0, 0x100000);
  if ((dword_100035D38 & 0x80000000) == 0)
  {
    sub_100015B0C();
    sub_10001DB24();
  }

  if (&_CacheDeleteRegisterInfoCallbacks)
  {
    dispatch_async_f(qword_100044C60, 0, sub_10001DE24);
  }

  else
  {
    memset(&v1[51], 170, 0x3CDuLL);
    strcpy(v1, "CacheDelete not available - functioning without it");
    sub_1000155B8(v1);
  }

  v0 = dispatch_time(0, 600000000000);
  dispatch_after(v0, qword_100044C60, &stru_100032398);
}

uint64_t sub_10001DB24()
{
  memset(__b, 170, sizeof(__b));
  v0 = dup(dword_100035D38);
  if (v0 == -1)
  {
    v13 = *__error();
    _os_assumes_log();
    v2 = 0;
  }

  else
  {
    v1 = v0;
    if (lseek(v0, 0, 0) == -1)
    {
      v14 = *__error();
      _os_assumes_log();
    }

    v2 = fdopendir(v1);
    if (!v2)
    {
      v3 = *__error();
      if (close(v1) == -1)
      {
        v15 = *__error();
        result = *__error();
        if (v15 == 9)
        {
          qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_100036118 = result;
          __break(1u);
          return result;
        }

        _os_assumes_log();
      }

      v2 = 0;
      *__error() = v3;
    }
  }

  v4 = readdir(v2);
  if (v4)
  {
    while (1)
    {
      d_type = v4->d_type;
      if (d_type == 8)
      {
        break;
      }

      if (d_type == 4)
      {
        v6 = 0;
        d_name = v4->d_name;
        while (strcmp((&off_100032610)[v6], d_name))
        {
          if (++v6 == 5)
          {
            goto LABEL_23;
          }
        }

        if (qword_100044CE8 != -1)
        {
          dispatch_once(&qword_100044CE8, &stru_100032CD8);
        }

        snprintf(__b, 0x400uLL, "%s/%s", qword_100044CD0, d_name);
        v10 = removefile(__b, 0, 1u);
LABEL_21:
        if (v10 == -1)
        {
          v11 = *__error();
          _os_assumes_log();
        }
      }

LABEL_23:
      v4 = readdir(v2);
      if (!v4)
      {
        goto LABEL_26;
      }
    }

    v8 = v4->d_name;
    v9 = strrchr(v4->d_name, 46);
    if (!v9 || strcmp(v9, ".tracev3"))
    {
      goto LABEL_23;
    }

    if (!strncmp(v8, "logdata.Persistent.", 0x13uLL))
    {
      snprintf(__b, 0x400uLL, "Persist/%s", v8);
      v10 = renameat(dword_100035D38, v8, dword_100035D38, __b);
    }

    else
    {
      v10 = unlinkat(dword_100035D38, v8, 0);
    }

    goto LABEL_21;
  }

LABEL_26:
  closedir(v2);
  removefile("/private/var/mobile/Library/Logs/com.apple.sharingd", 0, 1u);
  return removefile("/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/WatchConnectivity", 0, 1u);
}

void sub_10001DE24()
{
  if ((CacheDeleteRegisterInfoCallbacks() & 0x80000000) != 0)
  {
    memset(&v0[37], 170, 0x3DBuLL);
    strcpy(v0, "Unable to register with cache delete");
    sub_1000155B8(v0);
  }
}

__CFDictionary *__cdecl sub_10001DEE4(id a1, int a2, __CFDictionary *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  if (sub_10001E0A8(qword_100044CD0, a3))
  {
    memset(__b, 170, sizeof(__b));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_10001E1A4;
    v9 = &unk_1000326C8;
    v11 = __b;
    v12 = 1024;
    v10 = &v13;
    sub_10001E1A4(v7, &off_100035F20);
    v8(v7, &off_100035E80);
    v8(v7, &off_100035D40);
    v8(v7, &off_100035DE0);
  }

  v17 = @"CACHE_DELETE_AMOUNT";
  v4 = [NSNumber numberWithLongLong:v14[3]];
  v18 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  _Block_object_dispose(&v13, 8);
  return v5;
}

BOOL sub_10001E0A8(const char *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v6;
  *v10.st_qspare = v6;
  v10.st_birthtimespec = v6;
  *&v10.st_size = v6;
  v10.st_mtimespec = v6;
  v10.st_ctimespec = v6;
  *&v10.st_uid = v6;
  v10.st_atimespec = v6;
  *v9.st_qspare = v6;
  *&v10.st_dev = v6;
  *&v9.st_size = v6;
  *&v9.st_blksize = v6;
  v9.st_ctimespec = v6;
  v9.st_birthtimespec = v6;
  v9.st_atimespec = v6;
  v9.st_mtimespec = v6;
  *&v9.st_dev = v6;
  *&v9.st_uid = v6;
  v7 = v5 && (stat(a1, &v10) & 0x80000000) == 0 && (stat([v5 fileSystemRepresentation], &v9) & 0x80000000) == 0 && v10.st_dev == v9.st_dev;

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t sub_10001E1A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  snprintf(v4, v5, "%s/%s", qword_100044CD0, *(a2 + 8));
  result = open(*(a1 + 40), 0x100000);
  if ((result & 0x80000000) != 0)
  {
    st_size = 0;
  }

  else
  {
    v7 = result;
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v15.st_blksize = v8;
    *v15.st_qspare = v8;
    v15.st_birthtimespec = v8;
    *&v15.st_size = v8;
    v15.st_mtimespec = v8;
    v15.st_ctimespec = v8;
    *&v15.st_uid = v8;
    v15.st_atimespec = v8;
    *&v15.st_dev = v8;
    if (_os_trace_fdscandir_b() < 1)
    {
      v15.st_size = 0;
    }

    else
    {
      if (fstatat(v7, (MEMORY[0] + 21), &v15, 32) == -1)
      {
        v15.st_size = 1;
      }

      unlinkat(v7, (MEMORY[0] + 21), 0);
    }

    if (close(v7) == -1)
    {
      v14 = *__error();
      result = *__error();
      if (v14 == 9)
      {
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    result = _os_trace_scandir_free_namelist();
    st_size = v15.st_size;
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 24);
  v12 = __OFADD__(v11, st_size);
  v13 = v11 + st_size;
  if (v12)
  {
    __break(0x5500u);
  }

  *(v10 + 24) = v13;
  return result;
}

int sub_10001E380(id a1, const dirent **a2, const dirent **a3)
{
  v5 = strncmp((*a2)->d_name, "logdata.Persistent.", 0x13uLL);
  v6 = strncmp((*a3)->d_name, "logdata.Persistent.", 0x13uLL);
  if ((v5 == 0) != (v6 == 0))
  {
    return (v5 != 0) - (v6 != 0);
  }

  return alphasort(a2, a3);
}

int sub_10001E43C(id a1, const dirent *a2)
{
  if (a2->d_type == 8)
  {
    v2 = strrchr(a2->d_name, 46);
    if (v2)
    {
      LODWORD(v2) = strcmp(v2, ".tracev3") == 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

__CFDictionary *__cdecl sub_10001E48C(id a1, int a2, __CFDictionary *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  if (sub_10001E0A8(qword_100044CD0, a3))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v13 = sub_10001E67C;
    v14 = &unk_100032680;
    v15 = &v16;
    v4 = v12;
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    v22[0] = qword_100044CD0;
    v22[1] = 0;
    v5 = fts_open(v22, 2132, 0);
    if (v5)
    {
      v6 = v5;
      v7 = fts_read(v5);
      if (v7)
      {
        v8 = v7;
        do
        {
          if (v8->fts_info == 8)
          {
            (v13)(v4);
          }

          v8 = fts_read(v6);
        }

        while (v8);
      }

      fts_close(v6);
    }

    else
    {
      _os_assumes_log();
    }
  }

  v20 = @"CACHE_DELETE_AMOUNT";
  v9 = [NSNumber numberWithLongLong:v17[3]];
  v21 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  _Block_object_dispose(&v16, 8);
  return v10;
}

const char *sub_10001E67C(uint64_t a1, uint64_t a2)
{
  result = strrchr((a2 + 104), 46);
  if (result)
  {
    result = strcmp(result, ".tracev3");
    if (!result)
    {
      v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v8.st_blksize = v5;
      *v8.st_qspare = v5;
      v8.st_birthtimespec = v5;
      *&v8.st_size = v5;
      v8.st_mtimespec = v5;
      v8.st_ctimespec = v5;
      *&v8.st_uid = v5;
      v8.st_atimespec = v5;
      *&v8.st_dev = v5;
      result = stat(*(a2 + 48), &v8);
      if ((result & 0x80000000) == 0)
      {
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 24);
        if (__OFADD__(v7, v8.st_size))
        {
          __break(0x5500u);
        }

        else
        {
          *(v6 + 24) = v7 + v8.st_size;
        }
      }
    }
  }

  return result;
}

void sub_10001E73C(id a1)
{
  byte_100035F80 = 1;
  byte_100035EE0 = 1;
  byte_100035DA0 = 1;
  byte_100035E40 = 1;
}

void sub_10001E764(id a1)
{
  dispatch_assert_queue_V2(qword_100044C60);
  if (dword_100035D38 == -1)
  {
    sub_10001E824();
  }

  byte_100035F80 = 0;
  byte_100035EE0 = 0;
  byte_100035DA0 = 0;
  byte_100035E40 = 0;
  memset(&v1[17], 170, 0x3EFuLL);
  strcpy(v1, "writes unblocked");
  sub_1000155B8(v1);
}

void sub_10001E824()
{
  dispatch_assert_queue_V2(qword_100044C60);
  if (dword_100035D38 != -1)
  {
    __assert_rtn("_logd_store_initialize_io", "logd_store.m", 3313, "_logd_store_dirfd == -1");
  }

  sub_10001EE38(0);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  dword_100035D38 = open(qword_100044CD0, 0x100000);
  if (dword_100035D38 < 0)
  {
    goto LABEL_45;
  }

  sub_100015B0C();
  v0 = sub_10001EFD8();
  v1 = objc_autoreleasePoolPush();
  v2 = [v0 objectForKeyedSubscript:@"Version"];
  v3 = [v2 integerValue];

  if (v3 >= 8)
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Store version (%ld) is more recent than what this system supports (<= %d), logs will be corrupted", v3, 7);
    sub_1000155B8(__b);
    goto LABEL_16;
  }

  if (v3 != 7)
  {
    v4 = 8 * v3;
    if (v3 <= 7)
    {
      v5 = 7 - v3;
    }

    else
    {
      v5 = 0;
    }

    while (v5)
    {
      if (v4 > ~off_100036060)
      {
        goto LABEL_44;
      }

      (off_100036060[v4 / 8])(v0);
      v6 = [NSNumber numberWithLong:v3 + 1];
      [v0 setObject:v6 forKeyedSubscript:@"Version"];

      v4 += 8;
      --v5;
      if (v3++ == 6)
      {
        sub_100012924(v0);
        goto LABEL_16;
      }
    }

    __break(0x5512u);
LABEL_44:
    __break(0x5513u);
LABEL_45:
    v24 = *__error();
    qword_1000360E8 = "BUG IN LIBTRACE: failed to open log store directory";
    qword_100036118 = v24;
    __break(1u);
  }

LABEL_16:
  objc_autoreleasePoolPop(v1);
  v8 = v0;
  v9 = [v8 objectForKeyedSubscript:@"Salt"];
  if ([v9 isNSNumber])
  {
    v10 = [v8 objectForKeyedSubscript:@"Salt"];
    v11 = [v10 unsignedLongLongValue];

    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  *&__b[0] = 0;
  do
  {
    arc4random_buf(__b, 8uLL);
  }

  while (!*&__b[0]);
  v12 = [NSNumber alloc];
  v13 = [v12 initWithUnsignedLongLong:*&__b[0]];
  [v8 setObject:v13 forKeyedSubscript:@"Salt"];

  sub_100012924(v8);
LABEL_23:
  v14 = [v8 objectForKeyedSubscript:@"Salt"];
  v15 = [v14 unsignedLongLongValue];

  if (!v15)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_42:
    dispatch_once(&qword_100044CF0, &stru_100032E40);
    goto LABEL_27;
  }

  qword_100044C68 = v15;

  sub_10001A570(dword_100035D38, off_100035F28);
  sub_10001A570(dword_100035D38, off_100035E88);
  sub_10001A570(dword_100035D38, off_100035D48);
  sub_10001A570(dword_100035D38, off_100035DE8);
  _os_trace_is_development_build();
  *&dbl_100044CA0 = xmmword_100029DA0;
  qword_100044CB0 = 3;
  qword_100044CC0 = 0x3FE0000000000000;
  word_100044CC8 = 0;
  byte_100044CCA = 0;
  dword_100044CB8 = 8388672;
  v16 = _os_trace_sysprefsdir_path();
  sub_10001A300(v16);
  if (_os_trace_is_development_build())
  {
    v17 = _os_trace_intprefsdir_path();
    sub_10001A300(v17);
  }

  v18 = _os_trace_prefsdir_path();
  sub_10001A300(v18);
  sub_10001A760(&off_100035F20);
  sub_10001A760(&off_100035E80);
  sub_10001A760(&off_100035D40);
  sub_10001A760(&off_100035DE0);
  v8 = v8;
  if (qword_100044CF0 != -1)
  {
    goto LABEL_42;
  }

LABEL_27:
  if (byte_100044CF8 == 1)
  {
    sub_10001F204(v8, 0);

    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &dword_100036098, qword_100044C60, &stru_1000327A8);
    if (!sub_10000DDF4())
    {
      goto LABEL_32;
    }

    *&__b[0] = _NSConcreteStackBlock;
    *(&__b[0] + 1) = 3221225472;
    *&__b[1] = sub_10001F33C;
    *(&__b[1] + 1) = &unk_1000327D0;
    *&__b[2] = &stru_1000327A8;
    dispatch_async(qword_100044C60, __b);
    v19 = *&__b[2];
  }

  else
  {
    sub_10001F204(v8, 1);
    v19 = v8;
  }

LABEL_32:
  if (&_CacheDeleteRegisterInfoCallbacks)
  {
    dispatch_async_f(qword_100044C60, 0, sub_10001F350);
  }

  else
  {
    memset(&__b[3] + 3, 170, 0x3CDuLL);
    strcpy(__b, "CacheDelete not available - functioning without it");
    sub_1000155B8(__b);
  }

  v20 = openat(dword_100035D38, "logdata.statistics.0.txt", 778, 420);
  dword_100034488 = v20;
  if (v20 == -1)
  {
    v22 = *__error();
    _os_assumes_log();
    v20 = dword_100034488;
  }

  dword_100034488 = sub_10000CB88(v20, "logdata.statistics.0.txt", "logdata.statistics.1.txt", 0x100000);
  v21 = openat(dword_100035D38, "logdata.statistics.0.jsonl", 778, 420);
  dword_10003448C = v21;
  if (v21 == -1)
  {
    v23 = *__error();
    _os_assumes_log();
    v21 = dword_10003448C;
  }

  dword_10003448C = sub_10000CB88(v21, "logdata.statistics.0.jsonl", "logdata.statistics.1.jsonl", 5242880);
}

void sub_10001EE38(unsigned int a1)
{
  v2 = sub_10001CBF0(a1);
  if (v2)
  {
    qword_1000360E8 = "BUG IN LIBTRACE: Failed to migrate directory";
    qword_100036118 = v2;
    __break(1u);
  }

  if (qword_100044CF0 != -1)
  {
    dispatch_once(&qword_100044CF0, &stru_100032E40);
  }

  if (byte_100044CF8 == 1)
  {
    v11[1] = 0;
    v11[2] = 0;
    v11[0] = 0x4000000000000005;
    v10 = 4;
    v3 = sub_100025B50(a1);
    v4 = open(v3, 0x100000);
    if (v4 == -1)
    {
      v8 = __error();
      v9 = *v8;
      qword_1000360E8 = "BUG IN LIBTRACE: Failed to open directory";
      qword_100036118 = v9;
      __break(1u);
    }

    else
    {
      v5 = v4;
      if (fsetattrlist(v4, v11, &v10, 4uLL, 0) == -1)
      {
        v6 = *__error();
        _os_assumes_log();
      }

      if (close(v5) != -1)
      {
        return;
      }

      v7 = *__error();
      v8 = *__error();
      if (v7 != 9)
      {
        _os_assumes_log();
        return;
      }
    }

    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v8;
    __break(1u);
  }
}

id sub_10001EFD8()
{
  v0 = openat(dword_100035D38, "version.plist", 256);
  if (v0 == -1)
  {
    if (*__error() != 2)
    {
      _os_assumes_log();
    }

    goto LABEL_9;
  }

  v1 = [[NSFileHandle alloc] initWithFileDescriptor:v0];
  v14 = 0;
  v2 = [v1 readDataToEndOfFileAndReturnError:&v14];
  v3 = v14;
  v4 = v3;
  if (v2)
  {
    [v1 closeFile];

    v5 = [NSPropertyListSerialization propertyListWithData:v2 options:1 format:0 error:0];
    goto LABEL_10;
  }

  v6 = [v3 domain];
  v7 = v6;
  if (v6 != NSCocoaErrorDomain)
  {

    goto LABEL_22;
  }

  v8 = [v4 code];

  if (v8 != 260)
  {
LABEL_22:
    _os_assumes_log();
  }

  [v1 closeFile];

LABEL_9:
  v2 = 0;
  v5 = 0;
LABEL_10:

  if ([v5 isNSDictionary])
  {
    v9 = [v5 objectForKeyedSubscript:@"Version"];
    v10 = v9;
    if (v9 && ([v9 isNSNumber] & 1) == 0)
    {
      [v5 removeObjectForKey:@"Version"];
    }

    v11 = [v5 objectForKeyedSubscript:@"Pending"];

    if (v11 && ([v11 isNSArray] & 1) == 0)
    {
      [v5 removeObjectForKey:@"Pending"];
    }
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);

    v11 = 0;
    v5 = v12;
  }

  return v5;
}

void sub_10001F204(void *a1, int a2)
{
  v3 = [a1 objectForKeyedSubscript:@"Pending"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) isEqualToString:@"timesync-build"])
        {
          v8 = a2 == 0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          dispatch_async_f(qword_100044C60, @"timesync-build", sub_100023008);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }
}

void sub_10001F350()
{
  if ((CacheDeleteRegisterInfoCallbacks() & 0x80000000) != 0)
  {
    memset(&v0[37], 170, 0x3DBuLL);
    strcpy(v0, "Unable to register with cache delete");
    sub_1000155B8(v0);
  }
}

__CFDictionary *__cdecl sub_10001F404(id a1, int a2, __CFDictionary *a3)
{
  memset(__b, 170, 0x400uLL);
  v4 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  snprintf(__b, 0x400uLL, "Received a Periodic Request from CacheDelete on volume %s", [v4 UTF8String]);

  sub_1000155B8(__b);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v5 = &unk_100044000;
  if (!sub_10001E0A8(qword_100044CD0, a3))
  {
    v10 = 0;
    goto LABEL_102;
  }

  v132 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v130 = v6;
  v131 = v6;
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v7 = qword_100044CD8;
  v8 = _os_trace_zalloc_typed();
  v9 = openat(-2, v7, 0);
  *v8 = v9;
  if (v9 == -1)
  {
    v11 = *__error();
    _os_assumes_log();
  }

  else if (sub_100025C24(v9, (v8 + 8), (v8 + 16), 0) >= 1 && (sub_100026E78(v8) & 0x80000000) == 0)
  {
    clock_gettime_nsec_np(_CLOCK_REALTIME);
    sub_100026F28();
  }

  v12 = *__error();
  if ((*v8 & 0x80000000) == 0 && close(*v8) == -1)
  {
    v98 = *__error();
    result = *__error();
    if (v98 == 9)
    {
LABEL_121:
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = result;
      __break(1u);
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = result;
      __break(1u);
      goto LABEL_122;
    }

    _os_assumes_log();
  }

  free(v8);
  *__error() = v12;
  v13 = *__error();
  memset(__b, 170, 0x400uLL);
  snprintf(__b, 0x400uLL, "Unable to open timesync database at %s: error %d", v7, v13);
  sub_1000155B8(__b);
  v14 = &unk_100035000;
  v15 = openat(dword_100035D38, "TTL", 1048832);
  if ((v15 & 0x80000000) == 0)
  {
    if (&v130 >= 0xFFFFFFFFFFFFFFE8)
    {
      goto LABEL_118;
    }

    v16 = v15;
    v17 = *(&v131 + 1);
    v18 = fdopendir(v15);
    v19 = readdir(v18);
    if (v19)
    {
      v20 = v19;
      v103 = a3;
      v21 = 0;
      v22 = 0;
      do
      {
        if (v20->d_type == 8)
        {
          v23 = strrchr(v20->d_name, 46);
          if (v23)
          {
            if (!strcmp(v23, ".tracev3"))
            {
              __b[0] = 0xAAAAAAAAAAAAAAAALL;
              if (sub_100020458(v16, v20->d_name, v17, __b))
              {
                if (unlinkat(v16, v20->d_name, 0) == -1)
                {
                  v24 = *__error();
                  _os_assumes_log();
                }

                v21 += __b[0];
              }

              else
              {
                v22 = 1;
              }
            }
          }
        }

        v20 = readdir(v18);
      }

      while (v20);
      a3 = v103;
      v5 = &unk_100044000;
      v14 = &unk_100035000;
      if (v22)
      {
LABEL_34:
        closedir(v18);
        goto LABEL_35;
      }
    }

    else
    {
      v21 = 0;
      v14 = &unk_100035000;
    }

    memset(__b, 170, 0x400uLL);
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    snprintf(__b, 0x400uLL, "%s/TTL", v5[410]);
    value[0] = 0;
    v25 = removefile_state_alloc();
    removefile_state_set(v25, 1u, sub_100022048);
    removefile_state_set(v25, 2u, value);
    removefile(__b, v25, 1u);
    removefile_state_free(v25);
    v26 = __OFADD__(v21, value[0]);
    v21 += value[0];
    if (v26)
    {
      goto LABEL_119;
    }

    goto LABEL_34;
  }

  v21 = 0;
LABEL_35:
  if ((&v131 + 1) != 0 && &v130 >= 0xFFFFFFFFFFFFFFEFLL || &v130 > 0xFFFFFFFFFFFFFFDFLL)
  {
    goto LABEL_118;
  }

  v27 = v130;
  v28 = v131;
  v29 = sub_1000206F4(&off_100035D40, v132);
  v30 = v21 + v29;
  if (__OFADD__(v21, v29) || (v31 = sub_1000206F4(&off_100035E80, v28), v26 = __OFADD__(v30, v31), v32 = v30 + v31, v26) || (v33 = sub_1000206F4(&off_100035F20, v27), v10 = v32 + v33, __OFADD__(v32, v33)))
  {
LABEL_119:
    __break(0x5500u);
  }

  v34 = openat(v14[846], off_100035DE8, 1048832);
  if (v34 == -1)
  {
    goto LABEL_110;
  }

  v35 = v34;
  if (v34 < 0)
  {
    goto LABEL_99;
  }

  *&v107.tm_wday = 0;
  *&v107.tm_isdst = &v107.tm_wday;
  v107.tm_gmtoff = 0x2020000000;
  v107.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, 0x400uLL);
  *&v107.tm_mon = 0xAA00000000100000;
  *&v107.tm_sec = __b;
  *&v107.tm_hour = 0x40000000000;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020888;
  block[3] = &unk_100032930;
  block[4] = &v107.tm_wday;
  block[5] = &off_100035DE0;
  dispatch_sync(qword_100044C60, block);
  sub_10000F4C8(&v107, &off_100035DE0, "Periodic Compaction", 0, v36, v37, v38, v39, v99[0]);
  v40 = dup(v35);
  if (v40 == -1)
  {
    v91 = *__error();
    _os_assumes_log();
    goto LABEL_115;
  }

  v41 = v40;
  if (lseek(v40, 0, 0) == -1)
  {
    v95 = *__error();
    _os_assumes_log();
  }

  v42 = fdopendir(v41);
  if (!v42)
  {
    v96 = *__error();
    if (close(v41) == -1)
    {
      v97 = *__error();
      result = *__error();
      if (v97 == 9)
      {
LABEL_122:
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = result;
        __break(1u);
LABEL_123:
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = result;
        __break(1u);
LABEL_124:
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    *__error() = v96;
LABEL_115:
    _os_assumes_log();
    v43 = 0;
    v75 = 0;
    goto LABEL_93;
  }

  v43 = v42;
  v105 = 0;
  v44 = readdir(v42);
  if (!v44)
  {
    goto LABEL_91;
  }

  v51 = 0;
  v104 = v117;
  v99[3] = v109;
  do
  {
    if (v44->d_type != 8)
    {
      goto LABEL_51;
    }

    d_name = v44->d_name;
    v53 = strrchr(v44->d_name, 46);
    if (!v53)
    {
      goto LABEL_51;
    }

    if (strcmp(v53, ".tracev3"))
    {
      goto LABEL_51;
    }

    v54 = sub_10000F374(d_name);
    if (!v54 || v54 >= *(*&v107.tm_isdst + 24))
    {
      goto LABEL_51;
    }

    v127 = 0xAAAAAAAAAAAAAAAALL;
    v55 = _os_trace_mmap_at();
    if (!v55)
    {
      v62 = sub_1000208A0(v35, d_name, v127, &v107, &v105);
      goto LABEL_82;
    }

    v56 = v55;
    v100 = v51;
    v101 = v10;
    v102 = v35;
    v103 = a3;
    v126 = 0x1000000000000;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    value[1] = 0;
    value[0] = &v130;
    value[2] = -1;
    *(&v125 + 1) = _os_trace_malloc_typed();
    v57 = v127;
    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v117[0] = sub_100020990;
    v117[1] = &unk_100032970;
    v117[2] = v56;
    v117[3] = &v130;
    v117[4] = value;
    v58 = v116;
    v59 = 0;
    do
    {
      if (v59 > ~v56)
      {
        goto LABEL_118;
      }

      if (v57 - v59 < 0x10)
      {
        break;
      }

      v60 = *(v56 + v59 + 8);
      if (v57 - 16 - v59 < v60)
      {
        break;
      }

      if (!(v117[0])(v58))
      {
        break;
      }

      v59 = (v59 + v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v59 - 1 < v57);

    if (*(&v119 + 1))
    {
      sub_100020C38(value);
    }

    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    v115 = 0;
    a3 = v103;
    v10 = v101;
    v35 = v102;
    if (DWORD2(v124) > 1)
    {
      if (!(v127 >> 17))
      {
LABEL_76:
        v68 = 16;
        v69 = 1;
        while (!__CFADD__(v124, v68))
        {
          free(*(v124 + v68));
          ++v69;
          v68 += 16;
          if (v69 >= DWORD2(v124))
          {
            goto LABEL_79;
          }
        }

LABEL_118:
        __break(0x5513u);
        goto LABEL_119;
      }

      if ((3 * v125) >= 2 * v127)
      {
        goto LABEL_66;
      }

      v63 = sub_10000DCF4(v102, "tmp", 1538);
      if (v63 == -1)
      {
        v71 = *__error();
        _os_assumes_log();
LABEL_86:
        v35 = v102;
        goto LABEL_66;
      }

      v64 = v63;
      if (_os_trace_writev() != -1)
      {
        v108[0] = _NSConcreteStackBlock;
        v108[1] = 3221225472;
        v109[0] = sub_100020D2C;
        v110 = v102;
        v111 = v64;
        v109[3] = d_name;
        v109[4] = value;
        v109[1] = &unk_100032998;
        v109[2] = &v112;
        v109[5] = v127;
        v109[6] = &v107;
        v109[7] = &off_100035DE0;
        dispatch_sync(qword_100044C60, v108);
        v65 = v64;
        v35 = v102;
        if (close(v65) == -1)
        {
          v66 = *__error();
          result = *__error();
          if (v66 == 9)
          {
            goto LABEL_123;
          }

          _os_assumes_log();
        }

        goto LABEL_66;
      }

      v72 = *__error();
      _os_assumes_log();
      v73 = close(v64);
      v35 = v102;
      if (v73 == -1)
      {
        v74 = *__error();
        result = *__error();
        if (v74 == 9)
        {
          goto LABEL_124;
        }

        _os_assumes_log();
        a3 = v103;
        v10 = v101;
        goto LABEL_86;
      }
    }

    else
    {
      v61 = sub_1000208A0(v102, d_name, v127, &v107, &v105);
      v113[3] = v61;
    }

LABEL_66:
    if (DWORD2(v124) > 1)
    {
      goto LABEL_76;
    }

LABEL_79:
    free(v124);
    free(*(&v125 + 1));
    if (munmap(v56, v127) == -1)
    {
      v70 = *__error();
      _os_assumes_log();
    }

    v62 = v113[3];
    _Block_object_dispose(&v112, 8);
    v51 = v100;
LABEL_82:
    v26 = __OFADD__(v51, v62);
    v51 += v62;
    if (v26)
    {
      goto LABEL_119;
    }

LABEL_51:
    v44 = readdir(v43);
  }

  while (v44);
  if (v51)
  {
    goto LABEL_92;
  }

LABEL_91:
  v51 = 0;
  v75 = 0;
  if (v105 == 1)
  {
LABEL_92:
    sub_10000CCDC(&v107, "done  : ", v45, v46, v47, v48, v49, v50, v99[0]);
    v76 = time(0);
    sub_10000CE70(&v107, v76);
    sub_10000CCDC(&v107, "\n\n", v77, v78, v79, v80, v81, v82, v99[0]);
    sub_10000EE68(&v107.tm_sec);
    v75 = v51;
  }

LABEL_93:
  if (v107.tm_year)
  {
    v83 = *&v107.tm_sec;
    *&v107.tm_sec = 3954044928;
    LOWORD(v107.tm_year) = 0;
    free(v83);
  }

  if (closedir(v43) == -1)
  {
    v92 = *__error();
    _os_assumes_log();
  }

  _Block_object_dispose(&v107.tm_wday, 8);
  v26 = __OFADD__(v10, v75);
  v10 += v75;
  if (v26)
  {
    goto LABEL_119;
  }

  if (close(v35) == -1)
  {
    v93 = *__error();
    result = *__error();
    if (v93 != 9)
    {
      _os_assumes_log();
LABEL_110:
      v94 = *__error();
      _os_assumes_log();
      goto LABEL_99;
    }

    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = result;
    __break(1u);
    goto LABEL_121;
  }

LABEL_99:
  v84 = v130;
  sub_100010D2C(*v130);
  free(v84);
  if (v99 == -536)
  {
    goto LABEL_118;
  }

  v85 = *(&v130 + 1);
  sub_100010D2C(**(&v130 + 1));
  free(v85);
  v86 = v131;
  sub_100010D2C(*v131);
  free(v86);
  if (&v130 > 0xFFFFFFFFFFFFFFE7)
  {
    goto LABEL_118;
  }

  v87 = *(&v131 + 1);
  sub_100010D2C(**(&v131 + 1));
  free(v87);
  v88 = v132;
  sub_100010D2C(*v132);
  free(v88);
  memset(__b, 170, 0x400uLL);
  snprintf(__b, 0x400uLL, "Compacted %lld bytes", v10);
  sub_1000155B8(__b);
LABEL_102:
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  if (sub_10001E0A8(qword_100044CE0, a3))
  {
    memset(&__b[2] + 3, 170, 0x3EDuLL);
    strcpy(__b, "Purging UUID Cache");
    sub_1000155B8(__b);
    sub_10001AA7C();
  }

  memset(__b, 170, 0x400uLL);
  snprintf(__b, 0x400uLL, "Periodic complete. Removed %lld bytes.", v10);
  sub_1000155B8(__b);
  v128 = @"CACHE_DELETE_AMOUNT";
  v89 = [NSNumber numberWithLongLong:v10];
  v129 = v89;
  v90 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];

  return v90;
}

void sub_100020364(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001EFD8();
  sub_1000221C0(v3, @"ttl01", **(a1 + 32));
  v4 = *(a1 + 32);
  if (v4 >= 0xFFFFFFFFFFFFFFF8 || (sub_1000221C0(v3, @"ttl03", *(v4 + 8)), v5 = *(a1 + 32), v5 > 0xFFFFFFFFFFFFFFEFLL) || (sub_1000221C0(v3, @"ttl07", *(v5 + 16)), v6 = *(a1 + 32), v6 > 0xFFFFFFFFFFFFFFE7) || (sub_1000221C0(v3, @"ttl14", *(v6 + 24)), v7 = *(a1 + 32), v7 > 0xFFFFFFFFFFFFFFDFLL))
  {
    __break(0x5513u);
  }

  else
  {
    sub_1000221C0(v3, @"ttl30", *(v7 + 32));
    sub_100012924(v3);

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_100020458(int a1, const char *a2, __darwin_time_t a3, size_t *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[0] = v8;
  v29[1] = v8;
  v9 = _os_trace_getxattr_at();
  if (v9 == 40)
  {
    v17 = sub_1000061E8(*a3, (v29 + 4));
    if (v17 && (v17 != 1 || v30 >= *(a3 + 8)))
    {
      v11 = 0;
      return v11 & 1;
    }

    goto LABEL_20;
  }

  if (v9 != -1)
  {
    _os_assumes_log();
LABEL_20:
    v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v18.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v28.st_blksize = v18;
    *v28.st_qspare = v18;
    v28.st_birthtimespec = v18;
    *&v28.st_size = v18;
    v28.st_mtimespec = v18;
    v28.st_ctimespec = v18;
    *&v28.st_uid = v18;
    v28.st_atimespec = v18;
    *&v28.st_dev = v18;
    if (fstatat(a1, a2, &v28, 32) == -1)
    {
      v23 = *__error();
      _os_assumes_log();
      st_size = 0;
    }

    else
    {
      st_size = v28.st_size;
    }

    *a4 = st_size;
    v11 = 1;
    return v11 & 1;
  }

  if (*__error() != 93)
  {
    v21 = *__error();
    _os_assumes_log();
  }

  v10 = _os_trace_mmap_at();
  v11 = 1;
  if (v10)
  {
    v12 = v10;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v13 = *a4;
    *&v28.st_dev = _NSConcreteStackBlock;
    v28.st_ino = 3221225472;
    *&v28.st_uid = sub_1000220E0;
    *&v28.st_rdev = &unk_1000328E0;
    v28.st_atimespec.tv_nsec = v10;
    v28.st_mtimespec.tv_sec = a3;
    v28.st_atimespec.tv_sec = &v24;
    v14 = &v28;
    v15 = 0;
    do
    {
      if (v15 > ~v12)
      {
        __break(0x5513u);
      }

      if (v13 - v15 < 0x10)
      {
        break;
      }

      v16 = *(v12 + v15 + 8);
      if (v13 - 16 - v15 < v16)
      {
        break;
      }

      if (!(*&v28.st_uid)(v14))
      {
        break;
      }

      v15 = (v15 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v15 - 1 < v13);

    if (munmap(v12, *a4) == -1)
    {
      v22 = *__error();
      _os_assumes_log();
    }

    v11 = *(v25 + 24);
    _Block_object_dispose(&v24, 8);
  }

  return v11 & 1;
}

uint64_t sub_1000206F4(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = openat(dword_100035D38, *(a1 + 8), 1048832);
  if (v4 == -1)
  {
    v7 = *__error();
    _os_assumes_log();
    goto LABEL_6;
  }

  v5 = v4;
  if (v4 < 0)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021E4C;
  block[3] = &unk_100032908;
  v12 = v4;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v13;
  dispatch_sync(qword_100044C60, block);
  if (close(v5) != -1)
  {
LABEL_4:
    v6 = v14[3];
LABEL_7:
    _Block_object_dispose(&v13, 8);
    return v6;
  }

  v9 = *__error();
  result = *__error();
  if (v9 != 9)
  {
    _os_assumes_log();
    v10 = *__error();
    _os_assumes_log();
    goto LABEL_4;
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

uint64_t sub_1000208A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021DA0;
  v7[3] = &unk_1000329C0;
  v8 = a1;
  v7[4] = &v9;
  v7[5] = a2;
  v7[6] = a5;
  v7[7] = a3;
  v7[8] = a4;
  v7[9] = &off_100035DE0;
  dispatch_sync(qword_100044C60, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t sub_100020990(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*(result + 32) != a2)
  {
    if (v4 != 24589)
    {
      if (v4 == 24587)
      {
        v5 = *(result + 48);
        if (*(v5 + 32))
        {
          sub_100020C38(*(result + 48));
          v5 = *(v3 + 48);
        }

        v6 = sub_1000242EC(a2);
        *(v5 + 32) = v6;
        if (v6)
        {
          *(v5 + 48) = *(v6 + 64);
          *(v5 + 124) = *(v5 + 112);
          sub_100021034(v5, 0);
          sub_10000FA90();
        }
      }

      return 1;
    }

    v8 = *(result + 48);
    if (*(v8 + 32))
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v19 = sub_1000210EC;
        v20 = &unk_100032950;
        v21 = v8;
        v10 = *(v9 + 32);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0x10000;
        }

        if (v10)
        {
          v12 = *(v9 + 36);
        }

        else
        {
          v12 = COMPRESSION_LZ4;
        }

        if (!v12)
        {
          v13 = (a2 + 16);
          v11 = *(a2 + 8);
          goto LABEL_31;
        }

        v13 = _os_trace_malloc_typed();
        v14 = compression_decode_buffer(v13, v11, (a2 + 16), *(a2 + 8), 0, v12);
        if (!v14)
        {
          free(v13);
          v13 = 0;
LABEL_39:
          free(v13);
LABEL_40:
          *(*(v3 + 48) + 48) = **(*(v3 + 48) + 48);
          return 1;
        }

        v15 = v14;
        if (v10)
        {
          if (v14 == v11)
          {
            goto LABEL_28;
          }

          _os_assumes_log();
        }

        v11 = v15;
LABEL_28:
        if (!v13)
        {
          goto LABEL_39;
        }

LABEL_31:
        v16 = 0;
        do
        {
          if (v11 - v16 < 0x10)
          {
            break;
          }

          v17 = *&v13[v16 + 8];
          if (v11 - v16 - 16 < v17)
          {
            break;
          }

          if (!v19(v18))
          {
            break;
          }

          v16 = (v16 + v17 + 23) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v16 - 1 < v11);
        if (!v12)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    return 1;
  }

  if (v4 != 4096 || *(a2 + 8) < 0x28uLL)
  {
    return 0;
  }

  v7 = *(result + 40);
  if (v7 >= 0xFFFFFFFFFFFFFFE0)
  {
    __break(0x5513u);
    return result;
  }

  result = sub_1000061E8(**(v7 + 32), (a2 + 144));
  if (result)
  {
    *(*(v3 + 48) + 8) = a2 + 144;
    sub_100021034(*(v3 + 48), a2);
    return 1;
  }

  return result;
}