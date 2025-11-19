uint64_t sub_10000D7E0()
{
  v0 = 0;
  atomic_fetch_add(&dword_10002471C, 1u);
  do
  {
    result = *(&xmmword_100024758 + v0);
    if (result && (*(result + 192) & 2) == 0 && (*(result + 192) & 0x20) != 0)
    {
      result = sub_1000033CC(result);
    }

    v0 += 8;
  }

  while (v0 != 4096);
  atomic_fetch_add(&dword_10002471C, 0xFFFFFFFF);
  return result;
}

void *sub_10000D850(int a1, int a2)
{
  if (a1 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = a1;
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = malloc_type_malloc(0x28uLL, 0x10300407BD0FDCAuLL);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      *v6 = a2;
      *(v6 + 12) = 0;
      *(v6 + 4) = 0;
      v8 = malloc_type_malloc(v5, 0xB750A1D3uLL);
      v7[3] = v8;
      if (!v8)
      {
        free(v7);
        break;
      }

      v7[4] = v4;
      v4 = v7;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    v7 = v4;
  }

LABEL_10:
  __dmb(0xBu);
  return v7;
}

uint64_t sub_10000D920(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    if ((*(result + 32) & 0x10) == 0)
    {
      add_explicit = atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed);
      v3 = add_explicit + 1;
      if (add_explicit == -2)
      {
        sub_10000A794(sub_10000D90C);
        v3 = atomic_fetch_add_explicit(&qword_1000246D0[dword_1000246E0], 1uLL, memory_order_relaxed) + 1;
      }

      if ((*(v1 + 32) & 4) != 0)
      {
        v4 = 0x2000000;
      }

      else
      {
        v4 = 0x4000000;
      }

      v5 = strlen(*(v1 + 16));
      result = sub_100001BC0(&qword_100025830, -1, *v1, *(v1 + 16), v5 + 1, v5 + 1, v4, v3, 0, 0);
      if ((*(v1 + 32) & 4) == 0)
      {
        *(v1 + 32) |= 0x10u;
      }

      *(v1 + 32) &= ~0x20u;
    }
  }

  return result;
}

uint64_t sub_10000DA38()
{
  pthread_mutex_lock(&stru_1000241C0);
  pthread_cond_signal(&stru_100024200);

  return pthread_mutex_unlock(&stru_1000241C0);
}

uint64_t sub_10000DA84()
{
  dword_1000246C8 = 1;
  __dmb(0xBu);
  result = dword_100024048;
  if ((dword_100024048 & 0x80000000) == 0)
  {
    dword_100024048 = -1;
    return close(result);
  }

  return result;
}

char *sub_10000DAB0()
{
  v0 = __chkstk_darwin();
  if (proc_pidpath(v0, buffer, 0x1000u) < 1)
  {
    result = 0;
  }

  else
  {
    result = basename(buffer);
  }

  if (!result)
  {
    return "(unknown)";
  }

  return result;
}

__CFDictionary *sub_10000DB50()
{
  pthread_mutex_lock(&stru_100024140);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v31 = sub_100009620();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100016064();
    }

LABEL_47:
    v32 = 0;
    goto LABEL_48;
  }

  v1 = Mutable;
  v2 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v2)
  {
    v33 = sub_100009620();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100016064();
    }

LABEL_46:
    CFRelease(v1);
    goto LABEL_47;
  }

  v3 = v2;
  sub_10000E27C(v2, @"proc_name", "%s", "fseventsd");
  sub_10000E27C(v3, @"num_clients", "%d", dword_100024720);
  sub_10000E27C(v3, @"curr_event_id", "%llu", qword_1000246D0[dword_1000246E0]);
  sub_10000E27C(v3, @"string_table_count", "%u", dword_100025850);
  v36 = v1;
  CFDictionaryAddValue(v1, @"global_state", v3);
  CFRelease(v3);
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v4 = dword_100024720;
  if (dword_100024720 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(&xmmword_100024758 + v5);
      if (v7)
      {
        v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!v8)
        {
          v34 = sub_100009620();
          v1 = v36;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_100016064();
          }

          goto LABEL_46;
        }

        v9 = v8;
        v10 = *(v7 + 256);
        v11 = sub_10000DAB0();
        sub_10000E27C(v9, @"client_name", "%s", v11);
        sub_10000E27C(v9, @"client_pid", "%d", *(v7 + 256));
        sub_10000E27C(v9, @"client_uid", "%d", *(v7 + 260));
        sub_10000E27C(v9, @"client_gid", "%d", *(v7 + 264));
        sub_10000E27C(v9, @"dev_to_watch", "%d", *(v7 + 112));
        v12 = *(v7 + 120);
        if (v12)
        {
          sub_10000E27C(v9, @"working_dir", "%s", v12);
        }

        v38 = v6;
        sub_10000E27C(v9, @"last_update", "%llu", *(v7 + 144));
        sub_10000E27C(v9, @"dropped_id", "%llu", *(v7 + 152));
        sub_10000E27C(v9, @"last_id", "%llu", *(v7 + 160));
        sub_10000E27C(v9, @"last_history_id", "%llu", *(v7 + 168));
        sub_10000E27C(v9, @"update_interval", "%llu", *(v7 + 176));
        sub_10000E27C(v9, @"num_errors", "%d", *(v7 + 184));
        sub_10000E27C(v9, @"client_flags", "%d", *(v7 + 192));
        sub_10000E27C(v9, @"max_events", "%d", *(v7 + 232));
        sub_10000E27C(v9, @"num_paths", "%d", *(v7 + 128));
        sub_10000E27C(v9, @"start_id", "%llu", *(v7 + 240));
        sub_10000E27C(v9, @"vfs_authorized_access", "%d", *(v7 + 300));
        sub_10000E27C(v9, @"num_events", "%llu", *(v7 + 312));
        sub_10000E27C(v9, @"allocated_bytes", "%llu", *(v7 + 304));
        sub_10000E27C(v9, @"client_thread", "%d", *(v7 + 328));
        sub_10000E27C(v9, @"client_index", "%d", *(v7 + 200));
        v47 = *(v7 + 336) / 1000000.0 + *(v7 + 332);
        sub_10000E27C(v9, @"user_time", "%f", &v47);
        v47 = *(v7 + 344) / 1000000.0 + *(v7 + 340);
        sub_10000E27C(v9, @"system_time", "%f", &v47);
        v13 = *(v7 + 352);
        if (v13)
        {
          sub_10000E27C(v9, @"pw_name", "%s", v13);
        }

        v14 = *(v7 + 128);
        if (v14 >= 1)
        {
          v15 = CFArrayCreateMutable(kCFAllocatorDefault, v14, &kCFTypeArrayCallBacks);
          if (v15)
          {
            v16 = v15;
            if (*(v7 + 128) >= 1)
            {
              v17 = 0;
              do
              {
                v18 = CFStringCreateWithCString(kCFAllocatorDefault, *(*(v7 + 136) + 8 * v17), 0x8000100u);
                if (v18)
                {
                  v19 = v18;
                  CFArrayAppendValue(v16, v18);
                  CFRelease(v19);
                }

                else
                {
                  v20 = sub_100009620();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    sub_100015F94(&v45, v46);
                  }
                }

                ++v17;
              }

              while (v17 < *(v7 + 128));
            }

            CFDictionaryAddValue(v9, @"path_table", v16);
            CFRelease(v16);
          }

          else
          {
            v21 = sub_100009620();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_100015FC8(&v43, v44);
            }
          }
        }

        v22 = CFArrayCreateMutable(kCFAllocatorDefault, 8, &kCFTypeArrayCallBacks);
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = v7 + 368;
          do
          {
            v26 = *(v25 + v24);
            if (!v26)
            {
              break;
            }

            v27 = CFStringCreateWithCString(kCFAllocatorDefault, v26, 0x8000100u);
            if (v27)
            {
              v28 = v27;
              CFArrayAppendValue(v23, v27);
              CFRelease(v28);
            }

            else
            {
              v29 = sub_100009620();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_100015FFC(&v41, v42);
              }
            }

            v24 += 8;
          }

          while (v24 != 64);
          if (CFArrayGetCount(v23) >= 1)
          {
            CFDictionaryAddValue(v9, @"exclusion_paths", v23);
          }

          CFRelease(v23);
        }

        else
        {
          v30 = sub_100009620();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100016030(&v39, v40);
          }
        }

        v6 = v38 + 1;
        CFArrayAppendValue(theArray, v9);
        CFRelease(v9);
        v4 = dword_100024720;
      }

      ++v5;
    }

    while (v6 < v4);
  }

  v32 = v36;
  CFDictionaryAddValue(v36, @"clients", theArray);
  CFRelease(theArray);
LABEL_48:
  pthread_mutex_unlock(&stru_100024140);
  return v32;
}

void sub_10000E27C(__CFDictionary *a1, const __CFString *a2, char *__s1, void *a4)
{
  if (!strcmp(__s1, "%llu"))
  {
    if (!a4)
    {
      return;
    }

    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llu", a4);
    goto LABEL_13;
  }

  if (*__s1 != 37)
  {
    goto LABEL_9;
  }

  if (__s1[1] == 115 && !__s1[2])
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", a4);
  }

  else
  {
    if (__s1[1] == 102 && !__s1[2])
    {
      if (*a4 == 0.0)
      {
        return;
      }

      v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%f", *a4);
      goto LABEL_13;
    }

    if (__s1[1] != 117 || __s1[2])
    {
LABEL_9:
      if (!a4)
      {
        return;
      }

      v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a4);
      goto LABEL_13;
    }

    if (!a4)
    {
      return;
    }

    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%u", a4);
  }

LABEL_13:
  v9 = v8;
  if (v8)
  {
    CFDictionaryAddValue(a1, a2, v8);

    CFRelease(v9);
  }

  else
  {
    v10 = sub_100009620();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000160E4(a2);
    }
  }
}

