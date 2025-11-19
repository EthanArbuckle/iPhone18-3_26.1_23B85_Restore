void sub_100000A20(id a1, OS_xpc_object *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000AB4;
  block[3] = &unk_100004208;
  v4 = a2;
  v2 = v4;
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_100000AB4(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!xpc_activity_get_state(*(a1 + 32)))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100001A1C();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Activity fired in RUN", buf, 2u);
  }

  v22 = 0;
  v23 = 0;
  v2 = sub_100001200(&v23, &v22);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000017D4();
    }

    v4 = *v1;
    v5 = v3;
    goto LABEL_11;
  }

  if (!xpc_activity_should_defer(*v1))
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 objectForKey:@"last_attempt_progress"];
    v9 = [v8 unsignedIntValue];

    if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000181C();
    }

    if (systemstats_persistence_is_allowed())
    {
      snprintf(__str, 0x10uLL, "%ld", v23);
      snprintf(v34, 0x10uLL, "%ld", v22);
      if (v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100001898();
        }
      }

      else if (systemstats_cpu_hotspot_report_allowed_by_tasking() && DiagnosticLogSubmissionEnabled())
      {
        *buf = "/usr/sbin/spindump";
        v25 = "-system_stats";
        v26 = "-microstackshots_starttime";
        v27 = __str;
        v28 = "-microstackshots_endtime";
        v29 = v34;
        v30 = "-system_stats_signature";
        v31 = "com.apple.SystemStats.Daily";
        v32 = 0;
        sub_100001560(buf);
        v9 = (v9 | 1);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CPU microstackshot reports disallowed.", buf, 2u);
      }

      if (xpc_activity_should_defer(*v1))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Activity should defer at progress %#x", buf, 8u);
        }

        v13 = +[NSUserDefaults standardUserDefaults];
        v14 = [NSNumber numberWithUnsignedInt:v9];
        [v13 setObject:v14 forKey:@"last_attempt_progress"];

        if (!xpc_activity_set_state(*v1, 3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_18;
        }

        return;
      }

      if ((v9 & 2) != 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1000018DC();
        }
      }

      else if (systemstats_io_hotspot_report_allowed_by_tasking() && DiagnosticLogSubmissionEnabled())
      {
        *buf = "/usr/sbin/spindump";
        v25 = "-system_stats";
        v26 = "-microstackshots_starttime";
        v27 = __str;
        v28 = "-microstackshots_endtime";
        v29 = v34;
        v30 = "-microstackshots_io";
        v31 = "-system_stats_signature";
        v32 = "com.apple.SystemStats.Daily.IO";
        v33 = 0;
        sub_100001560(buf);
        LODWORD(v9) = v9 | 2;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "I/O microstackshot reports disallowed.", buf, 2u);
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_50;
      }

      *buf = 67109120;
      *&buf[4] = v9;
      v10 = "Completed all work with progress %#x";
      v11 = OS_LOG_TYPE_INFO;
      v12 = 8;
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:
        v15 = v22;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100001920();
        }

        v16 = +[NSUserDefaults standardUserDefaults];
        v17 = [NSNumber numberWithLong:v15];
        [v16 setObject:v17 forKey:@"last_processed_snapshot_timestamp"];

        v18 = +[NSUserDefaults standardUserDefaults];
        v19 = [NSString alloc];
        sub_1000016E0();
        v20 = [v19 initWithUTF8String:&byte_100008058];
        [v18 setObject:v20 forKey:@"last_processed_snapshot_build"];

        v21 = +[NSUserDefaults standardUserDefaults];
        [v21 removeObjectForKey:@"last_attempt_progress"];

LABEL_10:
        v6 = *v1;
        v5 = sub_100001200(0, 0);
        v4 = v6;
LABEL_11:
        sub_1000010CC(v4, v5);
        return;
      }

      *buf = 0;
      v10 = "Persistence is currently disallowed based on tasking defaults. No microstackshots available for hotspot reports.";
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 2;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, buf, v12);
    goto LABEL_50;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Activity should defer before doing anything", buf, 2u);
  }

  if (!xpc_activity_set_state(*v1, 3) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
LABEL_18:
    sub_100001998(v1);
  }
}

void sub_1000010CC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = xpc_activity_copy_criteria(v3);
  if (v4)
  {
    v5 = time(0);
    if (a2 <= v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2 - v5;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v7 = 134218496;
      v8 = a2;
      v9 = 2048;
      v10 = v6;
      v11 = 1024;
      v12 = 28800;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Setting activity to run at %ld (%ld+%d)", &v7, 0x1Cu);
    }

    xpc_dictionary_set_uint64(v4, XPC_ACTIVITY_DELAY, v6);
    xpc_dictionary_set_uint64(v4, XPC_ACTIVITY_GRACE_PERIOD, 0x7080uLL);
    xpc_activity_set_criteria(v3, v4);
  }

  else
  {
    _os_assumes_log();
  }
}

