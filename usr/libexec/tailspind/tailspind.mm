void start()
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  _os_crash_callback = sub_10000A4FC;
  v0 = dispatch_queue_create("com.apple.tailspind.ipc_queue", 0);
  v1 = qword_10001EE20;
  qword_10001EE20 = v0;

  if (!qword_10001EE20)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v2 = dispatch_queue_create("com.apple.tailspind.post_processing_queue", 0);
  v3 = qword_10001EE28;
  qword_10001EE28 = v2;

  if (!qword_10001EE28)
  {
LABEL_10:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v4 = dispatch_queue_create("com.apple.tailspind.timeout_queue", 0);
  v5 = qword_10001EE30;
  qword_10001EE30 = v4;

  if (!qword_10001EE30)
  {
LABEL_11:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.tailspind", 0, 1uLL);
  v7 = qword_10001EE18;
  qword_10001EE18 = mach_service;

  if (qword_10001EE18)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000027A8;
    block[3] = &unk_1000187E0;
    block[4] = &v11;
    dispatch_sync(qword_10001EE20, block);
    if (*(v12 + 6))
    {
      xpc_connection_set_event_handler(qword_10001EE18, &stru_1000188B0);
      xpc_connection_resume(qword_10001EE18);
    }

    else
    {
      xpc_connection_set_event_handler(qword_10001EE18, &stru_1000188D0);
      xpc_connection_resume(qword_10001EE18);
      v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
      v9 = qword_10001EE38;
      qword_10001EE38 = v8;

      dispatch_source_set_event_handler(qword_10001EE38, &stru_100018918);
      dispatch_resume(qword_10001EE38);
      xpc_activity_register("com.apple.tailspin.cleanup", XPC_ACTIVITY_CHECK_IN, &stru_100018938);
    }

    dispatch_main();
  }

LABEL_12:
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100001118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001140(uint64_t a1)
{
  v2 = (a1 + 0x2000);
  if (a1 && (*a1 & 0x80) != 0)
  {
    v7 = qword_10001C680;
    if ((qword_10001C680 & 0x80) != 0)
    {
      v12 = byte_10001E728;
      if (byte_10001E728 == *(a1 + 8360) && !strncmp(&byte_10001E729, (a1 + 8361), 0x20uLL))
      {
        goto LABEL_42;
      }

      v8 = *__error();
      v9 = sub_100004348();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v2 + 169;
        if (!v2[169])
        {
          v14 = *(a1 + 8);
          if (v14 == 3)
          {
            v13 = "<profile>";
          }

          else if (v14 == 1)
          {
            v13 = "<tasking>";
          }

          else
          {
            v13 = "<unknown>";
          }
        }

        v19 = *(v2 + 168);
        v20 = &byte_10001E729;
        if (!byte_10001E729)
        {
          if (dword_10001C688 == 3)
          {
            v20 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v20 = "<tasking>";
          }

          else
          {
            v20 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v13;
        v145 = 1024;
        *v146 = v19;
        *&v146[4] = 2082;
        *&v146[6] = v20;
        *&v146[14] = 1024;
        *&v146[16] = byte_10001E728;
        v16 = "%{public}s requested to change tailspin enablement to %d, overriding previous request from %{public}s to change tailspin enablement to %d";
        v17 = v9;
        v18 = 34;
        goto LABEL_40;
      }
    }

    else
    {
      v8 = *__error();
      v9 = sub_100004348();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v2 + 169;
        if (!v2[169])
        {
          v11 = *(a1 + 8);
          if (v11 == 3)
          {
            v10 = "<profile>";
          }

          else if (v11 == 1)
          {
            v10 = "<tasking>";
          }

          else
          {
            v10 = "<unknown>";
          }
        }

        v15 = *(v2 + 168);
        v143 = 136446722;
        v144 = v10;
        v145 = 1024;
        *v146 = v15;
        *&v146[4] = 1024;
        *&v146[6] = byte_10001E728;
        v16 = "%{public}s requested to change tailspin enablement to %d from default %d";
        v17 = v9;
        v18 = 24;
LABEL_40:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v143, v18);
      }
    }

    *__error() = v8;
    v7 = qword_10001C680;
    v12 = v2[168];
LABEL_42:
    qword_10001C680 = v7 | 0x80;
    *(&qword_10001C680 + &loc_1000020A8) = v12;
    set_config_field_modifier();
    goto LABEL_43;
  }

  v3 = qword_10001C680;
  if ((qword_10001C680 & 0x80) != 0)
  {
    v4 = *__error();
    v5 = sub_100004348();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = &byte_10001E729;
      if (!byte_10001E729)
      {
        if (dword_10001C688 == 3)
        {
          v6 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v6 = "<tasking>";
        }

        else
        {
          v6 = "<unknown>";
        }
      }

      v143 = 136446722;
      v144 = v6;
      v145 = 1024;
      *v146 = byte_10001E728;
      *&v146[4] = 1024;
      *&v146[6] = tailspin_enabled_get_default();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin enablement to %d to default %d", &v143, 0x18u);
    }

    *__error() = v4;
    v3 = qword_10001C680;
  }

  qword_10001C680 = v3 & 0xFFFFFFFFFFFFFF7FLL;
  *(&qword_10001C680 + &loc_1000020A8) = tailspin_enabled_get_default();
  set_config_field_modifier();
  if (a1)
  {
LABEL_43:
    if ((*a1 & 2) == 0)
    {
      goto LABEL_44;
    }

    v25 = qword_10001C680;
    if ((qword_10001C680 & 2) != 0)
    {
      v30 = qword_10001E6B0;
      if (qword_10001E6B0 == *(a1 + 8240) && !strncmp(&byte_10001E6B8, (a1 + 8248), 0x20uLL))
      {
        goto LABEL_83;
      }

      v26 = *__error();
      v27 = sub_100004348();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v2 + 56;
        if (!v2[56])
        {
          v32 = *(a1 + 8);
          if (v32 == 3)
          {
            v31 = "<profile>";
          }

          else if (v32 == 1)
          {
            v31 = "<tasking>";
          }

          else
          {
            v31 = "<unknown>";
          }
        }

        v39 = *(a1 + 8240);
        v40 = &byte_10001E6B8;
        if (!byte_10001E6B8)
        {
          if (dword_10001C688 == 3)
          {
            v40 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v40 = "<tasking>";
          }

          else
          {
            v40 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v31;
        v145 = 2048;
        *v146 = v39;
        *&v146[8] = 2082;
        *&v146[10] = v40;
        *&v146[18] = 2048;
        v147 = qword_10001E6B0;
        v36 = "%{public}s requested to change tailspin buffer size to %zu MB, overriding previous request from %{public}s to change tailspin buffer size to %zu MB";
        v37 = v27;
        v38 = 42;
        goto LABEL_81;
      }
    }

    else
    {
      v26 = *__error();
      v27 = sub_100004348();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v2 + 56;
        if (!v2[56])
        {
          v29 = *(a1 + 8);
          if (v29 == 3)
          {
            v28 = "<profile>";
          }

          else if (v29 == 1)
          {
            v28 = "<tasking>";
          }

          else
          {
            v28 = "<unknown>";
          }
        }

        v35 = *(a1 + 8240);
        v143 = 136446722;
        v144 = v28;
        v145 = 2048;
        *v146 = v35;
        *&v146[8] = 2048;
        *&v146[10] = qword_10001E6B0;
        v36 = "%{public}s requested to change tailspin buffer size to %zu MB from default %zu MB";
        v37 = v27;
        v38 = 32;
LABEL_81:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, &v143, v38);
      }
    }

    *__error() = v26;
    v25 = qword_10001C680;
    v30 = *(a1 + 8240);
LABEL_83:
    qword_10001C680 = v25 | 2;
    qword_10001E6B0 = v30;
    set_config_field_modifier();
    goto LABEL_84;
  }

LABEL_44:
  v21 = qword_10001C680;
  if ((qword_10001C680 & 2) != 0)
  {
    v22 = *__error();
    v23 = sub_100004348();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = &byte_10001E6B8;
      if (!byte_10001E6B8)
      {
        if (dword_10001C688 == 3)
        {
          v24 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v24 = "<tasking>";
        }

        else
        {
          v24 = "<unknown>";
        }
      }

      v33 = qword_10001E6B0;
      v34 = tailspin_buffer_size_get_default();
      v143 = 136446722;
      v144 = v24;
      v145 = 2048;
      *v146 = v33;
      *&v146[8] = 2048;
      *&v146[10] = v34;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin buffer size to %zu MB to default %zu MB", &v143, 0x20u);
    }

    *__error() = v22;
    v21 = qword_10001C680;
  }

  qword_10001C680 = v21 & 0xFFFFFFFFFFFFFFFDLL;
  qword_10001E6B0 = tailspin_buffer_size_get_default();
  set_config_field_modifier();
  if (a1)
  {
LABEL_84:
    if ((*a1 & 1) == 0)
    {
      goto LABEL_85;
    }

    v47 = qword_10001C680;
    if (qword_10001C680)
    {
      if (!memcmp(&unk_10001C68C, (a1 + 12), 0x2000uLL) && !strncmp(&byte_10001E68C, (a1 + 8204), 0x20uLL))
      {
        goto LABEL_124;
      }

      v48 = trace_print_filter();
      v49 = trace_print_filter();
      v50 = *__error();
      v51 = sub_100004348();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v2 + 12;
        if (!v2[12])
        {
          v55 = *(a1 + 8);
          if (v55 == 3)
          {
            v54 = "<profile>";
          }

          else if (v55 == 1)
          {
            v54 = "<tasking>";
          }

          else
          {
            v54 = "<unknown>";
          }
        }

        v60 = &byte_10001E68C;
        if (!byte_10001E68C)
        {
          if (dword_10001C688 == 3)
          {
            v60 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v60 = "<tasking>";
          }

          else
          {
            v60 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v54;
        v145 = 2082;
        *v146 = v48;
        *&v146[8] = 2082;
        *&v146[10] = v60;
        *&v146[18] = 2082;
        v147 = v49;
        v57 = "%{public}s requested to change tailspin typefilter to %{public}s, overriding previous request from %{public}s to change tailspin typefilter to %{public}s";
        v58 = v51;
        v59 = 42;
        goto LABEL_122;
      }
    }

    else
    {
      v48 = trace_print_filter();
      v49 = trace_print_filter();
      v50 = *__error();
      v51 = sub_100004348();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v2 + 12;
        if (!v2[12])
        {
          v53 = *(a1 + 8);
          if (v53 == 3)
          {
            v52 = "<profile>";
          }

          else if (v53 == 1)
          {
            v52 = "<tasking>";
          }

          else
          {
            v52 = "<unknown>";
          }
        }

        v143 = 136446722;
        v144 = v52;
        v145 = 2082;
        *v146 = v49;
        *&v146[8] = 2082;
        *&v146[10] = v48;
        v57 = "%{public}s requested to change tailspin typefilter to %{public}s from default %{public}s";
        v58 = v51;
        v59 = 32;
LABEL_122:
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v57, &v143, v59);
      }
    }

    *__error() = v50;
    free(v49);
    free(v48);
    v47 = qword_10001C680;
LABEL_124:
    qword_10001C680 = v47 | 1;
    memcpy(&unk_10001C68C, (a1 + 12), 0x2000uLL);
    set_config_field_modifier();
    goto LABEL_125;
  }

LABEL_85:
  v41 = qword_10001C680;
  if (qword_10001C680)
  {
    v42 = trace_print_filter();
    tailspin_kdbg_filter_get_default();
    v43 = trace_print_filter();
    v44 = *__error();
    v45 = sub_100004348();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = &byte_10001E68C;
      if (!byte_10001E68C)
      {
        if (dword_10001C688 == 3)
        {
          v46 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v46 = "<tasking>";
        }

        else
        {
          v46 = "<unknown>";
        }
      }

      v143 = 136446722;
      v144 = v46;
      v145 = 2082;
      *v146 = v42;
      *&v146[8] = 2082;
      *&v146[10] = v43;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin typefilter to %{public}s to default %{public}s", &v143, 0x20u);
    }

    *__error() = v44;
    free(v42);
    free(v43);
    v41 = qword_10001C680;
  }

  qword_10001C680 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v56 = tailspin_kdbg_filter_get_default();
  memcpy(&unk_10001C68C, v56, 0x2000uLL);
  set_config_field_modifier();
  if (a1)
  {
LABEL_125:
    if ((*a1 & 8) == 0)
    {
      goto LABEL_126;
    }

    v65 = qword_10001C680;
    if ((qword_10001C680 & 8) != 0)
    {
      v70 = qword_10001E6D8;
      if (qword_10001E6D8 == *(a1 + 8280) && !strncmp(&byte_10001E6E0, (a1 + 8288), 0x20uLL))
      {
        goto LABEL_165;
      }

      v66 = *__error();
      v67 = sub_100004348();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v2 + 96;
        if (!v2[96])
        {
          v72 = *(a1 + 8);
          if (v72 == 3)
          {
            v71 = "<profile>";
          }

          else if (v72 == 1)
          {
            v71 = "<tasking>";
          }

          else
          {
            v71 = "<unknown>";
          }
        }

        v79 = *(a1 + 8280);
        v80 = &byte_10001E6E0;
        if (!byte_10001E6E0)
        {
          if (dword_10001C688 == 3)
          {
            v80 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v80 = "<tasking>";
          }

          else
          {
            v80 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v71;
        v145 = 2048;
        *v146 = v79;
        *&v146[8] = 2082;
        *&v146[10] = v80;
        *&v146[18] = 2048;
        v147 = qword_10001E6D8;
        v76 = "%{public}s requested to change tailspin full system sampling period to %llu ns, overriding previous request from %{public}s to change tailspin full system sampling period to %llu ns";
        v77 = v67;
        v78 = 42;
        goto LABEL_163;
      }
    }

    else
    {
      v66 = *__error();
      v67 = sub_100004348();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v2 + 96;
        if (!v2[96])
        {
          v69 = *(a1 + 8);
          if (v69 == 3)
          {
            v68 = "<profile>";
          }

          else if (v69 == 1)
          {
            v68 = "<tasking>";
          }

          else
          {
            v68 = "<unknown>";
          }
        }

        v75 = *(a1 + 8280);
        v143 = 136446722;
        v144 = v68;
        v145 = 2048;
        *v146 = v75;
        *&v146[8] = 2048;
        *&v146[10] = qword_10001E6D8;
        v76 = "%{public}s requested to change tailspin full system sampling period to %llu ns from default %llu ns";
        v77 = v67;
        v78 = 32;
LABEL_163:
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v76, &v143, v78);
      }
    }

    *__error() = v66;
    v65 = qword_10001C680;
    v70 = *(a1 + 8280);