uint64_t sub_10000E420(uint64_t result)
{
  if (result == 30)
  {
    pthread_mutex_lock(&stru_100024140);
    v1 = sub_100009620();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10001616C();
    }

    v2 = 0;
    while (1)
    {
      v3 = *(&xmmword_100024758 + v2);
      if (v3)
      {
        break;
      }

LABEL_22:
      if (++v2 == 512)
      {
        return pthread_mutex_unlock(&stru_100024140);
      }
    }

    v4 = *(v3 + 240);
    v5 = sub_100009620();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4 == -1)
    {
      if (v6)
      {
        v30 = *(v3 + 256);
        v31 = sub_10000DAB0();
        v32 = *(v3 + 256);
        v33 = *(v3 + 192);
        v34 = *(v3 + 128);
        *buf = 136315906;
        *v36 = v31;
        *&v36[8] = 1024;
        *&v36[10] = v32;
        *&v36[14] = 2048;
        *&v36[16] = v33;
        *&v36[24] = 1024;
        *&v36[26] = v34;
        v14 = v5;
        v15 = "\t%s pid %d, flags 0x%llx, #paths %d, sinceWhen: Now\n";
        v16 = 34;
        goto LABEL_25;
      }
    }

    else if (v6)
    {
      v7 = *(v3 + 256);
      v8 = sub_10000DAB0();
      v9 = *(v3 + 256);
      v10 = *(v3 + 192);
      v11 = *(v3 + 128);
      v12 = *(v3 + 240);
      v13 = qword_1000246D0[dword_1000246E0] - v12;
      *buf = 136316418;
      *v36 = v8;
      *&v36[8] = 1024;
      *&v36[10] = v9;
      *&v36[14] = 2048;
      *&v36[16] = v10;
      *&v36[24] = 1024;
      *&v36[26] = v11;
      *v37 = 2048;
      *&v37[2] = v12;
      v38 = 2048;
      v39 = v13;
      v14 = v5;
      v15 = "\t%s pid %d, flags 0x%llx, #paths %d, sinceWhen: 0x%llx [delta: %llu]\n";
      v16 = 54;
LABEL_25:
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, buf, v16);
    }

    v17 = sub_100009620();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v3 + 304);
      v25 = *(v3 + 312);
      v27 = *(v3 + 336) / 1000000.0 + *(v3 + 332);
      v28 = *(v3 + 340);
      v29 = *(v3 + 344) / 1000000.0;
      *buf = 134218752;
      *v36 = v25;
      *&v36[8] = 2048;
      *&v36[10] = v26;
      *&v36[18] = 2048;
      *&v36[20] = v27;
      *&v36[28] = 2048;
      *v37 = v29 + v28;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "\t\tnum_events[%llu] allocated_bytes[%llu] user_time[%.2f] system_time[%.2f]\n", buf, 0x2Au);
    }

    if (*(v3 + 128) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = sub_100009620();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(*(v3 + 136) + 8 * v18);
          *buf = 67109378;
          *v36 = v18;
          *&v36[4] = 2080;
          *&v36[6] = v20;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "\t\t%d: %s\n", buf, 0x12u);
        }

        ++v18;
      }

      while (v18 < *(v3 + 128));
    }

    v21 = 0;
    v22 = v3 + 368;
    do
    {
      if (!*(v22 + v21))
      {
        break;
      }

      v23 = sub_100009620();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(v22 + v21);
        *buf = 136315138;
        *v36 = v24;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "\t\tExcluded %s\n", buf, 0xCu);
      }

      v21 += 8;
    }

    while (v21 != 64);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10000E7D4(uint64_t a1)
{
  snprintf(__str, 0x400uLL, "%s/.ramdisk-boot-done", (a1 + 256));
  v1 = open(__str, 0x20000000);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = v1;
  if (unlink(__str))
  {
    v3 = sub_100009620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001621C();
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  close(v2);
  return v4;
}

void sub_10000E8B0(uint64_t a1, uint64_t a2)
{
  memset(&v16, 0, sizeof(v16));
  v15 = 0;
  if (!sub_10000E7D4(a2))
  {
    snprintf(__str, 0x400uLL, "%s/fseventsd-uuid", (a2 + 256));
    v5 = open(__str, 0x20000000);
    if (v5 < 0)
    {
      return;
    }

    v6 = v5;
    if (fstat(v5, &v16) || (v16.st_mode & 0xF000) != 0x8000)
    {
      v10 = sub_100009620();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000162B4();
      }
    }

    else
    {
      tv_sec = v16.st_ctimespec.tv_sec;
      v8 = time(0);
      if (fsctl(__str, 0x40046812uLL, &v15, 0))
      {
        v9 = sub_100009620();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100016340();
        }

LABEL_17:
        *(a1 + 32) |= 0x200u;
        close(v6);
LABEL_18:
        sub_10000EDBC(a2, 1);
        sub_10000EFA4(a1, a2);
        return;
      }

      if (fsctl(__str, 0x40046813uLL, &v15 + 4, 0))
      {
        v11 = sub_100009620();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000163D0();
        }

        goto LABEL_17;
      }

      if (HIDWORD(v15) > tv_sec && HIDWORD(v15) - tv_sec > 119 || v8 - v15 >= 120 && v8 - tv_sec > 5)
      {
        close(v6);
        memset(v30, 0, sizeof(v30));
        sub_10000BEAC((a2 + 256), v30);
        memset(&buf, 0, 512);
        if (statfs((a2 + 256), &buf))
        {
          f_flags = 0;
        }

        else
        {
          f_flags = buf.f_flags;
        }

        v13 = sub_100009620();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v17 = 136316418;
          v18 = a2 + 256;
          v19 = 2080;
          v20 = v30;
          v21 = 2048;
          v22 = f_flags;
          v23 = 2048;
          v24 = HIDWORD(v15) - tv_sec;
          v25 = 2048;
          v26 = v8 - v15;
          v27 = 2048;
          v28 = v8 - tv_sec;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "event logs in %s with volume UUID [%s] and f_flags[0x%llx] out of sync with volume.  destroying old logs. (%ld %ld %ld)", v17, 0x3Eu);
        }

        analytics_send_event_lazy();
        v14 = sub_100009620();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100016454();
        }

        goto LABEL_18;
      }
    }

    close(v6);
    return;
  }

  v4 = sub_100009620();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    buf.f_bsize = 136315138;
    *&buf.f_iosize = "check_vol_last_mod_time";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: ram disk boot detected", &buf, 0xCu);
  }
}

xpc_object_t sub_10000ECC0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "statfs_f_flags", *(a1 + 32));
  xpc_dictionary_set_int64(v2, "is_mnt_removable", *(a1 + 40));
  xpc_dictionary_set_int64(v2, "last_mount_time", *(a1 + 64));
  xpc_dictionary_set_int64(v2, "last_event_time", *(a1 + 48));
  xpc_dictionary_set_int64(v2, "current_time", *(a1 + 56));
  xpc_dictionary_set_int64(v2, "mount_time", *(a1 + 68));
  xpc_dictionary_set_int64(v2, "last_mount_diff", *(a1 + 64) - *(a1 + 48));
  xpc_dictionary_set_int64(v2, "current_mount_diff", *(a1 + 56) - *(a1 + 68));
  xpc_dictionary_set_int64(v2, "last_event_diff", *(a1 + 56) - *(a1 + 48));
  return v2;
}

void sub_10000EDBC(uint64_t a1, int a2)
{
  v4 = __strlcpy_chk();
  v16[v4] = 47;
  v5 = (a1 + 32);
  if (*(a1 + 32) >= 1)
  {
    v6 = 0;
    v7 = &v16[v4];
    v8 = 1023 - v4;
    do
    {
      snprintf(v7 + 1, v8, "%.16llx", *(*(a1 + 40) + 8 * v6));
      if (unlink(v16) && (*__error() != 30 || strcmp((a1 + 256), "/.fseventsd")))
      {
        v9 = sub_100009620();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = __error();
          v11 = strerror(*v10);
          *buf = 136315394;
          v13 = v16;
          v14 = 2080;
          v15 = v11;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to unlink old log file %s (%s)", buf, 0x16u);
        }
      }

      ++v6;
    }

    while (v6 < *v5);
  }

  if (a2)
  {
    pthread_rwlock_wrlock((a1 + 48));
    free(*(a1 + 40));
    *v5 = 0;
    *(a1 + 40) = 0;
    ++*(a1 + 248);
    *(a1 + 250) = 1;
    pthread_rwlock_unlock((a1 + 48));
  }

  else
  {
    free(*(a1 + 40));
    *v5 = 0;
    *(a1 + 40) = 0;
    ++*(a1 + 248);
    *(a1 + 250) = 1;
  }
}

void sub_10000EFA4(uint64_t a1, uint64_t a2)
{
  uuid_generate((a1 + 48));
  uuid_unparse((a1 + 48), (a1 + 64));
  v4 = (a2 + 256);
  snprintf(__str, 0x400uLL, "%s/fseventsd-uuid", (a2 + 256));
  unlink(__str);
  v5 = open_dprotected_np(__str, 536872450, 4, 0, 384);
  if (v5 < 0)
  {
    if ((*(a1 + 32) & 1) == 0 || *__error() != 30)
    {
      v10 = sub_100009620();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000164E4();
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = strlen((a1 + 64));
    v8 = write(v6, (a1 + 64), v7);
    if (v8 == strlen((a1 + 64)))
    {
      if ((*(a1 + 32) & 1) == 0 || strcmp(v4, "/tmp"))
      {
        v9 = sub_100009620();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000165C4();
        }
      }
    }

    else
    {
      unlink(__str);
      v11 = sub_100009620();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100016554();
      }
    }

    close(v6);
  }
}

uint64_t sub_10000F14C(const char *a1)
{
  flagset_p = 0;
  entry_p = 0;
  permset_p = 0;
  memset(uu, 0, sizeof(uu));
  acl_p = acl_init(1);
  if (!acl_p)
  {
    v3 = sub_100009620();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    sub_100016D8C();
    goto LABEL_41;
  }

  if (acl_create_entry_np(&acl_p, &entry_p, 0))
  {
    v2 = sub_100009620();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10001663C();
    }

LABEL_41:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_42;
  }

  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v5 = sub_100009620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000166D8();
    }

    goto LABEL_41;
  }

  if (acl_clear_flags_np(flagset_p))
  {
    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100016774();
    }

    goto LABEL_41;
  }

  if (acl_set_flagset_np(entry_p, flagset_p))
  {
    v7 = sub_100009620();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100016810();
    }

    goto LABEL_41;
  }

  if (acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW))
  {
    v8 = sub_100009620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000168AC();
    }

    goto LABEL_41;
  }

  if (uuid_parse("ABCDEFAB-CDEF-ABCD-EFAB-CDEF0000000C", uu))
  {
    v9 = sub_100009620();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100016948();
    }

    goto LABEL_41;
  }

  if (acl_set_qualifier(entry_p, uu))
  {
    v10 = sub_100009620();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000169E4();
    }

    goto LABEL_41;
  }

  if (acl_get_permset(entry_p, &permset_p))
  {
    v11 = sub_100009620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100016A80();
    }

    goto LABEL_41;
  }

  if (acl_clear_perms(permset_p))
  {
    v12 = sub_100009620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100016B1C();
    }

    goto LABEL_41;
  }

  if (acl_get_permset(entry_p, &permset_p))
  {
    v13 = sub_100009620();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100016BB8();
    }

    goto LABEL_41;
  }

  if (acl_add_perm(permset_p, ACL_READ_EXTATTRIBUTES))
  {
    v14 = sub_100009620();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100016C54();
    }

    goto LABEL_41;
  }

  if (acl_set_file(a1, ACL_TYPE_EXTENDED, acl_p))
  {
    v15 = sub_100009620();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100016CF0();
    }

    goto LABEL_41;
  }

  v4 = 0;
LABEL_42:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  return v4;
}