time_t sub_100001200(uint64_t *a1, time_t *a2)
{
  v4 = time(0);
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:@"last_processed_snapshot_build"];

  v7 = [NSString alloc];
  sub_1000016E0();
  v8 = [v7 initWithUTF8String:&byte_100008058];
  if ([v8 isEqualToString:v6])
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 objectForKey:@"last_processed_snapshot_timestamp"];
    v11 = [v10 longValue];

    if (v11)
    {
      if (v11 >= v4 - 259200)
      {
        v12 = v11;
      }

      else
      {
        v12 = v4 - 86400;
      }

      v19 = v12;
      v13 = v12 + 86400;
      if (a1 && a2)
      {
        if (v12 + 82800 < v4 && v13 > v4)
        {
          v13 = v4;
        }

        if (v13 > v4)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100001A60();
          }

          goto LABEL_39;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v12;
          v22 = 2048;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "This is subsequent report, generating report for 24 hour period %ld -> %ld", buf, 0x16u);
        }

        *a1 = v12;
LABEL_38:
        *a2 = v13;
        v13 = 0;
        goto LABEL_39;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100001AD8();
      }

      goto LABEL_39;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Builds don't match, ignoring saved start time, if any. (%@ -> %@)", buf, 0x16u);
  }

  v15 = qword_100008078;
  if (!qword_100008078)
  {
    *buf = 0x1500000001;
    v20 = 16;
    if (sysctl(buf, 2u, &qword_100008078, &v20, 0, 0) == -1)
    {
      sub_100001CE8();
    }

    v15 = qword_100008078;
    if (!qword_100008078)
    {
      sub_100001CCC();
    }
  }

  if (v15 < v4 - 259200)
  {
    v15 = v4 - 86400;
  }

  v19 = v15;
  v16 = localtime(&v19);
  v16->tm_min = 0;
  v16->tm_hour = 0;
  v13 = mktime(v16) + 86400;
  if (a1 && a2)
  {
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v13 <= v4)
    {
      if (v17)
      {
        sub_100001B50(&v19);
      }

      *a1 = v19;
      goto LABEL_38;
    }

    if (v17)
    {
      sub_100001BDC();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100001C54();
  }

LABEL_39:

  return v13;
}

void sub_100001560(char *const *a1)
{
  v8 = 0;
  v7 = 0;
  if (posix_spawnattr_init(&v7))
  {
    sub_100001D08();
  }

  if (posix_spawnattr_setjetsam_ext())
  {
    sub_100001D08();
  }

  v2 = posix_spawn(&v8, "/usr/sbin/spindump", 0, &v7, a1, environ);
  posix_spawnattr_destroy(&v7);
  if (!v2)
  {
    v6 = 0;
    v3 = 1000001;
    while (--v3)
    {
      if (waitpid(v8, &v6, 0) != -1 || *__error() != 4)
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100001D24();
    }

LABEL_12:
    if ((v6 & 0xFF7F) != 0)
    {
      v4 = v6 & 0x7F;
      v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v4 == 127)
        {
          if (v5)
          {
            sub_100001D6C(&v8, &v6);
          }
        }

        else if (v5)
        {
          sub_100001E60(&v8, &v6);
        }
      }

      else if (v5)
      {
        sub_100001DE8(&v8, &v6);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100001EDC(&v8);
    }
  }
}

void sub_1000016E0()
{
  if (!byte_100008058)
  {
    *v1 = 0x4100000001;
    v0 = 32;
    if (sysctl(v1, 2u, &byte_100008058, &v0, 0, 0) == -1)
    {
      sub_100001CE8();
    }

    if (!byte_100008058)
    {
      sub_100001CCC();
    }
  }
}

void sub_1000017B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xEu);
}

void sub_100001920()
{
  sub_1000017AC();
  sub_1000017A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001998(xpc_activity_t *a1)
{
  xpc_activity_get_state(*a1);
  sub_1000017AC();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unable to defer with state %#lx", v1, 0xCu);
}

void sub_100001A60()
{
  sub_1000017AC();
  sub_1000017A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001AD8()
{
  sub_1000017AC();
  sub_1000017A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001B50(uint64_t *a1)
{
  v6 = *a1;
  sub_1000017A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100001BDC()
{
  sub_1000017AC();
  sub_1000017A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001C54()
{
  sub_1000017AC();
  sub_1000017A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001CCC()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100001CE8()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100001D08()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100001D6C(unsigned int *a1, int *a2)
{
  v2 = *a1;
  v3 = (*a2 >> 8);
  sub_100001788();
  sub_1000017B8(&_mh_execute_header, &_os_log_default, v4, "spindump[%d] stoppedby signal %d.", v5, v6, v7, v8, v9);
}

void sub_100001DE8(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 1);
  sub_100001788();
  sub_1000017B8(&_mh_execute_header, &_os_log_default, v4, "spindump[%d] exited with return value %d.", v5, v6, v7, v8, v9);
}

void sub_100001E60(unsigned int *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *a2 & 0x7F;
  sub_100001788();
  sub_1000017B8(&_mh_execute_header, &_os_log_default, v4, "spindump[%d] died with signal %d.", v5, v6, v7, v8, v9);
}

void sub_100001EDC(int *a1)
{
  v6 = *a1;
  sub_1000017A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}