LABEL_165:
    qword_10001C680 = v65 | 8;
    qword_10001E6D8 = v70;
    set_config_field_modifier();
    goto LABEL_166;
  }

LABEL_126:
  v61 = qword_10001C680;
  if ((qword_10001C680 & 8) != 0)
  {
    v62 = *__error();
    v63 = sub_100004348();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = &byte_10001E6E0;
      if (!byte_10001E6E0)
      {
        if (dword_10001C688 == 3)
        {
          v64 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v64 = "<tasking>";
        }

        else
        {
          v64 = "<unknown>";
        }
      }

      v73 = qword_10001E6D8;
      v74 = tailspin_full_sampling_period_get_default();
      v143 = 136446722;
      v144 = v64;
      v145 = 2048;
      *v146 = v73;
      *&v146[8] = 2048;
      *&v146[10] = v74;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin full system sampling period to %llu ns to default %llu ns", &v143, 0x20u);
    }

    *__error() = v62;
    v61 = qword_10001C680;
  }

  qword_10001C680 = v61 & 0xFFFFFFFFFFFFFFF7;
  qword_10001E6D8 = tailspin_full_sampling_period_get_default();
  set_config_field_modifier();
  if (a1)
  {
LABEL_166:
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_167;
    }

    v85 = qword_10001C680;
    if ((qword_10001C680 & 0x10) != 0)
    {
      v90 = qword_10001E700;
      if (qword_10001E700 == *(a1 + 8320) && !strncmp(&byte_10001E708, (a1 + 8328), 0x20uLL))
      {
        goto LABEL_206;
      }

      v86 = *__error();
      v87 = sub_100004348();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v91 = v2 + 136;
        if (!v2[136])
        {
          v92 = *(a1 + 8);
          if (v92 == 3)
          {
            v91 = "<profile>";
          }

          else if (v92 == 1)
          {
            v91 = "<tasking>";
          }

          else
          {
            v91 = "<unknown>";
          }
        }

        v99 = *(a1 + 8320);
        v100 = &byte_10001E708;
        if (!byte_10001E708)
        {
          if (dword_10001C688 == 3)
          {
            v100 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v100 = "<tasking>";
          }

          else
          {
            v100 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v91;
        v145 = 2048;
        *v146 = v99;
        *&v146[8] = 2082;
        *&v146[10] = v100;
        *&v146[18] = 2048;
        v147 = qword_10001E700;
        v96 = "%{public}s requested to change tailspin oncore sampling period to %llu ns, overriding previous request from %{public}s to change tailspin oncore sampling period to %llu ns";
        v97 = v87;
        v98 = 42;
        goto LABEL_204;
      }
    }

    else
    {
      v86 = *__error();
      v87 = sub_100004348();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = v2 + 136;
        if (!v2[136])
        {
          v89 = *(a1 + 8);
          if (v89 == 3)
          {
            v88 = "<profile>";
          }

          else if (v89 == 1)
          {
            v88 = "<tasking>";
          }

          else
          {
            v88 = "<unknown>";
          }
        }

        v95 = *(a1 + 8320);
        v143 = 136446722;
        v144 = v88;
        v145 = 2048;
        *v146 = v95;
        *&v146[8] = 2048;
        *&v146[10] = qword_10001E700;
        v96 = "%{public}s requested to change tailspin oncore sampling period to %llu ns from default %llu ns";
        v97 = v87;
        v98 = 32;
LABEL_204:
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, v96, &v143, v98);
      }
    }

    *__error() = v86;
    v85 = qword_10001C680;
    v90 = *(a1 + 8320);
LABEL_206:
    qword_10001C680 = v85 | 0x10;
    qword_10001E700 = v90;
    set_config_field_modifier();
    goto LABEL_207;
  }

LABEL_167:
  v81 = qword_10001C680;
  if ((qword_10001C680 & 0x10) != 0)
  {
    v82 = *__error();
    v83 = sub_100004348();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v84 = &byte_10001E708;
      if (!byte_10001E708)
      {
        if (dword_10001C688 == 3)
        {
          v84 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v84 = "<tasking>";
        }

        else
        {
          v84 = "<unknown>";
        }
      }

      v93 = qword_10001E700;
      v94 = tailspin_oncore_sampling_period_get_default();
      v143 = 136446722;
      v144 = v84;
      v145 = 2048;
      *v146 = v93;
      *&v146[8] = 2048;
      *&v146[10] = v94;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin oncore sampling period to %llu ns to default %llu ns", &v143, 0x20u);
    }

    *__error() = v82;
    v81 = qword_10001C680;
  }

  qword_10001C680 = v81 & 0xFFFFFFFFFFFFFFEFLL;
  qword_10001E700 = tailspin_oncore_sampling_period_get_default();
  set_config_field_modifier();
  if (a1)
  {
LABEL_207:
    if ((*a1 & 0x20) == 0)
    {
      goto LABEL_208;
    }

    v105 = qword_10001C680;
    if ((qword_10001C680 & 0x20) != 0)
    {
      v110 = dword_10001E74C;
      if (dword_10001E74C == *(a1 + 8396) && !strncmp(&byte_10001E750, (a1 + 8400), 0x20uLL))
      {
        goto LABEL_247;
      }

      v106 = *__error();
      v107 = sub_100004348();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v111 = v2 + 208;
        if (!v2[208])
        {
          v112 = *(a1 + 8);
          if (v112 == 3)
          {
            v111 = "<profile>";
          }

          else if (v112 == 1)
          {
            v111 = "<tasking>";
          }

          else
          {
            v111 = "<unknown>";
          }
        }

        v119 = *(a1 + 8396);
        v120 = &byte_10001E750;
        if (!byte_10001E750)
        {
          if (dword_10001C688 == 3)
          {
            v120 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v120 = "<tasking>";
          }

          else
          {
            v120 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v111;
        v145 = 1024;
        *v146 = v119;
        *&v146[4] = 2082;
        *&v146[6] = v120;
        *&v146[14] = 1024;
        *&v146[16] = dword_10001E74C;
        v116 = "%{public}s requested to change tailspin sampling modifers to 0x%x, overriding previous request from %{public}s to change tailspin sampling modifiers to 0x%x";
        v117 = v107;
        v118 = 34;
        goto LABEL_245;
      }
    }

    else
    {
      v106 = *__error();
      v107 = sub_100004348();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v2 + 208;
        if (!v2[208])
        {
          v109 = *(a1 + 8);
          if (v109 == 3)
          {
            v108 = "<profile>";
          }

          else if (v109 == 1)
          {
            v108 = "<tasking>";
          }

          else
          {
            v108 = "<unknown>";
          }
        }

        v115 = *(a1 + 8396);
        v143 = 136446722;
        v144 = v108;
        v145 = 1024;
        *v146 = v115;
        *&v146[4] = 1024;
        *&v146[6] = dword_10001E74C;
        v116 = "%{public}s requested to change tailspin sampling modifiers to %x from default %x";
        v117 = v107;
        v118 = 24;
LABEL_245:
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, v116, &v143, v118);
      }
    }

    *__error() = v106;
    v105 = qword_10001C680;
    v110 = *(a1 + 8396);
LABEL_247:
    qword_10001C680 = v105 | 0x20;
    dword_10001E74C = v110;
    set_config_field_modifier();
    goto LABEL_248;
  }

LABEL_208:
  v101 = qword_10001C680;
  if ((qword_10001C680 & 0x20) != 0)
  {
    v102 = *__error();
    v103 = sub_100004348();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = &byte_10001E750;
      if (!byte_10001E750)
      {
        if (dword_10001C688 == 3)
        {
          v104 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v104 = "<tasking>";
        }

        else
        {
          v104 = "<unknown>";
        }
      }

      v113 = dword_10001E74C;
      v114 = tailspin_sampling_options_get_default();
      v143 = 136446722;
      v144 = v104;
      v145 = 1024;
      *v146 = v113;
      *&v146[4] = 1024;
      *&v146[6] = v114;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin sampling options to %x to default %x", &v143, 0x18u);
    }

    *__error() = v102;
    v101 = qword_10001C680;
  }

  qword_10001C680 = v101 & 0xFFFFFFFFFFFFFFDFLL;
  dword_10001E74C = tailspin_sampling_options_get_default();
  set_config_field_modifier();
  if (a1)
  {
LABEL_248:
    if ((*a1 & 0x40) == 0)
    {
      goto LABEL_249;
    }

    v125 = qword_10001C680;
    if ((qword_10001C680 & 0x40) != 0)
    {
      v130 = byte_10001E770;
      if (byte_10001E770 == v2[240] && !strncmp(&byte_10001E771, (a1 + 8433), 0x20uLL))
      {
        goto LABEL_288;
      }

      v126 = *__error();
      v127 = sub_100004348();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        v131 = v2 + 241;
        if (!v2[241])
        {
          v132 = *(a1 + 8);
          if (v132 == 3)
          {
            v131 = "<profile>";
          }

          else if (v132 == 1)
          {
            v131 = "<tasking>";
          }

          else
          {
            v131 = "<unknown>";
          }
        }

        v141 = *(v2 + 240);
        v142 = &byte_10001E771;
        if (!byte_10001E771)
        {
          if (dword_10001C688 == 3)
          {
            v142 = "<profile>";
          }

          else if (dword_10001C688 == 1)
          {
            v142 = "<tasking>";
          }

          else
          {
            v142 = "<unknown>";
          }
        }

        v143 = 136446978;
        v144 = v131;
        v145 = 1024;
        *v146 = v141;
        *&v146[4] = 2082;
        *&v146[6] = v142;
        *&v146[14] = 1024;
        *&v146[16] = byte_10001E770;
        v138 = "%{public}s requested to change tailspin CPUTrace enablement to %{BOOL}d, overriding previous request from %{public}s to change tailspin CPUTrace enablement to %{BOOL}d";
        v139 = v127;
        v140 = 34;
        goto LABEL_286;
      }
    }

    else
    {
      v126 = *__error();
      v127 = sub_100004348();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        v128 = v2 + 241;
        if (!v2[241])
        {
          v129 = *(a1 + 8);
          if (v129 == 3)
          {
            v128 = "<profile>";
          }

          else if (v129 == 1)
          {
            v128 = "<tasking>";
          }

          else
          {
            v128 = "<unknown>";
          }
        }

        v137 = *(v2 + 240);
        v143 = 136446722;
        v144 = v128;
        v145 = 1024;
        *v146 = v137;
        *&v146[4] = 1024;
        *&v146[6] = byte_10001E770;
        v138 = "%{public}s requested to change tailspin CPUTrace enablement to %{BOOL}d from default %{BOOL}d";
        v139 = v127;
        v140 = 24;
LABEL_286:
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, v138, &v143, v140);
      }
    }

    *__error() = v126;
    v125 = qword_10001C680;
    v130 = v2[240];
LABEL_288:
    qword_10001C680 = v125 | 0x40;
    *(&qword_10001C680 + &loc_1000020EC + 4) = v130;
    result = set_config_field_modifier();
LABEL_289:
    v136 = *(a1 + 8);
    goto LABEL_290;
  }

LABEL_249:
  v121 = qword_10001C680;
  if ((qword_10001C680 & 0x40) != 0)
  {
    v122 = *__error();
    v123 = sub_100004348();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v124 = &byte_10001E771;
      if (!byte_10001E771)
      {
        if (dword_10001C688 == 3)
        {
          v124 = "<profile>";
        }

        else if (dword_10001C688 == 1)
        {
          v124 = "<tasking>";
        }

        else
        {
          v124 = "<unknown>";
        }
      }

      v133 = byte_10001E770;
      v134 = tailspin_cputrace_enabled_get_default();
      v143 = 136446722;
      v144 = v124;
      v145 = 1024;
      *v146 = v133;
      *&v146[4] = 1024;
      *&v146[6] = v134;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Reverted previous request by %{public}s to change tailspin CPUTrace enablement to %{BOOL}d to default %{BOOL}d", &v143, 0x18u);
    }

    *__error() = v122;
    v121 = qword_10001C680;
  }

  qword_10001C680 = v121 & 0xFFFFFFFFFFFFFFBFLL;
  *(&qword_10001C680 + &loc_1000020EC + 4) = tailspin_cputrace_enabled_get_default();
  result = set_config_field_modifier();
  if (a1)
  {
    goto LABEL_289;
  }

  v136 = 0;
LABEL_290:
  dword_10001C688 = v136;
  return result;
}