uint64_t sub_10000F440(int a1, _DWORD *a2, _DWORD *a3, void *a4, unsigned int (*a5)(char *), unint64_t *a6, unint64_t *a7)
{
  *a3 = 0;
  *a2 = 0;
  *a4 = 0;
  *a7 = 0;
  *a6 = 0;
  v14 = fdopendir(a1);
  if (!v14)
  {
    close(a1);
    return *__error();
  }

  v15 = v14;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a6;
  v34 = a7;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = -1;
  while (1)
  {
    do
    {
      v21 = readdir(v15);
      if (!v21)
      {
        *v30 = v16;
        *v31 = v18;
        *v32 = v19;
        *v33 = v20;
        *v34 = v17;
        closedir(v15);
        return 0;
      }

      v22 = v21;
    }

    while (a5 && !a5(v21->d_name));
    if (v16 < v18)
    {
      v23 = v18;
      v24 = v19;
      goto LABEL_11;
    }

    v23 = v18 + 100;
    v25 = malloc_type_calloc(v18 + 100, 8uLL, 0x100004000313F17uLL);
    if (!v25)
    {
      break;
    }

    v24 = v25;
    if (v19)
    {
      memcpy(v25, v19, 8 * v18);
      free(v19);
    }

LABEL_11:
    v26 = strtoull(v22->d_name, 0, 16);
    v24[v16] = v26;
    if (v26 <= v17)
    {
      v27 = v17;
    }

    else
    {
      v27 = v26;
    }

    if (v26 >= v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v26;
    }

    if (v26 < v20)
    {
      v27 = v17;
    }

    if (v26 + 1 > 1)
    {
      v17 = v27;
      v20 = v28;
      ++v16;
    }

    v18 = v23;
    v19 = v24;
  }

  if (v19)
  {
    free(v19);
  }

  closedir(v15);
  return 12;
}

BOOL sub_10000F600(_BYTE *a1)
{
  v2 = *a1;
  result = *a1 == 0;
  if (v2 >= 1)
  {
    if ((_DefaultRuneLocale.__runetype[v2] & 0x10000) != 0)
    {
      v4 = a1 + 1;
      do
      {
        v6 = *v4++;
        v5 = v6;
      }

      while (v6 >= 1 && (_DefaultRuneLocale.__runetype[v5] & 0x10000) != 0);
      return v5 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_10000F65C(uint64_t a1)
{
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = 0u;
  v2 = (a1 + 208);
  pthread_rwlock_init(a1, 0);
  *(a1 + 200) = sub_1000083CC(4096, v2);
  result = malloc_type_malloc(0x1FFE0uLL, 0x10B00407F4A3208uLL);
  *(a1 + 232) = result;
  *(a1 + 240) = 2730;
  return result;
}

uint64_t sub_10000F6E8(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_10000F700(uint64_t a1, uint64_t a2, void *a3)
{
  memset(&v60, 0, sizeof(v60));
  *a3 = 0;
  snprintf(__str, 0x400uLL, "%s/%.16llx", (a1 + 256), a2);
  v5 = open(__str, 0x20000000);
  if (v5 < 0)
  {
LABEL_94:
    v41 = sub_100009620();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100017090();
    }

    return 22;
  }

  v6 = v5;
  if (fstat(v5, &v60) || (v60.st_mode & 0xF000) != 0x8000)
  {
    close(v6);
    goto LABEL_94;
  }

  if (!v60.st_size)
  {
    close(v6);
    return 22;
  }

  v7 = gzdopen(v6, "rb");
  if (!v7)
  {
    v44 = sub_100009620();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100017020();
    }

    close(v6);
    return *__error();
  }

  v8 = v7;
  v9 = malloc_type_zone_malloc(qword_1000246B8, 0x40000uLL, 0xC59CCA29uLL);
  if (!v9)
  {
    gzclose(v8);
    return 12;
  }

  v10 = v9;
  v11 = gzread(v8, v9, 0x10000u);
  if (v11 < 1)
  {
    v45 = 0;
    v13 = 0;
    goto LABEL_111;
  }

  v57 = 0;
  v58 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v56 = 0;
  v15 = 0;
  v16 = 0;
  v55 = v8;
  do
  {
    if (!v15 && v11 <= 0xB)
    {
      v46 = sub_100009620();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100016FA4();
      }

      goto LABEL_106;
    }

    v17 = v10->i32[0];
    if (v10->i32[0] > 1145852720)
    {
      if ((v17 - 1145852721) >= 3)
      {
        goto LABEL_25;
      }

      if (v16)
      {
        goto LABEL_26;
      }

      v12 = v10[1].i32[0];
    }

    else
    {
      if (v17 != 827542596 && v17 != 844319812 && v17 != 861097028)
      {
LABEL_25:
        v12 = v10[1].i32[0];
        if (v12 <= 0x40000)
        {
LABEL_26:
          if (v16)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        v51 = sub_100009620();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = v10->i32[0];
          *buf = 67109890;
          *v62 = v52;
          *&v62[4] = 1024;
          strcpy(&v62[6], "1SLD");
          v62[11] = 8;
          *&v62[12] = v56;
          *&v62[20] = 2080;
          *&v62[22] = __str;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "get_last_event_id: magic is wrong (0x%.8x != 0x%.8x; cur_pos %lld) in file %s", buf, 0x22u);
        }

LABEL_106:
        v47 = v8;
LABEL_107:
        gzclose(v47);
        malloc_zone_free(qword_1000246B8, v10);
        return 22;
      }

      if (v16)
      {
        goto LABEL_26;
      }

      v12 = bswap32(v10[1].u32[0]);
    }

LABEL_27:
    v58 = v10->i32[1];
    v10->i32[1] = 0;
LABEL_28:
    v16 += v11;
    v59 = v12;
    if (v16 < v12)
    {
      v15 += v11;
      goto LABEL_72;
    }

    v20 = sub_100008360(v10, v12);
    v21 = v20;
    if (v17 == 827542596 || v17 == 861097028 || v17 == 844319812)
    {
      v21 = bswap32(v20);
    }

    if (v58 != v21)
    {
      v22 = sub_100012F68(v10, v59);
      if (v58 != v22)
      {
        v49 = v22;
        v50 = sub_100009620();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          *v62 = v58;
          *&v62[4] = 1024;
          *&v62[6] = v49;
          *&v62[10] = 2080;
          *&v62[12] = __str;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "get_last_event_id: checksum mis-match: file 0x%.8x, calculated 0x%.8x in file %s", buf, 0x18u);
        }

        v47 = v55;
        goto LABEL_107;
      }
    }

    switch(v17)
    {
      case 827542596:
        v23 = 0;
        goto LABEL_42;
      case 861097028:
        v23 = 3;
        goto LABEL_42;
      case 844319812:
        v23 = 1;
LABEL_42:
        sub_100012FD4(v10, v16, v23);
        break;
    }

    v24 = v10[1].i32[0];
    if (v24 < 13)
    {
      v13 = &v10[1] + 4;
    }

    else
    {
      v25 = v10 + v24;
      v13 = &v10[1] + 4;
      while (1)
      {
        v26 = v13;
        do
        {
          if (!*v26)
          {
            break;
          }

          ++v26;
        }

        while (v26 < v25);
        if (v26 - v13 - 1024 <= 0xFFFFFFFFFFFFFBFELL)
        {
          break;
        }

        v13 = (v26 + 1);
        if (v26 + 1 >= v25)
        {
          v32 = sub_100009620();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v40 = v10[1].i32[0];
            *buf = 134218754;
            *v62 = v13 - v10;
            *&v62[8] = 1024;
            *&v62[10] = v40;
            *&v62[14] = 2080;
            *&v62[16] = __str;
            *&v62[24] = 1024;
            *&v62[26] = v57;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "get_last_event_id: ptr out-of-bounds (%ld > %d) in file %s (counter %d)", buf, 0x22u);
          }

          v33 = sub_100009620();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *v62 = v26;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "get_last_event_id: path was: <%s>", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v26 + 9 > v25)
        {
          v34 = sub_100009620();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_100016F0C(&v72, &v73);
          }

          goto LABEL_67;
        }

        if (v14 <= *(v26 + 1))
        {
          v14 = *(v26 + 1);
        }

        v13 = (v26 + 13);
        if (v26 + 13 > v25)
        {
          v35 = sub_100009620();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_100016EC0(&v70, &v71);
          }

          v13 = (v26 + 9);
          goto LABEL_67;
        }

        v27 = v10->i32[0];
        if (v10->i32[0] == 1145852722 || v27 == 844319812)
        {
          v28 = v26 + 21;
          if (v28 > v25)
          {
            v36 = sub_100009620();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_100016E28(&v68, &v69);
            }

            goto LABEL_67;
          }
        }

        else
        {
          v28 = v26 + 13;
        }

        if (v27 == 1145852723 || v27 == 861097028)
        {
          v13 = (v28 + 12);
          if (v28 + 12 > v25)
          {
            v38 = sub_100009620();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_100016E74(&v66, &v67);
            }

            v13 = v28;
            goto LABEL_67;
          }
        }

        else
        {
          v13 = v28;
        }

        if (v13 >= v25)
        {
          goto LABEL_67;
        }
      }

      v31 = sub_100009620();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100016F58(&v74, &v75);
      }
    }

LABEL_67:
    v15 = 0;
    if (v58 == v21)
    {
      v29 = v10[1].i32[0];
      v8 = v55;
      if (v29)
      {
        v15 = 0x40000 - v29;
        __memmove_chk();
      }
    }

    else
    {
      v8 = v55;
    }

    ++v57;
    v56 += v16;
    v16 = 0;
LABEL_72:
    if (0x40000 - v15 >= 0x10000)
    {
      v30 = 0x10000;
    }

    else
    {
      v30 = 0x40000 - v15;
    }

    v11 = gzread(v8, v10 + v15, v30);
    v12 = v59;
  }

  while (v11 > 0);
  if (v14)
  {
    v42 = 0;
    *a3 = v14 + 1;
    goto LABEL_113;
  }

  v45 = v10;
LABEL_111:
  v48 = sub_100009620();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    if (v45)
    {
      v53 = v45[1].i32[0];
      v54 = v45[1].i32[1];
    }

    else
    {
      v53 = -123;
      v54 = -123;
    }

    *buf = 134219008;
    *v62 = a2;
    *&v62[8] = 2048;
    *&v62[10] = v13;
    *&v62[18] = 2048;
    *&v62[20] = v10;
    *&v62[28] = 1024;
    v63 = v53;
    v64 = 1024;
    v65 = v54;
    _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "did not find any event id's in %.16llx (ptr %p buff %p / iptr[2] %d / iptr[3] %d\n", buf, 0x2Cu);
  }

  v42 = 22;
LABEL_113:
  malloc_zone_free(qword_1000246B8, v10);
  gzclose(v8);
  return v42;
}

uint64_t sub_10000FFAC(uint64_t a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  v3 = (a2 + 256);
  snprintf(__str, 0x400uLL, "%s/fseventsd-uuid", (a2 + 256));
  v4 = open(__str, 0x20000000);
  if (v4 < 0)
  {
    if ((*(a1 + 32) & 1) == 0 || strcmp(v3, "/tmp"))
    {
      v9 = sub_100009620();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001711C();
      }
    }

    return 2;
  }

  v5 = v4;
  if (fstat(v4, &v10) || (v10.st_mode & 0xF000) != 0x8000)
  {
    close(v5);
    return 22;
  }

  v6 = (a1 + 64);
  v7 = read(v5, (a1 + 64), 0x40uLL);
  if (v7 <= 0)
  {
    close(v5);
    unlink(__str);
    *v6 = 0;
    return 2;
  }

  if (v7 == 64)
  {
    close(v5);
    unlink(__str);
    *v6 = 0;
    return 22;
  }

  v6[v7] = 0;
  close(v5);
  result = uuid_parse((a1 + 64), (a1 + 48));
  if (result)
  {
    unlink(__str);
    return 22;
  }

  return result;
}