void sub_1000027A8(uint64_t a1)
{
  tailspin_ondisk_config = get_tailspin_ondisk_config();
  sub_100001140(tailspin_ondisk_config);
  if (tailspin_ondisk_config)
  {
    tailspin_config_free();
  }

  if (dword_10001EE78)
  {
    goto LABEL_4;
  }

  if (qword_10001EE40)
  {
    sub_10000C410();
  }

  special_port = 0;
  if (task_get_special_port(mach_task_self_, 4, &special_port))
  {
    v4 = *__error();
    v5 = sub_100004348();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000CFE8();
    }

LABEL_17:

    *__error() = v4;
    v3 = -1;
    goto LABEL_18;
  }

  if (bootstrap_check_in(special_port, "com.apple.tailspind.ktrace_background", &dword_10001EE78))
  {
    v4 = *__error();
    v5 = sub_100004348();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000D058();
    }

    goto LABEL_17;
  }

  v10 = 1;
  if (sysctlbyname("ktrace.init_background", 0, 0, &v10, 4uLL))
  {
    v6 = *__error();
    v7 = sub_100004348();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000D0C8();
    }

    *__error() = v6;
    v4 = *__error();
    v5 = sub_100004348();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000D104();
    }

    goto LABEL_17;
  }

  v8 = dispatch_source_create(&_dispatch_source_type_mach_recv, dword_10001EE78, 0, qword_10001EE20);
  v9 = qword_10001EE40;
  qword_10001EE40 = v8;

  dispatch_source_set_event_handler(qword_10001EE40, &stru_100018980);
  dispatch_resume(qword_10001EE40);
LABEL_4:
  v3 = 0;
LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = v3;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", qword_10001EE20, &stru_100018890);
}

void sub_1000029CC(id a1)
{
  v1 = os_log_create("com.apple.tailspin", "library");
  v2 = qword_10001EA08;
  qword_10001EA08 = v1;

  v3 = qword_10001EA08;
  if (!v3)
  {
    sub_10000C410();
  }
}

void sub_100002A4C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = *__error();
    v4 = sub_100004348();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "com.apple.tailspin.cleanup invoked", buf, 2u);
    }

    *__error() = v3;
    v5 = sub_10000B2E8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B32C;
    block[3] = &unk_100018960;
    v7 = v2;
    dispatch_sync(v5, block);
  }
}

void sub_100002B68()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  if (xpc_get_type(v2) != &_xpc_type_dictionary)
  {
    type = xpc_get_type(v2);
    v4 = *(v0 + 60);
    v5 = *(v0 + 56);
    v6 = *__error();
    v7 = sub_100004348();
    v8 = v7;
    if (type != &_xpc_type_error)
    {
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v5 == v4)
      {
        if (v9)
        {
          sub_10000D77C(v0, (v0 + 60));
        }
      }

      else if (v9)
      {
        v29 = *(v0 + 40);
        v30 = *(v0 + 48);
        v31 = *(v0 + 56);
        v32 = *(v0 + 60);
        *buf = 136446978;
        *&buf[4] = v29;
        *&buf[12] = 1024;
        *&buf[14] = v31;
        *&buf[18] = 2082;
        *&buf[20] = v30;
        *&buf[28] = 1024;
        *&buf[30] = v32;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "client %{public}s [%d] (via %{public}s [%d]) received unknown request type", buf, 0x22u);
      }

      goto LABEL_30;
    }

    v23 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v5 == v4)
    {
      if (v23)
      {
        v24 = *(v0 + 48);
        v25 = *(v0 + 60);
        *buf = 136446722;
        *&buf[4] = v24;
        *&buf[12] = 1024;
        *&buf[14] = v25;
        *&buf[18] = 2082;
        *&buf[20] = xpc_dictionary_get_string(v2, _xpc_error_key_description);
        v26 = "client %{public}s [%d] received error %{public}s";
        v27 = v8;
        v28 = 28;
LABEL_89:
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
      }
    }

    else if (v23)
    {
      v102 = *(v0 + 40);
      v103 = *(v0 + 48);
      v104 = *(v0 + 56);
      v105 = *(v0 + 60);
      *buf = 136447234;
      *&buf[4] = v102;
      *&buf[12] = 1024;
      *&buf[14] = v104;
      *&buf[18] = 2082;
      *&buf[20] = v103;
      *&buf[28] = 1024;
      *&buf[30] = v105;
      *&buf[34] = 2082;
      *&buf[36] = xpc_dictionary_get_string(v2, _xpc_error_key_description);
      v26 = "client %{public}s [%d] (via %{public}s [%d]) received error %{public}s";
      v27 = v8;
      v28 = 44;
      goto LABEL_89;
    }

LABEL_30:

    *__error() = v6;
    xpc_connection_cancel(*(v0 + 32));
    goto LABEL_31;
  }

  uint64 = xpc_dictionary_get_uint64(v2, "tailspin_request_type");
  if ((uint64 & 0x80000000) == 0)
  {
    if (uint64)
    {
      if (uint64 != 1)
      {
        if (uint64 != 2)
        {
          goto LABEL_31;
        }

        v33 = *(v0 + 60);
        v34 = *(v0 + 56);
        v35 = *__error();
        v36 = sub_100004348();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (v34 == v33)
        {
          if (!v37)
          {
            goto LABEL_65;
          }

          v38 = *(v0 + 48);
          v39 = *(v0 + 60);
          *buf = 136446466;
          *&buf[4] = v38;
          *&buf[12] = 1024;
          *&buf[14] = v39;
          v40 = "client %{public}s [%d] asked for tailspin output (TAILSPIN_DUMP_OUTPUT)";
          v41 = v36;
          v42 = 18;
        }

        else
        {
          if (!v37)
          {
            goto LABEL_65;
          }

          v79 = *(v0 + 40);
          v80 = *(v0 + 48);
          v81 = *(v0 + 56);
          v82 = *(v0 + 60);
          *buf = 136446978;
          *&buf[4] = v79;
          *&buf[12] = 1024;
          *&buf[14] = v81;
          *&buf[18] = 2082;
          *&buf[20] = v80;
          *&buf[28] = 1024;
          *&buf[30] = v82;
          v40 = "client %{public}s [%d] (via %{public}s [%d]) asked for tailspin output (TAILSPIN_DUMP_OUTPUT)";
          v41 = v36;
          v42 = 34;
        }

        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
LABEL_65:

        *__error() = v35;
        sub_10000444C(*(v0 + 40));
        if (*(v0 + 64) != 1)
        {
          v88 = *__error();
          v89 = sub_100004348();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            sub_10000D9C4(v0, (v0 + 60));
          }

          *__error() = v88;
          sub_1000054CC(v2, 3, 0);
          goto LABEL_31;
        }

        v83 = *(v0 + 40);
        v84 = *(v0 + 60);
        v17 = v2;
        v19 = objc_alloc_init(TSPSaveMeasurements);
        [(TSPSaveMeasurements *)v19 startRecordingTimeForDumpRequestPhase:v83 pid:v84];
        if (byte_10001E728)
        {
          v85 = xpc_dictionary_dup_fd(v17, "tailspin_dump_fd");
          v86 = v85;
          if ((v85 & 0x80000000) == 0)
          {
            if (fcntl(v85, 50, buf) == -1)
            {
              v111 = *__error();
              v112 = sub_100004348();
              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                sub_10000DAAC();
              }

              *__error() = v111;
              v87 = @"<unknown>";
            }

            else
            {
              v87 = [NSString stringWithUTF8String:buf];
            }

            [(TSPSaveMeasurements *)v19 setFilePath:v87];
            v113 = fcntl(v86, 3);
            if ((v113 & 2) == 0)
            {
              v114 = v113;
              v115 = *__error();
              v116 = sub_100004348();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                *block = 136446978;
                *&block[4] = v83;
                *&block[12] = 1024;
                *&block[14] = v84;
                *&block[18] = 1024;
                *&block[20] = v86;
                *&block[24] = 1024;
                *&block[26] = v114;
                _os_log_error_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "Unable to save tailspin for %{public}s [%d]: file descriptor %d is not read-write (flags: 0x%x)", block, 0x1Eu);
              }

              *__error() = v115;
              v117 = [[NSString alloc] initWithFormat:@"File descriptor %d is not read-write (flags: 0x%x)", v86, v114];
              [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:v117];

              v118 = v17;
              v119 = 7;
              v120 = 0;
LABEL_110:
              sub_1000054CC(v118, v119, v120);
LABEL_111:

              goto LABEL_112;
            }

            v121 = sub_100004DD8(v86);
            if (v121 >= 1)
            {
              v122 = v121;
              v123 = *__error();
              v124 = sub_100004348();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
              {
                *block = 67110146;
                *&block[4] = v86;
                *&block[8] = 2082;
                *&block[10] = v83;
                *&block[18] = 1024;
                *&block[20] = v84;
                *&block[24] = 2048;
                *&block[26] = v122;
                *&block[34] = 2114;
                *&block[36] = v87;
                _os_log_fault_impl(&_mh_execute_header, v124, OS_LOG_TYPE_FAULT, "Detected fd %d from %{public}s [%d] with non-zero file size %lld! Path: %{public}@", block, 0x2Cu);
              }

              *__error() = v123;
              v125 = [[NSString alloc] initWithFormat:@"Detected fd %d from %s [%d] with non-zero file size %lld!", v86, v83, v84, v122];
              [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:v125];

              [(TSPSaveMeasurements *)v19 setFileSizeBytes:v122];
              v118 = v17;
              v119 = 25;
              v120 = v19;
              goto LABEL_110;
            }

            v198 = v87;
            v136 = xpc_dictionary_get_uint64(v17, "tailspin_dump_request_timestamp");
            if (v136)
            {
              [(TSPSaveMeasurements *)v19 recordRequestProcessingLatencySecsWithStartMCT:v136 endMCT:mach_continuous_time()];
            }

            v137 = +[NSMutableDictionary dictionary];
            [v137 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
            [v137 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
            [v137 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
            [v137 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
            [v137 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
            [v137 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
            v196 = v137;
            v138 = [v137 copy];
            length = 0;
            data = xpc_dictionary_get_data(v17, "tailspin_dump_options", &length);
            if (data)
            {
              v140 = [NSData dataWithBytes:data length:length];
              if (v140)
              {
                v141 = v140;
                v201 = 0;
                v142 = [NSPropertyListSerialization propertyListWithData:v140 options:0 format:0 error:&v201];
                v143 = v201;
                if (v142)
                {

                  v138 = v142;
                  goto LABEL_142;
                }

                v197 = v138;
                v171 = *__error();
                v172 = sub_100004348();
                if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
                {
                  v188 = [v143 description];
                  v189 = [v188 UTF8String];
                  *block = 136446722;
                  *&block[4] = v83;
                  *&block[12] = 1024;
                  *&block[14] = v84;
                  *&block[18] = 2080;
                  *&block[20] = v189;
                  _os_log_error_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "Unable to save tailspin for %{public}s [%d]: Failed to deserialize dump options due to %s", block, 0x1Cu);
                }

                *__error() = v171;
                v173 = [NSString alloc];
                v174 = [v143 description];
                v175 = [v173 initWithFormat:@"Failed to deserialize dump options due to %@", v174];
                [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:v175];

                sub_1000054CC(v17, 9, 0);
              }

              else
              {
                v197 = v138;
                v144 = *__error();
                v145 = sub_100004348();
                if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                {
                  sub_10000DB38();
                }

                *__error() = v144;
                [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:@"Can't parse client dump output options"];
                sub_1000054CC(v17, 8, 0);
              }

              v87 = v198;
              v176 = v196;
LABEL_186:

              goto LABEL_111;
            }

LABEL_142:
            if (byte_10001E7D7)
            {
              [(TSPSaveMeasurements *)v19 setPrevExecName:@"ERROR"];
            }

            else
            {
              v146 = [NSString stringWithUTF8String:asc_10001E7B8];
              [(TSPSaveMeasurements *)v19 setPrevExecName:v146];
            }

            v195 = [v138 objectForKeyedSubscript:UnsafePointer];
            v197 = v138;
            if (v195)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v147 = [v195 unsignedLongLongValue];
                [(TSPSaveMeasurements *)v19 setDidClientRequestEndTimestamp:1];
                if (v147)
                {
                  v148 = sub_100004E38();
                  if (v148 > v147)
                  {
                    v149 = v148;
                    v150 = *__error();
                    v151 = sub_100004348();
                    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                    {
                      *block = 134218240;
                      *&block[4] = v149;
                      *&block[12] = 2048;
                      *&block[14] = v147;
                      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "Client requested end timestamp that is past time window that tailspin can provide (tailspin start timestamp: %llu, client timestamp: %llu). Not saving tailspin file.", block, 0x16u);
                    }

                    *__error() = v150;
                    v152 = *__error();
                    v153 = sub_100004348();
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                    {
                      sub_10000DC78();
                    }

                    *__error() = v152;
                    [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:@"ktrace buffer starts after client's end timestamp"];
                    [(TSPSaveMeasurements *)v19 setDidPrevClientSaveOverlapWithEndTimestamp:v147 < qword_10001EE80];
                    v154 = v17;
                    v155 = 28;
LABEL_184:
                    sub_1000054CC(v154, v155, v19);
                    goto LABEL_185;
                  }
                }
              }

              else
              {
                v156 = *__error();
                v157 = sub_100004348();
                if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                {
                  sub_10000DBB0();
                }

                *__error() = v156;
              }
            }

            v158 = v138;
            v159 = mach_absolute_time();
            v160 = sub_100004E38();
            v194 = v158;
            if (v160)
            {
              v163 = v160;
              when = v159;
              v164 = sub_100004F00(v159 - v160, v161, v162);
              v165 = [v158 objectForKeyedSubscript:UnsafePointer];
              v166 = 0.5;
              v192 = v165;
              if (v165)
              {
                v167 = v165;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v167 doubleValue];
                  if (v168 >= 0.0)
                  {
                    v166 = v168;
                  }

                  else
                  {
                    v169 = *__error();
                    v170 = sub_100004348();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                    {
                      sub_10000DCFC();
                    }

                    *__error() = v169;
                  }
                }
              }

              sub_100004F68(asc_10001E7B8, v83);
              v177 = *__error();
              v178 = sub_100004348();
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
              {
                *block = 134218752;
                *&block[4] = v164;
                *&block[12] = 2048;
                *&block[14] = when;
                *&block[22] = 2048;
                *&block[24] = v163;
                *&block[32] = 2048;
                *&block[34] = v166;
                _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "Duration since trace buffer start: %0.3fs (%llu - %llu), minimum acceptable duration: %.3f", block, 0x2Au);
              }

              *__error() = v177;
              if (v166 != 0.0)
              {

                if (v164 < v166)
                {
                  v186 = *__error();
                  v187 = sub_100004348();
                  if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000DD84();
                  }

                  *__error() = v186;
                  [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:@"Resulting trace would be shorter than desired duration"];
                  v154 = v17;
                  v155 = 10;
                  goto LABEL_184;
                }

LABEL_179:
                v181 = [NSString stringWithUTF8String:v83];
                whena = dispatch_time(0, 90000000000);
                v182 = qword_10001EE30;
                *block = _NSConcreteStackBlock;
                *&block[8] = 3221225472;
                *&block[16] = sub_100005148;
                *&block[24] = &unk_1000189D0;
                v183 = v19;
                *&block[32] = v183;
                *&block[40] = v181;
                v206 = v84;
                v207 = v86;
                v205 = v83;
                v184 = v17;
                v204 = v184;
                v193 = v181;
                dispatch_after(whena, v182, block);
                atomic_store([(TSPSaveMeasurements *)v183 request_id], &unk_10001EE88);
                v185 = tailspin_make_ondisk_config();
                v199 = v183;
                v200 = v184;
                tailspin_save_trace_with_standard_chunks();

LABEL_185:
                v176 = v196;

                v87 = v198;
                goto LABEL_186;
              }

              v179 = *__error();
              v180 = sub_100004348();
              if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
              {
                *block = 0;
                _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "Not enforcing minimum acceptable duration since trace buffer start because of client override", block, 2u);
              }

              *__error() = v179;
              v158 = v194;
            }

            goto LABEL_179;
          }

          v108 = *__error();
          v109 = sub_100004348();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = v83;
            *&buf[12] = 1024;
            *&buf[14] = v84;
            *&buf[18] = 1024;
            *&buf[20] = v86;
            _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "Unable to save tailspin for %{public}s [%d]: bad file descriptor %d", buf, 0x18u);
          }

          *__error() = v108;
          v110 = [[NSString alloc] initWithFormat:@"Bad file descriptor %d", v86];
          [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:v110];

          v100 = v17;
          v101 = 6;
        }

        else
        {
          v98 = *__error();
          v99 = sub_100004348();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            sub_10000DA34();
          }

          *__error() = v98;
          [(TSPSaveMeasurements *)v19 stopRecordingTimeForDumpRequestPhase:@"tailspin is disabled"];
          v100 = v17;
          v101 = 2;
        }

        sub_1000054CC(v100, v101, 0);