uint64_t sub_10001013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = strlen((a1 + 64));
    v7 = setxattr((a2 + 256), "fsevents.previous_uuid", (a1 + 64), v6, 0, 64);
    v8 = sub_100009620();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000171A8();
      }

      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "handle_device_config_xattr";
        v27 = 2080;
        v28 = (a1 + 64);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: [SET] prev_uuid_str<%s> ", buf, 0x16u);
      }

      v10 = 0;
    }

    v14 = (a1 + 192);
    snprintf(v14, 0x14uLL, "%llu", a3);
    v15 = strlen(v14);
    v16 = setxattr((a2 + 256), "fsevents.last_pruned_event_id", v14, v15, 0, 64);
    v17 = sub_100009620();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100017244();
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "handle_device_config_xattr";
        v27 = 2080;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: [SET] last_pruned_event_id<%s> ", buf, 0x16u);
      }

      v10 = 0;
    }

    sub_10000F14C((a2 + 256));
  }

  else
  {
    v11 = a1 + 128;
    v12 = getxattr((a2 + 256), "fsevents.previous_uuid", (a1 + 128), 0x40uLL, 0, 64);
    if (v12)
    {
      *(v11 + v12) = 0;
      v13 = sub_100009620();
      v10 = 0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "handle_device_config_xattr";
        v27 = 2080;
        v28 = (a1 + 128);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: [GET] prev_uuid_str<%s> ", buf, 0x16u);
        v10 = 0;
      }
    }

    else
    {
      v20 = sub_100009620();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000172E0();
      }

      v10 = 0xFFFFFFFFLL;
    }

    v21 = (a1 + 192);
    v22 = getxattr((a2 + 256), "fsevents.last_pruned_event_id", v21, 0x14uLL, 0, 64);
    if (v22)
    {
      *(v21 + v22) = 0;
      v23 = sub_100009620();
      v10 = 0;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "handle_device_config_xattr";
        v27 = 2080;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: [GET] last_pruned_event_id<%s> ", buf, 0x16u);
        return 0;
      }
    }

    else
    {
      v24 = sub_100009620();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10001737C();
      }
    }
  }

  return v10;
}

void sub_10001049C(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v2 = *(a1 + 216);
  if (v2 && !*(v2 + 28))
  {
    if (fsctl(*(a1 + 16), 0x40046818uLL, &v9, 0))
    {
      v4 = *(a2 + 40);
      if (v4 > 0x1388 || 100 * v4 / *(a2 + 8) >= 6)
      {
        v5 = sub_100009620();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v6 = v9 & 0x2204;
      v7 = sub_100009620();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        if (v8)
        {
LABEL_12:
          sub_100017418();
        }

LABEL_13:
        *(v2 + 28) = 1;
        return;
      }

      if (v8)
      {
        sub_10001748C();
      }
    }
  }
}

uint64_t sub_100010594()
{
  memset(&v5, 0, sizeof(v5));
  v4 = "/";
  memset(v3, 0, sizeof(v3));
  qword_1000246B0 = malloc_default_zone();
  v0 = getpid();
  if (sub_100005C24(v0, 0, &v4, 1u, 0, 0, 30000000, *(qword_100024748 + 24), -1, 256, sub_1000072C0, qword_100024748, 0, 0, v3, (qword_100024748 + 16)))
  {
    v1 = sub_100009620();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000177C0();
    }

    return 22;
  }

  else
  {
    *(*(qword_100024748 + 16) + 192) |= 0x20uLL;
    atomic_fetch_add_explicit(&dword_100024724, 1u, memory_order_relaxed);
    atomic_fetch_add_explicit(&dword_100024720, 1u, memory_order_relaxed);
    sub_10000A794(sub_10001072C);
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    pthread_create(&qword_100025828, &v5, sub_1000034A0, *(qword_100024748 + 16));
    pthread_attr_destroy(&v5);
    result = 0;
    __dmb(0xBu);
    dword_100024740 = 1;
  }

  return result;
}

uint64_t sub_10001072C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  if (v2 && !*(v2 + 16))
  {
    *(v2 + 16) = a2;
  }

  return 0;
}

uint64_t sub_100010748(uint64_t a1)
{
  v2 = *(a1 + 216);
  v4[0] = a1;
  v4[1] = v2;
  ptr = malloc_type_zone_malloc(qword_1000246B8, 0x40000uLL, 0xB239C3CDuLL);
  v6 = xmmword_10001B100;
  DWORD2(v6) = 12;
  sub_100007DA8(0, (v2 + 2304), sub_100007F94, v4);
  sub_1000080A0(a1, *(a1 + 216), v4, 1);
  malloc_zone_free(qword_1000246B8, ptr);
  return sub_1000087F4(v2 + 2304);
}

void sub_1000107F8(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (*(a1 + 36) < 1)
  {
    if (v2)
    {
      sub_1000087F4((v2 + 288));
      free(*(*(a1 + 216) + 2536));
      free(*(*(a1 + 216) + 2504));
      free(v2[5]);
      free(v2);
      *(a1 + 216) = 0;
    }
  }

  else
  {
    v3 = sub_100009620();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100017948();
    }
  }
}

uint64_t sub_100010890(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1)
  {
    if (dword_1000246C8 || v1 != qword_100024748)
    {
      if ((*(a1 + 32) & 1) != 0 || v1 != qword_100024748)
      {
        sub_100010748(a1);
        snprintf(__str, 0x400uLL, "%s/fseventsd-uuid", (v1 + 256));
        utimes(__str, 0);
        if ((*(a1 + 32) & 0x200) != 0)
        {
          sub_10000EDBC(v1, 1);
          sub_1000109E4(a1, v1, 0);
          if (rmdir((v1 + 256)))
          {
            v5 = sub_100009620();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              sub_1000179C4();
            }
          }
        }

        if (!dword_1000246C8)
        {
          *(a1 + 32) &= ~0x800u;
        }
      }

      else
      {
        v4 = sub_100009620();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_100017A50();
        }
      }
    }
  }

  return 0;
}

void sub_1000109E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 256);
  snprintf(__str, 0x400uLL, "%s/fseventsd-uuid", (a2 + 256));
  snprintf(v10, 0x400uLL, "%s/fseventsd-config", v6);
  if (a3)
  {
    sub_10001013C(a1, a2, a3);
    unlink(__str);
  }

  else
  {
    unlink(__str);
    unlink(v10);
    if (removexattr(*(a1 + 16), "com.apple.fsevents.previous_uuid", 64))
    {
      v7 = sub_100009620();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100017A8C();
      }
    }

    if (removexattr(*(a1 + 16), "com.apple.fsevents.last_pruned_event_id", 64))
    {
      v8 = sub_100009620();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100017B28();
      }
    }
  }
}

uint64_t sub_100010B24()
{
  *(qword_100024748 + 16) = 0;
  result = sub_10000A794(sub_100010890);
  qword_100024748 = 0;
  return result;
}

uint64_t sub_100010B68(uint64_t a1)
{
  v11 = **(a1 + 136);
  v8 = strlen(v11) + 1;
  v9 = 0;
  v6 = 0x40000000;
  v7 = 0;
  v2 = *(a1 + 152);
  v10 = v2;
  if (v2 > *(a1 + 160))
  {
    *(a1 + 160) = v2;
  }

  v5 = 0;
  v3 = *(a1 + 216);
  if (!v3)
  {
    return 0;
  }

  result = v3(*(a1 + 224), 1, &v8, &v11, &v6, &v5, &v10, &v9, &v7);
  if (result)
  {
    if (result == 268435459)
    {
      *(a1 + 192) |= 2uLL;
      return 268435459;
    }
  }

  else
  {
    *(a1 + 192) &= ~1uLL;
    *(a1 + 152) = 0;
  }

  return result;
}

uint64_t sub_100010C70(int a1, unint64_t a2, uint64_t *a3)
{
  result = sub_100006F34();
  if (result)
  {
    memset(&v18, 0, sizeof(v18));
    sub_1000021A0(&unk_100025758);
    *a3 = 0;
    v7 = sub_100009948(a1);
    if (v7)
    {
      v8 = v7;
      if ((*(v7 + 32) & 0x40) == 0)
      {
        v9 = *(v7 + 216);
        if (v9)
        {
          v10 = *(v9 + 32);
          if (v10 >= 1)
          {
            while (1)
            {
              snprintf(__str, 0x400uLL, "%s/%.16llx", (*(v8 + 216) + 256), *(*(*(v8 + 216) + 40) + 8 * v10 - 8));
              if (!lstat(__str, &v18) && (v18.st_mode & 0xF000) == 0x8000 && v18.st_ctimespec.tv_sec <= a2 && v18.st_size > 0)
              {
                break;
              }

              if (v10-- <= 1)
              {
                goto LABEL_11;
              }
            }

            v12 = v10 - 1;
            if (v10 == 1)
            {
LABEL_11:
              v11 = sub_100009620();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                sub_1000184B8();
              }

              *a3 = 0;
              return sub_1000024C8(&unk_100025758);
            }

            v13 = sub_10000F700(*(v8 + 216), *(*(*(v8 + 216) + 40) + 8 * v12), a3);
            if (v13)
            {
              v14 = v13;
              *a3 = *(*(*(v8 + 216) + 40) + 8 * v10 - 16);
              v15 = sub_100009620();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = *(*(*(v8 + 216) + 40) + 8 * v12);
                v17 = *a3;
                *buf = 67109888;
                v20 = v10 - 1;
                v21 = 2048;
                v22 = v17;
                v23 = 1024;
                v24 = v14;
                v25 = 2048;
                v26 = v16;
                _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed to get last id from log file %d so using last id == 0x%llx (ret %d; %.16llx)\n", buf, 0x22u);
              }
            }
          }
        }
      }
    }

    return sub_1000024C8(&unk_100025758);
  }

  return result;
}

uint64_t sub_100010EA0(int a1, unint64_t a2)
{
  if (!sub_100006F34())
  {
    return 0xFFFFFFFFLL;
  }

  sub_1000021A0(&unk_100025758);
  v4 = sub_100009948(a1);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  memset(&v21, 0, sizeof(v21));
  if ((*(v4 + 32) & 0x40) != 0 || (v6 = *(v4 + 216)) == 0 || !*(v6 + 32))
  {
    sub_1000024C8(&unk_100025758);
    return 0xFFFFFFFFLL;
  }

  pthread_rwlock_wrlock((v6 + 48));
  v7 = *(v5 + 216);
  if (*(v7 + 32) < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(v7 + 40) + 8 * v8);
      if (a2 != -1 && v11 >= a2)
      {
        break;
      }

      snprintf(__str, 0x400uLL, "%s/%.16llx", (v7 + 256), v11);
      if (!lstat(__str, &v21) && (v21.st_mode & 0xF000) == 0x8000)
      {
        v12 = sub_100009620();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = __str;
          v24 = 2048;
          st_size = v21.st_size;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "    purge_events: deleting: %s bytes(%lld)", buf, 0x16u);
        }

        unlink(__str);
        ++v9;
        v10 += v21.st_size;
      }

      ++v8;
      v7 = *(v5 + 216);
    }

    while (v8 < *(v7 + 32));
    if (v9)
    {
      analytics_send_event_lazy();
      sub_1000109E4(v5, *(v5 + 216), a2);
      sub_10000EFA4(v5, *(v5 + 216));
      v7 = *(v5 + 216);
    }
  }

  v14 = *(v7 + 32);
  v15 = *(v7 + 40);
  if (v14 <= v9)
  {
    free(v15);
    v19 = *(v5 + 216);
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
    ++*(v19 + 248);
    v20 = 1;
  }

  else
  {
    memmove(v15, &v15[8 * v9], 8 * (v14 - v9));
    v16 = *(v5 + 216);
    v17 = *(v16 + 36);
    v18 = *(v16 + 32) - v9;
    *(v16 + 32) = v18;
    bzero((*(v16 + 40) + 8 * v18), 8 * (v17 - v18));
    v19 = *(v5 + 216);
    v20 = *(v19 + 250) + 1;
  }

  *(v19 + 250) = v20;
  pthread_rwlock_unlock((v19 + 48));
  sub_1000024C8(&unk_100025758);
  return 0;
}