LABEL_112:

LABEL_135:
        goto LABEL_31;
      }

      v57 = *(v0 + 56);
      v58 = *(v0 + 60);
      v59 = *__error();
      v60 = sub_100004348();
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
      if (v57 == v58)
      {
        if (!v61)
        {
          goto LABEL_76;
        }

        v62 = *(v0 + 48);
        v63 = *(v0 + 60);
        *buf = 136446466;
        *&buf[4] = v62;
        *&buf[12] = 1024;
        *&buf[14] = v63;
        v64 = "client %{public}s [%d] asked for tailspin config (TAILSPIN_GET_CONFIG)";
        v65 = v60;
        v66 = 18;
      }

      else
      {
        if (!v61)
        {
          goto LABEL_76;
        }

        v90 = *(v0 + 40);
        v91 = *(v0 + 48);
        v92 = *(v0 + 56);
        v93 = *(v0 + 60);
        *buf = 136446978;
        *&buf[4] = v90;
        *&buf[12] = 1024;
        *&buf[14] = v92;
        *&buf[18] = 2082;
        *&buf[20] = v91;
        *&buf[28] = 1024;
        *&buf[30] = v93;
        v64 = "client %{public}s [%d] (via %{public}s [%d]) asked for tailspin config (TAILSPIN_GET_CONFIG)";
        v65 = v60;
        v66 = 34;
      }

      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, v64, buf, v66);
LABEL_76:

      *__error() = v59;
      v17 = v2;
      memcpy(buf, &qword_10001C680, sizeof(buf));
      if (is_apple_internal_setting() && ktrace_config_create_current())
      {
        owner_pid = ktrace_config_get_owner_pid();
        if (ktrace_config_get_owner_kind() == 2 && owner_pid == getpid())
        {
          sub_1000091EC();
        }

        ktrace_config_destroy();
      }

      reply = xpc_dictionary_create_reply(v17);
      if (!reply)
      {
        sub_10000C410();
      }

      v19 = reply;
      xpc_dictionary_set_BOOL(reply, "tailspin_succeeded", 1);
      xpc_dictionary_set_data(v19, "tailspin_config", buf, 0x2118uLL);
      v96 = xpc_dictionary_get_remote_connection(v17);
      if (!v96)
      {
        sub_10000C410();
      }

      v97 = v96;
      xpc_connection_send_message(v96, v19);

      goto LABEL_112;
    }

    v45 = *(v0 + 60);
    v46 = *(v0 + 56);
    v47 = *__error();
    v48 = sub_100004348();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    if (v46 == v45)
    {
      if (!v49)
      {
        goto LABEL_47;
      }

      v50 = *(v0 + 48);
      v51 = *(v0 + 60);
      *buf = 136446466;
      *&buf[4] = v50;
      *&buf[12] = 1024;
      *&buf[14] = v51;
      v52 = "client %{public}s [%d] is setting tailspin config (TAILSPIN_APPLY_CONFIG)";
      v53 = v48;
      v54 = 18;
    }

    else
    {
      if (!v49)
      {
        goto LABEL_47;
      }

      v67 = *(v0 + 40);
      v68 = *(v0 + 48);
      v69 = *(v0 + 56);
      v70 = *(v0 + 60);
      *buf = 136446978;
      *&buf[4] = v67;
      *&buf[12] = 1024;
      *&buf[14] = v69;
      *&buf[18] = 2082;
      *&buf[20] = v68;
      *&buf[28] = 1024;
      *&buf[30] = v70;
      v52 = "client %{public}s [%d] (via %{public}s [%d]) is setting tailspin config (TAILSPIN_APPLY_CONFIG)";
      v53 = v48;
      v54 = 34;
    }

    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
LABEL_47:

    *__error() = v47;
    if (*(v0 + 65) != 1)
    {
      v77 = *__error();
      v78 = sub_100004348();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_10000D878(v0, (v0 + 60));
      }

      *__error() = v77;
      sub_100005BC8(v2, 0);
      goto LABEL_31;
    }

    v71 = *(v0 + 48);
    v17 = v2;
    *buf = 0;
    v72 = xpc_dictionary_get_data(v17, "tailspin_config", buf);
    if (*buf == 8472)
    {
      v73 = v72;
      v74 = *(v72 + 2);
      if ((v74 | 2) != 2)
      {
        sub_10000D99C();
      }

      if (dword_10001C688 > 1)
      {
        if (dword_10001C688 == 2)
        {
          if (!v74)
          {
            tailspin_tasking_config = get_tailspin_tasking_config();
            if (tailspin_tasking_config)
            {
              memcpy(v73, tailspin_tasking_config, 0x2118uLL);
              tailspin_config_free();
            }
          }
        }

        else if (dword_10001C688 == 3)
        {
          v75 = *__error();
          v76 = sub_100004348();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_10000D924();
          }

          goto LABEL_94;
        }
      }

      else if (dword_10001C688)
      {
        if (dword_10001C688 == 1 && !v74)
        {
          v75 = *__error();
          v76 = sub_100004348();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_10000D8E8();
          }

LABEL_94:

          v106 = __error();
          v107 = 0;
          *v106 = v75;
LABEL_134:
          sub_100005BC8(v17, v107);
          goto LABEL_135;
        }
      }

      else if (!v74)
      {
LABEL_129:
        v107 = 1;
        goto LABEL_134;
      }

      v127 = byte_10001E770;
      sub_100001140(v73);
      v128 = &unk_100010843;
      if (v71)
      {
        v128 = v71;
      }

      v129 = [NSString stringWithFormat:@"<apply_config_%s>", v128];
      v130 = v129;
      if (v127)
      {
        v131 = 1;
      }

      else
      {
        v131 = v73[8432];
      }

      if (v129)
      {
        [v129 UTF8String];
      }

      v132 = sub_1000097C4(v131 & 1);
      v133 = *__error();
      v134 = sub_100004348();
      v135 = v134;
      if (v132)
      {
        if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
        {
          *block = 0;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_INFO, "tailspin state enacted", block, 2u);
        }

        *__error() = v133;
        sub_100009964();

        goto LABEL_129;
      }

      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_10000D960();
      }

      *__error() = v133;
    }

    v107 = 0;
    goto LABEL_134;
  }

  switch(uint64)
  {
    case -559035649:
      v43 = *__error();
      v44 = sub_100004348();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "tailspin has been poked!", buf, 2u);
      }

      *__error() = v43;
      break;
    case -559035648:
      v55 = *__error();
      v56 = sub_100004348();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "tailspin has been asked to resolve ondisk, profile and tasking configs", buf, 2u);
      }

      *__error() = v55;
      sub_1000096B0();
      break;
    case -559035647:
      v11 = *(v0 + 66);
      v12 = *__error();
      v13 = sub_100004348();
      v14 = v13;
      if (v11 == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(v0 + 48);
          v16 = *(v0 + 60);
          *buf = 136446466;
          *&buf[4] = v15;
          *&buf[12] = 1024;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "tailspin CPUTrace config requested by client %{public}s [%d]", buf, 0x12u);
        }

        *__error() = v12;
        v17 = v2;
        v18 = xpc_dictionary_create_reply(v17);
        if (!v18)
        {
          sub_10000C410();
        }

        v19 = v18;
        v20 = cputrace_session_data_from_disk();
        xpc_dictionary_set_BOOL(v19, "tailspin_succeeded", v20 != 0);
        if (v20)
        {
          xpc_dictionary_set_data(v19, "tailspin_cputrace_session_data", [v20 bytes], objc_msgSend(v20, "length"));
        }

        v21 = xpc_dictionary_get_remote_connection(v17);
        if (!v21)
        {
          sub_10000C410();
        }

        v22 = v21;
        xpc_connection_send_message(v21, v19);

        goto LABEL_112;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000D7EC(v0);
      }

      *__error() = v12;
      break;
  }

LABEL_31:
}

id sub_100004348()
{
  if (qword_10001EA10 != -1)
  {
    sub_100002B54();
  }

  v1 = qword_10001EA08;

  return v1;
}

void sub_10000438C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = [NSString stringWithUTF8String:a2];
  }

  else
  {
    v4 = @"Unknown";
  }

  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
}

id sub_10000445C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"Execname";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1000044E0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
    pid = xpc_connection_get_pid(v2);
    proc_name(pid, v3, 0x20u);
    v5 = *__error();
    v6 = sub_100004348();
    v7 = v6;
    if ((pid - 1) <= 0xFFFFFFFD && os_signpost_enabled(v6))
    {
      *buf = 136446466;
      v31 = v3;
      v32 = 1024;
      v33 = pid;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, pid, "NewClientConnection", "New connection for client %{public}s [%d]", buf, 0x12u);
    }

    *__error() = v5;
    responsible_pid_and_name = get_responsible_pid_and_name();
    v9 = xpc_connection_copy_entitlement_value();
    v10 = v9;
    v11 = v9 && xpc_get_type(v9) == &_xpc_type_BOOL && xpc_BOOL_get_value(v10);
    v12 = xpc_connection_copy_entitlement_value();

    v13 = v12 && xpc_get_type(v12) == &_xpc_type_BOOL && xpc_BOOL_get_value(v12);
    v14 = xpc_connection_copy_entitlement_value();

    v15 = v14 && xpc_get_type(v14) == &_xpc_type_BOOL && xpc_BOOL_get_value(v14);
    xpc_connection_set_context(v2, v3);
    xpc_connection_set_finalizer_f(v2, &_free);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002B68;
    handler[3] = &unk_1000188F8;
    v25 = responsible_pid_and_name;
    v26 = pid;
    v23 = v3 + 32;
    v24 = v3;
    v27 = v11;
    v28 = v13;
    v29 = v15;
    v22 = v2;
    v16 = v2;
    xpc_connection_set_event_handler(v16, handler);
    xpc_connection_set_target_queue(v16, qword_10001EE20);
    xpc_connection_resume(v16);
  }

  else
  {
    type = xpc_get_type(v2);
    v18 = *__error();
    v19 = sub_100004348();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (type == &_xpc_type_error)
    {
      if (v20)
      {
        sub_10000D6F0(v2);
      }

      *__error() = v18;
      _os_crash();
      __break(1u);
    }

    if (v20)
    {
      sub_10000D670(v2);
    }

    *__error() = v18;
    _os_crash();
    __break(1u);
  }
}