xpc_object_t sub_1000111AC(int64_t *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "archive_size", a1[4]);
  xpc_dictionary_set_int64(v2, "purge_count", a1[5]);
  xpc_dictionary_set_int64(v2, "seconds_since_last_purge", a1[6]);
  xpc_dictionary_set_int64(v2, "purge_source", 0);
  return v2;
}

uint64_t sub_100011230()
{
  v0 = __chkstk_darwin();
  memset(&v42, 0, sizeof(v42));
  bzero(&v44, 0x878uLL);
  v41 = 0;
  if (v0)
  {
    if ((*(v0 + 32) & 0x40) == 0)
    {
      v2 = v0 + 216;
      v1 = *(v0 + 216);
      if (v1)
      {
        if (*(v1 + 32))
        {
          v3 = sub_100009620();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_1000184F4(v0);
          }

          if ((*(v0 + 28) & 0x201) == 0)
          {
            v4 = *v2;
            snprintf(__str, 0x400uLL, "%s/fseventsd-config", (*v2 + 256));
            if (stat(__str, &v42))
            {
              v5 = sub_100009620();
              if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
              {
                v6 = *v0;
                v7 = *__error();
                v8 = __error();
                v9 = strerror(*v8);
                *buf = 136316162;
                v47 = "purge_history_policy";
                v48 = 2080;
                v49 = __str;
                v50 = 1024;
                *v51 = v6;
                *&v51[4] = 1024;
                *&v51[6] = v7;
                *&v51[10] = 2080;
                *&v51[12] = v9;
                _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: (%s) dev(%d) stat failed <%d>:<%s> ", buf, 0x2Cu);
              }

LABEL_11:
              v10 = fsctl(*(v0 + 16), 0x4004681BuLL, &v41, 0);
              v11 = sub_100009620();
              v12 = v11;
              if (v10)
              {
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  sub_100018598(v0, (v0 + 16));
                }
              }

              else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v18 = *(v0 + 16);
                v19 = *v0;
                *buf = 136316162;
                v47 = "purge_history_policy";
                v48 = 2048;
                v49 = v0;
                v50 = 2080;
                *v51 = v18;
                *&v51[8] = 1024;
                *&v51[10] = v19;
                *&v51[14] = 1024;
                *&v51[16] = v41;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: di %p (%s) dev(%d) - HFSIOC_GET_VERY_LOW_DISK blocks(%u) ", buf, 0x2Cu);
              }

              v20 = statfs(*(v0 + 16), &v44);
              v21 = sub_100009620();
              v22 = v21;
              if (v20)
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  sub_100018654(v0, (v0 + 16));
                }
              }

              else
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  v23 = *(v0 + 16);
                  v24 = *v0;
                  *buf = 136316674;
                  v47 = "purge_history_policy";
                  v48 = 2048;
                  v49 = v0;
                  v50 = 2080;
                  *v51 = v23;
                  *&v51[8] = 1024;
                  *&v51[10] = v24;
                  *&v51[14] = 1024;
                  *&v51[16] = v44.f_bsize;
                  *&v51[20] = 2048;
                  *&v51[22] = v44.f_bfree;
                  v52 = 2048;
                  f_blocks = v44.f_blocks;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: di %p (%s) dev(%d) - statfs  block_size<%u> free_blocks<%lld> allocated_blocks<%lld>", buf, 0x40u);
                }

                pthread_rwlock_wrlock((*v2 + 48));
                if (v41 && v44.f_bfree < v41)
                {
                  v25 = sub_100009620();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    sub_100018710((v0 + 216));
                  }

                  v26 = *v2;
                  if (*(*v2 + 32) < 1)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v27 = 0;
                    v28 = 0;
                    v29 = 0;
                    do
                    {
                      snprintf(buf, 0x400uLL, "%s/%.16llx", (v26 + 256), *(*(v26 + 40) + 8 * v27));
                      if (!lstat(buf, &v42) && (v42.st_mode & 0xF000) == 0x8000)
                      {
                        v30 = sub_100009620();
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                        {
                          *v43 = 136315394;
                          *&v43[4] = buf;
                          *&v43[12] = 2048;
                          *&v43[14] = v42.st_size;
                          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "    purge_events: deleting: %s bytes(%lld)", v43, 0x16u);
                        }

                        unlink(buf);
                        ++v29;
                        v28 += v42.st_size;
                      }

                      ++v27;
                      v26 = *v2;
                    }

                    while (v27 < *(*v2 + 32));
                    if (v29)
                    {
                      analytics_send_event_lazy();
                      sub_1000109E4(v0, *(v0 + 216), *(*(v0 + 216) + 8));
                      sub_10000EFA4(v0, *(v0 + 216));
                      v26 = *(v0 + 216);
                    }
                  }

                  v34 = *(v26 + 32);
                  v35 = *(v26 + 40);
                  if (v34 <= v29)
                  {
                    free(v35);
                    v33 = *v2;
                    *(v33 + 32) = 0;
                    *(v33 + 40) = 0;
                    ++*(v33 + 248);
                    v39 = 1;
                  }

                  else
                  {
                    memmove(v35, &v35[8 * v29], 8 * (v34 - v29));
                    v36 = *v2;
                    v37 = *(*v2 + 36);
                    v38 = *(*v2 + 32) - v29;
                    *(v36 + 32) = v38;
                    bzero((*(v36 + 40) + 8 * v38), 8 * (v37 - v38));
                    v33 = *v2;
                    v39 = *(*v2 + 250) + 1;
                  }

                  *(v33 + 250) = v39;
                }

                else
                {
                  v33 = *v2;
                }

                pthread_rwlock_unlock((v33 + 48));
              }

              return 0;
            }

            *v43 = 0;
            *&v43[8] = 0;
            gettimeofday(v43, 0);
            v13 = *v43 - v42.st_mtimespec.tv_sec;
            v14 = sub_100009620();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
            if (v13 >= 604801)
            {
              if (v15)
              {
                v16 = *v0;
                v17 = *(v4 + 8);
                *buf = 136316162;
                v47 = "purge_history_policy";
                v48 = 2080;
                v49 = __str;
                v50 = 1024;
                *v51 = v16;
                *&v51[4] = 2048;
                *&v51[6] = v13;
                *&v51[14] = 2048;
                *&v51[16] = v17;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: (%s) dev(%d) Check purge threshold - delta(%ld) last_id(%llu)", buf, 0x30u);
              }

              goto LABEL_11;
            }

            if (v15)
            {
              v31 = *v0;
              v32 = *(v4 + 8);
              *buf = 136316162;
              v47 = "purge_history_policy";
              v48 = 2080;
              v49 = __str;
              v50 = 1024;
              *v51 = v31;
              *&v51[4] = 2048;
              *&v51[6] = v13;
              *&v51[14] = 2048;
              *&v51[16] = v32;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: (%s) dev(%d) Cooldown period for purge threshold - delta(%ld) last_id(%llu)", buf, 0x30u);
            }
          }
        }
      }
    }
  }

  return 0;
}

xpc_object_t sub_100011928(int64_t *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "archive_size", a1[4]);
  xpc_dictionary_set_int64(v2, "purge_count", a1[5]);
  xpc_dictionary_set_int64(v2, "seconds_since_last_purge", a1[6]);
  xpc_dictionary_set_int64(v2, "purge_source", 1);
  return v2;
}

uint64_t sub_1000119AC()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return sub_10000A794(sub_100011230);
  }

  return result;
}

uint64_t sub_100011A04()
{
  memset(&v13, 0, sizeof(v13));
  v12 = 0;
  signal(2, sub_10000DA84);
  signal(3, sub_10000DA84);
  signal(15, sub_10000DA84);
  signal(1, sub_10000DA84);
  signal(30, 1);
  global_queue = dispatch_get_global_queue(-32768, 0);
  qword_100024290 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, global_queue);
  dispatch_source_set_event_handler(qword_100024290, &stru_1000208A8);
  dispatch_resume(qword_100024290);
  dispatch_get_global_queue(0, 0);
  os_state_add_handler();
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_uint64(v1, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v1, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v1, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000120B8;
  handler[3] = &unk_100020908;
  handler[4] = v1;
  xpc_activity_register("com.apple.fseventsd.daily", v1, handler);
  for (i = 0; i != 256; ++i)
  {
    v3 = i << 24;
    v4 = 8;
    do
    {
      if (v3 >= 0)
      {
        v3 *= 2;
      }

      else
      {
        v3 = (2 * v3) ^ 0x4C11DB7;
      }

      --v4;
    }

    while (v4);
    dword_100024298[i] = v3;
  }

  dword_10002473C = 2;
  qword_100024730 = sub_10000D850(2, 0x10000);
  if (qword_100024730)
  {
    zone = malloc_create_zone(0, 0);
    qword_1000246A8 = zone;
    if (zone)
    {
      malloc_set_zone_name(zone, "PathStringZone");
    }

    qword_100025848 = 0;
    *&dword_100025850 = 0;
    qword_100025848 = sub_1000083CC(4096, &dword_100025854);
    qword_1000246C0 = malloc_default_zone();
    qword_100025830 = 0;
    qword_100025840 = 0;
    qword_100025838 = 0;
    qword_100025830 = sub_1000083CC(4096, &qword_100025838);
    bzero(&xmmword_100024758, 0x1000uLL);
    bzero(dword_1000258D8, 0x1000uLL);
    sub_10000C1C4();
    if (!qword_100024748)
    {
      v9 = sub_100009620();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100018860();
      }

      while (1)
      {
        sleep(0x15180u);
      }
    }

    pthread_cond_init(&stru_100024200, 0);
    pthread_mutex_init(&stru_1000241C0, 0);
    pthread_mutex_init(&stru_100024140, 0);
    v14[0] = 0x101010101010101;
    v14[1] = 0x101010101010101;
    if (!sub_10000BD0C(1, v14, 16, 0x2000))
    {
      ioctl(dword_100024048, 0x20007365uLL, 0);
      if (!ioctl(dword_100024048, 0x20007366uLL, 0))
      {
        byte_100024288 = 1;
      }

      pthread_attr_init(&v13);
      pthread_create(&v12, &v13, sub_100000950, 0);
      pthread_attr_destroy(&v13);
      if (sub_100010594())
      {
        v10 = sub_100009620();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100018824();
        }
      }

      pthread_mutex_lock(&stru_100024090);
      dword_100024750 = 1;
      pthread_cond_broadcast(&stru_1000240D0);
      pthread_mutex_unlock(&stru_100024090);
      sub_100000C88();
      pthread_join(v12, 0);
      sub_10000D6F4();
      while (dword_100024724)
      {
        usleep(0xC350u);
      }

      sub_100010B24();
      exit(0);
    }

    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001879C();
    }

    return 22;
  }

  else
  {
    v8 = sub_100009620();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001889C();
    }

    return 12;
  }
}