uint64_t sub_1000048DC()
{
  v0 = *__error();
  v1 = sub_100004348();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CB4C();
  }

  *__error() = v0;
  if (sub_100004A38())
  {
    sub_100009A0C();
    return 0;
  }

  else
  {
    v3 = *__error();
    v4 = sub_100004348();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100004D9C();
    }

    *__error() = v3;
    return 5;
  }
}

uint64_t sub_100004988(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 670)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      v4 = a1[3];
      *(a2 + 32) = sub_1000048DC();
    }

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

uint64_t sub_100004A38()
{
  v0 = __chkstk_darwin();
  if (byte_10001E728)
  {
    v1 = v0;
    ktrace_session_create();
    ktrace_session_set_event_names_enabled();
    ktrace_set_buffer_size();
    memcpy(__dst, &unk_10001C68C, 0x2000uLL);
    v2 = dword_10001E74C;
    if (qword_10001E6D8)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_10001E700 == 0;
    }

    if (!v3 || dword_10001E74C != 0)
    {
      for (i = 0; i != 256; ++i)
      {
        *(&__dst[592] + (i >> 3)) |= 1 << (i & 7);
      }

      if (v2)
      {
        if (tailspin_sampling_option_get())
        {
          LOBYTE(__dst[20]) |= 1u;
        }

        if (tailspin_sampling_option_get())
        {
          HIBYTE(__dst[16]) |= 0x10u;
          HIBYTE(__dst[64]) |= 0x10u;
        }

        if (tailspin_sampling_option_get())
        {
          LOBYTE(__dst[19]) |= 1u;
        }
      }
    }

    if (ktrace_events_filter_bitmap())
    {
      sub_10000C410();
    }

    v6 = ktrace_configure();
    ktrace_session_free();
    v7 = v6 == 0;
    v8 = *__error();
    v9 = sub_100004348();
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100004D14();
      }

      *__error() = v8;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Successfully enacted kdbg config", v16, 2u);
      }

      *__error() = v8;
      sub_10000A418(v1);
    }
  }

  else
  {
    v11 = ktrace_reset_existing();
    v12 = *__error();
    v13 = sub_100004348();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000CB8C();
      }

      v7 = 0;
      *__error() = v12;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        __dst[0] = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Successfully reset kdbg config", __dst, 2u);
      }

      *__error() = v12;
      return 1;
    }
  }

  return v7;
}

void sub_100004D14()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100004D9C()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

off_t sub_100004DD8(int a1)
{
  v2 = lseek(a1, 0, 1);
  v3 = lseek(a1, 0, 2);
  lseek(a1, v2, 0);
  return v3;
}

uint64_t sub_100004E38()
{
  v6 = 8;
  v7 = 0;
  v0 = sysctlbyname("kern.kdbg.oldest_time", &v7, &v6, 0, 0);
  v1 = *__error();
  v2 = sub_100004348();
  v3 = v2;
  if (v0 < 0)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000C4DC();
    }

    v5 = __error();
    result = 0;
    *v5 = v1;
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C42C();
    }

    *__error() = v1;
    return v7;
  }

  return result;
}

double sub_100004F00(unint64_t a1, double a2, double a3)
{
  if (qword_10001EE50 != -1)
  {
    sub_100005438();
  }

  LODWORD(a3) = dword_10001EE48;
  return *&a3 / (1000000000 * dword_10001EE4C) * a1;
}

void sub_100004F68(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = @"Unknown";
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = @"Unknown";
    goto LABEL_6;
  }

  v3 = [NSString stringWithUTF8String:a1];
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [NSString stringWithUTF8String:a2];
LABEL_6:
  v7 = v3;
  v8 = v4;
  v5 = v4;
  v6 = v3;
  AnalyticsSendEventLazy();
}

id sub_100005070(uint64_t a1)
{
  v5[0] = @"TraceBufferStartEventName";
  v5[1] = @"SaveExecname";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v5[2] = @"DurationSinceTraceBufferStartSec";
  v2 = [NSNumber numberWithDouble:*(a1 + 48)];
  v6[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

int *sub_100005148(uint64_t a1)
{
  v2 = atomic_load(&unk_10001EE88);
  v3 = v2;
  if (v2 != -1 && [*(a1 + 32) request_id] >= v2)
  {
    v7 = sub_100004DD8(*(a1 + 68));
    v8 = *__error();
    v9 = sub_100004348();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = [*(a1 + 32) request_id];
      v13 = [*(a1 + 32) filePath];
      *buf = 136447490;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v24 = 1024;
      v25 = 90;
      v26 = 2048;
      v27 = v7;
      v28 = 2114;
      v29 = v13;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Save from %{public}s [%d] (request ID %llu) exceeded %ds timeout! Size: %lld, Path: %{public}@", buf, 0x36u);
    }

    *__error() = v8;
    v14 = *(a1 + 32);
    v15 = [[NSString alloc] initWithFormat:@"Save from %s [%d] exceeded %ds timeout! Size: %lld", objc_msgSend(*(a1 + 40), "UTF8String"), *(a1 + 64), 90, v7];
    [v14 stopRecordingTimeForDumpRequestPhase:v15];

    [*(a1 + 32) setFileSizeBytes:v7];
    sub_1000054CC(*(a1 + 48), 27, *(a1 + 32));
    v16 = *__error();
    v17 = sub_100004348();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000DE08();
    }

    *__error() = v16;
    exit(-1);
  }

  v4 = *__error();
  v5 = sub_100004348();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E014(a1, v3, v5);
  }

  result = __error();
  *result = v4;
  return result;
}

void sub_1000053F8(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_10001E920 = v1 / v2;
}

void sub_10000544C(id a1)
{
  if (mach_timebase_info(&dword_10001EE48))
  {
    sub_10000C410();
  }
}

void sub_100005480(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) stopRecordingTimeForDumpRequestPhase:0];
  sub_1000054CC(*(a1 + 40), a2, *(a1 + 32));
  atomic_store(0xFFFFFFFF, &unk_10001EE88);
}

void sub_1000054CC(void *a1, uint64_t a2, void *a3)
{
  xdict = a1;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(xdict);
  if (!v6)
  {
    sub_10000C410();
  }

  v7 = v6;
  context = xpc_connection_get_context(v6);
  sub_1000055B0(context + 32, a2, v5);
  sub_100005BC8(xdict, a2 == 0);
  if ((a2 - 25) <= 1)
  {
    v9 = *__error();
    v10 = sub_100004348();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000DE08();
    }

    *__error() = v9;
    exit(-1);
  }
}

void sub_1000055C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a4;
  if (a2)
  {
    v8 = [NSString stringWithUTF8String:a2];
  }

  else
  {
    v8 = @"Unknown";
  }

  v11 = v7;
  v9 = v7;
  v10 = v8;
  AnalyticsSendEventLazy();
}

id sub_1000056C0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v42[1] = @"SaveResultEnum";
  v43[0] = v2;
  v42[0] = @"ExecName";
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v43[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 fileSizeBytes]);
    [v5 setObject:v7 forKeyedSubscript:@"FileSize"];

    [*(v1 + 40) tailspinDurationSecs];
    v8 = [NSNumber numberWithDouble:?];
    [v5 setObject:v8 forKeyedSubscript:@"TailspinDuration"];

    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(v1 + 40) numEvents]);
    [v5 setObject:v9 forKeyedSubscript:@"NumEvents"];

    [*(v1 + 40) requestProcessingLatencySecs];
    if (v10 != -1.0)
    {
      [*(v1 + 40) requestProcessingLatencySecs];
      v11 = [NSNumber numberWithDouble:?];
      [v5 setObject:v11 forKeyedSubscript:@"RequestProcessingLatency"];
    }

    [*(v1 + 40) ratioTimePeriodCovered];
    if (v12 != -1.0)
    {
      [*(v1 + 40) ratioTimePeriodCovered];
      v14 = [NSNumber numberWithInt:(v13 * 100.0)];
      [v5 setObject:v14 forKeyedSubscript:@"PercentageTimeCovered"];
    }

    [*(v1 + 40) lostTimePeriodAtStartSecs];
    if (v15 != -1.0)
    {
      [*(v1 + 40) lostTimePeriodAtStartSecs];
      v16 = [NSNumber numberWithDouble:?];
      [v5 setObject:v16 forKeyedSubscript:@"LostTimePeriodAtStart"];
    }

    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(v1 + 40) didClientRequestEndTimestamp]);
    [v5 setObject:v17 forKeyedSubscript:@"DidClientRequestEndTimestamp"];

    if ([*(v1 + 40) didClientRequestEndTimestamp])
    {
      v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(v1 + 40) didPrevClientSaveOverlapWithEndTimestamp]);
      [v5 setObject:v18 forKeyedSubscript:@"DidPrevClientSaveOverlapWithEndTimestamp"];
    }

    v19 = [*(v1 + 40) prevExecName];

    if (v19)
    {
      v20 = [*(v1 + 40) prevExecName];
      [v5 setObject:v20 forKeyedSubscript:@"PrevExecName"];
    }

    v21 = [*(v1 + 40) timeSpentByPhases];

    if (v21)
    {
      v22 = v5;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [*(v1 + 40) timeSpentByPhases];
      v23 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            v28 = [NSString stringWithFormat:@"Duration_%@", v27];
            if (v28)
            {
              [*(v1 + 40) timeSpentByPhases];
              v30 = v29 = v1;
              v31 = [v30 objectForKeyedSubscript:v27];
              [v22 setObject:v31 forKeyedSubscript:v28];

              v1 = v29;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v24);
      }

      v5 = v22;
    }
  }

  v32 = *__error();
  v33 = sub_100004348();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E1D4(v1, v5, v33);
  }

  *__error() = v32;
  v34 = [v5 copy];

  return v34;
}

void sub_100005BC8(void *a1, BOOL a2)
{
  xdict = a1;
  reply = xpc_dictionary_create_reply(xdict);
  if (!reply)
  {
    sub_10000C410();
  }

  v4 = reply;
  xpc_dictionary_set_BOOL(reply, "tailspin_succeeded", a2);
  v5 = xpc_dictionary_get_remote_connection(xdict);
  if (!v5)
  {
    sub_10000C410();
  }

  v6 = v5;
  xpc_connection_send_message(v5, v4);
}

double sub_100005C54(unint64_t a1)
{
  if (qword_10001E928 != -1)
  {
    sub_1000053E4();
  }

  return *&qword_10001E920 * a1 * 0.000000001;
}