os_state_data_s *__cdecl sub_100011EC0(id a1, os_state_hints_s *a2)
{
  if (a2->var2 != 3)
  {
    v11 = sub_100009620();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000188D8();
    }

    return 0;
  }

  v2 = sub_10000DB50();
  if (!v2)
  {
    v12 = sub_100009620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100018990();
    }

    return 0;
  }

  v3 = v2;
  Data = CFPropertyListCreateData(kCFAllocatorDefault, v2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  Length = CFDataGetLength(Data);
  if (Length <= 0x8000)
  {
    CFRelease(v3);
    v10 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
    __strlcpy_chk();
    *v10 = 1;
    *(v10 + 1) = Length;
    v15.location = 0;
    v15.length = Length;
    CFDataGetBytes(Data, v15, v10 + 200);
  }

  else
  {
    v6 = sub_100009620();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100018914();
    }

    Value = CFDictionaryGetValue(v3, @"global_state");
    v8 = CFPropertyListCreateData(kCFAllocatorDefault, Value, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(v3);
    v9 = CFDataGetLength(v8);
    v10 = malloc_type_calloc(1uLL, v9 + 200, 0x1000040BEF03554uLL);
    __strlcpy_chk();
    *v10 = 1;
    *(v10 + 1) = v9;
    v14.location = 0;
    v14.length = v9;
    CFDataGetBytes(v8, v14, v10 + 200);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (Data)
  {
    CFRelease(Data);
  }

  return v10;
}

void sub_1000120B8(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {

    sub_1000119AC();
  }

  else if (!state)
  {
    v5 = *(a1 + 32);

    xpc_activity_set_criteria(activity, v5);
  }
}

uint64_t sub_100012130()
{
  sub_100011A04();
  v0 = sub_100009620();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100018A34();
  }

  return 0;
}

uint64_t sub_100012174(uint64_t a1, void *a2)
{
  result = sub_100006F34();
  if (result)
  {
    v5 = 0;
    while (2)
    {
      pthread_mutex_lock(&stru_100024140);
      v6 = 0;
      while (1)
      {
        v7 = *(&xmmword_100024758 + v6);
        if (v7)
        {
          if (*(v7 + 224) == a1)
          {
            break;
          }
        }

        v6 += 8;
        if (v6 == 4096)
        {

          return pthread_mutex_unlock(&stru_100024140);
        }
      }

      if (pthread_mutex_trylock(*(&xmmword_100024758 + v6)))
      {
        pthread_mutex_unlock(&stru_100024140);
        result = sleep(1u);
        if (++v5 != 10)
        {
          continue;
        }
      }

      else
      {
        if ((*(v7 + 192) & 0x800) != 0)
        {
          memset(&v9, 0, sizeof(v9));
          v8 = 0;
          if ((*(v7 + 192) & 0x20) != 0)
          {
            sub_100018BD4();
          }

          *(v7 + 192) &= ~0x800uLL;
          pthread_attr_init(&v9);
          pthread_attr_setdetachstate(&v9, 2);
          pthread_create(&v8, &v9, sub_1000034A0, v7);
          pthread_attr_destroy(&v9);
        }

        pthread_cond_signal((v7 + 64));
        pthread_mutex_unlock(v7);
        *a2 = *(v7 + 160);
        return pthread_mutex_unlock(&stru_100024140);
      }

      break;
    }
  }

  return result;
}

uint64_t sub_10001232C(_DWORD *a1, void *a2)
{
  v3 = qword_1000246E8;
  if (!qword_1000246E8)
  {
    if (dword_1000246C8)
    {
      return 2;
    }

    v5 = sub_100009620();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100018C00();
    }

    MEMORY[0x123] = 195936478;
    v3 = qword_1000246E8;
    if (!qword_1000246E8)
    {
      return 2;
    }

    goto LABEL_12;
  }

  if (*(qword_1000246E8 + 8) < 1)
  {
LABEL_12:
    LODWORD(v4) = 0;
    goto LABEL_13;
  }

  v4 = 0;
  do
  {
    if ((*(*(*qword_1000246E8 + 8 * v4) + 32) & 0x50) == 0 && **(*qword_1000246E8 + 8 * v4) == *a1)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(qword_1000246E8 + 8));
LABEL_13:
  if (v4 < *(v3 + 8))
  {
    result = 0;
    *a2 = *(*v3 + 8 * v4);
    return result;
  }

  return 2;
}

uint64_t sub_100012420()
{
  v0 = kqueue();
  if ((v0 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  v3.ident = 0;
  *&v3.filter = 131063;
  memset(&v3.fflags, 0, 20);
  if (kevent(v0, &v3, 1, 0, 0, 0))
  {
    close(v1);
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_100012498(__CFFileDescriptor *a1)
{
  v1 = a1;
  NativeDescriptor = CFFileDescriptorGetNativeDescriptor(a1);
  memset(&eventlist, 0, sizeof(eventlist));
  *timeout = 0;
  *&timeout[8] = 0;
  do
  {
    if (dword_1000246C8 || kevent(NativeDescriptor, 0, 0, &eventlist, 1, timeout) != -1)
    {
      goto LABEL_13;
    }
  }

  while (*__error() == 4);
  v3 = *__error();
  if (!v3)
  {
LABEL_13:
    if (dword_1000246C8)
    {
      goto LABEL_14;
    }

    v81 = 0;
    if (qword_100024748)
    {
      v10 = *(qword_100024748 + 16);
      if (v10)
      {
        sub_1000033CC(v10);
      }
    }

    v11 = sub_10000C670(&v81);
    if (v11 <= 0)
    {
      v37 = sub_100009620();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100018EA4();
      }

      goto LABEL_14;
    }

    v12 = v11;
    v78 = v1;
    usleep(0xC350u);
    sub_10000BC5C(&unk_100025758);
    v13 = qword_1000246E8;
    if (*(qword_1000246E8 + 8) >= 1)
    {
      v14 = 0;
      do
      {
        *(*(*v13 + 8 * v14++) + 32) |= 8u;
      }

      while (v14 < *(v13 + 8));
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v81;
    v79 = v12;
    do
    {
      v19 = &v18[2168 * v15];
      *v19 = 0;
      if (*(v13 + 8) < 1)
      {
        LODWORD(v20) = 0;
      }

      else
      {
        v20 = 0;
        v21 = &v18[2168 * v15];
        while ((*(*(*v13 + 8 * v20) + 32) & 0x4030) != 0 || *(v21 + 12) != **(*v13 + 8 * v20) || !*(*(*v13 + 8 * v20) + 8) || strcmp(v21 + 88, *(*(*v13 + 8 * v20) + 8)))
        {
          if (++v20 >= *(v13 + 8))
          {
            goto LABEL_34;
          }
        }

        *(*(*v13 + 8 * v20) + 32) &= ~8u;
        ++v16;
        sub_10001049C(*(*v13 + 8 * v20), &v18[2168 * v15]);
        v13 = qword_1000246E8;
      }

LABEL_34:
      if (v20 >= *(v13 + 8))
      {
        v17 = 1;
        *v19 = 1;
        ++v16;
      }

      ++v15;
    }

    while (v15 != v79);
    if (*(v13 + 8) < 1)
    {
      v29 = 1;
      if (v17)
      {
LABEL_55:
        v30 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
        if (!v30)
        {
          v41 = sub_100009620();
          v1 = v78;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100018E68();
          }

          sub_1000024C8(&unk_100025758);
          free(v18);
          goto LABEL_14;
        }

        v31 = v30;
        v32 = malloc_type_calloc(v16, 8uLL, 0x2004093837F09uLL);
        if (!v32)
        {
          v42 = sub_100009620();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_100018E2C();
          }

          sub_1000024C8(&unk_100025758);
          free(v31);
          free(v18);
          v1 = v78;
          goto LABEL_14;
        }

        v33 = v32;
        v34 = qword_1000246E8;
        if (*(qword_1000246E8 + 8) < 1)
        {
          v36 = 0;
        }

        else
        {
          v35 = 0;
          v36 = 0;
          do
          {
            if ((*(*(*v34 + 8 * v35) + 32) & 0x4000) == 0)
            {
              v32[v36++] = *(*v34 + 8 * v35);
              v34 = qword_1000246E8;
            }

            ++v35;
          }

          while (v35 < *(v34 + 8));
        }

        v43 = 0;
        while (1)
        {
          v80 = 0;
          v44 = &v18[2168 * v43];
          if (*v44)
          {
            break;
          }

LABEL_110:
          if (++v43 == v79)
          {
            goto LABEL_114;
          }
        }

        v45 = malloc_type_calloc(0xE0uLL, 1uLL, 0x1030040A2EC980AuLL);
        v33[v36] = v45;
        if (!v45)
        {
          v65 = sub_100009620();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            LODWORD(eventlist.ident) = 136315138;
            *(&eventlist.ident + 4) = &v18[2168 * v43 + 88];
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "NO MEMORY for new device for mount point %s\n", &eventlist, 0xCu);
          }

LABEL_114:
          if (v36 != v16)
          {
            v66 = sub_100009620();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              sub_100018DBC();
            }
          }

          v67 = v31;
          *v31 = v33;
          v31[2] = v36;
          v68 = qword_1000246E8;
          qword_1000246E8 = v31;
          if (v68)
          {
            v69 = *(v68 + 8);
            v1 = v78;
            if (v69 >= 1)
            {
              for (i = 0; i < v69; ++i)
              {
                v71 = *(*v68 + 8 * i);
                if ((*(v71 + 32) & 0x4000) != 0)
                {
                  sub_1000107F8(v71);
                  free(*(*v68 + 8 * i));
                  *(*v68 + 8 * i) = 0;
                  v69 = *(v68 + 8);
                }
              }

              v36 = v67[2];
            }
          }

          else
          {
            v1 = v78;
          }

          if (v36 >= 1)
          {
            v72 = 0;
            v73 = *v67;
            do
            {
              v74 = *(v73 + 8 * v72);
              if ((*(v74 + 32) & 0x800) != 0)
              {
                sub_100010890(v74);
                v73 = *v67;
                v74 = *(*v67 + 8 * v72);
                *(v74 + 32) &= ~0x800u;
              }

              if ((*(v74 + 32) & 0x10) != 0)
              {
                v75 = *(v74 + 8);
                if (v75)
                {
                  free(v75);
                  v76 = *v67;
                  *(*(*v67 + 8 * v72) + 8) = 0;
                  free(*(*(v76 + 8 * v72) + 16));
                  v73 = *v67;
                  *(*(*v67 + 8 * v72) + 16) = 0;
                  v77 = *(v73 + 8 * v72);
                  *v77 = 0;
                }

                else
                {
                  v77 = *(v73 + 8 * v72);
                }

                if (!v77[9])
                {
                  v77[8] |= 0x4000u;
                }
              }

              ++v72;
            }

            while (v72 < v67[2]);
          }

          sub_1000024C8(&unk_100025758);
          free(*v68);
          free(v68);
          free(v18);
LABEL_137:
          atomic_fetch_add_explicit(&dword_1000246CC, 1u, memory_order_relaxed);
          sub_10000DA38();
LABEL_14:
          v9 = v1;
LABEL_15:
          CFFileDescriptorEnableCallBacks(v9, 1uLL);
          return;
        }

        v46 = v45;
        v47 = &v18[2168 * v43];
        *v45 = *(v47 + 12);
        v48 = strdup(v47 + 88);
        *(v46 + 1) = v48;
        if (sub_10000C724(v47 + 88, &eventlist))
        {
          *(v33[v36] + 16) = strdup(&eventlist);
          v48 = *(v33[v36] + 16);
        }

        else
        {
          v49 = sub_100009620();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v60 = *v33[v36];
            *timeout = 136315650;
            *&timeout[4] = "handle_vfs_event";
            *&timeout[12] = 2080;
            *&timeout[14] = v48;
            v83 = 1024;
            v84 = v60;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s: Could not resolve nofirmlink  path, fallback to mount_point[%s] dev[%d]\n", timeout, 0x1Cu);
          }

          *(v33[v36] + 16) = strdup(v47 + 88);
        }

        v50 = v48;
        do
        {
          while (1)
          {
            v52 = *v50++;
            v51 = v52;
            if (v52 != 47)
            {
              break;
            }

            ++*(v33[v36] + 24);
          }
        }

        while (v51);
        v53 = v33[v36];
        if (v48[1])
        {
          ++*(v53 + 24);
        }

        *(v53 + 32) = 36;
        v54 = sub_10000C854(v44, &v80);
        v55 = v33[v36];
        v56 = *(v55 + 32);
        if (v54)
        {
          *(v55 + 32) = v56 | 0x100;
          v57 = v80;
          if (v80)
          {
LABEL_102:
            if (v57 == 2)
            {
              *(v33[v36] + 32) |= 0x8040u;
              v59 = sub_100009620();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v63 = v33[v36];
                v64 = *(v63 + 8);
                LODWORD(v63) = *v63;
                *timeout = 136315650;
                *&timeout[4] = "handle_vfs_event";
                *&timeout[12] = 2080;
                *&timeout[14] = v64;
                v83 = 1024;
                v84 = v63;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s: mount_point(%s) dev(%d) will be completely ignored", timeout, 0x1Cu);
              }
            }

            else if (v57 == 1)
            {
              v58 = sub_100009620();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v61 = v33[v36];
                v62 = *(v61 + 8);
                LODWORD(v61) = *v61;
                *timeout = 136315650;
                *&timeout[4] = "handle_vfs_event";
                *&timeout[12] = 2080;
                *&timeout[14] = v62;
                v83 = 1024;
                v84 = v61;
                _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%s: Logging disabled (no_log) completely for device: mount_point(%s) dev(%d)", timeout, 0x1Cu);
              }

              *(v33[v36] + 32) |= 0x1000u;
            }

            ++v36;
            goto LABEL_110;
          }

          sub_10000CA34();
        }

        else
        {
          *(v55 + 32) = v56 | 0x40;
        }

        v57 = v80;
        goto LABEL_102;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        if ((*(*(*v13 + 8 * v22) + 32) & 0x4000) != 0)
        {
          v17 = 1;
        }

        else if ((*(*(*v13 + 8 * v22) + 32) & 8) != 0 && (*(*(*v13 + 8 * v22) + 32) & 0x30) == 0)
        {
          *(*(*v13 + 8 * v22) + 32) &= 0xFFFFFFF3;
          ++v16;
          v24 = *(*v13 + 8 * v22);
          v25 = *(v24 + 32);
          v26 = v25 | 0x800;
          v27 = v25 & 0xFFFFFF7F;
          if ((*(v24 + 32) & 0x80) != 0)
          {
            v28 = v27;
          }

          else
          {
            v28 = v26;
          }

          *(v24 + 32) = v28;
          *(*(*v13 + 8 * v22) + 32) |= 0x20u;
          v23 = 1;
        }

        else if ((*(*(*v13 + 8 * v22) + 32) & 8) != 0 && (*(*(*v13 + 8 * v22) + 32) & 0x30) != 0)
        {
          ++v16;
          *(*(*v13 + 8 * v22) + 32) &= ~8u;
        }

        ++v22;
      }

      while (v22 < *(v13 + 8));
      v29 = v23 == 0;
      if (v17)
      {
        goto LABEL_55;
      }
    }

    sub_1000024C8(&unk_100025758);
    free(v18);
    v1 = v78;
    if (!v29)
    {
      goto LABEL_137;
    }

    goto LABEL_14;
  }

  v4 = sub_100009620();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100018C3C();
  }

  if (v3 != 9)
  {
    CFFileDescriptorInvalidate(v1);
    CFRelease(v1);
  }

  v5 = sub_100012420();
  if (v5 < 0)
  {
    v38 = sub_100009620();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100018D3C();
    }
  }

  else
  {
    v6 = CFFileDescriptorCreate(0, v5, 1u, sub_100012498, 0);
    RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v6, 0);
    if (RunLoopSource)
    {
      v8 = RunLoopSource;
      CFRunLoopAddSource(qword_1000246F8, RunLoopSource, kCFRunLoopDefaultMode);
      CFRelease(v8);
      v9 = v6;
      goto LABEL_15;
    }

    v39 = sub_100009620();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100018CBC();
    }

    CFFileDescriptorInvalidate(v6);
    CFRelease(v6);
  }

  dword_1000246C8 = 1;
  __dmb(0xBu);
  v40 = dword_100024048;
  if ((dword_100024048 & 0x80000000) == 0)
  {
    dword_100024048 = -1;
    close(v40);
  }
}

uint64_t sub_100012F68(_BYTE *a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 ^= dword_100024298[v3 ^ HIBYTE(v2)];
      --a2;
    }

    while (a2);
  }

  else
  {
    v4 = *a1;
    if (*a1)
    {
      v2 = 0;
      v5 = a1 + 1;
      do
      {
        v2 ^= dword_100024298[v4 ^ HIBYTE(v2)];
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }

    else
    {
      v2 = 0;
    }
  }

  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void sub_100012FD4(int8x8_t *a1, uint64_t a2, char a3)
{
  *a1 = vrev32_s8(*a1);
  v3 = bswap32(a1[1].u32[0]);
  a1[1].i32[0] = v3;
  if ((v3 - 13) <= 0x3FFF3 && v3 <= a2)
  {
    v5 = a1 + v3;
    v6 = (&a1[1] + 4);
    while (1)
    {
      v7 = v6;
      do
      {
        if (!*v7)
        {
          break;
        }

        v7 = (v7 + 1);
      }

      while (v7 < v5);
      v8 = v7 - v6 + 1;
      if (v8 >= 0x401)
      {
        break;
      }

      v9 = v6 + v8;
      if (v9 >= v5)
      {
        return;
      }

      if ((v9 + 8) > v5)
      {
        v13 = sub_100009620();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100019060();
        }

        return;
      }

      *v9 = bswap64(*v9);
      v6 = (v9 + 12);
      if ((v9 + 12) > v5)
      {
        v14 = sub_100009620();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100018FE0();
        }

        return;
      }

      *(v9 + 2) = bswap32(*(v9 + 2));
      v10 = a1[1].i32[0];
      if (a3)
      {
        v11 = (v9 + 20);
        if (v11 > a1 + v10)
        {
          v15 = sub_100009620();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100018EE0();
          }

          return;
        }

        *v6 = bswap64(*v6);
        v6 = v11;
      }

      if ((a3 & 2) != 0)
      {
        if (v6 + 4 > a1 + v10)
        {
          v16 = sub_100009620();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100018F60();
          }

          return;
        }

        *v6 = bswap32(*v6);
        v10 = a1[1].i32[0];
        v6 = (v6 + 4);
      }

      v5 = a1 + v10;
      if (v6 >= v5)
      {
        return;
      }
    }

    v12 = sub_100009620();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000190E0();
    }
  }
}

char *sub_100013194(const char *a1)
{
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  v3 = v2;
  if (v2)
  {
    if (a1 && *a1)
    {
      v4 = &a1[strlen(a1) - 1];
      while (v4 > a1)
      {
        v5 = *v4--;
        if (v5 != 47)
        {
          while (v4 > a1)
          {
            v6 = *v4--;
            if (v6 == 47)
            {
              ++v4;
              goto LABEL_13;
            }
          }

          goto LABEL_19;
        }
      }

LABEL_13:
      v7 = v4 - a1;
      if (v4 == a1)
      {
LABEL_19:
        if (*a1 == 47)
        {
          v11 = 47;
        }

        else
        {
          v11 = 46;
        }

        *v3 = v11;
        v3[1] = 0;
        return v3;
      }

      v8 = (v4 - 1);
      do
      {
        v9 = v7;
        if (v8 <= a1)
        {
          break;
        }

        v10 = *v8--;
        --v7;
      }

      while (v10 == 47);
      if (v9 < 0x400)
      {
        __memcpy_chk();
        v3[v9] = 0;
      }

      else
      {
        *__error() = 63;
        free(v3);
        return 0;
      }
    }

    else
    {
      *v2 = 46;
    }
  }

  return v3;
}

uint64_t sub_1000132DC(unsigned int *a1, size_t *a2, const char **a3, _DWORD *a4, unsigned int *a5, void *a6, void *a7, unsigned int *a8)
{
  v8 = a1[354];
  if (v8 > 0x1F)
  {
    sub_100019300();
  }

  v12 = a1 + 258;
  v13 = a1 + 66;
  v14 = a1 + 98;
  v15 = a1 + 2;
  if ((*(*a1 + 192) & 0x100) != 0)
  {
    v16 = *a2;
    v17 = *a3;
  }

  else
  {
    v16 = *a2;
    v17 = *a3;
    if (v8)
    {
      v25 = a1 + 98;
      v26 = a4;
      v27 = a5;
      v28 = a6;
      v18 = *&v12[2 * (v8 - 1)];
      if (!strncmp(v18, v17, v16))
      {
        a5 = v27;
        a6 = v28;
        v14 = v25;
        a4 = v26;
        if (!v18[v16 - 1])
        {
          result = 0;
          v13[(v8 - 1)] |= *v26;
          *&v25[2 * a1[354] - 2] = *v28;
          return result;
        }
      }

      else
      {
        a5 = v27;
        a6 = v28;
        v14 = v25;
        a4 = v26;
      }
    }
  }

  *&v15[2 * v8] = v16;
  v13[v8] = *a4;
  v19 = a1[354];
  *&v14[2 * v19] = *a6;
  a1[v19 + 322] = *a5;
  v20 = strdup(v17);
  v21 = a1[354];
  *&v12[2 * v21] = v20;
  *&a1[2 * v21 + 162] = *a7;
  a1[v21 + 226] = *a8;
  v22 = a1[354];
  if (*&v12[2 * v22])
  {
    result = 0;
  }

  else if (*a3)
  {
    result = 12;
  }

  else
  {
    result = 0;
  }

  v24 = v22 + 1;
  a1[354] = v24;
  if (v24 >= 0x20)
  {

    return sub_100009FA4(a1);
  }

  return result;
}