uint64_t sub_100006E3C()
{
  result = sub_1000073D8();
  if (result)
  {
    result = sub_1000073D8();
    if (result)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v1 = qword_10001E938;
      v14 = qword_10001E938;
      if (!qword_10001E938)
      {
        v2 = sub_1000075EC();
        v12[3] = dlsym(v2, "hwtrace_live_recording_options_init");
        qword_10001E938 = v12[3];
        v1 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v1)
      {
        return 0;
      }

      result = sub_1000073D8();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v3 = qword_10001E940;
      v14 = qword_10001E940;
      if (!qword_10001E940)
      {
        v4 = sub_1000075EC();
        v12[3] = dlsym(v4, "hwtrace_live_recording_options_deinit");
        qword_10001E940 = v12[3];
        v3 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v3)
      {
        return 0;
      }

      result = sub_1000073D8();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v5 = qword_10001E948;
      v14 = qword_10001E948;
      if (!qword_10001E948)
      {
        v6 = sub_1000075EC();
        v12[3] = dlsym(v6, "hwtrace_live_recording_options_set_session_policy");
        qword_10001E948 = v12[3];
        v5 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v5)
      {
        return 0;
      }

      result = sub_1000073D8();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v7 = qword_10001E950;
      v14 = qword_10001E950;
      if (!qword_10001E950)
      {
        v8 = sub_1000075EC();
        v12[3] = dlsym(v8, "hwtrace_live_recording_options_set_background");
        qword_10001E950 = v12[3];
        v7 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v7)
      {
        return 0;
      }

      result = sub_1000073D8();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v9 = qword_10001E958;
      v14 = qword_10001E958;
      if (!qword_10001E958)
      {
        v10 = sub_1000075EC();
        v12[3] = dlsym(v10, "hwtrace_live_recording_options_add_system");
        qword_10001E958 = v12[3];
        v9 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (v9)
      {
        result = sub_1000073D8();
        if (result)
        {
          result = sub_100007780();
          if (result)
          {
            result = sub_1000073D8();
            if (result)
            {
              result = sub_1000078BC();
              if (result)
              {
                result = sub_1000073D8();
                if (result)
                {
                  result = sub_1000079F8();
                  if (result)
                  {
                    result = sub_1000073D8();
                    if (result)
                    {
                      result = sub_100007B34();
                      if (result)
                      {
                        result = sub_1000073D8();
                        if (result)
                        {
                          result = sub_100007C70();
                          if (result)
                          {
                            result = sub_1000073D8();
                            if (result)
                            {
                              result = sub_100007DAC();
                              if (result)
                              {
                                result = sub_1000073D8();
                                if (result)
                                {
                                  result = sub_100007EE8();
                                  if (result)
                                  {
                                    result = sub_1000073D8();
                                    if (result)
                                    {
                                      result = sub_100008024();
                                      if (result)
                                      {
                                        result = sub_1000073D8();
                                        if (result)
                                        {
                                          result = sub_100008160();
                                          if (result)
                                          {
                                            result = sub_1000073D8();
                                            if (result)
                                            {
                                              result = sub_10000829C();
                                              if (result)
                                              {
                                                result = sub_1000073D8();
                                                if (result)
                                                {
                                                  result = sub_1000083D8();
                                                  if (result)
                                                  {
                                                    result = sub_1000073D8();
                                                    if (result)
                                                    {
                                                      result = sub_100008514();
                                                      if (result)
                                                      {
                                                        result = sub_1000073D8();
                                                        if (result)
                                                        {
                                                          result = sub_100008650();
                                                          if (result)
                                                          {
                                                            result = sub_1000073D8();
                                                            if (result)
                                                            {
                                                              result = sub_10000878C();
                                                              if (result)
                                                              {
                                                                result = sub_1000073D8();
                                                                if (result)
                                                                {
                                                                  result = sub_1000088C8();
                                                                  if (result)
                                                                  {
                                                                    result = sub_1000073D8();
                                                                    if (result)
                                                                    {
                                                                      result = sub_100008A04();
                                                                      if (result)
                                                                      {
                                                                        result = sub_1000073D8();
                                                                        if (result)
                                                                        {
                                                                          result = sub_100008B40();
                                                                          if (result)
                                                                          {
                                                                            result = sub_1000073D8();
                                                                            if (result)
                                                                            {
                                                                              result = sub_100008C7C();
                                                                              if (result)
                                                                              {
                                                                                result = sub_1000073D8();
                                                                                if (result)
                                                                                {
                                                                                  result = sub_100008DB8();
                                                                                  if (result)
                                                                                  {
                                                                                    result = sub_1000073D8();
                                                                                    if (result)
                                                                                    {
                                                                                      result = sub_100008EF4();
                                                                                      if (result)
                                                                                      {
                                                                                        result = sub_1000073D8();
                                                                                        if (result)
                                                                                        {
                                                                                          return sub_100009030() != 0;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1000073B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000073D8()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_10001E930;
  v5 = qword_10001E930;
  if (!qword_10001E930)
  {
    v6 = *off_100018798;
    v7 = 0;
    v3[3] = _sl_dlopen();
    qword_10001E930 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1000074EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007504(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E930 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000759C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_options_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E938 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000075EC()
{
  v1 = 0;
  result = sub_1000073D8();
  if (!result)
  {
    sub_10000C390(&v1);
  }

  return result;
}

void *sub_100007640(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_options_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E940 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100007690(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_options_set_session_policy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E948 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000076E0(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_options_set_background");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E950 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100007730(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_options_add_system");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007780()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E960;
  v6 = qword_10001E960;
  if (!qword_10001E960)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_trace_mode");
    qword_10001E960 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000786C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_trace_mode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000078BC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E968;
  v6 = qword_10001E968;
  if (!qword_10001E968)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_driver");
    qword_10001E968 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000079A8(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_driver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000079F8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E970;
  v6 = qword_10001E970;
  if (!qword_10001E970)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_production");
    qword_10001E970 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100007AE4(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_production");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E970 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007B34()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E978;
  v6 = qword_10001E978;
  if (!qword_10001E978)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_context_target");
    qword_10001E978 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100007C20(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_context_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E978 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007C70()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E980;
  v6 = qword_10001E980;
  if (!qword_10001E980)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_exception_level_target");
    qword_10001E980 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100007D5C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_exception_level_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E980 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007DAC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E988;
  v6 = qword_10001E988;
  if (!qword_10001E988)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_init");
    qword_10001E988 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100007E98(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_session_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E988 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007EE8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E990;
  v6 = qword_10001E990;
  if (!qword_10001E990)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_init_from_session");
    qword_10001E990 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100007FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100007FD4(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_init_from_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E990 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008024()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E998;
  v6 = qword_10001E998;
  if (!qword_10001E998)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_deinit");
    qword_10001E998 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000080F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008110(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_session_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008160()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9A0;
  v6 = qword_10001E9A0;
  if (!qword_10001E9A0)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_uuid");
    qword_10001E9A0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000824C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_session_uuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000829C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9A8;
  v6 = qword_10001E9A8;
  if (!qword_10001E9A8)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_serialize");
    qword_10001E9A8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008388(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_session_serialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000083D8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9B0;
  v6 = qword_10001E9B0;
  if (!qword_10001E9B0)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_init_with_options");
    qword_10001E9B0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000084AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000084C4(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_init_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008514()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9B8;
  v6 = qword_10001E9B8;
  if (!qword_10001E9B8)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_deinit");
    qword_10001E9B8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000085E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008600(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008650()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9C0;
  v6 = qword_10001E9C0;
  if (!qword_10001E9C0)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_start");
    qword_10001E9C0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000873C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_start");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000878C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9C8;
  v6 = qword_10001E9C8;
  if (!qword_10001E9C8)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_pause");
    qword_10001E9C8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008878(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_pause");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000088C8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9D0;
  v6 = qword_10001E9D0;
  if (!qword_10001E9D0)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_recording_stop");
    qword_10001E9D0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000089B4(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_recording_stop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008A04()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9D8;
  v6 = qword_10001E9D8;
  if (!qword_10001E9D8)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_recording_save_to_ktrace");
    qword_10001E9D8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008AF0(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_recording_save_to_ktrace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008B40()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9E0;
  v6 = qword_10001E9E0;
  if (!qword_10001E9E0)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_recording_init_from_live_recording");
    qword_10001E9E0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008C2C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_recording_init_from_live_recording");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008C7C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9E8;
  v6 = qword_10001E9E8;
  if (!qword_10001E9E8)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_recording_deinit");
    qword_10001E9E8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008D68(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008DB8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9F0;
  v6 = qword_10001E9F0;
  if (!qword_10001E9F0)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_topology");
    qword_10001E9F0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008EA4(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_topology");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100008EF4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001E9F8;
  v6 = qword_10001E9F8;
  if (!qword_10001E9F8)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_topology_systems");
    qword_10001E9F8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100008FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100008FE0(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_topology_systems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001E9F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100009030()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_10001EA00;
  v6 = qword_10001EA00;
  if (!qword_10001EA00)
  {
    v1 = sub_1000075EC();
    v4[3] = dlsym(v1, "hwtrace_live_system_name");
    qword_10001EA00 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100009104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000911C(uint64_t a1)
{
  v2 = sub_1000075EC();
  result = dlsym(v2, "hwtrace_live_system_name");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001EA00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000916C(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = snprintf(byte_10001EA18, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_10001EA18[result], 1024 - result, a2, &a9);
  }

  qword_10001E7E0 = byte_10001EA18;
  return result;
}

uint64_t sub_1000091EC()
{
  __chkstk_darwin();
  __sizep = 0;
  __bufp = 0;
  if (qword_10001E6B0 == ktrace_config_kdebug_get_buffer_size() >> 20)
  {
    typefilter = ktrace_config_kdebug_get_typefilter();
    if (typefilter)
    {
      v1 = typefilter;
      memcpy(__dst, &unk_10001C68C, sizeof(__dst));
      if (qword_10001E6D8)
      {
        v2 = 0;
      }

      else
      {
        v2 = qword_10001E700 == 0;
      }

      if (!v2 || dword_10001E74C != 0)
      {
        for (i = 0; i != 256; ++i)
        {
          __dst[(i >> 3) + 1184] |= 1 << (i & 7);
        }
      }

      v5 = 0;
      v6 = 0;
      while (2)
      {
        for (j = 0; j != 256; ++j)
        {
          v8 = (v5 + j) >> 3;
          v9 = 1 << (j & 7);
          if ((v9 & __dst[v8]) != 0 && (v9 & *(v1 + v8)) == 0)
          {
            v13 = *__error();
            v14 = sub_100004348();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10000C5E4();
            }

            goto LABEL_34;
          }
        }

        ++v6;
        v5 += 256;
        if (v6 != 256)
        {
          continue;
        }

        break;
      }

      timer_period_ns = ktrace_config_kperf_get_timer_period_ns();
      if (timer_period_ns == qword_10001E6D8)
      {
        if (!timer_period_ns)
        {
          goto LABEL_23;
        }

        if (ktrace_config_kperf_get_timer_action_id() == HIDWORD(qword_10001E798))
        {
          if (ktrace_config_kperf_get_action_samplers() == dword_10001E7A0)
          {
            if (ktrace_config_kperf_get_pet_mode() == 2)
            {
LABEL_23:
              v11 = ktrace_config_kperf_get_timer_period_ns();
              if (v11 == qword_10001E700)
              {
                if (!v11)
                {
                  return 1;
                }

                if (ktrace_config_kperf_get_timer_action_id() == dword_10001E7A8)
                {
                  if (ktrace_config_kperf_get_action_samplers() == dword_10001E7AC)
                  {
                    return 1;
                  }

                  v13 = *__error();
                  v14 = sub_100004348();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000C914();
                  }
                }

                else
                {
                  v13 = *__error();
                  v14 = sub_100004348();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000C894();
                  }
                }
              }

              else
              {
                v13 = *__error();
                v14 = sub_100004348();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  sub_10000C810();
                }
              }
            }

            else
            {
              v13 = *__error();
              v14 = sub_100004348();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                sub_10000C7D4();
              }
            }
          }

          else
          {
            v13 = *__error();
            v14 = sub_100004348();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10000C758();
            }
          }
        }

        else
        {
          v13 = *__error();
          v14 = sub_100004348();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10000C6D8();
          }
        }
      }

      else
      {
        v13 = *__error();
        v14 = sub_100004348();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10000C654();
        }
      }
    }

    else
    {
      v13 = *__error();
      v14 = sub_100004348();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10000C990();
      }
    }
  }

  else
  {
    v13 = *__error();
    v14 = sub_100004348();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000C560();
    }
  }

LABEL_34:

  *__error() = v13;
  result = open_memstream(&__bufp, &__sizep);
  if (result)
  {
    v15 = result;
    if (!ktrace_config_print_description())
    {
      v16 = *__error();
      v17 = sub_100004348();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000CA14(&__bufp);
      }

      *__error() = v16;
    }

    fclose(v15);
    free(__bufp);
    return 0;
  }

  return result;
}

void sub_1000096B0()
{
  v0 = byte_10001E770;
  tailspin_profile_config = get_tailspin_profile_config();
  if (tailspin_profile_config)
  {
    v2 = tailspin_profile_config;
    goto LABEL_3;
  }

  tailspin_tasking_config = get_tailspin_tasking_config();
  if (!tailspin_tasking_config)
  {
    if ((dword_10001C688 & 0xFFFFFFFD) != 1)
    {
      return;
    }

    sub_100001140(0);
    goto LABEL_4;
  }

  v2 = tailspin_tasking_config;
  if (dword_10001C688 != 2)
  {
LABEL_3:
    sub_100001140(v2);
    tailspin_config_free();
LABEL_4:
    if (sub_1000097C4((v0 | byte_10001E770) & 1))
    {

      sub_100009964();
    }

    else
    {
      v3 = *__error();
      v4 = sub_100004348();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10000CA8C();
      }

      *__error() = v3;
    }

    return;
  }

  tailspin_config_free();
}

uint64_t sub_1000097C4(int a1)
{
  v2 = sub_100004A38();
  if (v2)
  {
    sub_100009A0C();
    if (a1)
    {
      v3 = byte_10001E728;
      v4 = byte_10001E770;
      v5 = reinit_cputrace_live_recording_from_existing_session();
      v11 = v5;
      v6 = *__error();
      v7 = sub_100004348();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v3 == 1 && (v4 & 1) != 0)
      {
        if (v5)
        {
          if (v8)
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tearing down existing CPUTrace session", v10, 2u);
          }

          *__error() = v6;
          sub_100009DCC(&v11);
        }

        else
        {
          if (v8)
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No existing CPUTrace session found to teardown", v10, 2u);
          }

          *__error() = v6;
        }

        create_and_start_cputrace_live_recording();
      }

      else if (v5)
      {
        if (v8)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tearing down CPUTrace session for disablement", v10, 2u);
        }

        *__error() = v6;
        sub_100009DCC(&v11);
      }

      else
      {
        if (v8)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No CPUTrace session found to teardown for disablement", v10, 2u);
        }

        *__error() = v6;
      }
    }
  }

  return v2;
}

void sub_100009964()
{
  v0 = tailspin_make_ondisk_config();
  v1 = v0;
  if (v0)
  {
    if (([v0 writeToFile:@"/var/db/tailspin_config.plist" atomically:1] & 1) == 0)
    {
      v2 = *__error();
      v3 = sub_100004348();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10000CAC8();
      }

      *__error() = v2;
    }
  }

  else
  {
    unlink("/var/db/tailspin_config.plist");
  }
}

uint64_t sub_100009A0C()
{
  if (byte_10001E728)
  {
    v0 = qword_10001E6D8;
  }

  else
  {
    v0 = 0;
  }

  if (byte_10001E728)
  {
    v1 = qword_10001E700;
  }

  else
  {
    v1 = 0;
  }

  if (byte_10001E728)
  {
    v2 = dword_10001E74C;
  }

  else
  {
    v2 = 0;
  }

  if (kperf_reset())
  {
    goto LABEL_27;
  }

  if (v0)
  {
    qword_10001E798 = 0x200000000;
    v3 = 1;
    v4 = 2;
    if (!v1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v3 = 0;
  v4 = 1;
  if (v1)
  {
LABEL_13:
    ++v4;
    dword_10001E7A4 = v3;
    dword_10001E7A8 = v4;
    ++v3;
  }

LABEL_14:
  if (v2)
  {
    dword_10001E7B4 = ++v4;
  }

  v10 = 0;
  if (kperf_action_count_get() || v10 < v4 && kperf_action_count_set())
  {
    goto LABEL_27;
  }

  v9 = 0;
  if (kperf_timer_count_get() || v9 < v3 && kperf_timer_count_set())
  {
    goto LABEL_27;
  }

  if (kperf_lazy_cpu_action_set())
  {
    goto LABEL_27;
  }

  kperf_ns_to_ticks();
  if (kperf_lazy_cpu_time_threshold_set())
  {
    goto LABEL_27;
  }

  if (v0)
  {
    if (kperf_action_samplers_set())
    {
      goto LABEL_27;
    }

    if (kperf_timer_action_set())
    {
      goto LABEL_27;
    }

    kperf_ns_to_ticks();
    if (kperf_timer_period_set())
    {
      goto LABEL_27;
    }

    v8 = 1;
    if (sysctlbyname("kperf.lightweight_pet", 0, 0, &v8, 4uLL) || kperf_timer_pet_set())
    {
      goto LABEL_27;
    }
  }

  if (v1)
  {
    if (kperf_action_samplers_set())
    {
      goto LABEL_27;
    }

    if (kperf_timer_action_set())
    {
      goto LABEL_27;
    }

    kperf_ns_to_ticks();
    if (kperf_timer_period_set())
    {
      goto LABEL_27;
    }
  }

  if (!v2)
  {
LABEL_58:
    result = kperf_sample_on();
    if (!result)
    {
      return result;
    }

    goto LABEL_27;
  }

  kperf_kdebug_filter_create();
  if (v2)
  {
    if (kperf_kdebug_filter_add_debugid() || kperf_kdebug_filter_add_debugid())
    {
      goto LABEL_27;
    }

    if ((v2 & 2) == 0)
    {
LABEL_44:
      if ((v2 & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_44;
  }

  if (kperf_kdebug_filter_add_class_subclass_fn() || kperf_kdebug_filter_add_class_subclass_fn())
  {
    goto LABEL_27;
  }

  if ((v2 & 4) == 0)
  {
    goto LABEL_55;
  }

LABEL_45:
  if (kperf_kdebug_filter_add_class_subclass_fn())
  {
    goto LABEL_27;
  }

LABEL_55:
  if (!kperf_action_samplers_set() && !kperf_kdebug_filter_set() && !kperf_kdebug_action_set())
  {
    goto LABEL_58;
  }

LABEL_27:
  v5 = *__error();
  v6 = sub_100004348();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000CC10();
  }

  *__error() = v5;
  return kperf_reset();
}

int *sub_100009DCC(uint64_t *a1)
{
  if (sub_100006E3C())
  {
    v2 = *a1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v3 = off_10001EE58;
    v21 = off_10001EE58;
    if (!off_10001EE58)
    {
      v4 = sub_10000A184();
      v19[3] = dlsym(v4, "hwtrace_live_recording_pause");
      off_10001EE58 = v19[3];
      v3 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v3)
    {
      sub_10000CEEC();
    }

    if (v3(v2))
    {
      v5 = *__error();
      v6 = sub_100004348();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10000CD1C();
      }

      *__error() = v5;
    }

    v7 = *a1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v8 = off_10001EE68;
    v21 = off_10001EE68;
    if (!off_10001EE68)
    {
      v9 = sub_10000A184();
      v19[3] = dlsym(v9, "hwtrace_live_recording_stop");
      off_10001EE68 = v19[3];
      v8 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v8)
    {
      sub_10000CE74();
    }

    if (v8(v7))
    {
      v10 = *__error();
      v11 = sub_100004348();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000CD8C();
      }

      result = __error();
      *result = v10;
    }

    else
    {
      v15 = *a1;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v16 = off_10001EE70;
      v21 = off_10001EE70;
      if (!off_10001EE70)
      {
        v17 = sub_10000A184();
        v19[3] = dlsym(v17, "hwtrace_live_recording_deinit");
        off_10001EE70 = v19[3];
        v16 = v19[3];
      }

      _Block_object_dispose(&v18, 8);
      if (!v16)
      {
        sub_10000CDFC();
      }

      v16(v15);
      *a1 = 0;
      return unlink("/var/db/tailspin_cputrace_session.json");
    }
  }

  else
  {
    v13 = *__error();
    v14 = sub_100004348();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC9C();
    }

    result = __error();
    *result = v13;
  }

  return result;
}

void sub_10000A114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000A134(uint64_t a1)
{
  v2 = sub_10000A184();
  result = dlsym(v2, "hwtrace_live_recording_pause");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001EE58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000A184()
{
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10001EE60;
  v8 = qword_10001EE60;
  if (!qword_10001EE60)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_10000A2E0;
    v2[4] = &unk_1000187B8;
    v3 = &v5;
    v4 = v2;
    v9 = *off_100018858;
    v10 = 0;
    v6[3] = _sl_dlopen();
    qword_10001EE60 = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    sub_10000C390(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

void sub_10000A2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A2E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001EE60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000A378(uint64_t a1)
{
  v2 = sub_10000A184();
  result = dlsym(v2, "hwtrace_live_recording_stop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001EE68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000A3C8(uint64_t a1)
{
  v2 = sub_10000A184();
  result = dlsym(v2, "hwtrace_live_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001EE70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

char *sub_10000A418(const char *a1)
{
  v2 = *__error();
  v3 = sub_100004348();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = a1;
    v7 = 2082;
    v8 = asc_10001E7B8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating trace buffer reset event name: %{public}s (was %{public}s)", &v5, 0x16u);
  }

  *__error() = v2;
  return strncpy(asc_10001E7B8, a1, 0x20uLL);
}

uint64_t sub_10000A4FC(uint64_t a1)
{
  v2 = *__error();
  v3 = sub_100004348();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7[0] = 136315138;
    *&v7[1] = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cleaning up kernel state before exiting because: %s", v7, 0xCu);
  }

  *__error() = v2;
  v7[2] = 7;
  *v7 = 0x1800000001;
  if (sysctl(v7, 3u, 0, 0, 0, 0) < 0)
  {
    v4 = *__error();
    v5 = sub_100004348();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF64();
    }

    *__error() = v4;
  }

  kperf_sample_off();
  return kperf_reset();
}

void sub_10000A62C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, "XPCEventName");
  v10 = xpc_dictionary_get_string(v2, "Notification");
  if (!string)
  {
LABEL_78:
    sub_10000D63C(string, v10, v4, v5, v6, v7, v8, v9);
  }

  if (!strcmp(string, "com.apple.tailspin.tasking_changed") && v10 && !strcmp(v10, "com.apple.da.tasking_changed"))
  {
    v33 = *__error();
    v34 = sub_100004348();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v35 = "Resolving tasking change";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, v35, buf, 2u);
    }

LABEL_36:

    *__error() = v33;
    sub_1000096B0();
    goto LABEL_77;
  }

  if (!strcmp(string, "com.apple.tailspin.profile_changed") && v10 && !strcmp(v10, "com.apple.ManagedConfiguration.profileListChanged"))
  {
    v33 = *__error();
    v34 = sub_100004348();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v35 = "Resolving profile change";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (strcmp(string, "com.apple.tailspin.dump_on_reset") || !v10 || strcmp(v10, "com.apple.system.logging.power_button_notification"))
  {
    goto LABEL_78;
  }

  v11 = *__error();
  v12 = sub_100004348();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "notification to dump tailspin on reset", buf, 2u);
  }

  *__error() = v11;
  if (byte_10001E728)
  {
    v13 = objc_alloc_init(NSDateFormatter);
    [v13 setDateStyle:1];
    [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v81 = 0;
    v14 = +[NSFileManager defaultManager];
    v82 = 0;
    if ([v14 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" isDirectory:&v82])
    {
      v15 = v82;
      v16 = *__error();
      v17 = sub_100004348();
      v18 = v17;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v86 = 138412290;
          *&v86[4] = @"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Directory at path: %@ already exists", v86, 0xCu);
        }

        *__error() = v16;
        v19 = +[NSFileManager defaultManager];
        v20 = [v19 attributesOfItemAtPath:@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" error:0];
        v21 = [v20 fileOwnerAccountName];
        v22 = [v21 isEqualToString:@"mobile"];

        if ((v22 & 1) == 0)
        {
          v23 = *__error();
          v24 = sub_100004348();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *v86 = 138543618;
            *&v86[4] = @"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins";
            v87 = 2114;
            v88 = @"mobile";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Attempting to update owner for directory at %{public}@ to %{public}@", v86, 0x16u);
          }

          *__error() = v23;
          v84 = NSFileOwnerAccountName;
          v85 = @"mobile";
          v25 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v83 = 0;
          v26 = [v19 setAttributes:v25 ofItemAtPath:@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" error:&v83];
          v27 = v83;
          v28 = *__error();
          v29 = sub_100004348();
          v30 = v29;
          if (v26)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v86 = 138543618;
              *&v86[4] = @"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins";
              v87 = 2114;
              v88 = @"mobile";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Successfully updated owner for directory at %{public}@ to %{public}@", v86, 0x16u);
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10000D21C();
          }

          *__error() = v28;
        }

LABEL_45:
        v42 = open([@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" UTF8String], 0);
        if (v42 == -1)
        {
          v48 = *__error();
          v49 = sub_100004348();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_10000D3B8();
          }

          v41 = 0;
          *__error() = v48;
        }

        else
        {
          v43 = v42;
          v84 = 74245;
          v44 = ffsctl(v42, 0xC0084A44uLL, &v84, 0);
          v41 = v44 == 0;
          v45 = *__error();
          v46 = sub_100004348();
          v47 = v46;
          if (v44)
          {
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              sub_10000D2B0();
            }
          }

          else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            sub_10000D334(v47);
          }

          *__error() = v45;
          close(v43);
        }

        goto LABEL_55;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000D19C();
      }

      *__error() = v16;
      v85 = NSLocalizedDescriptionKey;
      *v86 = @"Path exists but is not a directory";
      v40 = [NSDictionary dictionaryWithObjects:v86 forKeys:&v85 count:1];
      v81 = [NSError errorWithDomain:@"ForceResetTailspinErrorDomain" code:1 userInfo:v40];
    }

    else
    {
      v36 = *__error();
      v37 = sub_100004348();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *v86 = 138412290;
        *&v86[4] = @"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Creating directory at path %@", v86, 0xCu);
      }

      *__error() = v36;
      v85 = NSFileOwnerAccountName;
      *v86 = @"mobile";
      v38 = [NSDictionary dictionaryWithObjects:v86 forKeys:&v85 count:1];
      v39 = [v14 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" withIntermediateDirectories:1 attributes:v38 error:&v81];

      if (v39)
      {
        goto LABEL_45;
      }
    }

    v41 = 0;
LABEL_55:

    v50 = v81;
    if (v41)
    {
      v51 = +[NSDate date];
      v52 = [v13 stringFromDate:v51];
      v53 = [NSString stringWithFormat:@"tailspin-trace_reset_%@.tailspin", v52];

      v54 = [@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" stringByAppendingPathComponent:v53];
      v55 = [v54 stringByAppendingString:@".temp"];
      v56 = umask(0);
      v57 = open([v55 UTF8String], 2562, 432);
      umask(v56);
      if (v57 < 0)
      {
        v62 = *__error();
        v63 = sub_100004348();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_10000D5CC();
        }

        *__error() = v62;
      }

      else if (unlink([v55 UTF8String]))
      {
        v58 = *__error();
        v59 = sub_100004348();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_10000D4C4();
        }

        *__error() = v58;
        close(v57);
      }

      else
      {
        v73 = v53;
        v64 = +[NSMutableDictionary dictionary];
        [v64 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanFalse forKeyedSubscript:UnsafePointer];
        [v64 setObject:&off_100019138 forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
        [v64 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
        v65 = *__error();
        v66 = sub_100004348();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          *v86 = 138543362;
          *&v86[4] = v64;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Saving tailspin file for reset with options = %{public}@", v86, 0xCu);
        }

        *__error() = v65;
        v67 = tailspin_make_ondisk_config();
        v68 = os_transaction_create();
        if (dup(v57) == -1)
        {
          v72 = v68;
          v70 = *__error();
          v71 = sub_100004348();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            sub_10000D548();
          }

          *__error() = v70;
          close(v57);
          v69 = v72;
        }

        else
        {
          *buf = _NSConcreteStackBlock;
          v75 = 3221225472;
          v76 = sub_10000BC78;
          v77 = &unk_1000189A8;
          v80 = v57;
          v78 = v54;
          v79 = v68;
          tailspin_save_trace_with_standard_chunks();

          v69 = v68;
        }

        v53 = v73;
      }
    }

    else
    {
      v60 = *__error();
      v61 = sub_100004348();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_10000D454();
      }

      *__error() = v60;
    }

    goto LABEL_77;
  }

  v31 = *__error();
  v32 = sub_100004348();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Unable to save tailspin for reset: tailspin currently disabled", v86, 2u);
  }

  *__error() = v31;
LABEL_77:
}

void sub_10000B1DC(id a1, OS_xpc_object *a2)
{
  connection = a2;
  if (xpc_get_type(connection) == &_xpc_type_connection)
  {
    xpc_connection_cancel(connection);
    v2 = connection;
  }

  else
  {
    v2 = connection;
    if (connection == &_xpc_error_connection_invalid)
    {
      fwrite("tailspind is not intended to be run manually", 0x2CuLL, 1uLL, __stderrp);
      exit(1);
    }
  }
}

void sub_10000B26C(id a1)
{
  v1 = *__error();
  v2 = sub_100004348();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "server has been SIGTERMed", v3, 2u);
  }

  *__error() = v1;
  sub_10000A4FC("exiting for SIGTERM");
  exit(0);
}

id sub_10000B2E8()
{
  if (qword_10001EE90 != -1)
  {
    sub_10000DE44();
  }

  v1 = qword_10001EE98;

  return v1;
}

void sub_10000B32C(uint64_t a1)
{
  if (!xpc_activity_should_defer(*(a1 + 32)))
  {

    sub_10000B368(0);
  }
}

void sub_10000B368(int a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = *__error();
  v3 = sub_100004348();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Trying tailspin_server_cleanup_force_reset_tailspins()", buf, 2u);
  }

  *__error() = v2;
  v4 = sub_10000B2E8();
  dispatch_assert_queue_V2(v4);

  v5 = +[NSFileManager defaultManager];
  v78 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" error:&v78];
  v7 = v78;
  v8 = v7;
  if (!v6 || v7)
  {
    v59 = *__error();
    v60 = sub_100004348();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_10000DE58();
    }

    *__error() = v59;
  }

  else
  {
    v65 = v5;
    v62 = v1;
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v61 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v75;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v75 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v74 + 1) + 8 * i);
          v16 = [v15 pathExtension];
          v17 = [v16 isEqualToString:@"tailspin"];

          if (v17)
          {
            v18 = [@"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins" stringByAppendingPathComponent:v15];
            [v9 addObject:v18];
          }

          else
          {
            v19 = *__error();
            v20 = sub_100004348();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v80 = v15;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "WARNING: Some file that is not a tailspin is in our folder. We will not delete this: %@", buf, 0xCu);
            }

            *__error() = v19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v12);
    }

    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10000BF54;
    v73[3] = &unk_100018A80;
    v73[4] = v5;
    [v9 sortUsingComparator:v73];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v9;
    v21 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v64 = 0;
      v24 = 0;
      v25 = *v70;
      do
      {
        v26 = 0;
        do
        {
          if (*v70 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v69 + 1) + 8 * v26);
          if (v24 >= 3)
          {
            v28 = *__error();
            v29 = sub_100004348();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v80 = v27;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Removing %{public}@ due to exceeding max number of tailspins", buf, 0xCu);
            }

            *__error() = v28;
            goto LABEL_44;
          }

          if (v23)
          {
            v30 = *__error();
            v31 = sub_100004348();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v80 = v27;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Removing %{public}@ due to exceeding max age of tailspins", buf, 0xCu);
            }

            *__error() = v30;
            v23 = 1;
            goto LABEL_44;
          }

          v68 = 0;
          v32 = [v5 attributesOfItemAtPath:v27 error:&v68];
          v33 = v68;
          v34 = v33;
          if (v32)
          {
            v35 = v33 == 0;
          }

          else
          {
            v35 = 0;
          }

          if (!v35)
          {
            v36 = *__error();
            v37 = sub_100004348();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            *buf = 138543618;
            v80 = v27;
            v81 = 2114;
            v82 = v34;
            v55 = v37;
            v56 = "Unable to get attributes of %{public}@ : %{public}@";
            v57 = 22;
LABEL_73:
            _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, v56, buf, v57);
LABEL_35:

LABEL_36:
            v23 = 0;
            *__error() = v36;
LABEL_43:

            v5 = v65;
LABEL_44:
            v67 = 0;
            v43 = [v5 removeItemAtPath:v27 error:&v67];
            v44 = v67;
            v45 = v44;
            if (v43)
            {
              v46 = v44 == 0;
            }

            else
            {
              v46 = 0;
            }

            if (!v46)
            {
              v47 = *__error();
              v48 = sub_100004348();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v80 = v27;
                v81 = 2114;
                v82 = v45;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Unable to remove %{public}@ : %{public}@", buf, 0x16u);
              }

              *__error() = v47;
            }

            goto LABEL_52;
          }

          v38 = [v32 fileCreationDate];
          if (!v38)
          {
            v38 = [v32 fileModificationDate];
            if (!v38)
            {
              v36 = *__error();
              v37 = sub_100004348();
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_35;
              }

              *buf = 138543362;
              v80 = v27;
              v55 = v37;
              v56 = "Unable to get file date for %{public}@";
LABEL_68:
              v57 = 12;
              goto LABEL_73;
            }
          }

          v39 = v38;
          [v38 timeIntervalSinceNow];
          if (v40 < -2592000.0)
          {
            v41 = *__error();
            v42 = sub_100004348();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v80 = v27;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Removing %{public}@ due to exceeding max age of tailspins", buf, 0xCu);
            }

            *__error() = v41;
            v23 = 1;
            goto LABEL_43;
          }

          v49 = [v32 fileSize];
          if (!v49)
          {
            v36 = *__error();
            v37 = sub_100004348();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_35;
            }

            *buf = 138543362;
            v80 = v27;
            v55 = v37;
            v56 = "Unable to get file size for %{public}@";
            goto LABEL_68;
          }

          v50 = v49;
          v64 += v49;
          if (v64 >= 0xAF00001)
          {
            v36 = *__error();
            v51 = sub_100004348();
            v52 = v51;
            if (!a1 || v24 >= 1)
            {
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v80 = v27;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Removing %{public}@ due to exceeding max size of tailspins", buf, 0xCu);
              }

              goto LABEL_36;
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v80 = v27;
              v81 = 2048;
              v82 = v50;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Not removing most recent tailspin %{public}@ that exceeds max size: %llu", buf, 0x16u);
            }

            *__error() = v36;
          }

          v53 = *__error();
          v54 = sub_100004348();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v80 = v27;
            _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Not removing %{public}@", buf, 0xCu);
          }

          v23 = 0;
          *__error() = v53;
          ++v24;
          v5 = v65;
LABEL_52:
          v26 = v26 + 1;
        }

        while (v22 != v26);
        v58 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
        v22 = v58;
      }

      while (v58);
    }

    v6 = v61;
    v1 = v62;
    v8 = 0;
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10000BC78(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *__error();
    v4 = sub_100004348();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000DEDC(a1);
    }
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    fcntl(v5, 51);
    if (fclonefileat(v5, -1, [v6 UTF8String], 0))
    {
      v7 = *__error();
      v8 = sub_100004348();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000DF54();
      }

      *__error() = v7;
      close(v5);

      v3 = *__error();
      v4 = sub_100004348();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10000DFD8();
      }
    }

    else
    {
      close(v5);

      v3 = *__error();
      v4 = sub_100004348();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saved tailspin output for reset to file '%{public}@'", buf, 0xCu);
      }
    }
  }

  *__error() = v3;
  v10 = os_transaction_create();
  v11 = sub_10000B2E8();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BEB4;
  block[3] = &unk_100018960;
  v14 = v10;
  v12 = v10;
  dispatch_async(v11, block);
}

void sub_10000BEEC(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 5u, 0);
  v1 = dispatch_queue_create("com.apple.tailspin.cleanup", v3);
  v2 = qword_10001EE98;
  qword_10001EE98 = v1;
}

id sub_10000BF54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v30 = 0;
  v8 = [v7 attributesOfItemAtPath:v5 error:&v30];
  v9 = v30;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v15 = [v8 objectForKeyedSubscript:NSFileCreationDate];
    if (v15)
    {
      v16 = *(a1 + 32);
      v29 = 0;
      v17 = [v16 attributesOfItemAtPath:v6 error:&v29];
      v18 = v29;
      v19 = v18;
      if (!v17 || v18)
      {
        v24 = *__error();
        v25 = sub_100004348();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10000E15C();
        }

        v14 = 0;
        *__error() = v24;
      }

      else
      {
        v20 = [v17 objectForKeyedSubscript:NSFileCreationDate];
        v21 = v20;
        if (v20)
        {
          v14 = [v20 compare:v15];
        }

        else
        {
          v26 = *__error();
          v27 = sub_100004348();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10000E0EC();
          }

          v14 = 0;
          *__error() = v26;
        }
      }
    }

    else
    {
      v22 = *__error();
      v23 = sub_100004348();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10000E0EC();
      }

      v14 = 0;
      *__error() = v22;
    }
  }

  else
  {
    v12 = *__error();
    v13 = sub_100004348();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000E15C();
    }

    v14 = 0;
    *__error() = v12;
  }

  return v14;
}

uint64_t sub_10000C22C@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 48);
  v5 = *a2;
  return result;
}

_DWORD *(*sub_10000C2C4(uint64_t a1))(_DWORD *result, uint64_t a2)
{
  if (*(a1 + 20) == 670)
  {
    return sub_10000C2E0;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_10000C2E0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_1000048DC();
    *(a2 + 32) = result;
  }

  return result;
}

void sub_10000C390(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *libhwtrace_privateLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AppleHWTrace_SoftLinking.h" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10000C410()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000C42C()
{
  sub_10000C284();
  v3 = *v2;
  v4 = mach_absolute_time();
  v7 = sub_100004F00(v4 - *v1, v5, v6);
  v8 = 134218240;
  v9 = v3;
  v10 = 2048;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Successfully got oldest kdebug time (%llu, %.2fs ago)", &v8, 0x16u);
}

void sub_10000C4DC()
{
  v0 = *__error();
  sub_10000C1F8();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000C560()
{
  sub_10000C1EC();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000C5E4()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000C654()
{
  sub_10000C1F8();
  sub_10000C254();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000C6D8()
{
  sub_10000C1F8();
  sub_10000C26C();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10000C758()
{
  sub_100004D90();
  sub_10000C210();
  sub_10000C1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10000C7D4()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000C810()
{
  sub_10000C1F8();
  sub_10000C254();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10000C894()
{
  sub_10000C1F8();
  sub_10000C26C();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10000C914()
{
  sub_100004D90();
  sub_10000C210();
  sub_10000C1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10000C990()
{
  v0 = *__error();
  sub_10000C1F8();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000CA14(uint64_t *a1)
{
  v6 = *a1;
  sub_100004D84();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000CA8C()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000CAC8()
{
  sub_10000C1EC();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000CB8C()
{
  v0 = *__error();
  sub_10000C1F8();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000CC10()
{
  v0 = __error();
  strerror(*v0);
  sub_10000C23C();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000CD1C()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000CD8C()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000CDFC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"void soft_hwtrace_live_recording_deinit(hwtrace_live_recording_t)"];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10000CE74()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_stop(hwtrace_live_recording_t)"];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:50 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10000CEEC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_pause(hwtrace_live_recording_t)"];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:49 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_10000CF64()
{
  v0 = *__error();
  sub_10000C1F8();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000CFE8()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000D058()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000D0C8()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D104()
{
  v5 = *__error();
  sub_10000C19C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10000D21C()
{
  sub_10000C290();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10000D2B0()
{
  sub_10000C204();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D334(os_log_t log)
{
  v1 = 138543362;
  v2 = @"/var/mobile/Library/Logs/CrashReporter/ForceResetTailspins";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Marked %{public}@ with purgeable children", &v1, 0xCu);
}

void sub_10000D3B8()
{
  v5 = *__error();
  sub_10000C19C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000D454()
{
  sub_10000C1EC();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D4C4()
{
  sub_10000C284();
  v0 = *__error();
  sub_10000C1D4();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000D548()
{
  sub_10000C284();
  v0 = *__error();
  sub_10000C1D4();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000D5CC()
{
  sub_100004D90();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000D63C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000916C(2153, "Unknown message: %s : %s", a3, a4, a5, a6, a7, a8, a1);
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000D670(void *a1)
{
  xpc_get_type(a1);
  sub_10000C1EC();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000D6F0(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_10000C1EC();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000D77C(uint64_t a1, unsigned int *a2)
{
  sub_10000C22C(a1, a2, __stack_chk_guard);
  sub_10000C1BC();
  sub_10000C1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10000D7EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 60);
  sub_10000C1BC();
  sub_100004D84();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10000D878(uint64_t a1, unsigned int *a2)
{
  sub_10000C22C(a1, a2, __stack_chk_guard);
  sub_10000C1BC();
  sub_10000C1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10000D8E8()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D924()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D960()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D99C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000D9C4(uint64_t a1, unsigned int *a2)
{
  sub_10000C22C(a1, a2, __stack_chk_guard);
  sub_10000C1BC();
  sub_10000C1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10000DA34()
{
  sub_10000C1EC();
  sub_10000C204();
  sub_10000C1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DAAC()
{
  v0 = __error();
  strerror(*v0);
  sub_10000C23C();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000DB38()
{
  sub_10000C1EC();
  sub_10000C204();
  sub_10000C1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000DBB0()
{
  sub_10000C284();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  sub_10000C19C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10000DC78()
{
  sub_10000C1EC();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000DD84()
{
  sub_10000C1EC();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000DE08()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000DE58()
{
  sub_10000C290();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000DEDC(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100004D84();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000DF54()
{
  sub_10000C284();
  v0 = *__error();
  sub_10000C1D4();
  sub_10000C19C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000DFD8()
{
  sub_100005474();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000E014(uint64_t a1, int a2, NSObject *a3)
{
  v6 = [*(a1 + 40) UTF8String];
  v7 = *(a1 + 64);
  [*(a1 + 32) request_id];
  v10 = 136446978;
  v11 = v6;
  sub_10000C204();
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = v9;
  v16 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "tailspin request for %{public}s [%d] (request ID: %llu) successfully completed before timeout (val = %d).", &v10, 0x22u);
}

void sub_10000E0EC()
{
  sub_10000C1EC();
  sub_100004D84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000E15C()
{
  sub_10000C1EC();
  sub_10000C290();
  sub_10000C1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000E1D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "CoreAnalytics Event %@ payload: %@", &v4, 0x16u);
}