_BYTE *sub_1000134EC(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t *sub_1000135D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

unsigned int *sub_10001364C(unsigned int *result)
{
  v2 = *result;
  v3 = *(v1 + 4) & 0xF000;
  return result;
}

uint64_t sub_100013664@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

uint64_t sub_10001367C(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 66007) >= 0xFFFFFFF9)
  {
    return *(&off_100020988 + 5 * (v1 - 66000) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_1000136BC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10000BA18(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

uint64_t sub_100013738(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10000BA8C(*(result + 12), *(result + 32), *(result + 36), (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

uint64_t sub_1000137C0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 44) || *(result + 48) <= 7u)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  result = sub_10000BAB4(*(result + 12), *(result + 32), *(result + 36), (a2 + 36), *(result + 56));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_1000138FC()
{
  sub_10000BB10();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013994(mach_error_t a1)
{
  mach_error_string(a1);
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100013ADC()
{
  sub_10000BAFC();
  sub_10000BB5C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100013B5C()
{
  sub_10000BAFC();
  sub_10000BB5C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100013BDC()
{
  sub_10000BB10();
  sub_10000BB5C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100013C60(mach_error_t a1)
{
  mach_error_string(a1);
  sub_10000BB3C();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100013CF0(mach_error_t a1)
{
  mach_error_string(a1);
  sub_10000BB3C();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100013D80()
{
  sub_10000BAFC();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013DFC()
{
  sub_10000BAFC();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013EF8()
{
  sub_10000BB10();
  sub_10000BB5C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100013F7C()
{
  sub_10000BAFC();
  sub_10000BB5C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100013FFC()
{
  sub_10000BAFC();
  sub_10000BB5C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10001407C()
{
  sub_10000BAFC();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000140F8()
{
  sub_10000BAFC();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100014354(uint64_t a1, mach_error_t error_value)
{
  v2 = *(*a1 + 4);
  mach_error_string(error_value);
  sub_10000BB94();
  sub_10000BB68();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000143F8(unsigned int *a1, mach_error_t error_value)
{
  v2 = *a1;
  mach_error_string(error_value);
  sub_10000BB94();
  sub_10000BB68();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_100014498(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = 134218496;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "dealloc_client: DANGER: clientp %p (%p) has refcount %d", &v5, 0x1Cu);
}

void sub_1000145AC(mach_error_t a1)
{
  mach_error_string(a1);
  sub_10000BB3C();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10001463C(mach_error_t a1)
{
  mach_error_string(a1);
  sub_10000BB3C();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000146CC(os_log_t log)
{
  v1 = 136315394;
  v2 = "callback_client";
  v3 = 2080;
  v4 = "j == paths_blob_size";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "fseventsd: %s(): failed assertion '%s'\n", &v1, 0x16u);
}

void sub_1000147DC(int a1)
{
  strerror(a1);
  sub_1000134B8();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100014868(int a1)
{
  strerror(a1);
  sub_1000134B8();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100014974(int a1, unsigned int *a2)
{
  strerror(a1);
  v3 = *a2;
  sub_10001354C();
  sub_1000135F0();
  sub_10000BB68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100014A90(int a1, unsigned int *a2)
{
  strerror(a1);
  v3 = *a2;
  sub_10001354C();
  sub_1000135F0();
  sub_10000BB68();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100014B58()
{
  v0 = __error();
  strerror(*v0);
  sub_100013534();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100014BE0()
{
  sub_10000BB10();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100014C60()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100014C9C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000BB10();
  sub_1000134CC();
  sub_10000BB68();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100014DC0(uint64_t *a1)
{
  sub_1000135D4(a1, __stack_chk_guard);
  sub_10001354C();
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100014E40()
{
  sub_10001359C();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100014EC0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000BB10();
  sub_1000134CC();
  sub_10000BB68();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100014F64(uint64_t a1)
{
  sub_100013664(a1, __stack_chk_guard);
  sub_10001359C();
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100014FD4()
{
  sub_100013640();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100013670();
  sub_100013508();
  sub_1000134CC();
  sub_10000BB68();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100015078()
{
  sub_1000134DC();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000150F0()
{
  sub_100013534();
  sub_100013508();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100015168()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000151D8()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100015248()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000152B8(uint64_t a1)
{
  sub_100013664(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10000BB10();
  sub_10000BB20();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100015334()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015470()
{
  sub_100013534();
  sub_100013508();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000154E8()
{
  sub_100013534();
  sub_100013508();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100015560(uint64_t a1)
{
  v1 = *(a1 + 120);
  sub_10001359C();
  sub_10000BB30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000155D4(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 28);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  sub_100013514();
  sub_10000BB30();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Au);
}

void sub_100015664()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015798(unsigned int *a1)
{
  v1 = *a1;
  sub_100013514();
  sub_10000BB30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100015840()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000158A8()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000158E4(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100013514();
  sub_10000BB20();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1000159E0(uint64_t *a1)
{
  sub_1000135D4(a1, __stack_chk_guard);
  sub_10001355C();
  sub_10000BB20();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100015AD8()
{
  sub_1000134B8();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015B54()
{
  sub_1000134B8();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015BD0()
{
  sub_1000134B8();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015C4C()
{
  sub_1000134B8();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015DC8()
{
  sub_10000BB10();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100015E50()
{
  sub_10000BB10();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100015ED0(_DWORD *a1, void *a2)
{
  *a1 = 134217984;
  *a2 = -1;
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100015F18(_DWORD *a1, void *a2)
{
  *a1 = 134217984;
  *a2 = -1;
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100015F60(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100015F94(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100015FC8(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100015FFC(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100016030(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1000160E4(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x8000100u);
  sub_100013534();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10001616C()
{
  v0 = qword_1000246D0[dword_1000246E0];
  sub_1000135A8();
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10001621C()
{
  sub_100013640();
  v0 = *__error();
  sub_10001354C();
  sub_1000135F0();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000162B4()
{
  sub_100013600();
  v0 = __error();
  sub_10001364C(v0);
  sub_1000135B4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100016340()
{
  sub_100013640();
  v0 = *__error();
  sub_1000135A8();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000163D0()
{
  v0 = *__error();
  sub_1000135A8();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100016454()
{
  sub_10001359C();
  sub_100013540();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000164E4()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100016554()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000165C4()
{
  sub_100013534();
  sub_100013540();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001663C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000166D8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016774()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016810()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000168AC()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016948()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000169E4()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016A80()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016B1C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016BB8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016C54()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016CF0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016D8C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100016E28(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "get_last_event_id";
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100016E74(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "get_last_event_id";
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100016EC0(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "get_last_event_id";
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100016F0C(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "get_last_event_id";
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100016F58(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "get_last_event_id";
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100016FA4()
{
  sub_1000134B8();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100017020()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100017090()
{
  sub_100013600();
  v0 = __error();
  sub_10001364C(v0);
  sub_1000135B4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10001711C()
{
  sub_100013640();
  v0 = __error();
  strerror(*v0);
  sub_100013670();
  sub_1000134DC();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000171A8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100017244()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000172E0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10001737C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100017418()
{
  sub_10001359C();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001750C()
{
  sub_10000BB10();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100017588(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = __error();
  strerror(*v2);
  sub_100013670();
  sub_100013540();
  sub_10000BB68();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100017630()
{
  sub_10001359C();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000176A4()
{
  v5 = *__error();
  sub_10000BB68();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100017758(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10001778C(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1000177C0()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000177FC(unsigned int *a1)
{
  v1 = *a1;
  sub_1000135A8();
  sub_10000BB30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100017870(uint64_t a1, int *a2)
{
  v7 = *a2;
  v8 = *(qword_1000246E8 + 8);
  sub_10000BB20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_100017948()
{
  sub_100013534();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000179C4()
{
  sub_100013640();
  v0 = __error();
  strerror(*v0);
  sub_100013670();
  sub_1000134DC();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100017A50()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017A8C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100017B28()
{
  v0 = __error();
  strerror(*v0);
  sub_10000BB10();
  sub_1000134A4();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100017BC4(uint64_t a1)
{
  sub_100013664(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100013534();
  sub_100013610();
  sub_10000BB20();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100017C40(uint64_t *a1)
{
  sub_1000135D4(a1, __stack_chk_guard);
  sub_10001359C();
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100017CB0()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100017D00()
{
  sub_1000134B8();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100017D7C()
{
  sub_100013534();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100017DEC(unsigned int *a1)
{
  v1 = *a1;
  sub_100013514();
  sub_10000BB30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Au);
}

void sub_100017E80()
{
  sub_100013628();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100018170(unsigned int *a1)
{
  v1 = *a1;
  sub_1000135A8();
  sub_10000BB30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000181E4()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018220(uint64_t a1)
{
  v1 = *(a1 + 256);
  sub_1000135E0();
  sub_10000BB20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10001839C(int a1)
{
  strerror(a1);
  sub_10000BB10();
  sub_1000134CC();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100018434()
{
  v0 = *(qword_1000246E8 + 8);
  sub_1000135E0();
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1000184B8()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000184F4(uint64_t a1)
{
  v6 = *sub_100013664(a1, __stack_chk_guard);
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100018598(unsigned int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *__error();
  v5 = __error();
  strerror(*v5);
  sub_10001355C();
  sub_10001356C();
  sub_10000BB68();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x36u);
}

void sub_100018654(unsigned int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *__error();
  v5 = __error();
  strerror(*v5);
  sub_10001355C();
  sub_10001356C();
  sub_10000BB68();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x36u);
}

void sub_100018710(uint64_t *a1)
{
  sub_1000135D4(a1, __stack_chk_guard);
  v7 = *(v1 + 32);
  sub_10000BB30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001879C()
{
  v0 = __error();
  strerror(*v0);
  sub_100013534();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100018824()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018860()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001889C()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000188D8()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018914()
{
  sub_1000135E0();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100018990()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000189CC(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100018A00(_BYTE *a1, _BYTE *a2)
{
  sub_1000134EC(a1, a2);
  sub_1000134FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100018AB4(uint64_t *a1)
{
  sub_1000135D4(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10001354C();
  sub_10000BB30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100018B38(uint64_t a1)
{
  v6 = **(a1 + 24);
  sub_10000BB30();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100018C00()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018C3C()
{
  sub_10000BB10();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100018DBC()
{
  sub_100013628();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100018E2C()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018E68()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100018EA4()
{
  sub_100013528();
  sub_10000BB30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019160()
{
  sub_100013600();
  v0 = __error();
  strerror(*v0);
  sub_1000134DC();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100019200()
{
  sub_100013534();
  sub_100013540();
  sub_10000BB20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019278()
{
  v0 = __error();
  strerror(*v0);
  sub_100013534();
  sub_10000BB68();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10001932C(uint64_t *a1)
{
  sub_1000135D4(a1, __stack_chk_guard);
  v2 = *(v1 + 256);
  sub_100013610();
  sub_10000BB30();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}